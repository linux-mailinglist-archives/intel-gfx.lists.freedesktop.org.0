Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DCF494D0E
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:33:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F2410E5E7;
	Thu, 20 Jan 2022 11:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1324E10E5C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642678386; x=1674214386;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/S2Ca9NJtaXZukLNOEda84oYXZu6xntLbuxFSxB2OXU=;
 b=N51ExSVXpcRiPwYlsoQAuyoUjQV3VoTF+R8hej405i02cwr/bd/2nvru
 QY3YNPMmju+080SqibW5Q8tiPQmGaFc5VhS26WXBI1Ltd3QE8SDTGQIQv
 tCoRovVn4gbLp+g0OGX5E6R2qvPqfSthdWZFsTd9Tavzd536B0Ct3Xy5k
 laLrB8QT6nQWd4sCGHFDJv7pIoC1uAG50QvPsIQ94zeAk6CdywAg7Iw63
 Br9doluGDjZ/s12pbFY15V5IM4T4Rm65oe7FR2plNYzRLfGX9nb/vfOjc
 MvA2xGiOVG69GesZtbc37ImC68vuWjwasgLhiBax3m+6hxyRIoxPnvejm A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="225311688"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="225311688"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:33:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="477760584"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga006.jf.intel.com with ESMTP; 20 Jan 2022 03:33:04 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 20 Jan 2022 11:33:03 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2308.020;
 Thu, 20 Jan 2022 17:03:01 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ESI we
 actually handled
Thread-Index: AQHYB6QkAssQKIWe+0ankHYUb3YnbKxrxa6Q//+pD4CAAGSnEA==
Date: Thu, 20 Jan 2022 11:33:01 +0000
Message-ID: <6d3beb1ab0e64e7ca6c7e5b15e87ed6a@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
 <20220112110319.1172110-7-jani.nikula@intel.com>
 <2e0b588d721e46a4ad9e94604421135f@intel.com> <87bl06acx2.fsf@intel.com>
In-Reply-To: <87bl06acx2.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ESI
 we actually handled
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



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 20, 2022 4:32 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the ES=
I we
> actually handled
>=20
> On Thu, 20 Jan 2022, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Wednesday, January 12, 2022 4:33 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>
> >> Subject: [Intel-gfx] [PATCH RESEND 7/7] drm/i915/mst: only ack the
> >> ESI we actually handled
> >>
> >> Seems odd that we clear all event status indicators if we've only
> >> handled some. Only clear the ones we've handled.
> >
> > Looks Good to me.
> > Reviewed-by: Uma Shankar <uma.shankar@intel.com>
>=20
> Thanks, please also see v2 of this patch I accidentally posted to the old=
 thread first. I
> guess you were replying to two threads too. :)

Yeah seems reply got mixed up. I have replied on correct versions now.

Regards,
Uma Shankar

> BR,
> Jani
>=20
> >
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++--------
> >>  1 file changed, 12 insertions(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 95e9f7220ab8..548419a4ead8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -3625,13 +3625,17 @@ static void
> >> intel_dp_handle_test_request(struct
> >> intel_dp *intel_dp)  }
> >>
> >>  static void
> >> -intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, bool
> >> *handled)
> >> +intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
> >>  {
> >> -	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, handled);
> >> +	bool handled =3D false;
> >> +
> >> +	drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, &handled);
> >> +	if (handled)
> >> +		ack[1] |=3D DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY;
> >>
> >>  	if (esi[1] & DP_CP_IRQ) {
> >>  		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
> >> -		*handled =3D true;
> >> +		ack[1] |=3D DP_CP_IRQ;
> >>  	}
> >>  }
> >>
> >> @@ -3683,7 +3687,7 @@ intel_dp_check_mst_status(struct intel_dp
> >> *intel_dp)
> >>
> >>  	for (;;) {
> >>  		u8 esi[4] =3D {};
> >> -		bool handled;
> >> +		u8 ack[4] =3D {};
> >>
> >>  		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
> >>  			drm_dbg_kms(&i915->drm,
> >> @@ -3699,15 +3703,15 @@ intel_dp_check_mst_status(struct intel_dp
> *intel_dp)
> >>  		    esi[3] & LINK_STATUS_CHANGED) {
> >>  			if (!intel_dp_mst_link_status(intel_dp))
> >>  				link_ok =3D false;
> >> -			handled =3D true;
> >> +			ack[3] |=3D LINK_STATUS_CHANGED;
> >>  		}
> >>
> >> -		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
> >> +		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
> >>
> >> -		if (!handled)
> >> +		if (!memchr_inv(ack, 0, sizeof(ack)))
> >>  			break;
> >>
> >> -		if (!intel_dp_ack_sink_irq_esi(intel_dp, esi))
> >> +		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
> >>  			drm_dbg_kms(&i915->drm, "Failed to ack ESI\n");
> >>  	}
> >>
> >> --
> >> 2.30.2
> >
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
