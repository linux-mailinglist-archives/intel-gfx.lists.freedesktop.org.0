Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCDF77FBD4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 18:16:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C28110E522;
	Thu, 17 Aug 2023 16:16:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A60FB10E51A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 16:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692288977; x=1723824977;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TIgpB7fwxuivJ0rfPg0witom9YTZfwoW4R4G0K11zMU=;
 b=EVot80zOrdGuL8TNP0Ozfwg9phaEL4w/J4SUKaQP240NzvQOfcdqHb5z
 bXL+XHjIgxgvN7P/yB4dymV9CeZz+XDuR3+cZQ/NKEHA3hQfxaYgWnpul
 wbAkaWlE93z6guXR12qaKr0yBEUNJV8iOuOXGG/uhEtsXv4f+J07N2zXw
 lMpN1KfapBhAwbDP11615twx4xkgrjQfv7AjHci1zxhe1VYkxzIwyl3Pb
 TpE7S6yZXlbKvXXBWCR3yixzG5I91DNEjgEZtUnKlOkWKtj0fsVC6omDm
 STmQPrmkTRvYfq29ICyoH8qT2YnWmluoXEtaLi7ivah3aZ84TjbTK8djK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="357826731"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="357826731"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:15:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="711601362"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="711601362"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 09:14:59 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 19:14:53 +0300
Message-Id: <20230817161456.3857111-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230817161456.3857111-1-imre.deak@intel.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/17] drm/i915/dp_mst: Fix PBN calculation with
 FEC overhead
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

On 8b/10b MST links the PBN value for DSC streams must be calculated
accounting for the FEC overhead. The same applies to 8b/10b non-DSC
streams if there is another DSC stream on the same link. Fix up the PBN
calculation accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b22e0cbdb7d56..4fe10d7256630 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -111,7 +111,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
 						       dsc ? bpp << 4 : bpp,
 						       dsc,
-						       false);
+						       (dsc || crtc_state->fec_enable) &&
+							!intel_dp_is_uhbr(crtc_state));
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
-- 
2.37.2

