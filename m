Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E28BF3063
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 978BD10E4B6;
	Mon, 20 Oct 2025 18:51:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LEbIKsr9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E5210E4CC;
 Mon, 20 Oct 2025 18:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986302; x=1792522302;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=67LuaIFQtEBk9yVHtdSFzvc06StlgkrTFVCsRTTIEgE=;
 b=LEbIKsr9hLfaBGW13gXSYeXx22iVgI87U0DbacbAJwedDqbgOssF+FX0
 RBVNCjg76f2xKQz2MXg3f0kblEgDeGkz7CYx9YVzRrqhamN5mBqZ0GwDx
 aVkGnrzDmyli3U5FqYxegWxg9/13a+T9P9BP2N9esVkE10Xn2C5aX8mgs
 HsGvVZqCz4OZ9giP5xGVR4kL+7eHE5QhSgzLJ7KC1IPMlsuPPzYibn3aQ
 mIeVIwQhIxbfq4kplwpsdV+zK/S4ECzvcU28vsWVGlauJCfUlLDLj/TaS
 t3jDEs+3SGmE0dQQTSfbTLI8nLev4VPmUc4BqPReVV20QH4gbmaaIkuL7 Q==;
X-CSE-ConnectionGUID: z4+oVQqDRxCJ5LFEFkIEYA==
X-CSE-MsgGUID: zFlALCtDSUeHh/oFVkQ6GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63147711"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="63147711"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:42 -0700
X-CSE-ConnectionGUID: L00UAnO1Qs69kdW+3f8YXA==
X-CSE-MsgGUID: okIdbr5+QK6AynKnjNnGwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="188497201"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:41 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 16/22] drm/i915/vrr: Remove redundant HAS_VRR() checks
Date: Mon, 20 Oct 2025 21:50:32 +0300
Message-ID: <20251020185038.4272-17-ville.syrjala@linux.intel.com>
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

intel_vrr_transcoder_{enable,disable}() already check
for intel_vrr_possible(), so the extra HAS_VRR() checks are
redundant. Remove them.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 67b1ed606d8f..b64a54d22991 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -760,9 +760,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (!HAS_VRR(display))
-		return;
-
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
@@ -774,9 +771,6 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	if (!HAS_VRR(display))
-		return;
-
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-- 
2.49.1

