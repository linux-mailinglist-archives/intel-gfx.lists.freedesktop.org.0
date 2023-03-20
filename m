Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F356C0CC0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBC6F10E2AF;
	Mon, 20 Mar 2023 09:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3A6410E2B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679303146; x=1710839146;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Fz2kZRzukN+hY5ZZOkjLZnmABazUt+IWooWlj6b43VA=;
 b=HsVAIDsZgt9LUy8KNv/aovllbCTYqnGEHCeX/aC2jZNEmiB1bW8MNdiV
 LjGGC5a/nHjmwaS4jA71JxtUw0jPxtrdHITARsEBmOYisLrBoAIM0xuGM
 ScU5nQ6/ByT48jycW78Z1eyQmvuR1Ug9WDy9whWKo8OrVcLmoVOKOrwLm
 dLVWL4ojs8QDPY88AWRDowSl6I8BMKa/DfHSJnKgNHldLHuyB7jF0/tBi
 vs8ZRG7kW8CvSjLIAee2vDUR4Kq7tDeK1Q93nov7gGfUFKker2tBaAQPu
 rr6zLJENWBL2kAoO18Dn5NbeMuQxOdgUF2VssE+vMZXiMe/UFeAO6VyOh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338637121"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338637121"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="745289493"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="745289493"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 20 Mar 2023 02:05:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:05:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:05:22 +0200
Message-Id: <20230320090522.9909-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Move PLANE_BUG_CFG bit definitons
 to the correct place
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

All other skl+ universal plane register bit definitons are next
to the pipe A register definition. Move the PLANE_BUF_CFG bit
definitions there as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 09849bcb1ccf..f79e8a544f51 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4649,6 +4649,11 @@
 #define   PLANE_CHICKEN_DISABLE_DPT		REG_BIT(19) /* mtl+ */
 #define _PLANE_BUF_CFG_1_A			0x7027c
 #define _PLANE_BUF_CFG_2_A			0x7037c
+/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
+#define   PLANE_BUF_END_MASK		REG_GENMASK(27, 16)
+#define   PLANE_BUF_END(end)		REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
+#define   PLANE_BUF_START_MASK		REG_GENMASK(11, 0)
+#define   PLANE_BUF_START(start)	REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
 #define _PLANE_NV12_BUF_CFG_1_A		0x70278
 #define _PLANE_NV12_BUF_CFG_2_A		0x70378
 
@@ -4801,11 +4806,6 @@
 
 #define _PLANE_BUF_CFG_1_B			0x7127c
 #define _PLANE_BUF_CFG_2_B			0x7137c
-/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
-#define   PLANE_BUF_END_MASK		REG_GENMASK(27, 16)
-#define   PLANE_BUF_END(end)		REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
-#define   PLANE_BUF_START_MASK		REG_GENMASK(11, 0)
-#define   PLANE_BUF_START(start)	REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
 #define _PLANE_BUF_CFG_1(pipe)	\
 	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
 #define _PLANE_BUF_CFG_2(pipe)	\
-- 
2.39.2

