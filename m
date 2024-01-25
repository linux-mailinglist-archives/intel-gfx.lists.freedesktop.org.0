Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D3983BEAC
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 11:27:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E16810E216;
	Thu, 25 Jan 2024 10:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 718D710E216
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 10:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706178460; x=1737714460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M45J2Z1BF+/RVD1PVnmrKUwz6ObgKy0M1gOWhk6l9Hs=;
 b=LFeaDDrVg3dAk5rHD1rCBW9Wz0vC+DmqAjMgSQmcmVUbnACrBWTN6As/
 hIGMFUYki6d5FduuQpoD6qSnAxptDU50mYpxz+hQCcxHbShuZ3NXlIjDP
 ugo/R6KtZ6JjJhQopUd2fUmhyJuWAzzDXppE0STwNI+StxV7TWIo9NKIe
 JUVR51FHwVUT8yTzetd49BWmWYU02u8mGzqX6bWVLK26r9WmoIoEIV9Xs
 DGRQBiQdcgwfehrA/e0P1r0K65ARwcnlh0UeMa96+vgjEl9fgAHTjTqk9
 H3ri3TZ6wZWXPYQPXfO2mDX4X+JuKt+Gnp9SMVCK9dmw9UGzyfk3zfNWw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="9235931"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9235931"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2024 02:27:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="820753722"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="820753722"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 25 Jan 2024 02:27:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Jan 2024 12:27:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v4 05/16] drm/i915: Disable the "binder"
Date: Thu, 25 Jan 2024 12:27:36 +0200
Message-ID: <20240125102736.22536-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240116075636.6121-6-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-6-ville.syrjala@linux.intel.com>
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Now that the GGTT PTE updates go straight to GSMBASE (bypassing
GTTMMADR) there should be no more risk of system hangs? So the
"binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
necessary, disable it.

My main worry with the MI_UPDATE_GTT are:
- only used on this one platform so very limited testing coverage
- async so more opprtunities to screw things up
- what happens if the engine hangs while we're waiting for MI_UPDATE_GTT
  to finish?
- requires working command submission, so even getting a working
  display now depends on a lot more extra components working correctly

TODO: MI_UPDATE_GTT might be interesting as an optimization
though, so perhaps someone should look into always using it
(assuming the GPU is alive and well)?

v2: Keep using MI_UPDATE_GTT on VM guests
v3: use i915_direct_stolen_access()

Cc: Paz Zcharya <pazz@chromium.org>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gtt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index 86f73fe558ca..7811a8c9da06 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -24,7 +24,8 @@
 bool i915_ggtt_require_binder(struct drm_i915_private *i915)
 {
 	/* Wa_13010847436 & Wa_14019519902 */
-	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
+	return !i915_direct_stolen_access(i915) &&
+		MEDIA_VER_FULL(i915) == IP_VER(13, 0);
 }
 
 static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)
-- 
2.43.0

