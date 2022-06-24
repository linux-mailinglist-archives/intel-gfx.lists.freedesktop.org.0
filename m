Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E371559DE8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 18:00:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C33810E4F4;
	Fri, 24 Jun 2022 16:00:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D73B10E14E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 16:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086400; x=1687622400;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dULIKeTu7PL0/jW/Ro6CtXJ71Yp9wSEqPfXlqyjCaiI=;
 b=bbbXrYBky/jLpP8h2EQmcYlbqdXGwswTNEJKuX4EeZK5VKb1WT58NIgR
 1jkrg9AEYxdAJw/CR8fM9Ege744fFHFdhjiGZ66pmDa0VoJyPisQOtOfk
 yd2dqfVB27M21BYM1EVUJlvWHn8Lquso1XOCKjcn5J4mTzjbBeLq+CD4V
 6ZxkxZv/6d1IluHDUikC5TsjVT9MfR4sx/vzEZeHMv2MlEM9kDZ7gQVN9
 0fo/ML7MIJ98AS2FNfqyYZhpiibTLfq/S09v1uC8IkjO60ZyFc6XpfVP9
 CY4HyfQkAf8gtu6/5yt3G7goPxxIBlB07v3JXmpDy1hOyJZyaUdsjQmpc Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762310"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762310"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170218"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:49 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:17 +0530
Message-Id: <20220624155922.7435-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/9] drm/i915/dg2: DG2 MBD config
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add DG2 Motherboard Down Config check condition
to intel_opregion_vram_sr_required().

v2:
- Use MBD Subplatform to check DG2 MBD. [Jani]

BSpec: 44477
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 03ae57f05371..ae0862bf10a5 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1290,6 +1290,8 @@ intel_opregion_vram_sr_required(struct drm_i915_private *i915)
 
 	if (IS_DG1(i915))
 		return intel_opregion_dg1_mbd_config(i915);
+	else if (IS_DG2_MBD(i915))
+		return true;
 
 	return false;
 }
-- 
2.26.2

