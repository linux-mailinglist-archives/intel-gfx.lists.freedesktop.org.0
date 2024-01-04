Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E414823FCD
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6E310E42E;
	Thu,  4 Jan 2024 10:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AC9B10E42E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 10:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704365370; x=1735901370;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z7aveRIf0y0GPjE4w7YEII04gnRLyilBRLEShZRZSMI=;
 b=DjiVsEL3z7nEIuH5f7fn/gmMS3fBXFD8T37JWaV6SQ9KNRRGu3eUqvBM
 ZyCvImpi66dFjabOkyq/HA0P5GvvcEr13oQKQDwZypVovZ1P/OwaIW+jq
 xc/iFek+QOLUuirUAIIx9PhqQC1+ZuG8fxX7jotiSaGFcbo0UGHNq2Tpy
 G6sf/eWZXEPHedgJXXyjB+7P/8+r4Su9AaoTLm1dVp8jOzxl2UIicF28d
 R7F2SocHMU2VYluBJOlwmiPIgLeGaTuzVo7LzDLZMJeXm4ecmhr4o4mq8
 YDh3qPg+/vzP+w/hWNjLVSfhL2KnLLprYoLXb2HKZbPhD38CZyBjN2m3r g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396928090"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396928090"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923863598"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923863598"
Received: from jstopfor-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.51.226])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 02:49:28 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915/psr: Do not check alpm on DP or capability
 change for panel replay
Date: Thu,  4 Jan 2024 12:48:11 +0200
Message-Id: <20240104104821.1822988-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240104104821.1822988-1-jouni.hogander@intel.com>
References: <20240104104821.1822988-1-jouni.hogander@intel.com>
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

Alpm is eDP specific. Do not check if not eDP. Also panel replay doesn't
know about capability changes -> no need to check that.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index fc1b068755db..35cef210ff2f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2924,8 +2924,11 @@ void intel_psr_short_pulse(struct intel_dp *intel_dp)
 	/* clear status register */
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_ERROR_STATUS, error_status);
 
-	psr_alpm_check(intel_dp);
-	psr_capability_changed_check(intel_dp);
+	if (intel_dp_is_edp(intel_dp))
+		psr_alpm_check(intel_dp);
+
+	if (!psr->panel_replay_enabled)
+		psr_capability_changed_check(intel_dp);
 
 exit:
 	mutex_unlock(&psr->lock);
-- 
2.34.1

