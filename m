Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5807A0E4A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE5C10E59B;
	Thu, 14 Sep 2023 19:27:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AD6F10E596
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719631; x=1726255631;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fVdKKVeHhbvmD0uGAnnuScukUcZu+TQMhEBbFrndmYk=;
 b=f+sZ9GIpoSziGcos0Y4DY42MbUFlaa557wwFg2cbb9grEoMe6A2VWnpH
 TuXkQmSIQ7huRsoNv6YfvRpMdox99zQxgo3o0ZxCWmNe4c+Nqc9ch3A32
 hrcXvqXqqgkgPC0tXFzMcgi9xpC5yVHTyvDL1wX5bRyct1dI+8UAkRHTo
 MShUHvUfnJC2UYMHjtVdzRvBbYYtuDagSx21UxfMHj9sV1UPkTiggEEMu
 DqOVNeiuLF2QrBlx/RKtViLtwabQK0RQl/1TDpFDV3fOS/9PBlbSSZMVO
 o6pss9Ypc5Fo20k5V+/IX9PjqlQV67XLeETHz9BkTMsgYIMXrjQqnxIBs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421780"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421780"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790625"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790625"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:55 +0300
Message-Id: <20230914192659.757475-22-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 21/25] drm/i915/dp_mst: Enable DSC
 decompression if any stream needs this
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

Atm DSC decompression is enabled in the sink only if the first stream is
compressed. This left compressed streams blank if the first stream was
uncompressed.

Enable decompression whenever FEC is enabled, which will be true for all
streams if any stream is compressed. Enabling FEC correctly in all
streams will be only fixed by an upcoming patch.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e942eb95d688f..ce8eafa4ece06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2917,7 +2917,13 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int ret;
 
-	if (!crtc_state->dsc.compression_enable)
+	/*
+	 * In case of MST any stream can be compressed not just the first. If
+	 * any stream is compressed FEC will be enabled in all streams, so toggle
+	 * decompression whenever FEC is enabled.
+	 */
+	if (!crtc_state->dsc.compression_enable &&
+	    !crtc_state->fec_enable)
 		return;
 
 	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_DSC_ENABLE,
-- 
2.37.2

