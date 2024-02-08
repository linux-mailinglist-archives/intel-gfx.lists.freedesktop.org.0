Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF60884E3D0
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5686F10E89E;
	Thu,  8 Feb 2024 15:17:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lns4KqiS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D89F10E89E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405459; x=1738941459;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=L9ZiO7JkU9mnP1zx18N/0RppGrr7ZiuzgQ58f0CP0fM=;
 b=lns4KqiS27pMs3ifWWFfeLY0M1qmKP70vb1V69gtewBId/H55bf0K5+D
 3TAylUfSH6vQPVJIYbCtRGlJVKft34tZxezlCY4rwSuEwd/IrmxtgaSSR
 fVco18t+gFjG7KFXs2ennvC+vM/c4QdFAr/rBfjirwvzlaKWYNgFFxIAA
 q9aP8gb+vm9Ipse5Y2wdXim47RRvMAThZHUkgUl84MNMdJSBNPD6MpA3J
 2MPLYXJCpAOEfmYdPsPwOykbV7NmJ0onIQJolGSyHpLjHCj+T506W8S0L
 Q7d22c6N6NcTz1c2hq0Hdm3v6BNMADrcueFFtAvl34/OvcyzAGacVtgyY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219232"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219232"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863657"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863657"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/13] drm/i915/fb: Use per-device debugs
Date: Thu,  8 Feb 2024 17:17:12 +0200
Message-ID: <20240208151720.7866-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Switch to drm_dbg_kms() in the fb code so we see which
device generated the debugs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 0c0144eaa8fa..3ea6470d6d92 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1849,9 +1849,10 @@ static int intel_plane_check_stride(const struct intel_plane_state *plane_state)
 				       fb->modifier, rotation);
 
 	if (stride > max_stride) {
-		DRM_DEBUG_KMS("[FB:%d] stride (%d) exceeds [PLANE:%d:%s] max stride (%d)\n",
-			      fb->base.id, stride,
-			      plane->base.base.id, plane->base.name, max_stride);
+		drm_dbg_kms(plane->base.dev,
+			    "[FB:%d] stride (%d) exceeds [PLANE:%d:%s] max stride (%d)\n",
+			    fb->base.id, stride,
+			    plane->base.base.id, plane->base.name, max_stride);
 		return -EINVAL;
 	}
 
-- 
2.43.0

