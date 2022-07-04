Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE0F565B9A
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jul 2022 18:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7E910E352;
	Mon,  4 Jul 2022 16:15:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCDE410E00A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jul 2022 05:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656912251; x=1688448251;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u1JbiB6fkjfjb4X1s+dHlUYxuzzB4lgQRBxrl5/Cq7U=;
 b=CiCdQYBZBuBH+rtYb1c3rK08Evgx2UQA3OFQTwIt9ms93Se5pXeSLoPp
 mXueKxrw94fRlnuwaWslwbAzDXsl+WH7a4MU6Wxv4sTkUMq0C1QOdYt9S
 ncl6bV7sHuDQL9ZhuDj6DLV1W0Ab1CHlGFIU5PnIi+Plq+3zTGseImqLH
 Dag3l3Yfg7FUSZbiR0XtWZB7D6rsS6tVhpqA4fdURi2ybvToCvhHT1aXe
 ck/OOh4vrc6BS3puJkQZMg5hYNIqTiUqtEALVO0IBlTESPUrJ3xVAHA76
 tpfFH86L9RVf2ONCHsbs6SA1qKqUl1yqg9cUiF8ZfywXTiTXmfo7yJlH0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10397"; a="369363055"
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="369363055"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2022 22:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,243,1650956400"; d="scan'208";a="592352236"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 03 Jul 2022 22:24:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 3 Jul 2022 22:24:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 3 Jul 2022 22:24:09 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Sun, 3 Jul 2022 22:24:09 -0700
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915/dp: wait on timeout before retry
Thread-Index: AQHYjTo2E2aiiMhtnkGEoJ44I8ufP61p0nSAgAPd2yA=
Date: Mon, 4 Jul 2022 05:24:09 +0000
Message-ID: <ebb45d3701bb4a78ad8b7bf1d926addc@intel.com>
References: <20220627105939.657782-1-arun.r.murthy@intel.com>
 <20220701110309.1237002-1-arun.r.murthy@intel.com> <87sfnlm6dw.fsf@intel.com>
In-Reply-To: <87sfnlm6dw.fsf@intel.com>
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
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/dp: wait on timeout before retry
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
Cc: "tprevite@gmail.com" <tprevite@gmail.com>, "Zanoni,
 Paulo R" <paulo.r.zanoni@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, July 1, 2022 4:45 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: ville.syrjala@linux.intel.com; Zanoni, Paulo R <paulo.r.zanoni@intel.=
com>;
> tprevite@gmail.com; Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv3] drm/i915/dp: wait on timeout before retry
>=20
> On Fri, 01 Jul 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > On linktraining error/timeout before retry need to wait for 400usec as
> > per the DP CTS spec1.2
> >
> > The patch with commit 74ebf294a1dd ("drm/i915: Add a delay in
> > Displayport AUX transactions for compliance testing") removes this
> > delay mentioning the hardware already meets this requirement, but as
> > per the spec the delay mentioned in the spec specifies how long to
> > wait for the receiver response before timeout. So the delay here to
> > wait for timeout and not a delay after timeout. The DP spec specifies
> > a delay after timeout and hence adding this delay.

The source side as per bspec says how much time to wait for sink response b=
efore calling timeout:
Reg: DDI_AUX_CTL, BitField: 27:26
Name: Time out timer value=20
Description:=20
Value	Name=09
00b	400us	 (default)		=09
01b	600us		=09
10b	800us	=09
11b	4000us

So this should meet the CTS requirement. For any non-timeout error from sin=
k, s/w should add
explicit delay of minimum 400us before retry (which is being done)

If 400us is not enough this needs to be checked separately or the timeout v=
alue in this register can be
changed from default of 400us

Regards,
Uma Shankar

> >
> > v2: fixed checkpatch warning and error
> > v3: used proper indentation
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>=20
> Based on the description alone,
>=20
> Acked-by: Jani Nikula <jani.nikula@intel.com>
>=20
> but would be good if you could get someone to double check the details ag=
ainst
> bspec and CTS.
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 2bc119374555..722c9f210690 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -286,13 +286,9 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
> >  			/*
> >  			 * DP CTS 1.2 Core Rev 1.1, 4.2.1.1 & 4.2.1.2
> >  			 *   400us delay required for errors and timeouts
> > -			 *   Timeout errors from the HW already meet this
> > -			 *   requirement so skip to next iteration
> >  			 */
> > -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> > -				continue;
> > -
> > -			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
> > +			if (status & (DP_AUX_CH_CTL_RECEIVE_ERROR |
> > +				      DP_AUX_CH_CTL_TIME_OUT_ERROR)) {
> >  				usleep_range(400, 500);
> >  				continue;
> >  			}
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
