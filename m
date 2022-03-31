Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107EC4ED0B4
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 02:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F8B710EE7B;
	Thu, 31 Mar 2022 00:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3C410EE7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 00:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648685354; x=1680221354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vz/CqX9Z/qIYjDhzOdfplzcKFJs2mKDAFbSL0DA9+vo=;
 b=N8R+KXhasfSAPUqUc6DFtFm1AZwy2cXtjDHins2L7MlySyt9nyk7FuUp
 mNy9QaeFTyDjYWKyHKnY7sCdY/UYgL1/e/tWa2crmYTj76mA/hG/DnZ79
 PAXcGfBXAWth3fpuAr8sP9rS1X3hNkpbcrqLYuKJ668A70w4xcSaQxAFw
 ht4H6Xz8Kcjr/1lZjwDAU2JCkVjRYE0doXgFsEvi3H+i7F10bEcBQtRM1
 0ZL1SfdEQbwUCDtCV4f00fdoyFD7Fp/s/qFFsd5q2sMS6aLqwBzq815m5
 9iRL1JPNHPnoViprvR3MXuAT87j2yh0/Mdh0FbePAUG5oIZQUWRPqgeK9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="241827213"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="241827213"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 17:09:14 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="586197443"
Received: from mcbewley-mobl.ger.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.48.13])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 17:09:13 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 17:09:08 -0700
Message-Id: <20220331000908.1225343-2-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220331000908.1225343-1-casey.g.bowman@intel.com>
References: <20220331000908.1225343-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v5 1/1] Split i915_run_as_guest into x86 and
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
Cc: michael.cheng@intel.com, lucas.demarchi@intel.com, daniel.vetter@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Splitting i915_run_as_guest into a more arch-friendly function
as non-x86 builds do not support this functionality.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
---
 drivers/gpu/drm/i915/i915_utils.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index b2d89c43f24d..a42882e68eea 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -428,7 +428,12 @@ static inline bool timer_expired(const struct timer_list *t)
 
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

