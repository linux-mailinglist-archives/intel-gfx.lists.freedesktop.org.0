Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD079197816
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 11:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 069906E11B;
	Mon, 30 Mar 2020 09:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3286C6E069
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 09:55:32 +0000 (UTC)
IronPort-SDR: jFTfv19qdkT5kJu0HSscYzksKsy+IXdU0rIF01Su/hbezZxkvaghEXqFL2KwmF2ZZN8ftginSM
 aDYfp5cF2bCA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 02:55:31 -0700
IronPort-SDR: G8wkIEGd/Nd+YeiTI/dXUQx9zmpQORbd1x0swAJy+yBHYyTVUAwQqdsZOVp5kqOmCmN3gpN6cE
 40RqXVj4PzIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,323,1580803200"; d="scan'208";a="248650470"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 02:55:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 12:54:25 +0300
Message-Id: <20200330095425.29113-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200330095425.29113-1-imre.deak@intel.com>
References: <20200330095425.29113-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Extend hotplug detect retry on
 TypeC connectors to 5 seconds
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

On TypeC ports if a sink deasserts/reasserts its HPD signal, generating
a hotplug interrupt without the sink getting unplugged/replugged from
the connector, there can be an up to 3 seconds delay until the AUX
channel gets functional. To avoid detection failures this delay causes
retry the detection for 5 seconds.

I noticed this on ICL/TGL RVPs and a DELL XPS 13 7390 ICL laptop.

References: https://gitlab.freedesktop.org/drm/intel/issues/1067
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f508bf70f3b..2d947ff83488 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4371,7 +4371,10 @@ static enum intel_hotplug_state
 intel_ddi_hotplug(struct intel_encoder *encoder,
 		  struct intel_connector *connector)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	bool is_tc = intel_phy_is_tc(i915, phy);
 	struct drm_modeset_acquire_ctx ctx;
 	enum intel_hotplug_state state;
 	int ret;
@@ -4414,8 +4417,15 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 	 * valid EDID. To solve this schedule another detection cycle if this
 	 * time around we didn't detect any change in the sink's connection
 	 * status.
+	 *
+	 * Type-c connectors which get their HPD signal deasserted then
+	 * reasserted, without unplugging/replugging the sink from the
+	 * connector, introduce a delay until the AUX channel communication
+	 * becomes functional. Retry the detection for 5 seconds on type-c
+	 * connectors to account for this delay.
 	 */
-	if (state == INTEL_HOTPLUG_UNCHANGED && !connector->hotplug_retries &&
+	if (state == INTEL_HOTPLUG_UNCHANGED &&
+	    connector->hotplug_retries < (is_tc ? 5 : 1) &&
 	    !dig_port->dp.is_mst)
 		state = INTEL_HOTPLUG_RETRY;
 
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
