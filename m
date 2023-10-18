Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DAB7CE15C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 17:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90D7910E0BF;
	Wed, 18 Oct 2023 15:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8420910E15B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 15:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697643689; x=1729179689;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5hq1zLN0zGeErJMk7PqKlr22ACcmj9+sredD+/0/peQ=;
 b=f44DvEs8YU0+FuDzTbYSzOGAOzbpyxMRxm6qqcGxVjyrNPJEh78hMjJZ
 9zqFoX3v67TVqJMI6+sJc7kELkh2LERGU/dqO9LSjTRA6U2ErXsHXn30A
 09CspvrCgJe4sncYrZvaXBQKltMrwYq+EOzmF/Uou1Rh7AN+1HAfQm7Aw
 8X9gqNzz7aaby+usQ+NCroA/8yg/3OILrxBVJXwH6wA+O4ggivZJnKg6F
 neNyqnkOM9aMS1yLWDmXmSZ6K/eo/nmkmxCT184m0DOXl/g1YOZiHFKQo
 Ve+YYGtZU+dWtpGpPh6Fy44a73DVhDPBrOPiJEjVx5EajNX8sZmLVCW74 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388902936"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388902936"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733219363"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="733219363"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 18 Oct 2023 08:41:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Oct 2023 18:41:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 18:41:20 +0300
Message-ID: <20231018154123.5479-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/mst: Swap TRANSCONF vs.
 FECSTALL_DIS_DPTSTREAM_DPTTG disable
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

The DP modeset sequence asks us to disable TRANSCONF before clearing
the FECSTALL_DIS_DPTSTREAM_DPTTG bit, although we are still asked
to wait for the transcoder to stop only after both steps have
been done.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 28d85e1e858e..a994fc2319a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -485,6 +485,8 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 	if (!IS_I830(dev_priv))
 		val &= ~TRANSCONF_ENABLE;
 
+	intel_de_write(dev_priv, reg, val);
+
 	if (DISPLAY_VER(dev_priv) >= 14)
 		intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder),
 			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
@@ -492,7 +494,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
 			     FECSTALL_DIS_DPTSTREAM_DPTTG, 0);
 
-	intel_de_write(dev_priv, reg, val);
 	if ((val & TRANSCONF_ENABLE) == 0)
 		intel_wait_for_pipe_off(old_crtc_state);
 }
-- 
2.41.0

