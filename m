Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PXfcLq7rO2qIfQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C88C6BF2F8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 16:37:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=C8Ow9EjL;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9288A10E0B5;
	Wed, 24 Jun 2026 14:37:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A4910EF6B;
 Wed, 24 Jun 2026 14:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782311851; x=1813847851;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cJoXYt/YkjiRDkKwmndgjM5w+GV/Aij3L6Cgid1od7s=;
 b=C8Ow9EjLpDJRWkoBWuyk+peoGan0DRBy6BazyBkThYcuesXCIck/wmkX
 KUtwvp6NV/dCpcBQ+VT9YsPqw9YYnpWXDNH47YD5TJpNxcnkqmjMJiWz6
 w0G+vazeTXW23c/TFBvftWetRHdVjoEfIAPSf5l2GoiMIewV+Pzbm5wao
 F4yVGWRkldEFVrQyy3I+g5ERMxdsT4Qu/os0S0aE0wungBBJMHuNSXVkT
 rHmuYOC75gekXyGKyCh/BznY27+Gw7M45MqUvRa76tdi1d/BI0zO584pc
 +bX7s1/3Q+wkwjSqydKpS/lhaXc0a/rwXrmpDFij0jvMD77UJM84s48t5 g==;
X-CSE-ConnectionGUID: GmPl+eFrT1OQpZGL9bAHkA==
X-CSE-MsgGUID: qP63o8uoTeSmTT1WtzB+mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="86920329"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="86920329"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 07:37:31 -0700
X-CSE-ConnectionGUID: 7JmDqfqySvGy8BhYyMBM1A==
X-CSE-MsgGUID: 3CvGSTEbTEGZ22CWthXBlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="253799162"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.187])
 by ORVIESA003-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2026 07:37:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 6/8] drm/xe/display: separate d3cold handling from
 xe_display_pm_runtime_suspend_late()
Date: Wed, 24 Jun 2026 17:36:53 +0300
Message-ID: <447270c818c716a64dc88caa9650ee6455107fa0.1782311749.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1782311749.git.jani.nikula@intel.com>
References: <cover.1782311749.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C88C6BF2F8

Make the special d3cold paths completely separate from the rest of the
runtime pm calls.

The intel_dmc_wl_flush_release_work() call right after
xe_display_pm_suspend_late() might be completely redundant, but this
avoids any functional changes.

Wiggle the comment while at it. It gets duplicated for now, but this
will be addressed in the follow-up.

v2: Update comments

Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 493e9e09b6c9..bdafc010fae1 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -389,14 +389,14 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
+	if (xe->d3cold.allowed) {
 		xe_display_pm_suspend_late(xe);
+		/* Ensure the wakelock release work gets flushed */
+		intel_dmc_wl_flush_release_work(display);
+		return;
+	}
 
-	/*
-	 * If xe_display_pm_suspend_late() is not called, it is likely
-	 * that we will be on dynamic DC states with DMC wakelock enabled. We
-	 * need to flush the release work in that case.
-	 */
+	/* Ensure the wakelock release work gets flushed */
 	intel_dmc_wl_flush_release_work(display);
 }
 
-- 
2.47.3

