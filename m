Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8145D18D506
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 17:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7C196E176;
	Fri, 20 Mar 2020 16:55:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A6BD6E176
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 16:55:04 +0000 (UTC)
IronPort-SDR: +25+a82oqGkI1HW+dyCgeTH3NM+Hk4y+SEHAravKcDRLoHj12687869gJblp0HNWUXxFi+u17y
 j/kdxU3oXXjg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 09:55:03 -0700
IronPort-SDR: jCAhKaP152m1OMusQuyFs6TIZocVnEZp94ljxppF10Qah7D/F1/4Q5cu7QyMwOK4aDg8VbL2eu
 qF53RBrFRTww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,285,1580803200"; d="scan'208";a="237273838"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga007.fm.intel.com with ESMTP; 20 Mar 2020 09:55:03 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Mar 2020 09:55:03 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.51) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 20 Mar 2020 09:54:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ipPlGAQF/I9fE9KU6rcLI8HdpLLxHKg8Q9SqpwuByDC2Xro9zlfQAEOJ0jRL9O8rGznM86AxttuGFRj3db6K1fvqWEbJ4RpOXUsDfC1PaG7jrR7cdPfBvtB9zvZbJQp17b00fIAASgI8We6i6WX5hH9E5v/QNAGqY+wVs6TsM5RacZvhWfMKUpsh4Ujqs4LloHiyHp6W1NzjNUF2lXiGdiGt4zFVWtrGoSgzwvRhMkw7PounFqsjouEe4LIp7eHt4Fn9wBPlJDlM2tWUEVtlT/4is9y8IDScUQwF/m1aV3bX8ChnTd64Igz6Czd2HOK7h0vYa1gSNsfsBuTFCel5lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZlOPcKvjtIYWxqfh5C0q+TUuANHZTTiFaDxSJaGhVGI=;
 b=MN6F6RNGB1DbOdH9GG9W49QdEnkvPhpj1DaA8S3MfhjPYZdmli9C/opnjGt3erfEEeQ5V47jTaWA0mxN1DpgdzstmAXuJovtcp5M8B2kTO5DQWc9j17xMzJpHwxHBQxuCq7owTqW9ni6Ha1dNY275lycshbTPlhCcZ4wBlmRga8E0ab1tMj90ySv618Hil19ylECidb+jdKuHsEp7FoyUMJc4NMS3dvLNFGo5mo/KeLfL2rSZsEApvE6/0CEVxXaqrN4+KTpG88M+dcJhmivVuH7kFIsJKodvw4FPxkt9qf5ZpGNn1nHCHvOCSjIo76xmEXxul3MdUGz8TQumwhDzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZlOPcKvjtIYWxqfh5C0q+TUuANHZTTiFaDxSJaGhVGI=;
 b=n+hOjjpTi1cO/QP/fVGNzGzthC9l11jc/f6m/0QImvETkmrY6ioxWEzNoftT49Fq90V5tEs8iZcY8glMObrqfN11hgJRi+vJmBVL44Hdibzd2EP7uS5X0yn4rfFw5mz5thUj8B5SnU9X2dP2zZubcW9KMKfqAxIImXBS1jDkiso=
