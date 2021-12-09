Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF1146EED4
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE31F10E9F3;
	Thu,  9 Dec 2021 16:53:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D62510E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057884; x=1670593884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0Xm3Iu60+gsuOXbEPv2XYI/POJ0csSk32dQojjp8Mw0=;
 b=PdLZyhKS5aWupqlvvkaNxobOdUEOPQFaDi+dZpU9rdCfV/L8JuN1lVb/
 Ru6tW0xugVh6NUYkebm549xRtD68LCeRi+9EdA03EfXIjVbjDwI9oi+qU
 CJzPIJyRqh7AxN8yoV9L05BF9aiP93d+W8zqVmCmuXyhPWqAHa7P63rPc
 8XCqjOMBMlDaEeUpGjWxT10IjNrKqKbXvopqan2N0bnS0Pas4T/AO3MV9
 BlpCCvfjtEPi35AErwh7C7Zt0GOW5wUrzzVmPZ69UyELbScFMMmbhAq87
 Sabodr00R67bI5XoWZbk/p0gps2kcE6Y70dPZtzcg4JAwSYhlQXAywS9U Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="225365232"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="225365232"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="612503218"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:50:58 +0200
Message-Id: <392f82ff54722551063599d06eacb38281748026.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/psr: avoid intel_frontbuffer.h
 include with declaration
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce include dependencies using forward declarations.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.h | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 3d9c0e13c329..f6526d9ccfdc 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -6,18 +6,19 @@
 #ifndef __INTEL_PSR_H__
 #define __INTEL_PSR_H__
 
-#include "intel_frontbuffer.h"
+#include <linux/types.h>
 
+enum fb_op_origin;
 struct drm_connector;
 struct drm_connector_state;
 struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dp;
-struct intel_crtc;
-struct intel_atomic_state;
-struct intel_plane_state;
-struct intel_plane;
 struct intel_encoder;
+struct intel_plane;
+struct intel_plane_state;
 
 void intel_psr_init_dpcd(struct intel_dp *intel_dp);
 void intel_psr_pre_plane_update(struct intel_atomic_state *state,
-- 
2.30.2

