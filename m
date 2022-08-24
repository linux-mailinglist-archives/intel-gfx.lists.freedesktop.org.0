Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 296CC59FB2B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:20:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3917B5557;
	Wed, 24 Aug 2022 13:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71C5B520E
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347114; x=1692883114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zO8eThOk1lsYgZk/9GykXBgdvT/GYGDTZCjWa4b88Uw=;
 b=QBkTwcRmOT3OFWtU3S9Z9pmnexNH+c0o2Bnmxg3/tZNd+hE5B/MWCn2V
 KqxAHmwYeUrkPgzoBaGAsNupM5bEnuv625k885bw8mnsy2qo12xaZtM42
 Xh5itSL440wmcY4r6J+ngoxiSv0lHt3xIfmESmwaTmGRRQx5THbbyshKN
 fyuIJ2mPg2qCxBBON3EI9CZ724LPTD7SxvpG3/Gc4hZyw77fe1JA8FaTK
 vyNHF5MYmB0zqeNxebnwkV6n4f6TPfk5s3zzhulB/r1vDz50FIdrn0Ysn
 qD5ljwICcrj+4YTPfVmu5eVrTN0MgyY2hUeF3RLF7MmAA5reb9kEIodZd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="291528246"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="291528246"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="609755078"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by orsmga002-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:59 +0300
Message-Id: <fe9c0cb1e49da0ddc31d24c996af5fd09bce3042.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 33/38] drm/i915: split gem quirks from
 display quirks
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The lone gem quirk is an outlier, not even handled by the common quirk
code. Split it to a separate gem_quirks member.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_pages.c                | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c               | 4 ++--
 drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c       | 4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c             | 2 +-
 drivers/gpu/drm/i915/i915_debugfs.c                      | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                          | 4 +++-
 drivers/gpu/drm/i915/i915_gem.c                          | 2 +-
 8 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
index 458e4f9c05f4..4df50b049cea 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
@@ -66,7 +66,7 @@ void __i915_gem_object_set_pages(struct drm_i915_gem_object *obj,
 	shrinkable = i915_gem_object_is_shrinkable(obj);
 
 	if (i915_gem_object_is_tiled(obj) &&
-	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
+	    i915->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES) {
 		GEM_BUG_ON(i915_gem_object_has_tiling_quirk(obj));
 		i915_gem_object_set_tiling_quirk(obj);
 		GEM_BUG_ON(!list_empty(&obj->mm.link));
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
index 85518b28cd72..fd42b89b7162 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
@@ -278,7 +278,7 @@ i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
 	 */
 	if (i915_gem_object_has_pages(obj) &&
 	    obj->mm.madv == I915_MADV_WILLNEED &&
-	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
+	    i915->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES) {
 		if (tiling == I915_TILING_NONE) {
 			GEM_BUG_ON(!i915_gem_object_has_tiling_quirk(obj));
 			i915_gem_object_clear_tiling_quirk(obj);
@@ -458,7 +458,7 @@ i915_gem_get_tiling_ioctl(struct drm_device *dev, void *data,
 	}
 
 	/* Hide bit 17 from the user -- see comment in i915_gem_set_tiling */
-	if (dev_priv->quirks & QUIRK_PIN_SWIZZLED_PAGES)
+	if (dev_priv->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES)
 		args->phys_swizzle_mode = I915_BIT_6_SWIZZLE_UNKNOWN;
 	else
 		args->phys_swizzle_mode = args->swizzle_mode;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
index 3cfc621ef363..9a6a6b5b722b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
@@ -711,7 +711,7 @@ static bool bad_swizzling(struct drm_i915_private *i915)
 {
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 
-	if (i915->quirks & QUIRK_PIN_SWIZZLED_PAGES)
+	if (i915->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES)
 		return true;
 
 	if (has_bit17_swizzle(ggtt->bit_6_swizzle_x) ||
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 3cff08f04f6c..afdd827e7fd1 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -367,7 +367,7 @@ static int igt_partial_tiling(void *arg)
 		unsigned int pitch;
 		struct tile tile;
 
-		if (i915->quirks & QUIRK_PIN_SWIZZLED_PAGES)
+		if (i915->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES)
 			/*
 			 * The swizzling pattern is actually unknown as it
 			 * varies based on physical address of each page.
@@ -464,7 +464,7 @@ static int igt_smoke_tiling(void *arg)
 	 * Remember to look at the st_seed if we see a flip-flop in BAT!
 	 */
 
-	if (i915->quirks & QUIRK_PIN_SWIZZLED_PAGES)
+	if (i915->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES)
 		return 0;
 
 	obj = huge_gem_object(i915,
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index 6ebda3d65086..cf4a326f5f48 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -727,7 +727,7 @@ static void detect_bit_6_swizzle(struct i915_ggtt *ggtt)
 		 * bit17 dependent, and so we need to also prevent the pages
 		 * from being moved.
 		 */
-		i915->quirks |= QUIRK_PIN_SWIZZLED_PAGES;
+		i915->gem_quirks |= GEM_QUIRK_PIN_SWIZZLED_PAGES;
 		swizzle_x = I915_BIT_6_SWIZZLE_NONE;
 		swizzle_y = I915_BIT_6_SWIZZLE_NONE;
 	}
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 433bfe0fbf70..3e99a6a88c3a 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -410,7 +410,7 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 	seq_printf(m, "bit6 swizzle for Y-tiling = %s\n",
 		   swizzle_string(to_gt(dev_priv)->ggtt->bit_6_swizzle_y));
 
-	if (dev_priv->quirks & QUIRK_PIN_SWIZZLED_PAGES)
+	if (dev_priv->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES)
 		seq_puts(m, "L-shaped memory detected\n");
 
 	/* On BDW+, swizzling is not used. See detect_bit_6_swizzle() */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index dcd95aed145c..1899d07df647 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -88,10 +88,11 @@ struct vlv_s0ix_state;
 
 #define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
 
+#define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
+
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
 #define QUIRK_INVERT_BRIGHTNESS (1<<2)
 #define QUIRK_BACKLIGHT_PRESENT (1<<3)
-#define QUIRK_PIN_SWIZZLED_PAGES (1<<5)
 #define QUIRK_INCREASE_T12_DELAY (1<<6)
 #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
 #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
@@ -296,6 +297,7 @@ struct drm_i915_private {
 	enum intel_pch pch_type;
 	unsigned short pch_id;
 
+	unsigned long gem_quirks;
 	unsigned long quirks;
 
 	struct drm_atomic_state *modeset_restore_state;
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 679c166fdcb0..c2d6172ba4bb 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1035,7 +1035,7 @@ i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
 
 	if (i915_gem_object_has_pages(obj) &&
 	    i915_gem_object_is_tiled(obj) &&
-	    i915->quirks & QUIRK_PIN_SWIZZLED_PAGES) {
+	    i915->gem_quirks & GEM_QUIRK_PIN_SWIZZLED_PAGES) {
 		if (obj->mm.madv == I915_MADV_WILLNEED) {
 			GEM_BUG_ON(!i915_gem_object_has_tiling_quirk(obj));
 			i915_gem_object_clear_tiling_quirk(obj);
-- 
2.34.1

