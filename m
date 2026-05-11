Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +D0uHg5NAmpaqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9B2516677
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB58910E578;
	Mon, 11 May 2026 21:41:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fZPoJQaP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13F0C10E578;
 Mon, 11 May 2026 21:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535691; x=1810071691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7t2a2A62Z1Drxj4sM3XKYmWLyU7FaL7oGGTJ9YaJcGI=;
 b=fZPoJQaP+wTywO3oKvLvQU7R4m51HSqd8cgRka7iKYk42txal5FtmWtH
 y7QQnFPKjcroHZzO8cK/cRFjWTvS1o801oznatIOTmdoXBN1K9XwHeqtu
 BBwd0UW2gI57GEsnhaEX00wrEiYN78B1VwYhSU8J7gGMI7Ly5YMXZrvYd
 jH5jMgRN8mnP7d/EQY2t8Zn7aTCHSfi/GSagy6X9UFj90WC5R+fOg6zoX
 iPs21m1FrsTcJuZj6+23FYflNrj9fe+ERXsSrsC8mlJTtQr754xWc9m0D
 OmnjKjw0VSeqVN8UUW4Z23JwB1KHOCq2IeASL32l0VwGIKJNtu+46UrIZ w==;
X-CSE-ConnectionGUID: IxYi6QRLQAe6JNRY35tdzg==
X-CSE-MsgGUID: 6QT4ZdvHR1i42wRQ0QlUoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79618471"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79618471"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:31 -0700
X-CSE-ConnectionGUID: TAcGpHa3SiaiiiQY1Z/+iA==
X-CSE-MsgGUID: G3Vhx+aQTd+e97Nj/03/cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="233097235"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/14] drm/i915: Disable the plane if initial plane config
 readout failed
Date: Tue, 12 May 2026 00:41:09 +0300
Message-ID: <20260511214122.8468-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
References: <20260511214122.8468-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 4D9B2516677
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Properly turn off the plane if it is enabled but
.get_initial_plane_config() failed for whatever reason.

The hardware does (or at least did) perform some kind of automagic
plane disable when the pipe gets disabled, but we don't rely on that
anywhere else either. Also the GGTT/actual memory may get clobbered
afterwards, so leaving the plane enabled here could result in visual
corruption/GTT faults/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_initial_plane.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_initial_plane.c b/drivers/gpu/drm/i915/display/intel_initial_plane.c
index 034fe199c2a1..4d87627c6f6d 100644
--- a/drivers/gpu/drm/i915/display/intel_initial_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.c
@@ -128,11 +128,10 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 
 	/*
 	 * TODO:
-	 *   Disable planes if get_initial_plane_config() failed.
 	 *   Make sure things work if the surface base is not page aligned.
 	 */
 	if (!plane_config->fb)
-		return;
+		goto nofb;
 
 	if (intel_alloc_initial_plane_obj(display, plane_config)) {
 		fb = plane_config->fb;
@@ -184,7 +183,8 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
 	 * simplest solution is to just disable the primary plane now and
 	 * pretend the BIOS never had it enabled.
 	 */
-	intel_plane_disable_noatomic(crtc, plane);
+	if (plane_state->uapi.visible)
+		intel_plane_disable_noatomic(crtc, plane);
 }
 
 static void plane_config_fini(struct intel_display *display,
-- 
2.52.0

