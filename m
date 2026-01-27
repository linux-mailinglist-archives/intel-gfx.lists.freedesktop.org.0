Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AA8WMJCyeGkksQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9826D946C0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2751F10E21A;
	Tue, 27 Jan 2026 12:41:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z/q54LFw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4D310E55C;
 Tue, 27 Jan 2026 12:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769517710; x=1801053710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=X76fVjXUM+EUXPAQWqwUJ2huZ6jA5EhkFSyd2rcuPgE=;
 b=Z/q54LFwY0S+mF/Ng1jMT/jC5LZi2ShPvFENQ+nYPvmkt4cDQGAoCQ0r
 cN5/Moieq9nn6AtaBoqV6yKmg+OtqaJpneAn8k6zwI51jQm6znEiHz2ci
 0ixTBEii+eezjEJ34UuOosvc4gEpHVvoC9hd3tLr5P2gentVDedBXvH5x
 IMMjEhuc2haG9MgID/Cs6uVMxouF1j5Ab/DMRBUj/0y2D+xYh7fpGD4vr
 Z7yxdLfgRbQvjL5PBWEpueSlEYJ+AYUcEtfMhA29wNEusWYLAGjvdTrtd
 BsNCVYpfcgSsGvuzJljHLhRjSDbU7T0HHw2jM4x5E5lSUA2NrlDC012XU Q==;
X-CSE-ConnectionGUID: tYT2Cq8ES6eJPTGOnQ2QHA==
X-CSE-MsgGUID: LFon+50tTVWlH0rVb5ETPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70767662"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70767662"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:50 -0800
X-CSE-ConnectionGUID: ffZR8KJzR7Wytw1O2hhM6w==
X-CSE-MsgGUID: Xf+TJtT6Qj2nv7tHVWowTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="239231242"
Received: from ettammin-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:48 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v11 09/11] drm/i915/psr: Do PSR exit on frontbuffer flush on
 LunarLake and onwards
Date: Tue, 27 Jan 2026 14:41:18 +0200
Message-ID: <20260127124120.1069026-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127124120.1069026-1-jouni.hogander@intel.com>
References: <20260127124120.1069026-1-jouni.hogander@intel.com>
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
X-Rspamd-Server: lfdr
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 9826D946C0
X-Rspamd-Action: no action

We need to use intel_psr_exit in frontbuffer flush on LunarLake and
onwards if we want to move using trans push mechanism to trigger Frame
Change event.

Keep PSR1 and PSR2 HW tracking as it is for older platforms as this was
seen causing problems there.

v2: typo fixed

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9613c50623dc..9a4354c6bdda 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3559,7 +3559,14 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_enabled) {
+	if (DISPLAY_VER(display) >= 20) {
+		/*
+		 * We can use PSR exit on LunarLake onwards. Also
+		 * using trans push mechanism to trigger Frame Change
+		 * event requires using PSR exit.
+		 */
+		intel_psr_exit(intel_dp);
+	} else if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		/* Selective fetch prior LNL */
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
 			/* can we turn CFF off? */
@@ -3579,16 +3586,11 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		intel_psr_configure_full_frame_update(intel_dp);
 
 		intel_psr_force_update(intel_dp);
-	} else if (!intel_dp->psr.psr2_sel_fetch_enabled) {
+	} else {
 		/*
-		 * PSR1 on all platforms
-		 * PSR2 HW tracking
-		 * Panel Replay Full frame update
+		 * On older platforms using PSR exit was seen causing problems
 		 */
 		intel_psr_force_update(intel_dp);
-	} else {
-		/* Selective update LNL onwards */
-		intel_psr_exit(intel_dp);
 	}
 
 	if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-- 
2.43.0

