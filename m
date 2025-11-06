Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85362C3C02A
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A28610E930;
	Thu,  6 Nov 2025 15:21:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iURHM/1y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB9010E930;
 Thu,  6 Nov 2025 15:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442489; x=1793978489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QTkoW5fGY+SXCZlQO9xmCRR5SwSoEIsebI6/bpr9EGY=;
 b=iURHM/1yi9ILIOStJxVmMcheBwSmgSavYElqqYzlhe0dpcWN0THsgCs2
 gicSBA1PZapwh09r41H6SuNFNRb3zeDvBlVkWlFV/fMtkmDmkLM7GOBvn
 DOX+mHovnZPlLMyEO/RGwJIJ0kmXIZQWHLXEoMyoC20RM1H5o/fUxxdya
 G9L+bhW1Q+JOOqZPvEfYNfIyvs/R+ruC2XV2kThukbJeMHtgFEBVxyaQ3
 2CvaAjZnJQbbb+fMefbR1qpRDpVOMJsQwt5fnsp8aPWdV38s59cuYKDzQ
 5vgYwbdqAKGTEVJ9pNlVQ1Fs+6J6qw0nrCBABOR/MD4NNLiNVsSZzKSxl Q==;
X-CSE-ConnectionGUID: w32k1W55Q1Wdi2B0anoHPg==
X-CSE-MsgGUID: xsQII5jRQ9CrtC2+zjmQZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="81985557"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="81985557"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:29 -0800
X-CSE-ConnectionGUID: GrTrqVGwSVmwE+pKcL3aTA==
X-CSE-MsgGUID: im/YpWBFQeO+kVPFYibnaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187625495"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:27 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/10] drm/i915/hdcp: Use the default 2 usec fast polling
 timeout
Date: Thu,  6 Nov 2025 17:20:48 +0200
Message-ID: <20251106152049.21115-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For whatever unknown reason the HDCP code is using a custom
10 usec fast polling timeout instead of the normal 2 usec
value. Switch to the standard value to get rid of the special
case.

The eventual aim is to get rid of the fast vs. slow timeout
entirely and switch over to poll_timeout_us().

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 7195e8cf671c..d01733b6460e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -412,7 +412,7 @@ static int intel_hdcp_load_keys(struct intel_display *display)
 	/* Wait for the keys to load (500us) */
 	ret = intel_de_wait_custom(display, HDCP_KEY_STATUS,
 				   HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
-				   10, 1, &val);
+				   2, 1, &val);
 	if (ret)
 		return ret;
 	else if (!(val & HDCP_KEY_LOAD_STATUS))
-- 
2.49.1

