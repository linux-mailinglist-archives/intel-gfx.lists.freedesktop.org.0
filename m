Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A019AF56E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA7310E9B7;
	Thu, 24 Oct 2024 22:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R1AdhgSf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 592E210E9AC;
 Thu, 24 Oct 2024 22:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ohFe+L7LULaS+BR/dLeP4YYGJ+d9nxfbO1Y34Vs4NZY=;
 b=R1AdhgSfzaGXgXrXR+YNhJoQAF6aH0X6GM8aY7ETHQtG5pXwWhJz9Az1
 JTJrH6QtI9sdv60j84TEYjte+Jne/Zp09nIWE4wOsG3ReVnt/jFmG3iRF
 z3ii0gH2r0rzCVZPsO31oPbCaE7oz3Ggcmwr9Inw4pravB+ku9LjjDw7+
 sh94G8vhdwHFvvc0xt2hAtek7tdw4/1uBQ0lhGrkBwajk/jOvxAx918cN
 nmfV2L7xwGMRHnT88e443P2UkUkNSR5xH7+YSMQ4OEGp+0QLrRjOflvE+
 FjHrHqVOFcOMurmYlM7VctDx2VjC5H/u4UUywz0erczLB29jY+Uv7u3k3 Q==;
X-CSE-ConnectionGUID: S9focsxPTvexeAF5hx5xXA==
X-CSE-MsgGUID: izfgZYv+QhOECF5SLgairg==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950811"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950811"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: gMgNv65OT0auJw+VAuxM/w==
X-CSE-MsgGUID: RhNsFX4fQv+f4s300Mqu1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838674"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 08/11] drm/i915/xe3: Underrun recovery does not exist post
 Xe2
Date: Thu, 24 Oct 2024 15:31:11 -0700
Message-Id: <20241024223114.785209-9-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
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

From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

From platforms xe3 Underrun recovery does not exist

v2: improve DISPLAY_VER checking

BSpec: 68849
Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..c904f529d0c5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -861,7 +861,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
 	 */
 	if (IS_DG2(dev_priv))
 		tmp &= ~UNDERRUN_RECOVERY_ENABLE_DG2;
-	else if (DISPLAY_VER(dev_priv) >= 13)
+	else if ((DISPLAY_VER(dev_priv) >= 13) && (DISPLAY_VER(dev_priv) < 30))
 		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
 
 	/* Wa_14010547955:dg2 */
-- 
2.25.1

