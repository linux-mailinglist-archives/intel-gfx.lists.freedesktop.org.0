Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80D11BB494
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9946B6E1F7;
	Tue, 28 Apr 2020 03:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0266E1ED
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:27:52 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49B6Xm0W4dzFfGK;
 Mon, 27 Apr 2020 20:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1588044472; bh=2B76V/gE+hBtAvwGBLg9JjBUtAKs4UOxNVxrXIQQAOk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jFks2899nf7LjTRlXc3nHeeKzz8+rMRqL1W0SFXl5n3wXhLzw41JyBsoJXLbA5LmM
 8N/dbYwrX+RqhrgujUrpt5qnfFVe/Mj8sBu/M5kBORh8/648yLdbkdUfHDjD9dfAHM
 AbG1Peth1Sfh5f6mdatOFJ1RSTKEW7xng/dkRKjE=
X-Riseup-User-ID: D046F00A66F203F9FDEA59C90ACBD297B59C5D153536237218951465DFBC0138
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49B6Xl5ZYvzJqbk;
 Mon, 27 Apr 2020 20:27:51 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>
Date: Mon, 27 Apr 2020 20:22:55 -0700
Message-Id: <20200428032258.2518-9-currojerez@riseup.net>
In-Reply-To: <20200428032258.2518-1-currojerez@riseup.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCHv2.99 08/11] cpufreq: intel_pstate: Implement VLP
 controller for HWP parts.
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

This implements a simple variably low-pass-filtering governor in
control of the HWP MIN/MAX PERF range based on the previously
introduced get_vlp_target_range().  See "cpufreq: intel_pstate:
Implement VLP controller statistics and target range calculation." for
the rationale.

