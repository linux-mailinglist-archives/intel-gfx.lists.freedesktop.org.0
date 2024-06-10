Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BFE902709
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 18:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043F510E49F;
	Mon, 10 Jun 2024 16:49:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gyq00Nw1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0283D89A94
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 16:49:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718038168; x=1749574168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ydFXMbeIlbnT7GPoJtvQJGlkcRW2dvTIxp003CefUVQ=;
 b=gyq00Nw1WYQwPxTKnq6URUOrLPgO0Sf4gdS9SzKoFcisvdHwLv3EcNm7
 SvU1Y605wPRs1rVDARBn9Ou0MV5UfdKDBGb6NkPHg+PBL13w+8thz3utV
 NjPnjLp13NMByTRwnGsOhLjpfV7nrxzgYpFdff/r434eLTPVNyeG9Oi6/
 C8CxXAJhe5k/0lFhu1qyiTkE5bfJk2/Kmxt+QjGivQuK2jOKzYIRSj+OP
 0DflH+Vlp+YchiAQvfV5whz3GBvI87VqEi5NU513o2/38IA9OgR1nBmR7
 YMiw8glccU6pC330AiCofHPaohd/CSr42GeY/U16bQdX98jpgltrv2eN2 w==;
X-CSE-ConnectionGUID: TnanMcrmRhi3QIO6Hf4Uag==
X-CSE-MsgGUID: ViYeqeZaTeyXD8pNpUcfXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="18493956"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="18493956"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:28 -0700
X-CSE-ConnectionGUID: 5/k4dUqoSeG31kC0v+TxIg==
X-CSE-MsgGUID: gJcR8CU5Sk2nIpQPNCSSDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="39060553"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 09:49:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v3 01/21] drm/i915/dp_mst: Align TUs to avoid splitting
 symbols across MTPs
Date: Mon, 10 Jun 2024 19:49:13 +0300
Message-ID: <20240610164933.2947366-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
In-Reply-To: <20240610164933.2947366-1-imre.deak@intel.com>
References: <20240610164933.2947366-1-imre.deak@intel.com>
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 27 ++++++++++++++++++---
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 00fdcbc28e9b7..9362eb958310f 100644
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

