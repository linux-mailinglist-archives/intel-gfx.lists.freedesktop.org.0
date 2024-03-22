Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30B6886B68
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 12:41:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5790D10F6A3;
	Fri, 22 Mar 2024 11:40:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WfUKQLCo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D8E10F657
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711107653; x=1742643653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KJNAYWd5qCqe9YJSv/Pznf+ue5ZK6aTZe3com5dz7Xg=;
 b=WfUKQLCo6C9dJARqpSAFgWHeKmnrR+abX8HP1X8zZS9wBUSgL/tgI5rq
 yBt48qVXo6PMR+FQ/ZOgiXa0p+ngJZnwKnULoyyPye40lfAxcWV8xl8Qh
 1x4kDalsvxsGffCDXfyjLenyQ3HRtZi5jGtuhYHSnAKwVSQ1H+48xvrqU
 mMb+iCOUOlgghi/LtO92QTHrO+zcc6W+xpyL7IJv832/BZbDJ9iwU+O5w
 uf5X6Bsze4p7VvUBo9tZdaJzoaqSOfhLXAEISQqKz2KxPsdffBvBHwLk+
 V1PAhdUVS1Cop9GwFKmKON5zDPGNmFzGF6ihTArjYlLZKTJ/da9P18SuJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="9939215"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; 
   d="scan'208";a="9939215"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 04:40:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="14906487"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa009.fm.intel.com with ESMTP; 22 Mar 2024 04:40:51 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 3/5] drm/i915: Use old mbus_join value when increasing CDCLK
Date: Fri, 22 Mar 2024 13:40:44 +0200
Message-Id: <20240322114046.24930-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
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

In order to make sure we are not breaking the proper sequence
lets to updates step by step and don't change MBUS join value
during MDCLK/CDCLK programming stage.
MBUS join programming would be taken care by pre/post ddb hooks.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 31aaa9780dfcf..43a9616c78260 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 
 	if (pipe == INVALID_PIPE ||
 	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
+		struct intel_cdclk_config cdclk_config;
+
 		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
+		/*
+		 * By this hack we want to prevent mbus_join to be programmed
+		 * beforehand - we will take care of this later in pre ddb
+		 * programming hook.
+		 */
+		cdclk_config = new_cdclk_state->actual;
+		cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
+
+		intel_set_cdclk(i915, &cdclk_config, pipe);
 	}
 }
 
-- 
2.37.3

