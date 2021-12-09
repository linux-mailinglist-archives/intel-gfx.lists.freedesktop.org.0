Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC8646EF01
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:59:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A031F10EA94;
	Thu,  9 Dec 2021 16:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDDB410E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057878; x=1670593878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LcV+/sZUcFYq9100TY757eo1Z2MXnhlMLNxUIFpVPNM=;
 b=J0qO0LFAN1WV4/qa1dCmrLeZUCLywGEWdJW35FTWiT/eKVhPzhpGO5Q7
 2eOWzLPEApflAeEqOVWSBm1kI4a8r4okqGeCR2l3GvfzDSL9/R480qyRw
 mK3dGudGE1fAn2ddM/z5don8REOz1vqlsfIYJwmOYELrnatCMeFNl8wer
 5T4QZaLkr4FheEMo/vxUfIOPbwec0aQta0MPl3HcwMRwCOPaRqVlEhY8e
 FmzjPWxT7e2keK6qfHnYqbnRwpnibi//xMNOvkxMPj8100FaK47vsVQs9
 RMxVPbbL0R8zAcCU4mcbpO4NlRE7ru9QW9DxgF7DtwND59kyPgeZyu+PG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="224965656"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="224965656"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="680331744"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:50:57 +0200
Message-Id: <8ffe629646482541d5d30bb0ea6de77f7cf9001d.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/active: remove useless
 i915_utils.h include
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

Not needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_active_types.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_active_types.h b/drivers/gpu/drm/i915/i915_active_types.h
index c149f348a972..b02a78ac87db 100644
--- a/drivers/gpu/drm/i915/i915_active_types.h
+++ b/drivers/gpu/drm/i915/i915_active_types.h
@@ -15,8 +15,6 @@
 #include <linux/rcupdate.h>
 #include <linux/workqueue.h>
 
-#include "i915_utils.h"
-
 struct i915_active_fence {
 	struct dma_fence __rcu *fence;
 	struct dma_fence_cb cb;
-- 
2.30.2

