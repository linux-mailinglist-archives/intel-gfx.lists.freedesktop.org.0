Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C257A0E49
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121EE10E59C;
	Thu, 14 Sep 2023 19:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD8C410E588
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719627; x=1726255627;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cL5TTbN6UjW8rbUc+TlhH5PQLlOrrUCH/6vBhYoRIqY=;
 b=QWMAFhiG++SHkIcuz2BDUTyJan5AQNFQEiANeBqLPWrTt1nrgaYWJYx4
 mp4nI8Xdty2sdUscR4oY1kHssh2vLW2kbMs+lzcmE8aBMZ13EVjws57wN
 V5PptSjOJx9j317UAdWUxX3Sl0QOy6LQM5Hbb9uL4nn3OoxcSpA6OHe09
 fsvMXJUZKgPxiPmLBJmOOmAUWlx9Uj9BrCb8W2dX0BPUT4TvFhe021WGf
 7TvhjQfasOyTuonQuyY8MzgA3iVHczrQOCPDvSNBlRDt4iPwo8I3lnz59
 mi8I0kmQnMzlLrntl7o3fq3zxU7PBpEPqNfQod9u17+wuR/PfFqVfdto0 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421763"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421763"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790607"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790607"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:52 +0300
Message-Id: <20230914192659.757475-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 18/25] drm/i915/dp_mst: Add atomic state for
 all streams on pre-tgl platforms
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

If an MST stream is modeset, its state must be checked along all the
other streams on the same MST link, for instance to resolve a BW
overallocation of a non-sink MST port or to make sure that the FEC is
enabled/disabled the same way for all these streams.

To prepare for that this patch adds all the stream CRTCs to the atomic
state and marks them for modeset similarly to tgl+ platforms. (If the
state computation doesn't change the state the CRTC is switched back to
fastset mode.)

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c1fea894d3774..832e8b0e87e84 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -491,9 +491,6 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
 	struct intel_connector *connector_iter;
 	int ret = 0;
 
-	if (DISPLAY_VER(dev_priv) < 12)
-		return  0;
-
 	if (!intel_connector_needs_modeset(state, &connector->base))
 		return 0;
 
-- 
2.37.2

