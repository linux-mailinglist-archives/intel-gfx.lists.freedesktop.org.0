Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMItLyFzGWogwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:06:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B3D60151E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C09D310FD66;
	Fri, 29 May 2026 11:06:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tdju2inC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6140510FD77;
 Fri, 29 May 2026 11:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052766; x=1811588766;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tm+8BA9mF4UZrzAy90Aat3QapBK09CsZrXkRnscDNjM=;
 b=Tdju2inCV/LQeF2FPdwU6kZ59XlPwvDO0c3ZutgWYEzUwUS82CYndo+K
 VHLOOKJMAAOnquljAxOyE52DMqENdpX6JfZjjZLIuiAf+bHdutC1c5bQA
 s1IXefWuwSe38QN0Kn7lsMRWIeRWBJJFQlXh8IRo7T0USRFv99M+B++Ff
 t70DSs4MwsTiM/YKWbgvEtnnx0aQLslB5pliGbNQyFobu20XIQ2ossFRw
 PND0dT+9y32TVcbykHODtopcgzrFWn/xfwG2nOqFIFktMMpb3f0we14CA
 5K5Sf6gYmH/KaXO9eY3/sANJPOsWOkn5aWASQAumEYfCA0woqpGNUwIJ4 w==;
X-CSE-ConnectionGUID: lTybFt0hSb6gPf2lPE+Npg==
X-CSE-MsgGUID: niLsaTrpTKewZbS0CN9o8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="81087081"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="81087081"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:06:06 -0700
X-CSE-ConnectionGUID: hO4JTPDfRvyoyDPtlzvkaQ==
X-CSE-MsgGUID: KwzpbLsAQU2s15YGC35LBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240273024"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:06:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 24/24] drm/xe/display: unify runtime suspend/resume with i915
 for non-d3cold
Date: Fri, 29 May 2026 14:04:08 +0300
Message-ID: <2b7015d5f0c2c6d7b91fd020cba25deda91c0baa.1780051905.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 39B3D60151E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

With the special d3cold handling in xe runtime suspend/resume separated,
unify the non-d3cold paths with i915. There are multiple changes here at
once that probably wouldn't make much sense to split out further.

Add the call to intel_display_driver_pm_runtime_suspend(), which in turn
starts calling intel_display_power_runtime_suspend(). Deep down, this
should take care of intel_dmc_wl_flush_release_work(), allowing us to
drop the extra call in xe_display_pm_runtime_suspend_late().

Add the call to intel_display_driver_pm_runtime_suspend_late(), which
starts calling intel_opregion_notify_adapter(). The
intel_hpd_poll_enable() call is also done here, postponed from the
previous location in xe_display_pm_runtime_suspend().

Add the call to intel_display_driver_pm_runtime_resume_early(), which
contains the intel_display_power_runtime_resume() and
intel_opregion_notify_adapter() counterparts found in
intel_display_power_runtime_suspend() and
intel_display_power_runtime_suspend_late(). (They are not symmetric.)

Finally, intel_display_driver_pm_runtime_resume() replaces the direct
calls to intel_hpd_init(), intel_hpd_poll_disable(), and
skl_watermark_ipc_update().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0fadc62e1cdd..cd7264d7dfe2 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -363,7 +363,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 		return;
 	}
 
-	intel_hpd_poll_enable(display);
+	intel_display_driver_pm_runtime_suspend(display);
 }
 
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
@@ -379,12 +379,7 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 		return;
 	}
 
-	/*
-	 * If xe_display_pm_suspend_late() is not called, it is likely
-	 * that we will be on dynamic DC states with DMC wakelock enabled. We
-	 * need to flush the release work in that case.
-	 */
-	intel_dmc_wl_flush_release_work(display);
+	intel_display_driver_pm_runtime_suspend_late(display);
 }
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
@@ -399,9 +394,8 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 		return;
 	}
 
-	intel_hpd_init(display);
-	intel_hpd_poll_disable(display);
-	skl_watermark_ipc_update(display);
+	intel_display_driver_pm_runtime_resume_early(display);
+	intel_display_driver_pm_runtime_resume(display);
 }
 
 
-- 
2.47.3

