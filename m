Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB19A4874
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A3AA10E998;
	Fri, 18 Oct 2024 20:49:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SuN3cbJ+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C7C910E993;
 Fri, 18 Oct 2024 20:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729284587; x=1760820587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0iWqE8xPiM8xgC5QVcLRr8OFRri4Rq0NNVsfE6u4wsY=;
 b=SuN3cbJ+xJ7KWBfj64W9U4N0IEOOVE5OTwyTol2smVon914TUNw360sE
 b255s57BIlPw9zDfKw/A61CCAKJLtV1GtWXtRidaj7zRiKzJrFXjAbEAG
 RLy85fhY3T4PfVkIW7xIJQCRJW02SuPr34oRhmaAcMrpLbxkgu4yJYEBn
 zv7B1E9BYY+M3G7LlZ+BHqG+vP4aNR8kDqprDNm6F943h9xAF+RQ36LpN
 +UX7C/wGNW+hCWzkwFDkSFvG3Zz2zGQ+80QaKyiTAdbUym79MT4DfOkEj
 gjz208SAbh7q1wmMxvHO8KsURsy9g82AIWjC5qdvMiylF/WPtoPMx21jc g==;
X-CSE-ConnectionGUID: /DIaWZQ4SgusG10AxGvEqg==
X-CSE-MsgGUID: PM+p13muTI6EqNi3PdfNuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="54240171"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="54240171"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:46 -0700
X-CSE-ConnectionGUID: 2XHP5J5ISQ2XGRQ67EbxDA==
X-CSE-MsgGUID: 0cLgG9/0R9S530KKQBw0xQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="109798925"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:49:46 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH 01/12] drm/i915/display/ptl: Fill VRR crtc_state timings
 before other transcoder timings
Date: Fri, 18 Oct 2024 13:49:30 -0700
Message-ID: <20241018204941.73473-2-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018204941.73473-1-matthew.s.atwood@intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

In progress to make VRR timing generator as the default timing generator,
rest other timings will be derived based on vrr.vmin and vrr.vmax. Call
intel_vrr_get_config before intel_get_transcoder_timings to accomodate
values getting pre-filled.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..01466611eebe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4134,13 +4134,13 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	intel_joiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
+	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+		intel_vrr_get_config(pipe_config);
+
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    DISPLAY_VER(dev_priv) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
-		intel_vrr_get_config(pipe_config);
-
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	if (IS_HASWELL(dev_priv)) {
-- 
2.45.0

