Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULlfKO4N3WkOZQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 17:38:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3262F3EE0F3
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 17:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034A510E3CE;
	Mon, 13 Apr 2026 15:38:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgapVcy9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B096310E3CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2026 15:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776094698; x=1807630698;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wr95eOWOsM0jEhU6/TCrUt1EFA/gQBdn59k27WWefDA=;
 b=mgapVcy91w0mxA2015eghsQ9Gs46fRpEychtJVnLuc7FBHLGIbaDeEJn
 FklLxiGqn1dPU0E+6mthKtfVY1+IsSs8mK9NuC5YjwdDOcr8knQfyQDmx
 jQn2O/DN9RBDIFbO6WY2reCSFguJaVYo/65wZbagJTqF8gtp5XqWr16jb
 IBhexIJ77JI66rVKzEvq2VhpxdW7ndGGYwFCiP1f2lEEgKZmYc0zCmUec
 tI8wZBiMMoXGUN+jwgA6TAqKw3OvYvMXL4TUocodbJ3vUQqx/2RIbjo1H
 fK+G3/5wuN7mu9WloIVuHfaM/ebce13axbZHN16ka3thJDOeBntLtRAFC w==;
X-CSE-ConnectionGUID: oyOdTqbfSQqQxhq+cB0Oyg==
X-CSE-MsgGUID: h+pQYNEESw2SaEqLwtxJjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76997227"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="76997227"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 08:38:18 -0700
X-CSE-ConnectionGUID: yJxeQMjURI2vbfhzZ6irag==
X-CSE-MsgGUID: +iRe5Rs6ScW+NTpFSyK5kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="225087146"
Received: from dut4086lnl.fm.intel.com ([10.105.10.78])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 08:38:18 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com, alex.zuo@intel.com, jonathan.cavitt@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2] drm/i915/display: Check some INVALID_TRANSCODER cases
Date: Mon, 13 Apr 2026 15:38:19 +0000
Message-ID: <20260413153818.60547-2-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jonathan.cavitt@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 3262F3EE0F3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

There are some cases in intel_ddi.c, such as in intel_ddi_is_audio_enabled
and intel_ddi_compute_config_late, where we attempt to perform a BIT
shift using a passed transcoder enum value.  This value may be -1,
INVALID_TRANSCODER, which can result in undefined behavior if this
occurs.

In the former case, we can simply return false if this is the transcoder
passed (as audio is not enabled on an invalid transcoder).

In the latter case, the likely expected behavior is to set the
crtc_state->sync_mode_slaves_mask to zero, so just do that directly and
avoid a risky bit shift.

The likelihood of either case occurring during normal execution is
unknown and possibly very low.  Regardless, this covers a static analyis
issue.

v2: Rewrite the latter case to streamline it (Ville)

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 178074316a2c..61d21fcdec95 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3875,7 +3875,8 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 static bool intel_ddi_is_audio_enabled(struct intel_display *display,
 				       enum transcoder cpu_transcoder)
 {
-	if (cpu_transcoder == TRANSCODER_EDP)
+	if (cpu_transcoder == TRANSCODER_EDP ||
+	    cpu_transcoder == INVALID_TRANSCODER)
 		return false;
 
 	if (!intel_display_power_is_enabled(display, POWER_DOMAIN_AUDIO_MMIO))
@@ -4636,6 +4637,10 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 		crtc_state->master_transcoder = ffs(port_sync_transcoders) - 1;
 
 	if (crtc_state->master_transcoder == crtc_state->cpu_transcoder) {
+		if (crtc_state->master_transcoder == INVALID_TRANSCODER) {
+			crtc_state->sync_mode_slaves_mask = 0;
+			return 0;
+		}
 		crtc_state->master_transcoder = INVALID_TRANSCODER;
 		crtc_state->sync_mode_slaves_mask =
 			port_sync_transcoders & ~BIT(crtc_state->cpu_transcoder);
-- 
2.43.0

