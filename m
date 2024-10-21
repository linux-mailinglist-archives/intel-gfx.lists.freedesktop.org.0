Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7288A9A9345
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E8910E5C1;
	Mon, 21 Oct 2024 22:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UUbX3Ryv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F5E10E5BD;
 Mon, 21 Oct 2024 22:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549686; x=1761085686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2vL4L6k2e2Rm1O0e14HIHO8Fm3BY233aEwWzwxtOw2E=;
 b=UUbX3RyvcjXtfV5q4I1Hk+xK2qAAihpByFT8ZdNu559Y5Q1cKw8b+ZQz
 9LlrvMypfCur1PiC3j8nGfpdKnshu2bcecK2OhR544m6B6jLsyTfVe1O7
 sTzzLD3pR3WX4hBKLPzvVakSJWw68YTvqGiHD0Z6xGR1jAJub3v+WHxLx
 fS7RlKls2W85HHeX7K1mNCbmzfME7ieBlw20wPIf+ToI1YKDoeK8fz/he
 z8T3g9UWLU+W6CY+/hAT6ogbWTRBtVTSDgs3qx7FcpgWCfbES10+Ekgc8
 v+WB1AOCCYoKrkmAc6LMdunaPvu4ZWSH5mIkR2VT1dIog0YljEm4+MBFZ A==;
X-CSE-ConnectionGUID: E+s94JBtRmKVyfSmZhLrKg==
X-CSE-MsgGUID: bj3ncF1MTimGvbhNW3view==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934451"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934451"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:06 -0700
X-CSE-ConnectionGUID: xozgzqxOR4uDVF7f0fuHqw==
X-CSE-MsgGUID: g0RTGpVRTqWikBnQrAYr6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009602"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:04 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 03/13] drm/i915/dmc_wl: Check for non-zero refcount in release
 work
Date: Mon, 21 Oct 2024 19:27:22 -0300
Message-ID: <20241021222744.294371-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
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

When the DMC wakelock refcount reaches zero, we know that there are no
users and that we can do the actual release operation on the hardware,
which is queued with a delayed work. The idea of the delayed work is to
avoid performing the release if a new lock user appears (i.e. refcount
gets incremented) in a very short period of time.

Based on the above, the release work should bail out if refcount is
non-zero (meaning new lock users appeared in the meantime), but our
current code actually does the opposite: it bails when refcount is zero.
That means that the wakelock is not released when it should be; and
that, when the work is not canceled in time, it ends up being releasing
when it should not.

Fix that by inverting the condition.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 8056a3c8666c..c298aef89449 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -72,8 +72,11 @@ static void intel_dmc_wl_work(struct work_struct *work)
 
 	spin_lock_irqsave(&wl->lock, flags);
 
-	/* Bail out if refcount reached zero while waiting for the spinlock */
-	if (!refcount_read(&wl->refcount))
+	/*
+	 * Bail out if refcount became non-zero while waiting for the spinlock,
+	 * meaning that the lock is now taken again.
+	 */
+	if (refcount_read(&wl->refcount))
 		goto out_unlock;
 
 	__intel_de_rmw_nowl(display, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
-- 
2.47.0

