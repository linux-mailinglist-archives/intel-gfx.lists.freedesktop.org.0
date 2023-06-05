Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE32722276
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 11:46:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680F510E277;
	Mon,  5 Jun 2023 09:46:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1CBD10E272
 for <Intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 09:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685958365; x=1717494365;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jjpfOxfgjrG11wWq42iXND+QyAPClktxVyHfvupdRKQ=;
 b=bcEGJiCxR97CUsGSiq9g3JjuCAKtm7/mNM194SELMyOPP7sDSqp/RjhH
 Iakd4E/Oe5MCZ40kXVv1I9kZbduEBt3gqK5KpE5O8DpDoWtTdq0XeIqDM
 jzlroswhGDEgBeJLO1BVeF/ByQ7rpMR5WeHU6nXr63INb3Ge7Z60rEhYz
 BHSHVImHrCkCemfXjTJ3nc7AMH0CoDApxkU6XKmPE5++0DmUCFda65G3e
 CR8J2q1BUVpu96YHjFc2NeF1YtpCL7M+Qguyp2ab7h1F1ZrKNw8qJD4eS
 qvjWJEwa+RFQ41W3w3h9F76FAdKvKskXof9mEVoc0gRpotgaDMr8eiylH A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="336682998"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="336682998"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:46:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10731"; a="741656537"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="741656537"
Received: from mloughma-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.238.159])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 02:46:04 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  5 Jun 2023 10:45:54 +0100
Message-Id: <20230605094556.207399-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605094556.207399-1-tvrtko.ursulin@linux.intel.com>
References: <20230605094556.207399-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/4] drm/i915: Record default rps threshold values
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
Cc: Rodrigo Vivi <rodrigo.vivi@kernel.org>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
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
index 791097eb9bfd..333abc8f7ecb 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2016,7 +2016,9 @@ void intel_rps_init(struct intel_rps *rps)
 
 	/* Set default thresholds in % */
 	rps->power.up_threshold = 95;
+	rps_to_gt(rps)->defaults.rps_up_threshold = rps->power.up_threshold;
 	rps->power.down_threshold = 85;
+	rps_to_gt(rps)->defaults.rps_down_threshold = rps->power.down_threshold;
 
 	/* Finally allow us to boost to max by default */
 	rps->boost_freq = rps->max_freq;
-- 
2.39.2

