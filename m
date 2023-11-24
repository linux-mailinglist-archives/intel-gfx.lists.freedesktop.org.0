Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E817F6E11
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Nov 2023 09:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F1910E1AD;
	Fri, 24 Nov 2023 08:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12F1D10E1AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Nov 2023 08:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700814462; x=1732350462;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=H6wPTVmHxsgtKV6dXojU0o1PqcRg9pYC0Sgd+AzEQVU=;
 b=aHUumpDHL2FoYjM8hu3DY/bhcCOfl6PoHAPmTu5G0hkLZl+wm1T6F8do
 fdQem9XPK/IDn5rek/zx4Fdxr3yI5cn86BbbdZGs4h4EKUq6DN5Ik7rqv
 mcrseOclCYeVHth3siYPnXOpRmLD8nQ8XmxZ8PQL1vGlD8r9ttWUozeDO
 w4P5WE70+KpdfqOyaQk24FGLAYYITLzMSyPsmvubMmomNOC+vLEqW96x6
 p83YndIHiVLpkE28vlMbEQg9b3jZr7P2TwqpxtdSKB7q/Jcl5SBst9xjm
 W8JhzD7xC2qtfpGlhlESx8lLwRHoxEAX4uNLeyEGUOun3g/8c5EKPJQRN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="423523552"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="423523552"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2023 00:27:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="760896277"
X-IronPort-AV: E=Sophos;i="6.04,223,1695711600"; d="scan'208";a="760896277"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 24 Nov 2023 00:27:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Nov 2023 10:27:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Nov 2023 10:27:31 +0200
Message-ID: <20231124082735.25470-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/psr: Include some basic PSR
 information in the state dump
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

Currently no one can figure out what the PSR code is doing since
we're including any of it in the basic state dump. Add at least the
bare minimum there.

v2: Also dump has_panel_replay (Jouni)

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index fbe89b6f038a..49fd100ec98a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -265,6 +265,12 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 
 		drm_dbg_kms(&i915->drm, "sdp split: %s\n",
 			    str_enabled_disabled(pipe_config->sdp_split_enable));
+
+		drm_dbg_kms(&i915->drm, "psr: %s, psr2: %s, panel replay: %s, selective fetch: %s\n",
+			    str_enabled_disabled(pipe_config->has_psr),
+			    str_enabled_disabled(pipe_config->has_psr2),
+			    str_enabled_disabled(pipe_config->has_panel_replay),
+			    str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 	}
 
 	drm_dbg_kms(&i915->drm, "framestart delay: %d, MSA timing delay: %d\n",
-- 
2.41.0

