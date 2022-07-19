Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5352A5794D1
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 10:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82205113C40;
	Tue, 19 Jul 2022 08:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA8A7113C1C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jul 2022 08:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658217883; x=1689753883;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9oxLb8dDGGJdvlZuJ+yrLnajT8Z3D/UQXsyAyiW5NEk=;
 b=cbKf7fFMPQznFDI1uZLLjlVY6YsupgSbI8T7jJu8dhCnLSJJduPbPYrj
 RH1agqi2H3geX2BnertaiUeqeDRzMmZqytbjqI+TN5bwoO4Wz1HbPTVsv
 eSg6qPpCkpxm5yNiQ+aaen62AJ+iG1DQfUZR86PMDOIDB6TDDcr7TnPxZ
 yYTOge045Q8d8ACa+nJh+pKnXFOuHpw2jvWwbr3UcifRaKo3lJ0btjRgi
 hfZNmr12lPO440NfuOkCAosU/gblD6raQEOK0qULESx89v7QBdEbwgMAu
 UuLJwT24jFWty1rePmXWuELqvRe7opcv2xbA+2yp611IdIk6FwVbLOSZq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10412"; a="348117917"
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="348117917"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2022 01:04:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,283,1650956400"; d="scan'208";a="843565455"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jul 2022 01:04:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 19 Jul 2022 01:04:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 19 Jul 2022 01:04:41 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Tue, 19 Jul 2022 01:04:41 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "Sharma, Swati2"
 <swati2.sharma@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Add debug print for scaler
 filter
Thread-Index: AQHYkSI3yoW6Urf1sEaD4hFDsbKDyK1/GruwgAZPK/A=
Date: Tue, 19 Jul 2022 08:04:41 +0000
Message-ID: <ee47d49adcb74701bf2841ac7be20bf1@intel.com>
References: <20220706102240.21414-1-swati2.sharma@intel.com>
 <ad04a68cc2954918a7fa2caf7d505445@intel.com>
In-Reply-To: <ad04a68cc2954918a7fa2caf7d505445@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-originating-ip: [10.108.32.68]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add debug print for
 scaler filter
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Swati Sharma
> > Sent: Wednesday, July 6, 2022 3:53 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH] drm/i915/display: Add debug print for
> > scaler filter
> >
> > Add debug print statement to print scaler filter property value. Since
> > property can be set as either default or integer scaler; its good if
> > we can get debug print for the same in dmesg log.
>=20
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Pushed to drm-intel-next. Thanks for the change.

Regards,
Uma Shankar

> > Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 +++++----
> > drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++--
> >  2 files changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > index 4ca6e9493ff2..e9212f69c360 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> > @@ -134,8 +134,8 @@ static void intel_dump_plane_state(const struct
> > intel_plane_state *plane_state)
> >  		    plane->base.base.id, plane->base.name,
> >  		    fb->base.id, fb->width, fb->height, &fb->format->format,
> >  		    fb->modifier, str_yes_no(plane_state->uapi.visible));
> > -	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d\n",
> > -		    plane_state->hw.rotation, plane_state->scaler_id);
> > +	drm_dbg_kms(&i915->drm, "\trotation: 0x%x, scaler: %d, scaling_filter=
:
> > %d\n",
> > +		    plane_state->hw.rotation, plane_state->scaler_id,
> > +plane_state->hw.scaling_filter);
> >  	if (plane_state->uapi.visible)
> >  		drm_dbg_kms(&i915->drm,
> >  			    "\tsrc: " DRM_RECT_FP_FMT " dst: " DRM_RECT_FMT
> "\n", @@
> > -262,10 +262,11 @@ void intel_crtc_state_dump(const struct
> > intel_crtc_state *pipe_config,
> >
> >  	if (DISPLAY_VER(i915) >=3D 9)
> >  		drm_dbg_kms(&i915->drm,
> > -			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d\n",
> > +			    "num_scalers: %d, scaler_users: 0x%x, scaler_id: %d,
> > +scaling_filter: %d\n",
> >  			    crtc->num_scalers,
> >  			    pipe_config->scaler_state.scaler_users,
> > -			    pipe_config->scaler_state.scaler_id);
> > +			    pipe_config->scaler_state.scaler_id,
> > +			    pipe_config->hw.scaling_filter);
> >
> >  	if (HAS_GMCH(i915))
> >  		drm_dbg_kms(&i915->drm,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 6c3954479047..225b6bfc783c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -722,10 +722,11 @@ static void intel_scaler_info(struct seq_file
> > *m, struct intel_crtc *crtc)
> >
> >  	/* Not all platformas have a scaler */
> >  	if (num_scalers) {
> > -		seq_printf(m, "\tnum_scalers=3D%d, scaler_users=3D%x scaler_id=3D%d"=
,
> > +		seq_printf(m, "\tnum_scalers=3D%d, scaler_users=3D%x scaler_id=3D%d
> > +scaling_filter=3D%d",
> >  			   num_scalers,
> >  			   crtc_state->scaler_state.scaler_users,
> > -			   crtc_state->scaler_state.scaler_id);
> > +			   crtc_state->scaler_state.scaler_id,
> > +			   crtc_state->hw.scaling_filter);
> >
> >  		for (i =3D 0; i < num_scalers; i++) {
> >  			const struct intel_scaler *sc =3D
> > --
> > 2.25.1

