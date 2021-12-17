Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3A647908F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 16:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AD6510E3D8;
	Fri, 17 Dec 2021 15:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8BDB10E41B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 15:54:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="227063428"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="227063428"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:54:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="520676775"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 17 Dec 2021 07:54:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 17:54:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 17:53:59 +0200
Message-Id: <20211217155403.31477-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/bios: Use i915->vbt.ports[] on CHV
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

CHV is currently straddling the divide by using parse_ddi_ports() stuff
for aux_ch/ddc_pin but going through all old codepaths for the rest
(intel_bios_is_port_present(), intel_bios_is_port_edp(),
intel_bios_is_port_dp_dual_mode()). Let's switch over full and use
i915->vbt.ports[] for the rest of the stuff.

dvo_port_to_port() doesn't know about DSI so we won't get into
any kind of "is port B HDMI or DSI or both?" conundrum, which
could otherwise happen on VLV/CHV due to DSI ports living in a
separate world from the other digital ports.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index fce1ea7a6693..b7adea9827c3 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2075,14 +2075,14 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 
 static bool has_ddi_port_info(struct drm_i915_private *i915)
 {
-	return HAS_DDI(i915);
+	return HAS_DDI(i915) || IS_CHERRYVIEW(i915);
 }
 
 static void parse_ddi_ports(struct drm_i915_private *i915)
 {
 	struct intel_bios_encoder_data *devdata;
 
-	if (!HAS_DDI(i915) && !IS_CHERRYVIEW(i915))
+	if (!has_ddi_port_info(i915))
 		return;
 
 	if (i915->vbt.version < 155)
-- 
2.32.0

