Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 05229123C9B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 02:43:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D2306E219;
	Wed, 18 Dec 2019 01:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD2836E215
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 01:43:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 17:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="247697569"
Received: from ldmartin1-desk.jf.intel.com ([10.54.74.64])
 by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2019 17:43:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Dec 2019 17:42:06 -0800
Message-Id: <20191218014208.7916-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191218014208.7916-1-lucas.demarchi@intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/display: prefer 3-letter acronym
 for cannonlake
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

We are currently using a mix of platform name and acronym to name the
functions. Let's prefer the acronym as it should be clear what platform
it's about and it's shorter, so it doesn't go over 80 columns in a few
cases. This converts cannonlake to cnl where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7d14a0144ec3..3b623426f243 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10232,9 +10232,8 @@ static int hsw_crtc_compute_clock(struct intel_crtc *crtc,
 	return 0;
 }
 
-static void cannonlake_get_ddi_pll(struct drm_i915_private *dev_priv,
-				   enum port port,
-				   struct intel_crtc_state *pipe_config)
+static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
 {
 	enum intel_dpll_id id;
 	u32 temp;
@@ -10536,7 +10535,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 	if (INTEL_GEN(dev_priv) >= 11)
 		icelake_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_CANNONLAKE(dev_priv))
-		cannonlake_get_ddi_pll(dev_priv, port, pipe_config);
+		cnl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_BC(dev_priv))
 		skl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_LP(dev_priv))
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
