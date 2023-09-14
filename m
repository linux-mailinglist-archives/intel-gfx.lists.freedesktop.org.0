Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7975E7A0E43
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C82910E594;
	Thu, 14 Sep 2023 19:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8307610E588
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719626; x=1726255626;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nIHiCGdB9mkA/Dzy58LAJa59qxyMF5DlSBdOGqIh3pM=;
 b=cDhj3fR3OkL4v0aoST4bn6btZhbi8LfAiU20r3CY55xfIdXvPfYfNZ5v
 7LBtzz81EEru293PiT+dpJGK7urmfONiRqbDLRoMKTDP0nvop0IZZXWTA
 vMcZDmDhqJ6QV+ehSF3PFOe908B3ssXIRzN3+vMWYEeRq7UUQRKCvnE+6
 QX1JfxAYB5jAYdYJ1+nFRDiunQNQ8yjb2YmvO+571G5cbWXDgc1LgwAwM
 Ro7MZskdlt5B5HhuvGLTrf/ioxlpd4JtSRxPLe4iKTrlGGovXs2cx48tt
 mXE9uXncFTcFjlocFsQh3dmAA+OLEuH3VIMWiaxI2LiOTgJhNWmojWPE2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421759"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421759"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790605"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790605"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:51 +0300
Message-Id: <20230914192659.757475-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 17/25] drm/i915/dp_mst: Fix PBN calculation
 with FEC overhead
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
index 01291bbb44693..c1fea894d3774 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -110,7 +110,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 		crtc_state->pbn = drm_dp_calc_pbn_mode(adjusted_mode->crtc_clock,
 						       bpp << 4,
-						       false);
+						       (dsc || crtc_state->fec_enable) &&
+							!intel_dp_is_uhbr(crtc_state));
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
-- 
2.37.2

