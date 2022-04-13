Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E6D500068
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 22:56:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01AB210EEE9;
	Wed, 13 Apr 2022 20:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1485710EEE9
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 20:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649883411; x=1681419411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Lil/I3eQJh6i9VKGOotfadwG2VNfnGcwEP3UdM0RC0g=;
 b=FCnzBwMisF5NIq1Tan/sfMOS2A+EFwb0BPn0/CgBlo8qpIwMHWljblhZ
 SEHHi2HlrBhR3ZXVb9eByk/n72OZUu7VsF0MPql0UK6becs9ZfZQptJpB
 tMRcaIjyreKdy9jJCwNBtyKE9cEZ6iQTXtXsl7a3pKHv5PXj8utPKtKG2
 pi/ShwO61rzrnrJsW/GHtoEAyD/idHbOEkuOZrCZkuOWF2/6twBJp0OQ8
 5wMS40blMjQ0bRTdm/HiKtb57ELRAYzSuOnUZV+DcCh2q1s4V7HQQHXsT
 O59VhUT32dzbjp3A8VM+2B/9zIMgrG5VADanln2lg85H5oDLt7FssPklU Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323214906"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323214906"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 13:56:50 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="573444061"
Received: from mingram-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.35.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 13:56:49 -0700
Date: Wed, 13 Apr 2022 16:56:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Ylc5D8v0XmqX3mvO@intel.com>
References: <20220413005707.3627314-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
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
> Add Support for DC states on Dg2.
> 
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dmc.c           | 10 +++++++++-
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6a5695008f7c..5a0cab82a156 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4770,7 +4770,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
>  	if (!HAS_DISPLAY(dev_priv))
>  		return 0;
>  
> -	if (IS_DG1(dev_priv))
> +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv))
>  		max_dc = 3;

Oh, this max_dc and the enable_dc param is so ugly...
it should deserve at least a enum, but with the dc9 being totally independent
on the decision I couldn't see a clean and quick way... so let's continue
with this for now


>  	else if (DISPLAY_VER(dev_priv) >= 12)
>  		max_dc = 4;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 257cf662f9f4..2f01aca4d981 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -52,6 +52,10 @@
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
> +#define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
> +MODULE_FIRMWARE(DG2_DMC_PATH);
> +
>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 16)
>  #define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 16)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
> @@ -688,7 +692,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  	 */
>  	intel_dmc_runtime_pm_get(dev_priv);
>  
> -	if (IS_ALDERLAKE_P(dev_priv)) {
> +	if (IS_DG2(dev_priv)) {
> +		dmc->fw_path = DG2_DMC_PATH;
> +		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
> +		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> +	} else if (IS_ALDERLAKE_P(dev_priv)) {
>  		dmc->fw_path = ADLP_DMC_PATH;
>  		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;

probably worth to rename the dev_priv to i915 on these functions you are touching in here...

anyway:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>



> -- 
> 2.25.1
> 
