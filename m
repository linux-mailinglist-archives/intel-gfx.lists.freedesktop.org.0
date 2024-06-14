Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30B0908743
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE83010E25C;
	Fri, 14 Jun 2024 09:23:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hB8Kxjxk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2998D10E25C
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718356986; x=1749892986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L2IUq+hKxFPsXi0CIQsJKLiXG0zQ+yXu7vZn+6kG70I=;
 b=hB8KxjxkRNhWIVByYC7wXatEl8YQ6bqEDAjEK8wrMekvWknhDO1KVHXJ
 QOWXFRF66737LHd/e2Mbga556lx5L9iEzS2q74aUPnn/WGWZF5pIrr9fj
 k3t3VmG4cxuJV1dQwUkPBk/MPUweDpGoLdvAbDTPwX76b9PH15Ut+udFZ
 K/qK6jY/2Vca5d5nnLq3hdpvqOrGUbR++nKOvVcPnQxAdXqGWBXi1btYk
 96+jtHzu4GePhJNDWLTxZciKNOr0P4vfr5VNDGFtZDfrbxdztdU+jcDBL
 sODP24oYOcp6VWKAlBBjbsQutlI2/mNBXpSTWOi6mtxPoBZ1GzUpFUIBQ w==;
X-CSE-ConnectionGUID: D+eADmCkQ364B1rypMhReA==
X-CSE-MsgGUID: pV36OuKDTUKK9NkvLizYtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25908801"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25908801"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:06 -0700
X-CSE-ConnectionGUID: 1xjKk5+LTgaG/5wsWm5M4w==
X-CSE-MsgGUID: yVU/Y6NRTjOWFvvjEDhMfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40545633"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:23:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [CI 04/11] drm/i915/dram: split out pnv DDR3 detection
Date: Fri, 14 Jun 2024 12:22:32 +0300
Message-Id: <c4bf9d32479ab5024e9daa37a996508f543f05e9.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Split out the PNV DDR3 detection to a distinct step instead of
conflating it with mem freq detection.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 3dce9b9a2c5e..1a4db52ac258 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -43,6 +43,11 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
 
 #undef DRAM_TYPE_STR
 
+static bool pnv_is_ddr3(struct drm_i915_private *i915)
+{
+	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3;
+}
+
 static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
 {
 	u32 tmp;
@@ -60,10 +65,6 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
 		dev_priv->mem_freq = 800;
 		break;
 	}
-
-	/* detect pineview DDR3 setting */
-	tmp = intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
-	dev_priv->is_ddr3 = (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
 }
 
 static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
@@ -143,6 +144,9 @@ static void detect_mem_freq(struct drm_i915_private *i915)
 	else if (IS_VALLEYVIEW(i915))
 		vlv_detect_mem_freq(i915);
 
+	if (IS_PINEVIEW(i915))
+		i915->is_ddr3 = pnv_is_ddr3(i915);
+
 	if (i915->mem_freq)
 		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
 }
-- 
2.39.2

