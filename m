Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B61EA6B927
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06FD710E797;
	Fri, 21 Mar 2025 10:53:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gm3Jqymo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20FE410E797;
 Fri, 21 Mar 2025 10:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554420; x=1774090420;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rDKZ3FReHCQE0LTwD0GJ2mNMfF4MUOY8M9WTkbuAkDI=;
 b=gm3Jqymojwvz7aktvQpr1etfMPReG9GcAFG7fAdDP9xwdVYHeduBTezZ
 GZ2+qkqgA87aGo3mZ9pyICxRof80yTvwXnJHIQNisjK/zynnPQtIEViCR
 waIbsL22Tb90QhniMgeSGrVr8Sk+ea3H7R3l7CkeoNlcvkc8Z92f4PeOn
 f8mt94DdILFh+cvkcC3wT4rEry2CdLEGhTB5jkfCpsBnZuC8zCiEkrcFZ
 bC4EBb3vm2qqznQ7WfBiy/9wL6Uv25Fk8CoIDDDqd52Kx1V5lHFvUrqE8
 z1oAXpQZH9tMfKMi/IXkS8ZMqujW8zSjZ9ABzj7C35dEaE1+rKWixP9KQ A==;
X-CSE-ConnectionGUID: fDmfX4p4R/SKevN8rmSnPw==
X-CSE-MsgGUID: IrY9U0v7RbqPdTJiAKen7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54483950"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54483950"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:40 -0700
X-CSE-ConnectionGUID: QIpa18CDTympQxN5nH82dQ==
X-CSE-MsgGUID: +Vfqm1KORMqgCas7eWdmOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123830135"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/12] drm/i915/atomic: convert intel_atomic.c to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:53 +0200
Message-Id: <7ef6fe795e4e5c26ae0d546e57f64f494aaf56fc.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert intel_atomic.c to struct intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 23 ++++++++++-----------
 1 file changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 03dc54c802d3..e83feca5c9c9 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -33,16 +33,17 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dp_tunnel.h"
+#include "intel_fb.h"
 #include "intel_global_state.h"
 #include "intel_hdcp.h"
 #include "intel_psr.h"
-#include "intel_fb.h"
 #include "skl_universal_plane.h"
 
 /**
@@ -59,17 +60,16 @@ int intel_digital_connector_atomic_get_property(struct drm_connector *connector,
 						struct drm_property *property,
 						u64 *val)
 {
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	const struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
 
-	if (property == dev_priv->display.properties.force_audio)
+	if (property == display->properties.force_audio)
 		*val = intel_conn_state->force_audio;
-	else if (property == dev_priv->display.properties.broadcast_rgb)
+	else if (property == display->properties.broadcast_rgb)
 		*val = intel_conn_state->broadcast_rgb;
 	else {
-		drm_dbg_atomic(&dev_priv->drm,
+		drm_dbg_atomic(display->drm,
 			       "Unknown property [PROP:%d:%s]\n",
 			       property->base.id, property->name);
 		return -EINVAL;
@@ -92,22 +92,21 @@ int intel_digital_connector_atomic_set_property(struct drm_connector *connector,
 						struct drm_property *property,
 						u64 val)
 {
-	struct drm_device *dev = connector->dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_digital_connector_state *intel_conn_state =
 		to_intel_digital_connector_state(state);
 
-	if (property == dev_priv->display.properties.force_audio) {
+	if (property == display->properties.force_audio) {
 		intel_conn_state->force_audio = val;
 		return 0;
 	}
 
-	if (property == dev_priv->display.properties.broadcast_rgb) {
+	if (property == display->properties.broadcast_rgb) {
 		intel_conn_state->broadcast_rgb = val;
 		return 0;
 	}
 
-	drm_dbg_atomic(&dev_priv->drm, "Unknown property [PROP:%d:%s]\n",
+	drm_dbg_atomic(display->drm, "Unknown property [PROP:%d:%s]\n",
 		       property->base.id, property->name);
 	return -EINVAL;
 }
-- 
2.39.5

