Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECF19AF56F
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 00:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76F810E9B9;
	Thu, 24 Oct 2024 22:31:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K5qg5mFK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A4110E9AA;
 Thu, 24 Oct 2024 22:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729809095; x=1761345095;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=l7qj8BuMpbFxhxwjTJwoE6IYZMmBg1aTMjrdvpde5oo=;
 b=K5qg5mFKp0vVmYvRyiNQfpgwRrE6pSVSKmsYHqXduLJVF+/vn+OOsdc6
 TAvL4x0Ratpydvj4p/709JmTMYJ6q0+vNfYWmSyJUPuR2lMF2FrgvjgYm
 C9v3tYua6TQiiMByxFyegISLaaemvrdc0+yjBloj22oX/KvZ8TRVeBliZ
 5K/CE6un9uQZqt/qNVT8PwBCP9zgBURTSi9mxLuNLWlIUdPHmS7djq2f1
 dJQgkAlCv1SEc13+vWcKTwARQPrZ64pWQLjhtgwKYG1e8k7QOJsfDuT5T
 TjnkM5pQeUf9j0uSyMV8X/oz4go0W7f08LO3OaMGDYPi5F6CGoeXLP4ad g==;
X-CSE-ConnectionGUID: 6+7KtuGhTT667HXDTtglVQ==
X-CSE-MsgGUID: zUJ7gqbeTc+7bhiM85v3eQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="46950808"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="46950808"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:20 -0700
X-CSE-ConnectionGUID: axDY9nMXRo2VJ0aclCo+0A==
X-CSE-MsgGUID: buphM8BATAG8KuKp0+HbJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80838667"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 15:31:19 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v4 04/11] drm/i915/ptl: Define IS_PANTHERLAKE macro
Date: Thu, 24 Oct 2024 15:31:07 -0700
Message-Id: <20241024223114.785209-5-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241024223114.785209-1-clinton.a.taylor@intel.com>
References: <20241024223114.785209-1-clinton.a.taylor@intel.com>
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

Common display code requires IS_PANTHERLAKE macro.
Define the macro and set 0 as PTL is no longer support for i915.

Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a66e5bb078cf..ca1ab5931e28 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -538,6 +538,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  */
 #define IS_LUNARLAKE(i915) (0 && i915)
 #define IS_BATTLEMAGE(i915)  (0 && i915)
+#define IS_PANTHERLAKE(i915) (0 && i915)
 
 #define IS_ARROWLAKE(i915) \
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
-- 
2.25.1

