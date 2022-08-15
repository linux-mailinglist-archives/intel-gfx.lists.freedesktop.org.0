Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDA5592AE4
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 10:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E5AB2F3F;
	Mon, 15 Aug 2022 08:09:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97836B2E76
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 08:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660550953; x=1692086953;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8cPweaIKbczeO8p43uX8yjUXP+L9AAzpWiDTF2l5h6I=;
 b=IrxQLVeOMDUarHrS0XTjmx+9gWQfzJcz5ZELewUbIltXRUaDP+TiE1R+
 IC8sS4hdJw38jiQP6TUnNUZ0It2ZQnC21qIwICTz1hXt414Y5CbglVIJU
 Ns72jlgI9Sp9CJXosLVCtgED6e4mKr5rhuoUGXs8oK5XcPjkZHbPqe7B0
 DR6nppU4pIR92ruho9pap3DNfZ9SRyHjHZcHx27fZ/undosyYZM9JBzNy
 iKHgM05lw+m0oQebmLCefoQSOXWNQiQ5OcUY76IgxN4k0M5UVzxc6ARVt
 pNELn4kC2VKzQgYkbv8IVQyW7UIrzoESl7jLRQosPijCPbVr1IcDwjrqp Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10439"; a="353657099"
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="353657099"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 01:09:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,237,1654585200"; d="scan'208";a="635396146"
Received: from abelova-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.50.172])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 01:09:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Aug 2022 11:09:07 +0300
Message-Id: <20220815080907.3229449-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/utils: remove unused KBps/MBps/GBps
 macros
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

Remove unused macros. If needed again, such macros belong in
<linux/units.h>.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index c10d68cdc3ca..6c14d13364bf 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -360,10 +360,6 @@ wait_remaining_ms_from_jiffies(unsigned long timestamp_jiffies, int to_wait_ms)
 #define KHz(x) (1000 * (x))
 #define MHz(x) KHz(1000 * (x))
 
-#define KBps(x) (1000 * (x))
-#define MBps(x) KBps(1000 * (x))
-#define GBps(x) ((u64)1000 * MBps((x)))
-
 void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint);
 static inline void __add_taint_for_CI(unsigned int taint)
 {
-- 
2.34.1

