Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F829B54B6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 22:11:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA8C110E3BB;
	Tue, 29 Oct 2024 21:10:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+Fi7fEq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 117AC10E3BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 21:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730236258; x=1761772258;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OUr7kO13lmCLtaoHYnCQ1nKvIAEUAlmmgqVerXQ16lI=;
 b=e+Fi7fEqXDTAheonhz1EHUAQD1MsuIbiYum3fQYrIAbGcWXxck5PWeF8
 B0mi2P0RMHHYUDRksspyl2NU/WiliJLYH6mPAI7RlOE3xqqgAAKcRIG6x
 oaVozS0GSeBcg/HpXs66aF2lQn4Mo1RbnxEI7QZLFgSAQz/qLy1vN7WaB
 n1es3DO/ncNCZakMFvHpBiu96lwE3FsCtkChi2ho1tQabu1zXyJseSgr6
 AO+gdw0eWJHvCcW5eCgWcekgt7dKPDSaNyylIGdw/sfkOojOURR9TPbyf
 JaZq2GGOL4IJ/UXAB6xnxMejkr5rSXzFMXpEJVk8PIPEypRBIud30Ptiy A==;
X-CSE-ConnectionGUID: ATUIcMA1RTKhEPQfS1ZlVw==
X-CSE-MsgGUID: OmgMZX6cS0+tHlor3zu0Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30019433"
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="30019433"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 14:10:57 -0700
X-CSE-ConnectionGUID: 4snhfmNERKaj5uzKPKoaLg==
X-CSE-MsgGUID: N6Jr3Tz6RlGfURb389FNCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="82191611"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 29 Oct 2024 14:10:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Oct 2024 23:10:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915/scaler: Remove redudant junk from skl_scaler.h
Date: Tue, 29 Oct 2024 23:10:23 +0200
Message-ID: <20241029211030.13255-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
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

