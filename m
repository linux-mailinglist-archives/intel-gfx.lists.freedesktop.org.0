Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E57139282
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 14:53:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78DD897F0;
	Mon, 13 Jan 2020 13:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F265D897F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 13:53:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 05:53:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="213000283"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2020 05:53:18 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 13 Jan 2020 13:53:17 +0000
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 13 Jan 2020 13:53:17 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Mon, 13 Jan 2020 13:53:17 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/9] drm/i915: Relocate intel_attached_dp()
Thread-Index: AQHVqs3EcgiIeU3w70yO3pCaVJAwuafo3AAA
Date: Mon, 13 Jan 2020 13:53:17 +0000
Message-ID: <55ff84617b1bb3b0e8c17673816030c17b79b0ef.camel@intel.com>
References: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
 <20191204180549.1267-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20191204180549.1267-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <5608C5E9AEC0CE459C83561EC8A6E301@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Relocate intel_attached_dp()
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-04 at 20:05 +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> We have uses for intel_attached_dp() outside of intel_dp.c. Move
> it to a header.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 5 +++++
>  drivers/gpu/drm/i915/display/intel_dp.c            | 5 -----
>  2 files changed, 5 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 79c7454ff510..92bd3d04ad80 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1483,6 +1483,11 @@ static inline struct intel_dp
> *enc_to_intel_dp(struct intel_encoder *encoder)
>  	return &enc_to_dig_port(encoder)->dp;
>  }
>  =

> +static inline struct intel_dp *intel_attached_dp(struct
> intel_connector *connector)
> +{
> +	return enc_to_intel_dp(intel_attached_encoder(connector));
> +}
> +
>  static inline bool intel_encoder_is_dp(struct intel_encoder
> *encoder)
>  {
>  	switch (encoder->type) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 93f3d232fcb5..50b9b81d37db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -146,11 +146,6 @@ bool intel_dp_is_edp(struct intel_dp *intel_dp)
>  	return intel_dig_port->base.type =3D=3D INTEL_OUTPUT_EDP;
>  }
>  =

> -static struct intel_dp *intel_attached_dp(struct intel_connector
> *connector)
> -{
> -	return enc_to_intel_dp(intel_attached_encoder(connector));
> -}
> -
>  static void intel_dp_link_down(struct intel_encoder *encoder,
>  			       const struct intel_crtc_state
> *old_crtc_state);
>  static bool edp_panel_vdd_on(struct intel_dp *intel_dp);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
