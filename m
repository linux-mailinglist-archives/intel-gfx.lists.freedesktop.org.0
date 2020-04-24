Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2261B6ACB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 03:27:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B726EA6D;
	Fri, 24 Apr 2020 01:27:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com
 [IPv6:2607:f8b0:4864:20::842])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5ED6EA6C;
 Fri, 24 Apr 2020 01:26:58 +0000 (UTC)
Received: by mail-qt1-x842.google.com with SMTP id s30so6719307qth.2;
 Thu, 23 Apr 2020 18:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zwl3Lg29PG5SABcqM6mcSNiauB7jnBtogFQhsKqMwtc=;
 b=c3x/SOux3SVLhcm+0xQDPIHVbSKd65k2bfTOO2i6zcZF/CpqUvSjWWQwfs9xi2PNQX
 J9qP+tf+kn2NT19Ll1TaNdGWD+Nw7tshtRLC7VJ0h3zppkO8wApS07Fy/1aII+FFQLjm
 qU3u8Mg4FUKqEhllbWiExyRTGfatQAceB4CQfKDaico/0IJkF+3iDc5bPWdCvg19IJH5
 sMzrpHFDhbdXEMj9Gcje2H3Az1hiFaxkDsTPtW62pEuMc/c2i++PEOrUPtEPNJNU5szH
 PCTzgqD6a3bXMMFnvPU98LWt1rhM5gYHbZXMAkWcjG/Y3QNdEcYJk6I7LfY5jCOC7P2k
 jjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zwl3Lg29PG5SABcqM6mcSNiauB7jnBtogFQhsKqMwtc=;
 b=XE8ev7kRZcWtfYakXJHT2q5gHV+TWf31dSlsQs8Q/BcwPIQKkANLqtU5NY3e5+37sr
 hdN2TOGn52N+mWH60B0+Mj+PC7VOOh85TKlm3+frdY+THKZsLjqM69PGBzIjspKPVSaU
 411hpcSEDkqsZPtcBDFSvASp2TIplsbMj/kAKfAqVMKJB25VNgA9Za4AwR6+0027DfE0
 ZdHyRSioCK3E5PnTRXzhmYOMrDgsCc5l+PhNzprWT2VRfyYQJ+Ec7a83f05ekeuyx/a5
 noO/IjMRDLSclovNUUbreoHSE7FgCu9AEMUjOk+L2Q/7iT++n2tzf++Gs2242z5NgG9h
 yj5g==
X-Gm-Message-State: AGi0PuZTPf7OQzi5J2H8uSinNhohVtyvht/awxZ/zyiW5tdnKBdeQeGb
 IHmQ79KdVGviWZjP4YztKTgXt2+iJn0=
X-Google-Smtp-Source: APiQypJZ62VSa2pRALtQMDsjYB2n4NGRa3VY82W8wXE4h+ZJAxyvkul/AxJCE1GqLKrmU1SS41graw==
X-Received: by 2002:ac8:2224:: with SMTP id o33mr731291qto.45.1587691617320;
 Thu, 23 Apr 2020 18:26:57 -0700 (PDT)
Received: from atma2.hitronhub.home ([2607:fea8:56a0:11a1::2])
 by smtp.gmail.com with ESMTPSA id c41sm2997184qta.96.2020.04.23.18.26.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 18:26:56 -0700 (PDT)
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
To: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 nd <nd@arm.com>
Date: Thu, 23 Apr 2020 21:26:04 -0400
Message-Id: <20200424012605.2279679-4-rodrigosiqueiramelo@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
References: <20200424012605.2279679-1-rodrigosiqueiramelo@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v8 3/4] lib: Add function to hash a
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
Cc: Brian Starkey <rodrigosiqueiramelo@gmail.com>,
 Simon Ser <contact@emersion.fr>, Simon Ser <simon.ser@intel.com>,
 Maxime Ripard <maxime@cerno.tech>
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
index 5ed586e7..562206b1 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -3785,6 +3785,69 @@ bool igt_fb_supported_format(uint32_t drm_format)
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
index 587f7a44..4221d8b9 100644
--- a/lib/igt_fb.h
+++ b/lib/igt_fb.h
@@ -207,5 +207,7 @@ int igt_format_plane_bpp(uint32_t drm_format, int plane);
 void igt_format_array_fill(uint32_t **formats_array, unsigned int *count,
 			   bool allow_yuv);
 
+int igt_fb_get_fnv1a_crc(struct igt_fb *fb, igt_crc_t *crc);
+
 #endif /* __IGT_FB_H__ */
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
