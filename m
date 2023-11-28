Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 460427FB9B4
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 12:52:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B805A10E4EF;
	Tue, 28 Nov 2023 11:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A9A910E4EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 11:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701172323; x=1732708323;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5IMkD2urtbjLSfLnzggU6veQUvATWeMD2JEdxFg36pY=;
 b=BBerFAqWzkeGVdrNZupCSoD+ibRY9D1edi+zQv8yHRPd5Gb0baGEueVY
 5WCMp1v5gY4pbDeyYYmzWcz/WLqzzLC7BzRJEwiR0qpM4BBDMaTUm5L57
 7/GQiRl2ohc8GMnsgQ0NnRyyufXz7iax9PgZUPtfM5/amoi6uyBrmcLSv
 hFcJ3HyLlJQqJ4x3Ixm7JJ+NGykIZgCuC0UnulBt5ZPxCg85W4ZzGNEBq
 ei4RWyLK2aKLkbGuB7YTR+BnYGnRKg1BKIyA0TTyOd2+gnEk2YUEwHKBs
 zD8AcGpg4ziJiCkh27PoMY8ewH+ISjpjm5s29ED2y2X+R7TbtskCrgaGQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="459411612"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="459411612"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 03:52:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="761907456"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="761907456"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 28 Nov 2023 03:52:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Nov 2023 13:52:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 13:51:37 +0200
Message-ID: <20231128115138.13238-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/mtl: Calculate the correct voltage
 level from port_clock
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

On MTL we need to bump the voltage level to only 1 (not 2)
when port clock exceeds 594MHz. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bcfcd7e789f0..dd04bd7b348c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3699,7 +3699,9 @@ static int icl_ddi_min_voltage_level(const struct intel_crtc_state *crtc_state)
 void intel_ddi_compute_min_voltage_level(struct drm_i915_private *dev_priv,
 					 struct intel_crtc_state *crtc_state)
 {
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 14)
+		crtc_state->min_voltage_level = icl_ddi_min_voltage_level(crtc_state);
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		crtc_state->min_voltage_level = tgl_ddi_min_voltage_level(crtc_state);
 	else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv))
 		crtc_state->min_voltage_level = jsl_ddi_min_voltage_level(crtc_state);
-- 
2.41.0

