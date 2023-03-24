Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5447E6C8440
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 19:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A42DF10E1A2;
	Fri, 24 Mar 2023 18:03:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364C810E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 18:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679680981; x=1711216981;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xMTlE2rTMVU+yeD6WOX79EoCixoy/0uXzSc/wMJQXgs=;
 b=fj5II9coz5M+hcjh8jjNGSTTCX/7pSfElxtsxMgrEaWY5eXB1BHExZum
 Rndq2SA/E5TMo+fQl5eyiqwTYjE4GkX+LcpKA2BHWoJ5ouZqn/XKXAliY
 yIwNtAppp+U9QofcbceD64NGeCuAPaWuF66wL0TwzGNWNNd19rHf0ifUd
 fBnl0HYWOHC7ljsXNT2PIzDKi/ZAiXZxt/5XixiaGI3j/eMTVXAojtgEK
 n3Jw8CEFsXv/jPcpalIm4id5NvxAp6fo49nS6t3x3yb6GG8IeYI3KJILA
 WRDCCwSCWoQTaLuLumd/sMkc8yS9+cdLdFT5U71HoCE9ndY+YoZz5DT67 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="337351651"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="337351651"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 11:03:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="856954758"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="856954758"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 11:02:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri, 24 Mar 2023 11:02:53 -0700
Message-Id: <20230324180253.4182375-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Disable C6 on MTL A0 for media
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

Earlier merge dropped an if block when applying the patch -
"drm/i915/mtl: Synchronize i915/BIOS on C6 enabling". Bring back the
if block as the check is required by - "drm/i915/mtl: Disable MC6 for MTL
A step" to disable C6 on media for A0 stepping.

Fixes: 3735040978a4 ("drm/i915/mtl: Synchronize i915/BIOS on C6 enabling")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f760586f9f46..8f3cd68d14f8 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -525,6 +525,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
 		return false;
 	}
 
+	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
+	    gt->type == GT_MEDIA) {
+		drm_notice(&i915->drm,
+			   "Media RC6 disabled on A step\n");
+		return false;
+	}
+
 	return true;
 }
 
-- 
2.36.1

