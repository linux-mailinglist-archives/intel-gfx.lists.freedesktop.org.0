Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D042FE5FC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 10:12:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7026E05C;
	Thu, 21 Jan 2021 09:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28EF6E05C
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 09:12:37 +0000 (UTC)
IronPort-SDR: LkWoDajDFno8IQD4ZtxYpdMdI4M1gVvqc8+eJoPWYwutta2jdf17fJfQZoWVrNkKGaKi5PYssG
 eUq4c5oz1kkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="158419862"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="158419862"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 01:12:37 -0800
IronPort-SDR: OcxemuhgOh+7wtcay4TZjrZMPYMUAqh1uOwhNdq7sp1zWZadlIoy2QB8GivzzPNujIM7fWKtMw
 6F/J07n5BjRg==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="385226668"
Received: from cohrs-mobl.ger.corp.intel.com (HELO localhost) ([10.252.51.23])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 01:12:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
In-Reply-To: <YAkaBa22zvbXKd4E@mwanda>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <YAkaBa22zvbXKd4E@mwanda>
Date: Thu, 21 Jan 2021 11:12:27 +0200
Message-ID: <87h7namz5w.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix a logical vs bitwise OR bug
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
Cc: David Airlie <airlied@linux.ie>, kernel-janitors@vger.kernel.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, Sean Paul <seanpaul@chromium.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 21 Jan 2021, Dan Carpenter <dan.carpenter@oracle.com> wrote:
> This was supposed to be | instead of ||.
>
> Fixes: 522508b665df ("drm/i915/display: Let PCON convert from RGB to YCbCr if it can")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Thanks, but we already have the fix [1] for this that I thought was
pushed by now [2].

Chris?


BR,
Jani.


[1] http://lore.kernel.org/r/20201223103917.14687-1-chris@chris-wilson.co.uk
[2] http://lore.kernel.org/r/161069893278.19482.3803444937046587332@build.alporthouse.com

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8a00e609085f..9c6f427b2703 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6955,8 +6955,8 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>  							intel_dp->downstream_ports);
>  	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
>  								 intel_dp->downstream_ports,
> -								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV ||
> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV ||
> +								 DP_DS_HDMI_BT601_RGB_YCBCR_CONV |
> +								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV |
>  								 DP_DS_HDMI_BT2020_RGB_YCBCR_CONV);
>  
>  	if (INTEL_GEN(i915) >= 11) {

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
