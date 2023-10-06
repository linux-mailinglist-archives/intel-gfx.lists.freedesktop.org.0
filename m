Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C10A7BB937
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABCA10E4F9;
	Fri,  6 Oct 2023 13:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B240F10E4F0
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599438; x=1728135438;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hBLDsrt9fL/y1vwRLqpF44kyYl//l8zfGmBzsih4CHY=;
 b=kq92zb3VQe+lXsLluEfSS1RZV3WmbJp8Vo8sJfLEzbWI+oSTSvAsbeE+
 ZTYZLCLT+K7SkHzpt6YOODjesS6mzU+GPpBkI84PiQzuQxYUS0GxBRB9Z
 6Xc4RMf5WGj0VMu1bytv5OObJTpGTaapkRRSsQr8WANtPycIA5XCaecaT
 TvTiOZKZbv+SqKE5MLiLCvUu6DVm/FCyrFW/aI0vvxsL/1KnkskAjSzM7
 xafP2tfBx1+MpihW1al+yF62Bi3EEN6vbR3nAf6NfkcOHRhXTPD4sHqa3
 5rYjclYUoEQbBnHiuhGJ0S7p1PlEa5qGuZ6GZdtajaKohw+lRS3pw9PN+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019103"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019103"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841412"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841412"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:16 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:15 +0300
Message-Id: <20231006133727.1822579-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/19] drm/i915/dp: Use connector DSC DPCD in
 intel_dp_supports_fec()
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

Use the connector's DSC DPCD capabilities in intel_dp_supports_fec().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 00f5fecdbf386..8450856e5618d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1370,10 +1370,11 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
 }
 
 static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
+				  const struct intel_connector *connector,
 				  const struct intel_crtc_state *pipe_config)
 {
 	return intel_dp_source_supports_fec(intel_dp, pipe_config) &&
-		drm_dp_sink_supports_fec(intel_dp->fec_capable);
+		drm_dp_sink_supports_fec(connector->dp.fec_capability);
 }
 
 static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
@@ -2110,12 +2111,14 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
+	const struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
 	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
-		intel_dp_supports_fec(intel_dp, pipe_config);
+		intel_dp_supports_fec(intel_dp, connector, pipe_config);
 
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
-- 
2.39.2

