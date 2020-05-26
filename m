Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7849F1BB492
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:28:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E756E17F;
	Tue, 28 Apr 2020 03:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D5D6E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:27:53 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49B6Xn1LbjzFfJW;
 Mon, 27 Apr 2020 20:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1588044473; bh=/nTQVSK/ZgLsgrkm5SVbyNrA2AriDqBumGqvIs8g0sg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=j7eccXTnlRhTx97GXKHfjDNOfdeCC5ewjQ6EoFtZRRLSkbZLxc2qphaesYKgEba21
 o6w0pPz7jZs9tiNOnB1b44fHZ9sxdbBze0sN0tGuYJynJ1cInW7Dc7C2gdxtFGrkGx
 FSskcaQnezPwFhy4mzHywiWu793wxu9LA0fLeWiA=
X-Riseup-User-ID: 2C3AF3B7773374F043249BCF1F87A9E72CD6CB7B0114473ECF47A6BF4E92D132
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49B6Xm3WVmzJqbv;
 Mon, 27 Apr 2020 20:27:52 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>
Date: Mon, 27 Apr 2020 20:22:58 -0700
Message-Id: <20200428032258.2518-12-currojerez@riseup.net>
In-Reply-To: <20200428032258.2518-1-currojerez@riseup.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCHv2.99 11/11] OPTIONAL: cpufreq: intel_pstate:
 Expose VLP controller parameters via debugfs.
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
Cc: linux-pm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 intel-gfx@lists.freedesktop.org, chris.p.wilson@intel.com,
 Julia Lawall <julia.lawall@lip6.fr>, Fengguang Wu <fengguang.wu@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is not required for the controller to work but has proven very
useful for debugging and testing of alternative heuristic parameters,
which may offer a better trade-off between energy efficiency and
latency.  A warning is printed out which should taint the kernel for
the non-standard calibration of the heuristic to be obvious in bug
reports.

v2: Use DEFINE_DEBUGFS_ATTRIBUTE rather than DEFINE_SIMPLE_ATTRIBUTE
    for debugfs files (Julia).  Add realtime statistic threshold and
    averaging frequency parameters.
v3: Define generic CPUFREQ policy to control VLP governor (Rafael).

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
Signed-off-by: Fengguang Wu <fengguang.wu@intel.com>
Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/cpufreq/intel_pstate.c | 86 ++++++++++++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index dd86505d7855..ab0334a99039 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -1031,6 +1031,88 @@ static void intel_pstate_update_limits(unsigned int cpu)
 	mutex_unlock(&intel_pstate_driver_lock);
 }
 
+/************************** debugfs begin ************************/
+static void intel_pstate_reset_vlp(struct cpudata *cpu);
+
+static int vlp_param_set(void *data, u64 val)
+{
+	unsigned int cpu;
+
+	*(u32 *)data = val;
+	for_each_possible_cpu(cpu) {
+		if (all_cpu_data[cpu])
+			intel_pstate_reset_vlp(all_cpu_data[cpu]);
+	}
+
+	WARN_ONCE(1, "Unsupported P-state VLP parameter update via debugging interface");
+
+	return 0;
+}
+
+static int vlp_param_get(void *data, u64 *val)
+{
+	*val = *(u32 *)data;
+	return 0;
+}
+DEFINE_DEBUGFS_ATTRIBUTE(fops_vlp_param, vlp_param_get, vlp_param_set,
+			 "%llu\n");
+
+static struct dentry *debugfs_parent;
+
+struct vlp_param {
+	char *name;
+	void *value;
+	struct dentry *dentry;
+};
+
+static struct vlp_param vlp_files[] = {
+	{"vlp_sample_interval_ms", &vlp_params.sample_interval_ms, },
+	{"vlp_setpoint_0_pml", &vlp_params.setpoint_0_pml, },
+	{"vlp_setpoint_aggr_pml", &vlp_params.setpoint_aggr_pml, },
+	{"vlp_avg_hz", &vlp_params.avg_hz, },
+	{"vlp_realtime_gain_pml", &vlp_params.realtime_gain_pml, },
+	{"vlp_debug", &vlp_params.debug, },
+	{NULL, NULL, }
+};
+
+static void intel_pstate_debug_expose_params(void)
+{
+	int i;
+
+	debugfs_parent = debugfs_create_dir("pstate_snb", NULL);
+	if (IS_ERR_OR_NULL(debugfs_parent))
+		return;
+
+	for (i = 0; vlp_files[i].name; i++) {
+		struct dentry *dentry;
+
+		dentry = debugfs_create_file_unsafe(vlp_files[i].name, 0660,
+						    debugfs_parent,
+						    vlp_files[i].value,
+						    &fops_vlp_param);
+		if (!IS_ERR(dentry))
+			vlp_files[i].dentry = dentry;
+	}
+}
+
+static void intel_pstate_debug_hide_params(void)
+{
+	int i;
+
+	if (IS_ERR_OR_NULL(debugfs_parent))
+		return;
+
+	for (i = 0; vlp_files[i].name; i++) {
+		debugfs_remove(vlp_files[i].dentry);
+		vlp_files[i].dentry = NULL;
+	}
+
+	debugfs_remove(debugfs_parent);
+	debugfs_parent = NULL;
+}
+
+/************************** debugfs end ************************/
+
 /************************** sysfs begin ************************/
 #define show_one(file_name, object)					\
 	static ssize_t show_##file_name					\
@@ -2977,6 +3059,8 @@ static int intel_pstate_register_driver(struct cpufreq_driver *driver)
 
 	global.min_perf_pct = min_perf_pct_min();
 
+	intel_pstate_debug_expose_params();
+
 	return 0;
 }
 
@@ -2985,6 +3069,8 @@ static int intel_pstate_unregister_driver(void)
 	if (hwp_active)
 		return -EBUSY;
 
+	intel_pstate_debug_hide_params();
+
 	cpufreq_unregister_driver(intel_pstate_driver);
 	intel_pstate_driver_cleanup();
 
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
