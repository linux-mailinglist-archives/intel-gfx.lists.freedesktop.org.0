Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7E56FE5D7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 22:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61A410E52A;
	Wed, 10 May 2023 20:55:38 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53BC210E529;
 Wed, 10 May 2023 20:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683752136; x=1715288136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0ALpZ/zkvINnH3Gc0R882xESQdJCMga3ZFewhxI15y4=;
 b=nt3o8W6G63H2a3lidAG0ZAOUDDXO09pvLORDAQ8+zmx9NKMC3iBQ18QC
 WTibLpF7Nu/B3FfssGbzQBv2wFwpnvU6k93qfdRt9aIZAaKdNwR+qQYaE
 nbjR7tVZl/LKQrfJK+Apa8dep+5D5utoM16IADrhSt7noGzWtW1nYCTyX
 gTj1nBEBrvKXY7Yfl7JLImQnuh8k6Y6T1f/ecFRl5HLzFefEXH9PNX4Hk
 4HiZl2myFM7iO53tJUJZyldpIuLci3VFnGP0gegV+xUjiFrYtY0qao5ED
 PAWgpt8bLdpPNT+Wfg4W9Yuk5n4XS+A/kM2MKbyg9EAO5fKj13V8eBBIn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="347783868"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="347783868"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 13:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="1029370905"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="1029370905"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga005.fm.intel.com with ESMTP; 10 May 2023 13:55:34 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 10 May 2023 13:55:56 -0700
Message-Id: <20230510205556.312999-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i1915/guc: Fix probe injection CI failures
 after recent change
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, DRI-Devel@Lists.FreeDesktop.Org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

A recent change bumped a 'notice' message up to 'error' level for
debug builds to help trap incorrect configurations in CI systems.
Unfortunaetly, tha error condition in question is triggered by the
error injection probe test. So change the message again to be 'probe
error' level instead.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Fixes: 760133d42f0a ("drm/i915/uc: Make unexpected firmware versions an error in debug builds")
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 4ec7df9ed5ff3..e467d9af61876 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -18,7 +18,7 @@
 #include "i915_reg.h"
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
-#define UNEXPECTED	gt_err
+#define UNEXPECTED	gt_probe_error
 #else
 #define UNEXPECTED	gt_notice
 #endif
-- 
2.39.1

