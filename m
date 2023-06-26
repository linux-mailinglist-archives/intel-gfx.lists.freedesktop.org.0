Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86F973E035
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 15:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51E810E20B;
	Mon, 26 Jun 2023 13:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C34A910E1F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 13:08:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687784884; x=1719320884;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qtBHQWYnNsiXJ46yUKt+Gp7LFJpHhH4B6RzQ4C5bpxo=;
 b=LsNWvdiWOOk5Sx7NsC2iUA/P0ig5WMdzZNCSlVugTBfnENlryFJfa2eT
 UG9MXWKzQedhNzEZxz6HW5MpBdOVIcp6hLNxHWelu+IWuJz53cZXZnm6S
 pvelVx2LA7a9j4sBukB0OY6s4i0Q+iDo311mnJMxyi+F9wQlzmIMlvUmY
 3++4sn0qFUlHNLFRAQTskDBwcpVwcfYwksxzzWARuNqVu2EzJOxXHKYvh
 wchj4FhO7Xm7dgQKns5s7zShCe+sWKlEU+rS18ukKsofV+iSdhpnU9I+a
 mihytKXx1zjzmOCQpXqqK/ZcSyojquT3D4z0KRCrZVHUROL4vjpqTXg5F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="391564800"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="391564800"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 06:07:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="1046495875"
X-IronPort-AV: E=Sophos;i="6.01,159,1684825200"; d="scan'208";a="1046495875"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga005.fm.intel.com with ESMTP; 26 Jun 2023 06:07:28 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 18:35:55 +0530
Message-Id: <20230626130555.2391750-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/vdsc: Remove FIXME in
 intel_dsc_compute_config
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

Remove the FIXME and the code related to it as after verification
it does seem the previous values were typos and no hardware spec
mentions using these particular rc_params.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd9116d2cd76..d27e84696f31 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -237,18 +237,6 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 
 		if (ret)
 			return ret;
-
-		/*
-		 * FIXME: verify that the hardware actually needs these
-		 * modifications rather than them being simple typos.
-		 */
-		if (compressed_bpp == 6 &&
-		    vdsc_cfg->bits_per_component == 8)
-			vdsc_cfg->rc_quant_incr_limit1 = 23;
-
-		if (compressed_bpp == 8 &&
-		    vdsc_cfg->bits_per_component == 14)
-			vdsc_cfg->rc_range_params[0].range_bpg_offset = 0;
 	}
 
 	/*
-- 
2.25.1

