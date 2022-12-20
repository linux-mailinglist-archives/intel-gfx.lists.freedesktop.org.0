Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 285136521E4
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 15:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9699110E058;
	Tue, 20 Dec 2022 14:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6647B10E375
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 14:01:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671544874; x=1703080874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=q/S23FEjqABLFgMW7/9XJKvcSO6CrcCve4T412iUaTk=;
 b=nYE5zuIpE1MugSJqK40B2FEcT4FIVOReACp6bI2iJ5AGg9Yi6f9kfOWl
 oDQc+uzWFqAESQGtFWEfdd6dXv8CtobHzfjMia85wp/r9MJqtWAbA+aNw
 zvIc26wLLD97eeTU1Qjtc/zkWE8TArs59to2JPCpB0+XGwFoy7+B4lD2w
 FNpPHisJ7+5Ghk2bmhPXQUmPUbF7HMGjePfJR84AQrpsaVKLPasiKzEK9
 EzVm1MlPwOKFgN5/X4PlCTnA/VezaUu4RlUsrxTuUWQuWxxico3+Q+hdM
 JFToXo5UdTmSms77Rp1Lgzb/vRTK6152h8lZUEOFORf3TsnFuwqS4/MEZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="318309806"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="318309806"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 06:01:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="825261027"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="825261027"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.249])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 06:01:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Dec 2022 16:01:05 +0200
Message-Id: <20221220140105.313333-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: fix MIPI_BKLT_EN_1 native GPIO
 index
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Due to copy-paste fail, MIPI_BKLT_EN_1 would always use PPS index 1,
never 0. Fix the sloppiest commit in recent memory.

Fixes: f087cfe6fcff ("drm/i915/dsi: add support for ICL+ native MIPI GPIO sequence")
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 41f025f089d9..2cbc1292ab38 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -430,7 +430,7 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 		break;
 	case MIPI_BKLT_EN_1:
 	case MIPI_BKLT_EN_2:
-		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
+		index = gpio == MIPI_BKLT_EN_1 ? 0 : 1;
 
 		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
 			     value ? EDP_BLC_ENABLE : 0);
-- 
2.34.1

