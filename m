Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 300321D291A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 09:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719396EADB;
	Thu, 14 May 2020 07:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2F716EADB
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 07:53:04 +0000 (UTC)
IronPort-SDR: SdKGRCVgxswmGWMSnETFYhD8LDpTYtENCuo8RN3EKGhMJq14OmTWFah8+qoHS/JtgoigTcMtjP
 X+XiRYZPIqPA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 00:53:04 -0700
IronPort-SDR: YyEb2+XAuy7SvKKak9bb8jgOA6qCHnPvSqdpzQEpAPhLKo7+AJ/PeJjLbKtH6wt1uXN4o6qrae
 DLhXns7uTJHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="372160509"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga001.fm.intel.com with ESMTP; 14 May 2020 00:53:03 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 10:48:53 +0300
Message-Id: <20200514074853.9508-4-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
References: <20200514074853.9508-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v30 3/3] drm/i915: Enable SAGV support for Gen12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Flip the switch and enable SAGV support
for Gen12 also.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index f34dca8b13fb..f4469d730d9b 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3638,10 +3638,6 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
 static bool
 intel_has_sagv(struct drm_i915_private *dev_priv)
 {
-	/* HACK! */
-	if (IS_GEN(dev_priv, 12))
-		return false;
-
 	return (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) &&
 		dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;
 }
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
