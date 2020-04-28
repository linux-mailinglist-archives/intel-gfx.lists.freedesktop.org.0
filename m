Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB9B1BB496
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:28:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 910D86E210;
	Tue, 28 Apr 2020 03:27:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9767D6E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:27:52 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49B6Xm20WwzFfHL;
 Mon, 27 Apr 2020 20:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1588044472; bh=GhQO0oy9LAPGQy0LObLUFpBtrz+I8TRlVVbokzyOGiQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hHdNdXfFQPqHMPO6pZ8Zy0D91XhkD/xqb7DjqPCcinGlXFjgwGkbrartYENIRFbY+
 qiodW6KctBCHq72UHPLwFNNI6QXkIhTxxP1+TSk8QabrzAIS00nk82Hk+/xgVaCeU5
 dm73IV/F9ktyUnmarMgViWAI5QhfSlE0dKZ0N5bg=
X-Riseup-User-ID: 5D73CF9300B288F55B9E4B03BA5BB836FBAF64C9D4888C1CA669A2E6FC068A36
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49B6Xm0922zJqbw;
 Mon, 27 Apr 2020 20:27:52 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>
Date: Mon, 27 Apr 2020 20:22:56 -0700
Message-Id: <20200428032258.2518-10-currojerez@riseup.net>
In-Reply-To: <20200428032258.2518-1-currojerez@riseup.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCHv2.99 09/11] cpufreq: intel_pstate: Enable VLP
 controller based on ACPI FADT profile and CPUID.
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 chris.p.wilson@intel.com, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the moment the VLP controller is only enabled on ICL platforms
other than server FADT profiles in order to reduce the validation
effort of the initial submission.  It should work on any other
processors that support HWP though (and soon enough on non-HWP too):
In order to override the default behavior (e.g. to test on other
platforms) the VLP controller can be forcefully enabled or disabled by
selecting the "adaptive" or "powersave" CPUFREQ governors respectively
via sysfs.

v2: Handle HWP VLP controller.
v3: Define generic CPUFREQ policy to control VLP governor (Rafael).

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 drivers/cpufreq/intel_pstate.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index 0a315f681c43..2458a821195f 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -396,6 +396,7 @@ static int hwp_active __read_mostly;
 static int hwp_mode_bdw __read_mostly;
 static bool per_cpu_limits __read_mostly;
 static bool hwp_boost __read_mostly;
+static bool vlp __read_mostly;
 
 static struct cpufreq_driver *intel_pstate_driver __read_mostly;
 
@@ -2724,7 +2725,8 @@ static int intel_pstate_cpu_init(struct cpufreq_policy *policy)
 	 * Set the policy to powersave to provide a valid fallback value in case
 	 * the default cpufreq governor is neither powersave nor performance.
 	 */
-	policy->policy = CPUFREQ_POLICY_POWERSAVE;
+	policy->policy = (vlp ? CPUFREQ_POLICY_ADAPTIVE :
+			  CPUFREQ_POLICY_POWERSAVE);
 
 	return 0;
 }
@@ -3209,6 +3211,16 @@ static const struct x86_cpu_id hwp_support_ids[] __initconst = {
 	{}
 };
 
+#define X86_MATCH_VLP(model)                                            \
+	X86_MATCH_VENDOR_FAM_MODEL_FEATURE(INTEL, 6, INTEL_FAM6_##model, \
+					   X86_FEATURE_APERFMPERF, 0)
+
+static const struct x86_cpu_id vlp_default_ids[] __initconst = {
+	X86_MATCH_VLP(ICELAKE),
+	X86_MATCH_VLP(ICELAKE_L),
+	{}
+};
+
 static int __init intel_pstate_init(void)
 {
 	const struct x86_cpu_id *id;
@@ -3247,6 +3259,10 @@ static int __init intel_pstate_init(void)
 	default_driver = &intel_cpufreq;
 
 hwp_cpu_matched:
+	/* Enable VLP controller by default. */
+	vlp = !intel_pstate_acpi_pm_profile_server() &&
+	      x86_match_cpu(vlp_default_ids) && hwp_active;
+
 	/*
 	 * The Intel pstate driver will be ignored if the platform
 	 * firmware has its own power management modes.
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
