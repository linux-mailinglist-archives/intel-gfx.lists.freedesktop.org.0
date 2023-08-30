Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ACE78E369
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 01:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C653510E632;
	Wed, 30 Aug 2023 23:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B7BD10E632;
 Wed, 30 Aug 2023 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693438885; x=1724974885;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ESGO9dMKpw4muGH5MUGCn2ZnZG80BeqtfKPE25THKyM=;
 b=Pp/WZEBykPm/SDptO6UsLg6dVs97/nZtfUFSqL8e1dyV6d3AArobd6KC
 cwXg3FJFfT801y9FzrcFMTN/zUyx2zO9nbWgoz4DVDu3osC0OhwJvERRq
 JMWgub8YgyIFAQNZKj+5pQ7wMrOvndvE6k2OrVggUOdMxq+Ggi/Omv7ja
 IN0BKZDAQqsLGLT0e3Dn6AVBsAA1EOpV2FDZFX776l01rf7vcs580nAyG
 wGlDM+tpwc94CBarBTZaMP0i731bn1C8eucWboJOXNbWpRvfGn8mAq9qF
 uQ/X+EWiCjiSYHeaWhbXouI1NbjuA/qbf2R5ECRcVIi97VUndq4pBr3E6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="379523629"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="379523629"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 16:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="913003689"
X-IronPort-AV: E=Sophos;i="6.02,215,1688454000"; d="scan'208";a="913003689"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga005.jf.intel.com with ESMTP; 30 Aug 2023 16:41:00 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Date: Wed, 30 Aug 2023 16:38:36 -0700
Message-Id: <20230830233836.477940-1-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Test s2idle
 instead of S3
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

Test skips whenever S3 is not supported, use s2idle instead, which is
widely enabled.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/i915/i915_pm_freq_api.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
index 2912287c4..03bd0d05b 100644
--- a/tests/i915/i915_pm_freq_api.c
+++ b/tests/i915/i915_pm_freq_api.c
@@ -125,7 +125,7 @@ static void test_suspend(int i915, int dirfd, int gt)
 		igt_assert_eq(req_freq, rpn);
 
 	/* Manually trigger a suspend */
-	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
+	igt_system_suspend_autoresume(SUSPEND_STATE_FREEZE,
 				      SUSPEND_TEST_NONE);
 
 	req_freq = get_freq(dirfd, RPS_CUR_FREQ_MHZ);
-- 
2.38.1

