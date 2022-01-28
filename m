Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4D349F776
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D06F10EF71;
	Fri, 28 Jan 2022 10:38:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C3CF10EF85
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366325; x=1674902325;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=utAfOBGvW3aEyb2Jtt3ZGSYUoLM35WKE+NhIchM+unM=;
 b=kytF1rgyojXmLj1CkK7dVLzHPlM5h1h7HTwZheqGz+w528UenLS5+akf
 MIUifle77AAy9EdJuzRSt6X9wkxH7ZCzUVDQD/cFGoq4W4nFIli/w6IpF
 VBv7hX/3u3YajSAMNdJreLmugJYD20H6YYZTBoh0JVmCAE+BU2zlFGXbR
 8SO2T4+aOB4gKGJ8dbTjwa+5zMfqIOtHWHLMa52Qg36ee9WLbzBtnFq/g
 Dw2ruOKszfvg/D/KSFovC0zBa9axK2snXAhp2av3VHinjPYo9rliJcXER
 xlHYzBsLGXt+ZVlx92iYTi4HRWG0CFfCkMSf6xfDYUeb0XdAxG5LXWo2v g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="271558329"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="271558329"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="675059554"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 28 Jan 2022 02:38:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:55 +0200
Message-Id: <20220128103757.22461-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/17] drm/i915: Dump dp_m2_n2 always
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

No point in special casing the dp_m2_n2 dumping. Just do it always.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e2b107dd246a..79d110c1f947 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5626,11 +5626,11 @@ static void intel_dump_pipe_config(const struct intel_crtc_state *pipe_config,
 
 	if (intel_crtc_has_dp_encoder(pipe_config)) {
 		intel_dump_m_n_config(pipe_config, "dp m_n",
-				pipe_config->lane_count, &pipe_config->dp_m_n);
-		if (pipe_config->has_drrs)
-			intel_dump_m_n_config(pipe_config, "dp m2_n2",
-					      pipe_config->lane_count,
-					      &pipe_config->dp_m2_n2);
+				      pipe_config->lane_count,
+				      &pipe_config->dp_m_n);
+		intel_dump_m_n_config(pipe_config, "dp m2_n2",
+				      pipe_config->lane_count,
+				      &pipe_config->dp_m2_n2);
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
-- 
2.34.1

