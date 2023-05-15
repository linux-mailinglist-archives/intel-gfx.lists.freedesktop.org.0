Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C685702520
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 08:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B744F10E13B;
	Mon, 15 May 2023 06:44:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F253010E13D
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 06:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684133065; x=1715669065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2lTPJeOCyYVDWgwi21L73AWP3vd7P8OPhOEaO6TAQtk=;
 b=Y3zmNkbm9s5wEyqsL2trQ4qyyAto2LPHg+BO8esEb5PyVNtg8ozTNPjm
 FRzct6SxDg5arCV+t46IThTgceAug1SsFH11er7bwQW608lTcMcMC6ngX
 T/cGSSEq1MMNTO5psg7qrNLsQbMHg+ak+djUggh3gEhlAYB10Qqtf8MnG
 M11sgDFyWASnvEn5/5xem3np/7dibI2/8yAkwIYr4gnh5/uDk1UBpnWQT
 r3rPlil9tiXjQprhsjg44gke0C6KYoLUPp0Ua/amN5Fmc6EQsM/MqgQEn
 e7NS+4Fag8/ZQFrJ4UBF3tfhzcMUqqYezgTffV8OytewpMDV3mv2DhVvT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="354283667"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="354283667"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:44:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845124660"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="845124660"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 23:44:24 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 14 May 2023 23:44:12 -0700
Message-Id: <20230515064416.3054707-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
References: <20230515064416.3054707-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/pmu: Skip sampling engines with no
 enabled counters
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

As we have more and more engines do not waste time sampling the ones no-
one is monitoring.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 67fa6cd77529..ba769f7fc385 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -339,6 +339,9 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 		return;
 
 	for_each_engine(engine, gt, id) {
+		if (!engine->pmu.enable)
+			continue;
+
 		if (!intel_engine_pm_get_if_awake(engine))
 			continue;
 
-- 
2.36.1

