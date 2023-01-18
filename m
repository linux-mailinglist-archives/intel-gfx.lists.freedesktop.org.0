Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B971A67222A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 16:53:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA0510E198;
	Wed, 18 Jan 2023 15:53:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6D0B10E788
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 15:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674057196; x=1705593196;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ccFUthDybLOwRGSXEyRslrzuk2oeeJQUovQ5IEybA4k=;
 b=EmmDHSi05pcjQngyXwLQBRX3ym62LSeb4zc5UWhzye/17Lskqui+qMEp
 U9WaRXPCO9wP0mpA7yKzZl/L2ZCFrCLUH67Qv9P6EKmm2aDBL2xkpj2tY
 4Z4giMLSAzh3P7Lj4g4zAAX7x0eSY5NSUjxrdrBxNBxmGifdYFa0odOop
 4Z+sydPlA2HXvEyDDKefVlF5q/r8m4bElx95VO68r8FneDFl+YSeUsUzW
 6zs5dYBbu0XNE4qIGH2zDb7bnZ5o8C8DInqjqsFFr1PylbS6JfD8uyBvF
 NMCd5MUpXMfXbZC5dQcFB+AMUefs+xU1V2aNXVylAQKianxkZUFiFtfMQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="411249689"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="411249689"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:53:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="802236754"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="802236754"
Received: from sgunturi-mobl.amr.corp.intel.com (HELO gjsousa-mobl2.intel.com)
 ([10.213.185.74])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 07:52:59 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jan 2023 12:52:48 -0300
Message-Id: <20230118155249.41551-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118155249.41551-1-gustavo.sousa@intel.com>
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/doc: Document where to
 implement register workarounds
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Extend the existing documentation in gt/intel_workarounds.c to make it
clear which functions register workarounds should be implemented in
according to their types.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 6dacd0dc5c2c..ef6065ce8267 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -30,6 +30,9 @@
  *   creation to have a "primed golden context", i.e. a context image that
  *   already contains the changes needed to all the registers.
  *
+ *   Context workarounds should be implemented in the *_ctx_workarounds_init()
+ *   variants respective to the targeted platforms.
+ *
  * - Engine workarounds: the list of these WAs is applied whenever the specific
  *   engine is reset. It's also possible that a set of engine classes share a
  *   common power domain and they are reset together. This happens on some
@@ -42,15 +45,28 @@
  *   saves/restores their values before/after the reset takes place. See
  *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
  *
+ *   Workarounds for registers specific to RCS and CCS should be implemented in
+ *   rcs_engine_wa_init() and ccs_engine_wa_init(), respectively; those for
+ *   registers belonging to BCS, VCS or VECS should be implemented in
+ *   xcs_engine_wa_init(). Workarounds for registers not belonging to a specific
+ *   engine's MMIO range but that are part of of the common RCS/CCS reset domain
+ *   should be implemented in general_render_compute_wa_init().
+ *
  * - GT workarounds: the list of these WAs is applied whenever these registers
  *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
  *
+ *   GT workarounds should be implemented in the *_gt_workarounds_init()
+ *   variants respective to the targeted platforms.
+ *
  * - Register whitelist: some workarounds need to be implemented in userspace,
  *   but need to touch privileged registers. The whitelist in the kernel
  *   instructs the hardware to allow the access to happen. From the kernel side,
  *   this is just a special case of a MMIO workaround (as we write the list of
  *   these to/be-whitelisted registers to some special HW registers).
  *
+ *   Register whitelisting should be done in the *_whitelist_build() variants
+ *   respective to the targeted platforms.
+ *
  * - Workaround batchbuffers: buffers that get executed automatically by the
  *   hardware on every HW context restore. These buffers are created and
  *   programmed in the default context so the hardware always go through those
-- 
2.39.0

