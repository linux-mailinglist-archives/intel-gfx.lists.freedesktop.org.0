Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 572ED62A1CE
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 20:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30AA10E0FE;
	Tue, 15 Nov 2022 19:26:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEDA210E0FE;
 Tue, 15 Nov 2022 19:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668540392; x=1700076392;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1nIUMyCuc8kJnXBATNkn/D8Rp6GCOU4ebgxQ1HqYNqE=;
 b=UOECXCOJUN2Ozeo74beOEFDocJC9rODMy/FEZIPXePlRQ7eTYv86tf7D
 9C82IHacNKf+M2p/jypkybJsOzQRCP68PUTNzJItgou/FEC0b7TGm713M
 RRLhN8bZnNCzG5g58LrzybSEEadfZCQVJLVSDhVck71fbJM20V7Il8iZ3
 +tb37nnNDqGg7zua/99RnQbXDu7U1AZcgdDLJeOsT2NjdfocOx1TBGqfw
 80QIiHs9kysLJQiOPrK6TwAEGyUrlQkjUILAP5Mza6cXpcmCl03mnbjrn
 6z/dnMqGRRci+gtF4+tpsZA7akDlMvFf2/80VaHm9b8fkpwMQoKfXdepZ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="313496681"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="313496681"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 11:26:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10532"; a="968113716"
X-IronPort-AV: E=Sophos;i="5.96,166,1665471600"; d="scan'208";a="968113716"
Received: from lucas-s2600cw.jf.intel.com ([10.54.74.148])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2022 11:26:31 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Nov 2022 11:26:11 -0800
Message-Id: <20221115192611.179981-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Update workaround documentation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There were several updates in the driver on how the workarounds are
handled since its documentation was written. Update the documentation to
reflect the current reality.

v2:
  - Remove footnote that was wrongly referenced, adding back the
    reference in the correct paragraph.
  - Remove "Display workarounds" and just mention "display IP" under
    "Other" category since all of them are peppered around the driver.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Acked-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> # v1
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 80 +++++++++++++--------
 1 file changed, 50 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 213160f29ec3..290f9f91fdf4 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -18,42 +18,62 @@
 /**
  * DOC: Hardware workarounds
  *
- * This file is intended as a central place to implement most [1]_ of the
- * required workarounds for hardware to work as originally intended. They fall
- * in five basic categories depending on how/when they are applied:
+ * Hardware workarounds are register programming documented to be executed in
+ * the driver that fall outside of the normal programming sequences for a
+ * platform. There are some basic categories of workarounds, depending on
+ * how/when they are applied:
  *
- * - Workarounds that touch registers that are saved/restored to/from the HW
- *   context image. The list is emitted (via Load Register Immediate commands)
- *   everytime a new context is created.
- * - GT workarounds. The list of these WAs is applied whenever these registers
- *   revert to default values (on GPU reset, suspend/resume [2]_, etc..).
- * - Display workarounds. The list is applied during display clock-gating
- *   initialization.
- * - Workarounds that whitelist a privileged register, so that UMDs can manage
- *   them directly. This is just a special case of a MMMIO workaround (as we
- *   write the list of these to/be-whitelisted registers to some special HW
- *   registers).
- * - Workaround batchbuffers, that get executed automatically by the hardware
- *   on every HW context restore.
+ * - Context workarounds: workarounds that touch registers that are
+ *   saved/restored to/from the HW context image. The list is emitted (via Load
+ *   Register Immediate commands) once when initializing the device and saved in
+ *   the default context. That default context is then used on every context
+ *   creation to have a "primed golden context", i.e. a context image that
+ *   already contains the changes needed to all the registers.
  *
- * .. [1] Please notice that there are other WAs that, due to their nature,
- *    cannot be applied from a central place. Those are peppered around the rest
- *    of the code, as needed.
+ * - Engine workarounds: the list of these WAs is applied whenever the specific
+ *   engine is reset. It's also possible that a set of engine classes share a
+ *   common power domain and they are reset together. This happens on some
+ *   platforms with render and compute engines. In this case (at least) one of
+ *   them need to keeep the workaround programming: the approach taken in the
+ *   driver is to tie those workarounds to the first compute/render engine that
+ *   is registered.  When executing with GuC submission, engine resets are
+ *   outside of kernel driver control, hence the list of registers involved in
+ *   written once, on engine initialization, and then passed to GuC, that
+ *   saves/restores their values before/after the reset takes place. See
+ *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
  *
- * .. [2] Technically, some registers are powercontext saved & restored, so they
- *    survive a suspend/resume. In practice, writing them again is not too
- *    costly and simplifies things. We can revisit this in the future.
+ * - GT workarounds: the list of these WAs is applied whenever these registers
+ *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
+ *
+ * - Register whitelist: some workarounds need to be implemented in userspace,
+ *   but need to touch privileged registers. The whitelist in the kernel
+ *   instructs the hardware to allow the access to happen. From the kernel side,
+ *   this is just a special case of a MMIO workaround (as we write the list of
+ *   these to/be-whitelisted registers to some special HW registers).
+ *
+ * - Workaround batchbuffers: buffers that get executed automatically by the
+ *   hardware on every HW context restore. These buffers are created and
+ *   programmed in the default context so the hardware always go through those
+ *   programming sequences when switching contexts. The support for workaround
+ *   batchbuffers is enabled these hardware mechanisms:
  *
- * Layout
- * ~~~~~~
+ *   #. INDIRECT_CTX: A batchbuffer and an offset are provided in the default
+ *      context, pointing the hardware to jump to that location when that offset
+ *      is reached in the context restore. Workaround batchbuffer in the driver
+ *      currently uses this mechanism for all platforms.
  *
- * Keep things in this file ordered by WA type, as per the above (context, GT,
- * display, register whitelist, batchbuffer). Then, inside each type, keep the
- * following order:
+ *   #. BB_PER_CTX_PTR: A batchbuffer is provided in the default context,
+ *      pointing the hardware to a buffer to continue executing after the
+ *      engine registers are restored in a context restore sequence. This is
+ *      currently not used in the driver.
  *
- * - Infrastructure functions and macros
- * - WAs per platform in standard gen/chrono order
- * - Public functions to init or apply the given workaround type.
+ * - Other:  There are WAs that, due to their nature, cannot be applied from a
+ *   central place. Those are peppered around the rest of the code, as needed.
+ *   Workarounds related to the display IP are the main example.
+ *
+ * .. [1] Technically, some registers are powercontext saved & restored, so they
+ *    survive a suspend/resume. In practice, writing them again is not too
+ *    costly and simplifies things, so it's the approach taken in the driver.
  */
 
 static void wa_init_start(struct i915_wa_list *wal, struct intel_gt *gt,
-- 
2.38.1

