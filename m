Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3D573FF6D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 17:14:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E27B10E30D;
	Tue, 27 Jun 2023 15:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26CAF10E30D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 15:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687878884; x=1719414884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7j/3KdAUnh2paNJw1anntPOw/GX8V4TMf8KL5DucRBI=;
 b=BebRwmj1gbbOks/ew1Lom59VBLpkfK7ZIT+BVgzk7rgzW2FQCD2jmcYt
 2VPjpUOFVhFRv7Voy4AQSqfnPIHDpwqb8CCeMnFRxMYSUWxYvpRIecjJu
 Y54VirmuZMlIFyKSoRSzD1QM6FtqAq3omsrbE2vHHwLJl9r5cCYtRW6Ya
 3gbPJ3CgeZEvPwBjkBfAQauAtsDQDSEAI9psq92kjTcCb580GnuCYtgtf
 vAGnNHdAQMgP4r0hHzFjYLXol031qEMjgP1DMf5nRtQ0Oiwkhc8nOrRzT
 c1W+r0cdA1ig7dL5EMeOHK0LYN9qZCU77OY2B0sctoUhraGIHtE0QXCA3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="361635458"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="361635458"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10754"; a="716584678"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="716584678"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.48])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 08:14:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jun 2023 18:14:01 +0300
Message-Id: <a61f20726138b8eb77b02e0da70d831c297ab8aa.1687878757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1687878757.git.jani.nikula@intel.com>
References: <cover.1687878757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915: fix display info usage
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 53ca0e4e2357..49ac8473b988 100644
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

