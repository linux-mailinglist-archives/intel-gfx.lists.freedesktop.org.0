Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D0161608A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:08:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075E510E466;
	Wed,  2 Nov 2022 10:08:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7499910E466
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383713; x=1698919713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5v5n6+IakHH7OBv9/jJfx8YPMzpxLLEgQYQjKY2uX/k=;
 b=BP324WWv1Gn02fBjw5t5HCOfD6paXB1nKgRnN5Hpx+liaVMVH+IYabwm
 A3MIMm1uOKWxbTy1bevOY44cVqqDBrOyPt4x0n7W3lB+KQYd93+HCqYTh
 Gyw1C4M+vXEM/ElIhowj0OxD1m4xHttN9jEIjaE/4/EfTKm9Ezlf/HnKA
 4wrqJPOQV/7v4+4zZYguz0rT1QZcI7yye3DJg0kAoXsqrV2KGLKwrL4DR
 okTOilVw94qXJxn7AmwRWppb8LWyKHLFZH6bwnEfJWS/VuPGkjEBp6Whs
 eR16rjb6Bak98W18A+5lsAqTEWYdDcBSocOF6D/7U1u3WSYjqhPUBe/IX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371455376"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371455376"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:33 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="636726978"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="636726978"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:09 +0200
Message-Id: <3c386ce08d7d53a45c14c2e7519e4cc78a8161be.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 01/16] drm/i915/gmbus: move GPIO enum to gmbus
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

The GPIO enum is only used in intel_gmbus.c, hide it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 18 ------------------
 drivers/gpu/drm/i915/display/intel_gmbus.c   | 20 +++++++++++++++++++-
 2 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index c803330a276d..c7bc481ea3ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -61,24 +61,6 @@ struct intel_remapped_info;
 struct intel_rotation_info;
 struct pci_dev;
 
-enum i915_gpio {
-	GPIOA,
-	GPIOB,
-	GPIOC,
-	GPIOD,
-	GPIOE,
-	GPIOF,
-	GPIOG,
-	GPIOH,
-	__GPIOI_UNUSED,
-	GPIOJ,
-	GPIOK,
-	GPIOL,
-	GPIOM,
-	GPION,
-	GPIOO,
-};
-
 /*
  * Keep the pipe enum values fixed: the code assumes that PIPE_A=0, the
  * rest have consecutive values and match the enum values of transcoders
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 74443f57f62d..860e0f8b6b19 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -49,9 +49,27 @@ struct intel_gmbus {
 	struct drm_i915_private *i915;
 };
 
+enum gmbus_gpio {
+	GPIOA,
+	GPIOB,
+	GPIOC,
+	GPIOD,
+	GPIOE,
+	GPIOF,
+	GPIOG,
+	GPIOH,
+	__GPIOI_UNUSED,
+	GPIOJ,
+	GPIOK,
+	GPIOL,
+	GPIOM,
+	GPION,
+	GPIOO,
+};
+
 struct gmbus_pin {
 	const char *name;
-	enum i915_gpio gpio;
+	enum gmbus_gpio gpio;
 };
 
 /* Map gmbus pin pairs to names and registers. */
-- 
2.34.1

