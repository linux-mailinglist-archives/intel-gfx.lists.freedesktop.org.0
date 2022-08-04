Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98711589EE0
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 17:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C5A29BC90;
	Thu,  4 Aug 2022 15:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAB7C8BD26
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 15:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659627903; x=1691163903;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=CBxQ+n4JmWnsdajwITtQFbgYR/Ji13rD9jN4fwrW5DI=;
 b=K7V2cq4rWcU62+gEpY9soXCwEH0KM8Xdjg+tFNueZOk7fK8gADEWxLTM
 h4hgyFLJ9G5e4f/O3gUEncOdpr+gHPlXeAzQ9YcX+6H1DEsB3Qre/ef4y
 CEMwkbIhLxpafWE2rOIfCGBITtmmd8VpnBU/+0M9SRipD/gisR7gbAQix
 EM5TU8vl9iQg3SWfBgUkDB6e9rwK9+PLkodh6pe2Oe2kqwoJOYqpZg/pz
 46dHObiGkZ5aNbJ4JHdU0FAqXDR2HMevug8YHBernk1s6XIje6w4b7z5+
 WoL/uHrzSdeAKyV1tzwGEVweu5vpX3FbnWJEW2Hi/AF0hxF+XahNm5nwq g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="315846652"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="315846652"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 08:44:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="553766293"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 08:44:56 -0700
Date: Thu, 4 Aug 2022 18:44:22 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <YuvpVtJDEdBrEpeH@ideak-desk.fi.intel.com>
References: <20220804102911.1346064-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220804102911.1346064-1-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/combo_phy: Add Workaround to avoid
 flicker with HBR3 eDP Panels
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 04, 2022 at 03:59:11PM +0530, Ankit Nautiyal wrote:
> WA_14014367875 : When Display PHY is configured in continuous
> DCC calibration mode, the DCC (duty cycle correction) for the clock
> erroneously goes through a state where the DCC code is 0x00 when it is
> supposed to be transitioning from 0x10 to 0x0F. This glitch causes a
> distortion in the clock, which leads to a bit error. The issue is known
> to be causing flickering with eDP HBR3 panels.
> 
> The work around configures the DCC in one-time-update mode.
> This mode updates the DCC code one time during training and then
> it does not change.  This will prevent on-the-fly updates so that the
> glitch does not occur.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 64890f39c3cc..1b8bdc47671d 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -242,9 +242,10 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>  				     ICL_PORT_TX_DW8_ODCC_CLK_SEL |
>  				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
>  
> +		/* WA_14014367875 Set DCC calibration mode to Read once*/

The usual format is 'Wa_<lineage>:<platforms>', so Wa_22012718247:...
'read once' is 'run once' afaics.

>  		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
>  				     DCC_MODE_SELECT_MASK,
> -				     DCC_MODE_SELECT_CONTINUOSLY);
> +				     ~DCC_MODE_SELECT_MASK);

I can see this WA listed only for ADL_P/N/S and TGL (and not for DG2/RKL
for instance). ~DCC_MODE_SELECT_MASK should be 0, maybe add a
dcc_calibration_mode() that could be used below as well.

Could you file a ticket at
https://gfxspecs.intel.com/Predator/Home/Index/49291
which specifies this programming explicitly for each platform, but is
incorrect now wrt. the above WA?

>  	}
>  
>  	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
> @@ -366,8 +367,9 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>  			intel_de_write(dev_priv, ICL_PORT_TX_DW8_GRP(phy), val);
>  
>  			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
> +
> +			/* WA_14014367875 Set DCC calibration mode to Read once*/
>  			val &= ~DCC_MODE_SELECT_MASK;
> -			val |= DCC_MODE_SELECT_CONTINUOSLY;
>  			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
>  		}
>  
> -- 
> 2.25.1
> 
