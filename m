Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1E65AD00D
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 12:24:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B0B10E2B5;
	Mon,  5 Sep 2022 10:24:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40D5B10E2B5
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 10:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662373469; x=1693909469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fnOVZYIoEoD3wp6ume/XG9wbOnoqc7VAIfAmjDvPYTc=;
 b=FBPkkwWMf2UUgREb6BEEHyMVitMIQ+6hiFLh2aJjrxavSQKprC9KOe+A
 g4ZfmnNDq259SeuLmfTODT6Tfo648ks8ffid90LVqFWBf7Y7qDidjiHV3
 BM4wM2C3IyYTFY8AVoRwnNvMEl+GZkKekiUwcY855joamyVahf+RjmTpq
 3m/BpFnWsJjVccGFPydSWoZCM5VurnfP3U6R7t3WLPAPaqH95sW6kT8Me
 QkMJUxoBN1BU+tL13mbiApb0gwi6Er5bVcpfEbcKsmzjLpQMf4hTyQ19Q
 /7fi6TTqllInyluHKd0AOvznMQWhp0Lztnm0Ucpw9EsqWpxTmRZ+hnNjX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="296362038"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="296362038"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 03:24:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675233969"
Received: from gpliesch-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.221.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 03:24:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 13:23:54 +0300
Message-Id: <20220905102355.176622-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220905102355.176622-1-jouni.hogander@intel.com>
References: <20220905102355.176622-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Equation changed for sending
 start/stop on prior line
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

Equation for sending start/end SDP prior to the SU region start/end
has changed. Update used formula.

Bspec: 49274

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 079b7d3d0c53..6f03bf16d6f4 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -805,8 +805,8 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	hblank_total = adjusted_mode->crtc_hblank_end - adjusted_mode->crtc_hblank_start;
 	hblank_ns = div_u64(1000000ULL * hblank_total, adjusted_mode->crtc_clock);
 
-	/* From spec: (72 / number of lanes) * 1000 / symbol clock frequency MHz */
-	req_ns = (72 / crtc_state->lane_count) * 1000 / (crtc_state->port_clock / 1000);
+	/* From spec: ((60 / number of lanes) + 11) * 1000 / symbol clock frequency MHz */
+	req_ns = ((60 / crtc_state->lane_count) + 11) * 1000 / (crtc_state->port_clock / 1000);
 
 	if ((hblank_ns - req_ns) > 100)
 		return true;
-- 
2.34.1

