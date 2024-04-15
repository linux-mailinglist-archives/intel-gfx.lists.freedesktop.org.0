Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CADD8A5E24
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 01:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74C531128AA;
	Mon, 15 Apr 2024 23:18:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YcIMODzu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A740A1128AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 23:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713223119; x=1744759119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UXCZaMnG4A+/6nJ7yL0n/H54LthULPInAMAd68LplC8=;
 b=YcIMODzusYym5g0HJUXXcnHisjuk2xKJAk3ZpZLLxSVGzQgeyt/fm/II
 FF7NacHy8faBHLYz11I1DpLPfBsdH9oUlxcbFp3mr+kNe6hJRqoVJu/Ha
 ror1F/XtH4vZJN6ihyaOe8+Tdg6JoMZYv+tGkdGgcZ9t6XrMWB36BQmIp
 +33r7kE7PrEKg80yGFrzRQmDSzwGPK09y4TigSI8vYg2Wd0usxBOt3VgO
 svmLXfxa5DSjHDyPkt9gV8BH9u7J1hKrSa3+vJYfsmQ3nAmK2648x/oTt
 yIMK62nZUPi7ODBFcgGoZOHz0fIgjz4xmAEiEI2T6q678AbYr5ZO5PC28 w==;
X-CSE-ConnectionGUID: TaVRV+NVQJefRSLga+/WdA==
X-CSE-MsgGUID: SEmufG9pQ4eMs0QNIzkc7w==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="31115485"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="31115485"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:11 -0700
X-CSE-ConnectionGUID: 4nuglu5cRaibaZI/BE42Pg==
X-CSE-MsgGUID: Zj319yfBTHy6MdzZUlc4ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="21963807"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:10 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [xe-for-ci 2/3] drm/xe/gsc: Skip GSC proxy init
Date: Mon, 15 Apr 2024 16:17:45 -0700
Message-ID: <20240415231746.1230684-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
References: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
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

The mei support for LNL hasn't landed yet, so we can't use the GSC proxy
component. Note that the lack of the GSC proxy means that the content
protection features (PXP, HDCP) won't work.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/xe/xe_gsc_proxy.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/xe/xe_gsc_proxy.c b/drivers/gpu/drm/xe/xe_gsc_proxy.c
index 35e397b68dfc..3a7ba63b5bf2 100644
--- a/drivers/gpu/drm/xe/xe_gsc_proxy.c
+++ b/drivers/gpu/drm/xe/xe_gsc_proxy.c
@@ -446,6 +446,15 @@ int xe_gsc_proxy_init(struct xe_gsc *gsc)
 
 	mutex_init(&gsc->proxy.mutex);
 
+	/*
+	 * FIXME: mei support for LNL hasn't been merged yet so we can't use the
+	 * GSC proxy component yet.
+	 */
+	if (xe->info.platform == XE_LUNARLAKE) {
+		xe_gt_info(gt, "skipping GSC proxy init due to missing LNL mei support\n");
+		return -ENODEV;
+	}
+
 	if (!IS_ENABLED(CONFIG_INTEL_MEI_GSC_PROXY)) {
 		xe_gt_info(gt, "can't init GSC proxy due to missing mei component\n");
 		return -ENODEV;
-- 
2.43.0

