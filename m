Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C87163A588
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 10:59:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA01510E1F1;
	Mon, 28 Nov 2022 09:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195C410E205
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 09:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669629569; x=1701165569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=75ciCwVVtzhiqGkCkxccH7v/77yPau4MCAiJccRRc4g=;
 b=Jq+N8BYnalK3iwvTcpwqM+HSagxPX7vDZnX0yaFxFR6wI4BedesBGRuI
 s7lam5wKweODjcBlkF4ezZd1lpU7W+tbBX2idIN2q4aBIfwLSKHDUwUt2
 OI+X95d/tMSfWqUg4c2AlFbpw3StHNVpA3m9C6UPLG9Y5ncKOAVVmxupK
 Z6/oNs+J50+Vinl+7jCVKVXPaqVlIAh7UPpj9DwSLcyYtUuUQAAhSGiVG
 ErIOQL2cyYlYgYxtpvvXq4SPZ4TeYmAY1Cp5EJ/TuX/05rBZlfvEd6pGY
 uWSBTipG/ys1pb8qtwDg+9pwy26+fsVaErA2oOK/JCa/tK0pkNFu0sVFg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="315950451"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="315950451"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 01:59:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="674169454"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="674169454"
Received: from aravind-dev.iind.intel.com ([10.145.162.80])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 01:59:16 -0800
From: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:43:52 +0530
Message-Id: <6cb639bfc8e0eddb3fece1b058e8ab6444f98fb2.1669629369.git.aravind.iddamsetty@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/mtl/UAPI: Disable SET_CACHING
 IOCTL for MTL+
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Pallavi Mishra <pallavi.mishra@intel.com>

Caching mode for an object shall be selected via upcoming VM_BIND
interface.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_domain.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
index d44a152ce680..aebbfe186143 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
@@ -332,6 +332,9 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
 	if (IS_DGFX(i915))
 		return -ENODEV;
 
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
+		return -EOPNOTSUPP;
+
 	switch (args->caching) {
 	case I915_CACHING_NONE:
 		level = I915_CACHE_NONE;
-- 
2.25.1

