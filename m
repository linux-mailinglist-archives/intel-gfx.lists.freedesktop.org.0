Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 270eIujyL2plJgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:41:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FD46864E9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 14:41:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=MW9IrZOy;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD1A410E3EE;
	Mon, 15 Jun 2026 12:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F3EF10E3E7;
 Mon, 15 Jun 2026 12:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781527269; x=1813063269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Kbjphpql+ThHpQe7/5Q4sIwV9BLYwxbr3qobSFsoG0=;
 b=MW9IrZOy8S/ST0KXOU+TXo6rxwIwJLx4Q/mM5m9mdTV5bCCceJAffYe5
 5mKtfy7Q77X20DPmGbDe+CXlYLpt6waLCy0H5D2PwUrbkCy3xMRvkQsQS
 Myy5meRU9Pj6OMFhabTQcuL8GzBh1gwLWjJGTysvuU/rPTtnpSAz8/k+w
 YhcZN4HJfHhBqWoyysULO4YsreHZ5H+D+p7x+KVoHO79trTfzEWL0n+uo
 PAenWnhdShmIsga+ULYnpl6Y2DoFbDgog4vYtbNnKllcIllnjDXyhTAV5
 ewCcGPxb7i+GPz0iaZ2QkDVOflW1wzfetQ0K8JXbFD4IDtrgW/usrE/8q Q==;
X-CSE-ConnectionGUID: xkbqcgp5T2S0k0ywsnyd4g==
X-CSE-MsgGUID: 2+jjYfkRTSyCgh1boU6Zng==
X-IronPort-AV: E=McAfee;i="6800,10657,11817"; a="104935009"
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="104935009"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:41:09 -0700
X-CSE-ConnectionGUID: PXDQYm8yQ+29PdW11sqNzA==
X-CSE-MsgGUID: nE9r74bBQkm20yIBDZ8ZCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,206,1774335600"; d="scan'208";a="246349851"
Received: from mkosciow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.28])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 05:41:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/4] drm/xe/display: separate d3cold handling from
 xe_display_pm_runtime_suspend_late()
Date: Mon, 15 Jun 2026 15:40:47 +0300
Message-ID: <83b257cac313967d4344185669187dc7140049f4.1781527161.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1781527161.git.jani.nikula@intel.com>
References: <cover.1781527161.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 40FD46864E9

Make the special d3cold paths completely separate from the rest of the
runtime pm calls.

The intel_dmc_wl_flush_release_work() call right after
xe_display_pm_suspend_late() might be completely redundant, but this
avoids any functional changes.

Wiggle the comment while at it. It gets duplicated for now, but this
will be addressed in the follow-up.

v2: Update comments

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

