Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 528D5A5CB93
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC91D10E5DA;
	Tue, 11 Mar 2025 17:06:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZq2udnp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346B410E5CD;
 Tue, 11 Mar 2025 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712785; x=1773248785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mZIcSkdZBApUYCmSPCrqCkR1azC1HlkbvmI8WEuzN3U=;
 b=TZq2udnphTnqm4fxy4T5rkXJSGNgtphSMMWhcb5NgHRA2lwL591/V4gm
 ok9nrvNjFitxSY5IszhH3TGxP6nlAoOPPc9fEvscZqo+y8U32IHwyfOCX
 r15HfHPvYz13tMK112Ecmpm7mwgkkeVce37zGyAXr6UVrMZfM2Q9mw4Ii
 v92PcLseJi+iN4blD/USUbIzaXRjqlSbkBdtN4PoBvhpbzgvDlk++1NNL
 cqYvy+g6V8gG1dO3vBzqYx6IWbxGfQoy1fhvstkDqJWxwu0zSqmMgE0pU
 Cz1fy7/FDvnzZwGYvbnWjyktbK1Jizxy1GRqojeRs5MhReaOK4yLIZq7I A==;
X-CSE-ConnectionGUID: eUBffrcPS2idJ27GnRBbAg==
X-CSE-MsgGUID: OWCvMVFFQGe7mhwHpPX/Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="45547718"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="45547718"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:25 -0700
X-CSE-ConnectionGUID: dpGxz47oS3WbHSHk9zlz2A==
X-CSE-MsgGUID: TJlP1YGLShmMepWWoJR+Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="120889119"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:06:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RFC 1/7] drm/i915/hdmi: remove inline to_i915()
Date: Tue, 11 Mar 2025 19:06:08 +0200
Message-Id: <fbc4f5e454c3a1780d86b6661c2f3eb2b178ac62.1741712601.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1741712601.git.jani.nikula@intel.com>
References: <cover.1741712601.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

We have a local display variable, use it directly.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 33b8d5229db0..f837d5357941 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2017,7 +2017,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	enum drm_mode_status status;
 	int clock = mode->clock;
-	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->state);
 	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
-- 
2.39.5

