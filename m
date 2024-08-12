Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF5394EB5D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 12:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B5EB10E1AB;
	Mon, 12 Aug 2024 10:41:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZXVHCTYb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE5910E1AB;
 Mon, 12 Aug 2024 10:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723459310; x=1754995310;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E70z4N6uUqf/CHyI2Ev59vNMX84olo8lSX2LZBXoWus=;
 b=ZXVHCTYb5x3SwmPl5ClPoE7YKHON7Tj68t38Rgsl94FG1qf0TV67O2fM
 sz/M0+94uHuvA9Qa9bgCEMPmgMS1fLZikxkWaTFV8pdtjbdv+IT/M9HXO
 RJgRaJJiUWma6BmpeNpSlM6WUtKXHoGwlHApUpcyE1MY2hPYuN6ed7oFJ
 kNRXuuHphpPrqpYk4cY7+W4TWf/aYkqQezxpfHQPJoqS+qLLqq6DoSbRH
 c0JxbByMzfBQMRTID3TC5+4eNh/Dy6vTVIv6sntpgNO2VlJ9my0NdnO/c
 EzzRT6p/cRXHpnDL6LoWjraMGwPPoMiWnNc9+l0G5wSwr3PIXwTAI8UDh Q==;
X-CSE-ConnectionGUID: nMScdf02SNujFfRF1W067Q==
X-CSE-MsgGUID: eMdSmOdRQWefR0aQ0dKqbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="21125758"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="21125758"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 03:41:49 -0700
X-CSE-ConnectionGUID: cuXFCT/7TVaAHdaNVWzixA==
X-CSE-MsgGUID: L0DNO3VySQ6J9FbT4JEt9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="62349812"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa003.fm.intel.com with ESMTP; 12 Aug 2024 03:41:48 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv3] drm/xe/display: Change HPD to polling on runtime suspend
Date: Mon, 12 Aug 2024 16:02:02 +0530
Message-Id: <20240812103202.3433041-1-arun.r.murthy@intel.com>
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
index 0e4adde84cb2..4b8b28f96063 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -309,6 +309,9 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
+	if (runtime)
+		intel_hpd_poll_enable(xe);
+
 	intel_encoder_suspend_all(&xe->display);
 
 	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
-- 
2.25.1

