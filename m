Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIFbBRxzGWoQwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:06:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7FC601510
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686EF10FD5C;
	Fri, 29 May 2026 11:06:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jey2e1cl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 101A610FD5C;
 Fri, 29 May 2026 11:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780052762; x=1811588762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ReG2SsUNsgEQN/RWaez7zL1yh2Cxgzor4Amjw/KtVWE=;
 b=jey2e1clgpm4a8DJw3jM16R4B9OZKnHqBX8HmMJaN9V80RAhTYD+MFOv
 72AwqyvZ6AfRE8dyJYl5GQ5EkQLss44dPHxx4b6gFlUdAwmFh+E9WmK2W
 93MYrFskHQNsfZ5MdA6fmDf4lDTfQTkQrswQ8p7LGRdJtnyhIl3w8kcfJ
 tlabO0/P5ciO5soKl/xoYsf/e/7bWbaBc5uB+B6M7i6QlMM8fGGfufzej
 jHgrTIg5BCFWd8aq+DUgbmvmEbEaaUuZ4z9S+yS9n/nineEdTCzNgMh7j
 NjkiYI4ldh1y8J/EVklNhF3yZLXNOxneA18ImyrPvlzKXozsGzZNmJT18 Q==;
X-CSE-ConnectionGUID: A+oCB/zcSK6/EdQeOwCHSg==
X-CSE-MsgGUID: w6mC7yTQQeeRZyb1p8oVXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="81087069"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="81087069"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:06:01 -0700
X-CSE-ConnectionGUID: 8hrj6KtaRdqe/qqqvOdDog==
X-CSE-MsgGUID: fBv8sidxRyagIBzFx4EeLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240273019"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.147])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:05:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 23/24] drm/xe/display: separate d3cold handling from
 xe_display_pm_runtime_suspend_late()
Date: Fri, 29 May 2026 14:04:07 +0300
Message-ID: <5a604a4b846ef69f26586ba00a08961a82990713.1780051905.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: DC7FC601510
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Make the special d3cold paths completely separate from the rest of the
runtime pm calls.

The intel_dmc_wl_flush_release_work() call right after
xe_display_pm_suspend_late() might be completely redundant, but this
avoids any functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index b153bf9c83d8..0fadc62e1cdd 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -373,8 +373,11 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
+	if (xe->d3cold.allowed) {
 		xe_display_pm_suspend_late(xe);
+		intel_dmc_wl_flush_release_work(display);
+		return;
+	}
 
 	/*
 	 * If xe_display_pm_suspend_late() is not called, it is likely
-- 
2.47.3

