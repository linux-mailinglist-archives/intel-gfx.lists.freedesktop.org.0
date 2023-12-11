Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5BC80DE10
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 23:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F2A10E335;
	Mon, 11 Dec 2023 22:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94FDD10E335
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 22:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702333000; x=1733869000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PaWQoFWR4RoeCKeUAqZKuPgVc5JZJcVyDz4dSeN0xdY=;
 b=BjUM82AiYOCdRVfJUR0Zn/AlfKc4Ya4CqIDyEgjv54n74U/C3fgsYVMR
 pOjbRip+VqaVfbujzlcQR7+4j0T7u7lAxyqy/Klkx2zt/zygJvFd5Dfw/
 LWv5RFmfCcohWsqV99i+62qdjnrydP3mNkI/QxElofFnWFeSt2iqHOBJ3
 d+ywm/GSeaCaugq/r+uhLGXQt5Z3l2I7+Jx0ZZL9ULli4jz5uQchq0nDz
 dfztNynBkVb1Cls5AO/G4dcd+yxH4zW3jXpIJZqTj7HXZ1N9DUdnoyCe9
 5V4pK4te1ZTYvlwzu9s/z8VbKkspVAIBPlfb93Nyf04YsmPINMhgyckkT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="393593031"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="393593031"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 14:16:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="766555081"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="766555081"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 11 Dec 2023 14:16:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Dec 2023 00:16:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 3/8] drm/i915/cdclk: Remove the assumption that cdclk
 divider==2 when using squashing
Date: Tue, 12 Dec 2023 00:16:36 +0200
Message-ID: <20231211221636.29658-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-4-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-4-ville.syrjala@linux.intel.com>
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

Currently we have a hardcoded assumption that the cdclk divider
(2*cd2x divider) is always 2 when squashing is used. While that
is true for all current platforms it might not hold in the future.
So eliminate the assumption and calculate the correct divider
from the other parameters.

v2: s/cd2x divider/cdclk divider/ (Gustavo)
    s/clock/unsquashed_cdclk/ (Gustavo)

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 87d5e5b67c4e..5161c30af558 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1880,9 +1880,9 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 {
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
-	u32 val;
+	int unsquashed_cdclk;
 	u16 waveform;
-	int clock;
+	u32 val;
 
 	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
 	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
@@ -1899,15 +1899,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-	if (waveform)
-		clock = vco / 2;
-	else
-		clock = cdclk;
+	unsquashed_cdclk = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
+					     cdclk_squash_divider(waveform));
 
 	if (HAS_CDCLK_SQUASH(dev_priv))
 		dg2_cdclk_squash_program(dev_priv, waveform);
 
-	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
+	val = bxt_cdclk_cd2x_div_sel(dev_priv, unsquashed_cdclk, vco) |
 		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
 
 	/*
-- 
2.41.0

