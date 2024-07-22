Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6699F9392CD
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 18:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CFB10E1ED;
	Mon, 22 Jul 2024 16:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TP7RMKn9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CFF10E1DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2024 16:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721667296; x=1753203296;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ibRd6IcLzu6+IZ2fOcdgkyFtQsOTwGMz2s92I5PzfRg=;
 b=TP7RMKn9a2D1h/yqAsNiGzRGMbf04qYvgZ+DxE6dqegutfKvuRg1bUl9
 nyWiShyx67y5pKlOKLBW0mDblUwJPvCMYWNVbYle0+rwMrJUjDklIhxKn
 OFF6471DPWw6/jxqA9pUL+fKYlO6SyIp6YJi7sIi826ALlfO6Ar/ATZ+T
 hgXPRaq01XSqC/Uqs+NGvqIgaKq5vINKO7RztpeculKzVvN2gUDdwEiHW
 BrgLbevOAe0nfrII+sDx2Uel3+QRKZFBmAvs/Skw0chw4dJQmgobQpT1C
 h62pGK3+gw+W0QJEFUoFOUSIFlDAF/z8B0rQFUUIvIBj0W7doNRpQzSSv A==;
X-CSE-ConnectionGUID: 6l97EAqcRTa1Nu53leuPTQ==
X-CSE-MsgGUID: S/1jGi1PS9+6qJcoY8xQ5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="23117311"
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="23117311"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:56 -0700
X-CSE-ConnectionGUID: 1s9fjM71TbOM7lt4bT66vA==
X-CSE-MsgGUID: j8LvtPB/R1Sukajp6RV07g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,228,1716274800"; d="scan'208";a="57056214"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 09:54:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/14] drm/i915/dp: Initialize the link parameters during HW
 readout
Date: Mon, 22 Jul 2024 19:54:54 +0300
Message-ID: <20240722165503.2084999-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240722165503.2084999-1-imre.deak@intel.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
MIME-Version: 1.0
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

Initialize the DP link parameters during HW readout. These need to be
up-to-date at least for the MST topology probing, which depends on the
link rate and lane count programmed in DPCD. A follow-up patch will
program the DPCD values to reflect the maximum link parameters before
the first MST topology probing, but should do so only if the link is
disabled (link_trained==false).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1e43e32e05199..421e970b3c180 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3352,8 +3352,11 @@ void intel_dp_sync_state(struct intel_encoder *encoder,
 
 	intel_dp_tunnel_resume(intel_dp, crtc_state, dpcd_updated);
 
-	if (crtc_state)
+	if (crtc_state) {
 		intel_dp_reset_link_params(intel_dp);
+		intel_dp_set_link_params(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
+		intel_dp->link_trained = true;
+	}
 }
 
 bool intel_dp_initial_fastset_check(struct intel_encoder *encoder,
-- 
2.44.2

