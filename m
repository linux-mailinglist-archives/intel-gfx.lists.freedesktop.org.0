Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F592180ADE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 22:52:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43E4D6E3B0;
	Tue, 10 Mar 2020 21:52:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6935B6E398
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 21:52:16 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48cTDv2v8HzFf6D;
 Tue, 10 Mar 2020 14:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1583876783; bh=Jz4j4rXwmY24uT7RUVUWzIpW3YCyx81EGlePfYaHr9U=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ahBzDH/lbNIX7yWW3BIUwwu26RLDxx9fEW/+/NmT2TS61OKnvx91T4khRyCf8qY68
 EpVR/IoSjGWaGToHXlNS8g4K2JJferjdALjhm4EZB2K+5JjQrxIl2xNDGxmSVm1urt
 S8NlxoIfHDUZ2/qPY5jnHHfT2a8GsJO+EKFymWSc=
X-Riseup-User-ID: C7F74CCE029929C25DCF61978D0E953392C596615385353591C57293F5D3D979
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 48cTDv11mnzJs07;
 Tue, 10 Mar 2020 14:46:23 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: linux-pm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 14:41:57 -0700
Message-Id: <20200310214203.26459-5-currojerez@riseup.net>
In-Reply-To: <20200310214203.26459-1-currojerez@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] Revert "cpufreq: intel_pstate: Drop
 ->update_util from pstate_funcs"
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit c4f3f70cacba2fa19545389a12d09b606d2ad1cf.  A
future commit will introduce a new update_util implementation, so the
pstate_funcs table entry is going to be useful.

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 drivers/cpufreq/intel_pstate.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index 7fa869004cf0..8cb5bf419b40 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -277,6 +277,7 @@ static struct cpudata **all_cpu_data;
  * @get_scaling:	Callback to get frequency scaling factor
  * @get_val:		Callback to convert P state to actual MSR write value
  * @get_vid:		Callback to get VID data for Atom platforms
+ * @update_util:	Active mode utilization update callback.
  *
  * Core and Atom CPU models have different way to get P State limits. This
  * structure is used to store those callbacks.
@@ -290,6 +291,8 @@ struct pstate_funcs {
 	int (*get_aperf_mperf_shift)(void);
 	u64 (*get_val)(struct cpudata*, int pstate);
 	void (*get_vid)(struct cpudata *);
+	void (*update_util)(struct update_util_data *data, u64 time,
+			    unsigned int flags);
 };
 
 static struct pstate_funcs pstate_funcs __read_mostly;
@@ -1877,6 +1880,7 @@ static struct pstate_funcs core_funcs = {
 	.get_turbo = core_get_turbo_pstate,
 	.get_scaling = core_get_scaling,
 	.get_val = core_get_val,
+	.update_util = intel_pstate_update_util,
 };
 
 static const struct pstate_funcs silvermont_funcs = {
@@ -1887,6 +1891,7 @@ static const struct pstate_funcs silvermont_funcs = {
 	.get_val = atom_get_val,
 	.get_scaling = silvermont_get_scaling,
 	.get_vid = atom_get_vid,
+	.update_util = intel_pstate_update_util,
 };
 
 static const struct pstate_funcs airmont_funcs = {
@@ -1897,6 +1902,7 @@ static const struct pstate_funcs airmont_funcs = {
 	.get_val = atom_get_val,
 	.get_scaling = airmont_get_scaling,
 	.get_vid = atom_get_vid,
+	.update_util = intel_pstate_update_util,
 };
 
 static const struct pstate_funcs knl_funcs = {
@@ -1907,6 +1913,7 @@ static const struct pstate_funcs knl_funcs = {
 	.get_aperf_mperf_shift = knl_get_aperf_mperf_shift,
 	.get_scaling = core_get_scaling,
 	.get_val = core_get_val,
+	.update_util = intel_pstate_update_util,
 };
 
 #define ICPU(model, policy) \
@@ -2013,9 +2020,7 @@ static void intel_pstate_set_update_util_hook(unsigned int cpu_num)
 	/* Prevent intel_pstate_update_util() from using stale data. */
 	cpu->sample.time = 0;
 	cpufreq_add_update_util_hook(cpu_num, &cpu->update_util,
-				     (hwp_active ?
-				      intel_pstate_update_util_hwp :
-				      intel_pstate_update_util));
+				     pstate_funcs.update_util);
 	cpu->update_util_set = true;
 }
 
@@ -2584,6 +2589,7 @@ static void __init copy_cpu_funcs(struct pstate_funcs *funcs)
 	pstate_funcs.get_scaling = funcs->get_scaling;
 	pstate_funcs.get_val   = funcs->get_val;
 	pstate_funcs.get_vid   = funcs->get_vid;
+	pstate_funcs.update_util = funcs->update_util;
 	pstate_funcs.get_aperf_mperf_shift = funcs->get_aperf_mperf_shift;
 }
 
@@ -2750,8 +2756,11 @@ static int __init intel_pstate_init(void)
 	id = x86_match_cpu(hwp_support_ids);
 	if (id) {
 		copy_cpu_funcs(&core_funcs);
-		if (!no_hwp) {
+		if (no_hwp) {
+			pstate_funcs.update_util = intel_pstate_update_util;
+		} else {
 			hwp_active++;
+			pstate_funcs.update_util = intel_pstate_update_util_hwp;
 			hwp_mode_bdw = id->driver_data;
 			intel_pstate.attr = hwp_cpufreq_attrs;
 			goto hwp_cpu_matched;
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
