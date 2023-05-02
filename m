Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A7D86F4633
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 16:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF1FF10E584;
	Tue,  2 May 2023 14:39:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5E210E583;
 Tue,  2 May 2023 14:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683038363; x=1714574363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N9jZMw2wifF3R5Y94KvrfiwphPsyuVYJgHiro7nbhTU=;
 b=MFPLi+RURMsuLtKKPoaK+kiL1q+hYNfJTXC2w5ufb9ca2w+njz4ZX2gQ
 79KF9CLLgLIJdFofWvbiE7op/BGt9vOzEJfT8wqyLVh5AnlXA7wyyUqV/
 g9mr2IiREvPMXQNanLoIf7bCsbzmpBYWFvLvMeoHHrL16lbHkLwnW8rX1
 ugADEmg5+2A+wuF4qib5EP0xtgUWbMPZcUT+bA3UypYnaVpVzspN3YFYb
 3SyMn2pfqvVXo6EL8KsTq8tnPQ5OK7Az+nuApqYbfpPyHBRtwOIaq126q
 S9URUC8Sc5jrR/d8iC3JvAKNlovcsYAkHWouG4yPPjL8H89DJ+i7KTYNk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="351396883"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="351396883"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 07:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="698991757"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="698991757"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 02 May 2023 07:39:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 May 2023 17:39:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue,  2 May 2023 17:38:59 +0300
Message-Id: <20230502143906.2401-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
References: <20230502143906.2401-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: Fix FEC pipe A vs. DDI A mixup
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

On pre-TGL FEC is a port level feature, not a transcoder
level features, and it's DDI A which doesn't have it, not
trancodere A. Check for the correct thing when determining
whether FEC is supported or not.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4361c1ac65c3..b27b4fb71ed7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1212,13 +1212,13 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 					 const struct intel_crtc_state *pipe_config)
 {
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	/* On TGL, FEC is supported on all Pipes */
 	if (DISPLAY_VER(dev_priv) >= 12)
 		return true;
 
-	if (DISPLAY_VER(dev_priv) == 11 && pipe_config->cpu_transcoder != TRANSCODER_A)
+	if (DISPLAY_VER(dev_priv) == 11 && encoder->port != PORT_A)
 		return true;
 
 	return false;
-- 
2.39.2

