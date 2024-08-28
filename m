Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F489625D4
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 13:19:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 102A410E386;
	Wed, 28 Aug 2024 11:19:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bce0v0WB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822F510E386
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 11:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724843963; x=1756379963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HQtVlFYKTomTXCuPDuKmZsEt2eiqY6GBEmUm0E1LxiE=;
 b=bce0v0WBd8DN3Z7w1687tBlh4WA/HT3XNdzvQ2cU5nsiDEBWFX0z51kn
 /xdGve9X2IJweUjQVhv0uKBSEB0YYHHiFKb69otCBW3o7o+PWGv8H3IXE
 qEAeyVtXaWDp4yE0XU1CNWVP221J78ZlC0aQMzxwTSnRQh5BwcDECZ4Bi
 dbnXQojune2RZWy7UjdG8EuBQSiSbTZwg1fwLtCt0kJwqOfjP2sYPL4St
 6lEHClIyQJI8Dcgzft4Pnl++Pge6gsLfWtkxU1QdFkRIXdNeKFoZhAgo/
 6jZ96KVPn4YgJlOFRhV+vt774P7CCD5hcCf3Iim5RhFCh3Xksc3Xx4EPI g==;
X-CSE-ConnectionGUID: fW35WCoMTlGkTaGYx9ogYQ==
X-CSE-MsgGUID: /+/f6gtZQxCmufF94vmXcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23171973"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23171973"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:19:23 -0700
X-CSE-ConnectionGUID: OiQsX1h7RUuFOniSxmGTHw==
X-CSE-MsgGUID: pqnY6VDlRQykzwyxCJQAsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="67553205"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:19:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Daniel Veter <daniel.vetter@ffwll.ch>
Subject: [PATCH 1/2] drm/i915: fail module probe on nomodeset and
 i915.modeset=0
Date: Wed, 28 Aug 2024 14:19:08 +0300
Message-Id: <1f34651ae8ae96dd5ecd9969b5bc43d23feda08c.1724843853.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1724843853.git.jani.nikula@intel.com>
References: <cover.1724843853.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Since commit b30324adaf8d ("drm/i915: Deprecated UMS support") we've
silently failed the probe, without propagating errors, on nomodeset and
i915.modeset=0. This has been to not upset userspace. See the above
commit for details.

Since then, we've removed both the UMS and KMS kconfig options in commit
03dae59c72ff ("drm/i915: Ditch UMS config option") and commit
fd930478fb79 ("drm/i915: Remove KMS Kconfig option") respectively.

Another ten years or so have passed. Continue with the deprecation by
actually failing the probe with nomodeset and i915.modeset=0.

Cc: Daniel Veter <daniel.vetter@ffwll.ch>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_module.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
index 65acd7bf75d0..3397c2368ed8 100644
--- a/drivers/gpu/drm/i915/i915_module.c
+++ b/drivers/gpu/drm/i915/i915_module.c
@@ -36,9 +36,8 @@ static int i915_check_nomodeset(void)
 		use_kms = false;
 
 	if (!use_kms) {
-		/* Silently fail loading to not upset userspace. */
 		DRM_DEBUG_DRIVER("KMS disabled.\n");
-		return 1;
+		return -ENODEV;
 	}
 
 	return 0;
-- 
2.39.2

