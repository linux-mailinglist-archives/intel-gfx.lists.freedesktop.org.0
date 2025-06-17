Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A8EADD9A6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 19:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FDEF10E782;
	Tue, 17 Jun 2025 17:08:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DxHfST/9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE4FF10E777;
 Tue, 17 Jun 2025 17:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750180104; x=1781716104;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ufThz3ahzzDcyeq26ZodSpYJkRLIMe3ySOM/l0b1mrA=;
 b=DxHfST/9uto0GvIh6G3gC2YPkquUarkts8xnde1x34gUIubnwH+/IMHa
 Sd0Q12CB2nJly5CLAHByso4Gqeg0eMNokPCb3QBqxdGfHRCWM+bKgPgeJ
 0ekc+J5mAmaiYtz8BrcHXJBry/ej9TqPFQnegmQN1gf/BbrJioTe+GLkM
 kVtK6/HVURH5aDK6TLNtzsY082mgxDUfhIMzWOWQGPxls3GJpfm5CraHY
 PyWiSlSoz3+IHyVTQFOJyHTDLGPb2Q71NHGtfDC6STRpconG+ERCOuhIP
 9P5qQqbFBGbHtq4j/ruSsjKh2U9ZWJFiQR0Z+dA3+tnyfExkqncBdXN2T w==;
X-CSE-ConnectionGUID: qDU1mE9ATei5J9FLdxu1xA==
X-CSE-MsgGUID: lSly5u6zTd2k+5Ax1BI8Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="62644610"
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="62644610"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 10:08:06 -0700
X-CSE-ConnectionGUID: dXQBOrrBRPe7gd7sFRgzbw==
X-CSE-MsgGUID: b6o8TbuKT6aNuyJJQjkUvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,243,1744095600"; d="scan'208";a="154138494"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.184])
 by orviesa005.jf.intel.com with SMTP; 17 Jun 2025 10:08:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Jun 2025 20:08:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v2 1/9] drm/i915/dmc: Limit pipe DMC clock gating w/a to just
 ADL/DG2/MTL
Date: Tue, 17 Jun 2025 20:07:51 +0300
Message-ID: <20250617170759.19552-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
References: <20250617170759.19552-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Supposedly nothing post-MTL (even BMG) needs the pipe DMC clock
gating w/a (Wa_16015201720), so don't apply it.

TODO: check if the ADL/DG2 "clock gating needed during DMC loading" part
      is actuall needed, not seeing anything in the docs about it...

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a10e56e7cf31..b6ac480f391c 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -487,7 +487,7 @@ static void mtl_pipedmc_clock_gating_wa(struct intel_display *display)
 
 static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
 {
-	if (DISPLAY_VER(display) >= 14 && enable)
+	if (display->platform.meteorlake && enable)
 		mtl_pipedmc_clock_gating_wa(display);
 	else if (DISPLAY_VER(display) == 13)
 		adlp_pipedmc_clock_gating_wa(display, enable);
-- 
2.49.0

