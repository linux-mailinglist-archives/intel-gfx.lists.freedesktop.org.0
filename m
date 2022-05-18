Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F55952B8E1
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 13:33:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DA610E07A;
	Wed, 18 May 2022 11:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1973010E07A
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 11:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652873610; x=1684409610;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Km8N+uV+AaUsVtD57wv+Lb67wvB+pJZn5kXCN4xqwE=;
 b=Bdpn0hjXkCtOln45shosq1Zd3tBcm9KtcTLcfs5d0kzPlQEepjKIJ/5k
 Min0kDsMg5mZ+sU3U2OQgax4RRUq5gcMSuLA6uKCJtCgErVqTXC0Jn5e+
 zbk7DqQh5cnlon6lMZUets1Xsv5ZzMC2eWseDL3Ct0Z+VltKTr/C7kzA5
 guNU2RFmhpA3FjkwJiL65r22VvE3LeZRDXihiTtnI15UYccmQ6wZVWzdZ
 B02IgewGDeiBEiRLxro0kISijDUfwF4OjbKDg9DNcl2v5tBGgufydzCZ5
 icjlrFwInV7Ech/Hi7b4xni6qmnc/h8Hv11wwbIekgq1+pIwQ76R9xc38 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="251523798"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="251523798"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:33:29 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="545410062"
Received: from jwasiuki-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.47])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 04:33:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 14:33:15 +0300
Message-Id: <20220518113315.1305027-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220518113315.1305027-1-jani.nikula@intel.com>
References: <20220518113315.1305027-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/uc: Fix undefined behavior due to
 shift overflowing the constant
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
Cc: jani.nikula@intel.com, Randy Dunlap <rdunlap@infradead.org>,
 Ruiqi GONG <gongruiqi1@huawei.com>, Borislav Petkov <bp@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Borislav Petkov <bp@suse.de>

Fix:

  In file included from <command-line>:0:0:
  drivers/gpu/drm/i915/gt/uc/intel_guc.c: In function ‘intel_guc_send_mmio’:
  ././include/linux/compiler_types.h:352:38: error: call to ‘__compiletime_assert_1047’ \
  declared with attribute error: FIELD_PREP: mask is not constant
    _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER__)

and other build errors due to shift overflowing values.

See https://lore.kernel.org/r/YkwQ6%2BtIH8GQpuct@zn.tnic for the gory
details as to why it triggers with older gccs only.

v2 by Jani:
- Drop the i915_reg.h changes

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Ruiqi GONG <gongruiqi1@huawei.com>
Cc: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h           | 2 +-
 drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h | 2 +-
 drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h          | 2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h                 | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index be9ac47fa9d0..4ef9990ed7f8 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -50,7 +50,7 @@
 
 #define HOST2GUC_SELF_CFG_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN + 3u)
 #define HOST2GUC_SELF_CFG_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
-#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY		(0xffff << 16)
+#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY		(0xffffU << 16)
 #define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_LEN		(0xffff << 0)
 #define HOST2GUC_SELF_CFG_REQUEST_MSG_2_VALUE32		GUC_HXG_REQUEST_MSG_n_DATAn
 #define HOST2GUC_SELF_CFG_REQUEST_MSG_3_VALUE64		GUC_HXG_REQUEST_MSG_n_DATAn
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
index c9086a600bce..df83c1cc7c7a 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
@@ -82,7 +82,7 @@ static_assert(sizeof(struct guc_ct_buffer_desc) == 64);
 #define GUC_CTB_HDR_LEN				1u
 #define GUC_CTB_MSG_MIN_LEN			GUC_CTB_HDR_LEN
 #define GUC_CTB_MSG_MAX_LEN			256u
-#define GUC_CTB_MSG_0_FENCE			(0xffff << 16)
+#define GUC_CTB_MSG_0_FENCE			(0xffffU << 16)
 #define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
 #define   GUC_CTB_FORMAT_HXG			0u
 #define GUC_CTB_MSG_0_RESERVED			(0xf << 8)
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
index 29ac823acd4c..7d5ba4d97d70 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
@@ -40,7 +40,7 @@
  */
 
 #define GUC_HXG_MSG_MIN_LEN			1u
-#define GUC_HXG_MSG_0_ORIGIN			(0x1 << 31)
+#define GUC_HXG_MSG_0_ORIGIN			(0x1U << 31)
 #define   GUC_HXG_ORIGIN_HOST			0u
 #define   GUC_HXG_ORIGIN_GUC			1u
 #define GUC_HXG_MSG_0_TYPE			(0x7 << 28)
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
index 2516705b9f36..8dc063f087eb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
@@ -28,7 +28,7 @@
 #define   GS_MIA_HALT_REQUESTED		  (0x02 << GS_MIA_SHIFT)
 #define   GS_MIA_ISR_ENTRY		  (0x04 << GS_MIA_SHIFT)
 #define   GS_AUTH_STATUS_SHIFT		30
-#define   GS_AUTH_STATUS_MASK		  (0x03 << GS_AUTH_STATUS_SHIFT)
+#define   GS_AUTH_STATUS_MASK		  (0x03U << GS_AUTH_STATUS_SHIFT)
 #define   GS_AUTH_STATUS_BAD		  (0x01 << GS_AUTH_STATUS_SHIFT)
 #define   GS_AUTH_STATUS_GOOD		  (0x02 << GS_AUTH_STATUS_SHIFT)
 
-- 
2.30.2

