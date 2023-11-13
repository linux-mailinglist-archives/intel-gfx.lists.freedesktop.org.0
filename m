Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3BF7EA46F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 21:11:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B0D10E415;
	Mon, 13 Nov 2023 20:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B83D10E27F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 20:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699906274; x=1731442274;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mv9l/FlFzwU4bcR2/KBDLfQT1PcdZqPzTXpUqCbLtdk=;
 b=izBKW0Ou8nV4DElYIS/eu+GZtKWrCGKdE0MqWs7BrBUElT4a9lcNJPM6
 oiGrjJbDuQkSxpgH//HhfIpg1o1JcVNB5Y4UUQ9hZupHlPhWBt7rRGGJp
 SqpeXKfji1YJd24OxiS8sAEiAr86HnNMMCseeHV+7tyCtXmiuGVsXCuhr
 hyyrmp56IDpuMhzjbVmDzZJ+lrrzxRBR675Qdbeux1sPkkgMXuztuO2Zs
 GzElLUW0jUwo+lAFSpNOl57c0Fn62dQly/ZeW4SyX6A2z8wqkrEv0g/16
 YKESKLMJQIg9UPn0QyLj4FTd71YrzFUhZtkBwVFNrhP55YsyyubV6P/op w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="3553664"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; 
   d="scan'208";a="3553664"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 12:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="937829889"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="937829889"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 12:11:12 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Nov 2023 22:11:09 +0200
Message-Id: <20231113201110.510724-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231113201110.510724-1-imre.deak@intel.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/dp_mst: Fix PBN / MTP_TU size
 calculation for UHBR rates
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

Atm the allocated MST PBN value is calculated from the TU size (number
of allocated MTP slots) as

  PBN = TU * pbn_div

pbn_div being the link BW for each MTP slot. For DP 1.4 link rates this
worked, as pbn_div there is guraranteed to be an integer number, however
on UHBR this isn't the case. To get a PBN, TU pair where TU is a
properly rounded-up value covering all the BW corresponding to PBN,
calculate first PBN and from PBN the TU value.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index b943dbf394a22..a32ab0b4fc9d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -170,6 +170,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		struct intel_link_m_n remote_m_n;
+		int alloc_tu;
 		int link_bpp;
 
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
@@ -200,9 +201,14 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		 * crtc_state->dp_m_n.tu), provided that the driver doesn't
 		 * enable SSC on the corresponding link.
 		 */
+		crtc_state->pbn = DIV_ROUND_UP_ULL(mul_u32_u32(mst_state->pbn_div * 64,
+							       remote_m_n.data_m),
+						   remote_m_n.data_n);
+
+		alloc_tu = DIV_ROUND_UP_ULL(crtc_state->pbn, mst_state->pbn_div);
+		drm_WARN_ON(&i915->drm, alloc_tu < remote_m_n.tu);
 		drm_WARN_ON(&i915->drm, remote_m_n.tu < crtc_state->dp_m_n.tu);
-		crtc_state->dp_m_n.tu = remote_m_n.tu;
-		crtc_state->pbn = remote_m_n.tu * mst_state->pbn_div;
+		crtc_state->dp_m_n.tu = alloc_tu;
 
 		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
 						      connector->port,
-- 
2.39.2

