Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1534AFCBA4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 15:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166DD10E63C;
	Tue,  8 Jul 2025 13:16:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lnr1kyrr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8692D10E63C;
 Tue,  8 Jul 2025 13:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751980601; x=1783516601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v4l/G0NQEmRPMvzgXjpc1Mioo1CP3K1DjX348z3nmMc=;
 b=Lnr1kyrrtlhfxNXzoEfUsaDDJ9qbleGGrZg4+XgYurv28vgxnGSk2wTN
 BhaBss3uTw82v+QO1Eq+r+62VfSRk7XiVc812Y+sz5GlSvC75AofmHojD
 1makYES5zqvLyviKOFORPBpeBq5e8jINLTbupyF9D9tFEppV3qb41C5tG
 s6hbIc0BL/7VRyVlnGv6MAdsoVXUw22zQRCeFbwLnIU+5yFCLWbP69XuR
 vlgx1no6HcTt5hbsUKU/8TROKBCSl5g8Wti9p50WDTtgho/fnGVLftyzI
 2DFzRlcgFJ2zV2p0cSlVOxY1QyrenlAQJ7CwjoEqW5gJBA6+bosFld4ct Q==;
X-CSE-ConnectionGUID: +B/AkafRSPWwWK6QzsreyA==
X-CSE-MsgGUID: Vc7tgY66TU2hjRYKtsbEBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54315532"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="54315532"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 06:16:40 -0700
X-CSE-ConnectionGUID: xA0yEiMGQzOQQijEwYodNA==
X-CSE-MsgGUID: gsi5fv+vRLmcgfw5JvVl/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161137970"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 06:16:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 16:16:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: linux-kernel@vger.kernel.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 Imre Deak <imre.deak@intel.com>,
 David Laight <david.laight.linux@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Matt Wagantall <mattw@codeaurora.org>, Dejin Zheng <zhengdejin5@gmail.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 1/4] iopoll: Generalize read_poll_timeout() into
 poll_timeout_us()
Date: Tue,  8 Jul 2025 16:16:34 +0300
Message-ID: <20250708131634.1524-1-ville.syrjala@linux.intel.com>
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

While read_poll_timeout() & co. were originally introduced just
for simple I/O usage scenarios they have since been generalized to
be useful in more cases.

However the interface is very cumbersome to use in the general case.
Attempt to make it more flexible by combining the 'op', 'var' and
'args' parameter into just a single 'op' that the caller can fully
specify.

For example i915 has one case where one might currently
have to write something like:
	ret = read_poll_timeout(drm_dp_dpcd_read_byte, err,
				err || (status & mask),
				0 * 1000, 200 * 1000, false,
				aux, DP_FEC_STATUS, &status);
which is practically illegible, but with the adjusted macro
we do:
	ret = poll_timeout_us(err = drm_dp_dpcd_read_byte(aux, DP_FEC_STATUS, &status),
			      err || (status & mask),
			      0 * 1000, 200 * 1000, false);
which much easier to understand.

One could even combine the 'op' and 'cond'  parameters into
one, but that might make the caller a bit too unwieldly with
assignments and checks being done on the same statement.

This makes poll_timeout_us() closer to the i915 __wait_for()
macro, with the main difference being that __wait_for() uses
expenential backoff as opposed to the fixed polling interval
used by poll_timeout_us(). Eventually we might be able to switch
(at least most of) i915 to use poll_timeout_us().

v2: Fix typos (Jani)
    Fix delay_us docs for poll_timeout_us_atomic() (Jani)

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
 include/linux/iopoll.h | 110 +++++++++++++++++++++++++++++------------
 1 file changed, 78 insertions(+), 32 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 91324c331a4b..440aca5b4b59 100644
--- a/include/linux/iopoll.h
+++ b/include/linux/iopoll.h
@@ -14,41 +14,38 @@
 #include <linux/io.h>
 
 /**
- * read_poll_timeout - Periodically poll an address until a condition is
- *			met or a timeout occurs
- * @op: accessor function (takes @args as its arguments)
- * @val: Variable to read the value into
- * @cond: Break condition (usually involving @val)
- * @sleep_us: Maximum time to sleep between reads in us (0 tight-loops). Please
- *            read usleep_range() function description for details and
+ * poll_timeout_us - Periodically poll and perform an operation until
+ *                   a condition is met or a timeout occurs
+ *
+ * @op: Operation
+ * @cond: Break condition
+ * @sleep_us: Maximum time to sleep between operations in us (0 tight-loops).
+ *            Please read usleep_range() function description for details and
  *            limitations.
  * @timeout_us: Timeout in us, 0 means never timeout
- * @sleep_before_read: if it is true, sleep @sleep_us before read.
- * @args: arguments for @op poll
+ * @sleep_before_op: if it is true, sleep @sleep_us before operation.
  *
  * When available, you'll probably want to use one of the specialized
  * macros defined below rather than this macro directly.
  *
- * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
- * case, the last read value at @args is stored in @val. Must not
+ * Returns: 0 on success and -ETIMEDOUT upon a timeout. Must not
  * be called from atomic context if sleep_us or timeout_us are used.
  */
