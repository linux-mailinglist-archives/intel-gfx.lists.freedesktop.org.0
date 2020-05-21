Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7940D1DC3C8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A396E8C8;
	Thu, 21 May 2020 00:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28CEC6E8C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:09 +0000 (UTC)
IronPort-SDR: h/BH/8hy5gRueqHPFZ4qlRAhBjOM/WdkLE1G6SmSc7WHN/FbSELxxawGUZMHF0rX0dx0zL1g3s
 c98ec06/4NXQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:09 -0700
IronPort-SDR: mAYHQ0QqOWehJVZNMS+prmh96r2S8H8lfNlKwHkeN+DHGnb2uGK9Ncr3MdZahWdrmFRziYH1ZT
 Pkiy7hSmcbCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720878"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:35 -0700
Message-Id: <20200521003803.18936-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/37] drm/i915: Add has_master_unit_irq flag
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stuart Summers <stuart.summers@intel.com>

Add flag to differentiate platforms with and without the master
IRQ control bit.

Signed-off-by: Stuart Summers <stuart.summers@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          | 2 ++
 drivers/gpu/drm/i915/intel_device_info.h | 1 +
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index bed12799495b..162b1ead88d3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1580,6 +1580,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_LOGICAL_RING_PREEMPTION(dev_priv) \
 		(INTEL_INFO(dev_priv)->has_logical_ring_preemption)
 
+#define HAS_MASTER_UNIT_IRQ(dev_priv) (INTEL_INFO(dev_priv)->has_master_unit_irq)
+
 #define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
 
 #define INTEL_PPGTT(dev_priv) (INTEL_INFO(dev_priv)->ppgtt_type)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index c912acd06109..ced979c9b366 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -121,6 +121,7 @@ enum intel_ppgtt_type {
 	func(has_logical_ring_contexts); \
 	func(has_logical_ring_elsq); \
 	func(has_logical_ring_preemption); \
+	func(has_master_unit_irq); \
 	func(has_pooled_eu); \
 	func(has_rc6); \
 	func(has_rc6p); \
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
