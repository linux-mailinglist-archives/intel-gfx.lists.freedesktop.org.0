Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABCD616B28
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:46:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A96810E523;
	Wed,  2 Nov 2022 17:46:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD0510E516
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411176; x=1698947176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L95L8e0QMZSkzhraMmn9lK0PcvSFxu4qF4RSO68QG7I=;
 b=VnoSvTtd4C3bfjYYEYZVLgrrjlsEW9ynKvwlilmEtSw51iLK2s5lanu2
 nJJMy3X2VnVZs7j6Iarj7gJ8XvHlbbVBrxbO/IgEt3NoChZfRHlnvA2YC
 r/CqcSCqtqGTsxgFAziYP9egKQ/61xQOBel6zYy/4c/5yl6LE+ezvvkAt
 i15rmHsAt3LXv5+rh/Qf8lEA3Lm8liCdNyeAXIPOtaja7nwwUFV0ywZL5
 fFXAR3X/QP7E3vTogFqB9UnBqT/+jSR06KRJVnjAiiRz5cQMZQGX22Q6k
 9xr/i/RmgHMYo98ISSpEZA1pXKgWuEcD3JM9odvU3WC7JaoHmH4tJRwfv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308197973"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="308197973"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:46:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="759640313"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="759640313"
Received: from asridha2-mobl.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.216.192])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:46:02 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:45:44 +0200
Message-Id: <20221102174544.2288205-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102174544.2288205-1-jouni.hogander@intel.com>
References: <20221102174544.2288205-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Remove inappropriate DSC
 slice alignment warning
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

Selective update area is now aligned with DSC slice height when
DSC is enabled. Remove inappropriate warning about missing DSC
alignment.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Fixes: 47d4ae2192cb ("drm/i915/mtl: Extend PSR support")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7212
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 57575b5c6d48..a75b37851504 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1684,9 +1684,6 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
 	pipe_clip->y1 -= pipe_clip->y1 % y_alignment;
 	if (pipe_clip->y2 % y_alignment)
 		pipe_clip->y2 = ((pipe_clip->y2 / y_alignment) + 1) * y_alignment;
-
-	if (IS_ALDERLAKE_P(dev_priv) && crtc_state->dsc.compression_enable)
-		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
 }
 
 /*
-- 
2.34.1

