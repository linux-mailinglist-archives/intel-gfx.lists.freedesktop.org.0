Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B6154DE7D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 11:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC3D113E1A;
	Thu, 16 Jun 2022 09:55:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3BDA113E26
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 09:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655373334; x=1686909334;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bZBwdBqRGKtqfY1sd/eBR2+IIaZoSoyvFgIVXvXaFqY=;
 b=bLN14F72HM1qqtx6F46M5ZzLDrEqO7QtsR7wmohAPXoblMZ5xXOdQvtI
 YoEMppv1X+J5juk++spI+rU57NFi1MbPnWqqTwWNLXZ2ehFaloomrcpUM
 di2MAdFrjzLpQTH2GImrZz8HGGYVr005jimus/4feuMkgZmiC5R2c0P1Y
 ksKODQQO+vHG/v439kU/Ksxd7SZVFKK6OwI1aKMqOU2IDdMci+MgFyhcV
 VUMOz6T7aUp3T7q6mmPKwJrRRCnUG7Ep0eNlE4uXATxXr1hq7VSl9XpMn
 PapB84mc6ZyhODjfYJnGCUYjvR/Db5KDZeBI3o2d2ehAJzvtiuSyw743S A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10379"; a="262232978"
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="262232978"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2022 02:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,304,1647327600"; d="scan'208";a="641470720"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 16 Jun 2022 02:55:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jun 2022 12:55:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jun 2022 12:55:30 +0300
Message-Id: <20220616095530.15024-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove bogus LPT iCLKIP WARN
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

The WARN shouldn't have been added yet. For the moment the
clock that gets passed here is just what the user has requested
(via the modeline) and may not be exactly what iCLKIP can
generate.

Later on the plan is to change things so that we already get
passed the exact clock here, at which point the WARN should
be reintroduced.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6246
Fixes: 97708335b04d ("drm/i915: Introduce struct iclkip_params")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch_refclk.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index 752dab11667f..9934c8a9e240 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -179,7 +179,6 @@ void lpt_program_iclkip(const struct intel_crtc_state *crtc_state)
 	lpt_disable_iclkip(dev_priv);
 
 	lpt_compute_iclkip(&p, clock);
-	drm_WARN_ON(&dev_priv->drm, lpt_iclkip_freq(&p) != clock);
 
 	/* This should not happen with any sane values */
 	drm_WARN_ON(&dev_priv->drm, SBI_SSCDIVINTPHASE_DIVSEL(p.divsel) &
-- 
2.35.1

