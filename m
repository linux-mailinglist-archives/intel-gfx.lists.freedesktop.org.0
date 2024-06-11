Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 088A1903D81
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 15:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B99C10E653;
	Tue, 11 Jun 2024 13:34:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n7XGTkNw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DAFF10E658
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2024 13:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718112857; x=1749648857;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ehrsDO4DNcnoO8J/mEL8WLstZhyknBPwxQMsVmBbYLo=;
 b=n7XGTkNwOq5oZkRLLMuFmHvS2AoXO+GcG1ohMCOd/hVptSGMzXwkYv58
 XAJn7UUZKL9f2FeRT57CO6qfg7ZTdfMq5MRxJvfIGoFhcfptZFWunfuZY
 KI7vKMr0+yOvgmAl9n6rAPL5Gnt3nhuZal/IsIHeI79uomiUfQ5RgauJo
 w3/2K35Lr1ejoraRYL5fesLoJggHXAO34j03edgjYJXb51FcF5531E6cb
 pVnbJuYpUBPOEO0oi4dXf/Zeo7KYsYCkV7xh94DGqMKqScyvP80mh1c73
 2l3XTgQleB3MQuFdP//3ba3cRoPDVvU6+8H3s//U8UQK9y9iz1+PrxYnK g==;
X-CSE-ConnectionGUID: UCrV5uPRQIWZJOOovODe/A==
X-CSE-MsgGUID: 08zbZz1sT/WkSk0KBMilbQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="12018246"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="12018246"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 06:34:17 -0700
X-CSE-ConnectionGUID: uhSS5fftRNCv+SGNeXyTwA==
X-CSE-MsgGUID: qO/V4bC9Q9Gp1Pn3NgPahw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="39421467"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Jun 2024 06:34:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Jun 2024 16:34:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/11] drm/i915/dsb: Try to document that DSB_STATUS bit 16 is
 level triggered
Date: Tue, 11 Jun 2024 16:33:44 +0300
Message-ID: <20240611133344.30673-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

DSB_STATUS bit 16 is supposed to be a sticky bit informing us whether
the DSB was idle or not when the pipe's delayed vblank (when double
buffered registers latch) occurred. Unfortunately it turns out this
is a level triggred signal, ie. the bit will be set whenever the
DSB is busy during the scanline window between start of delayed
vblank and vtotal. Try to document that fact by renaming the bit.

Sadly this also thwarts my plan to use this bit to sanity check
that the (to be introduced) DSB based vblank evasion did its job
correctly. That would require an edge triggered signal instead.
So looks like we'll have to rely mostly on luck instead :(

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
index 9c2664ff519a..cb6e0e5624a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
@@ -45,7 +45,7 @@
 #define   DSB_TLBTRANS_SM_STATE_MASK	REG_GENMASK(21, 20)
 #define   DSB_SAFE_WINDOW		REG_BIT(19)
 #define   DSB_POINTERS_SM_STATE_MASK	REG_GENMASK(18, 17)
-#define   DSB_BUSY_ON_DELAYED_VBLANK	REG_BIT(16)
+#define   DSB_BUSY_DURING_DELAYED_VBLANK	REG_BIT(16)
 #define   DSB_MMIO_ARB_SM_STATE_MASK	REG_GENMASK(15, 13)
 #define   DSB_MMIO_INST_SM_STATE_MASK	REG_GENMASK(11, 7)
 #define   DSB_RESET_SM_STATE_MASK	REG_GENMASK(5, 4)
-- 
2.44.2

