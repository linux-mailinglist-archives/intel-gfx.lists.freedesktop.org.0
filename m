Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEh+LowboGmzfgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 464541A3FD9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 11:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4C9010E8B2;
	Thu, 26 Feb 2026 10:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dYfGsjwp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A15C910E8B2;
 Thu, 26 Feb 2026 10:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772100490; x=1803636490;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tWxu3lw5Q8ZEwVCGpWKR2hoh37b/j88iu7wH3lfAiOA=;
 b=dYfGsjwpakAnw0s0dUtpMNkvNOTxqXpVbyQAVV5IwsD7J0fAnV53uzkE
 BjhusPac5YTryKy+RIBOLVDpkcVUMkc/kHlzENMbkaAjw9nrNekL+SFez
 36w4uhF/UM+sgbMMmKty+1yl7wsj5lyYMGm0WbuLr2PPyxMgWf6/Yddxj
 vA5VgjHMN6WRzbmAINpJNCYNWeb1ISH1T2otdOl9My7ALIQgQdsSJ/lGS
 7Jrpofu3/MoD/J3nDUJXHqUboPOFW+VfIXPhFvv+jR310P3i0XN7pTpNN
 kIC7LgLNY5e4DSIAMKf2VxNGashLq0VAujVNCEgsSSdcJqAB2F8jQhzlH w==;
X-CSE-ConnectionGUID: 1dS49ZVdRFKJBVXc9v3DnA==
X-CSE-MsgGUID: TS94j1E5RqawdWzpHyj56w==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83866893"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="83866893"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:09 -0800
X-CSE-ConnectionGUID: U58Dtp8PS8Sj05OH4ajFDA==
X-CSE-MsgGUID: YBX6aZ1cQce/r/o7BqTSOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="216533132"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.224])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 02:08:08 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 06/19] drm/i915/overlay: Introduce i915_overlay_obj_lookup()
Date: Thu, 26 Feb 2026 12:07:25 +0200
Message-ID: <20260226100738.29997-7-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 464541A3FD9
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the BO lookup and tiling check into a new
helper called i915_overlay_obj_lookup(). This will have to
move to the i915 side of the parent vs. display driver split.

There is a slight change here in that we now do the tiling
check before taking the modeset locks, but those locks don't
protect the BO tiling stuff in any way, so nothing is really
different here.

Note that the hardware should support X-tiled scanout also
for the overlay, but I guess no one ever bothered to hook
it up and test it. So the check should stay at least for now.

v2: Correctly handle the ERR_PTR returned by
    i915_overlay_obj_lookup() (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 33 ++++++++++++++------
 1 file changed, 23 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index 8c6e9c19b3f5..91398ee92042 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -1125,6 +1125,26 @@ static int check_overlay_src(struct intel_display *display,
 	return 0;
 }
 
+static struct drm_i915_gem_object *
+i915_overlay_obj_lookup(struct drm_device *drm,
+			struct drm_file *file_priv,
+			u32 handle)
+{
+	struct drm_i915_gem_object *bo;
+
+	bo = i915_gem_object_lookup(file_priv, handle);
+	if (!bo)
+		return ERR_PTR(-ENOENT);
+
+	if (i915_gem_object_is_tiled(bo)) {
+		drm_dbg(drm, "buffer used for overlay image can not be tiled\n");
+		i915_gem_object_put(bo);
+		return ERR_PTR(-EINVAL);
+	}
+
+	return bo;
+}
+
 int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 				  struct drm_file *file_priv)
 {
@@ -1155,19 +1175,12 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
 		return -ENOENT;
 	crtc = to_intel_crtc(drmmode_crtc);
 
-	new_bo = i915_gem_object_lookup(file_priv, params->bo_handle);
-	if (!new_bo)
-		return -ENOENT;
+	new_bo = i915_overlay_obj_lookup(dev, file_priv, params->bo_handle);
+	if (IS_ERR(new_bo))
+		return PTR_ERR(new_bo);
 
 	drm_modeset_lock_all(dev);
 
-	if (i915_gem_object_is_tiled(new_bo)) {
-		drm_dbg_kms(display->drm,
-			    "buffer used for overlay image can not be tiled\n");
-		ret = -EINVAL;
-		goto out_unlock;
-	}
-
 	ret = intel_overlay_recover_from_interrupt(overlay);
 	if (ret != 0)
 		goto out_unlock;
-- 
2.52.0

