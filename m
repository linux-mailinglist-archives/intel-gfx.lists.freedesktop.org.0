Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F744C19DC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 18:23:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8853A10F366;
	Wed, 23 Feb 2022 17:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8073210F379
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 17:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645637026; x=1677173026;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=j19dZyACTkxhCHj/EWi++7fn8Usoi2nw7OY6scottEM=;
 b=PxfT9cITOUIdNF5x1S5daqkXZalqvCjgRvpKAFCbvupSxistB79p89hP
 eF9qgwua4zHegILpVZZPWBZezFHzETdQlMp/+uS7d7NXH1s2UMN4bBwxB
 3S2Mi3txFzLsTUa/ibI+WoQTGh5F141hLx7OWzHnPlR/i6VTeWJ9wEv77
 ANbSjcCS4PnKkmtctBjSPmupocJOyPffXUdRZFb+8SfLis0Irvl2ei3Eu
 HyACebLgleX13SzItt2/PUAU7RM2l+rkyOLgLOm9HqoUg0t/muEfQx9O8
 CaU8uIrU1BtUxO0IfEq9Yyna4WaI08etalhZdTfI3JIoz+3WjPzFnvPYV w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="239422784"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="239422784"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 09:14:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="707117737"
Received: from scjha-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.66.247])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 09:14:56 -0800
Date: Wed, 23 Feb 2022 09:14:55 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220223171455.xoxlljzdfbh7mskj@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220223165421.3949883-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220223165421.3949883-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Skip output init on PHY
 calibration failure
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 23, 2022 at 08:54:21AM -0800, Matt Roper wrote:
>If one of our PHYs fails to complete calibration, we should skip the
>general initialization of the corresponding output.  Most likely this is
>going to happen on outputs that don't actually exist on the board; in
>theory we should have already decided to skip this output based on the
>VBT, but we can't always rely on the VBT being accurate.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c      |  8 ++++++++
> drivers/gpu/drm/i915/display/intel_snps_phy.c |  8 ++++++--
> drivers/gpu/drm/i915/i915_drv.h               | 12 ++++++++++--
> 3 files changed, 24 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>index e4260806c2a4..b71035a5db85 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -4308,6 +4308,14 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> 		return;
> 	}
>
>+	if (intel_phy_is_snps(dev_priv, phy) &&
>+	    dev_priv->snps_phy_failed_calibration & BIT(phy)) {
>+		drm_dbg_kms(&dev_priv->drm,
>+			    "SNPS PHY %c failed to calibrate after 25ms; output will not be used.\n",

								   ^^^^
I would only skip mentioning the timeout here, as this can very easily
get out of sync.


>+			    phy_name(phy));
>+		return;
>+	}
>+
> 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
> 	if (!dig_port)
> 		return;
>diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>index 7e6245b97fed..0dd4775e8195 100644
>--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
>@@ -32,10 +32,14 @@ void intel_snps_phy_wait_for_calibration(struct drm_i915_private *i915)
> 		if (!intel_phy_is_snps(i915, phy))
> 			continue;
>
>+		/*
>+		 * If calibration does not complete successfully, we'll remember
>+		 * which phy was affected and skip setup of the corresponding
>+		 * output later.
>+		 */
> 		if (intel_de_wait_for_clear(i915, DG2_PHY_MISC(phy),
> 					    DG2_PHY_DP_TX_ACK_MASK, 25))
>-			drm_err(&i915->drm, "SNPS PHY %c failed to calibrate after 25ms.\n",
>-				phy_name(phy));

or just leave the message here as a debug.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

and I think this can go to drm-intel-next, not only topic/core-for-CI.

thanks
Lucas De Marchi
