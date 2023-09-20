Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B68497A7CA5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 14:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039FE10E487;
	Wed, 20 Sep 2023 12:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38BC10E487
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 12:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695211376; x=1726747376;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=314pUia9yZLt1tKm5ZXqUSCqQ57/aEPR39bMIaEDTqs=;
 b=fvSMTTttjBMSZ2p820ZktSuGH67EockPLnzo/+gdwKrIfcGgzJI6J3qX
 Q3LSoqM6S80vC4wRZhsPoNo76uyNk7xxjsyJUsFgE3b1T6FCGxdv/vVsv
 rkroc/VLX1mqZzr3S98l6bpUJHbcxiGwYC8ukQA62x4Qdz12k+bMpJIxF
 DRYMFWz6XJcZEzTeeqp9fHx+CHQGtBBc/TU+Winhfkl3xpTESqR1KtiSX
 DrKVSPXc78tzr0XTe3WzOClVCfBe5zEwPubmxf01YZ/a1ocxvBznk3ZwX
 VgiLBRWg0pQtRAzg7e0x0CYXHJRuA9S8tD7mGMbBpTP119EsOb+9Ow2ep w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="365251121"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="365251121"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:02:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="889896552"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="889896552"
Received: from ptelkov-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.38.103])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:01:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZQrT-BzAEnh7hEHd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230913150356.9477-1-ville.syrjala@linux.intel.com>
 <87il85ryeh.fsf@intel.com> <ZQrT-BzAEnh7hEHd@intel.com>
Date: Wed, 20 Sep 2023 15:01:58 +0300
Message-ID: <87ttrpqci1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check lane count when
 determining FEC support
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
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Sep 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 20, 2023 at 12:23:34PM +0300, Jani Nikula wrote:
>> On Wed, 13 Sep 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > ICL doesn't support FEC with a x1 DP link. Make sure
>> > we don't try to enable FEC in such cases.
>>=20
>> The question is, should we rather require x2 link for FEC?
>>=20
>> I suppose x1 link with DSC+FEC is an unlikely scenario with our current
>> link bandwidth policy, so probably not a big deal.
>
> I think currently we just smash lane_count to max when using DSC.
> So doesn't really matter currently. But something to keep in mind=20
> if/when we tune the policy.

The patch is actually a bit subtle. Or the existing code is.

The paths under intel_edp_dsc_compute_pipe_bpp() and
intel_dp_dsc_compute_pipe_bpp() *assume* FEC is enabled/disabled
depending on the case. They don't look at fec_enable. Any checks for
fec_enable in there would be late.

Let's say eDP gains the ability to do FEC. I don't even remember what
the DP spec says about that. But having to check for fec_enable would
trip over, because it's not initialized yet.

So the patch highlights one aspect to keep in mind, but a little bit
hides another point to keep in mind. Damned if you do, damned if you
don't...

BR,
Jani.


>
>>=20
>> BR,
>> Jani.
>>=20
>> >
>> > Requires a bit of reordering to make sure we've computed lane_count
>> > before checking it.
>> >
>> > Cc: Luca Coelho <luciano.coelho@intel.com>
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++----------
>> >  1 file changed, 11 insertions(+), 10 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm=
/i915/display/intel_dp.c
>> > index 55ba6eeaa810..2cde8ac513bb 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -1363,7 +1363,8 @@ static bool intel_dp_source_supports_fec(struct =
intel_dp *intel_dp,
>> >  	if (DISPLAY_VER(dev_priv) >=3D 12)
>> >  		return true;
>> >=20=20
>> > -	if (DISPLAY_VER(dev_priv) =3D=3D 11 && encoder->port !=3D PORT_A)
>> > +	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
>> > +	    encoder->port !=3D PORT_A && pipe_config->lane_count !=3D 1)
>> >  		return true;
>> >=20=20
>> >  	return false;
>> > @@ -2105,15 +2106,6 @@ int intel_dp_dsc_compute_config(struct intel_dp=
 *intel_dp,
>> >  		&pipe_config->hw.adjusted_mode;
>> >  	int ret;
>> >=20=20
>> > -	pipe_config->fec_enable =3D !intel_dp_is_edp(intel_dp) &&
>> > -		intel_dp_supports_fec(intel_dp, pipe_config);
>> > -
>> > -	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>> > -		return -EINVAL;
>> > -
>> > -	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_form=
at))
>> > -		return -EINVAL;
>> > -
>> >  	/*
>> >  	 * compute pipe bpp is set to false for DP MST DSC case
>> >  	 * and compressed_bpp is calculated same time once
>> > @@ -2134,6 +2126,15 @@ int intel_dp_dsc_compute_config(struct intel_dp=
 *intel_dp,
>> >  		}
>> >  	}
>> >=20=20
>> > +	pipe_config->fec_enable =3D !intel_dp_is_edp(intel_dp) &&
>> > +		intel_dp_supports_fec(intel_dp, pipe_config);
>> > +
>> > +	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>> > +		return -EINVAL;
>> > +
>> > +	if (!intel_dp_dsc_supports_format(intel_dp, pipe_config->output_form=
at))
>> > +		return -EINVAL;
>> > +
>> >  	/* Calculate Slice count */
>> >  	if (intel_dp_is_edp(intel_dp)) {
>> >  		pipe_config->dsc.slice_count =3D
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
