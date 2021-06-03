Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0829399BB2
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 09:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9F36F413;
	Thu,  3 Jun 2021 07:37:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCBF6F414
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 07:37:33 +0000 (UTC)
IronPort-SDR: /RfZDN89EGCdkc8ILm4yK7SWUZVngFbGrCZqaM6eMhR5EPgA/Hh9y/w0tbffO0CsTyElS1MWzo
 GfGgZQPox4OA==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="203977707"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="203977707"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 00:37:31 -0700
IronPort-SDR: tlJ8kA1ULd9qNfeu2iVer8HfPGpIkWXSTG4+1Cmdc/5DxIqva0yt8C6J2dHWDo48H7eNh+UMYj
 PyUHj+pPRu5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="549835241"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga004.jf.intel.com with ESMTP; 03 Jun 2021 00:37:30 -0700
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 08:37:29 +0100
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 08:37:29 +0100
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC
 disable
Thread-Index: AQHXWEe27rwtQ1K7Ckir2cBzMejrGqsB5fOA
Date: Thu, 3 Jun 2021 07:37:29 +0000
Message-ID: <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
References: <20210603065356.15435-1-vandita.kulkarni@intel.com>
In-Reply-To: <20210603065356.15435-1-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
x-originating-ip: [10.184.70.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
 DSC disable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, =

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Va=
ndita
> Kulkarni
> Sent: torstai 3. kes=E4kuuta 2021 9.54
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC=
 disable
> =

> There can be a chance that pre os has enabled DSC and driver's compute co=
nfig
> would not need dsc to be enabled, in such case if we check on compute con=
fig's
> compression state to disable, we might end up in state mismatch.

I assume this fixes real gitlab issue too? =


> =

> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 4 ----
>  1 file changed, 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 19cd9531c115..b05a96011d93 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1161,10 +1161,6 @@ void intel_dsc_disable(const struct intel_crtc_sta=
te
> *old_crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> =

> -	if (!(old_crtc_state->dsc.compression_enable &&
> -	      old_crtc_state->bigjoiner))
> -		return;
> -
>  	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
>  	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);  }
> --
> 2.21.0.5.gaeb582a
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
