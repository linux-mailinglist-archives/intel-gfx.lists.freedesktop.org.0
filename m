Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 018389F09D6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:41:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957AD10EFAD;
	Fri, 13 Dec 2024 10:41:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AFROqD8Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A1510EFAD;
 Fri, 13 Dec 2024 10:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086471; x=1765622471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Hn6Wz4f9MTLTX5Cx5ljJtzklg0rZPfWxV7DpXtJskw=;
 b=AFROqD8Y3f8bDKyBtfGiEsJw6AVvFQU8Pl18KPw369yf+ofYPnzrw+Au
 S+5n8h//OiYew23HCjonORtEw6mY2DineAKKMf+8u0SWWtmIq/UalEd7z
 mQXRs8wLnEXKOLCnFA1kh2lFgjeh+wFb5DyN+4z29dngZ2naOdNsVdVFO
 KpHgVheL6NhR9ET95qRIU6m0gbkh0mO2pjEBFAzsFxywg9igGQUW4517i
 N/e2XGSb/RKtOR6bq8QCjc2iZ63XF3t9ngBKzEvik4O0nf5v/5qJtuIaL
 cJJr3mJbI86r6CLZpMW5hDM28OCNl0IOo+OJJqik2lhZxvEtXwzP8mbA2 w==;
X-CSE-ConnectionGUID: UgUxzxB4T6WWq4+XDC8G/Q==
X-CSE-MsgGUID: AwLmo+i7RJCwP0NSasfbPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38470607"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38470607"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:11 -0800
X-CSE-ConnectionGUID: hcMvpSOaT7WcSpniYYSVLQ==
X-CSE-MsgGUID: oJuGXa1xQS2B4EofYP9N/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119763375"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:41:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 11/13] drm/i915/ddi: enable ACT handling for 128b/132b SST
Date: Fri, 13 Dec 2024 12:39:55 +0200
Message-Id: <d59c61f5682bd83093aad8990cad7bc96d0bed2e.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
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

Add ACT handling for 128b/132b SST.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5f96fc629429..5f1528179038 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3488,6 +3488,19 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
 	/* Enable/Disable DP2.0 SDP split config before transcoder */
 	intel_audio_sdp_split_update(crtc_state);
 
+	/* 128b/132b SST */
+	if (intel_dp_is_uhbr(crtc_state)) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		intel_ddi_clear_act_sent(encoder, crtc_state);
+
+		intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, cpu_transcoder), 0,
+			     TRANS_DDI_DP_VC_PAYLOAD_ALLOC);
+
+		intel_ddi_wait_for_act_sent(encoder, crtc_state);
+		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
+	}
+
 	intel_enable_transcoder(crtc_state);
 
 	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
-- 
2.39.5

