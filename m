Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6629A4D673
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828BB10E52E;
	Tue,  4 Mar 2025 08:32:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N9fPh8DW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 683B610E52B;
 Tue,  4 Mar 2025 08:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077131; x=1772613131;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6dZ2OpBbtUUXXDeUeQ9msPYZevlCi12xW4A1jqA90FU=;
 b=N9fPh8DWPlrkhPbeD7YpKZXGyNUFmkTbZeG3nhHY6Dx6oVwTWj4BRX0M
 ZDLxYBfesF530hO6htODFQh+qOKpEMKwrdRZJ9LoBYKacZpdqBrgXXkOO
 +TfB6VX89dzWo2RfnqFA8R265XNa+RTRVtIY86ka+zW9Svkj11L7KBM8H
 kbBI617UTLK1SZnyXkT/alywa+6p5tqejgSShTzWBs7eIzNSYL+Bw2Q5w
 6UuJnJVk6jLPjIwJ67ZRWGOCghCZpBB+7soNJCjdWCxdro9mAqAR16IUS
 X/0oJ1LrhX8CfqCPvsrRxZdQhEbxP5LEvIcS71iZ09B+v0jsTDIQI9s42 w==;
X-CSE-ConnectionGUID: vI5oKAB3TKuDGAVycQW5pQ==
X-CSE-MsgGUID: xmd3bzH3Rj6dtc5FvlzI6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910167"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910167"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:11 -0800
X-CSE-ConnectionGUID: +Ktu8hViQUSFpWlAcSVjLg==
X-CSE-MsgGUID: YciReWpZQfmTjxnQsm0BwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492199"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:09 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 08/22] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Tue,  4 Mar 2025 13:49:34 +0530
Message-ID: <20250304081948.3177034-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

