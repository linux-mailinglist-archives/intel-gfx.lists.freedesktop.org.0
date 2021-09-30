Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DF341DB59
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 15:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD9AF6EB93;
	Thu, 30 Sep 2021 13:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D80766EB93
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 13:43:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="205338754"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="205338754"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 06:43:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="520379619"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 30 Sep 2021 06:43:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 16:43:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Date: Thu, 30 Sep 2021 16:43:09 +0300
Message-Id: <20210930134310.31669-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210930134310.31669-1-ville.syrjala@linux.intel.com>
References: <20210930134310.31669-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Remove DP_PORT_EN stuff from link
 training code
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

Setting DP_PORT_EN in intel_dp->DP is already handled by
intel_dp_enable_port() so there is no point in setting it also
from the link training code.

For DDI platforms a bit with that name doesn't even exist. The
counterpart is DDI_BUF_CTL_ENABLE, which is already set up by
intel_ddi_prepare_link_retrain(). Fortunately it is the same bit
so there was no harm in doing this from the platform independent
code as well. But it's just confusing when platform independent
code sets platform specific bits in intel_dp->DP. Just get rid
of it.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 449499a5c4c1..053ed9302cda 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -499,8 +499,6 @@ intel_dp_prepare_link_train(struct intel_dp *intel_dp,
 		DP_SET_ANSI_128B132B : DP_SET_ANSI_8B10B;
 	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
 
-	intel_dp->DP |= DP_PORT_EN;
-
 	return true;
 }
 
-- 
2.32.0

