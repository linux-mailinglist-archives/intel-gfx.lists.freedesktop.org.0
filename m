Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272256C9B74
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 08:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6108610E20C;
	Mon, 27 Mar 2023 06:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D54D10E195
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 06:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679899340; x=1711435340;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=E4JcHr8Q0jXZByJesJOVtV29+zl7U6Gsefm6XRRDq2I=;
 b=TCJeIUEX0b17jqSW7OOlcQYOgc21fHg0StgOSKYSlvnMqtqWCWAY9gHk
 hUKCBME6zqbK6gciqOLBF16Ds33FbV8FrC7fr/ACuz1Jki3wG+c+U+iD/
 uykiHQNA5pgyj8TVB5d/vi3PpC7P9LuLRB0s+tKcTyRXb+LmpzxU24TY6
 9/DdEzPNkEda3pjFvgjcuHqPP8d88RJF3CpXM6LAVzwTiXPflwmUhbxSo
 wEGO2jCsd2O/DFxkJRhaWdoXSu0DfUu1/MlbShBfaqSb6fheP37DaoGMb
 mFG+Lsf63EJtNCB+53dYzyt8xqPyx3JzjghVrBJDIU4TFEI5Yf8uptXCP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="367933611"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="367933611"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 23:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="752584902"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="752584902"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2023 23:42:18 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 09:42:17 +0300
Message-Id: <20230327064217.24033-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Use compressed bpp when calculating
 m/n value for DP MST DSC
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For obvious reasons, we use compressed bpp instead of pipe bpp for
DSC DP SST case. Lets be consistent and use compressed bpp instead of
pipe bpp, also in DP MST DSC case.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a860cbc5dbea..c3e8db943e9c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -232,7 +232,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 			return slots;
 	}
 
-	intel_link_compute_m_n(crtc_state->pipe_bpp,
+	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
 			       crtc_state->lane_count,
 			       adjusted_mode->crtc_clock,
 			       crtc_state->port_clock,
-- 
2.37.3

