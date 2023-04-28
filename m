Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 864AC6F1314
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 10:15:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF65F10EC6D;
	Fri, 28 Apr 2023 08:15:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25F5A10EC66;
 Fri, 28 Apr 2023 08:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682669708; x=1714205708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LR0/9sitNusDQeTO1DoqxJGHIo84RNZQ5tEXS94PG8Y=;
 b=ng99RMK+RcZFzIMZVmHpHP9mXiI4pG5lTVgHW9n490CGjFCY9168zHh+
 ewsIh18dA72MEIK8u+BDSAwH+BJMXSRr8YiCcxllqoxM0QMbVOctjbaiG
 kS/Or8b4IGXaoFMLdueJtDFXL23CU4KwJ2ZquGtadkY4bniC7g7d9rA2j
 lAwRhmQ8DHwHS6k7XzfW85PPbBB6AEPQekWjJL99+GS7vLTdavOqw31bC
 QR/2Vyezryj+ByZRvwcP0RveI4SV6RgsQw+oCZHeNVV4bd130pV2lDPc+
 Ju+hL08fAKkKBF0IGjX6UT7ANbpNio5OXbXBEUGaAxK3tv/Nf18OYi/qK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="328011795"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="328011795"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 01:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="694726764"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="694726764"
Received: from ksathish-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.194.196])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 01:15:06 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 28 Apr 2023 09:14:55 +0100
Message-Id: <20230428081457.857009-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230428081457.857009-1-tvrtko.ursulin@linux.intel.com>
References: <20230428081457.857009-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 2/4] drm/i915: Record default rps threshold values
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Record the default values as preparation for exposing the sysfs controls.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h | 3 +++
 drivers/gpu/drm/i915/gt/intel_rps.c      | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index f08c2556aa25..1b22d7a50665 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -83,6 +83,9 @@ enum intel_submission_method {
 struct gt_defaults {
 	u32 min_freq;
 	u32 max_freq;
+
+	u8 rps_up_threshold;
+	u8 rps_down_threshold;
 };
 
 enum intel_gt_type {
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index d78699e2b13b..a39eee444849 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2015,7 +2015,9 @@ void intel_rps_init(struct intel_rps *rps)
 
 	/* Set default thresholds in % */
 	rps->power.up_threshold = 95;
+	rps_to_gt(rps)->defaults.rps_up_threshold = rps->power.up_threshold;
 	rps->power.down_threshold = 85;
+	rps_to_gt(rps)->defaults.rps_down_threshold = rps->power.down_threshold;
 
 	/* Finally allow us to boost to max by default */
 	rps->boost_freq = rps->max_freq;
-- 
2.37.2

