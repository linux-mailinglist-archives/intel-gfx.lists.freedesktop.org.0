Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE3E2B0429
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 12:45:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F426E201;
	Thu, 12 Nov 2020 11:45:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A516E201
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 11:45:02 +0000 (UTC)
IronPort-SDR: l5tbmTD6/3WF06HeUkic9Xw+BsELbRqBrYjWdhDPnJ74IdS2rQRgeOAlO3C3pSlxptNTWzeNdX
 d97E2TPpGJhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="167711750"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="167711750"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 03:45:02 -0800
IronPort-SDR: KUT8KQuG4aqWxVuw/joP2afy75bd3HiABcPMS6L3UQvHmhRuiFDZW9VHPHDvV2pn9Eq+f+5Y0k
 GjAAxjTpIXJQ==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="542232253"
Received: from mghidovi-mobl1.ti.intel.com (HELO localhost) ([10.251.81.155])
 by orsmga005-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 03:45:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 13:44:35 +0200
Message-Id: <207faf5383f0ec1c37199d827b32e426111a95e2.1605181350.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1605181350.git.jani.nikula@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: remove last traces of
 I915_READ_FW() and I915_WRITE_FW()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Good riddance! Remove the macros and their remaining references in
comments.

intel_uncore_read_fw() and intel_uncore_write_fw() should be used
instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h     | 29 -----------------------------
 drivers/gpu/drm/i915/intel_uncore.c |  2 +-
 drivers/gpu/drm/i915/intel_uncore.h |  2 +-
 3 files changed, 2 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 15be8debae54..fecb5899cbac 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1978,35 +1978,6 @@ int i915_reg_read_ioctl(struct drm_device *dev, void *data,
 
 #define POSTING_READ(reg__)	__I915_REG_OP(posting_read, dev_priv, (reg__))
 
-/* These are untraced mmio-accessors that are only valid to be used inside
- * critical sections, such as inside IRQ handlers, where forcewake is explicitly
- * controlled.
- *
- * Think twice, and think again, before using these.
- *
- * As an example, these accessors can possibly be used between:
- *
- * spin_lock_irq(&dev_priv->uncore.lock);
- * intel_uncore_forcewake_get__locked();
- *
- * and
- *
- * intel_uncore_forcewake_put__locked();
- * spin_unlock_irq(&dev_priv->uncore.lock);
- *
- *
- * Note: some registers may not need forcewake held, so
- * intel_uncore_forcewake_{get,put} can be omitted, see
- * intel_uncore_forcewake_for_reg().
- *
- * Certain architectures will die if the same cacheline is concurrently accessed
- * by different clients (e.g. on Ivybridge). Access to registers should
- * therefore generally be serialised, by either the dev_priv->uncore.lock or
- * a more localised lock guarding all access to that bank of registers.
- */
-#define I915_READ_FW(reg__) __I915_REG_OP(read_fw, dev_priv, (reg__))
-#define I915_WRITE_FW(reg__, val__) __I915_REG_OP(write_fw, dev_priv, (reg__), (val__))
-
 /* i915_mm.c */
 int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 1c14a07eba7d..ef40edfff412 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2070,7 +2070,7 @@ int i915_reg_read_ioctl(struct drm_device *dev,
  * This routine waits until the target register @reg contains the expected
  * @value after applying the @mask, i.e. it waits until ::
  *
- *     (I915_READ_FW(reg) & mask) == value
+ *     (intel_uncore_read_fw(uncore, reg) & mask) == value
  *
  * Otherwise, the wait will timeout after @slow_timeout_ms milliseconds.
  * For atomic context @slow_timeout_ms must be zero and @fast_timeout_us
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index bd2467284295..5dcb7f4183b2 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -216,7 +216,7 @@ void intel_uncore_forcewake_flush(struct intel_uncore *uncore,
 
 /*
  * Like above but the caller must manage the uncore.lock itself.
- * Must be used with I915_READ_FW and friends.
+ * Must be used with intel_uncore_read_fw() and friends.
  */
 void intel_uncore_forcewake_get__locked(struct intel_uncore *uncore,
 					enum forcewake_domains domains);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
