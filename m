Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59351340C7F
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:09:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A633A6E947;
	Thu, 18 Mar 2021 18:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79EC06E947
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 18:09:17 +0000 (UTC)
IronPort-SDR: Us7+HqrmokD8Eclj+ENzYA71Q7PMGujVMQBdnb+T2G5LEJ7WPFMR11qRd6RUl8CtMBsSXiF2Bu
 tkMAtPCZgBpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="186389490"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="186389490"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:09:08 -0700
IronPort-SDR: GtM4yFDaXV3w4heKIccONaAJu1dfyd3Lzkaifu9fScWXnkFCiFVCt0ZX6hfSJ32bzWIYosz+uV
 C+yqqTN7ifZQ==
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="606279899"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:09:07 -0700
Date: Thu, 18 Mar 2021 20:09:03 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210318180903.GH4128033@ideak-desk.fi.intel.com>
References: <20210317184901.4029798-1-imre.deak@intel.com>
 <20210317184901.4029798-4-imre.deak@intel.com>
 <YFOVKoReLkmB7ZuQ@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YFOVKoReLkmB7ZuQ@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915: Disable LTTPR support when
 the LTTPR rev < 1.4
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 18, 2021 at 08:00:10PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Mar 17, 2021 at 08:49:01PM +0200, Imre Deak wrote:
> > By the specification the 0xF0000 - 0xF02FF range is only valid if the
> > LTTPR revision at 0xF0000 is at least 1.4. Disable the LTTPR support
> > otherwise.
> > =

> > Fixes: 7b2a4ab8b0ef ("drm/i915: Switch to LTTPR transparent mode link t=
raining")
> > Cc: <stable@vger.kernel.org> # v5.11
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_training.c  | 14 ++++++++++----
> >  1 file changed, 10 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/dr=
ivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index d8d90903226f..d92eb192c89d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -100,17 +100,23 @@ static bool intel_dp_read_lttpr_common_caps(struc=
t intel_dp *intel_dp)
> >  		return false;
> >  =

> >  	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> > -					  intel_dp->lttpr_common_caps) < 0) {
> > -		intel_dp_reset_lttpr_common_caps(intel_dp);
> > -		return false;
> > -	}
> > +					  intel_dp->lttpr_common_caps) < 0)
> > +		goto reset_caps;
> =

> BTW just noticed this oddball thing in the spec:
> "DPTX shall read specific registers within the LTTPR field (DPCD
>  Addresses F0000h through F0004h; see Table 2-198) to determine
>  whether any LTTPR(s) are present and if so, how many. This read
>  shall be in the form of a 5-byte native AUX Read transaction."
> =

> Why exactly 5 bytes? I have no idea. Doesn't really make sense.
> Just wondering if we really need to respect that and some LTTPRs
> would fsck things up if we read more...

I pointed this out to spec people and the new version (2.1) will require
this to be 8 bytes. But yes, I do hope no existing ones depend on this
being 5 bytes.

> Anyways
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> >  =

> >  	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> >  		    "LTTPR common capabilities: %*ph\n",
> >  		    (int)sizeof(intel_dp->lttpr_common_caps),
> >  		    intel_dp->lttpr_common_caps);
> >  =

> > +	/* The minimum value of LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_=
REV is 1.4 */
> > +	if (intel_dp->lttpr_common_caps[0] < 0x14)
> > +		goto reset_caps;
> > +
> >  	return true;
> > +
> > +reset_caps:
> > +	intel_dp_reset_lttpr_common_caps(intel_dp);
> > +	return false;
> >  }
> >  =

> >  static bool
> > -- =

> > 2.25.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
