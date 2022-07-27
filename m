Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDCB58359F
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 01:27:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D8810E219;
	Wed, 27 Jul 2022 23:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C72D10E16A
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 23:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658964446; x=1690500446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=klkV6LeJbKFG2JCtNUABQWi/UE6fqAK+wSoiUq18tkg=;
 b=L8W79U6/0pI3ingDvw3Xq2MmHJNLpeglrCliAgesGt6kLaffg8iSIo5X
 xDS7o/APMhWU8WZJiFhktaD00Zajum6W0DberZutFd4iOu4/dngn7ZzH6
 g2t4FHLqrvyGp+SU5EeBXbpBh4kCZLP2c7GW5eEl1e7f5Uz4sdoQ999a5
 6tri3L7S/7Ta/rDGmBN3o5BLXUFlTTd9xZr7UZn6tyiaoth4rEZqNwPiE
 8OVBkH7eZgjolWzh2c0IeSetQYKGjfZUID/lWxLbv4Rtu9zpdf5SGN7Gs
 rcG8Vw3T88efLPLQXL6Pd2oEBjnpYsRWLCYHMEx7R6GsTbmRpYPzoSeWv A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288384975"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288384975"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="597595477"
Received: from unknown (HELO anushasr-mobl7.intel.com) ([10.212.185.30])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:27:25 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 16:26:40 -0700
Message-Id: <20220727232643.533884-2-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220727232643.533884-1-anusha.srivatsa@intel.com>
References: <20220727232643.533884-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/display: Add CDCLK actions to
 intel_cdclk_state
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

This is a prep patch for what the rest of the series does.

Add existing actions that change cdclk - squash, crawl, modeset to
intel_cdclk_state so we have access to the cdclk values
that are in transition.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index b535cf6a7d9e..43835688ee02 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -15,6 +15,14 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 
+enum cdclk_actions {
+	INTEL_CDCLK_MODESET = 0,
+	INTEL_CDCLK_SQUASH,
+	INTEL_CDCLK_CRAWL,
+	INTEL_CDCLK_NOOP,
+	MAX_CDCLK_ACTIONS
+};
+
 struct intel_cdclk_config {
 	unsigned int cdclk, vco, ref, bypass;
 	u8 voltage_level;
@@ -51,6 +59,11 @@ struct intel_cdclk_state {
 
 	/* bitmask of active pipes */
 	u8 active_pipes;
+
+	struct cdclk_step {
+		enum cdclk_actions action;
+		u32 cdclk;
+	} steps[MAX_CDCLK_ACTIONS];
 };
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
-- 
2.25.1

