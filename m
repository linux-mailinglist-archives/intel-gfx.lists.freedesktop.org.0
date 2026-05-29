Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGEBIwBzGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 635146014CC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC03E10FD4F;
	Fri, 29 May 2026 11:05:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FVZo+TIz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7549C10FD47;
 Fri, 29 May 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052734; x=1811588734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PshvvyqH2CaMtH+YSF3gbOKISGOuhe8uXReBkileBzg=;
 b=FVZo+TIzwbILt7ToQZXujA93AEn38cTczklQuRasdveDbrac9do9vN3B
 rGzsciPl/VEVRysnONvwkLLVMK7q+oHAimfoaRvHOhN1UNTd7S9eSZFzU
 28sijewLQyJed11V5Btp50UfDrdcv8i5izwr57ktaQEQaGIjnFEdgTGhe
 PxvDQSTRlNr9QoERg2agIiarvzoNxSjxSWTu6e3BTK0gQuDWO+P2n22rt
 CjRx09ECNHCMt/Qgd3R2/IX2dwGJUE0YzOVLntwo8o32m0ab8WoPUaFyf
 LzP49cBCP8BOhY+3FQBIzM6QBk6rgk3//WoVmJhXTaH0RQ7ZGmDl4rDW+ w==;
X-CSE-ConnectionGUID: UapImZcaTJSJNXLpWtsypQ==
X-CSE-MsgGUID: wP2a4mRnQj6shUJzZAxGiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92015061"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92015061"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:34 -0700
X-CSE-ConnectionGUID: Rb57SFayQNuD95mQvZKgVQ==
X-CSE-MsgGUID: 3WDnAFrvSces7nW/2E7m2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="280942143"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 17/24] drm/xe/display: use intel_display_driver_pm_shutdown()
Date: Fri, 29 May 2026 14:04:01 +0300
Message-ID: <358f27591a93cd19db9f677939c9b49a1f1d9a03.1780051905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780051905.git.jani.nikula@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 635146014CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Replace direct intel_display_driver_pm_suspend() and additional calls
with intel_display_driver_pm_shutdown(). This switches to use
drm_atomic_helper_shutdown() instead of drm_atomic_helper_suspend(),
which is the more appropriate thing to do anyway.

Not calling intel_display_driver_pm_suspend() from the xe shutdown path
unblocks further follow-up changes.

There's a slight functional change in that
intel_display_driver_shutdown() returns early for !HAS_DISPLAY(). Assume
this is what we want, and there are no cases where display engine is
present but all pipes have been fused off.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index fdc999c62bc9..99bcaa49d11a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -196,16 +196,7 @@ void xe_display_shutdown(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_display_driver_pm_suspend(display);
-
-	intel_encoder_block_all_hpds(display);
-	intel_hpd_cancel_work(display);
-
-	if (intel_display_device_present(display))
-		intel_display_driver_suspend_access(display);
-
-	intel_encoder_suspend_all(display);
-	intel_encoder_shutdown_all(display);
+	intel_display_driver_shutdown(display);
 
 	intel_opregion_suspend(display, PCI_D3cold);
 
-- 
2.47.3

