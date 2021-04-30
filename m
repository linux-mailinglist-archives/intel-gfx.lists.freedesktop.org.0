Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0DB36FFC5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Apr 2021 19:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4146E4F1;
	Fri, 30 Apr 2021 17:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 465A26E4F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Apr 2021 17:40:16 +0000 (UTC)
IronPort-SDR: wrV71PyXFSxqpB8/V2laNCVNV4RKOEuyvEDH0jDwerOLZYAUKMioj4ZOfTusP747+fnYd75ipe
 iPLtPgqE1fcw==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="176818905"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="176818905"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 10:40:15 -0700
IronPort-SDR: D9HfCkxDWZidDPBZpV5olb/nsB1IGeDB7EplJy65uiwvMEr3oeiachLft73SokqA1CgKeQtaqy
 sK4KdyjmioNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="459542204"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 30 Apr 2021 10:40:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Apr 2021 20:40:12 +0300
Date: Fri, 30 Apr 2021 20:40:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YIxA/LDc5llqvRF+@intel.com>
References: <20200601101516.21018-1-anshuman.gupta@intel.com>
 <20210430115355.30611-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210430115355.30611-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC v2] drm/i915: lpsp with hdmi/dp outputs
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 30, 2021 at 05:23:55PM +0530, Anshuman Gupta wrote:
> DG1 and DISPLAY_VER=3D13 onwards Audio MMIO/VERBS lies in PG0 power
> well. So in order to detect audio capable DP/HDMI output it doesn't
> require to enable PG3 power well on DG1 and PG2 on DISPLAY_VER=3D13
> pltform. It will save the power when DP/HDMI outputs used as
> lpsp configuration.
> =

> B.Spec: 49233
> B.Spec: 49231
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6280ba7f4c17..16bfa7628970 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3536,8 +3536,13 @@ static u64 get_crtc_power_domains(struct intel_crt=
c_state *crtc_state)
>  		mask |=3D BIT_ULL(intel_encoder->power_domain);
>  	}
>  =

> -	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
> -		mask |=3D BIT_ULL(POWER_DOMAIN_AUDIO);
> +	if (HAS_DDI(dev_priv) && crtc_state->has_audio) {
> +		/* if Audio mmio/verbs lies in PG0 */
> +		if (IS_DG1(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11)
> +			mask |=3D BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
> +		else
> +			mask |=3D BIT_ULL(POWER_DOMAIN_AUDIO);

Power domains are supposed to be abstract. So if the audio stuff
is moving to a different power well then we just need to adjust
the domain for the relevant power wells.

> +	}
>  =

>  	if (crtc_state->shared_dpll)
>  		mask |=3D BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
