Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMYDOi7qw2lvugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:59:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA1B326438
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 14:59:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0FF10E700;
	Wed, 25 Mar 2026 13:59:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DEkkzEUX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A8E10E6FC;
 Wed, 25 Mar 2026 13:59:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774447147; x=1805983147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bSYYybtnOliqBjS9ocIHkycaVFcG2AyZlfvHqrNSYpA=;
 b=DEkkzEUXjCKiLTyuEVQuPAeN0oTEVzYWgS62A3al3lSvOl409bl0Eq2b
 QCZxZoSrbAf+ZBQUouqRKP3F3zVTT7qB9PFpyk3aRUW8/U2I2yYir8uBB
 N4EEzo4N1UZHbETM9JSktLwgpoLgb6e3RTxd1BwlCB7aB6QTEUB6Dp+rn
 opngk9qqIhWEUHNOpYlJEWVyWFN/yLh+zzrSmqSV07o/EKGsR5QaaXT6w
 HDh2JOcv7xOUFItQBqblbX7r6IBvFzh1HYkpQV8Vm/rsVju60IHrWBkh4
 0b+b45PetlGvOfmPdHc8LDf83Cz9smC9QjE0Ms+2tzuDXB1glHg42dUZV w==;
X-CSE-ConnectionGUID: jAL4ogx/TB21eBSHNv8S4A==
X-CSE-MsgGUID: tfEAZLDFR2KywreeCAtisg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75365837"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75365837"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:59:06 -0700
X-CSE-ConnectionGUID: Uy1zKYJnQZKeLC3QVAnfqw==
X-CSE-MsgGUID: 4RFYQlN8RuaxQlba0kOoLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="248197456"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.117])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 06:59:05 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915: Split the pipe_src dump to its own line
Date: Wed, 25 Mar 2026 15:58:46 +0200
Message-ID: <20260325135849.12603-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260325135849.12603-1-ville.syrjala@linux.intel.com>
References: <20260325135849.12603-1-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 8CA1B326438
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The pipe_src dump doesn't really fit in with the rest
of the guys (pixel_rate, port_clock, min_cdclk) included
on the same line. Split pipe_src onto its own line,
next to the related pfit stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 234843b8f83a..63a61caa059e 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -320,9 +320,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "pipe mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
 	intel_dump_crtc_timings(&p, &pipe_config->hw.pipe_mode);
-	drm_printf(&p, "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d, min cdclk %d\n",
-		   pipe_config->port_clock, DRM_RECT_ARG(&pipe_config->pipe_src),
-		   pipe_config->pixel_rate, pipe_config->min_cdclk);
+	drm_printf(&p, "port clock: %d, pixel rate %d, min cdclk %d\n",
+		   pipe_config->port_clock, pipe_config->pixel_rate,
+		   pipe_config->min_cdclk);
 
 	drm_printf(&p, "linetime: %d, ips linetime: %d\n",
 		   pipe_config->linetime, pipe_config->ips_linetime);
@@ -334,6 +334,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   pipe_config->scaler_state.scaler_id,
 			   pipe_config->hw.scaling_filter);
 
+	drm_printf(&p, "pipe src: " DRM_RECT_FMT "\n",
+		   DRM_RECT_ARG(&pipe_config->pipe_src));
+
 	if (HAS_GMCH(display))
 		drm_printf(&p, "gmch pfit: control: 0x%08x, ratios: 0x%08x, lvds border: 0x%08x\n",
 			   pipe_config->gmch_pfit.control,
-- 
2.52.0

