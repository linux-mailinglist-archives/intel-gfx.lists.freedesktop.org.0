Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 618081D57AF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 19:24:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96CE96ED0B;
	Fri, 15 May 2020 17:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C333D6ED0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 17:24:53 +0000 (UTC)
IronPort-SDR: 5WIWWNsgb10RrKb8d0fvDW8b+3aZuJf+PcCSKCdFIhYV+2X4so11ta84MEy1TGvr0iJnVJ1vK+
 nVIjrLfRX0uA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 10:24:53 -0700
IronPort-SDR: ntebUOceB8JmegD/3pWanl2ViRgPB0r/RoA8ekLpysnvF7EuAjYDCeeCkI1nKMXdslNtOjgSNA
 NR9z5earB4bA==
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="438385082"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 10:24:51 -0700
Date: Fri, 15 May 2020 20:24:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200515172445.GA20373@ideak-desk.fi.intel.com>
References: <20200514204553.27193-1-imre.deak@intel.com>
 <20200515162106.GL6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515162106.GL6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix AUX power domain toggling
 across TypeC mode resets
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

On Fri, May 15, 2020 at 07:21:06PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, May 14, 2020 at 11:45:53PM +0300, Imre Deak wrote:
> > Make sure to select the port's AUX power domain while holding the TC
> > port lock. The domain depends on the port's current TC mode, which may
> > get changed under us if we're not holding the lock.
> =

> Can we toss in a lockdep assert?

Yes, can do that. However, now I realize, there is one more place to fix
in intel_dp_force(), where I think we could just drop the aux get/put.

So are you ok to do that as a follow-up?

> Did this by any chance help with the MST issues you were seeing?

No, at least it didn't resolve it. Still some missing responses to MST
down messages. More precisely the sink does send interrupts as a
response, but the interrupt handler won't see the DP_DOWN_REP_MSG_RDY
being set in ESI.

> > This was left out from
> > commit 8c10e2262663 ("drm/i915: Keep the TypeC port mode fixed for dete=
ct/AUX transfers")
> > =

> > Cc: <stable@vger.kernel.org> # v5.4+
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index 408c3c1c5e81..40d42dcff0b7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1359,8 +1359,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	bool is_tc_port =3D intel_phy_is_tc(i915, phy);
> >  	i915_reg_t ch_ctl, ch_data[5];
> >  	u32 aux_clock_divider;
> > -	enum intel_display_power_domain aux_domain =3D
> > -		intel_aux_power_domain(intel_dig_port);
> > +	enum intel_display_power_domain aux_domain;
> >  	intel_wakeref_t aux_wakeref;
> >  	intel_wakeref_t pps_wakeref;
> >  	int i, ret, recv_bytes;
> > @@ -1375,6 +1374,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  	if (is_tc_port)
> >  		intel_tc_port_lock(intel_dig_port);
> >  =

> > +	aux_domain =3D intel_aux_power_domain(intel_dig_port);
> > +
> >  	aux_wakeref =3D intel_display_power_get(i915, aux_domain);
> >  	pps_wakeref =3D pps_lock(intel_dp);
> >  =

> > -- =

> > 2.23.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
