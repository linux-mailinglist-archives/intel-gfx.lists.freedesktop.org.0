Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC2769651B
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 14:43:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3A510E1C6;
	Tue, 14 Feb 2023 13:43:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5D110E8DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 13:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676382235; x=1707918235;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I1bQVjwXUYv+DElXiv4hKYLIkQHdtWe7dxYnElfhx7w=;
 b=lo6tC40oI4UAwux/Xb7NS6Yh1M+aBfiQ6npqvhHWS/CVmX9euhhA1F6c
 twcaYYSP4UeIG9rV2tAB0lLtZ/nm/Lau+8upS1fNuvTiMN9rjQsilG96h
 NM6wzY7Ca3hRx8hK99O9a18sYNNjs0NW9WNWlkq3IYvZXNnQIMAz7QSpi
 NB7ZSh6EoHrj4aiay4mT8Aepjt0WpQ1DcEG9RqCcVMzI+DS7KZVwzrFHd
 by0d/Uq1GEd1g5t8/4CB0mKwcoTwuiGgXr9slh1gcSkX3UyQPgdix/fMw
 rwb06KWEopQCR94TOVg8U+FAD1v2VL5k6fyWLqdHxuJVEhd4WYwG3lTL3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311518948"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311518948"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 05:43:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="699540396"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699540396"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 14 Feb 2023 05:43:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Feb 2023 15:43:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 15:43:47 +0200
Message-Id: <20230214134348.11020-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
References: <20230214134348.11020-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Don't send idle pattern after
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
2.39.1

