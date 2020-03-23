Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A568718F6EE
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:29:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6E2C89ECD;
	Mon, 23 Mar 2020 14:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8DAF89ECD
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:29:28 +0000 (UTC)
IronPort-SDR: 1wzFmUqxFgpXBGA5xJzV31+/hjhkl4CXliFwmqKDH5WbEMhU1A4T3pVEp13JYgqOeC1ysPv4xA
 pPn0v3/QykYQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 07:29:28 -0700
IronPort-SDR: 1VRPigsSVDjwUggBX+o6I7pHdJ5QUKtXO+9q6NVrHwD6s6gwNaLxxpJ6napeqhdP9i4FYoPIXw
 s+y99gPk76Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,296,1580803200"; d="scan'208";a="239940624"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 23 Mar 2020 07:29:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 07:29:27 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 23 Mar 2020 07:29:26 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 23 Mar 2020 07:29:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Mon, 23 Mar 2020 07:29:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gdu6GlG2ibUOIKcMsl78URYhOWbLHwfBiftQ4/1mF5nXd72j6D8pfUevWXFWCNvgVwwFpQ+/DiWeKbTi2a13FNdF6/f/vPv0RFjWgOmyZWjP+mnb6olC3sMlgoQ90/LHvQ5qraeDbZpGSpVY7e1BQY6A6r/IXkhaDaYBNFDE0I1A07MaXszBoBwgo3T2gXH+LqGsBRY6fvWy+S06XvMmsqEuH5TKT3ltLqxjHMF8HufKmAEbvph1LpC0eOMKSIsmh9dbEF45HhVaBXCBVo2TNrRrh8WgEH/qhnNf8+z7hieZ62LVCuzEp2vkjH3xZ6D7j+nQ8/zEmueqo3we5dq0fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WbAPgzAiqo6ruH2GD92rs0m6nIUEnOF3SM2GUM7iycQ=;
 b=CykpY84iA9/jTdkqcbCSfJFfWVlvZfEuVRUUyokCkpD4O04Ew8LOXhsXATF5FK9eAyogTla97CDrNpQd8/ED7JweZ+y5Fyv3bfvS8t9vQPrVULBqZ/C3gvDiuouudgc/OxN5uPM6uROgUSJn5QrJ3CVulTDgVeR+rdXVxP70+J9Owza1RBVeq3mudJu3jiB0a0kLKmTRVnC9B1DM41fbV1wkghBlBEtxYvdfo99oqb2kqYrU5t+Cmvw2dr+Snfk8SjEYBSDmmGFXPghARjZ6CjrpdjlI0pfDUwr4Rrop0umlhx4e4Xt0Cw0tQ+s0w57k8VwnXcdT0kuN2ELJQ68lYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WbAPgzAiqo6ruH2GD92rs0m6nIUEnOF3SM2GUM7iycQ=;
 b=QLBl+ex7E20Bt5rz4g7oVOnkUuHCfnudJPAqXhDYJkRld8N5grkuq8ZsDTFx/qL1RGO6oR+tzODZyuG4MWiI9FDrgWJSpT9ixrAwSIly+dwkcvE0TD2C/PNoVrr+tsz+dv/Gl2dmRh5uxQTwHRHtsPrCLqQKCEf/hV9IcMLE9wc=
