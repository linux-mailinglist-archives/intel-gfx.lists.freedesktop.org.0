Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLBJKFSVmGlaJwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D9C1699A1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 18:09:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B4210E825;
	Fri, 20 Feb 2026 17:09:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UDJT4dD4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF7A10E824;
 Fri, 20 Feb 2026 17:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771607378; x=1803143378;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tE83o+0vHZoV1h8NYWmZ1xMd2eWaWZIjQQvimWSKj5g=;
 b=UDJT4dD4Wm42TyKgKSv6tEVWl3Sx3JmBhw+pfA1OtwWk249ww44B3gyN
 A51QtVpzVgRy8ZxTgeAr8TNx9Ni1Zqx9jQHWhM0YLOM/JNhZjL/sr57wi
 7W0uDLZbh+ObTXQQtuyudeidOtuTUYUYYyevU0L1AY1TU9GZBMbHn4nIC
 GSULrm2tKgFpjmwjUCLDBkPJfFVqCS6i22+zx4gpuvnaRiRqFszaHatlD
 wmslh/dwCMukVmYfaIN3b0rwadXTmtqaAJIatwvyJi3sYtXT4ipkGDh8v
 mKJBJA9FSvaQioTGKhqBUsT+MmqxsWrkX8/gzkDrgvqGePIwjSwPFE22B g==;
X-CSE-ConnectionGUID: IToimD0GTySAcRl2Ov5qrQ==
X-CSE-MsgGUID: 9F4iX8LbQSKKs1gZaCV91w==
X-IronPort-AV: E=McAfee;i="6800,10657,11707"; a="98164384"
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="98164384"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:38 -0800
X-CSE-ConnectionGUID: XMtQTLIQQZWl2TliGwTHcw==
X-CSE-MsgGUID: i6VRwjQHSfun/g0ix2fG9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,302,1763452800"; d="scan'208";a="237864017"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.245.18])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2026 09:09:36 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com
Subject: [PATCH v2 5/6] drm/xe/fbdev: print info about stolen memory
 preference for fbdev
Date: Fri, 20 Feb 2026 19:09:07 +0200
Message-ID: <20260220170908.201422-6-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260220170908.201422-1-vinod.govindapillai@intel.com>
References: <20260220170908.201422-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 74D9C1699A1
X-Rspamd-Action: no action

If stolen memory cannot be allocated for the fbdev and initial plane
bo because of the preference for fbc, have an info about that in
the log.

v2: log text changed

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 2 ++
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 4 +++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 4673614cd224..87af5646c938 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -63,6 +63,8 @@ struct drm_gem_object *intel_fbdev_fb_bo_create(struct drm_device *drm, int size
 			drm_info(&xe->drm, "Allocated fbdev into stolen\n");
 		else
 			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
+	} else {
+		drm_info(&xe->drm, "Allocating fbdev: Stolen memory not preferred.\n");
 	}
 
 	if (IS_ERR(obj)) {
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 13fdc51f8f50..c46e9d8115bd 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -92,8 +92,10 @@ initial_plane_bo(struct xe_device *xe,
 		flags |= XE_BO_FLAG_STOLEN;
 
 		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
-		    !intel_fbdev_fb_prefer_stolen(&xe->drm, plane_config->size))
+		    !intel_fbdev_fb_prefer_stolen(&xe->drm, plane_config->size)) {
+			drm_info(&xe->drm, "Initial FB size exceeds half of stolen, discarding\n");
 			return NULL;
+		}
 	}
 
 	size = round_up(plane_config->base + plane_config->size,
-- 
2.43.0

