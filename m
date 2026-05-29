Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFFKJ89yGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:04:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7564460143A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A21A10FD2A;
	Fri, 29 May 2026 11:04:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HXPfypNZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA02310FD25;
 Fri, 29 May 2026 11:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052684; x=1811588684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NL0zwiWDJn8mCQ1ULuwo1IY7vG3fc+fvCCwBubdqMbI=;
 b=HXPfypNZx02TfzQK3KBRYGoTzQ88p8Y5MrD9SQYoZuVjucrVOGxpZBmN
 d4gAUw0TiDAJi7foZ7qe/7zu6wG1KvysrpbhSeplHoivfjaW58tc/IipX
 fpNTaRfszpSBXjqFt4JcDYUOR1ICsFi2aRsfG25Wj5yQeVZ1Vl7hcje9E
 3nAW+6S/BAqyb4bQ5LQ5cP5sYNPy/SPBMjAbjJMwdqWiXretRs1tm64Wl
 Ph6lD1nsscgpHdNpeSYLLC3ShHHZIa7+bMh+pmu9RNCOQ1zejFcWMDuBk
 NmXTBRtIbOUC8Lx1CJCj0uufdSEIqQpyqM0szUZEzRZmSSqGgTuoC2feq Q==;
X-CSE-ConnectionGUID: RE41rP+aSsCGO87JKz1xZg==
X-CSE-MsgGUID: eQj3u/ZtT565YjB5tqUDSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92377772"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92377772"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:04:44 -0700
X-CSE-ConnectionGUID: +W3keq8OQbKOAJA/qmsOkw==
X-CSE-MsgGUID: sv+bglzSRva+Esf3hrfoxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="246840880"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:04:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 04/24] drm/xe/display: remove
 intel_display_flush_cleanup_work() calls on suspend/shutdown
Date: Fri, 29 May 2026 14:03:48 +0300
Message-ID: <c7a1d389ef848ce823ccca21f5f35f9561adf88e.1780051905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1780051905.git.jani.nikula@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 7564460143A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

intel_display_driver_suspend() already has drm_atomic_helper_suspend()
and cleanup workqueue flush. The intel_display_flush_cleanup_work()
calls on suspend/shutdown should be redundant. Remove.

Link: https://lore.kernel.org/r/agRp6Was9FCQbKee@intel.com
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index c0d3e7d12823..6e82dc70ca89 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -312,8 +312,6 @@ void xe_display_pm_suspend(struct xe_device *xe)
 		intel_display_driver_suspend(display);
 	}
 
-	intel_display_flush_cleanup_work(display);
-
 	intel_encoder_block_all_hpds(display);
 
 	intel_hpd_cancel_work(display);
@@ -344,7 +342,6 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 		intel_display_driver_suspend(display);
 	}
 
-	intel_display_flush_cleanup_work(display);
 	intel_dp_mst_suspend(display);
 	intel_encoder_block_all_hpds(display);
 	intel_hpd_cancel_work(display);
-- 
2.47.3

