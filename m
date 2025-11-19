Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0492DC709AD
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:16:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD0110E0BA;
	Wed, 19 Nov 2025 18:16:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ng38YXyP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CCE210E0BA;
 Wed, 19 Nov 2025 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763576185; x=1795112185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Txm1mO0DIJQAuwpqD6n6v7iSskgLKwQQLtn0zdiNgHI=;
 b=Ng38YXyPMAqM2vQ9lWlRDMy1sIAg14sPOagh6oQFhKYSB5WD+G+Erl6/
 sBrABEMXuA1LRz0fqfJKTHE+0staCVaIEjVw84OO4YiVEhyYAQpq+BONV
 r2vUVqp/gFZiEg4zY8h4H0UIz+K64RtguNoM/qt0m3NILod8Z9t5ObUS7
 /P3Faq7IsR6r42BH59ouDwbMToT2T+HClCmz29MzZQigvUz/PxK/gAR9v
 5mRGa+FOQjBg/H72jpFnIgTYT3ZbWwbucKziTPQfbH7JHC/FJXmZOaqJ1
 Dn6whF35kbI8PXzeBFp4tPxblKMATvXPcI43//GMBqWvWAneyS+SGi0xt w==;
X-CSE-ConnectionGUID: EMwLfJnjSBSLCk32De6CQQ==
X-CSE-MsgGUID: tYfEsCtCQgKrv0sCN7p37A==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="76987745"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="76987745"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:25 -0800
X-CSE-ConnectionGUID: 3ddlGzthTWSv8ZD43HTlHw==
X-CSE-MsgGUID: jgrUBV/yQPaWeCDtB/uhnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190916557"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:16:24 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/6] drm/i915/psr: Use hw.rotation instead of uapi.rotation
Date: Wed, 19 Nov 2025 20:16:03 +0200
Message-ID: <20251119181606.17129-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
References: <20251119181606.17129-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Presumably we're tryign to check if the hw plane is actually
rotated or not, so grab that information from the correct
plane (hw.rotation).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 22549b46467b..65d58d485ed3 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2740,7 +2740,7 @@ static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
 	if (plane_state->uapi.dst.y1 < 0 ||
 	    plane_state->uapi.dst.x1 < 0 ||
 	    plane_state->scaler_id >= 0 ||
-	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
+	    plane_state->hw.rotation != DRM_MODE_ROTATE_0)
 		return false;
 
 	return true;
-- 
2.49.1

