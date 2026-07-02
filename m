Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id atUCC/wPRmrGIgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 09:15:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6774A6F4102
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 09:15:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OERyqQhz;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA0DE10E459;
	Thu,  2 Jul 2026 07:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 027E910E08E;
 Thu,  2 Jul 2026 07:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782976503; x=1814512503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9jBboZnHLsZS3CzKFHlRL6PBYVcg6MqZlVo7Y+9m31M=;
 b=OERyqQhzgKR2qRwVWW5rALajty5N2B7r8+ny7nTpTKsc07BEYMXLzjzl
 b9wfG68QDlj1fKVrEStFvdbghHGzDDzwQw72IqkZiMeqpLoIzbSrVFSFk
 jT/g2YGf/tBFM3OmnjOgmwIvUl+qLbuuR0HmyykHxoP08RvxMpwmHquIA
 lqvDby6dM6MuQ+f1Uzp5um8FkBM95TLCRAFDolH2CSHLuGN87llR3kD2a
 zUGrI20rrengTu32Tvwf57gqYa4c8F89xVa8t9W2RRd/nPMvs+Y8mnwfW
 5O7+nF+hhLEgJvfLjfQM+7Bq57Cz+5olVnh5ynHwy0eu8ZLbbxJqR7Jk5 g==;
X-CSE-ConnectionGUID: a9wVQQ+KRxS1w71VpKT7Bw==
X-CSE-MsgGUID: GHpI0WCRSuy8yRWCNYXySw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="83586484"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="83586484"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 00:15:02 -0700
X-CSE-ConnectionGUID: OiIb2+clQEKGmqBjo0luKA==
X-CSE-MsgGUID: 9wrXf0zHRP6gFzym30TUNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="254711820"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.209])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 00:15:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v2] drm/xe/display: add xe_display_pm_runtime_resume_early()
Date: Thu,  2 Jul 2026 10:14:57 +0300
Message-ID: <20260702071457.2985893-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <04158267b9d3715512bfb46c9772da04d3372184.1782913901.git.jani.nikula@intel.com>
References: <04158267b9d3715512bfb46c9772da04d3372184.1782913901.git.jani.nikula@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6774A6F4102

Add new display runtime PM hook xe_display_pm_runtime_resume_early(), to
be called before IRQ resume. This is initially a no-op placeholder.

Add comments on the timing relative to irq suspend/resume to all the
runtime PM hooks.

v2: Add stub for CONFIG_DRM_XE_DISPLAY=n

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 13 +++++++++++++
 drivers/gpu/drm/xe/display/xe_display.h |  2 ++
 drivers/gpu/drm/xe/xe_pm.c              |  2 ++
 3 files changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 01b6501a204a..306c853dd07a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -349,6 +349,7 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
 	intel_display_driver_runtime_pm_enable(display);
 }
 
+/* before irq suspend */
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
@@ -364,6 +365,7 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 	intel_hpd_poll_enable(display);
 }
 
+/* after irq suspend */
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
@@ -382,6 +384,17 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	intel_dmc_wl_flush_release_work(display);
 }
 
+/* before irq resume */
+void xe_display_pm_runtime_resume_early(struct xe_device *xe)
+{
+	if (!xe->info.probe_display)
+		return;
+
+	if (xe->d3cold.allowed)
+		return;
+}
+
+/* after irq resume */
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
 	struct intel_display *display = xe->display;
diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
index e5f9aed93206..0babb50bfc77 100644
--- a/drivers/gpu/drm/xe/display/xe_display.h
+++ b/drivers/gpu/drm/xe/display/xe_display.h
@@ -43,6 +43,7 @@ void xe_display_pm_resume_early(struct xe_device *xe);
 void xe_display_pm_resume(struct xe_device *xe);
 void xe_display_pm_runtime_suspend(struct xe_device *xe);
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
+void xe_display_pm_runtime_resume_early(struct xe_device *xe);
 void xe_display_pm_runtime_resume(struct xe_device *xe);
 
 #define XE_DISPLAY_DRIVER_FEATURES	(DRIVER_MODESET | DRIVER_ATOMIC)
@@ -80,6 +81,7 @@ static inline void xe_display_pm_resume_early(struct xe_device *xe) {}
 static inline void xe_display_pm_resume(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_suspend_late(struct xe_device *xe) {}
+static inline void xe_display_pm_runtime_resume_early(struct xe_device *xe) {}
 static inline void xe_display_pm_runtime_resume(struct xe_device *xe) {}
 
 #endif /* CONFIG_DRM_XE_DISPLAY */
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 99562f691080..a5289a9df8d2 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -700,6 +700,8 @@ int xe_pm_runtime_resume(struct xe_device *xe)
 	if (xe->d3cold.allowed)
 		xe_sysctrl_pm_resume(xe);
 
+	xe_display_pm_runtime_resume_early(xe);
+
 	xe_irq_resume(xe);
 
 	for_each_gt(gt, xe, id) {
-- 
2.47.3

