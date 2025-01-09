Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65222A071BE
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 10:42:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF9910E2BF;
	Thu,  9 Jan 2025 09:42:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MB07M+up";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF67510E2BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736415734; x=1767951734;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y9IiS83/InTSxseC3cbM6M/EA3hhfS2AmbENm+510Fg=;
 b=MB07M+upsT+f4LrVVFJJAbrR98NgIgg0Vt12bpHkMAYwGTTt7PkQh4Lm
 wgAOFA0rs8GS/BFkd5w2aIyt/ruVNnO5xOFdIHBg2IObN6g06DVAMcVHu
 /L/N03RlJApUfG2LPLxlkM3qeO7IbSoIR40VkXMYjBMWwEFinnsdxLfYx
 5UgVbAy+MeewFJm2lg5u4T1veaU4k/tb5JaYCsG6/FYO8vd2MtOvqhevH
 3tOEqSPLJfi7Y6EqPDl6emgQ41CRqr356qXJcaRbJz6d2FadZ7ZZ/7z7C
 DF/BI+z7qnP+h7h+T1RlFNbY5OpAlo3aHg6WREzjxHgxh/h0GbWOmibXB A==;
X-CSE-ConnectionGUID: o0sMQWyHT9e7GbBsd/2Y6g==
X-CSE-MsgGUID: Xwfhecm+S+OGQZA+QLW3CA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47336444"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="47336444"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 01:42:13 -0800
X-CSE-ConnectionGUID: vRN2u7XARhiADXle9wBbOw==
X-CSE-MsgGUID: G0TZt3OyQ3KyCnljEUKgGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="108415711"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 01:42:10 -0800
From: sk.anirban@intel.com
To: intel-gfx@lists.freedesktop.org
Cc: riana.tauro@intel.com, anshuman.gupta@intel.com, badal.nilawar@intel.com,
 karthik.poosa@intel.com, Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH v2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
Date: Thu,  9 Jan 2025 15:00:10 +0530
Message-Id: <20250109093010.3879245-1-sk.anirban@intel.com>
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

v2:
  - Improved frequency logging (Riana)

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index c207a4fb03bf..e515d7eb628a 100644
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
-			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
-				  min.freq, intel_gpu_freq(rps, min.freq),
-				  max.freq, intel_gpu_freq(rps, max.freq));
+			pr_notice("Could not control frequency, ran at [%uMHz, %uMhz]\n",
+				  min.freq,
+				  max.freq);
 			continue;
 		}
 
-- 
2.34.1

