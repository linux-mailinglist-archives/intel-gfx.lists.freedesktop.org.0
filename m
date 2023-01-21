Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8566676841
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Jan 2023 20:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C5B10E2C0;
	Sat, 21 Jan 2023 19:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD9810E2C0
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Jan 2023 19:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674328145; x=1705864145;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=WRBOZQsTnHObudVcI03yKpUnasaWIZ01ezvAUwNLwSQ=;
 b=Y8uqZHVZ2v8jGgTbzMTR7/K4CIiZTnVzNPyWC4hIppwm7RHGA6U45Xl/
 UGeo5GJxKBoTGu2knACbDgqJAEc5BwkRwKsELOiKaXRgzWeCazcsd7dJd
 I95C8obt2wvm+SfgesciNSA4wcWYjEnKPGUpWAFsW1mer7y2nb0c/8J0R
 tjmj8TmgaHumIXy7gPJ2k2UYvlEpyrCvgpYQvH5B/XYfS/wdnQ77Oc8YN
 rg41OcWBrntU/aS71kGPV6y0v6NPQOzrHBgnRGkEka2r0zkwzzucvM/YT
 w1GPl1eIrYEktVHsTAMiL9Ru/4LZmv3GSWGOPNVC/mVV3D15K349gPSC/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10597"; a="313708479"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="313708479"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2023 11:09:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10597"; a="989752072"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="989752072"
Received: from maheshm1-mobl1.gar.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.212.39.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2023 11:09:04 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 21 Jan 2023 16:08:53 -0300
Message-Id: <20230121190853.18722-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fix sphinx warnings for
 workarounds documentation
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

The wildchar ("*") used in the function name patterns in the
documentation was taken as a start of an "emphasis" inline markup. Wrap
the patterns with the inline literal markup and, for consistency, do the
same for the other function names mentioned.

Fixes: 0c3064cf33fb ("drm/i915/doc: Document where to implement register workarounds")
Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 918a271447e2..e849035d8dc5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -30,8 +30,8 @@
  *   creation to have a "primed golden context", i.e. a context image that
  *   already contains the changes needed to all the registers.
  *
- *   Context workarounds should be implemented in the *_ctx_workarounds_init()
- *   variants respective to the targeted platforms.
+ *   Context workarounds should be implemented in the
+ *   ``*_ctx_workarounds_init()`` variants respective to the targeted platforms.
  *
  * - Engine workarounds: the list of these WAs is applied whenever the specific
  *   engine is reset. It's also possible that a set of engine classes share a
@@ -46,16 +46,16 @@
  *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
  *
  *   Workarounds for registers specific to RCS and CCS should be implemented in
- *   rcs_engine_wa_init() and ccs_engine_wa_init(), respectively; those for
- *   registers belonging to BCS, VCS or VECS should be implemented in
- *   xcs_engine_wa_init(). Workarounds for registers not belonging to a specific
- *   engine's MMIO range but that are part of of the common RCS/CCS reset domain
- *   should be implemented in general_render_compute_wa_init().
+ *   ``rcs_engine_wa_init()`` and ``ccs_engine_wa_init()``, respectively; those
+ *   for registers belonging to BCS, VCS or VECS should be implemented in
+ *   ``xcs_engine_wa_init()``. Workarounds for registers not belonging to a
+ *   specific engine's MMIO range but that are part of of the common RCS/CCS
+ *   reset domain should be implemented in ``general_render_compute_wa_init()``.
  *
  * - GT workarounds: the list of these WAs is applied whenever these registers
  *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
  *
- *   GT workarounds should be implemented in the *_gt_workarounds_init()
+ *   GT workarounds should be implemented in the ``*_gt_workarounds_init()``
  *   variants respective to the targeted platforms.
  *
  * - Register whitelist: some workarounds need to be implemented in userspace,
@@ -64,8 +64,8 @@
  *   this is just a special case of a MMIO workaround (as we write the list of
  *   these to/be-whitelisted registers to some special HW registers).
  *
- *   Register whitelisting should be done in the *_whitelist_build() variants
- *   respective to the targeted platforms.
+ *   Register whitelisting should be done in the ``*_whitelist_build()``
+ *   variants respective to the targeted platforms.
  *
  * - Workaround batchbuffers: buffers that get executed automatically by the
  *   hardware on every HW context restore. These buffers are created and
-- 
2.39.0

