Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B766F4760
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E2F10E39D;
	Tue,  2 May 2023 15:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EF2D10E375
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041889; x=1714577889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FKjmAzdEzi/m1EYZPrauYsuw/PGxb8RML40J4Ve2cb0=;
 b=TxA9xk4lU5ZZ6fAkEgRtnA+VwqumTAsjSLqxMbGb+M0drC0I8ATEMbvV
 mDEJnsFoQqrZEcG4C5ts9Uv+BfFyQ4xyTmiPxYM7tN2V7Uml0JjHSQjxS
 Mve+3YGK9FovEAynsq3JxTIsJgqzj2nEhEgv3iMf++SfKD1Bdh2+Kmr5N
 48a1XtqXwzQiMRXjS9mXrtqhgeBI3c2hVuiqxOhJR2rIgc2R0Iw2sgOqN
 yF4KDPPecM9GqUeF1mtNMEcwSGKxpbKBzIh2gLWYabZ7J6wBPPAuaT3cM
 oTAtqmBz3Ik13tuRTBFnmosfted0TVujvwp8X3BwsjUUXrthDF+Kr3W5a A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="413889307"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="413889307"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:37:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="673699656"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="673699656"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:37:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:18 +0300
Message-Id: <9213214c9caa296ebd349a5d5b44c2bbb45cdf99.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/24] drm/i915/gvt: fix
 intel_vgpu_alloc_resource() kernel-doc parameter
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/gvt/aperture_gm.c:344: warning: Function parameter or member 'conf' not described in 'intel_vgpu_alloc_resource'
drivers/gpu/drm/i915/gvt/aperture_gm.c:344: warning: Excess function parameter 'param' description in 'intel_vgpu_alloc_resource'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/aperture_gm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/aperture_gm.c b/drivers/gpu/drm/i915/gvt/aperture_gm.c
index 076c779f776a..eedd1865bb98 100644
--- a/drivers/gpu/drm/i915/gvt/aperture_gm.c
+++ b/drivers/gpu/drm/i915/gvt/aperture_gm.c
@@ -330,7 +330,7 @@ void intel_vgpu_reset_resource(struct intel_vgpu *vgpu)
 /**
  * intel_vgpu_alloc_resource() - allocate HW resource for a vGPU
  * @vgpu: vGPU
- * @param: vGPU creation params
+ * @conf: vGPU creation params
  *
  * This function is used to allocate HW resource for a vGPU. User specifies
  * the resource configuration through the creation params.
-- 
2.39.2

