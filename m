Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D2F671695
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 09:52:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224C610E369;
	Wed, 18 Jan 2023 08:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 237B310E369
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 08:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674031969; x=1705567969;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nk75fpbVBM7q/7qbnGLZBc5qmQZhprVhWlvqgWeara8=;
 b=R08uF8+huWpz3hvNmHi6hWymLNVXTz9FhTw8UHEpN/OSHtSIR4VzlQJI
 lXjOwGP/EYh2FibM/XKP5VxrKupnyrB5bQnDcgRRB+pQvEvT9bg7vAEqZ
 lUEfpyhEkSSGKP3GbGL4hPnHjLmiFmrB2WR0HkAB91NOUkp2BUQZxrT7A
 fIk6L59N5S1G0XHzcgEx+LC8CTqFudyCd7BmEXxnl6TKbP01EkDNjrQgG
 FXewWsqi7E6kJLUlOIORITtI+94zQZXtwPBZUcUS+dZIGducRjoTK8sR3
 Zk08x+SS5DcUjOe5liIdE2MhsNNa9kjOR9Xe5xCCNnARDVyqFkjhS5Awd w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="387284488"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="387284488"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:52:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="637195701"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="637195701"
Received: from kleve-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.53.237])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 00:52:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 10:52:00 +0200
Message-Id: <20230118085200.1017626-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118085200.1017626-1-jouni.hogander@intel.com>
References: <20230118085200.1017626-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Apply Wa_14013475917 for all
 MTL steppings
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

Wa_14013475917 has to be applied for all MTL steppings.

Bspec: 66624

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 6a2ee342eab5..b7a154b46da6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -537,9 +537,7 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
 			       0);
 
 	/* Wa_14013475917 */
-	if ((DISPLAY_VER(dev_priv) == 13 ||
-	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
-	    type == DP_SDP_VSC)
+	if (IS_DISPLAY_VER(dev_priv, 13, 14) && crtc_state->has_psr && type == DP_SDP_VSC)
 		return;
 
 	val |= hsw_infoframe_enable(type);
-- 
2.34.1

