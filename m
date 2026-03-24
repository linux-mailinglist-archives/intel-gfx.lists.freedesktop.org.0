Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAjsNVCWwmkbfQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C781309B44
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 14:49:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E1510E6D9;
	Tue, 24 Mar 2026 13:49:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnzgjGZz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68A1310E6E3;
 Tue, 24 Mar 2026 13:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774360142; x=1805896142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=r7D/uqOkP5HW9N7RhabBzXPuBUsbqR5Yioq6AClUpL4=;
 b=OnzgjGZzvoVceIDddc+CqhghDXD3rkoQjPwJ8gecglC6g/bUnO6IRjQM
 X86bRqBtXjvS8MRzboVXEZCuG7olM9LfCQQs6mq+eAKUqzHntAsxECj8w
 iTgXyo0RwcOd+CajOT//BaHsLWH+cyHGIbdMvXorDKFFeCLzu89iNz7BD
 5WE0VRsB9QgYsQ5Lsno96knJXU9G6XF/vFOz03NgRZb3G/WOc3ct1xDVU
 Ypuz+/gKChQUv7+p5i3e/9WF6yT+dPF6qZoWGKBlbZYFPhrBdEls1i1Ko
 iubkwgoP2TlRBChdef+VKzelykV7QxgUc/WD7JX/M1v2KOCuFD8yArBhH w==;
X-CSE-ConnectionGUID: Q0OFX4b5SlOiQI/F83REMw==
X-CSE-MsgGUID: BznlYv47R7afGYAwGqiJTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="100818876"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="100818876"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:02 -0700
X-CSE-ConnectionGUID: XpReWNvbTgaL6kMd9Uq9pw==
X-CSE-MsgGUID: dM/99PANRPmbNv/uDkHgww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="229105087"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.220])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 06:49:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/9] drm/i915/wm: Consolidate SAGV pipe active/interlace
 checks to common code
Date: Tue, 24 Mar 2026 15:48:37 +0200
Message-ID: <20260324134843.2364-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
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
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 7C781309B44
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There are no differences between the platforms when
considering whether SAGV can be used when the pipe is
inactive or using an interlaced mode. Consolidate the
checks to common code.

Note that we weren't even checking for interlaced modes
on TGL+, but since we've previously soft defeatured
interlaced modes on TGL+ that was more or less fine.
The hardware does still have the capability though,
and in case we ever decide to resurrect it having the
check seems like a good idea.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index bcdca1b99fe4..e37fde9f765d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -308,12 +308,6 @@ static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	enum plane_id plane_id;
 	int max_level = INT_MAX;
 
-	if (!crtc_state->hw.active)
-		return true;
-
-	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
-		return false;
-
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
@@ -356,9 +350,6 @@ static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum plane_id plane_id;
 
-	if (!crtc_state->hw.active)
-		return true;
-
 	for_each_plane_id_on_crtc(crtc, plane_id) {
 		const struct skl_plane_wm *wm =
 			&crtc_state->wm.skl.optimal.planes[plane_id];
@@ -388,6 +379,12 @@ bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->inherited)
 		return false;
 
+	if (!crtc_state->hw.active)
+		return true;
+
+	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
+		return false;
+
 	if (HAS_SAGV_WM(display))
 		return tgl_crtc_can_enable_sagv(crtc_state);
 	else
-- 
2.52.0

