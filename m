Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE548470163
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 14:17:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E39A10E286;
	Fri, 10 Dec 2021 13:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDC7510E286
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 13:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639142247; x=1670678247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fxckU7DhhZiz5gbeqaAsTOENtqTYJ4z8ObZWvrmPPg4=;
 b=PGOV5Nucp4KXz+G5t2f9IRRanjlJ4nJD4tGiC+hLyfTZv+skoZ7qkccz
 PGId9DDm3A6RQq4DRLKlyjb4jt/x7L70JVZSdWS0sOv2WhG7MsZWhJf3C
 ai2AkoLXEBQZqx9GmCmhLJd1WSTdjMugJYqGKrRrIrMY+MZBncDADww+V
 zhP5PbCMpTSD72xUe8vSFurIA1oxg0c+9J2VNhEhq72az92sSZoMnDtwU
 u/4+ME6kHcGjfe5mX/0o2hto9vdGMNVCJeod0s+sGbodsfcU2fR+8yEIC
 V7/iSJaZB9FFfKwBupLVLq/iK9z+Gc63W27yrS8i6Mh7WYEwE/YWO8ucN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="324606102"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="324606102"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="516760805"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 05:17:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Dec 2021 15:16:57 +0200
Message-Id: <ee35f2f01f731c21f24a238f2d1690b09ac2da1f.1639142167.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639142167.git.jani.nikula@intel.com>
References: <cover.1639142167.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/7] drm/i915/psr: avoid intel_frontbuffer.h
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

