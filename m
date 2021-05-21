Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1854638D1CA
	for <lists+intel-gfx@lfdr.de>; Sat, 22 May 2021 01:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72C536E8A8;
	Fri, 21 May 2021 23:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342A06E8AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 23:01:24 +0000 (UTC)
IronPort-SDR: hJkQuq88Z21Tt9l4kZYtjDVI9bq11amaeWvivlS2x6BHIZgG98h29kKfVnRxcaNgtjUtm3ZjV9
 eH745zVtidZg==
X-IronPort-AV: E=McAfee;i="6200,9189,9991"; a="188717273"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="188717273"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 16:01:18 -0700
IronPort-SDR: sjwDK1f0UzWEucjlzquva5AfgM7opN07Tg1xCw6BRhbpdzZ7FvzaW2Afvppbdtlw0pWTaEWxur
 gADL0+Qoz9aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="395509574"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga003.jf.intel.com with ESMTP; 21 May 2021 16:01:17 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 May 2021 16:01:12 -0700
Message-Id: <20210521230114.2563-6-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210521230114.2563-1-anusha.srivatsa@intel.com>
References: <20210521230114.2563-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/xelpd: Pipe A DMC plugging
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   4 +-
 .../drm/i915/display/intel_display_power.c    |   5 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 121 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_dmc.h      |   2 +
 drivers/gpu/drm/i915/i915_reg.h               |   2 +-
 5 files changed, 79 insertions(+), 55 deletions(-)

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
index b546672c9b00..dce7f1d1540f 100644
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
index 16bfbca6c1ed..3b3bb15e6a24 100644
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
@@ -353,59 +357,65 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 	gen9_set_dc_state_debugmask(dev_priv);
 }
 
+static bool fw_info_matches_stepping(const struct intel_fw_info *fw_info,
+				     const struct stepping_info *si)
+{
+	if ((fw_info->substepping == '*' && si->stepping == fw_info->stepping) ||
+	    (si->stepping == fw_info->stepping && si->substepping == fw_info->substepping))
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
 	struct dmc_fw_info *dmc_info = &dmc->dmc_info[DMC_FW_MAIN];
 	unsigned int header_len_bytes, dmc_header_size, payload_size, i;
 	const u32 *mmioaddr, *mmiodata;
-	u32 mmio_count, mmio_count_max;
+	u32 mmio_count, mmio_count_max, start_mmioaddr;
 	u8 *payload;
 
 	BUILD_BUG_ON(ARRAY_SIZE(dmc_info->mmioaddr) < DMC_V3_MAX_MMIO_COUNT ||
@@ -432,6 +442,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		mmio_count_max = DMC_V3_MAX_MMIO_COUNT;
 		/* header_len is in dwords */
 		header_len_bytes = dmc_header->header_len * 4;
+		start_mmioaddr = v3->start_mmioaddr;
 		dmc_header_size = sizeof(*v3);
 	} else if (dmc_header->header_ver == 1) {
 		const struct intel_dmc_header_v1 *v1 =
@@ -445,6 +456,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		mmio_count = v1->mmio_count;
 		mmio_count_max = DMC_V1_MAX_MMIO_COUNT;
 		header_len_bytes = dmc_header->header_len;
+		start_mmioaddr = 0x80000;
 		dmc_header_size = sizeof(*v1);
 	} else {
 		drm_err(&i915->drm, "Unknown DMC fw header version: %u\n",
@@ -469,6 +481,7 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		dmc_info->mmiodata[i] = mmiodata[i];
 	}
 	dmc_info->mmio_count = mmio_count;
+	dmc_info->start_mmioaddr = start_mmioaddr;
 
 	rem_size -= header_len_bytes;
 
@@ -507,7 +520,7 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 {
 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
 	u32 package_size = sizeof(struct intel_package_header);
-	u32 num_entries, max_entries, dmc_offset;
+	u32 num_entries, max_entries;
 	const struct intel_fw_info *fw_info;
 
 	if (rem_size < package_size)
@@ -543,16 +556,11 @@ parse_dmc_fw_package(struct intel_dmc *dmc,
 
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
@@ -604,7 +612,8 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	struct intel_dmc *dmc = &dev_priv->dmc;
 	const struct stepping_info *si = intel_get_stepping_info(dev_priv);
 	u32 readcount = 0;
-	u32 r;
+	u32 r, offset;
+	int id;
 
 	if (!fw)
 		return;
@@ -625,9 +634,19 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 
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
index 65587d96588c..5b38cbdbdd34 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -18,6 +18,7 @@ struct drm_i915_private;
 
 enum {
 	DMC_FW_MAIN = 0,
+	DMC_FW_PIPEA,
 	DMC_FW_MAX
 };
 
@@ -35,6 +36,7 @@ struct intel_dmc {
 		u32 start_mmioaddr;
 		u32 dmc_fw_size; /*dwords */
 		u32 *payload;
+		bool present;
 	} dmc_info[DMC_FW_MAX];
 
 	u32 dc_state;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4dbe79009c0e..9713108ea78e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7728,7 +7728,7 @@ enum {
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
