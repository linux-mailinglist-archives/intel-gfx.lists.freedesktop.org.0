Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FEE6AFE60
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 06:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EF610E320;
	Wed,  8 Mar 2023 05:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47B0710E23C;
 Wed,  8 Mar 2023 05:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678253607; x=1709789607;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+u2Ic/Vcx427dB70f4AYlQGXrGHxir6gKM+/33N0gT8=;
 b=eSvBrxcwGE9N3n4qeTVB/dlBYK2hbGmpw44aWzHXpMaBSyXKCzJkMhP4
 aiC2BgD6RQHpBiGVnmCyVVH4MH7ScFYxsnMFgcSNEYPc6pZj5cI6MP62h
 q04k+/vscSvVYxFHJl+YEfCgR68hZU1ETlG9b08xghW526fKKM3HTEPQf
 3/9CwZ65Xs6LhoAcmLgMPKoJrClb4ak0J8wd8nghzBzDSe0zDU2igTxto
 E6oii/G67wgMXikhPc8UZABCZesVWcadpz/ivBHoESqQhjDc55OapchMe
 PdMf5idMMqJpUsPolwOedIb/us3D8ExWz/pTxpSXCNWrz7GWa1V1p9HrY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="334781365"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="334781365"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 21:33:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="820071523"
X-IronPort-AV: E=Sophos;i="5.98,242,1673942400"; d="scan'208";a="820071523"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 21:33:26 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 21:33:20 -0800
Message-Id: <20230308053321.939906-3-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20230308053321.939906-1-ashutosh.dixit@intel.com>
References: <20230308053321.939906-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/rps: Expose
 get_requested_frequency_fw for PMU
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Expose intel_rps_get_requested_frequency_fw to read the requested freq
without taking forcewake. This is done for use by PMU which does not take
forcewake when reading freq. The code is refactored to use a common set of
functions across sysfs and PMU. It also allows PMU to support both host
turbo (rps) and slpc which was previously missed due to the non-use of
common functions across sysfs and PMU.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 22 +++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_rps.h |  2 +-
 2 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 0a8e24bcb874..49df31927c0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2154,7 +2154,7 @@ u32 intel_rps_read_actual_frequency_fw(struct intel_rps *rps)
 	return freq;
 }
 
-u32 intel_rps_read_punit_req(struct intel_rps *rps)
+static u32 intel_rps_read_punit_req(struct intel_rps *rps, bool take_fw)
 {
 	struct intel_uncore *uncore = rps_to_uncore(rps);
 	struct intel_runtime_pm *rpm = rps_to_uncore(rps)->rpm;
@@ -2162,7 +2162,8 @@ u32 intel_rps_read_punit_req(struct intel_rps *rps)
 	u32 freq = 0;
 
 	with_intel_runtime_pm_if_in_use(rpm, wakeref)
-		freq = intel_uncore_read(uncore, GEN6_RPNSWREQ);
+		freq = take_fw ? intel_uncore_read(uncore, GEN6_RPNSWREQ) :
+			intel_uncore_read_fw(uncore, GEN6_RPNSWREQ);
 
 	return freq;
 }
@@ -2176,7 +2177,7 @@ static u32 intel_rps_get_req(u32 pureq)
 
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps)
 {
-	u32 freq = intel_rps_get_req(intel_rps_read_punit_req(rps));
+	u32 freq = intel_rps_get_req(intel_rps_read_punit_req(rps, true));
 
 	return intel_gpu_freq(rps, freq);
 }
@@ -2189,6 +2190,21 @@ u32 intel_rps_get_requested_frequency(struct intel_rps *rps)
 		return intel_gpu_freq(rps, rps->cur_freq);
 }
 
+static u32 intel_rps_read_punit_req_frequency_fw(struct intel_rps *rps)
+{
+	u32 freq = intel_rps_get_req(intel_rps_read_punit_req(rps, false));
+
+	return intel_gpu_freq(rps, freq);
+}
+
+u32 intel_rps_get_requested_frequency_fw(struct intel_rps *rps)
+{
+	if (rps_uses_slpc(rps))
+		return intel_rps_read_punit_req_frequency_fw(rps);
+	else
+		return intel_gpu_freq(rps, rps->cur_freq);
+}
+
 u32 intel_rps_get_max_frequency(struct intel_rps *rps)
 {
 	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 63511b826a97..a990f985ab23 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -41,6 +41,7 @@ u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat1);
 u32 intel_rps_read_actual_frequency(struct intel_rps *rps);
 u32 intel_rps_read_actual_frequency_fw(struct intel_rps *rps);
 u32 intel_rps_get_requested_frequency(struct intel_rps *rps);
+u32 intel_rps_get_requested_frequency_fw(struct intel_rps *rps);
 u32 intel_rps_get_min_frequency(struct intel_rps *rps);
 u32 intel_rps_get_min_raw_freq(struct intel_rps *rps);
 int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val);
@@ -50,7 +51,6 @@ int intel_rps_set_max_frequency(struct intel_rps *rps, u32 val);
 u32 intel_rps_get_rp0_frequency(struct intel_rps *rps);
 u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
 u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
-u32 intel_rps_read_punit_req(struct intel_rps *rps);
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
 u32 intel_rps_read_rpstat(struct intel_rps *rps);
 u32 intel_rps_read_rpstat_fw(struct intel_rps *rps);
-- 
2.38.0

