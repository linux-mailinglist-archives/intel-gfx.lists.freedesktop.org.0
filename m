Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF498B27F9
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 20:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A16EF11A74C;
	Thu, 25 Apr 2024 18:15:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lAL4yzcn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E17411A74C;
 Thu, 25 Apr 2024 18:15:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714068926; x=1745604926;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Rs3fHZf8EeLvdUig79hE4Ckg4T96EGkJ7NBaWuzhS40=;
 b=lAL4yzcnwX3BvKo128maoKGgSwj2FI2JrrcEtr3vS/GfuZ+Eczc8sWpS
 k2kpZsuzJIgqj4u8GqcoQjB0QvXE686JTbKnehAUUja5+krxbCnA+c+hD
 X3M9Nt5RLJ0lSzI4XUJU9rr5fe3YHK8SfUhLWhLkfZ4TXvykzWOdGZuJf
 5b1Rx5NxAnmyFrk1Q/C1gOP3VmA7DtCdaa0tKwIb/gm0qsrjxKyd+Ye8J
 NHrbdPyXCCgO5Ugk9cmVDeCOwIi4lAKlbD470wN4NcuOweO9zPaclTEmt
 Bifu3gTvgLEKZ1YmF48m0rL4Gdy/nSANplpf78rUZTuJWCn1r5MIb33xY g==;
X-CSE-ConnectionGUID: 4FjWCu7bR7+fNaUhvo3q0g==
X-CSE-MsgGUID: qpiQIYs+TjCW61bfL6BHhw==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="12715300"
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="12715300"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 11:15:25 -0700
X-CSE-ConnectionGUID: l4MoUFMPRfKPbGWctHZ6BA==
X-CSE-MsgGUID: kb+0oaxDQyO5Qdt7b/SDvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="29636025"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 11:15:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	<intel-xe@lists.freedesktop.org>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH] drm/xe/display: Fix ADL-N detection
Date: Thu, 25 Apr 2024 11:16:09 -0700
Message-ID: <20240425181610.2704633-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
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

Contrary to i915, in xe ADL-N is kept as a different platform, not a
subplatform of ADL-P. Since the display side doesn't need to
differentiate between P and N, i.e. IS_ALDERLAKE_P_N() is never called,
just fixup the compat header to check for both P and N.

Moving ADL-N to be a subplatform would be more complex as the firmware
loading in xe only handles platforms, not subplatforms, as going forward
the direction is to check on IP version rather than
platforms/subplatforms.

Fix warning when initializing display:

	xe 0000:00:02.0: [drm:intel_pch_type [xe]] Found Alder Lake PCH
	------------[ cut here ]------------
	xe 0000:00:02.0: drm_WARN_ON(!((dev_priv)->info.platform == XE_ALDERLAKE_S) && !((dev_priv)->info.platform == XE_ALDERLAKE_P))

And wrong paths being taken on the display side.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index ffaa4d2f1eed..cd4632276141 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -78,7 +78,8 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
 #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, XE_ROCKETLAKE)
 #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, XE_DG1)
 #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_S)
-#define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, XE_ALDERLAKE_P)
+#define IS_ALDERLAKE_P(dev_priv) (IS_PLATFORM(dev_priv, XE_ALDERLAKE_P) || \
+				  IS_PLATFORM(dev_priv, XE_ALDERLAKE_N))
 #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
 #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
-- 
2.43.0

