Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E32E560D566
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:18:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527D410E23E;
	Tue, 25 Oct 2022 20:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882C610E1EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729031; x=1698265031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YlZ+eGnldfao8Uwr+68ouknknGbnfLgIQe4oLSHh4Rk=;
 b=eBB03qpLs5Rk5Q2TGthczyVxnQABZM+7NmA0iHIfhT9ivtK2m8Jsvhfk
 WCnLJrmc4ymhixWMPpHmpmm8wY9u1SAkfPjMfHTC8cQ9aZzdd9VcmMHdB
 IPqIzFSDU9r441AUjgA4UGBAaL/nH3/J3TsB4WXDF1ZDjrmgHIl3QyKv+
 8n2t4yfC0fDum8rXPXMpKnq+UJvP/gnZVrZQ1U5eLVgWD8IlMUryBWncK
 eI2Y9LDgHYK4jgeZ0As1sbNTaxbBmN3wTWJYjtwCcfWWbqeZFf4L9+m5p
 qTqhJr5SuwnUakbixWf98ab4WxmMDTeSTuBcl4Gi/cD9kPko9+kLH/cgJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="288177919"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="288177919"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699736"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699736"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:10 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:17:08 +0000
Message-Id: <20221025201708.84018-17-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 16/16] drm/i915/perf: Enable OA for DG2
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

OA was disabled for DG2 as support was missing. Enable it back now.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 176442d5e57e..3438cff13f38 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -4798,12 +4798,6 @@ void i915_perf_init(struct drm_i915_private *i915)
 {
 	struct i915_perf *perf = &i915->perf;
 
-	/* XXX const struct i915_perf_ops! */
-
-	/* i915_perf is not enabled for DG2 yet */
-	if (IS_DG2(i915))
-		return;
-
 	perf->oa_formats = oa_formats;
 	if (IS_HASWELL(i915)) {
 		perf->ops.is_valid_b_counter_reg = gen7_is_valid_b_counter_addr;
-- 
2.25.1

