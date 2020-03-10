Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FE0180AE1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 22:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88556E3BB;
	Tue, 10 Mar 2020 21:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 731106E3B0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 21:52:16 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 48cTDw3BHrzFf3v;
 Tue, 10 Mar 2020 14:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1583876784; bh=lQcnxVdzWXKWrSmpl4/uUHBbYTey/h/8Iznnu2Xl5Xs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KmCtsL34b0YFEWPEFfHqRzMBNBREpOirxpkcWv+hTDvVyaOoQ6FimlCPTfVvEKV6M
 KcS9mEeZTeZRqFF5A+rl6bfZZSe2+V5+0uIJsgkXsi3Oq03WvQVsDyuoW7l8jHNJbl
 b+VG8f4+zpSKsDI7E+KX4qa8sME6xnD+b7tQa7V4=
X-Riseup-User-ID: 88BB92681B8A847D8338CF869D6D9FCBBC58A96AF3BBB0CC65835658AD7ACD8C
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 48cTDw1HpczJs07;
 Tue, 10 Mar 2020 14:46:24 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: linux-pm@vger.kernel.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 10 Mar 2020 14:42:02 -0700
Message-Id: <20200310214203.26459-10-currojerez@riseup.net>
In-Reply-To: <20200310214203.26459-1-currojerez@riseup.net>
References: <20200310214203.26459-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] OPTIONAL: cpufreq: intel_pstate: Add
 tracing of VLP controller status.
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

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 drivers/cpufreq/intel_pstate.c |  9 ++++++---
 include/trace/events/power.h   | 13 +++++++++----
 2 files changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/cpufreq/intel_pstate.c b/drivers/cpufreq/intel_pstate.c
index 050cc8f03c26..c4558a131660 100644
--- a/drivers/cpufreq/intel_pstate.c
+++ b/drivers/cpufreq/intel_pstate.c
@@ -2233,7 +2233,8 @@ static void intel_pstate_adjust_pstate(struct cpudata *cpu)
 		sample->aperf,
 		sample->tsc,
 		get_avg_frequency(cpu),
-		fp_toint(cpu->iowait_boost * 100));
+		fp_toint(cpu->iowait_boost * 100),
+		cpu->vlp.status.value);
 }
 
 static void intel_pstate_adjust_pstate_range(struct cpudata *cpu,
@@ -2273,7 +2274,8 @@ static void intel_pstate_adjust_pstate_range(struct cpudata *cpu,
 			    sample->aperf,
 			    sample->tsc,
 			    get_avg_frequency(cpu),
-			    fp_toint(cpu->iowait_boost * 100));
+			    fp_toint(cpu->iowait_boost * 100),
+			    cpu->vlp.status.value);
 }
 
 static void intel_pstate_update_util(struct update_util_data *data, u64 time,
@@ -2782,7 +2784,8 @@ static void intel_cpufreq_trace(struct cpudata *cpu, unsigned int trace_type, in
 		sample->aperf,
 		sample->tsc,
 		get_avg_frequency(cpu),
-		fp_toint(cpu->iowait_boost * 100));
+		fp_toint(cpu->iowait_boost * 100),
+		0);
 }
 
 static int intel_cpufreq_target(struct cpufreq_policy *policy,
diff --git a/include/trace/events/power.h b/include/trace/events/power.h
index 7e4b52e8ca3a..e94d5e618175 100644
--- a/include/trace/events/power.h
+++ b/include/trace/events/power.h
@@ -72,7 +72,8 @@ TRACE_EVENT(pstate_sample,
 		u64 aperf,
 		u64 tsc,
 		u32 freq,
-		u32 io_boost
+		u32 io_boost,
+		u32 vlp_status
 		),
 
 	TP_ARGS(core_busy,
@@ -83,7 +84,8 @@ TRACE_EVENT(pstate_sample,
 		aperf,
 		tsc,
 		freq,
-		io_boost
+		io_boost,
+		vlp_status
 		),
 
 	TP_STRUCT__entry(
@@ -96,6 +98,7 @@ TRACE_EVENT(pstate_sample,
 		__field(u64, tsc)
 		__field(u32, freq)
 		__field(u32, io_boost)
+		__field(u32, vlp_status)
 		),
 
 	TP_fast_assign(
@@ -108,9 +111,10 @@ TRACE_EVENT(pstate_sample,
 		__entry->tsc = tsc;
 		__entry->freq = freq;
 		__entry->io_boost = io_boost;
+		__entry->vlp_status = vlp_status;
 		),
 
-	TP_printk("core_busy=%lu scaled=%lu from=%lu to=%lu mperf=%llu aperf=%llu tsc=%llu freq=%lu io_boost=%lu",
+	TP_printk("core_busy=%lu scaled=%lu from=%lu to=%lu mperf=%llu aperf=%llu tsc=%llu freq=%lu io_boost=%lu vlp=%lu",
 		(unsigned long)__entry->core_busy,
 		(unsigned long)__entry->scaled_busy,
 		(unsigned long)__entry->from,
@@ -119,7 +123,8 @@ TRACE_EVENT(pstate_sample,
 		(unsigned long long)__entry->aperf,
 		(unsigned long long)__entry->tsc,
 		(unsigned long)__entry->freq,
-		(unsigned long)__entry->io_boost
+		(unsigned long)__entry->io_boost,
+		(unsigned long)__entry->vlp_status
 		)
 
 );
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
