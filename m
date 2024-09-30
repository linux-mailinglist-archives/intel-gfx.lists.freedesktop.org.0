Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CA5989ADD
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 08:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BD0E10E38D;
	Mon, 30 Sep 2024 06:48:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ST5n3TOF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3A110E38B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 06:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727678897; x=1759214897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=96+Xi/49v/8qov6pU+Ff/BOKdAwUnr6yFHB10p9+i9k=;
 b=ST5n3TOFT91VhE6VhTDQpV/Y6ukVONzTMneetcHvnfrzmp4JsfS6hdbR
 WeYWygTQxTVIhelj4bzFVhMzGgmh72KUJ+hrjHU4OU4F9uKAl/KqIcB8M
 R028WoLlmmbYVKw9VhUVJtlJu6DWUEz0B2ZzpBEwh7P9GMUysH+JUryXK
 5BzbvbSZaIa7jTU33uSSMHzWDrVihXCpsCdk2vEzQIQuD6c3YOBu2BEiI
 VoTGxfCBi+FHolwI+WF0NCmBXiuf3CJivWRySl9sL4iFsk/93mU7ra47w
 WYigD/907gWJGJfyuWH3bXpaFFHpgZil16zNiQQZI+HuoczTZaQbL9Z+R Q==;
X-CSE-ConnectionGUID: ZPOkYQvXRtSLyLaGyQjEkA==
X-CSE-MsgGUID: TnzxJnyyRgGveKhcrpd+xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="14376380"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="14376380"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2024 23:48:17 -0700
X-CSE-ConnectionGUID: hYF15bmlSq2+Hz46FZ2hIQ==
X-CSE-MsgGUID: Zav9qNpsQiCzKoQbv31p9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73064505"
Received: from ettammin-desk.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.213])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2024 23:48:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/2] drm/i915/display: Fix Panel Replay vblank enable
 workaround
Date: Mon, 30 Sep 2024 09:47:52 +0300
Message-Id: <20240930064752.1602148-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240930064752.1602148-1-jouni.hogander@intel.com>
References: <20240930064752.1602148-1-jouni.hogander@intel.com>
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
index d71f4b0ee7357..728605b99e77e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1388,7 +1388,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
 	if (gen11_dsi_configure_te(crtc, true))
 		return 0;
 
-	if (display->irq.vblank_wa_pipes++ == 0 && crtc->block_dc_for_vblank)
+	if (crtc->block_dc_for_vblank && display->irq.vblank_wa_pipes++ == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 
 	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
@@ -1468,7 +1468,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
 	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
 	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 
-	if (--display->irq.vblank_wa_pipes == 0 && crtc->block_dc_for_vblank)
+	if (crtc->block_dc_for_vblank && --display->irq.vblank_wa_pipes == 0)
 		schedule_work(&display->irq.vblank_dc_work);
 }
 
-- 
2.34.1

