Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADCB8CA255
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 20:58:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB0010E17B;
	Mon, 20 May 2024 18:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RJJOLmyr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD1010E31E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 18:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716231500; x=1747767500;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cueiYG9zerXsrx8PgoBTPCzMVz0ZP7NFU/vgx+Vn1uQ=;
 b=RJJOLmyr5R9guMyHiaFVNG/TQ8Rg2NckuLLx4tvDw+c/5xyM6jL2GJOy
 2NklAymMEtO0z3DJlNJwvzP8dFJiTBSuol0XVzYNzw+gXFc4i9YJiNj1E
 63XLXpbSeBcLwFHFrilX6m6TtRDrkHep8E+pVDKEhtGNaHWs5NRc4yt61
 pV3MnotLYm8D94PIkfBwwqpqxs5k/tkO/FSlZ2T/k4hqsqpE3zDt9k/0/
 s/Fp0+nuViA70HqFKumFfXW9TPZDKfpIV8HZfi0/b/b8QpH7C5L+Vy052
 ASukHHCWjapqKP5IlBh+XFXl2gN0OhpJf85519PQpNTV1CTuhpUTGIKsB w==;
X-CSE-ConnectionGUID: xKucSsieR9mjicY1pBMBmw==
X-CSE-MsgGUID: e0IoYxkTQACY5vVA0NO6Hw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16218506"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16218506"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:20 -0700
X-CSE-ConnectionGUID: tE5ep867TDmnlAl6Y4wGdQ==
X-CSE-MsgGUID: pHoJyMSOSaKT8D55YVxijg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="37213829"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 11:58:19 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 01/21] drm/i915/dp_mst: Align TUs to avoid splitting
 symbols across MTPs
Date: Mon, 20 May 2024 21:57:59 +0300
Message-ID: <20240520185822.3725844-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240520185822.3725844-1-imre.deak@intel.com>
References: <20240520185822.3725844-1-imre.deak@intel.com>
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

Symbols consisting of multiple (4) TU timeslots may get split across
MTPs when using 2 or 1 link lanes. Avoid this, as required by Bspec by
aligning the allocated TUs to 2 when using 2 lanes and 4 when using 1
lane.

Atm, we also have to align the PBNs used to allocate BW along the MST
path, since DRM core keeps track of its own TU value, derived from the
PBN and that TU value must match what the driver calculates.

On some platforms the alignment is only required on 8b/10b links, a
follow-up patch will remove the limitation for those.

Bspec: 49266, 68922

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 ++++++++++++++++++---
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c772ba19c5477..c9c5d235744ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -207,6 +207,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		int remote_bw_overhead;
 		int link_bpp_x16;
 		int remote_tu;
+		fixed20_12 pbn;
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
@@ -237,11 +238,29 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
 		 * enable SSC on the corresponding link.
 		 */
-		crtc_state->pbn = intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
-							link_bpp_x16,
-							remote_bw_overhead);
+		pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
+							      link_bpp_x16,
+							      remote_bw_overhead));
+		remote_tu = DIV_ROUND_UP(pbn.full, mst_state->pbn_div.full);
 
-		remote_tu = DIV_ROUND_UP(dfixed_const(crtc_state->pbn), mst_state->pbn_div.full);
+		/*
+		 * Aligning the TUs ensures that symbols consisting of multiple
+		 * (4) symbol cycles don't get split between two consecutive
+		 * MTPs, as required by Bspec.
+		 * TODO: remove the alignment restriction for 128b/132b links
+		 * on some platforms, where Bspec allows this.
+		 */
+		remote_tu = ALIGN(remote_tu, 4 / crtc_state->lane_count);
+
+		/*
+		 * Also align PBNs accordingly, since MST core will derive its
+		 * own copy of TU from the PBN in drm_dp_atomic_find_time_slots().
+		 * The above comment about the difference between the PBN
+		 * allocated for the whole path and the TUs allocated for the
+		 * first branch device's link also applies here.
+		 */
+		pbn.full = remote_tu * mst_state->pbn_div.full;
+		crtc_state->pbn = dfixed_trunc(pbn);
 
 		drm_WARN_ON(&i915->drm, remote_tu < crtc_state->dp_m_n.tu);
 		crtc_state->dp_m_n.tu = remote_tu;
-- 
2.43.3

