Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 523FDBF307B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 897B110E4DB;
	Mon, 20 Oct 2025 18:52:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k1ssuTlW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC40410E4D9;
 Mon, 20 Oct 2025 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986326; x=1792522326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3oKeT3J0orvU7LDwgMkJrmsFuIDkve2Rx88ShQ5HgQU=;
 b=k1ssuTlW6qj192Q0bSbiSLS0tJwjAduNCaSwrT5SV2bJCskyfWRVqzSi
 P7NlmjYRtXzXdw/HXPO/R7wCursgKb9Z76BMcU3nQv6Sm62VcnxnyvAC2
 HkwtBkpswOKwDd64ifQzvKU6LkDcDyMECXvIrx6vgqu2bU2lq9Lbj+lVU
 a8sekMsrEpRSSzd9ATsCesy862U/nUxQLkz8/5AaznqheeI//C/z+bJd1
 SFkIILp+3aQfeTZpzZ9MYByW/JZJMbiIdPEcuVG2snchky0o/9FLjSn3O
 m1Dzi/gQjWwPqvMPAgGfHOncv8lW3yv380aDiguErBwqTm+M770jUtdwQ A==;
X-CSE-ConnectionGUID: agQ21FMbQoSiVIjpfKWvUQ==
X-CSE-MsgGUID: kl+mp58uQaGMi4APG/46QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63004461"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="63004461"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:52:06 -0700
X-CSE-ConnectionGUID: PUdtMwW5T4iaom7bJ514MA==
X-CSE-MsgGUID: IKzvH/kVSfC9iCHA9XOyig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="214362372"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:52:04 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 22/22] drm/i915/vrr: Check HAS_VRR() first in
 intel_vrr_is_capable()
Date: Mon, 20 Oct 2025 21:50:38 +0300
Message-ID: <20251020185038.4272-23-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no point in doing all the other checks in
intel_vrr_is_capable() is the platform doesn't support VRR at all
Check HAS_VRR() before wasting time on the other checks.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c28491b9002a..00cbc126fb36 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -25,6 +25,9 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 	const struct drm_display_info *info = &connector->base.display_info;
 	struct intel_dp *intel_dp;
 
+	if (!HAS_VRR(display))
+		return false;
+
 	/*
 	 * DP Sink is capable of VRR video timings if
 	 * Ignore MSA bit is set in DPCD.
@@ -49,8 +52,7 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 		return false;
 	}
 
-	return HAS_VRR(display) &&
-		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
+	return info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
 }
 
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh)
-- 
2.49.1

