Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4289A4799
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 22:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC45F10E98B;
	Fri, 18 Oct 2024 20:03:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A82aXasi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F40A410E988;
 Fri, 18 Oct 2024 20:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729281801; x=1760817801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1gXeqPgyY/96F15JrWbxwGUzsx9zu0G2FNt68vjT3gU=;
 b=A82aXasilAatSey+RnwFFCwPK+E9uyhT4jKpt9/C18B3Z2vOihIR5u39
 01vQY87x4BqXCtGC7i2wPjNkCeK4stJ1mfRiysxtdlOP4aG1hhDc48cJM
 8Bd5oHGPYLVE+42Ch6kc8zxa61jGfG5kw4cjGw3/BWXmENhpfSaBo4OXj
 01Qn9G9rLmipRgi6wiG2rrtwF2kKwIlJMoYCPiZ5vGmdOlCQmCiRGou0U
 mNr0GWkCgWWxeIepPn79R8OXOP9y5x6Vojkc1vLtjnOAJ2P98n8l3z9Dc
 8NgcET22GAbCvgTO2qTCTr9KmR3bdXrvRMxPih/g7YVI6QgCxwX2vf8H3 Q==;
X-CSE-ConnectionGUID: fCj9VNu+T+O+kOTr6ZJGJA==
X-CSE-MsgGUID: 8ELr48rxTgGIkI84rdA+9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28286811"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="28286811"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:21 -0700
X-CSE-ConnectionGUID: FqsP0dRkQKqPU7WJHQWgQA==
X-CSE-MsgGUID: moIY9ISgTmqqmR4QzVSYQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="102263876"
Received: from msatwood-mobl.jf.intel.com ([10.24.12.145])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 13:03:21 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v4 7/7] drm/i915/xe3lpd: Add condition for EDP to powerdown
 P2.PG
Date: Fri, 18 Oct 2024 13:03:11 -0700
Message-ID: <20241018200311.67324-8-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241018200311.67324-1-matthew.s.atwood@intel.com>
References: <20241018200311.67324-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Add condition for P2.PG power down value.

v2: change subject line to better match patch condition

Bspec: 74494
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Reviewed-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 37c66b32325d..13a99f494680 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3146,7 +3146,8 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
 	if (intel_encoder_is_c10phy(encoder))
 		return CX0_P2PG_STATE_DISABLE;
 
-	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
+	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
+	    (DISPLAY_VER(i915) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
 		return CX0_P2PG_STATE_DISABLE;
 
 	return CX0_P4PG_STATE_DISABLE;
-- 
2.45.0

