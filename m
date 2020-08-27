Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B960253E21
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 08:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4B866E22D;
	Thu, 27 Aug 2020 06:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAEE36E22D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 06:49:44 +0000 (UTC)
IronPort-SDR: tpdHxcbkhsnEkLWrzy4zBJNZN/XKWGoIIhuT6LfXJyo29l7QNopd1t73Fdhw/KXvt4vYYcrMq0
 q/TTFPDVjjFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153852770"
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="153852770"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 23:49:42 -0700
IronPort-SDR: eIzdZDEpUlk70NyxFm9WcqlVmqtJP9wVugDS07xqjwM8vgJoexQsLlBmxpHDsDR22Z0ZQddPWZ
 flHri12eJ6hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,358,1592895600"; d="scan'208";a="475087046"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga005.jf.intel.com with ESMTP; 26 Aug 2020 23:49:41 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 27 Aug 2020 07:49:40 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 27 Aug 2020 12:19:38 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Varide, Nischal" <nischal.varide@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/5] Fixing Possible Null Pointer Dereference
Thread-Index: AQHWegNCv0Qmt1lV/0qIIIoUFpiIAalHUcaAgAQ1sHA=
Date: Thu, 27 Aug 2020 06:49:38 +0000
Message-ID: <e27a58753ed6450e97ac4d6940fc8154@intel.com>
References: <20200824034556.26626-1-nischal.varide@intel.com>
 <20200824195857.GK6112@intel.com>
In-Reply-To: <20200824195857.GK6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] Fixing Possible Null Pointer Dereference
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
lle
> Syrj=E4l=E4
> Sent: Tuesday, August 25, 2020 1:29 AM
> To: Varide, Nischal <nischal.varide@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/5] Fixing Possible Null Pointer Derefer=
ence
> =

> On Mon, Aug 24, 2020 at 09:15:52AM +0530, Nischal Varide wrote:
> > There is a possble Null Pointer dereference in intel_atomic.c and this
> > patch fixes the same by introducting a check to old_state, new_state
> > old_conn_state and new_conn_state variables.
> =

> Not possible. In fact none of the supposed null ptrs in the series seem p=
ossible
> to me.

Hi Nischal,
Yeah I agree with Ville, these all seem to be false positives. We don't exp=
ect these to be NULL at this deep in the
call flow. You can drop these.

Regards,
Uma Shankar

> >
> > Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c
> > b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 630f49b7aa01..ab58f061c8a7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -132,6 +132,9 @@ int intel_digital_connector_atomic_check(struct
> drm_connector *conn,
> >  		to_intel_digital_connector_state(old_state);
> >  	struct drm_crtc_state *crtc_state;
> >
> > +	if (!(new_state && new_conn_state && old_state && old_conn_state))
> > +		return 0;
> > +
> >  	intel_hdcp_atomic_check(conn, old_state, new_state);
> >  	intel_psr_atomic_check(conn, old_state, new_state);
> >
> > @@ -192,6 +195,8 @@ intel_connector_needs_modeset(struct
> > intel_atomic_state *state,
> >
> >  	old_conn_state =3D drm_atomic_get_old_connector_state(&state->base,
> connector);
> >  	new_conn_state =3D drm_atomic_get_new_connector_state(&state->base,
> > connector);
> > +	if (!(old_conn_state && new_conn_state))
> > +		return 0;
> >
> >  	return old_conn_state->crtc !=3D new_conn_state->crtc ||
> >  	       (new_conn_state->crtc &&
> > --
> > 2.26.0
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
