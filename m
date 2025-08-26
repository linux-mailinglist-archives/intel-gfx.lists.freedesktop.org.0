Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A04FB35F02
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 14:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B5A10E647;
	Tue, 26 Aug 2025 12:19:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DFRv2vY0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02F8610E64B;
 Tue, 26 Aug 2025 12:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756210755; x=1787746755;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b3nCQzhaBlwTjBqmII2MrI5Q7LUVWnijB3p5u/DgjxQ=;
 b=DFRv2vY0crmp1Pzn23swmcH2xAcFfXpS44Wgszh+lV72reSXEP/NzeZ1
 lMFd7A/zwFW3Eh96RfLTMO2P9csC/mGGtwv7QnXqtKe4yOevK7ZjAfwJq
 Uop6bwNVMLKlxw+CwYAdtL3VLd01mVQCAf4DXCaJDz/5v/kuUGlzmiiFn
 H2xNQjaGoRFo8asEAxEkkTExCAyeGP3+JmD2KE4Nd9DX5nuC2R1g9jejF
 XV9ODGaVMhuNKIYzmFiyC2C/q8K4CV+I3hqN0dr+GJTfT0OWN+IdV7Pe0
 6ceqol2HnzhGd+e/5qo+FCb1ilMAf78LNrkDr2mkhXHKun3sdJGmZ4yL7 Q==;
X-CSE-ConnectionGUID: ysC6oE+cRyazCWIHqKONjA==
X-CSE-MsgGUID: 6FZoDMHVQVuEHdV7ky7zAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="62087792"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="62087792"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 05:19:15 -0700
X-CSE-ConnectionGUID: kqFLsmKvQhuPhbLzuHTTDA==
X-CSE-MsgGUID: 7XhmaORXQdmfGxVz9sQspA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="174866553"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 26 Aug 2025 05:19:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Aug 2025 15:19:09 +0300
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
Subject: [PATCH v2 3/3] iopoll: Reorder the timeout handling in
 poll_timeout_us()
Date: Tue, 26 Aug 2025 15:18:59 +0300
Message-ID: <20250826121859.15497-3-ville.syrjala@linux.intel.com>
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

Currently poll_timeout_us() evaluates 'op' and 'cond' twice
within the loop, once at the start, and a second time after
the timeout check. While it's probably not a big deal to do
it twice almost back to back, it does make the macro a bit messy.

Simplify the implementation to evaluate the timeout at the
very start, then follow up with 'op'/'cond', and finally
check if the timeout did in fact happen or not.

For good measure throw in a compiler barrier between the timeout
and 'op'/'cond' evaluations to make sure the compiler can't reoder
the operations (which could cause false positive timeouts).
The similar i915 __wait_for() macro already has the barrier, though
there it is between the 'op' and 'cond' evaluations, which seems
like it could still allow 'op' and the timeout evaluations to get
reordered incorrectly. I suppose the ktime_get() might itself act
as a sufficient barrier here, but better safe than sorry I guess.

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
 include/linux/iopoll.h | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index d8c801ad68fa..bdd2e0652bc3 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -41,18 +41,17 @@
 	if ((sleep_before_op) && __sleep_us) \
 		usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
 	for (;;) { \
+		bool __expired = __timeout_us && \
+			ktime_compare(ktime_get(), __timeout) > 0; \
+		/* guarantee 'op' and 'cond' are evaluated after timeout expired */ \
+		barrier(); \
 		op; \
 		if (cond) { \
 			___ret = 0; \
 			break; \
 		} \
-		if (__timeout_us && \
-		    ktime_compare(ktime_get(), __timeout) > 0) { \
-			op; \
-			if (cond) \
-				___ret = 0; \
-			else \
-				___ret = -ETIMEDOUT; \
+		if (__expired) { \
+			___ret = -ETIMEDOUT; \
 			break; \
 		} \
 		if (__sleep_us) \
@@ -97,17 +96,16 @@
 			__left_ns -= __delay_ns; \
 	} \
 	for (;;) { \
+		bool __expired = __timeout_us && __left_ns < 0; \
+		/* guarantee 'op' and 'cond' are evaluated after timeout expired */ \
+		barrier(); \
 		op; \
 		if (cond) { \
 			___ret = 0; \
 			break; \
 		} \
-		if (__timeout_us && __left_ns < 0) { \
-			op; \
-			if (cond) \
-				___ret = 0; \
-			else \
-				___ret = -ETIMEDOUT; \
+		if (__expired) { \
+			___ret = -ETIMEDOUT; \
 			break; \
 		} \
 		if (__delay_us) { \
-- 
2.49.1

