Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL86EogboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 038831A3FD2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88CA210E8B0;
	Thu, 26 Feb 2026 10:08:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c7AVCrH9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC2610E8B1;
 Thu, 26 Feb 2026 10:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100485; x=1803636485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nlRfQjBTAD4fTZ9wVv8rvoeclypSQmHHr8R+OIxF4Hc=;
 b=c7AVCrH91aQLPSuIC49wE/so6qywe+IvlQFowOnBvCjD/5uVQM7NxC2V
 VFItU8wwU/AH6iSD2ZXqusnICnmpBfweIE9znVKOsE3rwxXxDodfnHw36
 melXt7RlBWIyg6H4wiYKFvemiIX+j4JEtXkNO8aKsBP7HwlLL/8UUhW2l
 /9P7a4p6xiTtiMOBteX7GZzJeTKzOpD33c5zwBuOy2GoeUQIgrimaO2eb
 +uwp2ifUNa6QK/ZJp3ZGRsfLEXwXPU9bDA669hIPgDvp0Onda6q5IdFZh
 R3wJyNG6+gPiNL0NTr1iAaBu9J6cQr/fVSmUSoYaMoYUs/LAUdZtO1PUK g==;
X-CSE-ConnectionGUID: 3CltV1BHRjukbd7atbAkcQ==
X-CSE-MsgGUID: rUQ46G5NQ8asAfungXUjgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83866887"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83866887"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:05 -0800
X-CSE-ConnectionGUID: 0SrlXf35RQKxEVyxUmjlEQ==
X-CSE-MsgGUID: RaSR9k/7RUCZdzaEnQVZrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="216533082"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:03 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 05/19] drm/i915/overlay: Relocate the underrun check
Date: Thu, 26 Feb 2026 12:07:24 +0200
Message-ID: <20260226100738.29997-6-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 038831A3FD2
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the underrun check out from intel_overlay_continue()
so that the DOVSTA register access can stay on the display
side of the parent vs. display driver split.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index b2458840dfc4..8c6e9c19b3f5 100644
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

