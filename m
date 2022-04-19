Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 264265060A6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 02:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E1E10E1D2;
	Tue, 19 Apr 2022 00:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A560210E1CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 00:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650326879; x=1681862879;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ae+38MuCG1rDihjdakDeHihporQNGFHbUo95dkf9ynQ=;
 b=Ufc+FAeoEQNwTy2JmUtOQYU0tR7Uj2r/czxhW68i2Pc13dyrYfWOfTZq
 f3U/+ZfTvOw53iIP/ZH5MJAH8fUT1Wwi0XtOKmXPYTcN14p3FCC3dI70a
 mAYUhDxUitrc0yVkOPxqJN4aMMcJgBlDDxuXO+iLXGKIvQU79yeXRVHoj
 q3BIV5TSfv1UWHMnsXCiKrXK0dD9Jbp90548n+E41nT2oKaIB3Ipi0OF7
 YEQrHjdSI0y19jkK/uLgZMwVGkDn1QnDLC8YQbJH9oMLUS9V+KrF647+I
 4S5lQGtX/dWb6xR2j9++lrOszdbZ0IfkaaxtIhHCKuTS743fTb7u5Senl g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="326537827"
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="326537827"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 17:07:59 -0700
X-IronPort-AV: E=Sophos;i="5.90,271,1643702400"; d="scan'208";a="665586412"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 17:07:59 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 17:07:37 -0700
Message-Id: <20220419000737.420867-8-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220419000737.420867-1-daniele.ceraolospurio@intel.com>
References: <20220419000737.420867-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/7] HAX: drm/i915: force INTEL_MEI_GSC on
 for CI
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

After the new config option is merged we'll enable it by default in the
CI config, but for now just force it on via the i915 Kconfig so we can
get pre-merge CI results for it.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/Kconfig.debug | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index e7fd3e76f8a20..be4ef485d6c1d 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -48,6 +48,7 @@ config DRM_I915_DEBUG
 	select DRM_I915_DEBUG_RUNTIME_PM
 	select DRM_I915_SW_FENCE_DEBUG_OBJECTS
 	select DRM_I915_SELFTEST
+	select INTEL_MEI_GSC
 	select BROKEN # for prototype uAPI
 	default n
 	help
-- 
2.25.1

