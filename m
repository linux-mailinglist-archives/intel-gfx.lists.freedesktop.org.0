Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CBD5BB39F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 22:41:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D1F110E524;
	Fri, 16 Sep 2022 20:41:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7F4010E524
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 20:41:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663360896; x=1694896896;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L3GKqRBNpfXEWV2Cn6z9j7M525ogcCDS4LUiF36xzoI=;
 b=TkF8AOpMKgK9+csvKcI/W71zeUFJHVuJpbK3Gz6IvWmWYQptvBmrAql7
 uzWX9RyN0q/eI/yANFD4OiSao/uGrgKuaenc5cW9QyWzh49Ha9WO9rYI3
 SmYxRGiB+bQNL/+qzc2oZEAx5s0hP3W9UVoiRDZ6ErDyAPkKFFaqY+qUt
 cDgZk1bnOaJSzcxKkj1fTtWEPVHEVzPxplApKlXUDF87b6spBJPJeoar9
 O2fRm6j4fWzVL/IuttbuqIof0tPITQfVl3g6x4N+fj0MlIVkLA47j6C+1
 kuZl38P/vlehRHduxr6dqmanGP5loj7uhVR1tP8AhhDXzXoaXyb+1O6gK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="279458358"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="279458358"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 13:41:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="613371490"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 16 Sep 2022 13:41:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Sep 2022 23:41:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 23:41:32 +0300
Message-Id: <20220916204132.10469-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: WARN if a port should use VBT
 provided vswing tables
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We don't parse the VBT vswing/preemphassis tables at all currently.
Let's WARN if a port wants to use them so we get a heads up that
whether we really need to implement this stuff or not. My
current stash contains no VBTs with this bit set.

v2: Move to print_ddi_port() (Jani)

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 28bdb936cd1f..4c543e8205ca 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2676,6 +2676,14 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT DP max link rate: %d\n",
 			    port_name(port), dp_max_link_rate);
+
+	/*
+	 * FIXME need to implement support for VBT
+	 * vswing/preemph tables should this ever trigger.
+	 */
+	drm_WARN(&i915->drm, child->use_vbt_vswing,
+		 "Port %c asks to use VBT vswing/preemph tables\n",
+		 port_name(port));
 }
 
 static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
-- 
2.35.1

