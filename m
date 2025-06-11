Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3A7AD5B1C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 17:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E5E510E6B9;
	Wed, 11 Jun 2025 15:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EocLNsdn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E736410E6C1;
 Wed, 11 Jun 2025 15:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749657168; x=1781193168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ufThz3ahzzDcyeq26ZodSpYJkRLIMe3ySOM/l0b1mrA=;
 b=EocLNsdnMgPaLxNTfSeMoBenQGUG90c+IlQzgnZWbdM3ul/n0ncgDGT0
 R8ZjN8ykWIjrZ29lKDLJW+Omcxcwg1vKBfHKNhqP8F464eFdINq/eLNMh
 hB8CclyfamcML2Edo9CBOFeY/CKoI866n9jhgWfrKkE0OEP56c3ZunLWL
 896mNWcge6FKb95xNxdD//LAp0T12MuR3nYopXupc+ogqAuuicb6wipe4
 D4gXehHaB11QESGyYXwBbQXaxZzvvvxOJ7r2AIZRtDNmU+AyypNCe6uY+
 VdC6WJ1Sizo1uragV3JJDbtmdu86tU13DUltGbSUJPxuNzM6c+nZ8KIxn g==;
X-CSE-ConnectionGUID: spYsRr3dSyiMqGv9IvTEHw==
X-CSE-MsgGUID: Ojf5xGs+Tm+636Au9Z8KYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="62419103"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="62419103"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 08:52:48 -0700
X-CSE-ConnectionGUID: OOM31vp6SlGnAkllmjPjwA==
X-CSE-MsgGUID: TKmddmcwSHq6KsXd1AU6vA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="152507325"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.24])
 by orviesa005.jf.intel.com with SMTP; 11 Jun 2025 08:52:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jun 2025 18:52:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 1/9] drm/i915/dmc: Limit pipe DMC clock gating w/a to just
 ADL/DG2/MTL
Date: Wed, 11 Jun 2025 18:52:33 +0300
Message-ID: <20250611155241.24191-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
References: <20250611155241.24191-1-ville.syrjala@linux.intel.com>
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

