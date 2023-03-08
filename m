Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 130256B13E7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 22:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C83610E71D;
	Wed,  8 Mar 2023 21:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 829B710E71D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 21:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678311179; x=1709847179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NpToYcB5ogurLN4OG0g2BS0sarfSr8jgkp5/a0ah+ak=;
 b=fw4NI/8BJGYmTwfdTB5QGXFgIkfRsFD7iXH30cFNL2mrIWqnkBiGjuLw
 8xBKDcIYbjv4kGWjFTTRmR2lqxcVA92NeXeGz5HtHdQAC2qZtY2m47gie
 8RQZ2zF7PS9/tsxuBa3zj90yFzTOwFI2b0pxYlOBnnuAZlglRWJVdIC4h
 Vg86XmEImP9vfELzWP3RG5EEKzVfRuIm5vYquMpFjSvOMRYc0h04YjhIT
 B2yCOJdVFI3MPixW/AcAabFXox0OH3kmTkIVBoTmzFYl434O/Mp03tSbp
 W3Yj7iab6CyqbhARy3Et63j0+c1t5nSqDtxN1KcutWEi2CL0maUPN4xZb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="338617129"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="338617129"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 13:32:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677141832"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="677141832"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Mar 2023 13:26:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 23:26:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 23:26:27 +0200
Message-Id: <20230308212627.7601-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230308212627.7601-1-ville.syrjala@linux.intel.com>
References: <20230308212627.7601-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Don't send idle pattern after
 DP2.0 link training
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

Bspec calls us to select pattern 2 after link training for
DP 2.0. Let's do that... by doing nothing because we will
be transmitting pattern 2 at the end of the link training
already.

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 3d3efcf02011..b35af21a2761 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1379,10 +1379,6 @@ intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
 		}
 	}
 
-	/* FIXME: Should DP_TRAINING_PATTERN_DISABLE be written first? */
-	if (intel_dp->set_idle_link_train)
-		intel_dp->set_idle_link_train(intel_dp, crtc_state);
-
 	return true;
 }
 
-- 
2.39.2

