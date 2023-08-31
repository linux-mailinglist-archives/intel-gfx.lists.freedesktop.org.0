Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E0978F44B
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 22:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5224110E070;
	Thu, 31 Aug 2023 20:52:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BD6210E070
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 20:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693515144; x=1725051144;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TuyEYHRnjY/+O7DOnS+47F47u5D2858bsTj8HAELm8g=;
 b=TtIKWXFDX0yK5EIL9pg3u6oCVCI7SM6p4EHnJk8JhB0Z1ztfvcXdHNmG
 7C+67FMdpfxESPcvXUqTsmWiQJTCbkmPmtOlMW+PTaeEtUWUUtnh+qI/R
 Dw/huvy47uxlAM0dBBayMNE3hhDTnkjKbKKqJ2ZTkJ5npKJhMGvvI1Ss5
 GzT3UJZvCY5TkU/A7qF9Xu5HRKp7yiRAInCuDlHs4mKLrs3Ni8Cq7yuIc
 WDCYqbPpuug3ozQqd/iHLHbR3YdF0swWFaT5yN3Mf/XPakndJLelcovxt
 CgOGCCciXHMtQMbC+JM0zijucHZKIMTxgQWGrv/n89PxpOYEWPr0aKCuY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="378797862"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="378797862"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 13:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="733275190"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="733275190"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.249.135.36])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 13:52:21 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Aug 2023 22:51:50 +0200
Message-Id: <20230831205150.165-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Update GUC_KLV_0_KEY definition
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
Cc: Jani Nikula <jani.nikula@intel.com>, Linyu Yuan <quic_linyyuan@quicinc.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

While building ARCH=x86 with GCC 7.5.0 we get compilation errors:

  CC      drivers/gpu/drm/i915/gt/uc/intel_guc_submission.o
In file included from <command-line>:0:0:
In function ‘__guc_context_policy_add_priority.isra.47’,
    inlined from ‘__guc_context_set_prio.isra.48’ at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3332:3,
    inlined from ‘guc_context_set_prio’ at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3360:2:
././include/linux/compiler_types.h:397:38: error: call to ‘__compiletime_assert_1803’ declared with attribute error: FIELD_PREP: mask is not constant
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
                                      ^
././include/linux/compiler_types.h:378:4: note: in definition of macro ‘__compiletime_assert’
    prefix ## suffix();    \
    ^~~~~~
././include/linux/compiler_types.h:397:2: note: in expansion of macro ‘_compiletime_assert’
  _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)
  ^~~~~~~~~~~~~~~~~~~
./include/linux/build_bug.h:39:37: note: in expansion of macro ‘compiletime_assert’
 #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                     ^~~~~~~~~~~~~~~~~~
./include/linux/bitfield.h:65:3: note: in expansion of macro ‘BUILD_BUG_ON_MSG’
   BUILD_BUG_ON_MSG(!__builtin_constant_p(_mask),  \
   ^~~~~~~~~~~~~~~~
./include/linux/bitfield.h:114:3: note: in expansion of macro ‘__BF_FIELD_CHECK’
   __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: "); \
   ^~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2461:3: note: in expansion of macro ‘FIELD_PREP’
   FIELD_PREP(GUC_KLV_0_KEY, GUC_CONTEXT_POLICIES_KLV_ID_##id) | \
   ^~~~~~~~~~

This is due to our GUC_KLV_0_KEY definition that uses signed mask in
shift operator, which may lead to undefined behavior on 32-bit system.
Use unsigned mask to enforce expected integer promotion.

Reported-by: Linyu Yuan <quic_linyyuan@quicinc.com>
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Linyu Yuan <quic_linyyuan@quicinc.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
index 58012edd4eb0..8e821aefb164 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
@@ -29,7 +29,7 @@
  */
 
 #define GUC_KLV_LEN_MIN				1u
-#define GUC_KLV_0_KEY				(0xffff << 16)
+#define GUC_KLV_0_KEY				(0xffffu << 16)
 #define GUC_KLV_0_LEN				(0xffff << 0)
 #define GUC_KLV_n_VALUE				(0xffffffff << 0)
 
-- 
2.25.1

