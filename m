Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5D11D67EF
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2020 14:17:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00F0F6E09A;
	Sun, 17 May 2020 12:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25CB6E09A
 for <intel-gfx@lists.freedesktop.org>; Sun, 17 May 2020 12:17:00 +0000 (UTC)
IronPort-SDR: 84ZTUeANmcIg+jKl1TqaqChAz0F3407HM/98Ni9hQwDLnPVrTgYq95ooUqMG8/iwnC5//y9d7p
 wYjPAb6vGqdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2020 05:17:00 -0700
IronPort-SDR: hB/c+MSNuzpMtHHBozW+WgJSyyMipl9YvcVh0M9AwQm8266AnL1ClbYDkTCd/r0dumux+zHFJd
 hTOaqmCdfWiw==
X-IronPort-AV: E=Sophos;i="5.73,403,1583222400"; d="scan'208";a="254213763"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2020 05:16:58 -0700
Date: Sun, 17 May 2020 15:12:49 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200517121234.GA7704@intel.com>
References: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix dbuf slice mask when turning
 off all the pipes
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, May 16, 2020 at 07:15:42PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The current dbuf slice computation only happens when there are
> active pipes. If we are turning off all the pipes we just leave
> the dbuf slice mask at it's previous value, which may be something
> other that BIT(S1). If runtime PM will kick in it will however
> turn off everything but S1. Then on the next atomic commit (if
> the new dbuf slice mask matches the stale value we left behind)
> the code will not turn on the other slices we now need. This will
> lead to underruns as the planes are trying to use a dbuf slice
> that's not powered up.
> =

> To work around let's just just explicitly set the dbuf slice mask
> to BIT(S1) when we are turning off all the pipes. Really the code
> should just calculate this stuff the same way regardless whether
> the pipes are on or off, but we're not quite there yet (need a
> bit more work on the dbuf state for that).
> =

> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 3cf43cdc63fb ("drm/i915: Introduce proper dbuf state")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index a21e36ed1a77..4a523d8b881f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4071,6 +4071,22 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  	*num_active =3D hweight8(active_pipes);
>  =

>  	if (!crtc_state->hw.active) {
> +		/*
> +		 * FIXME hack to make sure we compute this sensibly when
> +		 * turning off all the pipes. Otherwise we leave it at
> +		 * whatever we had previously, and then runtime PM will
> +		 * mess it up by turning off all but S1. Remove this
> +		 * once the dbuf state computation flow becomes sane.
> +		 */
> +		if (active_pipes =3D=3D 0) {
> +			new_dbuf_state->enabled_slices =3D BIT(DBUF_S1);
> +
> +			if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slice=
s) {
> +				ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
> +				if (ret)
> +					return ret;
> +			}
> +		}

Rather weird, why we didnt have that issue before..
Just trying to figure out what's the reason - aren't we recovering the last
state of enabled slices from hw in gen9_dbuf_enable?

As I understand you modify enabled_slices in dbuf global object recovering
the actual hw state there. =


Also from your patches I don't see the actual logic difference with what =

was happening before dbuf_state in that sense.
I.e we were also bailing out in skl_get_pipe_alloc_limits, without modifying
dbuf_state before, however there was no issue.

So the reason for regression should be somewhere else? Or am I missing some=
thing?

Also I guess would be really cute if we use a single way to get
slice configuration, i.e those tables from BSpec and functionality around i=
t,
i.e we have skl_compute_dbuf_slices(crtc_state, active_pipes) call, which i=
s supposed
to return dbuf slice config correspondent to active_pipes.

I guess by scattering those kind of assignments, here and there we just inc=
reasing =

the probability of more issues happening.

Stan


>  		alloc->start =3D 0;
>  		alloc->end =3D 0;
>  		return 0;
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
