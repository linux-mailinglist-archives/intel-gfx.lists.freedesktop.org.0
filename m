Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AEA68FB704
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AEB10E4D2;
	Tue,  4 Jun 2024 15:27:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksodaWxm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818B910E4E2
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514854; x=1749050854;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hJz3utE5XaC5nfhdcGuV1HDMmHvrmx5GSvzc+UJz89Y=;
 b=ksodaWxmF8nMpV+YIyAURBj9Qn24meXvNVmONAjqE5VNwnwTs+l/VmTC
 eCpldnQCH6GO5aGyjIwauqh4WoEGrK/7DDMyKn8lrZqiWm6gCX9ve6eQ+
 ulnQm6ooLJS8V7ddMcIfRQ6ZwrXelSJXVFMIOoXTPKQnyJ0YUQsFzkdAN
 zfKuITHUTLgO3zOoPC/7u3IBTt1D/wG/lSpRghpvMF6XzC/t4VNnBzg9E
 CpTMb779WhtYmXq9Pv9aRdLTCy4HC4rsxAjZjZOKz+2NGVJ+kfVr/Wttm
 uamyNDUhVhAjkDREk0UFZwtdk/hGA/FnPxmWU2fQ6TM775O+mua83wdjF A==;
X-CSE-ConnectionGUID: /zGvcrROQLmtXD3qEwUzCA==
X-CSE-MsgGUID: TaJlIbfjQXav4zd+29yJYw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25469746"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25469746"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:33 -0700
X-CSE-ConnectionGUID: DTY6tJRCQ1GWDX9ZIF+wqA==
X-CSE-MsgGUID: FY9Hhg0QT9mK5xp50cwmVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42383322"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:27:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 13/65] drm/i915: pass dev_priv explicitly to PORT_HOTPLUG_EN
Date: Tue,  4 Jun 2024 18:25:31 +0300
Message-Id: <3f4c3fb108f62db5d9b6bdabd0fbeb6650e14e82.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the PORT_HOTPLUG_EN register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 3 ++-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
 3 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 2660c4a53e6f..b7eab52b64b6 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -603,7 +603,7 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 					      CRT_HOTPLUG_FORCE_DETECT,
 					      CRT_HOTPLUG_FORCE_DETECT);
 		/* wait for FORCE_DETECT to go off */
-		if (intel_de_wait_for_clear(dev_priv, PORT_HOTPLUG_EN,
+		if (intel_de_wait_for_clear(dev_priv, PORT_HOTPLUG_EN(dev_priv),
 					    CRT_HOTPLUG_FORCE_DETECT, 1000))
 			drm_dbg_kms(&dev_priv->drm,
 				    "timed out waiting for FORCE_DETECT to go off");
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index d270bb7b9462..90fe5f8538e1 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -186,7 +186,8 @@ void i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
 	lockdep_assert_held(&dev_priv->irq_lock);
 	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
 
-	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN, mask, bits);
+	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN(dev_priv), mask,
+			 bits);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3bb895d030ab..4508c535f320 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1378,7 +1378,7 @@
 
 
 /* Hotplug control (945+ only) */
-#define PORT_HOTPLUG_EN		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
+#define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
 #define   PORTB_HOTPLUG_INT_EN			(1 << 29)
 #define   PORTC_HOTPLUG_INT_EN			(1 << 28)
 #define   PORTD_HOTPLUG_INT_EN			(1 << 27)
-- 
2.39.2

