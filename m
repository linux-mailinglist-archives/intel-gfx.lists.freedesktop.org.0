Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 951A74446A5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 18:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B93F673C68;
	Wed,  3 Nov 2021 17:07:28 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE2F73C65;
 Wed,  3 Nov 2021 17:07:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231501438"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="231501438"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 10:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="449892036"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2021 10:04:50 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Wed,  3 Nov 2021 10:04:44 -0700
Message-Id: <20211103170449.1614314-4-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211103170449.1614314-1-John.C.Harrison@Intel.com>
References: <20211103170449.1614314-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 3/8] tests/i915/gem_exec_capture: Make
 the error decode a common helper
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The decode of the error capture contents was happening in two
different sub-tests with two very different pieces of code. One being
much more extensive than the other (actually decodes and verifies the
contents of the captured buffers rather than just the address). So,
move the code into a common helper function and use that in both
places.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 tests/i915/gem_exec_capture.c | 344 +++++++++++++++++-----------------
 1 file changed, 170 insertions(+), 174 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 47ca64dd6..c85c198f7 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -33,32 +33,175 @@
 
 IGT_TEST_DESCRIPTION("Check that we capture the user specified objects on a hang");
 
-static void check_error_state(int dir, struct drm_i915_gem_exec_object2 *obj)
+struct offset {
+	uint64_t addr;
+	unsigned long idx;
+	bool found;
+};
+
+static unsigned long zlib_inflate(uint32_t **ptr, unsigned long len)
+{
+	struct z_stream_s zstream;
+	void *out;
+
+	memset(&zstream, 0, sizeof(zstream));
+
+	zstream.next_in = (unsigned char *)*ptr;
+	zstream.avail_in = 4*len;
+
+	if (inflateInit(&zstream) != Z_OK)
+		return 0;
+
+	out = malloc(128*4096); /* approximate obj size */
+	zstream.next_out = out;
+	zstream.avail_out = 128*4096;
+
+	do {
+		switch (inflate(&zstream, Z_SYNC_FLUSH)) {
+		case Z_STREAM_END:
+			goto end;
+		case Z_OK:
+			break;
+		default:
+			inflateEnd(&zstream);
+			return 0;
+		}
+
+		if (zstream.avail_out)
+			break;
+
+		out = realloc(out, 2*zstream.total_out);
+		if (out == NULL) {
+			inflateEnd(&zstream);
+			return 0;
+		}
+
+		zstream.next_out = (unsigned char *)out + zstream.total_out;
+		zstream.avail_out = zstream.total_out;
+	} while (1);
+end:
+	inflateEnd(&zstream);
+	free(*ptr);
+	*ptr = out;
+	return zstream.total_out / 4;
+}
+
+static unsigned long
+ascii85_decode(char *in, uint32_t **out, bool inflate, char **end)
+{
+	unsigned long len = 0, size = 1024;
+
+	*out = realloc(*out, sizeof(uint32_t)*size);
+	if (*out == NULL)
+		return 0;
+
+	while (*in >= '!' && *in <= 'z') {
+		uint32_t v = 0;
+
+		if (len == size) {
+			size *= 2;
+			*out = realloc(*out, sizeof(uint32_t)*size);
+			if (*out == NULL)
+				return 0;
+		}
+
+		if (*in == 'z') {
+			in++;
+		} else {
+			v += in[0] - 33; v *= 85;
+			v += in[1] - 33; v *= 85;
+			v += in[2] - 33; v *= 85;
+			v += in[3] - 33; v *= 85;
+			v += in[4] - 33;
+			in += 5;
+		}
+		(*out)[len++] = v;
+	}
+	*end = in;
+
+	if (!inflate)
+		return len;
+
+	return zlib_inflate(out, len);
+}
+
+static int check_error_state(int dir, struct offset *obj_offsets, int obj_count,
+			     uint64_t obj_size, bool incremental)
 {
 	char *error, *str;
-	bool found = false;
+	int blobs = 0;
 
 	error = igt_sysfs_get(dir, "error");
 	igt_sysfs_set(dir, "error", "Begone!");
-
 	igt_assert(error);
 	igt_debug("%s\n", error);
 
 	/* render ring --- user = 0x00000000 ffffd000 */
-	for (str = error; (str = strstr(str, "--- user = ")); str++) {
+	for (str = error; (str = strstr(str, "--- user = ")); ) {
+		uint32_t *data = NULL;
 		uint64_t addr;
-		uint32_t hi, lo;
+		unsigned long i, sz;
+		unsigned long start;
+		unsigned long end;
 
-		igt_assert(sscanf(str, "--- user = 0x%x %x", &hi, &lo) == 2);
-		addr = hi;
+		if (strncmp(str, "--- user = 0x", 13))
+			break;
+		str += 13;
+		addr = strtoul(str, &str, 16);
 		addr <<= 32;
-		addr |= lo;
-		igt_assert_eq_u64(addr, obj->offset);
-		found = true;
+		addr |= strtoul(str + 1, &str, 16);
+		igt_assert(*str++ == '\n');
+
+		start = 0;
+		end = obj_count;
+		while (end > start) {
+			i = (end - start) / 2 + start;
+			if (obj_offsets[i].addr < addr)
+				start = i + 1;
+			else if (obj_offsets[i].addr > addr)
+				end = i;
+			else
+				break;
+		}
+		igt_assert(obj_offsets[i].addr == addr);
+		igt_assert(!obj_offsets[i].found);
+		obj_offsets[i].found = true;
+		igt_debug("offset:%"PRIx64", index:%ld\n",
+			  addr, obj_offsets[i].idx);
+
+		/* gtt_page_sizes = 0x00010000 */
+		if (strncmp(str, "gtt_page_sizes = 0x", 19) == 0) {
+			str += 19 + 8;
+			igt_assert(*str++ == '\n');
+		}
+
+		if (!(*str == ':' || *str == '~'))
+			continue;
+
+		igt_debug("blob:%.64s\n", str);
+		sz = ascii85_decode(str + 1, &data, *str == ':', &str);
+
+		igt_assert_eq(4 * sz, obj_size);
+		igt_assert(*str++ == '\n');
+		str = strchr(str, '-');
+
+		if (incremental) {
+			uint32_t expect;
+
+			expect = obj_offsets[i].idx * obj_size;
+			for (i = 0; i < sz; i++)
+				igt_assert_eq(data[i], expect++);
+		} else {
+			for (i = 0; i < sz; i++)
+				igt_assert_eq(data[i], 0);
+		}
+
+		blobs++;
+		free(data);
 	}
 
 	free(error);
-	igt_assert(found);
+	return blobs;
 }
 
 static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
@@ -73,6 +216,7 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 	struct drm_i915_gem_relocation_entry reloc[2];
 	struct drm_i915_gem_execbuffer2 execbuf;
 	uint32_t *batch, *seqno;
+	struct offset offset;
 	int i;
 
 	memset(obj, 0, sizeof(obj));
@@ -168,7 +312,10 @@ static void __capture1(int fd, int dir, uint64_t ahnd, const intel_ctx_t *ctx,
 
 	/* Check that only the buffer we marked is reported in the error */
 	igt_force_gpu_reset(fd);
-	check_error_state(dir, &obj[CAPTURE]);
+	memset(&offset, 0, sizeof(offset));
+	offset.addr = obj[CAPTURE].offset;
+	igt_assert_eq(check_error_state(dir, &offset, 1, target_size, false), 1);
+	igt_assert(offset.found);
 
 	gem_sync(fd, obj[BATCH].handle);
 
@@ -183,11 +330,12 @@ static void capture(int fd, int dir, const intel_ctx_t *ctx, unsigned ring)
 {
 	uint32_t handle;
 	uint64_t ahnd;
+	int obj_size = 4096;
 
-	handle = gem_create(fd, 4096);
+	handle = gem_create(fd, obj_size);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	__capture1(fd, dir, ahnd, ctx, ring, handle, 4096);
+	__capture1(fd, dir, ahnd, ctx, ring, handle, obj_size);
 
 	gem_close(fd, handle);
 	put_ahnd(ahnd);
@@ -206,10 +354,8 @@ static int cmp(const void *A, const void *B)
 	return 0;
 }
 
-static struct offset {
-	uint64_t addr;
-	unsigned long idx;
-} *__captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
+static struct offset *
+__captureN(int fd, int dir, uint64_t ahnd, unsigned ring,
 	      unsigned int size, int count,
 	      unsigned int flags)
 #define INCREMENTAL 0x1
@@ -357,98 +503,11 @@ static struct offset {
 	return offsets;
 }
 
-static unsigned long zlib_inflate(uint32_t **ptr, unsigned long len)
-{
-	struct z_stream_s zstream;
-	void *out;
-
-	memset(&zstream, 0, sizeof(zstream));
-
-	zstream.next_in = (unsigned char *)*ptr;
-	zstream.avail_in = 4*len;
-
-	if (inflateInit(&zstream) != Z_OK)
-		return 0;
-
-	out = malloc(128*4096); /* approximate obj size */
-	zstream.next_out = out;
-	zstream.avail_out = 128*4096;
-
-	do {
-		switch (inflate(&zstream, Z_SYNC_FLUSH)) {
-		case Z_STREAM_END:
-			goto end;
-		case Z_OK:
-			break;
-		default:
-			inflateEnd(&zstream);
-			return 0;
-		}
-
-		if (zstream.avail_out)
-			break;
-
-		out = realloc(out, 2*zstream.total_out);
-		if (out == NULL) {
-			inflateEnd(&zstream);
-			return 0;
-		}
-
-		zstream.next_out = (unsigned char *)out + zstream.total_out;
-		zstream.avail_out = zstream.total_out;
-	} while (1);
-end:
-	inflateEnd(&zstream);
-	free(*ptr);
-	*ptr = out;
-	return zstream.total_out / 4;
-}
-
-static unsigned long
-ascii85_decode(char *in, uint32_t **out, bool inflate, char **end)
-{
-	unsigned long len = 0, size = 1024;
-
-	*out = realloc(*out, sizeof(uint32_t)*size);
-	if (*out == NULL)
-		return 0;
-
-	while (*in >= '!' && *in <= 'z') {
-		uint32_t v = 0;
-
-		if (len == size) {
-			size *= 2;
-			*out = realloc(*out, sizeof(uint32_t)*size);
-			if (*out == NULL)
-				return 0;
-		}
-
-		if (*in == 'z') {
-			in++;
-		} else {
-			v += in[0] - 33; v *= 85;
-			v += in[1] - 33; v *= 85;
-			v += in[2] - 33; v *= 85;
-			v += in[3] - 33; v *= 85;
-			v += in[4] - 33;
-			in += 5;
-		}
-		(*out)[len++] = v;
-	}
-	*end = in;
-
-	if (!inflate)
-		return len;
-
-	return zlib_inflate(out, len);
-}
-
 static void many(int fd, int dir, uint64_t size, unsigned int flags)
 {
 	uint64_t ram, gtt, ahnd;
 	unsigned long count, blobs;
 	struct offset *offsets;
-	char *error, *str;
 
 	gtt = gem_aperture_size(fd) / size;
 	ram = (intel_get_avail_ram_mb() << 20) / size;
@@ -463,75 +522,10 @@ static void many(int fd, int dir, uint64_t size, unsigned int flags)
 
 	offsets = __captureN(fd, dir, ahnd, 0, size, count, flags);
 
-	error = igt_sysfs_get(dir, "error");
-	igt_sysfs_set(dir, "error", "Begone!");
-	igt_assert(error);
-
-	blobs = 0;
-	/* render ring --- user = 0x00000000 ffffd000 */
-	str = strstr(error, "--- user = ");
-	while (str) {
-		uint32_t *data = NULL;
-		unsigned long i, sz;
-		uint64_t addr;
-
-		if (strncmp(str, "--- user = 0x", 13))
-			break;
-
-		str += 13;
-		addr = strtoul(str, &str, 16);
-		addr <<= 32;
-		addr |= strtoul(str + 1, &str, 16);
-		igt_assert(*str++ == '\n');
-
-		/* gtt_page_sizes = 0x00010000 */
-		if (strncmp(str, "gtt_page_sizes = 0x", 19) == 0) {
-			str += 19 + 8;
-			igt_assert(*str++ == '\n');
-		}
-
-		if (!(*str == ':' || *str == '~'))
-			continue;
-
-		igt_debug("blob:%.64s\n", str);
-		sz = ascii85_decode(str + 1, &data, *str == ':', &str);
-		igt_assert_eq(4 * sz, size);
-		igt_assert(*str++ == '\n');
-		str = strchr(str, '-');
-
-		if (flags & INCREMENTAL) {
-			unsigned long start = 0;
-			unsigned long end = count;
-			uint32_t expect;
-
-			while (end > start) {
-				i = (end - start) / 2 + start;
-				if (offsets[i].addr < addr)
-					start = i + 1;
-				else if (offsets[i].addr > addr)
-					end = i;
-				else
-					break;
-			}
-			igt_assert(offsets[i].addr == addr);
-			igt_debug("offset:%"PRIx64", index:%ld\n",
-				  addr, offsets[i].idx);
-
-			expect = offsets[i].idx * size;
-			for (i = 0; i < sz; i++)
-				igt_assert_eq(data[i], expect++);
-		} else {
-			for (i = 0; i < sz; i++)
-				igt_assert_eq(data[i], 0);
-		}
-
-		blobs++;
-		free(data);
-	}
+	blobs = check_error_state(dir, offsets, count, size, !!(flags & INCREMENTAL));
 	igt_info("Captured %lu %"PRId64"-blobs out of a total of %lu\n",
 		 blobs, size >> 12, count);
 
-	free(error);
 	free(offsets);
 	put_ahnd(ahnd);
 }
@@ -625,12 +619,14 @@ static void userptr(int fd, int dir)
 	uint32_t handle;
 	uint64_t ahnd;
 	void *ptr;
+	int obj_size = 4096;
 
-	igt_assert(posix_memalign(&ptr, 4096, 4096) == 0);
-	igt_require(__gem_userptr(fd, ptr, 4096, 0, 0, &handle) == 0);
+	igt_assert(posix_memalign(&ptr, obj_size, obj_size) == 0);
+	memset(ptr, 0, obj_size);
+	igt_require(__gem_userptr(fd, ptr, obj_size, 0, 0, &handle) == 0);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
-	__capture1(fd, dir, ahnd, intel_ctx_0(fd), 0, handle, 4096);
+	__capture1(fd, dir, ahnd, intel_ctx_0(fd), 0, handle, obj_size);
 
 	gem_close(fd, handle);
 	put_ahnd(ahnd);
-- 
2.25.1

