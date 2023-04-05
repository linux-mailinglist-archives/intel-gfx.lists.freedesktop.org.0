Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E834D6D740F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 08:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E45410E30F;
	Wed,  5 Apr 2023 06:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D5610E30F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 06:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680674463; x=1712210463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OvIug0fLmsMl7GqvjJ05ATlbzz1hDwokT4lX0z7Rqck=;
 b=CBJMJvE98QcwTC5SqBNZaHcKJtzyWo+wAILG44VKkwI/+a9EWpkclF19
 CtS2e/qbM6biDR27iFxpwrjOvtkkgR9QRzA0/6U3mghPBfWYakKPWs7Ov
 uWV2v8A50QJxrZGifz9lQi9USwan/fmBbH35kw6IBc34hWQJi/YHXUxjR
 3aqIVqKv0CpJEL1WFhys1twcQTJGwKR7NBGmGq64Kp2YBy5qUq1YlrfRf
 b6hS2Qh5GHcswy8ubunoKr+gB/PQV3NY8Qs+NRC+gF4jhfgRd6fJC/L5D
 cx7QbztUG296XCQ3Pr9QqAYL09kj6msSuWPQUAoE5lJxh2l7Hm82QuIcJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="326412559"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="326412559"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:00:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="860849633"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="860849633"
Received: from rtauro-desk.iind.intel.com ([10.190.239.41])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 23:00:46 -0700
From: Riana Tauro <riana.tauro@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Apr 2023 11:30:29 +0530
Message-Id: <20230405060029.3574262-5-riana.tauro@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230405060029.3574262-1-riana.tauro@intel.com>
References: <20230405060029.3574262-1-riana.tauro@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v8 4/4] drm/i915/selftests: skip comparison of
 power for discrete graphics
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

skip comparison of power for discrete graphics

TODO : measure power of GT in discrete graphics and modify the
condition.

Signed-off-by: Riana Tauro <riana.tauro@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_rc6.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 682f2fe67b3a..57c0cb4ecc88 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -107,7 +107,13 @@ int live_rc6_manual(void *arg)
 				      ktime_to_ns(dt));
 		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
 			rc0_power, rc6_power);
-		if (2 * rc6_power > rc0_power) {
+
+		/*
+		 * Condition valid for integrated graphics
+		 * TODO : Measure power of GT for discrete graphics and
+		 * modify the condition
+		 */
+		if (!IS_DGFX(gt->i915) && (2 * rc6_power > rc0_power)) {
 			pr_err("GPU leaked energy while in RC6!\n");
 			err = -EINVAL;
 			goto out_unlock;
-- 
2.40.0

