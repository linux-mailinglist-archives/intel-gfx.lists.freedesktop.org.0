Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBAD78C1B3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 11:44:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 085DF10E1D7;
	Tue, 29 Aug 2023 09:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32E910E1D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Aug 2023 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693302294; x=1724838294;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lNCcO/WZyw6hH9HB5oD4mFtpjQgwrnyMEINJiSc5CdM=;
 b=PeYxVDzV5xKCFRqs0V5i8nRLB5DGAEB7w/mD6lscSlrfs2THXzgvxMOT
 YTkwSvOyYmj9O3/4vHhNaMyPGerrym52O890leZrcWK5ZoI+kJ4MUgdlr
 /HBhXU8oBAjRopOz0NCf74ChcWHwej9Xv9Akeb0Pd7di6o/vfsTYcpnZL
 O5RLKbyQqLkvbBzQspTgjwEA9KbGtKp5urDLflwnjMeWQc86iLLMr4iyn
 vnMzyJPEf5YGI45pY/wio33liE9ORaWt7FbhgyG+UKu68+yPhhAoWDNpw
 Bv743EfWkKcUSpE0dwBk8SQGyTbZv9ag/3AJf69PDo5nf2uq2gSJ9YPB7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="375288023"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="375288023"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 02:44:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="732146043"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="732146043"
Received: from aravind2-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.41.237])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 02:44:51 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Aug 2023 12:44:35 +0300
Message-Id: <20230829094435.2100669-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: Apply Wa_14015648006 for all
 display 14 steppings
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

According to recent Bspec Wa 14015648006 has to be applied for all display
14 steppings.

Bspec: 66624

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 887d0b77ae9a..f03634750669 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1360,8 +1360,7 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	bool set_wa_bit = false;
 
 	/* Wa_14015648006 */
-	if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 11, 13))
+	if (IS_DISPLAY_VER(dev_priv, 11, 14))
 		set_wa_bit |= crtc_state->wm_level_disabled;
 
 	/* Wa_16013835468 */
-- 
2.34.1

