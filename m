Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E69939C002
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 20:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31BE16F8AD;
	Fri,  4 Jun 2021 18:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62CBA6F8AC
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 18:59:02 +0000 (UTC)
IronPort-SDR: i+mOgtZp+9rWnmEYgv3vyMAEbjppwnec+gQk1sKOtlGVRk99j6r6CQQo6SmdbkWM8RbBl6CTNM
 7wr9QBtS/eXw==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="184032753"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="184032753"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 11:59:01 -0700
IronPort-SDR: nTVfXapyW2j+q+fbZtVnQTC/qFy1DUgEfXt4A8qVtQTQV2d7RWA2N4ea7DIxdsWMlTGgQefF77
 I52Vh8+7OxAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="618356056"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga005.jf.intel.com with ESMTP; 04 Jun 2021 11:59:01 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Jun 2021 11:58:59 -0700
Message-Id: <20210604185901.24069-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210604185901.24069-1-anusha.srivatsa@intel.com>
References: <20210604185901.24069-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/4] drm/i915/xelpd: Pipe A DMC plugging
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch adds Pipe A plumbing to the already
existing parsing and loading functions which is
taken care of in the prep patches. Adding MAX_DMC_FW
to keep track for both Main and Pipe A DMC while loading
the respective blobs.

Also adding present field in dmc_info.
s/find_dmc_fw_offset/csr_set_dmc_fw_offset. While at it add
fw_info_matches_stepping() helper. CSR_PROGRAM() should now
take the starting address of the particular blob (Main or Pipe)
and not hardcode it.

v2: Add dmc_offset and start_mmioaddr fields for dmc_info struct.

v3: Add a missing corner cases of stepping-substepping combination in
fw_info_matches_stepping() helper.

Cc: Souza, Jose <jose.souza@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 130 +++++++++++-------
 drivers/gpu/drm/i915/display/intel_dmc.h      |   4 +
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 5 files changed, 89 insertions(+), 56 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 88bb05d5c483..2a1c39a0e56e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -544,6 +544,8 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 
 	seq_printf(m, "fw loaded: %s\n", yesno(intel_dmc_has_payload(dev_priv)));
 	seq_printf(m, "path: %s\n", dmc->fw_path);
+	seq_printf(m, "Pipe A fw support: %s\n", yesno(INTEL_GEN(dev_priv) >= 12));
+	seq_printf(m, "Pipe A fw loaded: %s\n", yesno(dmc->dmc_info[DMC_FW_PIPEA].payload));
 
 	if (!intel_dmc_has_payload(dev_priv))
 		goto out;
@@ -582,7 +584,7 @@ static int i915_dmc_info(struct seq_file *m, void *unused)
 
 out:
 	seq_printf(m, "program base: 0x%08x\n",
-		   intel_de_read(dev_priv, DMC_PROGRAM(0)));
+		   intel_de_read(dev_priv, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
 	seq_printf(m, "ssp base: 0x%08x\n",
 		   intel_de_read(dev_priv, DMC_SSP_BASE));
 	seq_printf(m, "htp: 0x%08x\n", intel_de_read(dev_priv, DMC_HTP_SKL));
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 3e1f6ec61514..b7d4993feca6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -961,8 +961,9 @@ static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
 static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
 {
 	drm_WARN_ONCE(&dev_priv->drm,
-		      !intel_de_read(dev_priv, DMC_PROGRAM(0)),
-		      "DMC program storage start is NULL\n");
+		      !intel_de_read(dev_priv,
+				     DMC_PROGRAM(dev_priv->dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
+				     "DMC program storage start is NULL\n");
 	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_SSP_BASE),
 		      "DMC SSP Base Not fine\n");
 	drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv, DMC_HTP_SKL),
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b78cb44731fe..09f65ad71f7e 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -317,8 +317,7 @@ static void gen9_set_dc_state_debugmask(struct drm_i915_private *dev_priv)
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
 	struct intel_dmc *dmc = &dev_priv->dmc;
