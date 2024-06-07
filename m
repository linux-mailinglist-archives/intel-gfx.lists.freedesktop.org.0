Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF03900588
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82FF810EC61;
	Fri,  7 Jun 2024 13:49:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A5wtcAqI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8083010EC71
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768189; x=1749304189;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oD0GZaWPp6MU7iYaYLjkrJUMzK/hVhJelVqqMsbnXVM=;
 b=A5wtcAqIR6ViNlL+JDEUr7PHtYycWnzf51NNsZl3HaG88RxF1Lm9M5vP
 Uwr7P3vgOU6Vodq2r97WYeumsZvYvdvO82RTas0KIOB5HMF5ocmEy4I99
 jrWVknVVMP/dW+kOOh3ODYef9yA/ym2OvovjYR6ykQOKA4QMaeWLFhmGv
 t30KHuRVGNEGr2heMMitGFm5luSxQ1Ub8r6qPRP1jfbn8QXSu9KpN2TaF
 f6BRw0xMRDMxCCua2GQM37GhcjXJLdkRDCkYdY9WR2+HLIZ4uBahAd6rr
 tWAFcZzuXF5t7DwnOnG+jThFpDNr669Q3o7rtfmt+qKUcvn3GTo7A2MGq Q==;
X-CSE-ConnectionGUID: amKYRmA9TjaPt4gb5E6CYA==
X-CSE-MsgGUID: 1RivfOkpSiO/q2qOEdmtDQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331663"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331663"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:49 -0700
X-CSE-ConnectionGUID: mUirWE4oSg6thsrQiapKrw==
X-CSE-MsgGUID: V7AVdWhURDuNJ0OXaVOqZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43459026"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 11/13] drm/i915/psr: Take into account SU SDP scanline
 indication in vblank check
Date: Fri,  7 Jun 2024 16:49:15 +0300
Message-Id: <20240607134917.1327574-12-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
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

SU SDP scanline indication should be taken into account when checking
vblank length. In Bspec we have:

PSR2_CTL[ SU SDP scanline indication ] = 0: (TRANS_VBLANK Vertical Blank End- TRANS_VBLANK Vertical Blank Start) > PSR2_CTL Block Count Number value in lines
PSR2_CTL[ SU SDP scanline indication ] = 1: (TRANS_VBLANK Vertical Blank End- TRANS_VBLANK Vertical Blank Start- 1) > PSR2_CTL Block Count Number value in lines

Bspec: 49274

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 98b0018704f3..8ff0729df6a2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1250,6 +1250,9 @@ static bool wake_lines_fit_into_vblank(struct intel_dp *intel_dp,
 		crtc_state->hw.adjusted_mode.crtc_vblank_start;
 	int wake_lines = psr2_block_count_lines(intel_dp);
 
+	if (crtc_state->req_psr2_sdp_prior_scanline)
+		vblank -= 1;
+
 	/* Vblank >= PSR2_CTL Block Count Number maximum line count */
 	if (vblank < wake_lines)
 		return false;
-- 
2.34.1

