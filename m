Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHB/E2D932ntbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 013D7407E06
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 23:04:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8967E10E759;
	Wed, 15 Apr 2026 21:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Az89/8uP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4746B10E758;
 Wed, 15 Apr 2026 21:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776287065; x=1807823065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z92L6RDZQaqFTSAglzd+fwOIue1uIqZaCKFIZlYkHs4=;
 b=Az89/8uPoMFROmHU2q0qSzCKdT0HaLqgUB68CLRHSdmFz7aFNxcYJ4Xu
 Tl98bKBRuc0zAhr/vVwZ//4jTvnLrMAHkV69we7CAIGWB/Nkae1L0z0fp
 cZa+LJ3bGvs/twF9iXx5nm+FsLzW7nWsvC1qxjTuMf1Itjv5F4tpz9NfY
 EEVp6eFz18PrCsPFGgFhKwFDrJK14Ie0Yp5NpxW4m3YzXPyDvZxrFy8F4
 C2OKV5Nl/Uc0qhMDPlhucMoPiDe74qM2YSXmkbij8mi6n7KOxPlKi2yaz
 mMI4mO50EGB53pVV6K7XK7ymEVeP9L+OtafrD/w9sCBAAeEYPhMZYezm3 g==;
X-CSE-ConnectionGUID: Tpzq8YpPQVixzTCzgvWoXw==
X-CSE-MsgGUID: i34JZ5xFRB257s1CrdhuPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="81158080"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="81158080"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:25 -0700
X-CSE-ConnectionGUID: bkuqHAodRsSmDltRYPCD3A==
X-CSE-MsgGUID: uilNm6E4THStXhuxeY6Hlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; d="scan'208";a="225830448"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.108])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 14:04:23 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v3 2/7] drm/xe: Clear xe->display when no longer valid
Date: Thu, 16 Apr 2026 00:04:06 +0300
Message-ID: <20260415210411.24750-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
References: <20260415210411.24750-1-ville.syrjala@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 013D7407E06
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Don't leave a stale xe->display pointer hanging around after
the display driver has been torn down.

While xe shouldn't hit the display reset related issue that
affects i915, leaving stale pointer floating around still
seems like a bad idea.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 00dfa68af29a..0747044f7c2a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -520,9 +520,10 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 
 static void display_device_remove(struct drm_device *dev, void *arg)
 {
-	struct intel_display *display = arg;
+	struct xe_device *xe = arg;
 
-	intel_display_device_remove(display);
+	intel_display_device_remove(xe->display);
+	xe->display = NULL;
 }
 
 static bool irq_enabled(struct drm_device *drm)
@@ -587,12 +588,12 @@ int xe_display_probe(struct xe_device *xe)
 	if (IS_ERR(display))
 		return PTR_ERR(display);
 
-	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, display);
-	if (err)
-		return err;
-
 	xe->display = display;
 
+	err = drmm_add_action_or_reset(&xe->drm, display_device_remove, xe);
+	if (err)
+		return err;
+
 	if (intel_display_device_present(display))
 		return 0;
 
-- 
2.52.0

