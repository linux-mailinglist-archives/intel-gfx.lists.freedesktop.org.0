Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EE2699A25
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 17:34:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6349110EE10;
	Thu, 16 Feb 2023 16:34:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE4610EE0F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 16:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676565291; x=1708101291;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vheF0sAtn4yS1iTYVauBJvn9k8fMmmUtmkJrSMmEIpY=;
 b=j2MLkby2UTaO4x6FjtoeB02V5NhoGvzC1og4UUMW+soIkLyX0PylX9DD
 490NFYc9f8aY2jcL4RbbJCEA+YS8ld+RdnRU8Wl5DNtlLZtZ2taxzIktm
 lAKu4UXAj4GKrJotK0uwLrhe+uClT6jIpIvISrNzsFusmXSXgE2/msI6K
 nPooLv2PbufMUC3ECk8sBEX1SNc/HqKikObQcIj05V/TnVfhwRN0b2XgD
 fHCWOBCdXonqDNGVOA65guaVdLIUQwVK5ceva+vKpqlmde1cgrZoUDtpk
 twbmHGvSP00wYgOBUBu3MNRsw/JY11qiwvDw5rmz/N2wLs3zCzttf2fzc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="333950342"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="333950342"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 08:17:52 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="700548966"
X-IronPort-AV: E=Sophos;i="5.97,302,1669104000"; d="scan'208";a="700548966"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 08:17:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 18:17:38 +0200
Message-Id: <20230216161739.668294-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230216161739.668294-1-jani.nikula@intel.com>
References: <20230216161739.668294-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/dmc: add i915_to_dmc() and
 dmc->i915 and use them
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Start preparing for dynamically allocated struct intel_dmc by adding
i915_to_dmc() and dmc->i915, and using them.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 90 ++++++++++++++----------
 drivers/gpu/drm/i915/display/intel_dmc.h |  1 +
 2 files changed, 55 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index ab4fdedd4c5f..1d156ac2eb4c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -38,6 +38,11 @@
  * low-power state and comes back to normal.
  */
 
+static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
+{
+	return &i915->display.dmc;
+}
+
 #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
 #define DMC_VERSION_MAJOR(version)	((version) >> 16)
 #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
@@ -259,7 +264,9 @@ static bool is_valid_dmc_id(enum intel_dmc_id dmc_id)
 
 static bool has_dmc_id_fw(struct drm_i915_private *i915, enum intel_dmc_id dmc_id)
 {
-	return i915->display.dmc.dmc_info[dmc_id].payload;
+	struct intel_dmc *dmc = i915_to_dmc(i915);
+
+	return dmc && dmc->dmc_info[dmc_id].payload;
 }
 
 bool intel_dmc_has_payload(struct drm_i915_private *i915)
@@ -450,7 +457,7 @@ void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
-	struct intel_dmc *dmc = &dev_priv->display.dmc;
+	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
 	enum intel_dmc_id dmc_id;
 	u32 i;
 
