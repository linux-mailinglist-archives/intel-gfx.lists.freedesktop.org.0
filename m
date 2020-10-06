Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 460C0284B27
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 13:54:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B396E1D8;
	Tue,  6 Oct 2020 11:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754CF6E1AA
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 11:54:07 +0000 (UTC)
IronPort-SDR: WiVeLYfFtTOOTHiC/Ts3wFn4OPNVKAiOADKayxC+TUWq8d11U23IyBhIZJ7jTIfgkUrMNfM6Hn
 IAEpzsXBACIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161067247"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161067247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 04:54:06 -0700
IronPort-SDR: QZ47reVKrItjoimXqAbHDhTE6EANP+vwHzdDj0IKc7yLIx374Yj2KRQFpt2m0BKAxL181BRj8H
 X6Y8oNvHRC8A==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527320447"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 04:54:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 14:54:00 +0300
Message-Id: <20201006115401.1521958-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201006115401.1521958-1-imre.deak@intel.com>
References: <20201006115401.1521958-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/skl: Move sanity check of WRPLL p1
 divider value next to its read-out
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the check of p1 divider value next to where it's read out.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 27a8c281382c..2a411dd46769 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -1591,6 +1591,8 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 	else
 		p1 = 1;
 
+	if (drm_WARN_ON(&i915->drm, p1 == 0))
+		return 0;
 
 	switch (p0) {
 	case DPLL_CFGCR2_PDIV_1:
@@ -1641,9 +1643,6 @@ static int skl_ddi_wrpll_get_freq(struct drm_i915_private *i915,
 	dco_freq += ((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9) *
 		    ref_clock / 0x8000;
 
-	if (drm_WARN_ON(&i915->drm, p0 == 0 || p1 == 0 || p2 == 0))
-		return 0;
-
 	return dco_freq / (p0 * p1 * p2 * 5);
 }
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
