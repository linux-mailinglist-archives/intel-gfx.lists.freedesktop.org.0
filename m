Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA366CF856
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 02:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D966510ECB3;
	Thu, 30 Mar 2023 00:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3FBC10EC94
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 00:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680136864; x=1711672864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kOlt+mcNeawYIB7VH8Yu5/GuIe1Ecre/uDKHAcmAvLY=;
 b=BhTa/kCKGIES8/BHY4j2I6LuA7cXHDJoSxyXBeDtNkEwjw5SsmrZ+yFe
 qA61QTt9ht70n+hhU480S01Szho0J2HPOHWLLP0KF0a/QvTxd1OZ3dF2o
 W+v2OkbSvtjta4LOLSYfEaSBjGGC4Asto2QQbybzrIV72tEePnKrszM2y
 aRHPFuXPyXAoXeaI04J2YZM2ffkS7NwVxrU3FKnvYGgGK1eUD9ap8ASy+
 3aNL35p+R17uunawexdtDQij2MlLpTTgdMBQQ+TWTssMmqnXLKA7G/ER3
 32AqlF9u6MXHPwyDijrZ/y74h2MFBCVeYxqGO9k3jrHB3PIgm2+uTT0L+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="427310372"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="427310372"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634668684"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634668684"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 17:41:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 17:41:01 -0700
Message-Id: <20230330004103.1295413-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/9] drm/i915/pmu: Use a helper to convert to MHz
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

Use a helper to convert frequency values to MHz.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 2a5deabff088..40ce1dc00067 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -636,6 +636,11 @@ static int i915_pmu_event_init(struct perf_event *event)
 	return 0;
 }
 
+static u64 read_sample_us(struct i915_pmu *pmu, unsigned int gt_id, int sample)
+{
+	return div_u64(read_sample(pmu, gt_id, sample), USEC_PER_SEC);
+}
+
 static u64 __i915_pmu_event_read(struct perf_event *event)
 {
 	struct drm_i915_private *i915 =
@@ -668,16 +673,10 @@ static u64 __i915_pmu_event_read(struct perf_event *event)
 
 		switch (config) {
 		case I915_PMU_ACTUAL_FREQUENCY:
-			val =
-			   div_u64(read_sample(pmu, gt_id,
-					       __I915_SAMPLE_FREQ_ACT),
-				   USEC_PER_SEC /* to MHz */);
+			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
 			break;
 		case I915_PMU_REQUESTED_FREQUENCY:
-			val =
-			   div_u64(read_sample(pmu, gt_id,
-					       __I915_SAMPLE_FREQ_REQ),
-				   USEC_PER_SEC /* to MHz */);
+			val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
 			break;
 		case I915_PMU_INTERRUPTS:
 			val = READ_ONCE(pmu->irq_count);
-- 
2.36.1

