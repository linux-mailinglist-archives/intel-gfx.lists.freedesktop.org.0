Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A5D9D1C10
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 00:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38C4B10E29B;
	Mon, 18 Nov 2024 23:53:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8XMVTKe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B70E610E577;
 Mon, 18 Nov 2024 23:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731974021; x=1763510021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MEM4viPpOZ8QfavpUiH/SmLUKVecU6XBnyv3ZZtiWGY=;
 b=O8XMVTKenqmBPykdJwd+fBkXwOQh8I+AY6+MgRjnuYIU1Y4D73OgWuys
 ZcQBsNfYLguYoanrLskYoLdkLTpeUMnCDsKiZSB3k5BFpwdZUXMqrdlwd
 3/VLqb20bIuwJx/SUskuRrriJ67nSyeo/tLa9O2PNcxNyCr5CupTaLYr/
 6YjpBurxpWnV0/zW1XSLFGtPU7MqOvd7z9Q7K6QGlIMLZTW1Ego3hbz4l
 GOZAdrPZAbXkktUSrgFBLtustaImC9ULM9TGRYprE+PpQ8Jm2o/Lv5CNy
 gNULn17HFBjr8Mx5WwDgsOqxNq5OUxVpGlK6lc3FIqPssoCGmefbAgHO4 Q==;
X-CSE-ConnectionGUID: VNKPp71MTUmVIcb97RIAYA==
X-CSE-MsgGUID: Qh5iJ4+qSUeWF5pCSPWO0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="32090836"
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="32090836"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:41 -0800
X-CSE-ConnectionGUID: JpEbaN9mTECn6nx26EQkGw==
X-CSE-MsgGUID: /9939ifqRzKb7O2mClo3jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,165,1728975600"; d="scan'208";a="94186005"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.244.2])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 15:53:39 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 jani.saarinen@intel.com
Subject: [RFC PATCH 1/4] drm/i915/display: update intel_fbc_atomic_check for
 dirty_fbc support
Date: Tue, 19 Nov 2024 01:53:22 +0200
Message-Id: <20241118235325.353010-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241118235325.353010-1-vinod.govindapillai@intel.com>
References: <20241118235325.353010-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

For the follw-up patches to enable the dirty rect support for
FBC, we need to have a provision to compare certain FBC specific
parameters between old plane state and new plane state. Update
intel_fbc_atomic_check() to get the old plane state as well.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index df05904bac8a..1fdb1a3e3fbe 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1666,11 +1666,13 @@ void intel_fbc_flush(struct drm_i915_private *i915,
 
 int intel_fbc_atomic_check(struct intel_atomic_state *state)
 {
-	struct intel_plane_state __maybe_unused *plane_state;
+	struct intel_plane_state __maybe_unused *new_plane_state;
+	struct intel_plane_state __maybe_unused *old_plane_state;
 	struct intel_plane *plane;
 	int i;
 
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
+	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
+					     new_plane_state, i) {
 		int ret;
 
 		ret = intel_fbc_check_plane(state, plane);
-- 
2.34.1

