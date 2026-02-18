Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WPMvB6TalWn3VQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4828157651
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Feb 2026 16:28:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77DD110E5DA;
	Wed, 18 Feb 2026 15:28:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3/Vmck6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D610A10E5E3;
 Wed, 18 Feb 2026 15:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771428513; x=1802964513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JxdYjY/8Ult9KLN0z19vt6LJM7Newuv5ujHeza4HFqM=;
 b=B3/Vmck6npDrKMho6gMmOwHAnf6d2ZdQVr/fwdg5BtSLZwEfRH04CK1F
 tCMxx43+OemWt8z51dpKcj5g+b5E6Nr91RfmEZkmoy0IuFkwpEDozwA8R
 pHCxM62xGXk2Xh63oqn1/LbdYXrBoeKci/8VIsGdQ4A3lkc6F29WD1VEB
 2R+XWegZONebCPd8ojnb+0rmgLKO6Vdnq6kWFkxISVF24C8AjWvDCfHl/
 PlCdUgT4MIWTmtWPmamF6a6CZ7KOGIDfXsrmoqs51TkK0NWGJB2Krooy0
 T6WHIKo7JoUli65G3edP6S0OG4KKEC1gxdKo56tv7OPTShqLUjfgTQLcd A==;
X-CSE-ConnectionGUID: YNslt+2wTv2+DYxn4JbdJQ==
X-CSE-MsgGUID: UESISEnBSMyvyX+75diqaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72420170"
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="72420170"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:32 -0800
X-CSE-ConnectionGUID: obNOs2oASqC3UBiXRB+SCg==
X-CSE-MsgGUID: F3Q4+661Rmy3w8SNzhaj/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,298,1763452800"; d="scan'208";a="214335145"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.66])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2026 07:28:32 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/19] drm/i915/overlay: Relocate the underrun check
Date: Wed, 18 Feb 2026 17:27:52 +0200
Message-ID: <20260218152806.18885-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
References: <20260218152806.18885-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E4828157651
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the underrun check out from intel_overlay_continue()
so that the DOVSTA register access can stay on the display
side of the parent vs. display driver split.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 9bd11dde29d6..e1707a678acb 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -331,18 +331,13 @@ static int intel_overlay_continue(struct intel_overlay *overlay,
 	struct intel_display *display = overlay->display;
 	struct i915_request *rq;
 	u32 flip_addr = overlay->flip_addr;
-	u32 tmp, *cs;
+	u32 *cs;
 
 	drm_WARN_ON(display->drm, !i915_overlay_is_active(display->drm));
 
 	if (load_polyphase_filter)
 		flip_addr |= OFC_UPDATE;
 
-	/* check for underruns */
-	tmp = intel_de_read(display, DOVSTA);
-	if (tmp & (1 << 17))
-		drm_dbg(display->drm, "overlay underrun, DOVSTA: %x\n", tmp);
-
 	rq = alloc_request(overlay, NULL);
 	if (IS_ERR(rq))
 		return PTR_ERR(rq);
@@ -810,6 +805,7 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 	bool scale_changed = false;
 	struct i915_vma *vma;
 	int ret, tmp_width;
+	u32 tmp;
 
 	drm_WARN_ON(display->drm,
 		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
@@ -895,6 +891,11 @@ static int intel_overlay_do_put_image(struct intel_overlay *overlay,
 
 	iowrite32(overlay_cmd_reg(params), &regs->OCMD);
 
+	/* check for underruns */
+	tmp = intel_de_read(display, DOVSTA);
+	if (tmp & (1 << 17))
+		drm_dbg(display->drm, "overlay underrun, DOVSTA: %x\n", tmp);
+
 	ret = intel_overlay_continue(overlay, vma, scale_changed);
 	if (ret)
 		goto out_unpin;
-- 
2.52.0

