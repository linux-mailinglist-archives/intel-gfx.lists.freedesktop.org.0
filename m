Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4FABF3072
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BA3110E4D6;
	Mon, 20 Oct 2025 18:52:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KBD2AG2m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148B910E4D6;
 Mon, 20 Oct 2025 18:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986322; x=1792522322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DfaxvvztMw0gnUW+aYgRI+ss3GafoAZTgTZRt9QLNJU=;
 b=KBD2AG2mXYEgvMMFRoKc7zxMQ7XtzJm5DETGIhXJxPnDiRhGZiVK1lsm
 hwe9bUJUPsH/ehII35/OVDlR8FCvWs24zzQ0BmAX9tLpJhLXDyqUfQB2b
 hqSbtTSaNSfzDVJ1+opj1jfX6Fi1CkuF2EqhT9r/2UTQeeZ0k3x1Q88C4
 87Ugp9nHcPJsUwJAw4m8lAoi159KDxxuCraiw60Mu6EFYzFun8REz56C8
 JvHSOpO8flCChz4vJQy895z+tnapUu1ehvaa/v7GY+SHMVqTQuOKXly1+
 ZOOLV+u3kEGHX597IQDd5i3ds8Qmqom02e8p6aR1vOkiL2YR4IpXf5UR0 g==;
X-CSE-ConnectionGUID: 47WtNpVTSAuQdYwWainljA==
X-CSE-MsgGUID: Ok2PMxGaTCWamziv2hYMLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63004450"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="63004450"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:52:02 -0700
X-CSE-ConnectionGUID: WQ/yOltzQfS+xL6RdAzSUA==
X-CSE-MsgGUID: VV5pauG7RlKugetTcribZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="182586035"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:52:01 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 21/22] drm/i915/vrr: Update the intel_vrr_extra_vblank_delay()
 comment
Date: Mon, 20 Oct 2025 21:50:37 +0300
Message-ID: <20251020185038.4272-22-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

The coment in intel_vrr_extra_vblank_delay() is a bit outdated now
that we generally got rid of the "vblank delay" stuff. Update the
comment to better describe the current state of things.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8875e5fe86aa..c28491b9002a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -87,10 +87,8 @@ static int intel_vrr_extra_vblank_delay(struct intel_display *display)
 	/*
 	 * On ICL/TGL VRR hardware inserts one extra scanline
 	 * just after vactive, which pushes the vmin decision
-	 * boundary ahead accordingly. We'll include the extra
-	 * scanline in our vblank delay estimates to make sure
-	 * that we never underestimate how long we have until
-	 * the delayed vblank has passed.
+	 * boundary ahead accordingly, and thus reduces the
+	 * max guardband length by one scanline.
 	 */
 	return DISPLAY_VER(display) < 13 ? 1 : 0;
 }
-- 
2.49.1

