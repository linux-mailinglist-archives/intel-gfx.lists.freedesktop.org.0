Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C167D58365A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DF3810E6B2;
	Thu, 28 Jul 2022 01:35:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C0A410E382
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972084; x=1690508084;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dnPsMD92MheCH9/NuofDzJ8kcl6rMdj0Gey7FB8xrf0=;
 b=b/vKc3iTeYgUCvRZlUIApN//k3WirFJsxrAmCVpqtfqHCI1kG4nQJ8rv
 G96G5hdgVLntcxVdEMkgn9tG2ahoySKuY3zjtLJlKM3vaWEky/Px4MaUR
 UNXNyI0WuDWd0wQE1gcGrS2gDMVcGCNk84bFrfuCSjr4X5NUGYX90ofSu
 NPT/7phl4yU9IWuajOF1oyYq2QHOAk71GP+pkHQEVoog0xb2PygjNqWc2
 1wcpD3gD6pBIRJ+eLvrSQ7I0sd7gp+tqGjBYP21piurtdqi2mVifo/fBf
 yBHYBQ2tePKs93gBZjXGlmw66s8hOQ2HIzNp6WjmXbqj1zUmeQCx9SXeE g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="285937889"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="285937889"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:43 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457049"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:16 -0700
Message-Id: <20220728013420.3750388-20-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/23] drm/i915/display/mtl: Extend MBUS
 programming
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

From: José Roberto de Souza <jose.souza@intel.com>

Display version 14 also supports MBUS joining just like ADL-P
and also it don't need MBUS initialization, so extending ADL-P
code paths to display version 14 and higher.

Bspec: 49213

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ccc3f78b1607..c0bc5c30cef3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1101,7 +1101,7 @@ static void icl_mbus_init(struct drm_i915_private *dev_priv)
 	unsigned long abox_regs = INTEL_INFO(dev_priv)->display.abox_mask;
 	u32 mask, val, i;
 
-	if (IS_ALDERLAKE_P(dev_priv))
+	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
 		return;
 
 	mask = MBUS_ABOX_BT_CREDIT_POOL1_MASK |
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5767bbba2260..6a876cd53228 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1360,7 +1360,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
 					      IS_ALDERLAKE_S(dev_priv))
 
-#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915))
+#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 
 #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
 
-- 
2.25.1

