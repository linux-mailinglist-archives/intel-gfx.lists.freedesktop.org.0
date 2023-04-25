Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 675506EDB94
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 08:24:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EE2810E67A;
	Tue, 25 Apr 2023 06:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA29910E67A
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 06:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682403845; x=1713939845;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=5pJgpW2llntAvnj447E06zkySkMWTyI7p2iyCkhI0tg=;
 b=KF6GJJb2cC5xAauKocoZVsY0+z15u8fUAeqbyNpomRrN56HIVW6TOrGp
 Hj2Vrr5UEptWAPZwRPHxmqwDvqbg1/NfaNjmiNfSdvitxiUnpPJ7E68Tf
 992JlTXgooDho+YVXtj6tW/OjlASgFoNuJniRVsVhMwcoZjHoG1JQ0ahJ
 SMAJy5wEPkeyLiZAdo7AxKZQkD713S3IZAIPJ/w5SdgKGIRWILD67M0lK
 NISZOKWsbX4O2owgnmjaozbAr7kBpOIgOW/2UOmnL6UjM93xe0eQ/16qt
 q4I12Pgq/exuKXKpssas2izQkUSuqlSoJ6gYuQRIAdq/2kwKxlRJ7jQzP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="432934245"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="432934245"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 23:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="867770283"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="867770283"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.19.44])
 ([10.213.19.44])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 23:24:03 -0700
Message-ID: <16497de0-1707-4b65-7d18-bc03d935358a@intel.com>
Date: Tue, 25 Apr 2023 08:24:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230424200205.1732941-1-imre.deak@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230424200205.1732941-1-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp+: Disable DC5/6 states for TC
 port DDI/AUX and for combo port AUX
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24.04.2023 22:02, Imre Deak wrote:
> On ADLP+ Bspec allows DC5/6 to be enabled while power well 2 is enabled.
> Since the AUX and DDI power wells (except for port A/B) are also backed
> by power well 2, this would suggest that DC5/6 can be enabled while any
> of these AUX or DDI port functionalities are used. As opposed to this
> AUX transfers will time out on ADLP TypeC ports while DC6 is enabled.
> 
> Until the restriction for DC5/6 is clarified in Bspec let's assume that
> the intention is to allow for using these power states while pipe A/B is
> enabled, but only for combo ports which can be used with eDP outputs.
> Similarly assume that AUX transaction initiated by the driver on any port
> requires DC states to be disabled.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Fixes: 88c487938414 ("drm/i915: Use separate "DC off" power well for ADL-P and DG2")
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Great it revives bat-dg2-11.

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   .../i915/display/intel_display_power_map.c    | 28 +++++++++++--------
>   1 file changed, 16 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 100582f105905..ca448359a8226 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1251,22 +1251,11 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
>   	POWER_DOMAIN_PIPE_PANEL_FITTER_A,
>   	POWER_DOMAIN_INIT);
>   
> -#define XELPD_PW_2_POWER_DOMAINS \
> -	XELPD_PW_B_POWER_DOMAINS, \
> -	XELPD_PW_C_POWER_DOMAINS, \
> -	XELPD_PW_D_POWER_DOMAINS, \
> -	POWER_DOMAIN_PORT_DDI_LANES_C, \
> -	POWER_DOMAIN_PORT_DDI_LANES_D, \
> -	POWER_DOMAIN_PORT_DDI_LANES_E, \
> +#define XELPD_DC_OFF_PORT_POWER_DOMAINS \
>   	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
>   	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
>   	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
>   	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
> -	POWER_DOMAIN_VGA, \
> -	POWER_DOMAIN_AUDIO_PLAYBACK, \
> -	POWER_DOMAIN_AUX_IO_C, \
> -	POWER_DOMAIN_AUX_IO_D, \
> -	POWER_DOMAIN_AUX_IO_E, \
>   	POWER_DOMAIN_AUX_C, \
>   	POWER_DOMAIN_AUX_D, \
>   	POWER_DOMAIN_AUX_E, \
> @@ -1279,6 +1268,20 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
>   	POWER_DOMAIN_AUX_TBT3, \
>   	POWER_DOMAIN_AUX_TBT4
>   
> +#define XELPD_PW_2_POWER_DOMAINS \
> +	XELPD_PW_B_POWER_DOMAINS, \
> +	XELPD_PW_C_POWER_DOMAINS, \
> +	XELPD_PW_D_POWER_DOMAINS, \
> +	POWER_DOMAIN_PORT_DDI_LANES_C, \
> +	POWER_DOMAIN_PORT_DDI_LANES_D, \
> +	POWER_DOMAIN_PORT_DDI_LANES_E, \
> +	POWER_DOMAIN_VGA, \
> +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_AUX_IO_C, \
> +	POWER_DOMAIN_AUX_IO_D, \
> +	POWER_DOMAIN_AUX_IO_E, \
> +	XELPD_DC_OFF_PORT_POWER_DOMAINS
> +
>   I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
>   	XELPD_PW_2_POWER_DOMAINS,
>   	POWER_DOMAIN_INIT);
> @@ -1301,6 +1304,7 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_2,
>    */
>   
>   I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
> +	XELPD_DC_OFF_PORT_POWER_DOMAINS,
>   	XELPD_PW_C_POWER_DOMAINS,
>   	XELPD_PW_D_POWER_DOMAINS,
>   	POWER_DOMAIN_PORT_DSI,

