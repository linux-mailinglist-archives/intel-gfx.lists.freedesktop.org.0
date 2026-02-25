Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YO7aIQU4n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4A919BDCD
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DABE10E7E9;
	Wed, 25 Feb 2026 17:57:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QrZJ1DGa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A99710E7E7;
 Wed, 25 Feb 2026 17:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042242; x=1803578242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tcirkwKLu/RQKvCvLUlSPvv53B4mnpe9EPJd4CCX5tE=;
 b=QrZJ1DGasH7q8uZ5Kv1jofl6Fg4y6sHmrLSzFmRRYWsRI7MUcdWe6Agc
 EflFDFSpIu8bNP7cnviRCDIA1wgxERwPK+xBj3wtIpLAUxjjRZXsEpZ4g
 ftQ6IFsUUlZsJB3h4zH40O4oOvwcHxH867IPKRFt+1RyZ8WY5rCFSVPQE
 H7wYj90fNfZZADtmLjGDNZcywRC8pIJ1bWrRxxs0WILt3tVSglcwcn4DH
 jDtkZHcy0qgNPfmVvJPQWz8G7EGIIS16phEJtMjj4L0m7g9u/hGIou1zA
 sGNXOI4Vv7SwcWZ2sutvEwOCJEXQ9d04fTfT31Pf3wYxHqsj35Fi+1X96 w==;
X-CSE-ConnectionGUID: pNpkTalvQ/6cueqUAMZiww==
X-CSE-MsgGUID: EIA4yS5SQrKGBDC+lGGQLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72793790"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72793790"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:22 -0800
X-CSE-ConnectionGUID: tdUvpiXqRRuKFYvbvrDPHA==
X-CSE-MsgGUID: 7mxn1MzgS/CeWSK1NO8m2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="214394451"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 1/8] drm/i915/reg: make masked field helpers constexpr
Date: Wed, 25 Feb 2026 19:57:03 +0200
Message-ID: <788f538cc71dec0db25e0c768e8945bef6f9701c.1772042022.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3A4A919BDCD
X-Rspamd-Action: no action

Make it possible to use _MASKED_FIELD(), _MASKED_BIT_ENABLE() and
_MASKED_BIT_DISABLE() in contexts that require integer constant
expressions. This increases their usefulness at the small cost of making
the warnings from build time checks less helpful.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg_defs.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index e81fac8ab51b..c39b3a5dafe6 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -106,17 +106,17 @@
 	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
 
 #define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
-#define _MASKED_FIELD(mask, value) ({					   \
-	if (__builtin_constant_p(mask))					   \
-		BUILD_BUG_ON_MSG(((mask) & 0xffff0000), "Incorrect mask"); \
-	if (__builtin_constant_p(value))				   \
-		BUILD_BUG_ON_MSG((value) & 0xffff0000, "Incorrect value"); \
-	if (__builtin_constant_p(mask) && __builtin_constant_p(value))	   \
-		BUILD_BUG_ON_MSG((value) & ~(mask),			   \
-				 "Incorrect value for mask");		   \
-	__MASKED_FIELD(mask, value); })
-#define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
-#define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
+#define _MASKED_FIELD(mask, value) \
+	(BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask), (mask) & 0xffff0000, 0)) + \
+	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(value), (value) & 0xffff0000, 0)) + \
+	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask) && __builtin_constant_p(value), (value) & ~(mask), 0)) + \
+	 __MASKED_FIELD(mask, value))
+
+#define _MASKED_BIT_ENABLE(a) \
+	(__builtin_choose_expr(__builtin_constant_p(a), _MASKED_FIELD((a), (a)), ({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })))
+
+#define _MASKED_BIT_DISABLE(a) \
+	(_MASKED_FIELD((a), 0))
 
 /*
  * Given the first two numbers __a and __b of arbitrarily many evenly spaced
-- 
2.47.3

