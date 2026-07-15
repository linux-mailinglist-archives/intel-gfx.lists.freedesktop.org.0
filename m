Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pMqeA4N4V2ocOwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:09:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6955A75DEF7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 14:09:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hh+gjpC7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC54E10F029;
	Wed, 15 Jul 2026 12:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137BE10F018;
 Wed, 15 Jul 2026 12:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784117375; x=1815653375;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DxxJA/mjWXXchxQrJQ3ms6VXET66Gqy0kLFG3Cg1Y+0=;
 b=hh+gjpC7byY+kDJaGASn5pwuWRqxzyrLBETrPD6yVm8TAaCpladTfsRD
 8HnaOpwrQ1pvAnT8kCxJNFtAIUwm9tXaMr0gVW6Xk9I6klJc5CjW2zYOu
 6DevpkD4d+I7W7CntS9mR499TuUyqmgIIQVYGe4fimeqFnMD8N25C+NkE
 CXapuIqDUkzVxPLi96jSDbghkNDkHnIQf8yzdGXUpeOjLz24Sfl++K/41
 laIWEOZacmdUf7iWXy2ZWCItSsDfBd3ve2j8PMEPjzj+fur9vzyNVyjVC
 AKXMgKXkYcoQUtPsuEhfLqNBzrEySRWxnJYXV+1Xj3X45Rwg7d45oPVuB A==;
X-CSE-ConnectionGUID: wrAAmGs5Qp6wq0y/7zW90w==
X-CSE-MsgGUID: +Jos+PSgQ/KuR8sC1wAP8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="96120985"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="96120985"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:09:35 -0700
X-CSE-ConnectionGUID: xMH4tXSPQRe0eEVmyrYk4Q==
X-CSE-MsgGUID: j6ndZrIBTz6vJTO0BPXkIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="254420561"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.168])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 05:09:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/cdclk: Use intel_cdclk_ppc() in
 intel_modeset_readout_hw_state()
Date: Wed, 15 Jul 2026 15:09:23 +0300
Message-ID: <20260715120926.10786-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260715120926.10786-1-ville.syrjala@linux.intel.com>
References: <20260715120926.10786-1-ville.syrjala@linux.intel.com>
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
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,linux.intel.com:from_mime,linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6955A75DEF7

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the hand roller intel_cdclk_ppc() with the real thing
in intel_modeset_readout_hw_state().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.h         |  1 +
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 12 ++++--------
 3 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d3c5e3438d19..1d7ff2cbaebb 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2908,7 +2908,7 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 }
 
 /* pixels per CDCLK */
-static int intel_cdclk_ppc(struct intel_display *display, bool double_wide)
+int intel_cdclk_ppc(struct intel_display *display, bool double_wide)
 {
 	return DISPLAY_VER(display) >= 10 || double_wide ? 2 : 1;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 1ff7d078b42c..a60cbf745ee2 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -22,6 +22,7 @@ struct intel_cdclk_config {
 	bool joined_mbus;
 };
 
+int intel_cdclk_ppc(struct intel_display *display, bool double_wide);
 void intel_cdclk_init_hw(struct intel_display *display);
 void intel_cdclk_uninit_hw(struct intel_display *display);
 void intel_init_cdclk_hooks(struct intel_display *display);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index e27a531e1aa2..14d829171c7d 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -854,14 +854,10 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 			 * FIXME don't have the fb yet, so can't
 			 * use plane->min_cdclk() :(
 			 */
-			if (plane_state->uapi.visible && plane->min_cdclk) {
-				if (crtc_state->double_wide || DISPLAY_VER(display) >= 10)
-					crtc_state->plane_min_cdclk[plane->id] =
-						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
-				else
-					crtc_state->plane_min_cdclk[plane->id] =
-						crtc_state->pixel_rate;
-			}
+			if (plane_state->uapi.visible && plane->min_cdclk)
+				crtc_state->plane_min_cdclk[plane->id] =
+					DIV_ROUND_UP(crtc_state->pixel_rate,
+						     intel_cdclk_ppc(display, crtc_state->double_wide));
 			drm_dbg_kms(display->drm,
 				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
 				    plane->base.base.id, plane->base.name,
-- 
2.54.0

