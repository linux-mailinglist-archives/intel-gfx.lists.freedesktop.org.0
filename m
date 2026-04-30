Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +CFnOEJ582mt4AEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 17:46:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CD74A5109
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 17:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90DED10E449;
	Thu, 30 Apr 2026 15:46:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V/x50qxs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2441110E428;
 Thu, 30 Apr 2026 15:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777563968; x=1809099968;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DfOKwPNTG2NBs7AtuhxIMlTRLUoPaw4Ef3/mNa8jHHo=;
 b=V/x50qxsSFgDwMq5IFT7OGC5xe2+YVIbfsAUGqOdNpsG5P+LPBA5ju2V
 lS8np/s+I3ea6LrlaMOyTKnerdzyUL4QAvUk5/DIi5Im8OAeUziDVMmXY
 AzDoMAbN70SzKrrWIjkSxYSbJLJXpBPRbhklWS161hNM4DG+VRVZBxL8V
 irBtAhEXrSdEqPGQnKoM/gtOZGVbOWFKH1SGC4ryRDIJAGeyVpeV7MHwP
 HSE/PP2cs9uGmVwfmQU004/oc+RaBwiFZTV4I2CFTt1HWxl8bNa3/wDWy
 TT+qG66nYUc7AUHt3+XRneaak3RxkyyxlArhGv1Y6PprzZDRFeJoBTb7N w==;
X-CSE-ConnectionGUID: hNZ+r6NLTmyvpoNrwe0oHQ==
X-CSE-MsgGUID: /Obg9ouhQN+wJy/pbJEHeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11772"; a="78229683"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78229683"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 08:46:07 -0700
X-CSE-ConnectionGUID: Gdxleen9RcK9MdncpdWN5A==
X-CSE-MsgGUID: Aspt0zMmSK2c6/MUD06ITA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="239612184"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 08:46:05 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/2] drm/xe: Use fb cached min alignment
Date: Thu, 30 Apr 2026 18:46:01 +0300
Message-ID: <20260430154602.11393-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
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
X-Rspamd-Queue-Id: 47CD74A5109
X-Rspamd-Action: no action
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email]

From: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Instead of just looking at the first plane use the fb cached overall
minimum alignment.

This aligns with how the i915 version of intel_plane_pin_fb works.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
[vsyrjala: Rebase due to pin_params]
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 948446346c53..3e8114fbfbaa 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -459,6 +459,14 @@ static bool reuse_vma(struct intel_plane_state *new_plane_state,
 	return true;
 }
 
+static unsigned int
+intel_plane_fb_min_alignment(const struct intel_plane_state *plane_state)
+{
+	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
+
+	return fb->min_alignment;
+}
+
 int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		       const struct intel_plane_state *old_plane_state)
 {
@@ -469,7 +477,7 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	struct intel_fb_pin_params pin_params = {
 		.view = &new_plane_state->view.gtt,
-		.alignment = plane->min_alignment(plane, fb, 0),
+		.alignment = intel_plane_fb_min_alignment(new_plane_state),
 		.needs_cpu_lmem_access = intel_fb_needs_cpu_access(fb),
 	};
 
-- 
2.52.0

