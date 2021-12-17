Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9655047908D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 16:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C57310E3CA;
	Fri, 17 Dec 2021 15:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CDE10E31B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 15:54:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="238519361"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="238519361"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:54:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="612162849"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 17 Dec 2021 07:54:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 17:54:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 17:53:58 +0200
Message-Id: <20211217155403.31477-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/bios: Introduce has_ddi_port_info()
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

Pull the "do we want to use i915->vbt.ports[]?" check into
a central place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 76a8f001f4c4..fce1ea7a6693 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2073,6 +2073,11 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 	i915->vbt.ports[port] = devdata;
 }
 
+static bool has_ddi_port_info(struct drm_i915_private *i915)
+{
+	return HAS_DDI(i915);
+}
+
 static void parse_ddi_ports(struct drm_i915_private *i915)
 {
 	struct intel_bios_encoder_data *devdata;
@@ -2673,7 +2678,7 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 		[PORT_F] = { DVO_PORT_DPF, DVO_PORT_HDMIF, },
 	};
 
-	if (HAS_DDI(i915))
+	if (has_ddi_port_info(i915))
 		return i915->vbt.ports[port];
 
 	/* FIXME maybe deal with port A as well? */
@@ -2713,7 +2718,7 @@ bool intel_bios_is_port_edp(struct drm_i915_private *i915, enum port port)
 		[PORT_F] = DVO_PORT_DPF,
 	};
 
-	if (HAS_DDI(i915)) {
+	if (has_ddi_port_info(i915)) {
 		const struct intel_bios_encoder_data *devdata;
 
 		devdata = intel_bios_encoder_data_lookup(i915, port);
@@ -2768,7 +2773,7 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
 	};
 	const struct intel_bios_encoder_data *devdata;
 
-	if (HAS_DDI(i915)) {
+	if (has_ddi_port_info(i915)) {
 		const struct intel_bios_encoder_data *devdata;
 
 		devdata = intel_bios_encoder_data_lookup(i915, port);
-- 
2.32.0

