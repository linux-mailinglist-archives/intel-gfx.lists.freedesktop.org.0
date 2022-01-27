Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB1349DE1F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90FCE10EFD1;
	Thu, 27 Jan 2022 09:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B120610EFD5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643276030; x=1674812030;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=H0pwb11jmH+wapFzDNdL5WmFM7hlyO00UT2S+sU1Xj4=;
 b=ZYYei56R4BTO9f72dhORZiOqaoCzqTobOYlVSk196mFLAGvVsuRM400g
 DAgIJHeiU1wrZ81dMhzHsIXgc4luTWxu3UYTTyU+M3VLplIjF8is/wi1y
 UcjS0XupYemfw0io983F8kPfCzxP5d0EL4SZArYQlzX518d5LOTlZwxYl
 J8CjmszRV6CZHagCatB5cl9vXCX0psIlcjvPP9qkxF0dCcTALYGAgItfF
 Zj7Xr/BiX1Qk8x/y8uCqkzqIMqAclPkk3xAAJ1j24NqPE7lQXBsQrrmx7
 34lzMt37RCSBv/W4rnqvRM/nf60cj9dFaRTXj3kWNqwz5/Y2rAJ0dzL+7 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="271255059"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="271255059"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="521154941"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 27 Jan 2022 01:33:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:33:00 +0200
Message-Id: <20220127093303.17309-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/14] drm/i915: Dump dp_m2_n2 always
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

No point in special casing the dp_m2_n2 dumping. Just do it always.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8b4d842e2ee0..93bb4f577960 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5624,11 +5624,11 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 
 	if (intel_crtc_has_dp_encoder(pipe_config)) {
 		intel_dump_m_n_config(pipe_config, "dp m_n",
-				pipe_config->lane_count, &pipe_config->dp_m_n);
-		if (pipe_config->has_drrs)
-			intel_dump_m_n_config(pipe_config, "dp m2_n2",
-					      pipe_config->lane_count,
-					      &pipe_config->dp_m2_n2);
+				      pipe_config->lane_count,
+				      &pipe_config->dp_m_n);
+		intel_dump_m_n_config(pipe_config, "dp m2_n2",
+				      pipe_config->lane_count,
+				      &pipe_config->dp_m2_n2);
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
-- 
2.34.1

