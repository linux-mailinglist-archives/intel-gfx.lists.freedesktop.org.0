Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D694D4EA3FB
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 02:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C3110E1E3;
	Tue, 29 Mar 2022 00:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524B710E1E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 00:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648512535; x=1680048535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CDsmcyrWM9chIWxFT4b7K0AzwNrwjumhXH7S+eeXhdY=;
 b=EFw6yN/uaEiPs89yQvkvHuwl28SLPPMXMuQmYMUfdcX7dzZkKD0jClWO
 hLCeNUmZPG1S99ZgbwaChXoRePfugMkLhR2HtOoGaYszV1qy8If6jWeAd
 OUnQ5gj2rFWp0cdn6Wo/O1kduomp9UlYiP940fEzlFKCSJX/9U5mTsP8j
 /a/nE9k+gtr9f3+n5NB1hckbAdmg7h+gmQNLcnBJ44gaWtrC4+DWkFTvK
 ZIRPJ3YUYgWXfRiGkt8jRjkmNJ3BQI/ULZRwfCUsKEQgsTTFpAAbGx0z8
 aINhS9d1tmC4GEEyK9WW8r3PECUpGc6ZyMbmkMZTlRiWAP4MiU6FIRZeV Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="322314577"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="322314577"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 17:08:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="649250675"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 17:08:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 17:08:22 -0700
Message-Id: <20220329000822.1323195-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329000822.1323195-1-matthew.d.roper@intel.com>
References: <20220329000822.1323195-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] topic/core-for-CI: Add ATS-M PCI IDs
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ATS-M device IDs should be considered to behave as additional DG2-G10
IDs (for ATS-M150) or DG2-G11 IDs (for ATS-M75).

Bspec: 44477
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          |  2 +-
 drivers/gpu/drm/i915/intel_device_info.c |  2 ++
 include/drm/i915_pciids.h                | 10 ++++++++++
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 2025e1114927..736e04078f56 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1064,7 +1064,6 @@ static const struct intel_device_info dg2_info = {
 	.require_force_probe = 1,
 };
 
-__maybe_unused
 static const struct intel_device_info ats_m_info = {
 	DG2_FEATURES,
 	.display = { 0 },
@@ -1151,6 +1150,7 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
 	INTEL_DG2_IDS(&dg2_info),
+	INTEL_ATS_M_IDS(&ats_m_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 8d458226f478..64347deb7386 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -186,10 +186,12 @@ static const u16 subplatform_rpls_ids[] = {
 
 static const u16 subplatform_g10_ids[] = {
 	INTEL_DG2_G10_IDS(0),
+	INTEL_ATS_M150_IDS(0),
 };
 
 static const u16 subplatform_g11_ids[] = {
 	INTEL_DG2_G11_IDS(0),
+	INTEL_ATS_M75_IDS(0),
 };
 
 static const u16 subplatform_g12_ids[] = {
diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
index 3609f3254f24..69b8ec02245b 100644
--- a/include/drm/i915_pciids.h
+++ b/include/drm/i915_pciids.h
@@ -708,4 +708,14 @@
 	INTEL_DG2_G11_IDS(info), \
 	INTEL_DG2_G12_IDS(info)
 
+#define INTEL_ATS_M150_IDS(info) \
+	INTEL_VGA_DEVICE(0x56C0, info)
+
+#define INTEL_ATS_M75_IDS(info) \
+	INTEL_VGA_DEVICE(0x56C1, info)
+
+#define INTEL_ATS_M_IDS(info) \
+	INTEL_ATS_M150_IDS(info), \
+	INTEL_ATS_M75_IDS(info)
+
 #endif /* _I915_PCIIDS_H */
-- 
2.34.1

