Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBQZFAo4n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEFA19BDD5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C979910E7EE;
	Wed, 25 Feb 2026 17:57:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="afMCbWsU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962E210E7EA;
 Wed, 25 Feb 2026 17:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042247; x=1803578247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=to4MzoMFaT1trl1mLFOksNtUXPOKvgyYp8glkGGQ5rs=;
 b=afMCbWsUQ7htiYNykA7/1drQzxKXgPub+aR6tjBnpM/DgwRpzPl6SgtS
 NudNXEFCT63EEJd/P+Ie/kcyRHrJUYlqurnbsajh4z4XjvWvn4CBzJtwN
 wafxhIggsoEMYc0N421zayvxtN1970+d8ubjDUrNdsQ1aze+SyH5edjI1
 zUOSPwwwWPi4WpF03WAesZNw5qdSMelvn+GCIVOMSHLWqMN79PsnX2JeB
 r2CNshu/dvDEmftTazpgTIv+e2qoPuiVCHlEwkHALvSGUrvyxBTYkgZ9n
 UCY1yV/Iv4R19b+4IF7y7Z1YB/TyjAXMpZsAMazxgsseqDB+IB1Zbg1ka Q==;
X-CSE-ConnectionGUID: vU4BuOcHTs6w1epR66VNnA==
X-CSE-MsgGUID: XG9ecK+vSUWvAmpxLev4wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72793799"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72793799"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:27 -0800
X-CSE-ConnectionGUID: B9heRluuTvq1UfW/1uPBQQ==
X-CSE-MsgGUID: ogLJgb9fQOWi2pEnJnxuWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="214394472"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 2/8] drm/i915/lrc: switch to _MASKED_BIT_ENABLE() and
 _MASKED_BIT_DISABLE()
Date: Wed, 25 Feb 2026 19:57:04 +0200
Message-ID: <733568f8a6155b6e2da1dcdce9d21d6aab881449.1772042022.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 7EEFA19BDD5
X-Rspamd-Action: no action

Since it's now possible to use _MASKED_BIT_ENABLE() and
_MASKED_BIT_DISABLE() in the array initializer, switch to them. This
allows us to remove __MASKED_FIELD() macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c  | 9 +++------
 drivers/gpu/drm/i915/i915_reg_defs.h | 3 +--
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index d36e543e98df..8f7156ba9f8e 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1736,22 +1736,19 @@ static u32 *gen9_init_indirectctx_bb(struct intel_engine_cs *engine, u32 *batch)
 		/* WaDisableGatherAtSetShaderCommonSlice:skl,bxt,kbl,glk */
 		{
 			COMMON_SLICE_CHICKEN2,
-			__MASKED_FIELD(GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE,
-				       0),
+			_MASKED_BIT_DISABLE(GEN9_DISABLE_GATHER_AT_SET_SHADER_COMMON_SLICE),
 		},
 
 		/* BSpec: 11391 */
 		{
 			FF_SLICE_CHICKEN,
-			__MASKED_FIELD(FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX,
-				       FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX),
+			_MASKED_BIT_ENABLE(FF_SLICE_CHICKEN_CL_PROVOKING_VERTEX_FIX),
 		},
 
 		/* BSpec: 11299 */
 		{
 			_3D_CHICKEN3,
-			__MASKED_FIELD(_3D_CHICKEN_SF_PROVOKING_VERTEX_FIX,
-				       _3D_CHICKEN_SF_PROVOKING_VERTEX_FIX),
+			_MASKED_BIT_ENABLE(_3D_CHICKEN_SF_PROVOKING_VERTEX_FIX),
 		}
 	};
 
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index c39b3a5dafe6..59c661539895 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -105,12 +105,11 @@
 	       BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
 	       BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val), (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
 
-#define __MASKED_FIELD(mask, value) ((mask) << 16 | (value))
 #define _MASKED_FIELD(mask, value) \
 	(BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask), (mask) & 0xffff0000, 0)) + \
 	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(value), (value) & 0xffff0000, 0)) + \
 	 BUILD_BUG_ON_ZERO(__builtin_choose_expr(__builtin_constant_p(mask) && __builtin_constant_p(value), (value) & ~(mask), 0)) + \
-	 __MASKED_FIELD(mask, value))
+	 ((mask) << 16 | (value)))
 
 #define _MASKED_BIT_ENABLE(a) \
 	(__builtin_choose_expr(__builtin_constant_p(a), _MASKED_FIELD((a), (a)), ({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })))
-- 
2.47.3

