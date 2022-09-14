Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4155B8CF4
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 18:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817DF10E04E;
	Wed, 14 Sep 2022 16:27:38 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB7510E04E;
 Wed, 14 Sep 2022 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663172854; x=1694708854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8LvFxD2DShVurgup5+2R4pV9jcJROCihIyltSquZuPM=;
 b=hEFGsYXZ4td9KK0BsaaRlnKQSxy3YS/Yzpr9lXt30b1t5CVHOC6jQ/7e
 h5EnhBM9JudCaqgL/mjD3UjwURC2Ghix0xZJ1KiVs84gsmiZrUozcP4FZ
 /XGdbFGi4MLp3I+R/s1mmzk/qPZOBLl242xA82pbcXqOfd7kQ3vbJtaQi
 tRxjdVjRE4dulEX056DiUcAB5c9oaEjdJqZIr3n2MLTF2eTZDkznVlA1w
 hMU/XL3d/cO04oU0taBnDabNsNahtwvILXjYT10gCI1vDJYWbjPWQ0ZTN
 TbzBzW9KUUII/STzyYbcX+Xc9HeoEanTm4HJOJxjfkrkOCP7x4XB70TXO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278861651"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="278861651"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 09:26:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="679117617"
Received: from relo-linux-5.jf.intel.com ([10.165.21.154])
 by fmsmga008.fm.intel.com with ESMTP; 14 Sep 2022 09:26:50 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 14 Sep 2022 09:27:22 -0700
Message-Id: <20220914162722.151756-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220914162722.151756-1-John.C.Harrison@Intel.com>
References: <20220914162722.151756-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] drm/i915/uc: Enable version reduced
 firmware files for newest platforms
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Going forwards, the intention is for GuC firmware files to be named
for their major version only and HuC firmware files to have no version
number in the name at all. This patch adds those entries for all
platforms that are officially GuC/HuC enabled.

Also, update the expected version numbers to the latest firmware
release for those platforms.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index af425916cdf64..57faba11029ac 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -72,13 +72,18 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * security fixes, etc. to be enabled.
  */
 #define INTEL_GUC_FIRMWARE_DEFS(fw_def, guc_maj, guc_mmp) \
-	fw_def(DG2,          0, guc_mmp(dg2,  70, 4, 1)) \
+	fw_def(DG2,          0, guc_maj(dg2,  70, 5)) \
+	fw_def(ALDERLAKE_P,  0, guc_maj(adlp, 70, 5)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 70, 1, 1)) \
 	fw_def(ALDERLAKE_P,  0, guc_mmp(adlp, 69, 0, 3)) \
+	fw_def(ALDERLAKE_S,  0, guc_maj(tgl,  70, 5)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(ALDERLAKE_S,  0, guc_mmp(tgl,  69, 0, 3)) \
+	fw_def(DG1,          0, guc_maj(dg1,  70, 5)) \
 	fw_def(DG1,          0, guc_mmp(dg1,  70, 1, 1)) \
+	fw_def(ROCKETLAKE,   0, guc_maj(tgl,  70, 5)) \
 	fw_def(ROCKETLAKE,   0, guc_mmp(tgl,  70, 1, 1)) \
+	fw_def(TIGERLAKE,    0, guc_maj(tgl,  70, 5)) \
 	fw_def(TIGERLAKE,    0, guc_mmp(tgl,  70, 1, 1)) \
 	fw_def(JASPERLAKE,   0, guc_mmp(ehl,  70, 1, 1)) \
 	fw_def(ELKHARTLAKE,  0, guc_mmp(ehl,  70, 1, 1)) \
@@ -92,10 +97,15 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
 	fw_def(SKYLAKE,      0, guc_mmp(skl,  70, 1, 1))
 
 #define INTEL_HUC_FIRMWARE_DEFS(fw_def, huc_raw, huc_mmp) \
+	fw_def(ALDERLAKE_P,  0, huc_raw(tgl)) \
 	fw_def(ALDERLAKE_P,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(ALDERLAKE_S,  0, huc_raw(tgl)) \
 	fw_def(ALDERLAKE_S,  0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(DG1,          0, huc_raw(dg1)) \
 	fw_def(DG1,          0, huc_mmp(dg1,  7, 9, 3)) \
+	fw_def(ROCKETLAKE,   0, huc_raw(tgl)) \
 	fw_def(ROCKETLAKE,   0, huc_mmp(tgl,  7, 9, 3)) \
+	fw_def(TIGERLAKE,    0, huc_raw(tgl)) \
 	fw_def(TIGERLAKE,    0, huc_mmp(tgl,  7, 9, 3)) \
 	fw_def(JASPERLAKE,   0, huc_mmp(ehl,  9, 0, 0)) \
 	fw_def(ELKHARTLAKE,  0, huc_mmp(ehl,  9, 0, 0)) \
-- 
2.37.3

