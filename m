Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sA3rFYQboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1367F1A3FCB
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D1F10E8A9;
	Thu, 26 Feb 2026 10:08:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cZVS/fCk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B0510E8AF;
 Thu, 26 Feb 2026 10:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100481; x=1803636481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vxgIdIim9gWdK5B6kmxqotjfOF5hcpLXLbFxuF1PHpI=;
 b=cZVS/fCkF5gV8uDLybluLHy/xTMaAqfBzGWill/Mgiz7V3sBBYjfocE6
 wYBiNydf16dQf1f5797gNbv93FKy/z4xhCLZgHGMeLhZM7wCyFmiSxHON
 jlRAhRZOVbLa+TBfqHnptKbYvzXBMAL8F+55PkIMSGjKEcv/tHG1hOpKR
 9AayklFrX02++fhKU2qrnT77yr8VuAEWPtDDGsz6AaXmBIx58xBZ03O7H
 jKZGYOc+pMgwL1ijmrY1oZU50IAsmIGLn67cGmm+gfGxleviczbh9BguV
 28iWfhFFXjMIE4+7vP9C9mGSZLMMQ0yEqFUXrrZEQYNtIIHucg6fOrk8h w==;
X-CSE-ConnectionGUID: x/prZ93mSVCpW1YcPegTnQ==
X-CSE-MsgGUID: a+SORHi3TS2GAsdWJPUbow==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73063809"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="73063809"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:01 -0800
X-CSE-ConnectionGUID: BCYtG4xUSxe1uYyCQfsztQ==
X-CSE-MsgGUID: NjznHjdARlSZJTDN7hlMcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221026419"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:07:59 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 04/19] drm/i915/overlay: Remove redundant overlay->active
Date: Thu, 26 Feb 2026 12:07:23 +0200
Message-ID: <20260226100738.29997-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
References: <20260226100738.29997-1-ville.syrjala@linux.intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 1367F1A3FCB
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that we have overlay->frontbuffer_bits, overlay->active
is completely redundant, so remove it.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 5831af146b14..b2458840dfc4 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -194,7 +194,6 @@ struct intel_overlay {
 	struct i915_vma *vma;
 	struct i915_vma *old_vma;
 	struct intel_frontbuffer *frontbuffer;
-	bool active;
 	bool pfit_active;
 	u32 pfit_vscale_ratio; /* shifted-point number, (1<<12) == 1.0 */
 	u32 color_key:24;
@@ -260,7 +259,7 @@ static bool i915_overlay_is_active(struct drm_device *drm)
 	struct intel_display *display = to_intel_display(drm);
 	struct intel_overlay *overlay = display->overlay;
 
-	return overlay->active;
+	return overlay->frontbuffer_bits;
 }
 
 /* overlay needs to be disable in OCMD reg */
@@ -283,7 +282,6 @@ static int intel_overlay_on(struct intel_overlay *overlay,
 		return PTR_ERR(cs);
 	}
 
-	overlay->active = true;
 	overlay->frontbuffer_bits = frontbuffer_bits;
 
 	if (display->platform.i830)
@@ -392,7 +390,6 @@ static void intel_overlay_off_tail(struct intel_overlay *overlay)
 
 	intel_overlay_release_old_vma(overlay);
 
-	overlay->active = false;
 	overlay->frontbuffer_bits = 0;
 
 	if (display->platform.i830)
@@ -514,7 +511,6 @@ void intel_overlay_reset(struct intel_display *display)
 	overlay->old_xscale = 0;
 	overlay->old_yscale = 0;
 	overlay->crtc = NULL;
-	overlay->active = false;
 	overlay->frontbuffer_bits = 0;
 }
 
-- 
2.52.0

