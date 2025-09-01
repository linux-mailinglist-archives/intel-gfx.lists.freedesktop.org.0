Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C122B3DFD0
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Sep 2025 12:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B917A10E0E8;
	Mon,  1 Sep 2025 10:10:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PP3OO/Vj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D309C10E0E8;
 Mon,  1 Sep 2025 10:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756721449; x=1788257449;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CHMFjl9uysxJi3ZmkyJ9AfwuFfzVp3fyc16mT5dz1BQ=;
 b=PP3OO/VjoxkvL0Xj3+LS1mQ6ZG+DKYQPtcLRE1NCUJ1ntAzGtcPWI5n8
 XEytJFmTCu8ZmRo9wooFG/cozyxyOer0k09dlvN1Sd/p1X5D8rMgy6RXX
 IScjG+NjGNrTGc9Vy/dABc1oN40zq4R+dwJSX9DxSMvCcWRQA4hIV+XYy
 hVj3abEOsr6NbaZLk6ejGwPc3tJ0SjQr90oDKKYk+fSBVEckAL3fwnqYc
 P5wBJxlDCd4Oe/BACYyE3mM12uXvZrnfAYJcFitv/US/+jctBFlE7B8RH
 qHtIHfWQ65REcJlc1HQNlBYfIcy2qe/rJKsgadoeI0L58B9myNwgR/qOu w==;
X-CSE-ConnectionGUID: ytwj7ckvQ9GY9z+R/95Tpg==
X-CSE-MsgGUID: hvBC1i/QSAy0A3XpApMV0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="46556679"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="46556679"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 03:10:48 -0700
X-CSE-ConnectionGUID: KXLGRXLHS6yYE4pibUBURQ==
X-CSE-MsgGUID: xld9sNeIT5GYYdHXidmC6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="208176825"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.141])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 03:10:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH] drm/i915/bios: Remove unnecessary checks of PSR idle frames
 in VBT binary
Date: Mon,  1 Sep 2025 13:10:33 +0300
Message-ID: <20250901101033.4176277-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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

PSR idle frames in VBT binary is a 4 bits wide bitfield. Checking if it's
below 0 or over 15 doesn't make sense. Remove these checks.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7d7193a05d88..3596dce84c28 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1567,10 +1567,7 @@ parse_psr(struct intel_display *display,
 
 	panel->vbt.psr.full_link = psr_table->full_link;
 	panel->vbt.psr.require_aux_wakeup = psr_table->require_aux_to_wakeup;
-
-	/* Allowed VBT values goes from 0 to 15 */
-	panel->vbt.psr.idle_frames = psr_table->idle_frames < 0 ? 0 :
-		psr_table->idle_frames > 15 ? 15 : psr_table->idle_frames;
+	panel->vbt.psr.idle_frames = psr_table->idle_frames;
 
 	/*
 	 * New psr options 0=500us, 1=100us, 2=2500us, 3=0us
-- 
2.43.0

