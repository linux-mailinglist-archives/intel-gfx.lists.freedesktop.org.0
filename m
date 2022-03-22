Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933654E4636
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 19:43:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1DB410E10B;
	Tue, 22 Mar 2022 18:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FCA10E10B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 18:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647974575; x=1679510575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wmE4GEz8fPvoL4G2t4lnWvYlCcmn5HIFScStmdIqJSM=;
 b=XmWIsr9zs2zAfVsoxYz5kLTi6pypCLrvc8NLN75Hb3en/H4aY8MyWXH5
 kzp3wfhw2km7meggCH723+Z6OuIlwdxoncd7DPhiTpcA9s6Tli/nHcGZ6
 8q+Scp+5mCpVC6hor3yUADUiIlAaL6G48kSjcajoI1t4ypAaSzFgSm0hv
 JUcPTsxqqsxaEDADxKkkQyh82BayKpYJxvpx6ZpgbG1h2k112spI5fJee
 31ttdIRVw8Y0HSIJHzUQzUXC63De+fLQF8KDEO7Qv4Mpe1dFHLPrEGMVn
 x4prkOmxMJJVKaIMfjQFpjcDpFY2ThNXmvpp1oFNP68wH4MlVZHRRPtLO A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="245390205"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="245390205"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 11:42:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="583392672"
Received: from nsajadpo-mobl.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.251.14.169])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 11:42:54 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 11:42:37 -0700
Message-Id: <20220322184237.397484-2-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220322184237.397484-1-casey.g.bowman@intel.com>
References: <20220322184237.397484-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/1] i915/drm: Split run_as_guest into x86
 and non-x86
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

Splitting run_as_guest into a more arch-friendly function
as non-x86 builds do not support this functionality.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3c85dc8c1f04..76f0e47e3186 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1366,7 +1366,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 static inline bool run_as_guest(void)
 {
+#if IS_ENABLED(CONFIG_X86)
 	return !hypervisor_is_type(X86_HYPER_NATIVE);
+#else
+	/* Not supported yet  */
+	return false;
+#endif
 }
 
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
-- 
2.25.1

