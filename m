Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EB2616B27
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:46:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F1510E516;
	Wed,  2 Nov 2022 17:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B9310E516
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667411175; x=1698947175;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QcnZQD7ImLP7g8vm/bRdk82H4ZfLkN/ncJownF0RlP8=;
 b=n2kfmJ21Poc1Lx7hGjfPQvzLMCwgBD6X3vDNMVwKpZMdQWE4bBGvMbbM
 I0IfSVPRn2ikIFU0KiLjmZbZXN1lYzl9rzNRN58nkkLs5wBXhMB7wfj7V
 UqclsOjhbCTVQDL2BkA6n9mMhNQuAenFTx4Qv940KCRJnaYMtqqgz2yi6
 0aPJiY/0GXFVlViU8eHLdKVVCwjMLLtjzIuS1SGXv3wXVpCdpUjD5ZDal
 a84rXrU9lcHzDkYVjNejMhRi9BbfDocNoTcvZdubRzUwxcw5DAnxclx1j
 MqojTLrqEHK4qkRGIyV/h6apJbTeT2/TPhqfThWJ/XDsFFljsnhpBFLYf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308197950"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="308197950"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:46:00 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="759640267"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="759640267"
Received: from asridha2-mobl.gar.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.216.192])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:45:59 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:45:43 +0200
Message-Id: <20221102174544.2288205-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221102174544.2288205-1-jouni.hogander@intel.com>
References: <20221102174544.2288205-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/psr: Ensure panel granularity
 aligns with DSC slice height
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

Do not enable psr2 if panel ganularity is not aligned with DSC slice
height when DSC is enabled

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e11b0592055f..57575b5c6d48 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -779,6 +779,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	const int crtc_hdisplay = crtc_state->hw.adjusted_mode.crtc_hdisplay;
 	const int crtc_vdisplay = crtc_state->hw.adjusted_mode.crtc_vdisplay;
 	u16 y_granularity = 0;
@@ -809,6 +810,10 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
 	if (y_granularity == 0 || crtc_vdisplay % y_granularity)
 		return false;
 
+	if (crtc_state->dsc.compression_enable &&
+	    vdsc_cfg->slice_height % y_granularity)
+		return false;
+
 	crtc_state->su_y_granularity = y_granularity;
 	return true;
 }
-- 
2.34.1

