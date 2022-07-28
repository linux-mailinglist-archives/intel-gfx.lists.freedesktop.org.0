Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 557685845D9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 20:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D2310F07E;
	Thu, 28 Jul 2022 18:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 744B310F130
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 18:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659033460; x=1690569460;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mRNuhBVGjiO6sbKqm21tJbg9u9GSU5d/R6kKaeTuHNk=;
 b=Lu4F/N3fD4UM3DF71zBRdu0J5gH7Lv5YJKgMHTaCFNG6E+DUqFjEFQzn
 o+UpJMN4l/gb5BjWWO2V8kSYSd+phm6NBhVKn4jShAV9mrIKZbQmRz8YZ
 YDuL58bfElsVs49jnPNJN/Fjo/SLKdrfLHElq6mvqwkdLWy/i+Hkl8I3A
 JKLKie4MR+lk7T11iuz5dSCZ0SJvFd6kSiQBxqd9ebgVGGml1tY7LCuJ6
 q/JnARfRieSypDO3GneZHgX9U+oea4uHcpsjWAoptyn1FTeL3i4ITy5Ef
 UdakUNO4aGdrqbzJ33a1scBD+SYrAbnx8fYxtakXygN/Yv5WXV+Fgte74 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="268352216"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="268352216"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 11:37:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="846835615"
Received: from kseth-mobl20.amr.corp.intel.com (HELO anushasr-mobl7.intel.com)
 ([10.212.134.144])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 11:37:15 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jul 2022 11:36:41 -0700
Message-Id: <20220728183641.55692-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/dg2: Add support for DC5 state
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

With the latest DMC in place, enabling DC5 on DG2.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 13aaa3247a5a..3f84af6beff3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -908,7 +908,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 		return 0;
 
 	if (IS_DG2(dev_priv))
-		max_dc = 0;
+		max_dc = 1;
 	else if (IS_DG1(dev_priv))
 		max_dc = 3;
 	else if (DISPLAY_VER(dev_priv) >= 12)
-- 
2.25.1

