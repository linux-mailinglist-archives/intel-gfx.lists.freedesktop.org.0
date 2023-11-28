Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E88F7FB9AF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:51:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073EC10E4E7;
	Tue, 28 Nov 2023 11:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C91A410E4E7
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:51:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172307; x=1732708307;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SOtIsfFZlWNqgoXG4AOZUkYKmz9RHI64lU8eEg/wLnE=;
 b=lovafFIi8u7+sb7Zb+SdpaebXYz1khNmn2F1WOD7LIVkXCHyB/NrFc9v
 lWybswfY6ihEk7+EOoXB3AjHZle1yKR4ZwnDdcwpm5fIT8D77XVc4QSnd
 GGRlQCfmjX70ZCexusQ9hdhsqANx4+9NVwAFPOfLSF3W8agKM+Tf/yqO/
 Hxmz/4jEckBCXMrTRahT+n1FG14zCvhJLKwRewbIr82+g5cpKVUCp3/I7
 1P7OT10TNfpBeDjXqnk2cJsNXp+Xzhrc8eMLG8n5Jva6s+lmhaHtwal6b
 AfspLb+I9wkWATDP0uwyCt0s5qnm7vKzhF/uYzt33A/M226Ff9ckFjZTG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411592"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411592"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:51:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907431"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907431"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:51:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:51:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 13:51:32 +0200
Message-ID: <20231128115138.13238-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/cdclk: Give the squash waveform
 length a name
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

Replace the slightly magic 'size = 16' with a bit more descriptive
name. We'll have another user for this value later on.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0dca29ec799b..87d5e5b67c4e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1800,6 +1800,8 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
 	return vco == ~0;
 }
 
+static const int cdclk_squash_len = 16;
+
 static int cdclk_squash_divider(u16 waveform)
 {
 	return hweight16(waveform ?: 0xffff);
@@ -1811,7 +1813,6 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 						    struct intel_cdclk_config *mid_cdclk_config)
 {
 	u16 old_waveform, new_waveform, mid_waveform;
-	int size = 16;
 	int div = 2;
 
 	/* Return if PLL is in an unknown state, force a complete disable and re-enable. */
@@ -1850,7 +1851,8 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 	}
 
 	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
-						    mid_cdclk_config->vco, size * div);
+						    mid_cdclk_config->vco,
+						    cdclk_squash_len * div);
 
 	/* make sure the mid clock came out sane */
 
-- 
2.41.0

