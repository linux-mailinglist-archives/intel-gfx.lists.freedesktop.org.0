Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59549A54BF8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D921E10E980;
	Thu,  6 Mar 2025 13:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fkS4djEn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9A9910E984;
 Thu,  6 Mar 2025 13:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267401; x=1772803401;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6dZ2OpBbtUUXXDeUeQ9msPYZevlCi12xW4A1jqA90FU=;
 b=fkS4djEnANC7llm4xLw/52Z9JbEpLT0BHSVNYHJ9wFC3O9LVV39KOQOk
 473AeWpHnzYlgXCkCoNzjSpknyEUa92Ut2A+0V/KX89ijGn04M4XOj1Fl
 86spK0GDtm0D5ERDYY0w/lpSf7wJ/V/afI0b1rZ8mov677U2lsFMbe+H3
 /5fFuh7We62n0pP5B00XlArbGqmyBanQosxzLMQYY1/qswh/nJ09gRHDh
 Oe0SJ8HWuCAQrwJ90ueG1h90r8aDVYq5z44arA3qrggrwrilO2K8uRhun
 hEgoaqEv4R5c9q1fS68UrvS4E9ewiHqWt+OWkGPwfdl51g3NuPL76bzXu g==;
X-CSE-ConnectionGUID: j5eOxyxZRFmVBnzK93cujw==
X-CSE-MsgGUID: cw9uwTn2QgaMe8WVL+kCKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524643"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524643"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:20 -0800
X-CSE-ConnectionGUID: bZzNYkhBSQ+t7vKdCFjbdQ==
X-CSE-MsgGUID: l2L0zUpHSb+sJIyObfTrPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243130"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:18 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/21] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Thu,  6 Mar 2025 18:40:47 +0530
Message-ID: <20250306131100.3989503-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
refresh rate.

Currently for link training we depend on flipline to decide whether we
want to ignore the msa timings. With fixed refresh rate we will still
fill the flipline in all cases whether panel supports VRR or not.

Change the condition for link training to ignore the msa timings if
vrr.in_range.

v2: Add more documentation and a #TODO for readout of vrr.in_range.
(Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 2966f5b39392..ea225496a96e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -711,8 +711,21 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
 static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
+	 /*
+	  * Currently, we set the MSA ignore bit based on vrr.in_range.
+	  * We can't really read that out during driver load since we don't have
+	  * the connector information read in yet. So if we do end up doing a
+	  * modeset during initial_commit() we'll clear the MSA ignore bit.
+	  * GOP likely wouldn't have set this bit so after the initial commit,
+	  * if there are no modesets and we enable VRR mode seamlessly
+	  * (without a full modeset), the MSA ignore bit might never get set.
+	  *
+	  * #TODO: Implement readout of vrr.in_range.
+	  * We need fastset support for setting the MSA ignore bit in DPCD,
+	  * especially on the first real commit when clearing the inherited flag.
+	  */
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, crtc_state->vrr.in_range);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