@@ -515,8 +522,11 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
 
 void assert_dmc_loaded(struct drm_i915_private *i915)
 {
-	drm_WARN_ONCE(&i915->drm,
-		      !intel_de_read(i915, DMC_PROGRAM(i915->display.dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
+	struct intel_dmc *dmc = i915_to_dmc(i915);
+
+	drm_WARN_ONCE(&i915->drm, !dmc, "DMC not initialized\n");
+	drm_WARN_ONCE(&i915->drm, dmc &&
+		      !intel_de_read(i915, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
 		      "DMC program storage start is NULL\n");
 	drm_WARN_ONCE(&i915->drm, !intel_de_read(i915, DMC_SSP_BASE),
 		      "DMC SSP Base Not fine\n");
@@ -551,11 +561,10 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 			      const struct stepping_info *si,
 			      u8 package_ver)
 {
+	struct drm_i915_private *i915 = dmc->i915;
 	enum intel_dmc_id dmc_id;
 	unsigned int i;
 
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
-
 	for (i = 0; i < num_entries; i++) {
 		dmc_id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
 
@@ -582,7 +591,7 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
 				       const u32 *mmioaddr, u32 mmio_count,
 				       int header_ver, enum intel_dmc_id dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 	u32 start_range, end_range;
 	int i;
 
@@ -615,7 +624,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
 			       size_t rem_size, enum intel_dmc_id dmc_id)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 	struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
@@ -726,7 +735,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 		     const struct stepping_info *si,
 		     size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 	u32 package_size = sizeof(struct intel_package_header);
 	u32 num_entries, max_entries;
 	const struct intel_fw_info *fw_info;
@@ -780,7 +789,7 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 			    struct intel_css_header *css_header,
 			    size_t rem_size)
 {
-	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
+	struct drm_i915_private *i915 = dmc->i915;
 
 	if (rem_size < sizeof(struct intel_css_header)) {
 		drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
@@ -800,13 +809,12 @@ static u32 parse_dmc_fw_css(struct intel_dmc *dmc,
 	return sizeof(struct intel_css_header);
 }
 
-static void parse_dmc_fw(struct drm_i915_private *dev_priv,
-			 const struct firmware *fw)
+static void parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 {
+	struct drm_i915_private *dev_priv = dmc->i915;
 	struct intel_css_header *css_header;
 	struct intel_package_header *package_header;
 	struct intel_dmc_header_base *dmc_header;
-	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	struct stepping_info display_info = { '*', '*'};
 	const struct stepping_info *si = intel_get_stepping_info(dev_priv, &display_info);
 	enum intel_dmc_id dmc_id;
@@ -833,7 +841,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	readcount += r;
 
 	for_each_dmc_id(dmc_id) {
-		if (!dev_priv->display.dmc.dmc_info[dmc_id].present)
+		if (!dmc->dmc_info[dmc_id].present)
 			continue;
 
 		offset = readcount + dmc->dmc_info[dmc_id].dmc_offset * 4;
@@ -872,16 +880,13 @@ static const char *dmc_fallback_path(struct drm_i915_private *i915)
 
 static void dmc_load_work_fn(struct work_struct *work)
 {
-	struct drm_i915_private *dev_priv;
-	struct intel_dmc *dmc;
+	struct intel_dmc *dmc = container_of(work, typeof(*dmc), work);
+	struct drm_i915_private *dev_priv = dmc->i915;
 	const struct firmware *fw = NULL;
 	const char *fallback_path;
 	int err;
 
-	dev_priv = container_of(work, typeof(*dev_priv), display.dmc.work);
-	dmc = &dev_priv->display.dmc;
-
-	err = request_firmware(&fw, dev_priv->display.dmc.fw_path, dev_priv->drm.dev);
+	err = request_firmware(&fw, dmc->fw_path, dev_priv->drm.dev);
 
 	if (err == -ENOENT && !dev_priv->params.dmc_firmware_path) {
 		fallback_path = dmc_fallback_path(dev_priv);
@@ -892,11 +897,11 @@ static void dmc_load_work_fn(struct work_struct *work)
 				    fallback_path);
 			err = request_firmware(&fw, fallback_path, dev_priv->drm.dev);
 			if (err == 0)
-				dev_priv->display.dmc.fw_path = fallback_path;
+				dmc->fw_path = fallback_path;
 		}
 	}
 
-	parse_dmc_fw(dev_priv, fw);
+	parse_dmc_fw(dmc, fw);
 
 	if (intel_dmc_has_payload(dev_priv)) {
 		intel_dmc_load_program(dev_priv);
@@ -904,7 +909,7 @@ static void dmc_load_work_fn(struct work_struct *work)
 
 		drm_info(&dev_priv->drm,
 			 "Finished loading DMC firmware %s (v%u.%u)\n",
-			 dev_priv->display.dmc.fw_path, DMC_VERSION_MAJOR(dmc->version),
+			 dmc->fw_path, DMC_VERSION_MAJOR(dmc->version),
 			 DMC_VERSION_MINOR(dmc->version));
 	} else {
 		drm_notice(&dev_priv->drm,
@@ -927,13 +932,16 @@ static void dmc_load_work_fn(struct work_struct *work)
  */
 void intel_dmc_init(struct drm_i915_private *dev_priv)
 {
-	struct intel_dmc *dmc = &dev_priv->display.dmc;
-
-	INIT_WORK(&dev_priv->display.dmc.work, dmc_load_work_fn);
+	struct intel_dmc *dmc;
 
 	if (!HAS_DMC(dev_priv))
 		return;
 
+	dmc = i915_to_dmc(dev_priv);
+	dmc->i915 = dev_priv;
+
+	INIT_WORK(&dmc->work, dmc_load_work_fn);
+
 	/*
 	 * Obtain a runtime pm reference, until DMC is loaded, to avoid entering
 	 * runtime-suspend.
@@ -999,7 +1007,7 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
 	}
 
 	drm_dbg_kms(&dev_priv->drm, "Loading %s\n", dmc->fw_path);
-	schedule_work(&dev_priv->display.dmc.work);
+	schedule_work(&dmc->work);
 }
 
 /**
@@ -1012,10 +1020,13 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
  */
 void intel_dmc_suspend(struct drm_i915_private *dev_priv)
 {
+	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
+
 	if (!HAS_DMC(dev_priv))
 		return;
 
-	flush_work(&dev_priv->display.dmc.work);
+	if (dmc)
+		flush_work(&dmc->work);
 
 	/* Drop the reference held in case DMC isn't loaded. */
 	if (!intel_dmc_has_payload(dev_priv))
@@ -1051,6 +1062,7 @@ void intel_dmc_resume(struct drm_i915_private *dev_priv)
  */
 void intel_dmc_fini(struct drm_i915_private *dev_priv)
 {
+	struct intel_dmc *dmc = i915_to_dmc(dev_priv);
 	enum intel_dmc_id dmc_id;
 
 	if (!HAS_DMC(dev_priv))
@@ -1059,36 +1071,42 @@ void intel_dmc_fini(struct drm_i915_private *dev_priv)
 	intel_dmc_suspend(dev_priv);
 	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
 
-	for_each_dmc_id(dmc_id)
-		kfree(dev_priv->display.dmc.dmc_info[dmc_id].payload);
+	if (dmc) {
+		for_each_dmc_id(dmc_id)
+			kfree(dmc->dmc_info[dmc_id].payload);
+	}
 }
 
 void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
 				 struct drm_i915_private *i915)
 {
-	struct intel_dmc *dmc = &i915->display.dmc;
+	struct intel_dmc *dmc = i915_to_dmc(i915);
 
 	if (!HAS_DMC(i915))
 		return;
 
+	i915_error_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
 	i915_error_printf(m, "DMC loaded: %s\n",
 			  str_yes_no(intel_dmc_has_payload(i915)));
-	i915_error_printf(m, "DMC fw version: %d.%d\n",
-			  DMC_VERSION_MAJOR(dmc->version),
-			  DMC_VERSION_MINOR(dmc->version));
+	if (dmc)
+		i915_error_printf(m, "DMC fw version: %d.%d\n",
+				  DMC_VERSION_MAJOR(dmc->version),
+				  DMC_VERSION_MINOR(dmc->version));
 }
 
 static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = m->private;
+	struct intel_dmc *dmc = i915_to_dmc(i915);
 	intel_wakeref_t wakeref;
-	struct intel_dmc *dmc;
 	i915_reg_t dc5_reg, dc6_reg = INVALID_MMIO_REG;
 
 	if (!HAS_DMC(i915))
 		return -ENODEV;
 
-	dmc = &i915->display.dmc;
+	seq_printf(m, "DMC initialized: %s\n", str_yes_no(dmc));
+	if (!dmc)
+		return 0;
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index 90910cecc2f6..b74635497aa7 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -25,6 +25,7 @@ enum intel_dmc_id {
 };
 
 struct intel_dmc {
+	struct drm_i915_private *i915;
 	struct work_struct work;
 	const char *fw_path;
 	u32 max_fw_size; /* bytes */
-- 
2.34.1

