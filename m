Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4866D621824
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941BC10E48C;
	Tue,  8 Nov 2022 15:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ABBC10E2B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920982; x=1699456982;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8ib8s1y9q/ex/H/Qpv7VOMy5F3DmTPdsjeV9KYFcaeU=;
 b=S1Sy/g4nO6XdF+kF5XMHeJl29PBVr8CusWHAvCp7KvZNpiV1uhJrP7o1
 3mepfPDBt10Lwlq9P7TavihBWkO+ERnYjf2Zq0lwBNyXh8JlPkEg1fQCM
 1SJFb9L3wvtBU5QAZyrynefQI/tYlwlyQoZ6MKt61mNoYRLpJrPslSsn3
 8R+NUvwpFWmE60ig+Rl2uS8bU3eo3I4doJ4p1XDJfztO3knVoD942AWl4
 En6ANYKDpLyT6J9wv1+rZc9zy/WPzkRQKFBcPXzvQFKDJWqJguSzP6Jiz
 T4uLyfbMmjTK55TcKI+YMX6B0WgL3pvaUne1/x0+q41G2uG9H7mpvehob Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="374992588"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="374992588"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="669580923"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="669580923"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:18:38 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:28 +0200
Message-Id: <20221108151828.3761358-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-10-imre.deak@intel.com>
References: <20221107170917.3566758-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 9/9] drm/i915/mtl+: Don't enable the AUX_IO
 power for non-eDP port main links
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

MTL+ requires the AUX_IO power for the main link only on eDP, so don't
enable it in other cases.

v2:
- Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cc4bc529a78a5..7a4b5a7d2ec66 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -866,7 +866,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port)
 	 */
 	if (intel_encoder_can_psr(&dig_port->base))
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
-	else if (intel_phy_is_tc(i915, phy))
+	else if (DISPLAY_VER(i915) < 14 && intel_phy_is_tc(i915, phy))
 		return intel_aux_power_domain(dig_port);
 	else
 		return POWER_DOMAIN_INVALID;
-- 
2.37.1

