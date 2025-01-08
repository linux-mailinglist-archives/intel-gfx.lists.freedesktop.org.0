Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63687A05276
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 06:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA3F10E164;
	Wed,  8 Jan 2025 05:00:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nJ3o/e6Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2416B10E1DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 05:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736312450; x=1767848450;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Vrvj2D81BsD1VJ1agaeRFe4ORdaxJNgOznENbQIhcog=;
 b=nJ3o/e6QltfSE3kJwIOxb2We+gJIgMOk2ON0xjhwzG0/AGIMwmHEj6qe
 amoloLM/Bb+sareZdebnV6/S4TIOpe9+ucc23u2KgvClVrk3CMZDs71gC
 m3dLQY3DdFFtHf1NdfTN4zChxcRxTpNJWsmYoFWb9or/zx536C748evFc
 sJwgF0kSeRaeGRZORrFIVZfTtN/Jm/81ydKlDWDIGfV9v8hki3SnnY+ix
 wgax3KN2fwzW3ju0OhRwaHDPdGcI7WZ3BKdcsRp7rkoHil8JuJxtKEl4/
 SVahKJhXcW6ULv/EFplEkSbawWbu18KrjNllEGoRqH1PDn1+K3o5QZ64X A==;
X-CSE-ConnectionGUID: MGYXRPVRSVqpgOEBsrw27A==
X-CSE-MsgGUID: tGv6HW3uRQqyDIDzHlsYyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="36543123"
X-IronPort-AV: E=Sophos;i="6.12,297,1728975600"; d="scan'208";a="36543123"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 21:00:49 -0800
X-CSE-ConnectionGUID: jLd2/hBrQHO9Wn43AXHNGQ==
X-CSE-MsgGUID: xueugWb/SJyONsVri+z1Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107010764"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 21:00:46 -0800
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, riana.tauro@intel.com, karthik.poosa@intel.com,
 badal.nilawar@intel.com, ravi.kishore.koppuravuri@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v1] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
Date: Wed,  8 Jan 2025 10:18:58 +0530
Message-Id: <20250108044858.3825662-1-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Sk Anirban <sk.anirban@intel.com>

Fix the frequency calculation by ensuring it is adjusted
only once during power measurement. Update live_rps_power test
to use the correct frequency values for logging and comparison.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c207a4fb03bf..d65135dfd80e 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -1126,6 +1126,7 @@ static u64 measure_power_at(struct intel_rps *rps, int *freq)
 {
 	*freq = rps_set_check(rps, *freq);
 	msleep(100);
+	*freq = intel_gpu_freq(rps, *freq);
 	return measure_power(rps, freq);
 }
 
@@ -1202,13 +1203,13 @@ int live_rps_power(void *arg)
 
 		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
 			engine->name,
-			min.power, intel_gpu_freq(rps, min.freq),
-			max.power, intel_gpu_freq(rps, max.freq));
+			min.power, min.freq,
+			max.power, max.freq);
 
 		if (10 * min.freq >= 9 * max.freq) {
 			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
-				  min.freq, intel_gpu_freq(rps, min.freq),
-				  max.freq, intel_gpu_freq(rps, max.freq));
+				  min.freq, min.freq,
+				  max.freq, max.freq);
 			continue;
 		}
 
-- 
2.34.1

