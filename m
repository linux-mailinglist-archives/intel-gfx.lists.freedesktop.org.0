Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C55F256F93
	for <lists+intel-gfx@lfdr.de>; Sun, 30 Aug 2020 19:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3206E0D7;
	Sun, 30 Aug 2020 17:45:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com
 [IPv6:2607:f8b0:4864:20::742])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4AD36E0D7;
 Sun, 30 Aug 2020 17:45:20 +0000 (UTC)
Received: by mail-qk1-x742.google.com with SMTP id m7so4207004qki.12;
 Sun, 30 Aug 2020 10:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ku6+xicRPIwzFPgdKexwIuePYKQBGLf4JoibsX0KXcg=;
 b=ZDxd1g0hfltAfVfILJBLlbZjCsUMhP7mDa8DKAR98Pu95vVVHbkZJE5FxdGzBH3/Zj
 kyjkAfk1G5GKYzNxqtDNxyyRVCgQSF965zIypBJ77rhkkbSE4Lgtn65I8ZpOWT7J7nbL
 yVCQuTIfoniKGU5mYFRtJ4OOK1meMWtaNMpkI0czWKt6CdOhgR7VdFdwU9PsGsnL3zsU
 fCnRlXgXvspqpl1DdD/qB83hfiTace1YdPgnbnIG0eLvCGdCAMo/zlNpAY1Q98O3e47z
 nT7AcJrrcW8U+fDa3FXjG2LGHYTw/A/ss+aT23aHYw4Rl5Jp/fFz4gPUpoBVChN9uSTm
 62YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ku6+xicRPIwzFPgdKexwIuePYKQBGLf4JoibsX0KXcg=;
 b=fkUa49yV9my2PD46XZDeOj/odtwrqx40Dn8Ac+HNkory4hLiGKVs9oCvVL8TD0n//d
 0yQAsfnzupQ0N/PC2k6exf5czpIARziAGIoaX8EuhUBGEgqm4jYX3SINXhsqZ4H8R8LW
 KVQnA41eymW/KlOe4EK530keMxTlqh8AOzMSX27RzpqKFYYrVR5XrQf3YqEsAQIuHGm1
 qxdeaAmATUvF0bwuXrZWoptaXDSDiVy/Dw234xFj1sleeaxh4s89hK2CaPu1Iaw61rb6
 iI7Qwe45M61c/4uco2APYZu+9GVgkd1ziXejcTab4f35tH5RV3h0KBClR+Pkv3rNJflc
 STfg==
X-Gm-Message-State: AOAM533GzhcjEO44FJgHdeIqZrEmC9wLefxhMs98uXbEPhbCOs1MQrgD
 iU6xOS88WzRaaHLJERNOjnrGpwDRW0EHyg==
X-Google-Smtp-Source: ABdhPJye3Qn7IgxphdJTaFOsSUxOKpT95qYgaukeiq8jdqAs/QVt/huXoU4nertK83zk3qw0Xu0egQ==
X-Received: by 2002:a37:e103:: with SMTP id c3mr2166066qkm.90.1598809519363;
 Sun, 30 Aug 2020 10:45:19 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56e0:6d60::2db6])
 by smtp.gmail.com with ESMTPSA id l1sm6797662qtp.96.2020.08.30.10.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Aug 2020 10:45:18 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Sun, 30 Aug 2020 13:44:09 -0400
Message-Id: <20200830174410.256533-4-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
References: <20200830174410.256533-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v9 3/4] lib: Add function to hash a
 framebuffer
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
Cc: Simon Ser <simon.ser@intel.com>,
 Brian Starkey <rodrigosiqueiramelo@gmail.com>, Simon Ser <contact@emersion.fr>,
 melissa.srw@gmail.com, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Brian Starkey <rodrigosiqueiramelo@gmail.com>

To use writeback buffers as a CRC source, we need to be able to hash
them. Implement a simple FVA-1a hashing routine for this purpose.

Doing a bytewise hash on the framebuffer directly can be very slow if
the memory is noncached. By making a copy of each line in the FB first
(which can take advantage of word-access speedup), we can do the hash
on a cached copy, which is much faster (10x speedup on my platform).

