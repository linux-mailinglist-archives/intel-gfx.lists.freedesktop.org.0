Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 145BD4B8F5A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:41:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3188210E700;
	Wed, 16 Feb 2022 17:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAE810E6EC;
 Wed, 16 Feb 2022 17:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033252; x=1676569252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n3eWb8poMYK29ZLiCoN9ZIHDe9+37SJXxGSC8ZhIrYM=;
 b=GopFKIdPxZqrOuvjnf7FJRKxCAdjip4l6LdgQcPOKqG5sFQwxZ4x+P5+
 5/fLXohxGgPAVdNe1+PJEdI1YWkbBzvZTugisAxPBJY08UJRCIdnXzPCO
 qU9sXCGPs+UcmJhSlgILaWC93OJDROMpeQ+SD5Tz+QAoivJ0RD4WVeugw
 JFsjf9rRSwGgZXXWzDKfSpLUzeRMTPXzPSbb2EOcRoU14BDLEegObbVCe
 bG2Qe40O9eCw9JoQuuHf2L5rmCf69Wycj+6/8R7epQVDLthlmvYYc3NXF
 t1n7CNN0qvJf/gFV/VhKVcTDygmwhT8PUFlhwiE0rZh4J3ZgSOkhCkcOB Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="230641929"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="230641929"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:40:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="540226589"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:40:51 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 16 Feb 2022 09:41:32 -0800
Message-Id: <20220216174147.3073235-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220216174147.3073235-1-lucas.demarchi@intel.com>
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/16] iosys-map: Add offset to
 iosys_map_memcpy_to()
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, linux-kernel@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In certain situations it's useful to be able to write to an
offset of the mapping. Add a dst_offset to iosys_map_memcpy_to().

Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: Christian König <christian.koenig@amd.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Christian König <christian.koenig@amd.com>
Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/drm_cache.c     |  2 +-
 drivers/gpu/drm/drm_fb_helper.c |  2 +-
 include/linux/iosys-map.h       | 17 +++++++++--------
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
index 66597e411764..c3e6e615bf09 100644
--- a/drivers/gpu/drm/drm_cache.c
+++ b/drivers/gpu/drm/drm_cache.c
@@ -218,7 +218,7 @@ static void memcpy_fallback(struct iosys_map *dst,
 	if (!dst->is_iomem && !src->is_iomem) {
 		memcpy(dst->vaddr, src->vaddr, len);
 	} else if (!src->is_iomem) {
-		iosys_map_memcpy_to(dst, src->vaddr, len);
+		iosys_map_memcpy_to(dst, 0, src->vaddr, len);
 	} else if (!dst->is_iomem) {
 		memcpy_fromio(dst->vaddr, src->vaddr_iomem, len);
 	} else {
diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 409d8dd7f868..d265a73313c9 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -385,7 +385,7 @@ static void drm_fb_helper_damage_blit_real(struct drm_fb_helper *fb_helper,
 	iosys_map_incr(dst, offset); /* go to first pixel within clip rect */
 
 	for (y = clip->y1; y < clip->y2; y++) {
-		iosys_map_memcpy_to(dst, src, len);
+		iosys_map_memcpy_to(dst, 0, src, len);
 		iosys_map_incr(dst, fb->pitches[0]);
 		src += fb->pitches[0];
 	}
diff --git a/include/linux/iosys-map.h b/include/linux/iosys-map.h
index f4186f91caa6..edd730b1e899 100644
--- a/include/linux/iosys-map.h
+++ b/include/linux/iosys-map.h
@@ -220,22 +220,23 @@ static inline void iosys_map_clear(struct iosys_map *map)
 }
 
 /**
- * iosys_map_memcpy_to - Memcpy into iosys mapping
+ * iosys_map_memcpy_to - Memcpy into offset of iosys_map
  * @dst:	The iosys_map structure
+ * @dst_offset:	The offset from which to copy
  * @src:	The source buffer
  * @len:	The number of byte in src
  *
- * Copies data into a iosys mapping. The source buffer is in system
- * memory. Depending on the buffer's location, the helper picks the correct
- * method of accessing the memory.
+ * Copies data into a iosys_map with an offset. The source buffer is in
+ * system memory. Depending on the buffer's location, the helper picks the
+ * correct method of accessing the memory.
  */
-static inline void iosys_map_memcpy_to(struct iosys_map *dst, const void *src,
-				       size_t len)
+static inline void iosys_map_memcpy_to(struct iosys_map *dst, size_t dst_offset,
+				       const void *src, size_t len)
 {
 	if (dst->is_iomem)
-		memcpy_toio(dst->vaddr_iomem, src, len);
+		memcpy_toio(dst->vaddr_iomem + dst_offset, src, len);
 	else
-		memcpy(dst->vaddr, src, len);
+		memcpy(dst->vaddr + dst_offset, src, len);
 }
 
 /**
-- 
2.35.1

