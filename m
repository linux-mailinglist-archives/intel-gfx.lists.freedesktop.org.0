Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A079A49B9B1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 18:09:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A5010E380;
	Tue, 25 Jan 2022 17:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6870810E36A;
 Tue, 25 Jan 2022 17:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643130542; x=1674666542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qx4J0DOOcZdbH6aIBRmve+ucnES4R6ueEZMFfWAbIvQ=;
 b=AdwrTN4hNxxm0t3E42sQL7EzyjrNZlInTAEK+niLwSwlKejk1A+Q4xbb
 8lmOHks1mkXjOBvCP8PfVgJmN3GnYbTsAehoiSgjUGBZOUrzvqaVS/3TO
 p6qXD04YojjwaHkShH28D/1c3ijkLk9OzNLC+bcob8GIlEkC52OtR/QKr
 GWD/GD7cb37Pwh/975+r7GWXiaepUr2TkSIN5TwJdZSCV95ncgdjRxtsP
 P4139YGQzNsqV4Wy2IXJ1IbVNaYIBiwbhy7s3D95bHeq9/M/y9vpiINuc
 nfs23ZZ3L5JU0+GNPdpTPuJxCAY2JJoDVP416HBcM/T6RWScfxKyUe2ux A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="233723232"
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="233723232"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 09:04:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,315,1635231600"; d="scan'208";a="479564742"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 09:04:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 19:03:45 +0200
Message-Id: <07e472499bf7b5ff6d1b5ce345cb96e5a677394c.1643130139.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643130139.git.jani.nikula@intel.com>
References: <cover.1643130139.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/dp: give more time for CDS
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Try to avoid the timeout during debugging.

Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1e41a560204a..b1cf99fb3a2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1273,6 +1273,10 @@ intel_dp_128b132b_lane_cds(struct intel_dp *intel_dp,
 	}
 
 	deadline = jiffies + msecs_to_jiffies((lttpr_count + 1) * 20);
+
+	/* FIXME: Give some slack for CDS. */
+	deadline += msecs_to_jiffies(500);
+
 	for (;;) {
 		usleep_range(2000, 3000);
 
-- 
2.30.2

