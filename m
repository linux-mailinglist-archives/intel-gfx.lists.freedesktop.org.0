Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 454794C012B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 19:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97AD210E7FE;
	Tue, 22 Feb 2022 18:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 955B210E7FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 18:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645554184; x=1677090184;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rhwbBwLGBBKywYQ9BviqYMeCwTvhicVnRnnbzpYm+LA=;
 b=TshhpdhNgKDPsuqb1+s/hfXmLIQvx25J7jyqmrgrZhNFmLzm7nrOk4vE
 l94yYSFRW62UIUJ161TZePN8sh31HkBfIoI0Vmqh8+EyzbCptsWcLDNb3
 3QhYK6YInDuLPAQRmToS8dy7wWY7fW4NLsBHPLssN6WlLsrF/ke3JFeaG
 7Ug7qjc1kEL+lKG19sfQMfgXAR8YvrYpGfB7FVdhOC21zXqxgBJ4Xma0y
 VYAkaDKO3XzgIJvFPlgilqI+NtUCzNYhQd7LJSnFSLLcr6cu+e3hwUrLP
 P5QPi+eEy/LGIYgMgTFmvj3lqZJGxsDs5KGuo74jVuaFUB0FC25oPXyh0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="315006356"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="315006356"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 10:22:41 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="508094855"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 10:22:41 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 10:19:37 -0800
Message-Id: <20220222181937.592346-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Remove require_force_probe
 protection
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

DG1 at a state where we can safely remove require_force_probe.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index f449c454b6f8..cafc569fdf66 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -909,7 +909,6 @@ static const struct intel_device_info dg1_info = {
 	.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
-	.require_force_probe = 1,
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
-- 
2.25.1