Received: from SN6PR11MB3134.namprd11.prod.outlook.com (2603:10b6:805:d9::12)
 by SN6PR11MB2752.namprd11.prod.outlook.com (2603:10b6:805:59::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.22; Mon, 23 Mar
 2020 14:29:25 +0000
Received: from SN6PR11MB3134.namprd11.prod.outlook.com
 ([fe80::8c55:1a2b:2cae:c5bf]) by SN6PR11MB3134.namprd11.prod.outlook.com
 ([fe80::8c55:1a2b:2cae:c5bf%7]) with mapi id 15.20.2835.021; Mon, 23 Mar 2020
 14:29:25 +0000
From: "Khor, Swee Aun" <swee.aun.khor@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
Thread-Index: AQHV/RT5mdG1W5elH0yPIMoH1YcKAqhQSJkAgAC8TICAAJghAIAAFylAgASMiLA=
Date: Mon, 23 Mar 2020 14:29:25 +0000
Message-ID: <SN6PR11MB3134E738523673EE95DFEE33AFF00@SN6PR11MB3134.namprd11.prod.outlook.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
 <20200320152406.GP13686@intel.com>
 <SN6PR11MB313483A95ADC942C6ADB4A23AFF50@SN6PR11MB3134.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB313483A95ADC942C6ADB4A23AFF50@SN6PR11MB3134.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=swee.aun.khor@intel.com; 
x-originating-ip: [192.198.147.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f1ffb90-d10e-483b-0604-08d7cf36966d
x-ms-traffictypediagnostic: SN6PR11MB2752:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27524B765135A746B0DC8A89AFF00@SN6PR11MB2752.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0351D213B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(366004)(39860400002)(376002)(396003)(346002)(136003)(199004)(316002)(53546011)(6506007)(71200400001)(26005)(33656002)(186003)(86362001)(110136005)(54906003)(66556008)(64756008)(66946007)(66476007)(66446008)(76116006)(6636002)(55016002)(5660300002)(8676002)(478600001)(8936002)(9686003)(7696005)(52536014)(4326008)(81156014)(81166006)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR11MB2752;
 H:SN6PR11MB3134.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KoHxuSkd6eJuJTpl5icjEvf0oYe5jdjMOMPo8EZa0JTYItEp67qTHweWO6OOfZ+1GfD1xKMglCfCuek4sXYY9keSbXBzr1AHRWoGc7Gj+mjYQJY99l+/RZ6PkBVIqQIrmhjE9E282idwkK+0hkWrw1gCGAn1tXU3+uiQwhh0b+xfG32pRW2mSzEg34LlZCYIzrTEeg2bZio9ynU9jH3RUB3MXYlz9nwfnkhbi0QqYd0z+KnwUxZmAOpH64amUgK92PDQdcgQYVoEFBrOYv0FXpPnDo4t/+koFNuQV+xt8ahKNuxMeEdrpB8gUAgjw8SwKgwHeq6G8+yozB3jnU85vbr8qbh1rKrDII5Oe0wvIaur5PHyMGBrcYWz3k0cLusZRiDavZf8b+UfZ5aoHKZ6QdGEa3jxeXGIEPeInUuYUsd7EJ4Arx6TwVNB++tPVlHg
x-ms-exchange-antispam-messagedata: 9NadEi0COnSrDp/PgRiJ5ThB3Um/sqS10To+XxHy4i0OLqi5auevqsixNfD/+xyaxLkuWs/V15tePIHk3UiQPOmPc/OjGkci4Q21R0UyL1cjJH8DIA5lV8dFhUwL0a2urXdKN1VWunvgaBIEByij7g==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f1ffb90-d10e-483b-0604-08d7cf36966d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2020 14:29:25.3956 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CEfCyQc3goA5tUxQMhhqE86nTKd8HpGZG06JFXmRydPIxLPcqZr4QmUPTEeW46jYuNcgWbXS11/Zm0ICkeMHhw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2752
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

Hi Ville, =


You are right, your suggestion will fix this issue.

#Based on dmesg log, uapi mode private flags change is captured
...
[   11.404578] fbcon: i915drmfb (fb0) is primary device
[   11.404743] [drm] SA: intel_atomic_check: uapi change =

[   11.404744] [drm] SA2: intel_atomic_check: new_crtc_state->uapi.mode.pri=
vate_flags=3D 0, old_crtc_state->uapi.mode.private_flags=3D 1  =

[   11.404744] [drm] SA2: intel_atomic_check: new_crtc_state->uapi.mode.pri=
vate_flags=3D 0, old_crtc_state->uapi.mode.private_flags=3D 0  =

[   11.404745] [drm] SA2: intel_atomic_check: new_crtc_state->uapi.mode.pri=
vate_flags=3D 0, old_crtc_state->uapi.mode.private_flags=3D 0  =

[   11.404799] [drm:intel_atomic_check [i915]] [CONNECTOR:110:HDMI-A-2] Lim=
iting display bpp to 24 instead of EDID bpp 24, requested bpp 36, max platf=
orm bpp 36
[   11.404855] [drm:intel_hdmi_compute_config [i915]] picking 8 bpc for HDM=
I output (pipe bpp: 24)
[   11.404898] [drm:intel_atomic_check [i915]] hw max bpp: 24, pipe bpp: 24=
, dithering: 0
...

#Here is the git diff =

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 4d1634ed6a1b..b5c56cd513d9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14108,11 +14108,15 @@ static int intel_atomic_check(struct drm_device *=
dev,
 	int ret, i;
 	bool any_ms =3D false;
 =

+	DRM_INFO("SA: intel_atomic_check: uapi change \n");
+
 	/* Catch I915_MODE_FLAG_INHERITED */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (new_crtc_state->hw.mode.private_flags !=3D
-		    old_crtc_state->hw.mode.private_flags)
+
+		DRM_INFO("SA2: intel_atomic_check: new_crtc_state->uapi.mode.private_fla=
gs=3D %d, old_crtc_state->uapi.mode.private_flags=3D %d  \n", new_crtc_stat=
e->uapi.mode.private_flags, old_crtc_state->uapi.mode.private_flags );
+		if (new_crtc_state->uapi.mode.private_flags !=3D
+		    old_crtc_state->uapi.mode.private_flags)
 			new_crtc_state->uapi.mode_changed =3D true;
 	}

Regards,
SweeAun

-----Original Message-----
From: Khor, Swee Aun =

Sent: Saturday, March 21, 2020 12:55 AM
To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Shankar, Uma <uma.sh=
ankar@intel.com>
Cc: Souza, Jose <jose.souza@intel.com>; intel-gfx@lists.freedesktop.org
Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot =
for audio codec init

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
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
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
