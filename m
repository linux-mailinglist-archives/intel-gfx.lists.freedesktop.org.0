Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D087606F99
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 07:47:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4DF10E5C7;
	Fri, 21 Oct 2022 05:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CF910E5C7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 05:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666331235; x=1697867235;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aN93OORmQZnMyeAnwN0i7oH9j657F4AhPXHXXxQbwu0=;
 b=WwG0ufkOdOUjh9PuKEZU9hzOyiniG6CKNitjMDknlh1wEQwWumW5mH0n
 J1QL94w4gBwOs+TeS1sXU2t6I4JYilwbBjWi15tMUhl5coeorGauDb1gn
 9Uo7l0NSiL8FUT1EgB7dgN8zew6aBAhfdSUJLWvswNWM9LNklc7pu913b
 WWSfi4u47Shlg33RAeRWRP61UWqjXjTVok39n49/klrswUYvuODXaES2k
 9Uk+AZmUqVOvDyduIWnceYqbTrU+P9iaxT+PYJxYr5HgsDertAAeXnNdM
 pxpSu6KLAavoKFhQ8M2C9WqnoWbPUZXuFjUUDRmyUaaewRGOld5yfWU+L A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="304532239"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="304532239"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 22:47:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="625153781"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="625153781"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 20 Oct 2022 22:47:11 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 11:17:19 +0530
Message-Id: <20221021054719.2090900-1-chaitanya.kumar.borah@intel.com>
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
Cc: suresh.kumar.kurmi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove force probe protection from DG1 platform as testing suggests
that the platform is stable enough.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 19bf5ef6a20d..bbd3e8befb55 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -926,7 +926,6 @@ static const struct intel_device_info dg1_info = {
 	.__runtime.graphics.ip.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
-	.require_force_probe = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
 		BIT(VCS0) | BIT(VCS2),
-- 
2.25.1

