Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D73A54BFE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 14:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D22110E98E;
	Thu,  6 Mar 2025 13:23:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HZPG4xG0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A0310E98B;
 Thu,  6 Mar 2025 13:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741267411; x=1772803411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AzuUBmK/yl+VlOHOYo9pYYnI1Fltt6Carfn6zie+KsM=;
 b=HZPG4xG0Q9MWmSuDrkVADkjyPjJlJoKMg+cuLigAP/mQf3qmItHZf9hM
 KhtTkx7rNj9tSQCWijH9eW8cOMaZI/T4oHaJM+ScD9MbpN0qixM2TLx05
 xF++W+dw65jI+RIJJbRHarA9fOSXt9TuyI8J2atS1aN7Z61qbFG3nyjit
 aVa3slTMNWFenUSRvaU6NuktghXzbIiKGitWLI+1s+1oM0GMgNWp8dbvz
 HpzzeVoNC8px9lyn/gbavrnsa9UplHZmc6RppZ5C4ltREeMsA5r5zDsSj
 zIwnNLyPgrc5cY5ntKjfNgMOyYHCSmcPlfn5snSfJgjdlJ5L17sLEad3k w==;
X-CSE-ConnectionGUID: 9cnDd1MhQh2ABDNBq0yTtw==
X-CSE-MsgGUID: SHd7IMGyQDKRjiaoYGGANw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="41524675"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="41524675"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:31 -0800
X-CSE-ConnectionGUID: /gyaHbWBT96zpNnMngYdww==
X-CSE-MsgGUID: 1GUmYT+tTjyjGGz/tN1z8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="142243173"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 05:23:29 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/21] drm/i915/vrr: Refactor condition for computing vmax and
 LRR
Date: Thu,  6 Mar 2025 18:40:52 +0530
Message-ID: <20250306131100.3989503-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
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

LRR and Vmax can be computed only if VRR is supported and vrr.in_range
is set. Currently we proceed with vrr timings only for VRR supporting
panels and return otherwise. For using VRR TG with fix timings, need to
continue even for panels that do not support VRR.

To achieve this, refactor the condition for computing vmax and
update_lrr so that we can continue for fixed timings for panels that do
not support VRR.

v2: Set vmax = vmin for non VRR panels. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 622a70e21737..310add32781f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -363,14 +363,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.in_range =
 		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
-	if (!crtc_state->vrr.in_range)
-		return;
-
-	if (HAS_LRR(display))
-		crtc_state->update_lrr = true;
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
-	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+
+	if (crtc_state->vrr.in_range) {
+		if (HAS_LRR(display))
+			crtc_state->update_lrr = true;
+		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+	} else {
+		vmax = vmin;
+	}
 
 	if (vmin >= vmax)
 		return;
-- 
2.45.2

