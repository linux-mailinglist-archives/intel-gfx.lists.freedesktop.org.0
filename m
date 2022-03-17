Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7E94DCEE3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D638310E49C;
	Thu, 17 Mar 2022 19:35:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7850010E49C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647545747; x=1679081747;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=9Vq7B0LMz37B4DWq5kCNetYcDG5HpwTG4qEN6LiMmnY=;
 b=DaHYJ6yWfYdNRZHN4Rvah0sv7PF6Gx7WWwGzAZ+ORpUxZZSxqREnVeKD
 KcYKWPUgFLIkcHBeCfrY+nOJnWPYMwcAVxEFAb2aPQ0MZX2pz/GuCcwau
 R1OFingM23m7AMwDFmlq5zeZqmjTb95NerWi4Ds/RHLXHH/dgHQminDzv
 3GZrCC7xAVUt5Mm0WCL+mwJ9E6P3Grqy6TIZoaS7PrZDxmz1/UYA5YJVk
 /YUjsVxe6nGl/jucdPDDLsRoP8D8Xye8oSWYwCzLG3YR9OOtR3+Yc7+KH
 rPtwLUxCD8WYQv3gu4RzXxjQ2oGSw/HeTmcJ98KnOVNUvAFUWXK94CAY4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="320178853"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="320178853"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:35:46 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="541511571"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:35:46 -0700
Date: Thu, 17 Mar 2022 12:35:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317193544.tlefsici5znw3qew@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <78278190db850fb83f594bc8635a3a7c082e2ce8.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <78278190db850fb83f594bc8635a3a7c082e2ce8.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/dmc: simplify
 intel_dmc_load_program() conditions
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

On Thu, Mar 17, 2022 at 08:36:13PM +0200, Jani Nikula wrote:
>intel_dmc_load_program() is only ever called when
>intel_dmc_has_payload() is true. Move the condition within
>intel_dmc_load_program() to let it be called directly.
>
>Also note that intel_dmc_has_payload() will always return false when
>HAS_DMC() is false. Remove the redundant check.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display_power.c |  6 +++---
> drivers/gpu/drm/i915/display/intel_dmc.c           | 11 +----------
> 2 files changed, 4 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index 3dc859032bac..b3efe345567f 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -5387,7 +5387,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
>
> 	gen9_dbuf_enable(dev_priv);
>
>-	if (resume && intel_dmc_has_payload(dev_priv))
>+	if (resume)
> 		intel_dmc_load_program(dev_priv);
> }
>
>@@ -5454,7 +5454,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
>
> 	gen9_dbuf_enable(dev_priv);
>
>-	if (resume && intel_dmc_has_payload(dev_priv))
>+	if (resume)
> 		intel_dmc_load_program(dev_priv);
> }
>
>@@ -5618,7 +5618,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
> 	if (IS_DG2(dev_priv))
> 		intel_snps_phy_wait_for_calibration(dev_priv);
>
>-	if (resume && intel_dmc_has_payload(dev_priv))
>+	if (resume)
> 		intel_dmc_load_program(dev_priv);
>
> 	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index a719c0f379ba..66fd69259e73 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -276,17 +276,8 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
> 	struct intel_dmc *dmc = &dev_priv->dmc;
> 	u32 id, i;
>
>-	if (!HAS_DMC(dev_priv)) {
>-		drm_err(&dev_priv->drm,
>-			"No DMC support available for this platform\n");
>-		return;
>-	}
>-
>-	if (!dev_priv->dmc.dmc_info[DMC_FW_MAIN].payload) {
>-		drm_err(&dev_priv->drm,
>-			"Tried to program CSR with empty payload\n");
>+	if (!intel_dmc_has_payload(dev_priv))
> 		return;
>-	}
>
> 	assert_rpm_wakelock_held(&dev_priv->runtime_pm);
>
>-- 
>2.30.2
>
