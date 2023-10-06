Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0955C7BB94C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA8710E511;
	Fri,  6 Oct 2023 13:37:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E6F10E501
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599449; x=1728135449;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=3NsJODr3cHc+6GHCk2Xr6naEo5jI/pdFkaGHMLrvvNc=;
 b=M2FfRtrQ41lfnj0wVWyhyHR+JlxRHkf0N416F46vcmQ6LzXrqv+PW2OI
 hW0EsBOGiRi7OUSHj3tQgCNigWDiqRCGJlk92ZtdNDY8ha4GbtTL8MXSk
 BgxvYBNIrDijhvQ2lmo57fNtxDzYdA4lQjgzFirGkOLul7PI5BaBSkDwI
 V58QzCfILr7cwDdEWLkpJKOa5pmAPYTWJpy+x39TgAtyZlmDtCYpMCNWu
 w5jtO6yJHCX+OAHkVo51e1v/tQpnqa7maBHP/RzhMxp5JGaZQCN84lclg
 0GKqz+vl2DB5MsF3AUQcNZQZumUUNp9Jidfi+iSlcEfc//HyhoahxMpmt Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019144"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019144"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841521"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841521"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:25 +0300
Message-Id: <20231006133727.1822579-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 17/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_dsc_compute_config()
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

Use the connector's DSC DPCD capabilities in
intel_dp_dsc_compute_config().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index baab353154e85..f58940c1baf9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2150,7 +2150,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	/* Calculate Slice count */
 	if (intel_dp_is_edp(intel_dp)) {
 		pipe_config->dsc.slice_count =
-			drm_dp_dsc_sink_max_slice_count(intel_dp->dsc_dpcd,
+			drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd,
 							true);
 		if (!pipe_config->dsc.slice_count) {
 			drm_dbg_kms(&dev_priv->drm, "Unsupported Slice Count %d\n",
-- 
2.39.2

