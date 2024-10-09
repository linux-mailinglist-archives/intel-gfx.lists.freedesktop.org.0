Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E81B39975D8
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 21:43:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B359810E7F8;
	Wed,  9 Oct 2024 19:43:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eRk7kMFk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3FA410E7F4;
 Wed,  9 Oct 2024 19:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728503012; x=1760039012;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hDz5epre3ffeq813Zw0OKg1Ll6iHiGLJ+vx13GENXFY=;
 b=eRk7kMFk3fRilxr7TE84qHFgkXOp+dodwVvdZ7GD5cOHHzXsqVFRrWHA
 7YWxQroJNiJeaIkJ3S1+ubIS3raJ98FYRU6QkrEogzGfY/aMFI9DRO/51
 fE7mPFe3ef2KQgON4NchNKiu2QMtG46YBDVDAXPeExEr0E5LFlrZemI0E
 GzyobsFvcUkihhq3iIywCw7TLALraJXhBoG/s5epxkXLXlC6IM/Q8I95H
 dn6vx6ou4UnuRUoEt0PGSyBbZ+Xk0ydCibMSSznfT7quC9Oeaa2lSXBgG
 jPfw2aOOIJbXc4KzswUYMxrKJffS19/+M/kdYxB89huC7sVNo95TrcgGW A==;
X-CSE-ConnectionGUID: iRqml3WSRpu2wBmfC5mboA==
X-CSE-MsgGUID: 7zN9oP5UQiq/HCGG1hMP+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27947097"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27947097"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:32 -0700
X-CSE-ConnectionGUID: N3aHFSu5RcKSYNPqW5uoeA==
X-CSE-MsgGUID: Gz2YpAxUQy6bLW01Cu0WQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81371466"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 12:43:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime
 suspended
Date: Wed,  9 Oct 2024 22:43:55 +0300
Message-ID: <20241009194358.1321200-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241009194358.1321200-1-imre.deak@intel.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
MIME-Version: 1.0
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

If the device is runtime suspended the eDP panel power is also off.
Ignore a short HPD on eDP if the device is suspended accordingly,
instead of checking the panel power state via the PPS registers for the
same purpose. The latter involves runtime resuming the device
unnecessarily, in a frequent scenario where the panel generates a
spurious short HPD after disabling the panel power and the device is
runtime suspended.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c                   | 5 ++++-
 drivers/gpu/drm/i915/intel_runtime_pm.h                   | 8 +++++++-
 drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h | 8 ++++++++
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fbb096be02ade..3eff35dd59b8a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -85,6 +85,7 @@
 #include "intel_pch_display.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
+#include "intel_runtime_pm.h"
 #include "intel_quirks.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
@@ -6054,7 +6055,9 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
-	    (long_hpd || !intel_pps_have_panel_power_or_vdd(intel_dp))) {
+	    (long_hpd ||
+	     intel_runtime_pm_suspended(&i915->runtime_pm) ||
+	     !intel_pps_have_panel_power_or_vdd(intel_dp))) {
 		/*
 		 * vdd off can generate a long/short pulse on eDP which
 		 * would require vdd on to handle it, and thus we
diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
index 126f8320f86eb..e22669d61e954 100644
--- a/drivers/gpu/drm/i915/intel_runtime_pm.h
+++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
@@ -96,10 +96,16 @@ intel_rpm_wakelock_count(int wakeref_count)
 	return wakeref_count >> INTEL_RPM_WAKELOCK_SHIFT;
 }
 
+static inline bool
+intel_runtime_pm_suspended(struct intel_runtime_pm *rpm)
+{
+	return pm_runtime_suspended(rpm->kdev);
+}
+
 static inline void
 assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
 {
-	WARN_ONCE(pm_runtime_suspended(rpm->kdev),
+	WARN_ONCE(intel_runtime_pm_suspended(rpm),
 		  "Device suspended during HW access\n");
 }
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
index cba587ceba1b6..274042bff1bec 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
@@ -20,6 +20,14 @@ static inline void enable_rpm_wakeref_asserts(void *rpm)
 {
 }
 
+static inline bool
+intel_runtime_pm_suspended(struct xe_runtime_pm *pm)
+{
+	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
+
+	return pm_runtime_suspended(xe->drm.dev);
+}
+
 static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-- 
2.44.2

