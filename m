Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7DE42E032
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 19:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8036E1B6;
	Thu, 14 Oct 2021 17:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3FAD6E1B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 17:43:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="225204560"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="225204560"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:13:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="442908980"
Received: from dnvo-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.212.120.113])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 10:13:02 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Date: Thu, 14 Oct 2021 13:12:54 -0400
Message-Id: <20211014171257.1615604-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211014171257.1615604-1-rodrigo.vivi@intel.com>
References: <20211014171257.1615604-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Clean up PXP Kconfig info.
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

During the review I focused on stop the using of the "+"
to reference the newer platforms, but I forgot that we are
in a process of making things more clear and differentiate
graphics and display versions. So, let me to clean up this
a bit. Also, we don't need any version mentioned in the
config menu entry, only in the help.

Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/Kconfig | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 8859444943a0..bf041b26ffec 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -132,15 +132,15 @@ config DRM_I915_GVT_KVMGT
 	  Intel GVT-g.
 
 config DRM_I915_PXP
-	bool "Enable Intel PXP support for Intel Gen12 and newer platform"
+	bool "Enable Intel PXP support"
 	depends on DRM_I915
 	depends on INTEL_MEI && INTEL_MEI_PXP
 	default n
 	help
-	  PXP (Protected Xe Path) is an i915 component, available on GEN12 and
-	  newer GPUs, that helps to establish the hardware protected session and
-	  manage the status of the alive software session, as well as its life
-	  cycle.
+	  PXP (Protected Xe Path) is an i915 component, available on graphics
+	  version 12 and newer GPUs, that helps to establish the hardware
+	  protected session and manage the status of the alive software session,
+	  as well as its life cycle.
 
 menu "drm/i915 Debugging"
 depends on DRM_I915
-- 
2.31.1

