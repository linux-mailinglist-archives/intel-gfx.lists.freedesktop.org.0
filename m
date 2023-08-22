Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A69784078
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF90E10E33F;
	Tue, 22 Aug 2023 12:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C6710E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692706426; x=1724242426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/XitXR+V5scyv2U34fLc4IovqB/AIf+MVOSR9z50pUw=;
 b=ZR1qb0CPzTDUzGaTYqTkYCCrDWa4BviN0ov3apYWiPOGZuM8mPexFRfm
 iAuIBwrOhtkMSpIDcUPNevrFYPBhEexoBiqaaXR91iNPHKtIw5jKefbM2
 vc9PH/xC/Xr2K+ebRwTylgSz/CoCEfMpx+tJvP3WuKVv0gMctc451R50u
 XuFqhph04WCqeqJiiSWu15/0ORXEVK7fM7vl29g8Rj9R3FNpUuZzc21f/
 9YJU7jcgnRdbSepPdUoRh0eJOSCUhC/HV9ekiJVjCmTs7KS2IKKKzIXdN
 LxcbJ4ae8ExP+iaMjb7nYqoOyKvz++Exs7R3IF/a4gcCtMShNZJD84AXP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="440230273"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="440230273"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="771335239"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="771335239"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:13:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Aug 2023 17:40:25 +0530
Message-Id: <20230822121033.597447-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
References: <20230822121033.597447-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/9] drm/display/dp: Fix the DP DSC Receiver cap
 size
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
Cc: manasi.d.navare@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DP DSC Receiver Capabilities are exposed via DPCD 60h-6Fh.
Fix the DSC RECEIVER CAP SIZE accordingly.

Fixes: ffddc4363c28 ("drm/dp: Add DP DSC DPCD receiver capability size define and missing SHIFT")
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Manasi Navare <manasi.d.navare@intel.com>
Cc: <stable@vger.kernel.org> # v5.0+

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 include/drm/display/drm_dp.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 02f2ac4dd2df..e69cece404b3 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -1537,7 +1537,7 @@ enum drm_dp_phy {
 
 #define DP_BRANCH_OUI_HEADER_SIZE	0xc
 #define DP_RECEIVER_CAP_SIZE		0xf
-#define DP_DSC_RECEIVER_CAP_SIZE        0xf
+#define DP_DSC_RECEIVER_CAP_SIZE        0x10 /* DSC Capabilities 0x60 through 0x6F */
 #define EDP_PSR_RECEIVER_CAP_SIZE	2
 #define EDP_DISPLAY_CTL_CAP_SIZE	3
 #define DP_LTTPR_COMMON_CAP_SIZE	8
-- 
2.40.1

