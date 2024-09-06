Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B26C596F4D1
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 14:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F0C10EA49;
	Fri,  6 Sep 2024 12:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bqkFQWoT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754D110EA49
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 12:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725627406; x=1757163406;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IzxiW2XlaoJMEeE9FkK0+J58ZJGlxp2BoizZAA8wQhw=;
 b=bqkFQWoTsKuhN0X/2P/xy8i323xTCCsvtYQDTrZIpQqDq12iTAk+JmJS
 weLqUEHVrm0DJk/OtTMYM1BFgzsnzsPqQW/CrWFiLKY+hpZU85Zk1UqQH
 jcvniLwqzT4FqP5atFCpC7WuFJRzY2cZ1dhsLdprLEVSGlsZcs3D+hHCk
 R+5HS5jEd4thBoPGduwkoKNisriSp5ZpOpIPTWq5r6pAq/CShKE4rLl2L
 lBZ1rhWz9ZWQnB692kKICnCZChCYTkSvfOXK1OkBHzhzWJP7aoejpWRm6
 Mio0u3lvvaQk5byXWXbYxpanHx42d/o9rZ7oAaUnvRyTiktIm/vCPBa5S w==;
X-CSE-ConnectionGUID: uqCuLbNwQDigONfS8i/Bng==
X-CSE-MsgGUID: aHrpJjhBTUy8/zvSAIEf1Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="24257414"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24257414"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:45 -0700
X-CSE-ConnectionGUID: 5tmH/cDKTdejxMv6HYT9TA==
X-CSE-MsgGUID: sVdfn82KSkSo4MeJ0sHqag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66691087"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 05:56:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 10/14] drm/i915/display/vdsc: Add ultrajoiner support with DSC
Date: Fri,  6 Sep 2024 18:28:03 +0530
Message-ID: <20240906125807.3960642-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Add changes to DSC which are required for Ultrajoiner.

v2:
-Use correct helper for setting bits for bigjoiner secondary. (Ankit)
-Use enum for joiner pipe count instead magic numbers. (Suraj)
-Use primary/secondary instead of master/slave. (Suraj)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 26 +++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8158e3702ed5..66e810c8de68 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -379,9 +379,11 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
 int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
 {
 	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
+	int joined_pipes = intel_joiner_num_pipes(crtc_state);
 
-	if (crtc_state->joiner_pipes)
-		num_vdsc_instances *= 2;
+	if (joined_pipes == INTEL_BIG_JOINER_PIPES ||
+	    joined_pipes == INTEL_ULTRA_JOINER_PIPES)
+		num_vdsc_instances *= joined_pipes;
 
 	return num_vdsc_instances;
 }
@@ -751,6 +753,14 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
 	}
 }
 
+static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return intel_joiner_num_pipes(crtc_state) == INTEL_ULTRA_JOINER_PIPES &&
+	       crtc->pipe != PIPE_D;
+}
+
 void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -770,7 +780,19 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
 	if (crtc_state->joiner_pipes) {
+		/*
+		 * This bit doesn't seem to follow primary/secondary logic or
+		 * any other logic, so lets just add helper function to
+		 * at least hide this hassle..
+		 */
+		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
+			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
+
+		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
+			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
+
 		dss_ctl1_val |= BIG_JOINER_ENABLE;
+
 		if (intel_crtc_is_bigjoiner_primary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
-- 
2.45.2