-	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
-	u32 i, fw_size;
+	u32 id, i;
 
 	if (!HAS_DMC(dev_priv)) {
 		drm_err(&dev_priv->drm,
@@ -332,20 +331,25 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	fw_size = dmc_info->dmc_fw_size;
 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
 
 	preempt_disable();
 
-	for (i = 0; i < fw_size; i++)
-		intel_uncore_write_fw(&dev_priv->uncore, DMC_PROGRAM(i),
-				      dmc_info->payload[i]);
+	for (id = 0; id < DMC_FW_MAX; id++) {
+		for (i = 0; i < dmc->dmc_info[id].dmc_fw_size; i++) {
+			intel_uncore_write_fw(&dev_priv->uncore,
+					      DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
+					      dmc->dmc_info[id].payload[i]);
+		}
+	}
 
 	preempt_enable();
 
-	for (i = 0; i < dmc_info->mmio_count; i++) {
-		intel_de_write(dev_priv, dmc_info->mmioaddr[i],
-			       dmc_info->mmiodata[i]);
+	for (id = 0; id < DMC_FW_MAX; id++) {
+		for (i = 0; i < dmc->dmc_info[id].mmio_count; i++) {
+			intel_de_write(dev_priv, dmc->dmc_info[id].mmioaddr[i],
+				       dmc->dmc_info[id].mmiodata[i]);
+		}
 	}
 
 	dev_priv->dmc.dc_state = 0;
@@ -353,59 +357,72 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	gen9_set_dc_state_debugmask(dev_priv);
 }
 
+static bool fw_info_matches_stepping(const struct intel_fw_info *fw_info,
+				     const struct stepping_info *si)
+{
+	if ((fw_info->substepping == '*' && si->stepping == fw_info->stepping) ||
+	    (si->stepping == fw_info->stepping && si->substepping == fw_info->substepping) ||
+	    /*
+	     * If we don't find a more specific one from above two checks, we
+	     * then check for the generic one to be sure to work even with
+	     * "broken firmware"
+	     */
+	    (si->stepping == '*' && si->substepping == fw_info->substepping) ||
+	    (fw_info->stepping == '*' && fw_info->substepping == '*'))
+		return true;
+
+	return false;
+}
+
 /*
  * Search fw_info table for dmc_offset to find firmware binary: num_entries is
  * already sanitized.
  */
-static u32 find_dmc_fw_offset(const struct intel_fw_info *fw_info,
+static void dmc_set_fw_offset(struct intel_dmc *dmc,
+			      const struct intel_fw_info *fw_info,
 			      unsigned int num_entries,
 			      const struct stepping_info *si,
 			      u8 package_ver)
 {
-	u32 dmc_offset = DMC_DEFAULT_FW_OFFSET;
-	unsigned int i;
+	unsigned int i, id;
 
-	for (i = 0; i < num_entries; i++) {
-		if (package_ver > 1 && fw_info[i].dmc_id != 0)
-			continue;
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
 
-		if (fw_info[i].substepping == '*' &&
-		    si->stepping == fw_info[i].stepping) {
-			dmc_offset = fw_info[i].offset;
-			break;
+	for (i = 0; i < num_entries; i++) {
+		if (package_ver > 1) {
+			if (fw_info[i].dmc_id >= DMC_FW_MAX || fw_info[i].dmc_id < DMC_FW_MAIN) {
+				drm_notice(&i915->drm, "Invalid firmware id: %d\n", fw_info[i].dmc_id);
+				continue;
+			} else {
+				id = fw_info[i].dmc_id;
+			}
+		} else {
+			id = DMC_FW_MAIN;
 		}
 
-		if (si->stepping == fw_info[i].stepping &&
-		    si->substepping == fw_info[i].substepping) {
-			dmc_offset = fw_info[i].offset;
-			break;
-		}
+		/* More specific versions come first, so we don't even have to
+		 * check for the stepping since we already found a previous FW
+		 * for this id.
+		 */
+		if (dmc->dmc_info[id].present)
+			continue;
 
-		if (fw_info[i].stepping == '*' &&
-		    fw_info[i].substepping == '*') {
-			/*
-			 * In theory we should stop the search as generic
-			 * entries should always come after the more specific
-			 * ones, but let's continue to make sure to work even
-			 * with "broken" firmwares. If we don't find a more
-			 * specific one, then we use this entry
-			 */
-			dmc_offset = fw_info[i].offset;
+		if (fw_info_matches_stepping(&fw_info[i], si)) {
+			dmc->dmc_info[id].present = true;
+			dmc->dmc_info[id].dmc_offset = fw_info[i].offset;
 		}
 	}
-
-	return dmc_offset;
 }
 
 static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
-			       size_t rem_size)
+			       size_t rem_size, u8 dmc_id)
 {
 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
-	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
+	struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
-	u32 mmio_count, mmio_count_max;
+	u32 mmio_count, mmio_count_max, start_mmioaddr;
 	u8 *payload;
 
 	BUILD_BUG_ON(ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
@@ -432,6 +449,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		mmio_count_max = DMC_V3_MAX_MMIO_COUNT;
 		/* header_len is in dwords */
 		header_len_bytes = dmc_header->header_len * 4;
+		start_mmioaddr = v3->start_mmioaddr;
 		dmc_header_size = sizeof(*v3);
 	} else if (dmc_header->header_ver == 1) {
 		const struct intel_dmc_header_v1 *v1 =
@@ -445,6 +463,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		mmio_count = v1->mmio_count;
 		mmio_count_max = DMC_V1_MAX_MMIO_COUNT;
 		header_len_bytes = dmc_header->header_len;
+		start_mmioaddr = 0x80000;
 		dmc_header_size = sizeof(*v1);
 	} else {
 		drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
@@ -469,6 +488,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		dmc_info->mmiodata[i] = mmiodata[i];
 	}
 	dmc_info->mmio_count = mmio_count;
+	dmc_info->start_mmioaddr = start_mmioaddr;
 
 	rem_size -= header_len_bytes;
 
@@ -505,7 +525,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 {
 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
 	u32 package_size = sizeof(struct intel_package_header);
-	u32 num_entries, max_entries, dmc_offset;
+	u32 num_entries, max_entries;
 	const struct intel_fw_info *fw_info;
 
 	if (rem_size < package_size)
@@ -541,16 +561,11 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 
 	fw_info = (const struct intel_fw_info *)
 		((u8 *)package_header + sizeof(*package_header));
-	dmc_offset = find_dmc_fw_offset(fw_info, num_entries, si,
-					package_header->header_ver);
-	if (dmc_offset == DMC_DEFAULT_FW_OFFSET) {
-		drm_err(&i915->drm, "DMC firmware not supported for %c stepping\n",
-			si->stepping);
-		return 0;
-	}
+	dmc_set_fw_offset(dmc, fw_info, num_entries, si,
+			  package_header->header_ver);
 
 	/* dmc_offset is in dwords */
-	return package_size + dmc_offset * 4;
+	return package_size;
 
 error_truncated:
 	drm_err(&i915->drm, "Truncated DMC firmware, refusing.\n");
@@ -602,7 +617,8 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	struct intel_dmc *dmc = &dev_priv->dmc;
 	const struct stepping_info *si = intel_get_stepping_info(dev_priv);
 	u32 readcount = 0;
-	u32 r;
+	u32 r, offset;
+	int id;
 
 	if (!fw)
 		return;
@@ -623,9 +639,19 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 
 	readcount += r;
 
-	/* Extract dmc_header information */
-	dmc_header = (struct intel_dmc_header_base *)&fw->data[readcount];
-	parse_dmc_fw_header(dmc, dmc_header, fw->size - readcount);
+	for (id = 0; id < DMC_FW_MAX; id++) {
+		if (!dev_priv->dmc.dmc_info[id].present)
+			continue;
+
+		offset = readcount + dmc->dmc_info[id].dmc_offset * 4;
+		if (fw->size - offset < 0) {
+			drm_err(&dev_priv->drm, "Reading beyond the fw_size\n");
+			continue;
+		}
+
+		dmc_header = (struct intel_dmc_header_base *)&fw->data[offset];
+		parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, id);
+	}
 }
 
 static void intel_dmc_runtime_pm_get(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index b872f3a4fd03..007a284b0ef0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -18,6 +18,7 @@ struct drm_i915_private;
 
 enum {
 	DMC_FW_MAIN = 0,
+	DMC_FW_PIPEA,
 	DMC_FW_MAX
 };
 
@@ -31,8 +32,11 @@ struct intel_dmc {
 		u32 mmio_count;
 		i915_reg_t mmioaddr[20];
 		u32 mmiodata[20];
+		u32 dmc_offset;
+		u32 start_mmioaddr;
 		u32 dmc_fw_size; /*dwords */
 		u32 *payload;
+		bool present;
 	} dmc_info[DMC_FW_MAX];
 
 	u32 dc_state;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 24307c49085f..912b2d553bc4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7751,7 +7751,7 @@ enum {
 #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
 
 /* DMC */
-#define DMC_PROGRAM(i)		_MMIO(0x80000 + (i) * 4)
+#define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
 #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
 #define DMC_HTP_ADDR_SKL	0x00500034
 #define DMC_SSP_BASE		_MMIO(0x8F074)
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
