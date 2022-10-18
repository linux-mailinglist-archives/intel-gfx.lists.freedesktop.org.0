Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3BB603604
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 00:37:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8613110F04C;
	Tue, 18 Oct 2022 22:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B3C10E3BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 22:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666132614; x=1697668614;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=YlZ+eGnldfao8Uwr+68ouknknGbnfLgIQe4oLSHh4Rk=;
 b=a/+MWTziMLQLC0DC9suZ65Dqq9+UOTEvSrpfhvQUKSaOR0cKfHL5HQBW
 AgWMeZ2BvIh9dUivKGkTyT89EugImw35V+d7/cInmoGdPShjwduvFjkpb
 cRAxgZjcU5tT2fLmyC2THmrDHvb1Ce7xB3PvGZ3WBBOztz+wCAGu1nfSp
 sfCKNox7qSVW929zkOudTX+8gyuXn7ejGy4QVEhPODlCh/ot22vAe6MsH
 uSZq141jWdn8vEsftY7YVq7i//kpY0InqngRafzvg1gPVwGh7XQR1Lcig
 0kp3U9NBjW53RaLTSpNbVBdHKWiLO2JhV8yoS1QTS3zxXZ+Sqy2Ye7X54 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="293646413"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="293646413"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:53 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="803986562"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="803986562"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:36:53 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 18 Oct 2022 22:36:48 +0000
Message-Id: <20221018223648.5244-17-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
References: <20221018223648.5244-1-umesh.nerlige.ramappa@intel.com>
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

