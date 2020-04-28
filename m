Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21131BB493
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 867EF6E1F2;
	Tue, 28 Apr 2020 03:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F486E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:27:51 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49B6Xl1x7HzFfGF;
 Mon, 27 Apr 2020 20:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1588044471; bh=v8UNnVZ8Y5Hwsl7QoKfs74cLkoHuFMvNVDWGXykM/Sw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=X9zHmA2uwQR9FhLlc7O4/a0iqROrWc1RZHWVQuqtY4ScGY+gqK+uVj+W1z4JWwX37
 ceREWvbLzvVHYx8/lCu6VWMOirO6VdSg5J8WStj1qGJQXEj/gxOry+zUW4XPZl3LBr
 zB/WypGR8K9A1pnn24FVRPZyJ7mBB8qSmTJGa0wo=
X-Riseup-User-ID: 3A079DF5A56B22579F23B58E12178184DFE2B31AB44B9F9E9A66C7CC9107EB32
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49B6Xk742RzJqbv;
 Mon, 27 Apr 2020 20:27:50 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>
Date: Mon, 27 Apr 2020 20:22:52 -0700
Message-Id: <20200428032258.2518-6-currojerez@riseup.net>
In-Reply-To: <20200428032258.2518-1-currojerez@riseup.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCHv2.99 05/11] cpufreq: intel_pstate: Reorder
 intel_pstate_clear_update_util_hook() and
 intel_pstate_set_update_util_hook().
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

Trivial.

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 drivers/cpufreq/intel_pstate.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index 66ab6523c3eb..49401cfe9858 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -2000,6 +2000,18 @@ static int intel_pstate_init_cpu(unsigned int cpunum)
 	return 0;
 }
 
+static void intel_pstate_clear_update_util_hook(unsigned int cpu)
+{
+	struct cpudata *cpu_data = all_cpu_data[cpu];
+
+	if (!cpu_data->update_util_set)
+		return;
+
+	cpufreq_remove_update_util_hook(cpu);
+	cpu_data->update_util_set = false;
+	synchronize_rcu();
+}
+
 static void intel_pstate_set_update_util_hook(unsigned int cpu_num)
 {
 	struct cpudata *cpu = all_cpu_data[cpu_num];
@@ -2019,18 +2031,6 @@ static void intel_pstate_set_update_util_hook(unsigned int cpu_num)
 	cpu->update_util_set = true;
 }
 
-static void intel_pstate_clear_update_util_hook(unsigned int cpu)
-{
-	struct cpudata *cpu_data = all_cpu_data[cpu];
-
-	if (!cpu_data->update_util_set)
-		return;
-
-	cpufreq_remove_update_util_hook(cpu);
-	cpu_data->update_util_set = false;
-	synchronize_rcu();
-}
-
 static int intel_pstate_get_max_freq(struct cpudata *cpu)
 {
 	return global.turbo_disabled || global.no_turbo ?
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
