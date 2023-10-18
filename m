Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486767CE15F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 17:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4BA10E160;
	Wed, 18 Oct 2023 15:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B7C510E160
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 15:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697643699; x=1729179699;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=805SXZLnzfS4hl47TNme8O+l/UdByRAyEp06c+czzVk=;
 b=XgQg8xutvjbf5+qCZ/ok/X5j5lTBhlycmsKBhm4lUiN6GL/ZIGKx3C6P
 OJhIgZ6GUyREFIjD69AjivOyHzLlAX983U0VNiDCWs1THKNBebSsrUCmJ
 8bkop4AVyrDrJMLj0srkY0uywEnirx/wbip0VbUOtfq69PJYH7BlNw0yq
 /aYOjBSj9Ctw9YqoygU3r/vbPe4sQEc0SfxuONUP1HuurYHnn3116nTRq
 AaZ5CB2hm2DZ9Yb54yumHJYlWI3z9sS7DCqOVS4Pxr7ILeL1zHsxvFo0Q
 8jvzOc2umbzg72wuEoosk8O6VusMqRG0ul4mM+HBlTxsr9OBezMomqUkI A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388903005"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388903005"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733219414"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="733219414"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 18 Oct 2023 08:41:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Oct 2023 18:41:36 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 18:41:23 +0300
Message-ID: <20231018154123.5479-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/mst: Always write CHICKEN_TRANS
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

Since we're asked to disable FECSTALL_DIS_DPTSTREAM_DPTTG when
the transcoder is disabled it seems prudent to also clear it
when enabliing the transcoder w/o FEC, just in case
someone else left it enabled by mistake.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3c66a3e3cc5e..38ad81d3bbe6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -817,12 +817,14 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 	drm_dp_add_payload_part2(&intel_dp->mst_mgr, &state->base,
 				 drm_atomic_get_mst_payload_state(mst_state, connector->port));
 
-	if (DISPLAY_VER(dev_priv) >= 14 && pipe_config->fec_enable)
-		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(trans), 0,
-			     FECSTALL_DIS_DPTSTREAM_DPTTG);
-	else if (DISPLAY_VER(dev_priv) >= 12 && pipe_config->fec_enable)
-		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans), 0,
-			     FECSTALL_DIS_DPTSTREAM_DPTTG);
+	if (DISPLAY_VER(dev_priv) >= 14)
+		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(trans),
+			     FECSTALL_DIS_DPTSTREAM_DPTTG,
+			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
+	else if (DISPLAY_VER(dev_priv) >= 12)
+		intel_de_rmw(dev_priv, CHICKEN_TRANS(trans),
+			     FECSTALL_DIS_DPTSTREAM_DPTTG,
+			     pipe_config->fec_enable ? FECSTALL_DIS_DPTSTREAM_DPTTG : 0);
 
 	intel_audio_sdp_split_update(pipe_config);
 
-- 
2.41.0

