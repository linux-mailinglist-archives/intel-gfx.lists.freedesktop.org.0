Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE695B55244
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451B010EC95;
	Fri, 12 Sep 2025 14:50:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANvpQJVA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE9910EC95;
 Fri, 12 Sep 2025 14:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688614; x=1789224614;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TCCOinaoi+P+HfTwDscjQHPN5D7Xu3TzlIMLbLXg+eY=;
 b=ANvpQJVARY4cYY+u2OKSYg77z2OL8CAH7HRXejVrgGzBjgQg3iJYus86
 5gL8q5veHFIP4lXDOfclw7Xi0LWMUBBHTgCBJ7Z091PT2GY5PE+uoSlJM
 0pChEW7EsJlzXJrfh9q0GmujdeSm462amtkL4kiG54Qaj61pvebW/rqcs
 gSj3ztWpsMNDAwYiNE1oVuRowXLRjx3c1FEQ9yKhaxe0C1Gj7gvDFhWHR
 +RpKP5IUVgTy03T4CL8nE25qTIFFswrjPsuMjL3w3xvw9bbPhZeAgr5AI
 a7zVbTPFhwwgyLEHGZOMHdLSfFcN3ieSVsQLjdPkz3Vo6LOIyRbPAUo/9 g==;
X-CSE-ConnectionGUID: eNNq/scKQl2SsBXWnXXVmw==
X-CSE-MsgGUID: P5h5OJPkSAypqNTAftM0Fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="63666374"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="63666374"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:14 -0700
X-CSE-ConnectionGUID: h5ZxEnQsQDmwg5Z2Apvd4Q==
X-CSE-MsgGUID: oiBPk/tOTkeN28CCufnZnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="173810318"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:50:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 13/15] drm/i915: log HPLL frequency similar to CZCLK
Date: Fri, 12 Sep 2025 17:48:52 +0300
Message-ID: <bfc3082f90cf9f74aa40308e10f20da824b1db55.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757688216.git.jani.nikula@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
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

With vlv_clock_get_czclk() logging the CZ clock rate when first cached,
do the same for HPLL VCO.

v2: Rebase

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fb1882494543..b49661b4e959 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -155,6 +155,8 @@ int vlv_clock_get_hpll_vco(struct drm_device *drm)
 		vlv_cck_put(drm);
 
 		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+
+		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", i915->hpll_freq);
 	}
 
 	return i915->hpll_freq;
-- 
2.47.3

