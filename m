Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 039AA1B1476
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 20:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545BC6E24E;
	Mon, 20 Apr 2020 18:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D03D6E24E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 18:27:39 +0000 (UTC)
IronPort-SDR: 3hQ0cJaqaeGbvPaXgS3KscEYfdylD5pUJXzJHxFbxzhhukt32OK7pz8eF47y7KKX+BXUhJ2xYA
 HbuYzexo+lIw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 11:27:38 -0700
IronPort-SDR: DYnqKTBHIMTZO6WQP0HWOvXqfDyOc9kIKb07vD93nkFetfIKJTujY/RhZRH6FZYS78uEn3j1oT
 vurCc+kioAbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="245447360"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 20 Apr 2020 11:27:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 21:27:35 +0300
Date: Mon, 20 Apr 2020 21:27:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20200420182735.GA6112@intel.com>
References: <20200417152734.464-1-ville.syrjala@linux.intel.com>
 <d033598219f08c28e801490cc9592efefc513684.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d033598219f08c28e801490cc9592efefc513684.camel@redhat.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Flatten
 intel_dp_check_mst_status() a bit
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

On Fri, Apr 17, 2020 at 02:51:39PM -0400, Lyude Paul wrote:
> Reviewed-by: Lyude Paul <lyude@redhat.com>
> =


Thanks. Series pushed to dinq.

> On Fri, 2020-04-17 at 18:27 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Make intel_dp_check_mst_status() somewhat legible by humans.
> > =

> > Note that the return value of drm_dp_mst_hpd_irq() is always
> > either 0 or -ENOMEM, and we never did anything with the latter
> > so we can just ignore the whole thing.
> > =

> > We can also get rid of the direct drm_dp_mst_topology_mgr_set_mst(false)
> > call since returning -EINVAL causes the caller to do the very same call
> > for us.
> > =

> > Cc: Lyude Paul <lyude@redhat.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 88 ++++++++++++-------------
> >  1 file changed, 41 insertions(+), 47 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 48397b2c08cf..4d4898db38e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5628,61 +5628,55 @@ static int
> >  intel_dp_check_mst_status(struct intel_dp *intel_dp)
> >  {
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> > -	bool bret;
> >  =

> > -	if (intel_dp->is_mst) {
> > -		u8 esi[DP_DPRX_ESI_LEN] =3D { 0 };
> > -		int ret =3D 0;
> > +	if (!intel_dp->is_mst)
> > +		return -EINVAL;
> > +
> > +	WARN_ON_ONCE(intel_dp->active_mst_links < 0);
> > +
> > +	for (;;) {
> > +		u8 esi[DP_DPRX_ESI_LEN] =3D {};
> > +		bool bret, handled;
> >  		int retry;
> > -		bool handled;
> >  =

> > -		WARN_ON_ONCE(intel_dp->active_mst_links < 0);
> >  		bret =3D intel_dp_get_sink_irq_esi(intel_dp, esi);
> > -go_again:
> > -		if (bret =3D=3D true) {
> > -
> > -			/* check link status - esi[10] =3D 0x200c */
> > -			if (intel_dp->active_mst_links > 0 &&
> > -			    !drm_dp_channel_eq_ok(&esi[10], intel_dp-
> > >lane_count)) {
> > -				drm_dbg_kms(&i915->drm,
> > -					    "channel EQ not ok,
> > retraining\n");
> > -				intel_dp_start_link_train(intel_dp);
> > -				intel_dp_stop_link_train(intel_dp);
> > -			}
> > -
> > -			drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> > -			ret =3D drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi,
> > &handled);
> > -
> > -			if (handled) {
> > -				for (retry =3D 0; retry < 3; retry++) {
> > -					int wret;
> > -					wret =3D drm_dp_dpcd_write(&intel_dp-
> > >aux,
> > -								 DP_SINK_COUNT
> > _ESI+1,
> > -								 &esi[1], 3);
> > -					if (wret =3D=3D 3) {
> > -						break;
> > -					}
> > -				}
> > -
> > -				bret =3D intel_dp_get_sink_irq_esi(intel_dp,
> > esi);
> > -				if (bret =3D=3D true) {
> > -					drm_dbg_kms(&i915->drm,
> > -						    "got esi2 %3ph\n", esi);
> > -					goto go_again;
> > -				}
> > -			} else
> > -				ret =3D 0;
> > -
> > -			return ret;
> > -		} else {
> > +		if (!bret) {
> >  			drm_dbg_kms(&i915->drm,
> >  				    "failed to get ESI - device may have
> > failed\n");
> > -			intel_dp->is_mst =3D false;
> > -			drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> > -							intel_dp->is_mst);
> > +			return -EINVAL;
> > +		}
> > +
> > +		/* check link status - esi[10] =3D 0x200c */
> > +		/*
> > +		 * FIXME kill this and use the SST retraining approach
> > +		 * for MST as well.
> > +		 */
> > +		if (intel_dp->active_mst_links > 0 &&
> > +		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "channel EQ not ok, retraining\n");
> > +			intel_dp_start_link_train(intel_dp);
> > +			intel_dp_stop_link_train(intel_dp);
> > +		}
> > +
> > +		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> > +
> > +		drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, &handled);
> > +		if (!handled)
> > +			break;
> > +
> > +		for (retry =3D 0; retry < 3; retry++) {
> > +			int wret;
> > +
> > +			wret =3D drm_dp_dpcd_write(&intel_dp->aux,
> > +						 DP_SINK_COUNT_ESI+1,
> > +						 &esi[1], 3);
> > +			if (wret =3D=3D 3)
> > +				break;
> >  		}
> >  	}
> > -	return -EINVAL;
> > +
> > +	return 0;
> >  }
> >  =

> >  static bool
> > -- =

> > 2.24.1
> > =

> -- =

> Cheers,
> 	Lyude Paul (she/her)
> 	Associate Software Engineer at Red Hat

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
