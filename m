Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFF44D3E6B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92E6F10E5F0;
	Thu, 10 Mar 2022 00:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0831510E5F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873320; x=1678409320;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Gy/MAv/5xbOwTcV/w3WhpNKFgEU7xvU3fzLMfavLfWQ=;
 b=ajCMF/oApVm6017xE1D4z2Zm1akyKo7Y4Xvl7n36gu+drEAAV9TdWeI3
 0Hduowev4eJhER8XhFUlvmQVhiwVDUIiQJxHN/xfWTdr6Zv6Ntn2RbqhX
 i773KaZ0KZLS3/PmFbOkRlc4bIOnXImsCLvZJvYDO/vBRyhdY/Z9DNtL/
 3HNNvLRn/Md3S+pNebepEOJC7goh4glJiwCv2GWXDUn+oZ7CH3hYkdj/u
 NTTRRLzYdpc5ztVL8nPDtnvWsCGpbDYZReIWhvLGM3FFnFcbsmFsuD1ep
 1j6iFely9YaJpBvMM6+fAXdXl32YEr8DD+vgKWVsgxLf89qbuowklRDvV A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="252695680"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="252695680"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="578603328"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 09 Mar 2022 16:48:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:48:00 +0200
Message-Id: <20220310004802.16310-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/i915: Enable eDP DRRS on ilk/snb port
 A
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

Nothing special about ivb+ here, if DRRS works on ivb+ port A
it should work just as well on ilk/snb. So let's enable
that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 246dd0c71194..dcbbd9c48458 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -145,10 +145,10 @@ static void intel_drrs_set_state(struct intel_crtc *crtc,
 	if (refresh_rate == crtc->drrs.refresh_rate)
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv))
-		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
-	else if (DISPLAY_VER(dev_priv) > 6)
+	if (intel_cpu_transcoder_has_m2_n2(dev_priv, crtc->drrs.cpu_transcoder))
 		intel_drrs_set_refresh_rate_pipeconf(crtc, refresh_rate);
+	else
+		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
 
 	crtc->drrs.refresh_rate = refresh_rate;
 }
@@ -364,7 +364,7 @@ intel_drrs_init(struct intel_connector *connector,
 	struct intel_encoder *encoder = connector->encoder;
 	struct drm_display_mode *downclock_mode;
 
-	if (DISPLAY_VER(dev_priv) <= 6) {
+	if (DISPLAY_VER(dev_priv) < 5) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
 			    connector->base.base.id, connector->base.name);
-- 
2.34.1

