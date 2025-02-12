Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92083A32BDB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E1010E90F;
	Wed, 12 Feb 2025 16:37:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YWx7xT3y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E13410E919;
 Wed, 12 Feb 2025 16:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378242; x=1770914242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9mOFYoR9c1oHpr8xuKJ5txru0wMZi2OIjT+StIucK6E=;
 b=YWx7xT3ydLMQ+NA46LX/YNCAuVQ6Ywss5TezvDt6MmFPJlfSr1MlXvzd
 BW4fiK7KiRo0ab5wFfTZpiITpsnvuTK7563kKhaahQlXluWR7IuRJR0yF
 otEfruQ/8tBMu30App/TNr/J+pBud5U4wOLSqMGHFG1kPOe7d65LkByjM
 qR6azA8iLEBRRyqH6z0ep8e46WlYLTR1hT9uY/aIMEFMUNA0zZ2xcRC8e
 KErLg2QHAp7byqyyBzIKf0+szr8PcNwSu3zpX6YV8lNPufkJ3VAbCyDnt
 cLnJjIr4XAj5P3uLLrr2m7CjnqeIysEhHEUZnDNvQ/Xeap1XRNQAgDXmD Q==;
X-CSE-ConnectionGUID: 3m2HO/OfRaCph799zxeEyw==
X-CSE-MsgGUID: RuBO4siiQXaQ5KMfMR4Tuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="50693512"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50693512"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:20 -0800
X-CSE-ConnectionGUID: pd+P/rkyRFia4iN4LZJ6UQ==
X-CSE-MsgGUID: 2FFZIBXzR6Sa7r9Sz1jb0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143713535"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/14] drm/i915/hpd: drop dev_priv parameter from
 intel_hpd_pin_default()
Date: Wed, 12 Feb 2025 18:36:35 +0200
Message-Id: <4347a0f71a1a8c515617cf06471486d9bbb4a026.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
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

The function doesn't use the parameter for anything. Drop it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        | 2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_hotplug.c | 4 +---
 drivers/gpu/drm/i915/display/intel_hotplug.h | 3 +--
 5 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index b6cb5c74a32e..4b51a4e47f63 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1393,7 +1393,7 @@ bool g4x_dp_init(struct intel_display *display,
 	}
 	intel_encoder->cloneable = 0;
 	intel_encoder->port = port;
-	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
+	intel_encoder->hpd_pin = intel_hpd_pin_default(port);
 
 	dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 5b2df1014c10..1cd2e68e6ec5 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -771,7 +771,7 @@ bool g4x_hdmi_init(struct intel_display *display,
 		intel_encoder->pipe_mask = ~0;
 	}
 	intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG);
-	intel_encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
+	intel_encoder->hpd_pin = intel_hpd_pin_default(port);
 	/*
 	 * BSpec is unclear about HDMI+HDMI cloning on g4x, but it seems
 	 * to work on real hardware. And since g4x can send infoframes to
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ab382adaba56..ce7097937d70 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5368,7 +5368,7 @@ void intel_ddi_init(struct intel_display *display,
 	else if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
 		encoder->hpd_pin = skl_hpd_pin(dev_priv, port);
 	else
-		encoder->hpd_pin = intel_hpd_pin_default(dev_priv, port);
+		encoder->hpd_pin = intel_hpd_pin_default(port);
 
 	ddi_buf_ctl = intel_de_read(dev_priv, DDI_BUF_CTL(port));
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index d2e0002c5dc3..9c935afc60aa 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -82,15 +82,13 @@
 
 /**
  * intel_hpd_pin_default - return default pin associated with certain port.
- * @dev_priv: private driver data pointer
  * @port: the hpd port to get associated pin
  *
  * It is only valid and used by digital port encoder.
  *
  * Return pin that is associatade with @port.
  */
-enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
-				   enum port port)
+enum hpd_pin intel_hpd_pin_default(enum port port)
 {
 	return HPD_PORT_A + port - PORT_A;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
index a17253ddec83..d2ca9d2f1d39 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.h
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
@@ -24,8 +24,7 @@ void intel_hpd_trigger_irq(struct intel_digital_port *dig_port);
 void intel_hpd_init(struct drm_i915_private *dev_priv);
 void intel_hpd_init_early(struct drm_i915_private *i915);
 void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
-enum hpd_pin intel_hpd_pin_default(struct drm_i915_private *dev_priv,
-				   enum port port);
+enum hpd_pin intel_hpd_pin_default(enum port port);
 bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pin);
 void intel_hpd_debugfs_register(struct drm_i915_private *i915);
-- 
2.39.5

