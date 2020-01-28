Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181F014BA49
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 15:38:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59AF76E0AD;
	Tue, 28 Jan 2020 14:38:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B4CC6E0AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 14:38:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 06:38:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="222124392"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga008.jf.intel.com with ESMTP; 28 Jan 2020 06:38:09 -0800
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jan 2020 06:38:08 -0800
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx122.amr.corp.intel.com (10.18.125.37) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Jan 2020 06:38:08 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.20]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.127]) with mapi id 14.03.0439.000;
 Tue, 28 Jan 2020 20:08:05 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsi: Enable dsi as part of encoder->enable
Thread-Index: AQHV1QfqSHAfyK2EVE6Yq5S8FrsRWKf+DVmAgAIYBgA=
Date: Tue, 28 Jan 2020 14:38:04 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80A195D5@BGSMSX108.gar.corp.intel.com>
References: <20200127111608.7246-1-vandita.kulkarni@intel.com>
 <87o8upcdie.fsf@intel.com>
In-Reply-To: <87o8upcdie.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjU2YjEyNDgtODc0OC00ZmY5LWJjZjQtZjI4M2IxOWRjODUzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieUFWYVVYUjg1VTFodFN5emFMNW1idjIrWldFVFdTXC9uVVdoYnRYZk9FYVFJSittalNpdEhDYWZIRlVNZmlyY3gifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Enable dsi as part of
 encoder->enable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Monday, January 27, 2020 5:34 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: Re: [PATCH] drm/i915/dsi: Enable dsi as part of encoder->enable
> 
> On Mon, 27 Jan 2020, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> > Enable the dsi transcoder, panel and backlight as part of
> > encoder->enable and not encoder->pre_enable.
> 
> That's the *what*, and we can see that much from the patch.
> 
> But we need to know *why*, and why you think it was done like this before, and
> why it's okay now, etc.

Now this is necessary, as we should configure pipe parameters like pipe_src_size before enabling the pipe_config for dsi,
And we are using the same code path as other encoders.
I will update the same in the commit message.
Thank you,

Also please let me know your opinion on handling pipe src size part to icl_dsi to before enabling the transcoder.

> 
> BR,
> Jani.
> 
> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index 1186a5df057e..d40ee5951168 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1086,8 +1086,6 @@ static void gen11_dsi_pre_enable(struct
> intel_encoder *encoder,
> >  				 const struct intel_crtc_state *pipe_config,
> >  				 const struct drm_connector_state
> *conn_state)  {
> > -	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> > -
> >  	/* step3b */
> >  	gen11_dsi_map_pll(encoder, pipe_config);
> >
> > @@ -1101,6 +1099,13 @@ static void gen11_dsi_pre_enable(struct
> > intel_encoder *encoder,
> >
> >  	/* step6c: configure transcoder timings */
> >  	gen11_dsi_set_transcoder_timings(encoder, pipe_config);
> > +}
> > +
> > +static void gen11_dsi_enable(struct intel_encoder *encoder,
> > +				 const struct intel_crtc_state *pipe_config,
> > +				 const struct drm_connector_state
> *conn_state) {
> > +	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> >
> >  	/* step6d: enable dsi transcoder */
> >  	gen11_dsi_enable_transcoder(encoder);
> > @@ -1727,6 +1732,7 @@ void icl_dsi_init(struct drm_i915_private
> > *dev_priv)
> >
> >  	encoder->pre_pll_enable = gen11_dsi_pre_pll_enable;
> >  	encoder->pre_enable = gen11_dsi_pre_enable;
> > +	encoder->enable = gen11_dsi_enable;
> >  	encoder->disable = gen11_dsi_disable;
> >  	encoder->post_disable = gen11_dsi_post_disable;
> >  	encoder->port = port;
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
