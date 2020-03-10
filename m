Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1727F180AE0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 22:52:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC06E6E8E0;
	Tue, 10 Mar 2020 21:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 681096E3BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 21:52:17 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48cTDw5FF6zFf4j;
 Tue, 10 Mar 2020 14:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1583876784; bh=zzzl2/tHeTCBj7TTDdp7xZuK24u3SUbkYH2qozKcfxA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MDlpam7CaEcA3Cq/AOVIEhepcmg7wlREWnqqxVv4NWx8mswp8ykYRHIAZzmvkQDYq
 MapvujMeR1yTiGpQLdPe9Anm30BnoKhJKrdsNfav9Z6OSiFYnKQjYf8Cmv74I/uZSA
 6UMALvGwR7JAEuJEY8Fg79StzhYeBYghq6qY22+k=
X-Riseup-User-ID: 5CE1B4FF9DF4CA22973D9FEF3FBB8CDD822CDE418BBD681102E554E4656EB1F0
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 48cTDw2jwRzJsFM;
 Tue, 10 Mar 2020 14:46:24 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: linux-pm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 14:42:03 -0700
Message-Id: <20200310214203.26459-11-currojerez@riseup.net>
In-Reply-To: <20200310214203.26459-1-currojerez@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] OPTIONAL: cpufreq: intel_pstate: Expose
 VLP controller parameters via debugfs.
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Julia Lawall <julia.lawall@lip6.fr>,
 "Pandruvada, Srinivas" <srinivas.pandruvada@intel.com>,
 Fengguang Wu <fengguang.wu@intel.com>
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

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
Signed-off-by: Fengguang Wu <fengguang.wu@intel.com>
Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/cpufreq/intel_pstate.c | 92 ++++++++++++++++++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index c4558a131660..ab893a211746 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -1030,6 +1030,94 @@ static void intel_pstate_update_limits(unsigned int cpu)
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
+static void intel_pstate_update_util_hwp_vlp(struct update_util_data *data,
+					     u64 time, unsigned int flags);
+
+static void intel_pstate_debug_expose_params(void)
+{
+	int i;
+
+	if (pstate_funcs.update_util != intel_pstate_update_util_hwp_vlp)
+		return;
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
@@ -2970,6 +3058,8 @@ static int intel_pstate_register_driver(struct cpufreq_driver *driver)
 
 	global.min_perf_pct = min_perf_pct_min();
 
+	intel_pstate_debug_expose_params();
+
 	return 0;
 }
 
@@ -2978,6 +3068,8 @@ static int intel_pstate_unregister_driver(void)
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
