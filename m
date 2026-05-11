Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cI8HOhdNAmpaqQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6FB516687
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 23:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBD0A10E8E6;
	Mon, 11 May 2026 21:41:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPM9VrFA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1151710E8E6;
 Mon, 11 May 2026 21:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778535695; x=1810071695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WJVe5RHAEjNht8kJxBpwwDorVArUGUur/5QeA80YAww=;
 b=CPM9VrFAsdAhfgj316+KQhcSTP/YD161KFdKjCL+gvtqjtii1x+1dU7f
 cIopHWTWiHEiaQ37ylJ1O1mbo+L8W6dJZco2YdfK2tn5CBHn3h7ivPY7o
 leiWEOP5cJKQP5Ocro11dkYbiDBd04syXpBsepNLnJfKIIvDbERe7WMqB
 nyo+h2+67yAcf5XIT+NOfROEmg+uO483R6BMSSp8Y8G+OSThxR1FDePut
 7akMcx8c4Cuv0x0z8pnCuRC6alNGtsR9jZdRM5rxBKuTeeKfp861OgIhm
 fnen0beFPffnAOuld1Gc9Hv8pv/hiZlJlqdeCItvBP/N+Uxm1jW92WZ1k A==;
X-CSE-ConnectionGUID: yDPs+XnVRoKYDPcTFN+DJw==
X-CSE-MsgGUID: SlTqdqYrQ4iS36YXrAavYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79618476"
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="79618476"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:35 -0700
X-CSE-ConnectionGUID: 6EdbpGsGSrqgIMuBig8BqA==
X-CSE-MsgGUID: qYCL+m2wSc6ow/+FPre3hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,229,1770624000"; d="scan'208";a="233097247"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.104])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 14:41:33 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/14] drm/i915/fbdev: Extract bios_fb_ok()
Date: Tue, 12 May 2026 00:41:10 +0300
Message-ID: <20260511214122.8468-3-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 7B6FB516687
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,linux.intel.com:mid]
X-Rspamd-Action: no action

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the "is the BIOS FB OK?" checks to a helper function. We'll
add other relevant checks there later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 26 +++++++++++++++-------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index df1d3d9dc3e5..f9c135400453 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -262,6 +262,23 @@ __intel_fbdev_fb_alloc(struct intel_display *display,
 
 }
 
+static bool bios_fb_ok(const struct intel_framebuffer *fb,
+		       const struct drm_fb_helper_surface_size *sizes)
+{
+	struct intel_display *display = to_intel_display(fb->base.dev);
+	int width = fb->base.width;
+	int height = fb->base.height;
+
+	if (sizes->fb_width > width || sizes->fb_height > height) {
+		drm_dbg_kms(display->drm,
+			    "BIOS fb too small (%dx%d), we require (%dx%d), releasing it\n",
+			    width, height, sizes->fb_width, sizes->fb_height);
+		return false;
+	}
+
+	return true;
+}
+
 int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 				   struct drm_fb_helper_surface_size *sizes)
 {
@@ -279,14 +296,7 @@ int intel_fbdev_driver_fbdev_probe(struct drm_fb_helper *helper,
 
 	ifbdev->fb = NULL;
 
-	if (fb &&
-	    (sizes->fb_width > fb->base.width ||
-	     sizes->fb_height > fb->base.height)) {
-		drm_dbg_kms(display->drm,
-			    "BIOS fb too small (%dx%d), we require (%dx%d),"
-			    " releasing it\n",
-			    fb->base.width, fb->base.height,
-			    sizes->fb_width, sizes->fb_height);
+	if (fb && !bios_fb_ok(fb, sizes)) {
 		drm_framebuffer_put(&fb->base);
 		fb = NULL;
 	}
-- 
2.52.0

