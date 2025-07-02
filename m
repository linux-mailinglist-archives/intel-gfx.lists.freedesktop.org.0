Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C52AF6540
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 00:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B567110E79C;
	Wed,  2 Jul 2025 22:34:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aMwuDFAU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B55810E798;
 Wed,  2 Jul 2025 22:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751495686; x=1783031686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MGRPKz59cayo0fMu2EC0NP9rvl7UKV29ZEEu8eeujIw=;
 b=aMwuDFAUj0RLxghA0YpydrGKHyDx+aIMz6lJ7K+giU1dezRHQEM85oJJ
 CWczB2VmqUbsGyL8vLTr/QMzF7KWcGU4J6gtbHyCi1yDIN8IEn2dypvYY
 MaBeq3F/bNHlyJT3tNxhKJuUn+xNw9ycgql6Qv4MXWPD46JbwaHIRT/yO
 dAQggdNmz9Uxqst0fUZw52kvIZ5aJQWflo6DyVgeRP5LWSR8EgdOaqh4m
 +UehIc1VDaldk+Y5DazbAgqXNKx5nW/goobQOZT4LbKv851cEWPBidwXo
 OeEEujDNJRZETeoKixo9HrimaklJok3ZwIsgNWTp7ziAF4AaHjJqzq47M A==;
X-CSE-ConnectionGUID: lKiJQxdnSne0/3F8ISpy0Q==
X-CSE-MsgGUID: UthwbcNARHSt6EsLoKwttQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11482"; a="41438506"
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="41438506"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 15:34:45 -0700
X-CSE-ConnectionGUID: 9Wb9VA+OQte3Zb6cEjE76A==
X-CSE-MsgGUID: EAZixiDPTPa8pKbsfXu/Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,282,1744095600"; d="scan'208";a="159889414"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.30])
 by orviesa005.jf.intel.com with SMTP; 02 Jul 2025 15:34:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 03 Jul 2025 01:34:39 +0300
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
Subject: [PATCH 1/4] iopoll: Generalize read_poll_timeout() into
 poll_timeout_us()
Date: Thu,  3 Jul 2025 01:34:36 +0300
Message-ID: <20250702223439.19752-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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
 include/linux/iopoll.h | 110 +++++++++++++++++++++++++++++------------
 1 file changed, 78 insertions(+), 32 deletions(-)

diff --git a/include/linux/iopoll.h b/include/linux/iopoll.h
index 91324c331a4b..0d8186d3df03 100644
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
+ * poll_timeout_us - Periodically poll and perform an operaion until
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
+ * poll_timeout_us_atomic - Periodically poll and perform an operaion until
+ *                          a condition is met or a timeout occurs
+ *
+ * @op: Operation
+ * @cond: Break condition
+ * @sleep_us: Maximum time to sleep between operations in us (0 tight-loops).
+ *            Please read usleep_range() function description for details and
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

