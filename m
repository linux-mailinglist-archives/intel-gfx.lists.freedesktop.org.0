Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E631CACDA66
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 10:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82F510E7C9;
	Wed,  4 Jun 2025 08:59:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUSWzNLh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C50DE10E7C9
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jun 2025 08:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749027551; x=1780563551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=544MV2IkCIgm0MxZu7bta16Lz/bw0OqCkBlg2eu3Zmk=;
 b=iUSWzNLh5UkILqX7WOJ4itRLyZTMSkpJx/5I25Won+s9PNBvYylvpHC/
 HkpIoRBBcN/rafsTx/gYdO8MEFzmHB75A2gqQNth2oeMlJ73y/U41L1ve
 V/cIPImWTFnUU5YL8ZGt0FeYS2PoBooDOscZrUnM+a/R7sV8urcTceUTH
 2TwPRmEhlDeVZpBUftH5U2l2ROnb7h94VnwKNJZyLKH5vjspBU7Zvf01N
 n34T7B9nU7sUcCpHk7kxLCxraRDxtdPFMhqNxoJbWJriSl8E+nuNKdjyh
 S8IYq7bYsTIiZSxlshZ/48MWx7TscUnNrjXm25ZjkWrtJn7MQHI6YYBRv Q==;
X-CSE-ConnectionGUID: UpLoFCI5R+i5MtYvoJcNuw==
X-CSE-MsgGUID: /C2N9sdbQjij5TRH5E+mEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="62454703"
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="62454703"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 01:59:11 -0700
X-CSE-ConnectionGUID: PSMjmsuGQ1yfsvJ80W2zSA==
X-CSE-MsgGUID: UiVpw59fT/Ggaex7KR+cmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="146096852"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.101])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 01:59:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Kees Cook <kees@kernel.org>,
	Jani Nikula <jani.nikula@intel.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: [RFC] drm/i915/utils: document range_overflows*() macros
Date: Wed,  4 Jun 2025 11:59:00 +0300
Message-Id: <20250604085900.819259-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <202506021119.8FD6339F@keescook>
References: <202506021119.8FD6339F@keescook>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

In preparation for moving the range check macros to
include/linux/overflow.h, document them properly.

Cc: Kees Cook <kees@kernel.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

I can squash this into actually moving the macros, I just want to
solicit feedback for the documentation first.
---
 drivers/gpu/drm/i915/i915_utils.h | 45 +++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index f7fb40cfdb70..79127f01f887 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -67,6 +67,19 @@ bool i915_error_injected(void);
 		drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
 })
 
+
+/**
+ * range_overflows() - Check if @start + @size > @max
+ * @start: start offset
+ * @size: length of the range
+ * @max: valid upper limit
+ *
+ * Helper for the common @start + @size > @max range or buffer overflow
+ * check. Return true if the addition exceeds max or overflows. Also return true
+ * if @start == @max, even if @size == 0.
+ *
+ * Returns: %true if the range overflows.
+ */
 #define range_overflows(start, size, max) ({ \
 	typeof(start) start__ = (start); \
 	typeof(size) size__ = (size); \
@@ -76,9 +89,30 @@ bool i915_error_injected(void);
 	start__ >= max__ || size__ > max__ - start__; \
 })
 
+/**
+ * range_overflows_t() - Check if @start + @size > @max
+ * @type: data type to use
+ * @start: start offset
+ * @size: length of the range
+ * @max: valid upper limit
+ *
+ * Same as range_overflows(), but using the specified @type.
+ *
+ * Returns: %true if the range overflows.
+ */
 #define range_overflows_t(type, start, size, max) \
 	range_overflows((type)(start), (type)(size), (type)(max))
 
+/**
+ * range_overflows_end() - Check if @start + @size > @max
+ * @start: start offset
+ * @size: length of the range
+ * @max: valid upper limit
+ *
+ * Same as range_overflows(), but allow @start == @max when @size == 0.
+ *
+ * Returns: %true if the range overflows.
+ */
 #define range_overflows_end(start, size, max) ({ \
 	typeof(start) start__ = (start); \
 	typeof(size) size__ = (size); \
@@ -88,6 +122,17 @@ bool i915_error_injected(void);
 	start__ > max__ || size__ > max__ - start__; \
 })
 
+/**
+ * range_overflows_end_t() - Check if @start + @size > @max
+ * @type: data type to use
+ * @start: start offset
+ * @size: length of the range
+ * @max: valid upper limit
+ *
+ * Same as range_overflows_end(), but using the specified @type.
+ *
+ * Returns: %true if the range overflows.
+ */
 #define range_overflows_end_t(type, start, size, max) \
 	range_overflows_end((type)(start), (type)(size), (type)(max))
 
-- 
2.39.5

