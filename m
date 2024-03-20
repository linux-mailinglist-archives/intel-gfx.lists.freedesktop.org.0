Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E03880AF8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 07:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD09D10EC48;
	Wed, 20 Mar 2024 06:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPAh7F2H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E98DA10EC0D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 06:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710914718; x=1742450718;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=gVLTe7lpZRBt/x7mBUESPrMaIxYy3fLu88uPwPLUBD0=;
 b=GPAh7F2HgTOji9+0hD/I+zweYqaMbEuyzH0eRoheVx69g3B9qtcRUu/k
 Q/UAS7dmEHyOTGK/gzpx6WzHQrMhG91Dn4NshECjEJoibo5gXPNyaNdf5
 gkLfNc7/KnNpB11dbopRE+Jp29vGrhXDFqZJYXbnY1RsPUoNaTorBCvtG
 IFmh7anLjYEYuHMPQnfpsvahKSRRrgaPZ9GtTqryWlFPp04owwpsAfRsO
 tRZBv+glSHxLWdccRFmJlCQ/75UFgDtoC/clPZqQRM860swglYKKaRCB6
 5XjW2xt+fmh9oRbJBEbuckYot4FcAsF0Gh9hsIlyWctJZqvbryfWuJhuh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="28295581"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="28295581"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="51485502"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 23:05:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [CI 3/6] drm/i915: Stop inheriting IP_VER(12, 50)
Date: Tue, 19 Mar 2024 23:03:00 -0700
Message-ID: <20240320060543.4034215-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240320060543.4034215-1-lucas.demarchi@intel.com>
References: <20240320060543.4034215-1-lucas.demarchi@intel.com>
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

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index b318b7c6bf737..8b673fdcf178f 100644
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

