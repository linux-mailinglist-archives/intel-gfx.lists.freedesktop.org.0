Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3641B50216F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 06:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED87B10E61A;
	Fri, 15 Apr 2022 04:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3194C10E61A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 04:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649997176; x=1681533176;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Nc4r03ZBblotBaWAlEgU2sy156DYxyT1MMSaLeiWSE0=;
 b=A13PR724wQUlGlWtf9A4fr12sxOr9mvO98j61Ioi5Jc3pzngKxSwMnEc
 pXhfB5zmbYK7wQOX/QtR9zlIWsP86fT8kT2A3fYwYR7AC9fn/qfVFFdef
 QACswi+If0YK07JLAfP3AclRYnjnOxI6coi0DQigLTZK9ODhEw60Ct6F2
 jJCfCxGV1FhomILFFic21Kb+n/3TvspFpR2ffR6lbz54Tlk2Esfy9XYWx
 VYnhEj64muyUhUQYvg7/ek1SMoXEJNlWUC7Vn1oYTqnX/RMAnzFwhDI53
 gnqyUogX+ZpceF+p8jYHaXJgg9ZYbgzw/QhtgB6sTA3mfKyClW6boFhTk w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="261937209"
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="261937209"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 21:32:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,261,1643702400"; d="scan'208";a="574159416"
Received: from rramesh2-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.35.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 21:32:55 -0700
Date: Thu, 14 Apr 2022 21:32:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220415043255.vm2dp3jmyedxxi66@ldmartin-desk2>
References: <20220413005707.3627314-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220413005707.3627314-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on DG2
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

On Tue, Apr 12, 2022 at 05:57:07PM -0700, Anusha Srivatsa wrote:
>Add Support for DC states on Dg2.
>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Failure in CI seems unrelated. Although it's unfortunate the DG2
couldn't get tested with this patch.

were you able to test this locally and get a pass on tests not currently
passing in BAT?

thanks
Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
> drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
> 2 files changed, 10 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>index 6a5695008f7c..5a0cab82a156 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -4770,7 +4770,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
> 	if (!HAS_DISPLAY(dev_priv))
> 		return 0;
>
>-	if (IS_DG1(dev_priv))
>+	if (IS_DG1(dev_priv) || IS_DG2(dev_priv))
> 		max_dc = 3;
> 	else if (DISPLAY_VER(dev_priv) >= 12)
> 		max_dc = 4;
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 257cf662f9f4..2f01aca4d981 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -52,6 +52,10 @@
>
> #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>
>+#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
>+#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
>+MODULE_FIRMWARE(DG2_DMC_PATH);
>+
> #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
> #define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
> MODULE_FIRMWARE(ADLP_DMC_PATH);
>@@ -688,7 +692,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
> 	 */
> 	intel_dmc_runtime_pm_get(dev_priv);
>
>-	if (IS_ALDERLAKE_P(dev_priv)) {
>+	if (IS_DG2(dev_priv)) {
>+		dmc->fw_path = DG2_DMC_PATH;
>+		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
>+		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>+	} else if (IS_ALDERLAKE_P(dev_priv)) {
> 		dmc->fw_path = ADLP_DMC_PATH;
> 		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
> 		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>-- 
>2.25.1
>
