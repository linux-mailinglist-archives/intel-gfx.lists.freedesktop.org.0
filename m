Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD8560EB81
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 00:21:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA0AE10E58E;
	Wed, 26 Oct 2022 22:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77EB510E58F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 22:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666822867; x=1698358867;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SuCxV6e7KGqdGy76WJyguhK0eoyfvr11/4wYbcZOwhE=;
 b=G7qwTjd/eWljdEWNX1+kZJouxkch0OHVJsXMC0mjK76invHwkoghuWEU
 0X4BCoyFmXqx9dDlSz5v8r6HmaWolQrViTnTTKRCNOxzUW53KgMBkUx/s
 m36ahao80w7yOTFOOtyy184vIvqhwywCnqwh6yxMIF4y9jYMUmibAxzPF
 YKgf/2wz6tRHntN6wCpJQUU5AjXdI6MJBPn11ehOzz0p1NNzM7jTKLo+P
 jpTaLblp8QrsWXpzD1YbtgatJIj4wAROc4mniyXnOXl5oFwF5hyn5MObd
 uXEpUz3HqPt6lrKbDqfyBGG/n37G/xKVxLeM91NsdiIxaXSy/v3p3+Log g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394390436"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394390436"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="721431395"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="721431395"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 15:21:05 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 22:21:02 +0000
Message-Id: <20221026222102.5526-17-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
References: <20221026222102.5526-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 16/16] drm/i915/perf: Enable OA for DG2
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
index 2db74b5a54cd..0dd597a7a11f 100644
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