v3: Fix accidental overwrite of boot EPP setting in
    intel_pstate_reset_vlp() (Srinivas).  Rename
    CPU_RESPONSE_FREQUENCY to CPU_SCALING_RESPONSE (Rafael).  Define
    generic CPUFREQ policy to control VLP governor (Rafael).

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 drivers/cpufreq/intel_pstate.c | 92 ++++++++++++++++++++++++++++++++--
 1 file changed, 87 insertions(+), 5 deletions(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index d13eb95a6271..0a315f681c43 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -1913,6 +1913,20 @@ static void intel_pstate_reset_vlp(struct cpudata *cpu)
 	vlp->gain = max(1, div_fp(1000, vlp_params.setpoint_0_pml));
 	vlp->target.p_base = 0;
 	vlp->stats.last_scaling_response_hz = vlp_params.avg_hz;
+
+	if (hwp_active) {
+		const uint32_t p0 = max(cpu->pstate.min_pstate,
+					cpu->min_perf_ratio);
+		const uint32_t p1 = max_t(uint32_t, p0, cpu->max_perf_ratio);
+		const uint64_t hwp_req = (READ_ONCE(cpu->hwp_req_cached) &
+					  ~(HWP_MAX_PERF(~0L) |
+					    HWP_MIN_PERF(~0L) |
+					    HWP_DESIRED_PERF(~0L))) |
+					 HWP_MIN_PERF(p0) | HWP_MAX_PERF(p1);
+
+		wrmsrl_on_cpu(cpu->cpu, MSR_HWP_REQUEST, hwp_req);
+		WRITE_ONCE(cpu->hwp_req_cached, hwp_req);
+	}
 }
 
 /**
@@ -2230,6 +2244,46 @@ static void intel_pstate_adjust_pstate(struct cpudata *cpu)
 		fp_toint(cpu->iowait_boost * 100));
 }
 
+static void intel_pstate_adjust_pstate_range(struct cpudata *cpu,
+					     const unsigned int range[])
+{
+	const uint64_t hwp_req_cached = READ_ONCE(cpu->hwp_req_cached);
+	unsigned int p0, p1, p_min, p_max;
+	struct sample *sample;
+	uint64_t hwp_req;
+
+	update_turbo_state();
+
+	p0 = max(cpu->pstate.min_pstate, cpu->min_perf_ratio);
+	p1 = max_t(unsigned int, p0, cpu->max_perf_ratio);
+	p_min = clamp_t(unsigned int, range[0], p0, p1);
+	p_max = clamp_t(unsigned int, range[1], p0, p1);
+
+	trace_cpu_frequency(p_max * cpu->pstate.scaling, cpu->cpu);
+
+	hwp_req = (hwp_req_cached &
+		   ~(HWP_MAX_PERF(~0L) | HWP_MIN_PERF(~0L) |
+		     HWP_DESIRED_PERF(~0L))) |
+		  HWP_MIN_PERF(vlp_params.debug & 2 ? p0 : p_min) |
+		  HWP_MAX_PERF(vlp_params.debug & 4 ? p1 : p_max);
+
+	if (hwp_req != hwp_req_cached) {
+		wrmsrl(MSR_HWP_REQUEST, hwp_req);
+		WRITE_ONCE(cpu->hwp_req_cached, hwp_req);
+	}
+
+	sample = &cpu->sample;
+	trace_pstate_sample(mul_ext_fp(100, sample->core_avg_perf),
+			    fp_toint(sample->busy_scaled),
+			    hwp_req_cached,
+			    hwp_req,
+			    sample->mperf,
+			    sample->aperf,
+			    sample->tsc,
+			    get_avg_frequency(cpu),
+			    fp_toint(cpu->iowait_boost * 100));
+}
+
 static void intel_pstate_update_util(struct update_util_data *data, u64 time,
 				     unsigned int flags)
 {
@@ -2268,6 +2322,22 @@ static void intel_pstate_update_util(struct update_util_data *data, u64 time,
 		intel_pstate_adjust_pstate(cpu);
 }
 
+/**
+ * Implementation of the cpufreq update_util hook based on the VLP
+ * controller (see get_vlp_target_range()).
+ */
+static void intel_pstate_update_util_hwp_vlp(struct update_util_data *data,
+					     u64 time, unsigned int flags)
+{
+	struct cpudata *cpu = container_of(data, struct cpudata, update_util);
+
+	if (update_vlp_sample(cpu, time, flags)) {
+		const struct vlp_target_range *target =
+			get_vlp_target_range(cpu);
+		intel_pstate_adjust_pstate_range(cpu, target->value);
+	}
+}
+
 static struct pstate_funcs core_funcs = {
 	.get_max = core_get_max_pstate,
 	.get_max_physical = core_get_max_pstate_physical,
@@ -2418,15 +2488,25 @@ static void intel_pstate_set_update_util_hook(unsigned int cpu_num)
 		intel_pstate_clear_update_util_hook(cpu_num);
 
 	if (cpu->policy == CPUFREQ_POLICY_PERFORMANCE ||
-	    (hwp_active && !hwp_boost))
+	    (cpu->policy != CPUFREQ_POLICY_ADAPTIVE &&
+	     hwp_active && !hwp_boost))
 		return;
 
 	/* Prevent intel_pstate_update_util() from using stale data. */
 	cpu->sample.time = 0;
-	cpufreq_add_update_util_hook(cpu_num, &cpu->update_util,
-				     (hwp_active ?
-				      intel_pstate_update_util_hwp :
-				      intel_pstate_update_util));
+
+	if (cpu->policy == CPUFREQ_POLICY_ADAPTIVE) {
+		cpufreq_add_update_util_hook(cpu_num, &cpu->update_util,
+					     (hwp_active ?
+					      intel_pstate_update_util_hwp_vlp :
+					      intel_pstate_update_util));
+	} else {
+		cpufreq_add_update_util_hook(cpu_num, &cpu->update_util,
+					     (hwp_active ?
+					      intel_pstate_update_util_hwp :
+					      intel_pstate_update_util));
+	}
+
 	cpu->update_util_set = true;
 }
 
@@ -2529,6 +2609,8 @@ static int intel_pstate_set_policy(struct cpufreq_policy *policy)
 	if (hwp_active)
 		intel_pstate_hwp_set(policy->cpu);
 
+	intel_pstate_reset_vlp(cpu);
+
 	mutex_unlock(&intel_pstate_limits_lock);
 
 	return 0;
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
