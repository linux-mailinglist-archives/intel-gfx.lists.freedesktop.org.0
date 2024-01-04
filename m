Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A08823D73
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C562610E3C7;
	Thu,  4 Jan 2024 08:30:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42A9110E3C6
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357003; x=1735893003;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=olpd7hVVsloUQdGCJEqjm9HhZ+ICYmTxsJpmH/5+XLw=;
 b=Rnl1W3+UzLx0sV91bsPcNFBVT555HFFyacg5JLZUYiNmryh1+ngOIXsF
 otb68y20fv5sLmwuXIye5DZMNKE0JoR5tAUHo5Lz4ORyVH0HQiMOuUH4C
 xKT7egdVi6Ex/dDvAQ6LgK+s1zP7eCYctO/9DosYRZXTdn0mlWssmygLa
 5C8skL+1l0wjU3yqh9ZTlgtOaI+FKZ4ZOaDrBNGLW4VtipIkWqfM5cvK0
 wXO74dMdx7/P8lroj3isPYJgsonbOsZLJiddxXsoXq64W/R1/NH8Ru0PN
 bdbKKDdq5ya6MjfgRYA3Mn4h+joCaN2wnl5a4MKkLo7zA3QKlj1nxwCvS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624517"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624517"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422631"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422631"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:02 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/12] drm/i915: Suspend the framebuffer console during driver
 shutdown
Date: Thu,  4 Jan 2024 10:30:01 +0200
Message-Id: <20240104083008.2715733-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
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

Suspend the FB console during driver shutdown the same way this is done
during system resume. This should prevent any HPD event to trigger a new
FB probe/modeset cycle happening in parallel with the display HW
disable/uninitialize steps.

A preceding FB HPD event handling may be still pending, resulting in a
probe/modeset like the above, these will be prevented by a later change
in this patchset.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index be86596a8904d..9269b485137ce 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1003,6 +1003,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	intel_runtime_pm_disable(&i915->runtime_pm);
 	intel_power_domains_disable(i915);
 
+	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
 	if (HAS_DISPLAY(i915)) {
 		drm_kms_helper_poll_disable(&i915->drm);
 
-- 
2.39.2

