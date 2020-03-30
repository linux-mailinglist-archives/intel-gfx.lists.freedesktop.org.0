Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B05197F7F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 17:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26526E421;
	Mon, 30 Mar 2020 15:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1086E421
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 15:22:57 +0000 (UTC)
IronPort-SDR: es7ZResrBrnckvm/TyzWkc6woM03p3vWiwvulYJe1mffCp1tPmO5MDgpVHOdbg9VeoZqb4nBtl
 cnbxmg4Jcw8w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 08:22:46 -0700
IronPort-SDR: VPsHJZfrK7HppLj1wlNQEaTO2HIfOiOdtz+dyMZJjicCB9DfuV2IOxCItKP6sT2BP3gQg8PWkm
 MATqeatPWQcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="248733724"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 08:22:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 18:22:44 +0300
Message-Id: <20200330152244.11316-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl+: Don't enable DDI IO power on a
 TypeC port in TBT mode
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The DDI IO power well must not be enabled for a TypeC port in TBT mode,
ensure this during driver loading/system resume.

This gets rid of error messages like
[drm] *ERROR* power well DDI E TC2 IO state mismatch (refcount 1/enabled 0)

and avoids leaking the power ref when disabling the output.

Cc: <stable@vger.kernel.org> # v5.4+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 916a802af788..654151d9a6db 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1899,7 +1899,11 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 		return;
 
 	dig_port = enc_to_dig_port(encoder);
-	intel_display_power_get(dev_priv, dig_port->ddi_io_power_domain);
+
+	if (!intel_phy_is_tc(dev_priv, phy) ||
+	    dig_port->tc_mode != TC_PORT_TBT_ALT)
+		intel_display_power_get(dev_priv,
+					dig_port->ddi_io_power_domain);
 
 	/*
 	 * AUX power is only needed for (e)DP mode, and for HDMI mode on TC
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
