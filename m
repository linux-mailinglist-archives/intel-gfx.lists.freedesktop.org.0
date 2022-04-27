Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F22510D28
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 02:26:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 438E210ECF0;
	Wed, 27 Apr 2022 00:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C6710EA0F;
 Wed, 27 Apr 2022 00:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651019194; x=1682555194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X2GwpkdEcsYjmEk7LnMsqJcSXUBe3PymzC7Ja6GivaU=;
 b=dBYKqBP5UJVlPjoitt/YDucFEMCCK+hnZnjPxkXVVSYqW5mwtnTFI81F
 NnCmsItJMTsL1u6NisXHefy8u7F/JDo3e33rcIiqLYAmSihGQxAr/zVYp
 dSQF2BkQPCzbPVpP1447xdhtE8fEl2eAGzWug178zj2FMxc/TbyKzM2pR
 Fk2G9lhrS5H+O6EWkbDaLHAh2mwrJQCgMda2YReTVYfj43m0MIATf96Ne
 Bg8shDYFqapXQ0CNhGA1hsw5nViennCdY6ok5Og/VE5ZbDLUrg5MMurbw
 FcjM0vEoRWMyQx6ULbnk+pekRroDniUy6tkOXT2d9jyfZHv06iT1A+o8j Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="247695771"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="247695771"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 17:26:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="730524671"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 17:26:33 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 17:26:15 -0700
Message-Id: <20220427002617.1767295-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220427002617.1767295-1-daniele.ceraolospurio@intel.com>
References: <20220427002617.1767295-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/huc: Add fetch support for
 gsc-loaded HuC binary
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On newer platforms (starting DG2 G10 B-step and G11 A-step), ownership of
HuC loading has been moved from the GuC to the GSC. As part of the
change, the header format of the HuC binary has been updated and does not
match the GuC anymore. The GSC will perform all the required checks on
the binary size, so we only need to check that the version matches.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c     | 99 ++++++++++++--------
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h     |  2 +
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h |  9 ++
 3 files changed, 72 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index cb5dd16421d0d..8d602d87a7295 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -301,45 +301,31 @@ static void __force_fw_fetch_failures(struct intel_uc_fw *uc_fw, int e)
 	}
 }
 
-/**
- * intel_uc_fw_fetch - fetch uC firmware
- * @uc_fw: uC firmware
- *
- * Fetch uC firmware into GEM obj.
- *
- * Return: 0 on success, a negative errno code on failure.
- */
-int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
+static int check_gsc_manifest(const struct firmware *fw,
+			      struct intel_uc_fw *uc_fw)
 {
-	struct drm_i915_private *i915 = __uc_fw_to_gt(uc_fw)->i915;
-	struct device *dev = i915->drm.dev;
-	struct drm_i915_gem_object *obj;
-	const struct firmware *fw = NULL;
-	struct uc_css_header *css;
-	size_t size;
-	int err;
+	u32 *dw = (u32 *)fw->data;
+	u32 version = dw[HUC_GSC_VERSION_DW];
 
-	GEM_BUG_ON(!i915->wopcm.size);
-	GEM_BUG_ON(!intel_uc_fw_is_enabled(uc_fw));
-
-	err = i915_inject_probe_error(i915, -ENXIO);
-	if (err)
-		goto fail;
+	uc_fw->major_ver_found = FIELD_GET(HUC_GSC_MAJOR_VER_MASK, version);
+	uc_fw->minor_ver_found = FIELD_GET(HUC_GSC_MINOR_VER_MASK, version);
 
-	__force_fw_fetch_failures(uc_fw, -EINVAL);
-	__force_fw_fetch_failures(uc_fw, -ESTALE);
+	return 0;
+}
 
-	err = request_firmware(&fw, uc_fw->path, dev);
-	if (err)
-		goto fail;
+static int check_ccs_header(struct drm_i915_private *i915,
+			    const struct firmware *fw,
+			    struct intel_uc_fw *uc_fw)
+{
+	struct uc_css_header *css;
+	size_t size;
 
 	/* Check the size of the blob before examining buffer contents */
 	if (unlikely(fw->size < sizeof(struct uc_css_header))) {
 		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, sizeof(struct uc_css_header));
-		err = -ENODATA;
-		goto fail;
+		return -ENODATA;
 	}
 
 	css = (struct uc_css_header *)fw->data;
