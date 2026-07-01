Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MIpnMuobRWqf7AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F056EE658
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UeTnO39J;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E23210E385;
	Wed,  1 Jul 2026 13:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4E410E385;
 Wed,  1 Jul 2026 13:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782914024; x=1814450024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ePA0KFZW/OuHuY+kKyHNq2ol/v1/VB6cO61mBYP15Pg=;
 b=UeTnO39JH+V3bBv+fCGQ1V+Awxn65BaGS4qlB4LM0IGBrRKKWjlVCsJR
 6qsryiz3hXJqL0THYqL7mCeld9E8X0gatfz3UjnOMNltsGong18z0CGSp
 eV8/bBO+8Q6Ft0absY3rnR+yOEcPXgHC9SH+eVQ4pefXwG4r1X8FUNSNR
 3MllHtljZ0U1TP3XiDVkfa42z3SufREGddclSyb5iST4/CSJG+Q9VHj1z
 dhHEgWvdbMlCd7KsV9CKBFQZd4Aifv0N6YPOjOqnEAw34b/SeI5Ir7nEA
 /4fqdK1XTHjIHkqn0PKgjauNa1r1UMyVgQA2izz7oN+6jC/VAqFjOvUhE Q==;
X-CSE-ConnectionGUID: 7/hc4+4GTTmuF0CIGnGYhg==
X-CSE-MsgGUID: ewKJVnPMQdWRF3WdKUURjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83733969"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83733969"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:43 -0700
X-CSE-ConnectionGUID: 5kT4kRPgQpyecCQLWHWeHA==
X-CSE-MsgGUID: gUnz4v8eQ0+G2mgOhon7xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="249207317"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 rodrigo.vivi@intel.com
Subject: [RESEND v2 8/8] drm/xe/display: unify runtime suspend/resume with
 i915 for non-d3cold
Date: Wed,  1 Jul 2026 16:53:06 +0300
Message-ID: <16205a1ee08e83f6e2f4dd30ed98fc043684a73e.1782913901.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782913901.git.jani.nikula@intel.com>
References: <cover.1782913901.git.jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09F056EE658

With the special d3cold handling in xe runtime suspend/resume separated,
unify the non-d3cold paths with i915. There are multiple changes here at
once that probably wouldn't make much sense to split out further.

Add the call to intel_display_driver_pm_runtime_suspend(), which, for
the time being, is a no-op. The intel_hpd_poll_enable() is called later.

Add the call to intel_display_driver_pm_runtime_suspend_late(), which
starts calling intel_display_power_runtime_suspend() and
intel_opregion_notify_adapter(). Deep down, the former should take care
of intel_dmc_wl_flush_release_work(), allowing us to drop the extra call
in xe_display_pm_runtime_suspend_late(). The intel_hpd_poll_enable()
call is also done here, postponed from the previous location in
xe_display_pm_runtime_suspend().

Add the call to intel_display_driver_pm_runtime_resume_early(), which
contains the intel_display_power_runtime_resume() and
intel_opregion_notify_adapter() counterparts to the calls in
intel_display_power_runtime_suspend_late().

Finally, intel_display_driver_pm_runtime_resume() replaces the direct
calls to intel_hpd_init(), intel_hpd_poll_disable(), and
skl_watermark_ipc_update(). (The hotplug poll enable/disable calls are
asymmetric.)

v2:
- Rebase, move placement of the calls

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 306c853dd07a..8da4c457a4a0 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -362,7 +362,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 		return;
 	}
 
-	intel_hpd_poll_enable(display);
+	intel_display_driver_pm_runtime_suspend(display);
 }
 
 /* after irq suspend */
@@ -380,18 +380,21 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 		return;
 	}
 
-	/* Ensure the wakelock release work gets flushed */
-	intel_dmc_wl_flush_release_work(display);
+	intel_display_driver_pm_runtime_suspend_late(display);
 }
 
 /* before irq resume */
 void xe_display_pm_runtime_resume_early(struct xe_device *xe)
 {
+	struct intel_display *display = xe->display;
+
 	if (!xe->info.probe_display)
 		return;
 
 	if (xe->d3cold.allowed)
 		return;
+
+	intel_display_driver_pm_runtime_resume_early(display);
 }
 
 /* after irq resume */
@@ -407,9 +410,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 		return;
 	}
 
-	intel_hpd_init(display);
-	intel_hpd_poll_disable(display);
-	skl_watermark_ipc_update(display);
+	intel_display_driver_pm_runtime_resume(display);
 }
 
 
-- 
2.47.3

