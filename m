Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 573597D449D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAD510E2C3;
	Tue, 24 Oct 2023 01:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705A510E2BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109761; x=1729645761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gyqQD9F5SlZbgIdtoDmira4PpGd7jqE7XL1/7ONCfPo=;
 b=UkdLeh+K2L+CLg5U/7AkGVozLTBco6sk3pFbrJarJcD755S6mDWsSB58
 F70RKOj2uOnhHs18vAnq1OoAYD1E0fnswbJX7iYmEVfs1eNV3ls8pM0Fi
 X0/gmbxjRliqKTEt9wnJsi5YgqQYEDwOPgjr2kKU4MkNgqEdqIBIkCi2u
 uAk46yCh5dgUhwEz0Q6O+Foz+FxYEpxjS2vBgCjDJ5phunL4Iq8GQmeS0
 Lgjo5lxgi1qZ2uaVo865b0/jRiwFMtGXENj9j4jHrYrD9WeQjWWrOFJwO
 GNNTNcg+siGRgW8nVPQsdcjs2aMtVfzLYeAgZ5AfZGtkcXgRYNbabDfgB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304373"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304373"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870078"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870078"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:12 +0300
Message-Id: <20231024010925.3949910-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/29] drm/i915/dp_mst: Add missing DSC
 compression disabling
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

Add the missing DSC compression disabling step for MST streams,
similarly to how this is done for SST outputs.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 0c3851f099b98..b7a9ce40cf59a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -705,6 +705,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_ddi_disable_transcoder_func(old_crtc_state);
 
+	intel_dsc_disable(old_crtc_state);
+
 	if (DISPLAY_VER(dev_priv) >= 9)
 		skl_scaler_disable(old_crtc_state);
 	else
-- 
2.39.2

