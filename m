Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D2794B67C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 08:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6082810E64C;
	Thu,  8 Aug 2024 06:06:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aAwenu8a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D022610E64A;
 Thu,  8 Aug 2024 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723097213; x=1754633213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=twSN22Lw4c9tU6ebTo6+9jkyKaSlnyHYG5mdBSVTDXM=;
 b=aAwenu8awfHXml05moXYbv4gLdegrRagoZxuFcEGnrAWOKfjJZSMc0z4
 lZF7dZWOKhsd8qwFwz02JFt6EEj5JqqtEBguNE2vq+UKRvL2ujG0l+/As
 CTuFsr0ColBl967Ww4AXvyvqc4TwAn3/WSqJxE6EJvCWTDdIBlasgyzSL
 YgbVyCahbvqms7RlmT5tb9pBJhOOmWmovDRSwy5lkXiQeTsFqtdwGJtBl
 q13j5wvWbVpIilfUlTngBsXop6FSeNeprTCZOIaEjcSr+cWeRKxwLkN1v
 OwLuT/fZjiFLftr+4AtOFjx4Gd6LdxdqAFTKrtHh+EUkYCqv6TTyqdS9T w==;
X-CSE-ConnectionGUID: 7MK8Sd27QGmAvA1dPMWEmA==
X-CSE-MsgGUID: gwZCqPzzQCeuaWR+vZ122Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="46604651"
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="46604651"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 23:06:52 -0700
X-CSE-ConnectionGUID: pO4IcSDPSGqfHtSOJgAM4w==
X-CSE-MsgGUID: nekac/aJTZC/on33gR6UIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,272,1716274800"; d="scan'208";a="94662086"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa001.jf.intel.com with ESMTP; 07 Aug 2024 23:06:51 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [v2PATCH] drm/xe/display: Change HPD to polling on runtime suspend
Date: Thu,  8 Aug 2024 11:26:52 +0530
Message-Id: <20240808055652.3182460-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240806085513.3051107-1-arun.r.murthy@intel.com>
References: <20240806085513.3051107-1-arun.r.murthy@intel.com>
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

