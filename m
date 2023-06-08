Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0939728356
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 17:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0FB910E5DB;
	Thu,  8 Jun 2023 15:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B4E010E5D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 15:12:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686237127; x=1717773127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YzNprEa5/YuU1IF37u1ugmwPaCwqsRCRHlZUDqr8qEY=;
 b=D889+GuH9pcN0/IePtBu5RAznUcoh6465VWh1g0p2tXN4L5dETVK6BcJ
 3p3kDsfWkh47XJH6adac4/CIDHHhQ1/buHY2ZHIjYF4GN7eTretTppqu6
 lgC5vllqhthykoBSLWWYTxvFt+fDTJKYUbMm3oPMGc9gb3GAXpO9REf8q
 sA+diiKlg2Tlmyq2rPXW9vloNUvx8+IfwM2oknwvoZu6ybsOKuPFGF8QE
 aofqpxDDgkUX8uIRtL1Xvb3wR2NDXpneMAwdWRlnQRTdzRBDS9ZzoEYIo
 TCDPLQH7HlrzpTChBnoEAIFQ2ypNRPA4XzNhhbejtWpwODBGEivPFXwBt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="423201615"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="423201615"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="956751513"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="956751513"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 08:09:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 18:09:03 +0300
Message-Id: <1af60722551ee6d66b0c8e3e5917d327c6a72ed0.1686236840.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1686236840.git.jani.nikula@intel.com>
References: <cover.1686236840.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: fix display info usage
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer DISPLAY_INFO() over INTEL_INFO()->display.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index c744c021af23..1a987dc45c70 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -113,7 +113,7 @@ enum i9xx_plane_id {
 
 #define for_each_dbuf_slice(__dev_priv, __slice) \
 	for ((__slice) = DBUF_S1; (__slice) < I915_MAX_DBUF_SLICES; (__slice)++) \
-		for_each_if(INTEL_INFO(__dev_priv)->display->dbuf.slice_mask & BIT(__slice))
+		for_each_if(DISPLAY_INFO(__dev_priv)->dbuf.slice_mask & BIT(__slice))
 
 #define for_each_dbuf_slice_in_mask(__dev_priv, __slice, __mask) \
 	for_each_dbuf_slice((__dev_priv), (__slice)) \
-- 
2.39.2

