Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5498378696B
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D912010E4F4;
	Thu, 24 Aug 2023 08:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629F210E4E7
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864324; x=1724400324;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kv5xDDyoyWj9f6OoT7+XJ9MCM76Esxlkme/acBbDAN4=;
 b=JQhpw/YLOIaU86rxoWwvq4Sc8HqLjwbTL3w/cXIogOiIV+xy83lHf3/7
 ui+FhsmV71f4P6ZnMxgqqzn5TMdHARbXqh0olkk3w3QD2eyBh3WjHj0Yq
 pWeujgnSPPqNvIumf8Q6eBTXOf9h6HmpNBkkmCN6kDSKmrTtsPoxj+4fz
 eNk1t4DLTLeEv2Z5j/sTs8fJWq22sYrTwbSwb7N7IZoAe+An07tuWKROz
 omrD8iERI5EM0tTTE85A07LWQrY64BwicbIesssoo5oh2aOJpWqJQxKs0
 9t0JlRxBkn2g+oNu4wbFikFj3Gi0Rtn6REuXvs6x51PSe0kA2eWpkC7lZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345889"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345889"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710349"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:28 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:12 +0300
Message-Id: <20230824080517.693621-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/22] drm/i915/dp: Make sure the DSC PPS SDP
 is disabled whenever DSC is disabled
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

Atm the DSC PPS SDP will stay enabled after enabling and disabling DSC.
This leaves an output blank after switching off DSC on it. Make sure the
SDP is disabled for an uncompressed output.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index e4c395b4dc46a..2900a9d2bb788 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -908,9 +908,15 @@ void intel_dsc_dsi_pps_write(struct intel_encoder *encoder,
 void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
 			    const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
 	struct drm_dsc_pps_infoframe dp_dsc_pps_sdp;
+	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
+	u32 val = intel_de_read(dev_priv, reg) & ~VDIP_ENABLE_PPS;
+
+	intel_de_write(dev_priv, reg, val);
+	intel_de_posting_read(dev_priv, reg);
 
 	if (!crtc_state->dsc.compression_enable)
 		return;
-- 
2.37.2

