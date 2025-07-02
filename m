Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45783AF6544
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 00:35:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8230F10E798;
	Wed,  2 Jul 2025 22:35:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IPvxbppH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB43210E798;
 Wed,  2 Jul 2025 22:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751495701; x=1783031701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GAlxTjCWg7CNPfzdPKpxiRK/Lyn09NTHnoTv6rZDjso=;
 b=IPvxbppHISjltgHcG+YqXJODO1sLm1I3odlfkmYRT2aaWO6cYRns78Wn
 FEhJAQmHVrDR9qe0PLxG88KIOxlmkMkZsw5EiE39Dc0ISVybdq3GGJpbP
 Iz+r4r7nUj1nxQRmprRMVWFbaD159HNOuCrUinjGnzQqgaGJFFtzdghQJ
 8iGHNSbXmcA9FtmZ0+EzZAZ+Nw8Q0OOkBNgz8NFFAjzWbvB4H5Zk92Jr3
 /n5++TyOpGURoRgX4eCffzNIWiYsRAaSIntBJpOcSkPXSy+j3Z2ZMPrDw
 VWr1M/7PDNArrQQzRUJ+QiNR1k96/LlaihMg159tx0+/qPr6mAf0b+e9a Q==;
X-CSE-ConnectionGUID: hZiQlTvCRjCDWT5Oq705SA==
X-CSE-MsgGUID: RAUo0MyKQl+06m+5FJeBNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="41438528"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="41438528"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 15:35:01 -0700
X-CSE-ConnectionGUID: l5BQhDkHRGe8bqVpKtFUYA==
X-CSE-MsgGUID: Riy1InJoRWuWUJgt4I6lFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159889429"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.30])
 by orviesa005.jf.intel.com with SMTP; 02 Jul 2025 15:34:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Jul 2025 01:34:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: linux-kernel@vger.kernel.org
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 Imre Deak <imre.deak@intel.com>,
 David Laight <david.laight.linux@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matt Wagantall <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH 4/4] DO-NOT-MERGE: drm/i915: Use poll_timeout_us()
Date: Thu,  3 Jul 2025 01:34:39 +0300
Message-ID: <20250702223439.19752-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
References: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
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

Make sure poll_timeout_us() works by using it in i915
instead of the custom __wait_for().

Remaining difference between two:
               | poll_timeout_us() | __wait_for()
---------------------------------------------------
backoff        | fixed interval    | exponential
usleep_range() | N/4+1 to N        | N to N*2
clock          | MONOTONIC         | MONOTONIC_RAW

Just a test hack for now, proper conversion probably
needs actual thought.

Cc: Jani Nikula <jani.nikula@intel.com>
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
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index f7fb40cfdb70..8509d1de1901 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -32,6 +32,7 @@
 #include <linux/types.h>
 #include <linux/workqueue.h>
 #include <linux/sched/clock.h>
+#include <linux/iopoll.h>
 
 #ifdef CONFIG_X86
 #include <asm/hypervisor.h>
@@ -238,7 +239,7 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
  * timeout could be due to preemption or similar and we've never had a chance to
  * check the condition before the timeout.
  */
-#define __wait_for(OP, COND, US, Wmin, Wmax) ({ \
+#define __wait_for_old(OP, COND, US, Wmin, Wmax) ({ \
 	const ktime_t end__ = ktime_add_ns(ktime_get_raw(), 1000ll * (US)); \
 	long wait__ = (Wmin); /* recommended min for usleep is 10 us */	\
 	int ret__;							\
@@ -263,6 +264,8 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 	ret__;								\
 })
 
+#define __wait_for(OP, COND, US, Wmin, Wmax)				\
+	poll_timeout_us(OP, COND, (Wmin), (US), false)
 #define _wait_for(COND, US, Wmin, Wmax)	__wait_for(, (COND), (US), (Wmin), \
 						   (Wmax))
 #define wait_for(COND, MS)		_wait_for((COND), (MS) * 1000, 10, 1000)
-- 
2.49.0

