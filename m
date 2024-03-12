Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0926C879FD8
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 00:51:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC7210F258;
	Tue, 12 Mar 2024 23:51:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iD6SlhGD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE84710F24C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 23:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710287475; x=1741823475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iE+7Puv+z5Lzpi6ttoIYlOouKzvy7/wAOP8cEvS7Z6Q=;
 b=iD6SlhGDPPmfrzjlFWaCgnK9MR9iccTYkP9GDlkYCB+UsnvjunYlIZik
 fX03sx8EBkpGB7Z9yBaWXD7yvwCkqudg0Kq2UAjWLbnfhS8DO3t0sJqQ/
 cjFolIhaIO4JHBQXIhXwAgLcqimWsBGxXXwtrnLEDkdXx6uoMrefPu5mg
 ze9D2ZPLlnM2Nw2hwBysk+EhhVimxmEYQqHCgxArpkot6AIVUqxeW6E0A
 nt37lKU7ShJmRnq6SHzT4p4cMjacc89mmVeHgLJVuLXyywk/DBF5AsPnQ
 CIhnp8rHwXND4plwpF5dH/JLJg13xxjJo/ixNVZFIZQykQ+ziwjmF4Xp4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="8848041"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="8848041"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="42715878"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 16:51:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH v2 3/6] drm/i915: Stop inheriting IP_VER(12, 50)
Date: Tue, 12 Mar 2024 16:51:42 -0700
Message-ID: <20240312235145.2443975-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240312235145.2443975-1-lucas.demarchi@intel.com>
References: <20240312235145.2443975-1-lucas.demarchi@intel.com>
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

All the platforms that inherit the media/graphics version
from XE_HPM_FEATURES / XE_HP_FEATURES just override it to another
version. Just set the version directly in the respective struct
and remove the versions from the _FEATURES macros. Since that was the
only use for XE_HPM_FEATURES, remove it completely.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b318b7c6bf73..8b673fdcf178 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -705,8 +705,6 @@ static const struct intel_device_info adl_p_info = {
 		I915_GTT_PAGE_SIZE_2M
 
 #define XE_HP_FEATURES \
-	.__runtime.graphics.ip.ver = 12, \
-	.__runtime.graphics.ip.rel = 50, \
 	XE_HP_PAGE_SIZES, \
 	TGL_CACHELEVEL, \
 	.dma_mask_size = 46, \
@@ -730,15 +728,12 @@ static const struct intel_device_info adl_p_info = {
 	.__runtime.ppgtt_size = 48, \
 	.__runtime.ppgtt_type = INTEL_PPGTT_FULL
 
-#define XE_HPM_FEATURES \
-	.__runtime.media.ip.ver = 12, \
-	.__runtime.media.ip.rel = 50
-
 #define DG2_FEATURES \
 	XE_HP_FEATURES, \
-	XE_HPM_FEATURES, \
 	DGFX_FEATURES, \
+	.__runtime.graphics.ip.ver = 12, \
 	.__runtime.graphics.ip.rel = 55, \
+	.__runtime.media.ip.ver = 12, \
 	.__runtime.media.ip.rel = 55, \
 	PLATFORM(INTEL_DG2), \
 	.has_64k_pages = 1, \
@@ -773,9 +768,10 @@ static const struct intel_device_info ats_m_info = {
 __maybe_unused
 static const struct intel_device_info pvc_info = {
 	XE_HPC_FEATURES,
-	XE_HPM_FEATURES,
 	DGFX_FEATURES,
+	.__runtime.graphics.ip.ver = 12,
 	.__runtime.graphics.ip.rel = 60,
+	.__runtime.media.ip.ver = 12,
 	.__runtime.media.ip.rel = 60,
 	PLATFORM(INTEL_PONTEVECCHIO),
 	.has_flat_ccs = 0,
-- 
2.43.0

