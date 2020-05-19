Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5FD1D976B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:15:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A51B6E332;
	Tue, 19 May 2020 13:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2536F6E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:15:24 +0000 (UTC)
IronPort-SDR: nsS6ahU531yG4oxW1mGElyBEBjf4Is5diRvmuK0XDNVOTrAsPlG+UZYpBEKxDJhryupOQzhqIi
 1Mw751tfg0Kg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 06:15:23 -0700
IronPort-SDR: MkaACPR4cmIY6XZA0eDJDQnz3l6dlreY6oEzVrPfjU4DDLCa3HeK5XvIyVARZAziNEzNgmi8YK
 x11k06UwfaFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="282318095"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2020 06:15:22 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 May 2020 16:11:14 +0300
Message-Id: <20200519131117.17190-5-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
References: <20200519131117.17190-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 4/7] drm/i915: Plane configuration affects
 CDCLK in Gen11+
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

From: Stanislav Lisovskiy <stanislav.lisovskiY@intel.com>

So lets support it.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a9ab66d97360..800ae3768841 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14569,7 +14569,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 	/* See {hsw,vlv,ivb}_plane_ratio() */
 	return IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv) ||
 		IS_CHERRYVIEW(dev_priv) || IS_VALLEYVIEW(dev_priv) ||
-		IS_IVYBRIDGE(dev_priv);
+		IS_IVYBRIDGE(dev_priv) || (INTEL_GEN(dev_priv) >= 11);
 }
 
 static int intel_atomic_check_planes(struct intel_atomic_state *state)
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