Changes since V7 (Maxime Ripard):
* Maxime Ripard:
  - Replace `gem_mmap__gtt` by `igt_fb_map_buffer` on `igt_fb_get_crc()`
* Rodrigo Siqueira:
  - Rename igt_fb_get_crc to igt_fb_get_fnv1a_crc

Changes since V6 (Simon Ser):
* Use plain uint32_t for FNV1a_OFFSET_BIAS and FNV1a_PRIME
* Return -EINVAL in case fb->num_planes != 1
* Just copy fb->width * cpp instead of copy the whole stride

v5: use igt_memcpy_from_wc() instead of plain memcpy, as suggested by
    Chris Wilson

Signed-off-by: Brian Starkey <brian.starkey@arm.com>
[rebased and updated to the most recent API]
Signed-off-by: Liviu Dudau <liviu.dudau@arm.com>
[rebased and updated]
Signed-off-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Reviewed-by: Simon Ser <simon.ser@intel.com>
Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
---
 lib/igt_fb.c | 63 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/igt_fb.h |  2 ++
 2 files changed, 65 insertions(+)

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index 3864b7a1..5e3706e9 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -3783,6 +3783,69 @@ bool igt_fb_supported_format(uint32_t drm_format)
 	return true;
 }
 
+/*
+ * This implements the FNV-1a hashing algorithm instead of CRC, for
+ * simplicity
+ * http://www.isthe.com/chongo/tech/comp/fnv/index.html
+ *
+ * hash = offset_basis
+ * for each octet_of_data to be hashed
+ *         hash = hash xor octet_of_data
+ *         hash = hash * FNV_prime
+ * return hash
+ *
+ * 32 bit offset_basis = 2166136261
+ * 32 bit FNV_prime = 224 + 28 + 0x93 = 16777619
+ */
+int igt_fb_get_fnv1a_crc(struct igt_fb *fb, igt_crc_t *crc)
+{
+	const uint32_t FNV1a_OFFSET_BIAS = 2166136261;
+	const uint32_t FNV1a_PRIME = 16777619;
+	uint32_t hash;
+	void *map;
+	char *ptr, *line = NULL;
+	int x, y, cpp = igt_drm_format_to_bpp(fb->drm_format) / 8;
+	uint32_t stride = calc_plane_stride(fb, 0);
+
+	if (fb->num_planes != 1)
+		return -EINVAL;
+
+	ptr = igt_fb_map_buffer(fb->fd, fb);
+	igt_assert(ptr);
+	map = ptr;
+
+	/*
+	 * Framebuffers are often uncached, which can make byte-wise accesses
+	 * very slow. We copy each line of the FB into a local buffer to speed
+	 * up the hashing.
+	 */
+	line = malloc(stride);
+	if (!line) {
+		munmap(map, fb->size);
+		return -ENOMEM;
+	}
+
+	hash = FNV1a_OFFSET_BIAS;
+
+	for (y = 0; y < fb->height; y++, ptr += stride) {
+
+		igt_memcpy_from_wc(line, ptr, fb->width * cpp);
+
+		for (x = 0; x < fb->width * cpp; x++) {
+			hash ^= line[x];
+			hash *= FNV1a_PRIME;
+		}
+	}
+
+	crc->n_words = 1;
+	crc->crc[0] = hash;
+
+	free(line);
+	igt_fb_unmap_buffer(fb, map);
+
+	return 0;
+}
+
 /**
  * igt_format_is_yuv:
  * @drm_format: drm fourcc
diff --git a/lib/igt_fb.h b/lib/igt_fb.h
index 5ec906b7..debfb5ad 100644
--- a/lib/igt_fb.h
+++ b/lib/igt_fb.h
@@ -207,5 +207,7 @@ int igt_format_plane_bpp(uint32_t drm_format, int plane);
 void igt_format_array_fill(uint32_t **formats_array, unsigned int *count,
 			   bool allow_yuv);
 
+int igt_fb_get_fnv1a_crc(struct igt_fb *fb, igt_crc_t *crc);
+
 #endif /* __IGT_FB_H__ */
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
