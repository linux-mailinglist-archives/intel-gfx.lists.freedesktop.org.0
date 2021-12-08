Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BF746D7B7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 17:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3416F6F623;
	Wed,  8 Dec 2021 16:07:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39FF96F623
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 16:07:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="217883310"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="217883310"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:07:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="600785738"
Received: from cahanley-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.1])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:07:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211207023718.322349-1-madhumitha.tolakanahalli.pradeep@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211207023718.322349-1-madhumitha.tolakanahalli.pradeep@intel.com>
Date: Wed, 08 Dec 2021 18:07:14 +0200
Message-ID: <87ilvz3wst.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Change DMC FW size on ADL-P
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

On Mon, 06 Dec 2021, Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com> wrote:
> Increase the size of DMC on ADL-P to account for support of
> new features in the current/upcoming DMC versions.
>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 2dc9d632969d..0cab18f972d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -45,6 +45,8 @@
>  
>  #define GEN12_DMC_MAX_FW_SIZE		ICL_DMC_MAX_FW_SIZE
>  
> +#define GEN13_DMC_MAX_FW_SIZE		0x20000
> +

Side note, we should get rid of these GEN<N> references here.


>  #define ADLP_DMC_PATH			DMC_PATH(adlp, 2, 12)
>  #define ADLP_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
>  MODULE_FIRMWARE(ADLP_DMC_PATH);
> @@ -682,7 +684,7 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  	if (IS_ALDERLAKE_P(dev_priv)) {
>  		dmc->fw_path = ADLP_DMC_PATH;
>  		dmc->required_version = ADLP_DMC_VERSION_REQUIRED;
> -		dmc->max_fw_size = GEN12_DMC_MAX_FW_SIZE;
> +		dmc->max_fw_size = GEN13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_S(dev_priv)) {
>  		dmc->fw_path = ADLS_DMC_PATH;
>  		dmc->required_version = ADLS_DMC_VERSION_REQUIRED;

-- 
Jani Nikula, Intel Open Source Graphics Center
