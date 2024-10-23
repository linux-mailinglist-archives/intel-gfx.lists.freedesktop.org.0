Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFC19AD6EA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D82C10E87E;
	Wed, 23 Oct 2024 21:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L8v7/U+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9F610E1A6;
 Wed, 23 Oct 2024 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720026; x=1761256026;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WDeER2lEAmEr3UDLBOuayWqoHzMmEniceu6VKA0IOC0=;
 b=L8v7/U+EDR9CCXiUCPzxKhzL0qzROqmj6owmcOjaEE8mX8cc2Rs9Q9cf
 4bcvUybcxRmuUbSbip+nx0IgxXF2voCUxu+4LwmN0i7taa8C7iVT2kk9h
 igjtngy0sAkohTIiZ19tgd9RQc3SuyJUKwq2qC3Sv2CbZ5pSqkPMTsXfe
 3sjVIltpLFbPsynKe1U4bxqERdwW2+lxYyS5J8OGP/hXQEtrAx0kaFoCx
 ffzGAUL2OuielN6bSSJF1z92z79XY0NQ39+GIy5fQFgbEIr/wgqmSPlBx
 ZgVqEO5JcE9vkFr5AzsyYsd+kJQZd2o5kbZHXjyN7nTuN08cgpFBjbbGA Q==;
X-CSE-ConnectionGUID: 5Q1qvNzzSxWjLAcZXHtvMg==
X-CSE-MsgGUID: uFIZqB36Q1Sx97soegeTLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54732004"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54732004"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:06 -0700
X-CSE-ConnectionGUID: WetzsQbgQpW6zvEM8KUxMw==
X-CSE-MsgGUID: Pve8C8KQQqCY9h0hj/Gqbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809803"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 06/12] drm/i915/cx0: Extend C10 check to PTL
Date: Wed, 23 Oct 2024 14:46:55 -0700
Message-Id: <20241023214701.963830-7-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
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

From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

When deciding the type of the phy, add PTL support to make
sure the correct path is taken for selection of C10 PHY.
Only port A is connected C10 PHY for Pantherlake.

Bspec:  72571
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 3 +++
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ef14e12828c3..c1357bdb8a3b 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -34,6 +34,9 @@ bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
 
+	if (IS_PANTHERLAKE(i915) && phy == PHY_A)
+		return true;
+
 	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
 		return true;
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index b7041b578e5e..bd8c3de57dcd 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -67,6 +67,7 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
 #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
 #define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
+#define IS_PANTHERLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_PANTHERLAKE)
 
 #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
 #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
-- 
2.25.1

