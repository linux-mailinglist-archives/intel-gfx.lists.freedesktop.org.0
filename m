Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8715654CC5F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 17:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D2910FEFE;
	Wed, 15 Jun 2022 15:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5492910FEA9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jun 2022 15:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655306105; x=1686842105;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DU94mhlZW51jCP1juYKzL+d8bnx6HKQrgGQO8uZy5y0=;
 b=UzK1KzTvxJQZ9Tydw/Ekrq+Zy4ctp5o4M4AArhDLhp56E7GF68MksPWi
 vPjOJaK32Bang5u7kMrqBI9JWaUFLFhrY8FdVMiu6vOtGFgIs6cmj2WgB
 w0NiKp1eLg594s5P+i4AlepAvL4f0oZyigzxU0M6wo6mEsU3/BKkWz8bs
 cplT0dIaqmCZLmqL5qIZQGmh/SB3ZAp6PKfvK5vwQ9aYMrB3yUEHyiiod
 VQhX5BoH3FZMWj8kHksy6aVqsSNpqlJ3X4sqsHZiVw+0H3ob/1ON62lLe
 dQ5A9sH4CYLB0TM53Bhs+8ulhGR3JeXz1i8/utNgP1gjevyGb0ANSpKOt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="277789353"
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="277789353"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2022 08:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,302,1647327600"; d="scan'208";a="641049834"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 15 Jun 2022 08:14:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jun 2022 18:14:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jun 2022 18:14:44 +0300
Message-Id: <20220615151445.8531-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
References: <20220615151445.8531-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/bios: Don't parse the DPS panel
 type when the VBT does not have it
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

Older VBTs don't have all the stuff we've defined for the
LVDS options block (40). In particular we're currently parsing
the DPS panel type bits even though they may not exist, which
could mean we end up flagging the machine as supporting static
DRRS when the VBT declared no such thing.

We don't actually have a clear idea which VBT versions have
which bits so we rely on the block size instead.

Here's a quick list from my VBT stash:
mgm version 108 -> 4 bytes
alv version 120 -> 4 bytes
cst version 134 -> 14 bytes
pnv version 144 -> 14 bytes
cl  version 142 -> 16 bytes
ctg version 155 -> 24 bytes

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index df52f406e1ae..807184fd5618 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -758,6 +758,14 @@ parse_panel_options(struct drm_i915_private *i915,
 
 	panel->vbt.lvds_dither = lvds_options->pixel_dither;
 
+	/*
+	 * Empirical evidence indicates the block size can be
+	 * either 4,14,16,24+ bytes. For older VBTs no clear
+	 * relationship between the block size vs. BDB version.
+	 */
+	if (get_blocksize(lvds_options) < 16)
+		return;
+
 	drrs_mode = (lvds_options->dps_panel_type_bits
 				>> (panel_type * 2)) & MODE_MASK;
 	/*
-- 
2.35.1

