Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CCFC4EE2CA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 22:43:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C24210E2F6;
	Thu, 31 Mar 2022 20:43:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B87F110E36E
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648759433; x=1680295433;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dy7h9qMKfbcr9ijr0NH4uOrYT3tkRVKBmmUK0Y4P77g=;
 b=TQD/g3NGj6Yv/ijT5m6y/2VUHBNrqYgIeiBu7W3xGAvgieB1NVVRFXn/
 NzSL0lxrgEBmX2t9atCwmpjB229hypOfYMw6KPB0j2euTYdrovBzzdxC3
 DmhO8Gkclk+2w+3IoVS+akcT8cD8IaVOQnc+fqby5hUG+v6z6F9t25hw0
 M+ERIXCPnWK5RMX2CXb0GIVLmToin6EAiH7HgFlzjN2T+KwGYEYb3+S3x
 m7X/GnbRuVktHcdBphzPC+LKgDfexieRTS0Ai6M91Feb/L/Wy0BjqwfQK
 hIyG6oSghc2BoLIDEy4uq1OMUcxu9rYW0oIUSte6Yx38szAkbP91NNcYb w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259937282"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259937282"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 13:43:53 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="695637111"
Received: from rwjacks2-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.212.148.29])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 13:43:52 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 13:43:43 -0700
Message-Id: <20220331204343.1256150-2-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220331204343.1256150-1-casey.g.bowman@intel.com>
References: <20220331204343.1256150-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 1/1] Split i915_run_as_guest into x86 and
 non-x86
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
Cc: lucas.demarchi@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Splitting i915_run_as_guest into a more arch-friendly function
as non-x86 builds do not support this functionality.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index b2d89c43f24d..ea7648e3aa0e 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -32,7 +32,10 @@
 #include <linux/types.h>
 #include <linux/workqueue.h>
 #include <linux/sched/clock.h>
+
+#ifdef CONFIG_X86
 #include <asm/hypervisor.h>
+#endif
 
 struct drm_i915_private;
 struct timer_list;
@@ -428,7 +431,12 @@ static inline bool timer_expired(const struct timer_list *t)
 
 static inline bool i915_run_as_guest(void)
 {
+#if IS_ENABLED(CONFIG_X86)
 	return !hypervisor_is_type(X86_HYPER_NATIVE);
+#else
+	/* Not supported yet */
+	return false;
+#endif
 }
 
 bool i915_vtd_active(struct drm_i915_private *i915);
-- 
2.25.1

