Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 787B21BB49D
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 05:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C946E219;
	Tue, 28 Apr 2020 03:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C306E063
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 03:27:51 +0000 (UTC)
Received: from bell.riseup.net (unknown [10.0.1.178])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (Client CN "*.riseup.net",
 Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 49B6Xl09yXzFfFH;
 Mon, 27 Apr 2020 20:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1588044471; bh=Jn/3Hh7+QKpOsjrz/1ry7Kkr0NliBM599QoG3E/jSq0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q+JrTVUF2gpIak/MKENvrPibE38ta319GGS+/vO1IJxWMc3MnSTgzQt199zfYGvCa
 1Y3a49C6RqzNHIv0VNPAIA50ln5GRnTJOvIDSF2qeXgGDqki8lzAoW3g5yEtVkOc+x
 Hq4Y8JE6YVVj4n9oxKXr7T6jKHJHyEyY88c0BJAQ=
X-Riseup-User-ID: 547A5229B4A1C176D71D349D0F1A9E9C1806DD9F22F331FDB485BCF7D9A4F8A9
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by bell.riseup.net (Postfix) with ESMTPSA id 49B6Xk5MFvzJqbk;
 Mon, 27 Apr 2020 20:27:50 -0700 (PDT)
From: Francisco Jerez <currojerez@riseup.net>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "Pandruvada\, Srinivas" <srinivas.pandruvada@intel.com>
Date: Mon, 27 Apr 2020 20:22:51 -0700
Message-Id: <20200428032258.2518-5-currojerez@riseup.net>
In-Reply-To: <20200428032258.2518-1-currojerez@riseup.net>
References: <20200428032258.2518-1-currojerez@riseup.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCHv2.99 04/11] cpufreq: Define ADAPTIVE frequency
 governor policy.
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

This defines a generic policy in addition to the existing PERFORMANCE
and POWERSAVE policies.  The ADAPTIVE policy is expected to provide a
variable trade-off between performance and energy efficiency based on
the dynamic behavior of the workload -- E.g. whether the system has a
bottleneck on the CPU or another IO device.

Signed-off-by: Francisco Jerez <currojerez@riseup.net>
---
 drivers/cpufreq/cpufreq.c | 10 ++++++++--
 drivers/cpufreq/longrun.c |  1 +
 include/linux/cpufreq.h   |  1 +
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
index 045f9fe157ce..e87285b6294c 100644
--- a/drivers/cpufreq/cpufreq.c
+++ b/drivers/cpufreq/cpufreq.c
@@ -629,6 +629,9 @@ static unsigned int cpufreq_parse_policy(char *str_governor)
 	if (!strncasecmp(str_governor, "powersave", CPUFREQ_NAME_LEN))
 		return CPUFREQ_POLICY_POWERSAVE;
 
+	if (!strncasecmp(str_governor, "adaptive", CPUFREQ_NAME_LEN))
+		return CPUFREQ_POLICY_ADAPTIVE;
+
 	return CPUFREQ_POLICY_UNKNOWN;
 }
 
@@ -750,6 +753,8 @@ static ssize_t show_scaling_governor(struct cpufreq_policy *policy, char *buf)
 		return sprintf(buf, "powersave\n");
 	else if (policy->policy == CPUFREQ_POLICY_PERFORMANCE)
 		return sprintf(buf, "performance\n");
+	else if (policy->policy == CPUFREQ_POLICY_ADAPTIVE)
+		return sprintf(buf, "adaptive\n");
 	else if (policy->governor)
 		return scnprintf(buf, CPUFREQ_NAME_PLEN, "%s\n",
 				policy->governor->name);
@@ -811,7 +816,7 @@ static ssize_t show_scaling_available_governors(struct cpufreq_policy *policy,
 	struct cpufreq_governor *t;
 
 	if (!has_target()) {
-		i += sprintf(buf, "performance powersave");
+		i += sprintf(buf, "performance powersave adaptive");
 		goto out;
 	}
 
@@ -1085,7 +1090,8 @@ static int cpufreq_init_policy(struct cpufreq_policy *policy)
 				pol = policy->policy;
 		}
 		if (pol != CPUFREQ_POLICY_PERFORMANCE &&
-		    pol != CPUFREQ_POLICY_POWERSAVE)
+		    pol != CPUFREQ_POLICY_POWERSAVE &&
+		    pol != CPUFREQ_POLICY_ADAPTIVE)
 			return -ENODATA;
 	}
 
diff --git a/drivers/cpufreq/longrun.c b/drivers/cpufreq/longrun.c
index 1caaec7c280b..cb70f0b7ff7a 100644
--- a/drivers/cpufreq/longrun.c
+++ b/drivers/cpufreq/longrun.c
@@ -99,6 +99,7 @@ static int longrun_set_policy(struct cpufreq_policy *policy)
 		msr_lo |= 0x00000001;
 		break;
 	case CPUFREQ_POLICY_POWERSAVE:
+	case CPUFREQ_POLICY_ADAPTIVE:
 		break;
 	}
 	wrmsr(MSR_TMTA_LONGRUN_FLAGS, msr_lo, msr_hi);
diff --git a/include/linux/cpufreq.h b/include/linux/cpufreq.h
index f7240251a949..fa63df914f9f 100644
--- a/include/linux/cpufreq.h
+++ b/include/linux/cpufreq.h
@@ -536,6 +536,7 @@ static inline unsigned long cpufreq_scale(unsigned long old, u_int div,
  */
 #define CPUFREQ_POLICY_POWERSAVE	(1)
 #define CPUFREQ_POLICY_PERFORMANCE	(2)
+#define CPUFREQ_POLICY_ADAPTIVE 	(3)
 
 /*
  * The polling frequency depends on the capability of the processor. Default
-- 
2.22.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
