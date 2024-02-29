Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD1B86BF28
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 03:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71B310E1CD;
	Thu, 29 Feb 2024 02:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RCGtUN21";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E8FF10E1CD
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 02:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709175524; x=1740711524;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZAUvCEP32NbMekWlys6DIzuw/XFQg7CQhIb6YktYssg=;
 b=RCGtUN21+lUCotnCfPN9d2RJgGYM52uU1nA12PKAJX2J6QY84sI7NiHc
 Sf0lURUTs5yg7/BGkAhAEdTqkM3yysq/WK0dFEbsUnSLiMa1LNgfAT0qM
 1ucvo6zrbFXTPYtZIjQQogl8XfvmFOwNScWqMHAjGJph7wGnNuOkFB6n1
 jpJ7jA6Ei6ru3NRtLi8vEe+ZW9LD/YTHHsIdgc9jfipNA/DlSxIBrcbNE
 XBgK4UAyheeA4NzWgedj49iBmYQMfzv2JqHRE+W6gu017y78CaFeP3lC7
 8g3pZ5oLxTuRInsOx7UymArFIqIawxNUDRxSOJYiTEs57Srr28ghSSI2o w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="7401633"
X-IronPort-AV: E=Sophos;i="6.06,192,1705392000"; 
   d="scan'208";a="7401633"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 18:58:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,192,1705392000"; 
   d="scan'208";a="8223686"
Received: from shekharc-ms-7d25.iind.intel.com ([10.190.239.16])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 18:58:42 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, clinton.a.taylor@intel.com,
 shekhar.chauhan@intel.com
Subject: [PATCH] drm/i915/lnl: Modeset sequence change for DP on LNL
Date: Thu, 29 Feb 2024 08:27:52 +0530
Message-Id: <20240229025752.651864-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
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

Currently, the driver is only waiting for 1ms for
idle patterns. But starting from LNL and beyond,
the MST wants the driver to wait for 1640us before
timing out (which we round up to 2ms).

BSpec: 68849
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bea441590204..05ba3642d486 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3680,7 +3680,7 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 
 	if (intel_de_wait_for_set(dev_priv,
 				  dp_tp_status_reg(encoder, crtc_state),
-				  DP_TP_STATUS_IDLE_DONE, 1))
+				  DP_TP_STATUS_IDLE_DONE, 2))
 		drm_err(&dev_priv->drm,
 			"Timed out waiting for DP idle patterns\n");
 }
-- 
2.34.1

