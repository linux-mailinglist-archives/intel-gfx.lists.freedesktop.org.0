Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9189F04E1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:35:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194B110EF1E;
	Fri, 13 Dec 2024 06:35:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cQ9oPuiC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE2F810EF18;
 Fri, 13 Dec 2024 06:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071756; x=1765607756;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oEi3FKZ7Ll1gIcXkxJEhHuWAovdeDlGQr0nHQguSJ6c=;
 b=cQ9oPuiCkkAlRt5Uf4L93Vi/lFj8sRyDmpsQf4pGhlFqUSi1G3DbsJpz
 5tOjo+N5x6TT7wGavXBg5qmkNpRqYn97sO80EcJv1Tsc4A5B1DQ5oRAOM
 tpDsjnTOkbI5LyOgWv38Zh5wxjDN1HXWCr1IcjuXdEvAlBlUDcBY8pFlo
 CfZ4Lj4IgmdA+An9o0qkR+HrkyErdiHktgj/e0yveoC28KgKCqR1KoGti
 LhKlpc+uErcvO24KYD8iDZY6zvhewG7mutPcQjKtphMifToXTNqx5VuMJ
 t0R/kUzvqho7oLD4uL7Ywk3Bu1nRYVhQSMRFigA9DA2Cj9wtkduomQEbP Q==;
X-CSE-ConnectionGUID: SxKEuxy1Scqtsrw8K8E7Gg==
X-CSE-MsgGUID: XgtYpKboSz6HZewlyxWZzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="33846858"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="33846858"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:56 -0800
X-CSE-ConnectionGUID: vNcumQ+3SuSP2i06MoXW9Q==
X-CSE-MsgGUID: wXhcd6I5R5Oj09lb0XQdqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96307792"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.191])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:35:55 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 10/10] drm/i915/psr: Allow DSB usage when PSR is enabled
Date: Fri, 13 Dec 2024 08:35:28 +0200
Message-Id: <20241213063528.2759659-11-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241213063528.2759659-1-jouni.hogander@intel.com>
References: <20241213063528.2759659-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Now as we have correct PSR2_MAN_TRK_CTL handling in place we can allow DSB
usage also when PSR is enabled for LunarLake onwards.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 985d7242b102..1221deb5c392 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7653,6 +7653,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_display *display = to_intel_display(crtc);
 
 	if (!new_crtc_state->hw.active)
 		return;
@@ -7665,7 +7666,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 		new_crtc_state->update_planes &&
 		!new_crtc_state->vrr.enable &&
 		!new_crtc_state->do_async_flip &&
-		!new_crtc_state->has_psr &&
+		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
 		!new_crtc_state->scaler_state.scaler_users &&
 		!old_crtc_state->scaler_state.scaler_users &&
 		!intel_crtc_needs_modeset(new_crtc_state) &&
-- 
2.34.1

