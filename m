Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 402B23F71A0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 11:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40036E16F;
	Wed, 25 Aug 2021 09:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1A3892A0;
 Wed, 25 Aug 2021 09:22:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204684927"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="204684927"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 02:22:32 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="536214487"
Received: from mburkard-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.213.64])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 02:22:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Koba Ko <koba.ko@canonical.com>, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
In-Reply-To: <20210825043522.346512-2-koba.ko@canonical.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210825043522.346512-1-koba.ko@canonical.com>
 <20210825043522.346512-2-koba.ko@canonical.com>
Date: Wed, 25 Aug 2021 12:22:26 +0300
Message-ID: <87y28pev59.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/amdgpu: Disable PCIE_DPM on Intel
 RKL Platform
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

On Wed, 25 Aug 2021, Koba Ko <koba.ko@canonical.com> wrote:
> AMD polaris GPUs have an issue about audio noise on RKL platform,
> they provide a commit to fix but for SMU7-based GPU still
> need another module parameter,
>
> For avoiding the module parameter, switch PCI_DPM by determining
> intel platform in amd drm driver.

I'll just note that you could have a Tiger Lake PCH combined with a
number of platforms other than Rocket Lake, including not just the
obvious Tiger Lake but also Sky Lake, Kaby Lake, Coffee Lake, and Comet
Lake.

Again, I don't know what the root cause or fix should be, the workaround
presented here impacts a much larger number of platforms than where
you're claiming the issue is.

BR,
Jani.


>
> Fixes: 1a31474cdb48 ("drm/amd/pm: workaround for audio noise issue")
> Ref: https://lists.freedesktop.org/archives/amd-gfx/2021-August/067413.html
> Signed-off-by: Koba Ko <koba.ko@canonical.com>
> ---
>  .../drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c   | 21 ++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> index 0541bfc81c1b..346110dd0f51 100644
> --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/smu7_hwmgr.c
> @@ -1733,6 +1733,25 @@ static int smu7_disable_dpm_tasks(struct pp_hwmgr *hwmgr)
>  	return result;
>  }
>  
> +#include <drm/intel_pch.h>
> +
> +static bool intel_tgp_chk(void)
> +{
> +	struct pci_dev *pch = NULL;
> +	unsigned short id;
> +
> +	while ((pch = pci_get_class(PCI_CLASS_BRIDGE_ISA << 8, pch))) {
> +		if (pch->vendor != PCI_VENDOR_ID_INTEL)
> +			continue;
> +
> +		id = pch->device & INTEL_PCH_DEVICE_ID_MASK;
> +		if (id == INTEL_PCH_TGP_DEVICE_ID_TYPE || INTEL_PCH_TGP2_DEVICE_ID_TYPE)

PS. This is always true. ;)

> +			return true;
> +	}
> +
> +	return false;
> +}
> +
>  static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
>  {
>  	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
> @@ -1758,7 +1777,7 @@ static void smu7_init_dpm_defaults(struct pp_hwmgr *hwmgr)
>  
>  	data->mclk_dpm_key_disabled = hwmgr->feature_mask & PP_MCLK_DPM_MASK ? false : true;
>  	data->sclk_dpm_key_disabled = hwmgr->feature_mask & PP_SCLK_DPM_MASK ? false : true;
> -	data->pcie_dpm_key_disabled = hwmgr->feature_mask & PP_PCIE_DPM_MASK ? false : true;
> +	data->pcie_dpm_key_disabled = intel_tgp_chk() || !(hwmgr->feature_mask & PP_PCIE_DPM_MASK);
>  	/* need to set voltage control types before EVV patching */
>  	data->voltage_control = SMU7_VOLTAGE_CONTROL_NONE;
>  	data->vddci_control = SMU7_VOLTAGE_CONTROL_NONE;

-- 
Jani Nikula, Intel Open Source Graphics Center
