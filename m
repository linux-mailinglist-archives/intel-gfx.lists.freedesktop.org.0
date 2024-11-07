Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6209C05BC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 13:27:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1F8C10E824;
	Thu,  7 Nov 2024 12:27:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IV59f/ke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B86F10E82C
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 12:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730982427; x=1762518427;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/49mVX9xX47WrQUJfjypyvhl+ZWcQ07mOB/M8/ZgppY=;
 b=IV59f/keg4+m3M+p+fEfXmGmxO6waKBXcJl7jYTqwMQXRAepoKYSEhY7
 MYgTs+amIBTEytv0ijvDPTQCS7/6PdNIl0bD/p2NbNJZ0x2q0sEvFtsBv
 /NbNmRctHkDBF/6ofqSNwyp6uZCTA+FMfw7C5hSQUSPAzy5TGfw9WbyJu
 6uiMb2TKXXNJ4VbCWPEY6VfuG0M/0C19ZhANfaY+lL4CcV8FiFnP7r/zz
 +wGLQldrT9vqPeakkw4ii0v0ud/sH3UPxCk5lbnKAqbxgYNEj8lggqkJ0
 LdOD3e29sJYkYVLEPhH8QEPF0FraX7t5/4x/pO2Y+bxaRcMRj8JCk+Utt Q==;
X-CSE-ConnectionGUID: 8V/5zGgwR36qqvmZv9CETg==
X-CSE-MsgGUID: VXgxuqwkR3eWu4wbFD7Z6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34516003"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34516003"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:27:07 -0800
X-CSE-ConnectionGUID: mTRWWK31R1SsOxxG8zyQrQ==
X-CSE-MsgGUID: BkSUgRJHQ32TvNU/gE/5jA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="85189337"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 04:27:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 14:27:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 2/8] drm/i915/scaler: Remove redudant junk from skl_scaler.h
Date: Thu,  7 Nov 2024 14:26:52 +0200
Message-ID: <20241107122658.21901-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
References: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
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

Nuke some redundant includes and forward declarations from
skl_scaler.h.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 7a9ccdfd1cbb..73fa59da09f9 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -5,10 +5,6 @@
 #ifndef INTEL_SCALER_H
 #define INTEL_SCALER_H
 
-#include <linux/types.h>
-
-enum drm_scaling_filter;
-enum pipe;
 struct drm_i915_private;
 struct intel_crtc;
 struct intel_crtc_state;
-- 
2.45.2