@@ -352,8 +338,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 			 "%s firmware %s: unexpected header size: %zu != %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, sizeof(struct uc_css_header));
-		err = -EPROTO;
-		goto fail;
+		return -EPROTO;
 	}
 
 	/* uCode size must calculated from other sizes */
@@ -368,8 +353,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 fw->size, size);
-		err = -ENOEXEC;
-		goto fail;
+		return -ENOEXEC;
 	}
 
 	/* Sanity check whether this fw is not larger than whole WOPCM memory */
@@ -378,8 +362,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu > %zu\n",
 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
 			 size, (size_t)i915->wopcm.size);
-		err = -E2BIG;
-		goto fail;
+		return -E2BIG;
 	}
 
 	/* Get version numbers from the CSS header */
@@ -388,6 +371,49 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 	uc_fw->minor_ver_found = FIELD_GET(CSS_SW_VERSION_UC_MINOR,
 					   css->sw_version);
 
+	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
+		uc_fw->private_data_size = css->private_data_size;
+
+	return 0;
+}
+
+/**
+ * intel_uc_fw_fetch - fetch uC firmware
+ * @uc_fw: uC firmware
+ *
+ * Fetch uC firmware into GEM obj.
+ *
+ * Return: 0 on success, a negative errno code on failure.
+ */
+int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
+{
+	struct drm_i915_private *i915 = __uc_fw_to_gt(uc_fw)->i915;
+	struct device *dev = i915->drm.dev;
+	struct drm_i915_gem_object *obj;
+	const struct firmware *fw = NULL;
+	int err;
+
+	GEM_BUG_ON(!i915->wopcm.size);
+	GEM_BUG_ON(!intel_uc_fw_is_enabled(uc_fw));
+
+	err = i915_inject_probe_error(i915, -ENXIO);
+	if (err)
+		goto fail;
+
+	__force_fw_fetch_failures(uc_fw, -EINVAL);
+	__force_fw_fetch_failures(uc_fw, -ESTALE);
+
+	err = request_firmware(&fw, uc_fw->path, dev);
+	if (err)
+		goto fail;
+
+	if (uc_fw->loaded_via_gsc)
+		err = check_gsc_manifest(fw, uc_fw);
+	else
+		err = check_ccs_header(i915, fw, uc_fw);
+	if (err)
+		goto fail;
+
 	if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
 	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
 		drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
@@ -400,9 +426,6 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
 		}
 	}
 
-	if (uc_fw->type == INTEL_UC_FW_TYPE_GUC)
-		uc_fw->private_data_size = css->private_data_size;
-
 	if (HAS_LMEM(i915)) {
 		obj = i915_gem_object_create_lmem_from_data(i915, fw->data, fw->size);
 		if (!IS_ERR(obj))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
index 3229018877d3d..4f169035f5041 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h
@@ -102,6 +102,8 @@ struct intel_uc_fw {
 	u32 ucode_size;
 
 	u32 private_data_size;
+
+	bool loaded_via_gsc;
 };
 
 #ifdef CONFIG_DRM_I915_DEBUG_GUC
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
index e41ffc7a7fbcb..b05e0e35b734c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw_abi.h
@@ -39,6 +39,11 @@
  * 3. Length info of each component can be found in header, in dwords.
  * 4. Modulus and exponent key are not required by driver. They may not appear
  *    in fw. So driver will load a truncated firmware in this case.
+ *
+ * Starting from DG2, the HuC is loaded by the GSC instead of i915. The GSC
+ * firmware performs all the required integrity checks, we just need to check
+ * the version. Note that the header for GSC-managed blobs is different from the
+ * CSS used for dma-loaded firmwares.
  */
 
 struct uc_css_header {
@@ -78,4 +83,8 @@ struct uc_css_header {
 } __packed;
 static_assert(sizeof(struct uc_css_header) == 128);
 
+#define HUC_GSC_VERSION_DW		44
+#define   HUC_GSC_MAJOR_VER_MASK	(0xFF << 0)
+#define   HUC_GSC_MINOR_VER_MASK	(0xFF << 16)
+
 #endif /* _INTEL_UC_FW_ABI_H */
-- 
2.25.1

