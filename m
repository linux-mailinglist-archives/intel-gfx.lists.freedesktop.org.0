Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 901685AD00F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 12:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE0310E2A4;
	Mon,  5 Sep 2022 10:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB88810E2A4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 10:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662373471; x=1693909471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n+5RRYKmI4DJeYttzg8TR7h43HNluhBqmH+kj8zENFo=;
 b=hAUWYOrC54wXTQ4yQneL7+xfKbUmNbeuTMYad2j2eKRpygmUQprAm12Q
 GA76nmzWiZem/dTCk32o/iNp+1G8gGRy4sNQU/GnMXQOgSkHZqPL67Oca
 yvbiF7W67BvFxl8Rj6NzoXuuW5KyFVvAT57Jt/ZeCLqPwLX+4Uolest5X
 rwhnWqrQ1qP0fK0TxkjVZz3TFMUnuRxBlqZL2mciSOl3ePurVL+V5oRio
 xEfowpnbmLdDLPzedq2NREjGPWdUdJEFOENWeiR9kCcu7M/7DuzNvjlCj
 qCKqxwWAbMxz8zRvSE0vtP4T9eXi2Dyms1PwI+zL6Dla+TbC2iBnhDXHm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="296362041"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="296362041"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 03:24:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675233995"
Received: from gpliesch-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.221.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 03:24:30 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 13:23:55 +0300
Message-Id: <20220905102355.176622-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220905102355.176622-1-jouni.hogander@intel.com>
References: <20220905102355.176622-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/psr: Disable PSR2 when SDP is sent
 on prior line
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

Selective update doesn't work if SU start address is 0 and start/end
SDP is configured to be sent prior to SU start/end lines. PSR2 has to be
disabled in this case for Alder Lake.

HSDES: 22012279113

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6f03bf16d6f4..90d7cdd743be 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -811,7 +811,8 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	if ((hblank_ns - req_ns) > 100)
 		return true;
 
-	if (DISPLAY_VER(dev_priv) < 13 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
+	/* Not supported <13 / Wa_22012279113:adl-p */
+	if (DISPLAY_VER(dev_priv) <= 13 || intel_dp->edp_dpcd[0] < DP_EDP_14b)
 		return false;
 
 	crtc_state->req_psr2_sdp_prior_scanline = true;
-- 
2.34.1

