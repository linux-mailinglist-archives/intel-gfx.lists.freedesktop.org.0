Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DaWI5COy2kuIwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:06:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36145366B6C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 11:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA81310E9C8;
	Tue, 31 Mar 2026 09:06:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FhomRkVO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAF010E9BB;
 Tue, 31 Mar 2026 09:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774947982; x=1806483982;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=k0Lc9p9ipY8/8SzisV23Mw3/OC64IXlDSPqI55a46fs=;
 b=FhomRkVOcvABwex2YIQ0xqAFQ3W5pp9Z/865Z9Ta7iCNB3w3jzXXJZfD
 IS8neBa2EKZwONMZ361hRY2fKv+Epg3/QAi1FOpVAtaqsVl1idw4WCGqT
 ufY4lUuURT0xYnKJDGZfI3aoBLt88utvPJlhW53HD1PxsWpEwIyaGsBN5
 4/Zih56jd23vK+1w2WmAc4zcglpu8dd6fKrl+Trh5ovbFd0k+VnBMAF6Q
 YhMXPudhPiXso2i92DjxptO8vqlkAiH9pQBf3pEShq6MFEOV64jhkRR+o
 T0FtPwESHluDY/pz5j+xsmCnRUksQlL/YC4aLSGJjMoXNy8H4h70v0PbQ A==;
X-CSE-ConnectionGUID: gjNV7vulQ4abQsAsKc030Q==
X-CSE-MsgGUID: gDpU9ZS6TfanNIsvUjLgBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87420660"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87420660"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 02:06:21 -0700
X-CSE-ConnectionGUID: 0X0oapC6SeuMfg29qRxOjQ==
X-CSE-MsgGUID: LKtJh3bhQzCOpTAkcsXlDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226559713"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa007.jf.intel.com with ESMTP; 31 Mar 2026 02:06:16 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
Date: Tue, 31 Mar 2026 14:33:56 +0530
Subject: [PATCH v11 4/7] drm/atomic: Allocate atomic_state at the beginning
 of atomic_ioctl
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260331-atomic-v11-4-6a1df7ec5af8@intel.com>
References: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
In-Reply-To: <20260331-atomic-v11-0-6a1df7ec5af8@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, xaver.hugl@kde.org, 
 harry.wentland@amd.com, uma.shankar@intel.com, louis.chauvet@bootlin.com, 
 naveen1.kumar@intel.com, ramya.krishna.yella@intel.com
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, Arun R Murthy <arun.r.murthy@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,kde.org,amd.com,bootlin.com];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 36145366B6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move atomic_state allocation to the beginning of the atomic_ioctl
to accommodate drm_mode_atomic_err_code usage for returning error
code on failures.
As atomic state is required for drm_mode_atomic_err_code to store the
error codes.

v7: Reframe commit message (Suraj)
v8: Moved the clearing fence change to a different patch (Suraj/Louis)
v9: Free allocated atomic_state before return on error, move this change
from patch 5 (Suraj)
v10: Re-order, exchange 3 and 4th patch to ensure cleanup is done in
order (Suraj)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/drm_atomic_uapi.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
index 64e33aeb9ee2d553b1247cfb9a11e17d8ddf1e86..a0227b4ca57187624d17cdda24c4da47916c3467 100644
--- a/drivers/gpu/drm/drm_atomic_uapi.c
+++ b/drivers/gpu/drm/drm_atomic_uapi.c
@@ -1580,6 +1580,14 @@ int drm_mode_atomic_ioctl(struct drm_device *dev,
 	if (!drm_core_check_feature(dev, DRIVER_ATOMIC))
 		return -EOPNOTSUPP;
 
+	state = drm_atomic_state_alloc(dev);
+	if (!state)
+		return -ENOMEM;
+
+	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
+	state->acquire_ctx = &ctx;
+	state->allow_modeset = !!(arg->flags & DRM_MODE_ATOMIC_ALLOW_MODESET);
+
 	/* disallow for userspace that has not enabled atomic cap (even
 	 * though this may be a bit overkill, since legacy userspace
 	 * wouldn't know how to call this ioctl)
@@ -1587,24 +1595,28 @@ int drm_mode_atomic_ioctl(struct drm_device *dev,
 	if (!file_priv->atomic) {
 		drm_dbg_atomic(dev,
 			       "commit failed: atomic cap not enabled\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
 	if (arg->flags & ~DRM_MODE_ATOMIC_FLAGS) {
 		drm_dbg_atomic(dev, "commit failed: invalid flag\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
 	if (arg->reserved) {
 		drm_dbg_atomic(dev, "commit failed: reserved field set\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
 	if (arg->flags & DRM_MODE_PAGE_FLIP_ASYNC) {
 		if (!dev->mode_config.async_page_flip) {
 			drm_dbg_atomic(dev,
 				       "commit failed: DRM_MODE_PAGE_FLIP_ASYNC not supported\n");
-			return -EINVAL;
+			ret = -EINVAL;
+			goto out;
 		}
 
 		async_flip = true;
@@ -1615,16 +1627,10 @@ int drm_mode_atomic_ioctl(struct drm_device *dev,
 			(arg->flags & DRM_MODE_PAGE_FLIP_EVENT)) {
 		drm_dbg_atomic(dev,
 			       "commit failed: page-flip event requested with test-only commit\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
-	state = drm_atomic_state_alloc(dev);
-	if (!state)
-		return -ENOMEM;
-
-	drm_modeset_acquire_init(&ctx, DRM_MODESET_ACQUIRE_INTERRUPTIBLE);
-	state->acquire_ctx = &ctx;
-	state->allow_modeset = !!(arg->flags & DRM_MODE_ATOMIC_ALLOW_MODESET);
 	state->plane_color_pipeline = file_priv->plane_color_pipeline;
 
 retry:

-- 
2.25.1

