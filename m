Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6DD8185AF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 11:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F76A10E43B;
	Tue, 19 Dec 2023 10:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43AFC10E11D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 10:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702983133; x=1734519133;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6SkIHaFTJwIHynXIB360IW1eibciS4+Rl693dDXBizY=;
 b=XgihQzz8NinJGS/iQ/8mpc7UwXnRZ7bnTAvfCKm97RfYOHBDK6VoMtIX
 27OrwGNWp5PNhybP9k2dUeTcd7HduzRQPQ3M76bwaL59oFa9e1WzQi6MW
 bATcP8WW6e/6vyvwVnipaGvPF0rWQ4cTPUBxaCpuEn60GjmrrCzQcjRft
 v5XgiyLYfMhDgYiAJpXdK5bv0c9rASECd5f61kSqhJKuv6qy7tJSPtoDS
 enASj2vxQImjrTAd9L56rWTew7ASoIZz8cH337TsUGImWtoZ32b2ISk+V
 l4zBnjM/SjoaWpfOcOyCQIQFXJiip+odkET+IiZEz0RLfq9OHb+Ab+8cl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="392813452"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="392813452"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:52:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="1107315435"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="1107315435"
Received: from alexeyze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.118])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 02:52:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/hdcp: fix intel_hdcp_get_repeater_ctl() error
 return value
Date: Tue, 19 Dec 2023 12:47:46 +0200
Message-Id: <20231219104746.1065431-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219104746.1065431-1-jani.nikula@intel.com>
References: <20231219104746.1065431-1-jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_hdcp_get_repeater_ctl() is supposed to return unsigned register
contents. Returning negative error values is unexpected, and none of the
callers check for that.

Sort of fix the error cases by returning 0. I don't think we should hit
these cases anyway, and using 0 for the registers is safer than
0xffffffea (-EINVAL).

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index f9010094ff29..ee29fcb860e4 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -347,7 +347,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
 		default:
 			drm_err(&i915->drm, "Unknown transcoder %d\n",
 				cpu_transcoder);
-			return -EINVAL;
+			return 0;
 		}
 	}
 
@@ -364,7 +364,7 @@ u32 intel_hdcp_get_repeater_ctl(struct drm_i915_private *i915,
 		return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
 	default:
 		drm_err(&i915->drm, "Unknown port %d\n", port);
-		return -EINVAL;
+		return 0;
 	}
 }
 
-- 
2.39.2