Received: from SN6PR11MB3134.namprd11.prod.outlook.com (2603:10b6:805:d9::12)
 by SN6PR11MB2734.namprd11.prod.outlook.com (2603:10b6:805:59::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Fri, 20 Mar
 2020 16:54:42 +0000
Received: from SN6PR11MB3134.namprd11.prod.outlook.com
 ([fe80::8c55:1a2b:2cae:c5bf]) by SN6PR11MB3134.namprd11.prod.outlook.com
 ([fe80::8c55:1a2b:2cae:c5bf%7]) with mapi id 15.20.2835.017; Fri, 20 Mar 2020
 16:54:42 +0000
From: "Khor, Swee Aun" <swee.aun.khor@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
Thread-Index: AQHV/RT5mdG1W5elH0yPIMoH1YcKAqhQSJkAgAC8TICAAJghAIAAFylA
Date: Fri, 20 Mar 2020 16:54:42 +0000
Message-ID: <SN6PR11MB313483A95ADC942C6ADB4A23AFF50@SN6PR11MB3134.namprd11.prod.outlook.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
 <20200320152406.GP13686@intel.com>
In-Reply-To: <20200320152406.GP13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=swee.aun.khor@intel.com; 
x-originating-ip: [192.198.147.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bc64b05-4020-42da-af7c-08d7ccef62d0
x-ms-traffictypediagnostic: SN6PR11MB2734:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2734C350AC23981C1201245EAFF50@SN6PR11MB2734.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:792;
x-forefront-prvs: 03484C0ABF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(39860400002)(366004)(396003)(346002)(199004)(5660300002)(71200400001)(33656002)(6636002)(52536014)(64756008)(4326008)(9686003)(55016002)(66446008)(66946007)(478600001)(66476007)(66556008)(76116006)(26005)(53546011)(186003)(8676002)(6506007)(81156014)(7696005)(8936002)(110136005)(54906003)(316002)(86362001)(81166006)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR11MB2734;
 H:SN6PR11MB3134.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hc54s7Ae4W+V2AyZES04SU7XEvVioHhHwyEPIPyaH4l7nPHNT3/sQZTaOJg3r7IjRKxIfp9xipa3JWnOMb2k42N8i56eBVFFy+DFD45grDx6tVg8m869eZdAMi20TmBX4319McHpayvAjgRffpHQs7feI+J2GOlOxBWB6sFzZxQZlmOGoL0OPV8hSzeSUSuH4qSDPUdGDqlcMYHUmu6q8Yvx77BwNKZErxXOIh28XOyurr3aM8nh9Kn5bGyf95vbgSt9mW3V0dj9dffToAQP3i3ppzR3tyEU5n+dpnN/RmnStaDmYOVW5eWiPUGwMrdu5h+RPRF6nxAl7SA88KZXzNp9himcamqoUo7DrFjvasewO1TyOiYU4KnhK915v0rmNPBM3xp4AgoJcCPMpnoYno5iytvuDVi2CA3PuWBHKCfJP+4giVUorkt2yu0QUflu
x-ms-exchange-antispam-messagedata: 5trXsKQQrVul5GOUYy11d2B1/uMfMg9Ii979ONCp8rTc7bA6NkQGNyiKnRu73yjMWrQaT0EdAYtULbXnW0lYfk3zPiadI8jzaDH87EPfHlzsBo1GPkAhZPoeK9fk24FWUnKJE5bkAC4D0es4F8r5ow==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bc64b05-4020-42da-af7c-08d7ccef62d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2020 16:54:42.1709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ypNTyAsbqptp8ypD1KIiiRJeu+A2bAYlKhRRTVSNZMvxNFKmBhNc/chVz5A7bU/mP4g9YEg5K7507nQ2Y+83Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2734
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
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

Hi Ville,
You means this change right? Sure. Will try your suggestion as well. =

By the way, what is different between hw.mode and uapi.mode and how we know=
 which to be used? It used to only base.mode before hw/uapi split patches. =


> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14671,8 +14671,8 @@ static int intel_atomic_check(struct drm_device *=
dev,
>         /* Catch I915_MODE_FLAG_INHERITED */
>         for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>                                             new_crtc_state, i) {
> -               if (new_crtc_state->hw.mode.private_flags !=3D
> -                   old_crtc_state->hw.mode.private_flags)
> +               if (new_crtc_state->uapi.mode.private_flags !=3D
> +                   old_crtc_state->uapi.mode.private_flags)
>                         new_crtc_state->uapi.mode_changed =3D true;
>         }
> =

> ?

Regards,
SweeAun

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

Sent: Friday, March 20, 2020 11:24 PM
To: Shankar, Uma <uma.shankar@intel.com>
Cc: Souza, Jose <jose.souza@intel.com>; intel-gfx@lists.freedesktop.org; Kh=
or, Swee Aun <swee.aun.khor@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot =
for audio codec init

On Fri, Mar 20, 2020 at 06:19:37AM +0000, Shankar, Uma wrote:
> =

> =

> > -----Original Message-----
> > From: Souza, Jose <jose.souza@intel.com>
> > Sent: Friday, March 20, 2020 12:36 AM
> > To: Shankar, Uma <uma.shankar@intel.com>; =

> > intel-gfx@lists.freedesktop.org
> > Cc: Khor, Swee Aun <swee.aun.khor@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset =

> > at boot for audio codec init
> > =

> > On Wed, 2020-03-18 at 17:00 +0530, Uma Shankar wrote:
> > > If external monitors are connected during boot up, driver uses the =

> > > same mode programmed by BIOS and avoids a full modeset.
> > > This results in display audio codec left uninitialized and display =

> > > audio fails to work till user triggers a modeset.
> > >
> > > This patch fixes the same by triggering a modeset at boot.
> > =

> > We had the same issue for PSR, take a look to the fix:
> > commit 33e059a2e4df454359f642f2235af39de9d3e914
> > drm/i915/psr: Force PSR probe only after full initialization
> > =

> > Maybe make this even more generic.
> =

> Yeah this looks to dealing with almost a similar need. Thanks for =

> pointing this out, will try to come up with a generalized solution.

How about just fixing the uapi vs. hw fail I showed instead of adding even =
more hacks?

--
Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
