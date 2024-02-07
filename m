Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CF984C1EA
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 02:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56E20113039;
	Wed,  7 Feb 2024 01:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QPA83xvm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6FF113039
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Feb 2024 01:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707269624; x=1738805624;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8XXWg0lu2sWrDsQwBXxOwwW76vxudmT5rbrKaEQQ9CQ=;
 b=QPA83xvmbnwfQSf++KoYypaH/LL7vt0WtbTIG4nrmsdLmWdoWP5ar7JH
 Fy/DhjdmqBOIZKq3wtd0NExbriLIefNg+zCF4iVtCWEZ3UVpxSsG6U39q
 OeyPZLUtXmzutM4L0Uf+qy2fR4h6thBJ4K4NNdDyluE3DJGGLeICK2+Uw
 +9iTl/4TYgFs6wXRr64wTNeEdykXMAkFlM9oRXSCjJdFbxBDBoHANqOA/
 LZbOZhh3xbTIgQl5fTAVi3969I5B8NqRKtLpQalKQYzSPXkRwq576vmFY
 jjL/on9r5vve8xGQtVDcRyCBndDfUxConkL0kuptSZX1Bja+cz1qnms8O Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="18399575"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="18399575"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 17:33:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="824353991"
X-IronPort-AV: E=Sophos;i="6.05,248,1701158400"; d="scan'208";a="824353991"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 06 Feb 2024 17:33:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Feb 2024 03:33:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/cdclk: Squash waveform is 16 bits
Date: Wed,  7 Feb 2024 03:33:32 +0200
Message-ID: <20240207013334.29606-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
References: <20240207013334.29606-1-ville.syrjala@linux.intel.com>
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

Have cdclk_squash_waveform() return a u16 since that's
how many bits we have in the waveform. We alreday use
u16 everywhere else.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index d79485e17ed1..a0013e37d53c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1778,7 +1778,7 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
 	}
 }
 
-static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
+static u16 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 				 int cdclk)
 {
 	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
-- 
2.43.0

