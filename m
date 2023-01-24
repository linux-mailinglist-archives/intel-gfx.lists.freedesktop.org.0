Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6F1679523
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 11:27:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3C3310E65F;
	Tue, 24 Jan 2023 10:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796A410E65F
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674556019; x=1706092019;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1NhklEhqb6+4Zc9d/YnDR7e9ArTpmU5QtvyFqhekwY4=;
 b=CZ90nNTTcP1zQpAkShsPHpVsi2eiZZwysySdMS/ocCB7aQvQZvfk0qLC
 EGHB2dVeino4VrWJ3D2xkyr5Pok2cm7hRml35rNWjLyvgMZpAJf9+U/r6
 mpKTGNsBUp940WHb0neDlcO37zW+oia27eaB2j0UrVLO1OzD3I9d+AjE9
 tmAqevqaOVAYhtAoCxQ/dFXCYS1dO+G5yQuFUsoFvUiXwq7ppQLeGLBsX
 iVU5iuwsfoDmjGcDrYsQsqCGsiLzVORYUl3oc21MdbiUesuHagfBGJg2G
 Uxd9o14yfyoYA3J8t3kiWNtOYRVVQ5iLBY2+DBXU1Wy5/Rxha1wmx6Jbc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="388611567"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="388611567"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 02:26:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="786027623"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="786027623"
Received: from dhenel-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.164])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 02:26:57 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 12:26:35 +0200
Message-Id: <20230124102636.2567292-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124102636.2567292-1-jouni.hogander@intel.com>
References: <20230124102636.2567292-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/psr: Implement Wa_14014971492
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement Wa_14014971492 and apply it for affected platforms.

Bspec: 52890, 54369, 55378, 66624

v2: Adjust platforms where applied

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 7d4a15a283a0..7a72e15e6836 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1842,6 +1842,12 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
+	/* Wa_14014971492 */
+	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
+	    crtc_state->splitter.enable)
+		pipe_clip.y1 = 0;
+
 	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
 	if (ret)
 		return ret;
-- 
2.34.1

