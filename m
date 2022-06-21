Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3261553231
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 14:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADAB4112309;
	Tue, 21 Jun 2022 12:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB60711230D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 12:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655815057; x=1687351057;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aLrUhgECyMPmtjcQEcH4Ns2u6c4VHA4wzzN7I1R1PYg=;
 b=Lg84AU3N1LOxyT6I/mAPpMgFMRK/5BUXmY4iSYaa/llVMKbkuZcpCUw/
 6+8CMrlXV1FIwQcEkZOdOltsPmsMn3DooM2AiTirrK5R+ljteRGpGqJ4y
 wo3eIMB2JP/Xlm/f9ptcV70z+lztHTGi5JB3mDVasxwBL1eN3yWV+MzWh
 KVNXvaG+jXO8xdM79kiMa+K5j0mM6wEGDOC0DTrq4JbjEcrvb6rLbXXTm
 ZJxfwJKS23ipzRALYcelJ6WqJnUCxKDup5NRKFtiaTVUIsQtl83oyNuWK
 RxIUDwTJsDZecPvhTVcaPyFVfzuCnMfd+Uv03m6F1iZe1k+g/LcPs5/ej g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="263140362"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="263140362"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:37:37 -0700
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="643605533"
Received: from rgrotewx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.153])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 05:37:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jun 2022 15:37:32 +0300
Message-Id: <20220621123732.1118437-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: debug log ddi port info after
 parsing
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

The ddc pin and aux channel sanitization may disable DVI/HDMI and DP,
respectively, of ports parsed earlier, in "last one wins" fashion. With
parsing and printing interleaved, we'll end up logging support first and
disabling later anyway.

Now that we've split ddi port info parsing and printing, take it further
by doing the printing in a separate loop, fixing the logging.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ab23324c0402..51dde5bfd956 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2670,8 +2670,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
 
 	sanitize_device_type(devdata, port);
 
-	print_ddi_port(devdata, port);
-
 	if (intel_bios_encoder_supports_dvi(devdata))
 		sanitize_ddc_pin(devdata, port);
 
@@ -2689,12 +2687,18 @@ static bool has_ddi_port_info(struct drm_i915_private *i915)
 static void parse_ddi_ports(struct drm_i915_private *i915)
 {
 	struct intel_bios_encoder_data *devdata;
+	enum port port;
 
 	if (!has_ddi_port_info(i915))
 		return;
 
 	list_for_each_entry(devdata, &i915->vbt.display_devices, node)
 		parse_ddi_port(devdata);
+
+	for_each_port(port) {
+		if (i915->vbt.ports[port])
+			print_ddi_port(i915->vbt.ports[port], port);
+	}
 }
 
 static void
-- 
2.30.2

