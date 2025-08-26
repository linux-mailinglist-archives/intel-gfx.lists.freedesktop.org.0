Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 939F9B35F00
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 14:19:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA9E10E62D;
	Tue, 26 Aug 2025 12:19:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ajZWFvyx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A17610E62D;
 Tue, 26 Aug 2025 12:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756210750; x=1787746750;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0zgeXQuJdsf05VY7VdGlm9Bpq5E/6cmbxc28AzrR2Hc=;
 b=ajZWFvyxcCfG9QDymkLXg/925OuxNG52zm5AVQu7aA34C6Hbbbi9uJxC
 uyH5QmlMFqMo1RDMKWXqlF2lYBVb1oJRefrVvFa1arJ4lLo8LuP/7tfS4
 qOFJMH0qCw+LHHXj+Iv5iBWdUEsg5C2kQqBihfiHLMcdQQqo22dLypAyw
 WEtJPZ/kfIf+iAyQZ2YIP2HVQ9OIop9asVrwyp+A6IJML0/J8srjUNPan
 6zxgoeV2eQa0fgsk21tKyfafQUbNZZBY4ij7TuMZUUfpVFqsxWw4cvFWD
 Ito6R1Nbgp8d+vDmOYfIts597XOMHi8+90LViLC6R1iwdAuIoipg9xd2l w==;
X-CSE-ConnectionGUID: RbdR+ksARHup4tgY7ZOrsQ==
X-CSE-MsgGUID: dc5scdgMQUqsbW2cHI7xlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="62087784"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="62087784"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 05:19:10 -0700
X-CSE-ConnectionGUID: YYQa0MCXQ72wjTS0rfzQKA==
X-CSE-MsgGUID: AH1ClqNdSK+ppLqcV1DtUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="174866528"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 26 Aug 2025 05:19:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Aug 2025 15:19:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: linux-kernel@vger.kernel.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 Imre Deak <imre.deak@intel.com>,
 David Laight <david.laight.linux@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matt Wagantall <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 2/3] iopoll: Avoid evaluating 'cond' twice in
 poll_timeout_us()
Date: Tue, 26 Aug 2025 15:18:58 +0300
Message-ID: <20250826121859.15497-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250826121859.15497-1-ville.syrjala@linux.intel.com>
References: <20250826121859.15497-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently poll_timeout_us() evaluates 'cond' twice at the end
of the success case. This not desirable in case 'cond' itself
is expensive.

Avoid the double evaluation by tracking the return value in
a variable. Need to use a triple undescore '___ret' name to
avoid a conflict with an existing double undescore '__ret'
variable in the regmap code.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Cc: Imre Deak <imre.deak@intel.com>
Cc: David Laight <david.laight.linux@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Matt Wagantall <mattw@codeaurora.org>
Cc: Dejin Zheng <zhengdejin5@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 include/linux/iopoll.h | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 440aca5b4b59..d8c801ad68fa 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -36,23 +36,30 @@
 	u64 __timeout_us = (timeout_us); \
 	unsigned long __sleep_us = (sleep_us); \
 	ktime_t __timeout = ktime_add_us(ktime_get(), __timeout_us); \
+	int ___ret; \
 	might_sleep_if((__sleep_us) != 0); \
 	if ((sleep_before_op) && __sleep_us) \
 		usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
 	for (;;) { \
 		op; \
-		if (cond) \
+		if (cond) { \
+			___ret = 0; \
 			break; \
+		} \
 		if (__timeout_us && \
 		    ktime_compare(ktime_get(), __timeout) > 0) { \
 			op; \
+			if (cond) \
+				___ret = 0; \
+			else \
+				___ret = -ETIMEDOUT; \
 			break; \
 		} \
 		if (__sleep_us) \
 			usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
 		cpu_relax(); \
 	} \
-	(cond) ? 0 : -ETIMEDOUT; \
+	___ret; \
 })
 
 /**
@@ -83,6 +90,7 @@
 	s64 __left_ns = __timeout_us * NSEC_PER_USEC; \
 	unsigned long __delay_us = (delay_us); \
 	u64 __delay_ns = __delay_us * NSEC_PER_USEC; \
+	int ___ret; \
 	if ((delay_before_op) && __delay_us) { \
 		udelay(__delay_us); \
 		if (__timeout_us) \
@@ -90,10 +98,16 @@
 	} \
 	for (;;) { \
 		op; \
-		if (cond) \
+		if (cond) { \
+			___ret = 0; \
 			break; \
+		} \
 		if (__timeout_us && __left_ns < 0) { \
 			op; \
+			if (cond) \
+				___ret = 0; \
+			else \
+				___ret = -ETIMEDOUT; \
 			break; \
 		} \
 		if (__delay_us) { \
@@ -105,7 +119,7 @@
 		if (__timeout_us) \
 			__left_ns--; \
 	} \
-	(cond) ? 0 : -ETIMEDOUT; \
+	___ret; \
 })
 
 /**
-- 
2.49.1

