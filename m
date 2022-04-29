Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D55C514CA4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 16:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142BA10ED7E;
	Fri, 29 Apr 2022 14:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2841410ED51
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 14:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651242108; x=1682778108;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uyCPyk46X/2h56ZMIQcahjJdxBbsvGxt400NBhHPypQ=;
 b=QxbzvT/pZH924RO1WLPVTMGbz7FgedIerezJl/IOtwm5lb+jKuJYdshL
 3+Iu0GgYxMj7IiMKBhoNz1MIaXSpOCtvZhfpHblHhr/VndJ3A4WyjGyAR
 QetcYhrdZqRDAEAHPUpqoqESAExf2w/YYn9EUz7HIr4m8pb6HikcEu2wG
 4Tk7g62uOgiORbjWiKyzojdthOxrp2cpfm65tp1l/sT1oRo4dE/pA3Men
 829iAI1OIz4gD2Rx8BTHsYqbGtSSKsfskTOXyOGMaN7qXjgztRt+b+X4F
 NwKVS07S78xLDpuJZoaM1ftIhQMCdpyE0X7+lvlJDgswsgYCmTVtd7fye g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="248587373"
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="248587373"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 07:21:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,185,1647327600"; d="scan'208";a="514834897"
Received: from agerasym-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.133.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 07:21:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Apr 2022 17:21:40 +0300
Message-Id: <20220429142140.2671828-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: move tons of power well initializers
 to rodata
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

Using compound literals for initialization can be tricky. Lacking a
const qualifier, they won't end up in rodata, which is probably not
expected or intended. Add const to move a whopping 136 initializers to
rodata.

Compare:

$ objdump --syms drivers/gpu/drm/i915/display/intel_display_power_map.o | grep "\.rodata.*__compound_literal"
$ objdump --syms drivers/gpu/drm/i915/display/intel_display_power_map.o | grep "\.data.*__compound_literal"

Before and after the change.

Fixes: c32ffce42aa5 ("drm/i915: Convert the power well descriptor domain mask to an array of domains")
Fixes: 4a845ff0c0d4 ("drm/i915: Simplify power well definitions by adding power well instances")
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_map.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index af6f54a26a35..97b367f39f35 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -21,7 +21,7 @@
 
 #define I915_PW_DOMAINS(...) \
 	(const struct i915_power_domain_list) \
-		__LIST(__LIST_INLINE_ELEMS(enum intel_display_power_domain, __VA_ARGS__))
+		__LIST(__LIST_INLINE_ELEMS(const enum intel_display_power_domain, __VA_ARGS__))
 
 #define I915_DECL_PW_DOMAINS(__name, ...) \
 	static const struct i915_power_domain_list __name = I915_PW_DOMAINS(__VA_ARGS__)
@@ -32,7 +32,7 @@
 
 #define I915_PW_INSTANCES(...) \
 	(const struct i915_power_well_instance_list) \
-		__LIST(__LIST_INLINE_ELEMS(struct i915_power_well_instance, __VA_ARGS__))
+		__LIST(__LIST_INLINE_ELEMS(const struct i915_power_well_instance, __VA_ARGS__))
 
 #define I915_PW(_name, _domain_list, ...) \
 	{ .name = _name, .domain_list = _domain_list, ## __VA_ARGS__ }
-- 
2.30.2

