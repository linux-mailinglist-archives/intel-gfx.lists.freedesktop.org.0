Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA71B52F059
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 18:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D2A10E7C9;
	Fri, 20 May 2022 16:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A09310E7C9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 16:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653063422; x=1684599422;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Y+Zt/xCsZJ8f67hUoxBsw7xDIFSX45dvvOdatpSMqCc=;
 b=RgTFektrNNScHYxigo37V5pmVXY3JHxSw7TIy1T/Y37B3uifjhHdNgQB
 /YfOy9R1NLdxI1dfWvPeozw+R4WmkilBcgt49wJ/fL30cYd1+AHeU+hwb
 zdVBvS5UHO/h0ln/1aPmO0nrnBgAPzYyQ/2pAkzm9klH7LArx457r8X74
 SZhUHj7sBOOvCw/8xZCTI4YEiw9pYM/bzWOxxwhJQkpb7sjjdNd6C9LMZ
 Gt0a/H63ZxGnP+axfZ1Au6wSpagwj7ea3BEwtAUVkHMHLCgh8hLC4kZCZ
 TqGr2w+p3tajrwQIijXrsdPyu5RBWV95QdzQhb/cRZlRcThbVvZ0q7zZz w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10353"; a="333279031"
X-IronPort-AV: E=Sophos;i="5.91,239,1647327600"; d="scan'208";a="333279031"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 09:16:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,239,1647327600"; d="scan'208";a="576258798"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 09:16:35 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 May 2022 09:12:44 -0700
Message-Id: <20220520161244.2571563-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Enable DC5
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

Enable DC5 on dg2.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index fb17439bd4f8..f58e277fdadf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -908,7 +908,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 		return 0;
 
 	if (IS_DG2(dev_priv))
-		max_dc = 0;
+		max_dc = 1;
 	else if (IS_DG1(dev_priv))
 		max_dc = 3;
 	else if (DISPLAY_VER(dev_priv) >= 12)
-- 
2.25.1

