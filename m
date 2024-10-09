Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B69996C72
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 15:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B11510E723;
	Wed,  9 Oct 2024 13:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RiOWw79r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF0C910E722
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 13:43:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728481383; x=1760017383;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tRtysHeGX1sFWMI5yjei21XqAfbCDS5jh9IgIoVhrJw=;
 b=RiOWw79rKUrNTqW4dYygDlm9Kf15F2zSu25Sg7aCD38+IAEzbqSR9/Pt
 KOf4VmjBvRdk9iSYjTtLsFtWiW7vm8c2YAn1K7RX82UMlcIIWNDnGTPmC
 gEKwIufis69uMRIi76ML/AW/5O+zKrQbCJCBDZNCMWLDf0WQG5Oqbb0OR
 PywTcbRU1hD4NQh2pctAcJR1SDAcUi6Ddggia1D6VML874+cmILiGslkQ
 T1US6V00WZ/x5OoiLTFeVJtvuMot+GYzEsdJPE4wDYFAEVrzmkSEadDdn
 6IYcXr+eD5eQJEI0ZgasVth5e0nRWmkIbPvY79ka5/kbU6KCFLKriskiH g==;
X-CSE-ConnectionGUID: U3D6Gql7Qn+aCSosQkn70A==
X-CSE-MsgGUID: 8UV6HFY2TpWlDh7MOZWQ5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="38347629"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="38347629"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:43:03 -0700
X-CSE-ConnectionGUID: yQH9UHcGTUOjMj75eJeehQ==
X-CSE-MsgGUID: njov4OJFS8Ce8dRrdU7AaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76150961"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.231])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:43:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 2/2] drm/i915/display: Fix Panel Replay vblank enable
 workaround
Date: Wed,  9 Oct 2024 16:42:25 +0300
Message-Id: <20241009134225.1322820-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241009134225.1322820-1-jouni.hogander@intel.com>
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently workaround is not applied when vblank is enabled on crtc that
needs the workaround if vblank is already enabled for another crtc that
doesn't need the workaround. Fix this by increasing counter only if crtc
needs the workaround.

Fixes: aa451abcffb5 ("drm/i915/display: Prevent DC6 while vblank is enabled for Panel Replay")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 8226ea218d77..263fe3be891c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1447,7 +1447,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (display->irq.vblank_wa_num_pipes++ == 0 && crtc->block_dc_for_vblank)
+	if (crtc->block_dc_for_vblank && display->irq.vblank_wa_num_pipes++ == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1478,7 +1478,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (--display->irq.vblank_wa_num_pipes == 0 && crtc->block_dc_for_vblank)
+	if (crtc->block_dc_for_vblank && --display->irq.vblank_wa_num_pipes == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
-- 
2.34.1

