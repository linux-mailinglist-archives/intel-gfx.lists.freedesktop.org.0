Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4584729C82
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 16:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042DD10E6C0;
	Fri,  9 Jun 2023 14:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E0110E6C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jun 2023 14:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686320084; x=1717856084;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TlWk0IEGh86nBHZ18xQ8uGb0uh1w6XaVJYPl/YFBPqo=;
 b=jiPnrtN7l/3LLgA1y26l2KD6n76LWt1CFp/RJHEE+muD0FbwOTbW3LWW
 o0xB931s8m56pDnsDazoyj1oQmXunUapx2MaNulYXdq4L+AegSBWdHGFd
 mF0t//qOkjjoCR5FMq24mOTZho6zHXe+0g/wjBry2nTYaDPM6Kfnl7SpR
 YW08T6mWqpWSxzh0XGuj5yDoCz2pWNVW4+AoQtQRFMrCtD1lJpbQKpPgA
 3mIKKiv48jhLmuhK1fdFVKaxhh+JiDJeNe6LWWLNI74VGfziSjW7EGtYK
 hHAazOAeH7dQ3OfNGvOElZkH/1u0yKvx5nrW5S/pWtEMLpH+UG/acMcWf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="385966581"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="385966581"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 07:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="740183153"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="740183153"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 09 Jun 2023 07:14:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 09 Jun 2023 17:14:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Jun 2023 17:14:03 +0300
Message-Id: <20230609141404.12729-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
References: <20230609141404.12729-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/13] drm/i915/psr: Allow PSR with sprite
 enabled on hsw/bdw
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

Can't see why we'd want the sprite blocking PSR entry.
Mask it out.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_psr.c     | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5c7fdc82ac22..8eb1572793ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3153,6 +3153,10 @@ static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state)
 	if (DISPLAY_VER(dev_priv) >= 12)
 		val |= PIPE_MISC_PIXEL_ROUNDING_TRUNC;
 
+	/* allow PSR with sprite enabled */
+	if (IS_BROADWELL(dev_priv))
+		val |= PIPE_MISC_PSR_MASK_SPRITE_ENABLE;
+
 	intel_de_write(dev_priv, PIPE_MISC(crtc->pipe), val);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 97e609365db4..5bb24c1a54d7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1409,6 +1409,10 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (IS_DISPLAY_VER(dev_priv, 9, 10))
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
+	/* allow PSR with sprite enabled */
+	if (IS_HASWELL(dev_priv))
+		mask |= EDP_PSR_DEBUG_MASK_SPRITE_ENABLE;
+
 	intel_de_write(dev_priv, psr_debug_reg(dev_priv, cpu_transcoder), mask);
 
 	psr_irq_control(intel_dp);
-- 
2.39.3

