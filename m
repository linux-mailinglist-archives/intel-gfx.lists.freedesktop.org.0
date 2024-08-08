Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5154194B724
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 09:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D9910E66E;
	Thu,  8 Aug 2024 07:10:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WBa5xkip";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7D889048;
 Thu,  8 Aug 2024 07:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723101026; x=1754637026;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=twSN22Lw4c9tU6ebTo6+9jkyKaSlnyHYG5mdBSVTDXM=;
 b=WBa5xkip+YHrLhJb7QEh9gFNvW6xIFffo4xHXPYD/XugY8T7grRd+5lv
 /8trZA3vhAyn7uFLWvVBkv88hI5ge7SZVyFW0Biwk62Et2TKLwfEOPwcq
 y9rxrYo1O8FpfrVVUTu0pP0Vo9FJL1DcN3Zn5SjTXrnmdUCqCFMKrV3Tb
 FD1X8bmpvDpawyJxTK8XNPk580wXLWagtKGxGb3YU35gJxKo2QZ4zoKr1
 FCWAJFniecR37alaF+zursuFGMB6jAMV+bZgRBFKwzImmM/HHDbAotjRb
 GRLvGr7BLTgFT1KF1AOuHm2p8YuNnGG24zEJr3ZfDXLI5lRNnuNqqjPiY w==;
X-CSE-ConnectionGUID: Zn+Ti8TBSxyZbssXeq1tvA==
X-CSE-MsgGUID: ZDYl52riQu6TT1A2GU81nw==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="32353571"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="32353571"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 00:10:25 -0700
X-CSE-ConnectionGUID: uyYHhN//SC2LBtWNQyQDKw==
X-CSE-MsgGUID: 4ANp0nyORrC1Je9cy4DTzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="61232329"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa003.fm.intel.com with ESMTP; 08 Aug 2024 00:10:23 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2] drm/xe/display: Change HPD to polling on runtime suspend
Date: Thu,  8 Aug 2024 12:30:37 +0530
Message-Id: <20240808070037.3187006-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
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

HPD is interrupt based and on runtime suspend change it to polling as
HPD is not a wakeup event. A worker thread is scheduled for doing this
polling and it keeps polling for HPD live status on an internval of 10s.
On runtime resume disable polling and fallback to interrupt mechanism.

v2: move poll_enable() to xe_display(Imre)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 78cccbe28947..989022d21052 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -315,6 +315,10 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
+	/* Enable hpd polling on runtime suspend */
+	if (runtime)
+		intel_hpd_poll_enable(xe);
+
 	intel_suspend_encoders(xe);
 
 	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);
-- 
2.25.1

