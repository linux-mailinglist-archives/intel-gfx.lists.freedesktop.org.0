Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA827D44A5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8288510E2BC;
	Tue, 24 Oct 2023 01:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B7AB10E2C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109775; x=1729645775;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o7EzrJOSmV4LakUbH7gyAxKeWEF2UZbgL24yh+ZWjsU=;
 b=fpbEbgJkVe+2UFfhvuYIZJFnb8rLSnQYdGTS/OnPbHcW18OigZ8KY8FX
 Hft8lH/wbe/EBX8IYJ8gKbSCJIz28vkw5qUiruSyuEQEvWImtiuvimErE
 8wZvRkkzdYlZGXrpsoKDcioSZG6A3Sl0WkI3GHWMVcPUwNXPi0GIAbyOy
 Ut+bx+0ukkLspQaRjQmlxWc8v7XacschoLHot1qEYqrM9mk/pGBOo9FLl
 6VApJfuT3aVV2qVA0dMTThnXTPBgTwYsDxRmK6odOkHjdseOdhde6KrUh
 3rgl7ijYDQOIGIFoKqI+0F3e4gwkyHhih+DgjjymMRT1GuETbDwUoRr90 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304407"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304407"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870187"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870187"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:34 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:24 +0300
Message-Id: <20231024010925.3949910-29-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 28/29] drm/i915/dp_mst: Check BW limitations
 only after all streams are computed
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

After the previous patch the BW limits on the whole MST topology will be
checked after computing the state for all the streams in the topology.
Accordingly remove the check during the stream's encoder compute config
step, to prevent failing an atomic commit due to a BW limit, if this can
be resolved only by reducing the BW of other streams on the same MST
link.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f0ac86fc21256..d6c52906ac6c3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -188,13 +188,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 		if (slots >= 0) {
 			drm_WARN_ON(&i915->drm, slots != remote_m_n.tu);
 
-			ret = drm_dp_mst_atomic_check(state);
-			/*
-			 * If we got slots >= 0 and we can fit those based on check
-			 * then we can exit the loop. Otherwise keep trying.
-			 */
-			if (!ret)
-				break;
+			break;
 		}
 	}
 
-- 
2.39.2

