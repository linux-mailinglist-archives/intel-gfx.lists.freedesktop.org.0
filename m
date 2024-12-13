Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A7A9F09D3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5191710E241;
	Fri, 13 Dec 2024 10:40:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mASt5FS0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1CCB10E241;
 Fri, 13 Dec 2024 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086454; x=1765622454;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ovB0Hq0CZf3gaSKBVVNyrYFBFl5uuk25LdC3gtWreRk=;
 b=mASt5FS0HgKqMop3hKrHmuU1Wyo55n1xYjE8o/VsLvRHzroO6KIPBpk5
 LThwrUhCLXP0H6xpN03+ShZPLHgwRYrogfmxkAPgo4lXGav6a8LmsERx9
 Hf22ZT+zIJvaUaWBfd3diI7e6PCDghWI2vTz4G168Ub8MvIf+XMSjxZ2B
 zBTdl5b9wMsBrmO49edSiejdKDlzYTOLuaWJohrIcFPV2T4L8LliCsHnx
 J6sTRQJHzce0GaQ32mpw0tmBGQDa//QUmFRKkwBVRboSZoKH7rRiRxRzl
 C8l3CjmyM+TXqLyJcnaxDLSZRQLIiB7UCYQEySywqOGJnDH9Aahvx1eFE g==;
X-CSE-ConnectionGUID: m40u2FMgS2+LT36MkjjA9A==
X-CSE-MsgGUID: 5aaCiKEyRzW6L5sO+zc6Qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671035"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34671035"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:53 -0800
X-CSE-ConnectionGUID: aFw9SlvuR06a9OnItrT8nQ==
X-CSE-MsgGUID: q6A8Vke/QheoZ4cCDPYqSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97287453"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 08/13] drm/i915/ddi: 128b/132b SST also needs
 DP_TP_CTL_MODE_MST
Date: Fri, 13 Dec 2024 12:39:52 +0200
Message-Id: <27c0ced3c11b635624613f901dc75f928b44a3cb.1734085515.git.jani.nikula@intel.com>
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

It's not very clearly specified, and the hardware bit is ill-named, but
128b/132b SST also needs the MST mode set in the DP_TP_CTL register.

This is preparation for enabling 128b/132b SST. This path is not
reachable yet.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index ec5f0534f4df..eebeebef42ed 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3658,7 +3658,8 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 
 	/* 6.d Configure and enable DP_TP_CTL with link training pattern 1 selected */
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
+	    intel_dp_is_uhbr(crtc_state)) {
 		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
 	} else {
 		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
@@ -3718,7 +3719,8 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	}
 
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
+	    intel_dp_is_uhbr(crtc_state)) {
 		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
 	} else {
 		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
-- 
2.39.5