-#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
-				sleep_before_read, args...) \
+#define poll_timeout_us(op, cond, sleep_us, timeout_us, sleep_before_op) \
 ({ \
 	u64 __timeout_us = (timeout_us); \
 	unsigned long __sleep_us = (sleep_us); \
 	ktime_t __timeout = ktime_add_us(ktime_get(), __timeout_us); \
 	might_sleep_if((__sleep_us) != 0); \
-	if (sleep_before_read && __sleep_us) \
+	if ((sleep_before_op) && __sleep_us) \
 		usleep_range((__sleep_us >> 2) + 1, __sleep_us); \
 	for (;;) { \
-		(val) = op(args); \
+		op; \
 		if (cond) \
 			break; \
 		if (__timeout_us && \
 		    ktime_compare(ktime_get(), __timeout) > 0) { \
-			(val) = op(args); \
+			op; \
 			break; \
 		} \
 		if (__sleep_us) \
@@ -59,17 +56,16 @@
 })
 
 /**
- * read_poll_timeout_atomic - Periodically poll an address until a condition is
- * 				met or a timeout occurs
- * @op: accessor function (takes @args as its arguments)
- * @val: Variable to read the value into
- * @cond: Break condition (usually involving @val)
- * @delay_us: Time to udelay between reads in us (0 tight-loops). Please
- *            read udelay() function description for details and
+ * poll_timeout_us_atomic - Periodically poll and perform an operation until
+ *                          a condition is met or a timeout occurs
+ *
+ * @op: Operation
+ * @cond: Break condition
+ * @delay_us: Time to udelay between operations in us (0 tight-loops).
+ *            Please read udelay() function description for details and
  *            limitations.
  * @timeout_us: Timeout in us, 0 means never timeout
- * @delay_before_read: if it is true, delay @delay_us before read.
- * @args: arguments for @op poll
+ * @delay_before_op: if it is true, delay @delay_us before operation.
  *
  * This macro does not rely on timekeeping.  Hence it is safe to call even when
  * timekeeping is suspended, at the expense of an underestimation of wall clock
@@ -78,27 +74,26 @@
  * When available, you'll probably want to use one of the specialized
  * macros defined below rather than this macro directly.
  *
- * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
- * case, the last read value at @args is stored in @val.
+ * Returns: 0 on success and -ETIMEDOUT upon a timeout.
  */
-#define read_poll_timeout_atomic(op, val, cond, delay_us, timeout_us, \
-					delay_before_read, args...) \
+#define poll_timeout_us_atomic(op, cond, delay_us, timeout_us, \
+			       delay_before_op) \
 ({ \
 	u64 __timeout_us = (timeout_us); \
 	s64 __left_ns = __timeout_us * NSEC_PER_USEC; \
 	unsigned long __delay_us = (delay_us); \
 	u64 __delay_ns = __delay_us * NSEC_PER_USEC; \
-	if (delay_before_read && __delay_us) { \
+	if ((delay_before_op) && __delay_us) { \
 		udelay(__delay_us); \
 		if (__timeout_us) \
 			__left_ns -= __delay_ns; \
 	} \
 	for (;;) { \
-		(val) = op(args); \
+		op; \
 		if (cond) \
 			break; \
 		if (__timeout_us && __left_ns < 0) { \
-			(val) = op(args); \
+			op; \
 			break; \
 		} \
 		if (__delay_us) { \
@@ -113,6 +108,57 @@
 	(cond) ? 0 : -ETIMEDOUT; \
 })
 
+/**
+ * read_poll_timeout - Periodically poll an address until a condition is
+ *                     met or a timeout occurs
+ * @op: accessor function (takes @args as its arguments)
+ * @val: Variable to read the value into
+ * @cond: Break condition (usually involving @val)
+ * @sleep_us: Maximum time to sleep between reads in us (0 tight-loops). Please
+ *            read usleep_range() function description for details and
+ *            limitations.
+ * @timeout_us: Timeout in us, 0 means never timeout
+ * @sleep_before_read: if it is true, sleep @sleep_us before read.
+ * @args: arguments for @op poll
+ *
+ * When available, you'll probably want to use one of the specialized
+ * macros defined below rather than this macro directly.
+ *
+ * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
+ * case, the last read value at @args is stored in @val. Must not
+ * be called from atomic context if sleep_us or timeout_us are used.
+ */
+#define read_poll_timeout(op, val, cond, sleep_us, timeout_us, \
+			  sleep_before_read, args...) \
+	poll_timeout_us((val) = op(args), cond, sleep_us, timeout_us, sleep_before_read)
+
+/**
+ * read_poll_timeout_atomic - Periodically poll an address until a condition is
+ *                            met or a timeout occurs
+ * @op: accessor function (takes @args as its arguments)
+ * @val: Variable to read the value into
+ * @cond: Break condition (usually involving @val)
+ * @delay_us: Time to udelay between reads in us (0 tight-loops). Please
+ *            read udelay() function description for details and
+ *            limitations.
+ * @timeout_us: Timeout in us, 0 means never timeout
+ * @delay_before_read: if it is true, delay @delay_us before read.
+ * @args: arguments for @op poll
+ *
+ * This macro does not rely on timekeeping.  Hence it is safe to call even when
+ * timekeeping is suspended, at the expense of an underestimation of wall clock
+ * time, which is rather minimal with a non-zero delay_us.
+ *
+ * When available, you'll probably want to use one of the specialized
+ * macros defined below rather than this macro directly.
+ *
+ * Returns: 0 on success and -ETIMEDOUT upon a timeout. In either
+ * case, the last read value at @args is stored in @val.
+ */
+#define read_poll_timeout_atomic(op, val, cond, sleep_us, timeout_us, \
+				 sleep_before_read, args...) \
+	poll_timeout_us_atomic((val) = op(args), cond, sleep_us, timeout_us, sleep_before_read)
+
 /**
  * readx_poll_timeout - Periodically poll an address until a condition is met or a timeout occurs
  * @op: accessor function (takes @addr as its only argument)
-- 
2.49.0

