Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBD294E5A8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 06:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E888610E09C;
	Mon, 12 Aug 2024 04:12:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SFqxsPDR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD4B10E099;
 Mon, 12 Aug 2024 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723435954; x=1754971954;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IZ5EZjP4mvz4TsJ087T7AfWZMp3LaMBjKlDGiv+HjBw=;
 b=SFqxsPDRtd53K1atDA6T/i/I5JuDzDPOFrAmjEmO7PIz+aCXLVMY43Nm
 WUS0F1UaXkUUr8iq1s0MppL9HN/akVC+atvozuNrMaSsjeQOITMKQDBlS
 m09wG0vM9kJmzPFAgajw0YRVwpPowPld0ThL73cskDMhqMTvMggVpx7/y
 bmTr8MqOS7p2bMoOyq1xzE7sf5oHeSkJE1LoqX+tJ7qYEZ67QAWdnhrto
 d6Y9Gt6jJCEfc8DhToahav7nLQQDVTP6+TKZMr7/C9Q2tLLS/sXs+3OEJ
 oEoI6bPenwY/YXKwrAQKDVL/XmVJvLIdgz0lB9zaRwYcdKfXxU2hXKn9z w==;
X-CSE-ConnectionGUID: AUEp3WnzTo+NtVgeipUd8Q==
X-CSE-MsgGUID: mWq37JpoT5+UdvJ235kr4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="44046325"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="44046325"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2024 21:12:33 -0700
X-CSE-ConnectionGUID: bsPQQYEVRGiep8O3juAnEw==
X-CSE-MsgGUID: QcJyOpW6REKCFYIrnr+VZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="58856824"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa008.jf.intel.com with ESMTP; 11 Aug 2024 21:12:31 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv3] drm/xe/display: Change HPD to polling on runtime suspend
Date: Mon, 12 Aug 2024 09:32:46 +0530
Message-Id: <20240812040246.3311595-1-arun.r.murthy@intel.com>
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
v3: removed un-wanted comments (Jani)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 78cccbe28947..426b3f73c104 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -315,6 +315,9 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
+	if (runtime)
+		intel_hpd_poll_enable(xe);
+
 	intel_suspend_encoders(xe);
 
 	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);
-- 
2.25.1

