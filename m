Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DCB8CC593
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 19:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07A6910E216;
	Wed, 22 May 2024 17:34:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mZQC3GpR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF7110E216;
 Wed, 22 May 2024 17:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716399239; x=1747935239;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ALpXJBlekWVBACanBhcfadPLOt3mH4pv1niIAbO4bKw=;
 b=mZQC3GpR7YV1p99mNSIfiToeA/DACwWzXtxc/y+y562OSPvdDO84izOk
 gmEsKktNoFq7k4uYex7o+lvOV/iBD9ac7VAOYS24aVK1kN8aVlPsE06fO
 i4TlAD9hEL3ESqT+1Jv3XoExR2B8sYV90OFecni6NxnAeNXOtS3B1WzCc
 Aeyg6KUOBmxClMioMAZMF0MUSBIrKcZYv4L25dB8eihg5cUmIhSe1ALMx
 YL25t0X0YNAfdD8AtrKlML3PiMF4jlJO8PFXhQSO20h0lEFW8u7LUgE/f
 m0pmEYDLuk2W0H3fdVHjIbWmuyKmQ9pnHADGX6hz7tpMz1ebpZs3H5xDY w==;
X-CSE-ConnectionGUID: rHp3j3rBQQuXXiFj9cDmZg==
X-CSE-MsgGUID: AcnSb5bRQSmZM8W453LLbg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="38053796"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="38053796"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:33:59 -0700
X-CSE-ConnectionGUID: 2bteG9IdTLCepw/Rn9Z40w==
X-CSE-MsgGUID: FVvP81X8Sp6Kcx8hhUVR7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33425134"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 10:33:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com,
	lucas.demarchi@intel.com
Subject: [PATCH 01/10] drm/i915/display: move params copy at probe earlier
Date: Wed, 22 May 2024 20:33:38 +0300
Message-Id: <a0c3e74d824d8a7c02fa1461c3d5518a71171256.1716399081.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716399081.git.jani.nikula@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
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

Copy the parameters earlier to make subsequent changes easier.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index cf093bc0cb28..9edadc7270f6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -936,6 +936,8 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 	/* Add drm device backpointer as early as possible. */
 	i915->display.drm = &i915->drm;
 
+	intel_display_params_copy(&i915->display.params);
+
 	if (HAS_GMD_ID(i915))
 		info = probe_gmdid_display(i915, &ver, &rel, &step);
 	else
@@ -952,8 +954,6 @@ void intel_display_device_probe(struct drm_i915_private *i915)
 		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
 		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
 	}
-
-	intel_display_params_copy(&i915->display.params);
 }
 
 void intel_display_device_remove(struct drm_i915_private *i915)
-- 
2.39.2

