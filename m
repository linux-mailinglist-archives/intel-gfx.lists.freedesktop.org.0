Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1846887A87C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 14:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2169410E908;
	Wed, 13 Mar 2024 13:32:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cypz35za";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5C010E908
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 13:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710336761; x=1741872761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hysRnz4RQ38ExxYvuIY9Hxc+6EXqlqaM7wR2FC3rsqs=;
 b=cypz35za4JLb5+jsF/N4KDiZ141DTnpKQdKoiDvIuI1+j3Qsq2znVVQv
 srpOyYV9xdPwwg5vNBYM5NyjCYu0wR68AEyl0AI6HS405KuIW/idbpYzi
 oZeDaiU1rkLXFsG41jjtV6ShdkvwcFw58Fq3WWOWccp8ssKCIwJfn8pJO
 pna7LA8OA57kzOLt4WfXT5/+0pMTtWpd0JrZk0x8/l81y+3tbHLqGJ8i/
 pCe8hD9y9xIg5o11f+sWbiYEqbvdEOaMrgBoiZNQ3Yud4H6ksvtiqcgXy
 ZM1Sxw01z8mKJD72FbL/w9SYOuZlkA7Xnw+7NBTDKY26hoH4BgNAylkZr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="30537783"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="30537783"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="11977915"
Received: from dgaudrex-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.209.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:32:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 2/4] drm/i915/psr: Improve fast and IO wake lines
 calculation
Date: Wed, 13 Mar 2024 15:32:19 +0200
Message-Id: <20240313133221.868391-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240313133221.868391-1-jouni.hogander@intel.com>
References: <20240313133221.868391-1-jouni.hogander@intel.com>
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

Current fast and IO wake lines calculation is assuming fast wake sync
length is 18 pulses. Let's improve this by checking actual length.

Add getter for IO buffer wake time and return 10 us there which was assumed
with static 42 us IO wake time. Upcoming patches will extent this for
different display versions.

Bspec: 65450

v3:
  - s/get_io_buffer_wake_time/io_buffer_wake_time/ and use it directly in
    calculation.
v2:
  - rename io_wake_time in if block to io_buffer_wake_time
  - rename get_io_wake_time to get_io_buffer_wake_time

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6927785fd6ff..7736bdcad82d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1150,6 +1150,11 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
 	return true;
 }
 
+static int io_buffer_wake_time(void)
+{
+	return 10;
+}
+
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
 {
@@ -1158,12 +1163,15 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	u8 max_wake_lines;
 
 	if (DISPLAY_VER(i915) >= 12) {
-		io_wake_time = 42;
-		/*
-		 * According to Bspec it's 42us, but based on testing
-		 * it is not enough -> use 45 us.
-		 */
-		fast_wake_time = 45;
+		int tfw_exit_latency = 20; /* eDP spec */
+		int phy_wake = 4;	   /* eDP spec */
+		int preamble = 8;	   /* eDP spec */
+		int precharge = intel_dp_aux_fw_sync_len() - preamble;
+
+		io_wake_time = max(precharge, io_buffer_wake_time()) + preamble +
+			phy_wake + tfw_exit_latency;
+		fast_wake_time = precharge + preamble + phy_wake +
+			tfw_exit_latency;
 
 		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
-- 
2.34.1

