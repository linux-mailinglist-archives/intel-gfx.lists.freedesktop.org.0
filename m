Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8979057A530
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 19:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148978B9EC;
	Tue, 19 Jul 2022 17:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D68DE8B932
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 17:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658251651; x=1689787651;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1Q3QJ5lPcpaX5ybYmhwZ3wBjNTxKRNIjkK2G4N2oz/A=;
 b=RFWyElB8zTkWj5UMlKrj5tTcYwTC3CL192quaVC5Yjl9BT/RwEiOWXch
 9+C91NT7IGYtk24rpxjUIirx2/hmS/5F7O3Ny1zqDJ73/UBdRJfBTPe4G
 x7dbzezfTbeUUz3ozzwlN5etHRGvpChN8HAVHCQ7SPj2f8iB2W+jgOAgp
 ip3a+sGAjnrJ/8TnvHBZgLfyqq5V0wMEJxVCZb3Alt07ubNxDRzplyfXZ
 WmQmrB67LfJOAK3As2BUpEMcqelis443h+U812B7M+UJGTEiu/2UhtWez
 MsK1IfBykbbcbGXHFTFCULsnQxZFJyfgB0yo10ykGg5S1gzBkgcK7I//b Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="287705303"
X-IronPort-AV: E=Sophos;i="5.92,284,1650956400"; d="scan'208";a="287705303"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 10:27:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,284,1650956400"; d="scan'208";a="547995557"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 19 Jul 2022 10:27:30 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Jul 2022 10:28:25 -0700
Message-Id: <20220719172825.3155696-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220719172825.3155696-1-alan.previn.teres.alexis@intel.com>
References: <20220719172825.3155696-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Remove more GuC-Err-Cap
 noise
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

Remove the CONFIG_DRM_I915_DEBUG_GUC version of the
__out macro. The original thought was we have additional
dmesg entries in the event that the last gpu_coredump
error capture state was never retrieved, we don't
lose the new capture. These additional messages only
when CONFIG_DRM_I915_DEBUG_GUC is on. However it should
have been a drm_dbg instead of drm_warn. Additionally,
upon further inspection, it became clear we don't really
need this additional messages to align with execlist
as well as remove some more unncessary noise.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
index 75257bd20ff0..a9910962d2dc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
@@ -1365,16 +1365,8 @@ guc_capture_reg_to_str(const struct intel_guc *guc, u32 owner, u32 type,
 	return NULL;
 }
 
-#ifdef CONFIG_DRM_I915_DEBUG_GUC
-#define __out(a, ...) \
-	do { \
-		drm_warn((&(a)->i915->drm), __VA_ARGS__); \
-		i915_error_printf((a), __VA_ARGS__); \
-	} while (0)
-#else
 #define __out(a, ...) \
 	i915_error_printf(a, __VA_ARGS__)
-#endif
 
 #define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
 	do { \
-- 
2.25.1

