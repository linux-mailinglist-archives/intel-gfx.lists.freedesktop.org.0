Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A20834398E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:38:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A00C6E0C5;
	Mon, 22 Mar 2021 06:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C8766E0BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 06:38:19 +0000 (UTC)
IronPort-SDR: EgMtLWx66GOh1WPSf946EgGbdWY9hIrfDB8es+uo0HHTLd3io4vYDaErq0qMQ4Ju6PpAeW32ip
 wAByk6SyljVA==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190238709"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="190238709"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:19 -0700
IronPort-SDR: yT0iGX1cALTVad8jm3dx0AV70fZU06gMeDwk3m1xIBtSIqxJ/BMpoeU6MNqHTS+hS2yUfsiaFs
 zQCEINbnXB/g==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451627103"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:17 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 20:00:02 +0530
Message-Id: <20210322143008.29250-2-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/display: Introduce vfunc
 read_csc() to create hw ctm
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

In this patch, a vfunc read_csc() is introduced to create a hw ctm
i.e. ctm having values read from CSC registers which will later be
used to compare with sw ctm to validate CSC coeff values.

Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 +++
 drivers/gpu/drm/i915/i915_drv.h            | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index ff7dcb7088bf..17bb08e9cf64 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1209,6 +1209,9 @@ void intel_color_get_config(struct intel_crtc_state *crtc_state)
 
 	if (dev_priv->display.read_luts)
 		dev_priv->display.read_luts(crtc_state);
+
+	if (dev_priv->display.read_csc)
+		dev_priv->display.read_csc(crtc_state);
 }
 
 static bool need_plane_update(struct intel_plane *plane,
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 214fe10eb092..a8b55aca5fc4 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -327,6 +327,7 @@ struct drm_i915_display_funcs {
 	 */
 	void (*load_luts)(const struct intel_crtc_state *crtc_state);
 	void (*read_luts)(struct intel_crtc_state *crtc_state);
+	void (*read_csc)(struct intel_crtc_state *crtc_state);
 };
 
 struct intel_csr {
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
