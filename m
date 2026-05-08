Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eB2II5r0/WlxlAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 321EE4F7CA0
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 16:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8FC610F509;
	Fri,  8 May 2026 14:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgPaBmVN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 475BB10F4FB;
 Fri,  8 May 2026 14:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778250903; x=1809786903;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5h24Zxt8Tjj1ZmgH7rb3eliKCG10HUqSnvL4sQrpDZI=;
 b=DgPaBmVN5QCq2V2rXOdpL3yOnpVnqpnmndrqcuECfyGr8AnMfGeLv78T
 qb38XgrcEjPWdkk7Y8wjoSrUckNsCN2fdFUH/5nfMqR0PXPUvLjXbQGc7
 qanu1KG7S3s/pabsKTYhX03zgxowirWkn6SYmaSy8O4OOMh+JY7+BBFYo
 aJXRX9lIGfI08TgMZkFSyPTSpqx3nuzq26vD+8ymtXSKeWCI71CS5IJsj
 vhKJELz4x6XZXGCvDPA6MMGfjh+RnWF3bLb6xv6fb+Wb9Uadde5N8dUO6
 bip726nWLlNFW2PX8bxTQRmzx9sNU+CKV8Xnhp3ogM8HUc4z8OO1sNBeF g==;
X-CSE-ConnectionGUID: i6UGyInPQPu3DJYVg6sBRQ==
X-CSE-MsgGUID: +tlg3KWbSe6XHIJ8V1WBUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11780"; a="96644249"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96644249"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:03 -0700
X-CSE-ConnectionGUID: g67n+Z6gSG2EWtvdKnZKyA==
X-CSE-MsgGUID: imBjc2X/RgC7mPj4e7Tnbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="238566404"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 07:35:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 07/16] drm/xe: Move the FORCE_WC assert into
 __xe_pin_fb_vma()
Date: Fri,  8 May 2026 17:34:17 +0300
Message-ID: <20260508143426.26504-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
References: <20260508143426.26504-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 321EE4F7CA0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

No need to bother the higher level pinning code with the
FORCE_WC assert. Move it into the lower level function.

This also introduces the check to intel_fb_pin_to_ggtt(), which
(for the moment) is still used for the fbdev bo setup. But this
is all display stuff we're talking about here so having the check
is correct everywhere.

v2: Pimp the commit message a bit (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 1039058a7ed6..cb987b844385 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -329,6 +329,9 @@ static struct i915_vma *__xe_pin_fb_vma(struct drm_gem_object *obj, bool is_dpt,
 	struct drm_exec exec;
 	int ret = 0;
 
+	/* We reject creating !SCANOUT fb's, so this is weird.. */
+	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_FORCE_WC));
+
 	if (!vma)
 		return ERR_PTR(-ENODEV);
 
@@ -474,7 +477,6 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 {
 	struct drm_framebuffer *fb = new_plane_state->hw.fb;
 	struct drm_gem_object *obj = intel_fb_bo(fb);
-	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct i915_vma *vma;
 	struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
 	struct intel_fb_pin_params pin_params = {
@@ -486,9 +488,6 @@ int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 	if (reuse_vma(new_plane_state, old_plane_state))
 		return 0;
 
-	/* We reject creating !SCANOUT fb's, so this is weird.. */
-	drm_WARN_ON(bo->ttm.base.dev, !(bo->flags & XE_BO_FLAG_FORCE_WC));
-
 	vma = __xe_pin_fb_vma(obj, intel_fb_uses_dpt(fb), &pin_params);
 
 	if (IS_ERR(vma))
-- 
2.52.0

