Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECB519055C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 06:56:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D47886E0BC;
	Tue, 24 Mar 2020 05:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A8C96E0BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 05:56:08 +0000 (UTC)
IronPort-SDR: uoyHMokFPnPYNOhtnzuo1N6wfAj4KJEhznOIT19iSiUAK9gjNDHcCukjP12uVzItuN7+CYLgRZ
 Uc5um9BaWK/A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2020 22:56:08 -0700
IronPort-SDR: zavyhOS+toviAsJspiGZt1DjEP5gFDYLpxMZEqvckkKkUHFv0DoGRCavdyVrEKlIBXVTvP9sXi
 D0Te/Vp0vRyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,299,1580803200"; d="scan'208";a="240163433"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga008.jf.intel.com with ESMTP; 23 Mar 2020 22:56:07 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 23 Mar 2020 22:56:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 23 Mar 2020 22:56:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2n1eAz7RsBJZ6TCME7ZgRG8X7XFnrROTxgIq7tw9Em3B72cY0VfgPQxvVR2RlL5vW5PltCtxYt971YH4IYxFajAOJDMcNTg6JgEeTL/p7eBtVOAnotvRO5iheSqctGsPfubFbMNZ3hpQ+nKykN8gR59Bn+hLycuI5HekwZJ6pPz4waHldsx4/M9FW6vIfH4Db5r3eJdyzTn/HhWQVlViYyeh29azd9WvUVkD5Z2xM+TkKZSOAz9G2MRQujPz+SQHf6um/LFrZjl4Spdh/8FtD30IlWo2LDqCnXYUJO79Mg8sZ7t4GQ7PtMndanzFStze2pEwtBq2UGBeASlpmZZ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/cEwOIjNorTFudBnPEcyNlfnngtvjinPQ6ew1KIG86c=;
 b=cC1jHX/jd8+xrk6LKACbifMA9N9cY11niO3Ank8OF8SMcOGs4InteErAPdlB5D1wxt09XTmQLBIkMFgMxnTSyb4eqgTlvtR+Ww4lv4aPRvQd2OPXGYDfx7u9yNMGTVLnPaphknIb+iLR+uXu6gOQP543XxjOfceSEkrff8RUG+BITG+obMFYXzbf3LMImaX+5CeY60BORab06nCY4RSV3J2IQUIvZg8xFkJGOfNsEVd4ofm5nXjMmYOFelWWg4ZtJk7dAxvzkj4TO+MWW+UmPHdZNM+P22B7DCKIu4HQ5hGUjtl2txPyS9GwHjH5H5QKwARV10z0WOrOkGmJmtPIVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/cEwOIjNorTFudBnPEcyNlfnngtvjinPQ6ew1KIG86c=;
 b=Mu5+Ud93WIjJvGGJnkM3AqIVKyXYXDgv9ZEs/F/TdtNtcmBp1D139ptYI9ibcC6/JRAPfbFbwYKTZxwE447Mrwnpmvh50u/tY3pM3UVVkHpTKkBKNwcOFsnIGnY0XSRE6JGXv/diW00//N8otUv4cQnQ/gd97jRkoX3uRHEeoIQ=
Received: from SN6PR11MB3134.namprd11.prod.outlook.com (2603:10b6:805:d9::12)
 by SN6PR11MB3392.namprd11.prod.outlook.com (2603:10b6:805:c5::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15; Tue, 24 Mar
 2020 05:56:05 +0000
Received: from SN6PR11MB3134.namprd11.prod.outlook.com
 ([fe80::8c55:1a2b:2cae:c5bf]) by SN6PR11MB3134.namprd11.prod.outlook.com
 ([fe80::8c55:1a2b:2cae:c5bf%7]) with mapi id 15.20.2835.021; Tue, 24 Mar 2020
 05:56:05 +0000
From: "Khor, Swee Aun" <swee.aun.khor@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
Thread-Index: AQHV/RT5mdG1W5elH0yPIMoH1YcKAqhQSJkAgAC8TICAAJghAIAAFylAgASMiLCAAQayoA==
Date: Tue, 24 Mar 2020 05:56:04 +0000
Message-ID: <SN6PR11MB3134C5E30ACA7E579FF18600AFF10@SN6PR11MB3134.namprd11.prod.outlook.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
 <20200320152406.GP13686@intel.com>
 <SN6PR11MB313483A95ADC942C6ADB4A23AFF50@SN6PR11MB3134.namprd11.prod.outlook.com>
 <SN6PR11MB3134E738523673EE95DFEE33AFF00@SN6PR11MB3134.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3134E738523673EE95DFEE33AFF00@SN6PR11MB3134.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=swee.aun.khor@intel.com; 
x-originating-ip: [14.192.208.146]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3224d203-2b32-4ec5-fdbc-08d7cfb80a8c
x-ms-traffictypediagnostic: SN6PR11MB3392:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB33927B51CA8C3D8D4C92FB61AFF10@SN6PR11MB3392.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03524FBD26
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(136003)(366004)(396003)(39860400002)(346002)(9686003)(53546011)(6506007)(52536014)(5660300002)(6636002)(66476007)(316002)(7696005)(64756008)(86362001)(66556008)(66446008)(76116006)(4326008)(110136005)(55016002)(33656002)(66946007)(81166006)(71200400001)(2906002)(8676002)(478600001)(8936002)(81156014)(54906003)(26005)(186003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR11MB3392;
 H:SN6PR11MB3134.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K364pD0qJG+S+B/mMh0JMdSEquE3iFXczs0vcW58XoL3BXQcQ6jSXf7eC/C1/Bxxemy5qBqWvHYCdobHka/IYKBSeDK6sl+ycRiGTiSxn9eSJAq+eAFh6V8fAB14D75qCD4tQLXYk6s8+lusuLzOpJ6Q6UNkYrRUKM+eLXODpdX7h9n/KsOyByHfP0udqI3kL8nwAmNbe6fOaTWVhCZnz/COeW6dqHpaBNH6xVSRRl0Yg4QkbVTrDsdwJMzbG3f0yVkgElOIyAGtrHazbuMwo3DkW802DIjJ/fDd49DRNUGSzCN3d2UsL9R4j5yOeG41vpq03yrROnNCfxVW8ZOD1m+1CNaQaeN95brZG5Dsxv9hvRtzo7AR1lzyW6A+kGMKpm6lg6EsBhJxbf61rIeivoicx7vTPRLsgG4olQdLH592bUJwnqeY1eSn1dwlvmru
x-ms-exchange-antispam-messagedata: OIVENVQspjaNq8XQRIT5iCGllLue3rKq9n/3VdXbqEGcBkdYbBRkc3mABM5+nQLKhozIvFERpwYYiwYepX6v7AAVBjCgsXEanc1KxKgjip3Twii7yFRTopxyZfbpZ8Uko68mzRoVu3hMMyVeMkb5AA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3224d203-2b32-4ec5-fdbc-08d7cfb80a8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2020 05:56:05.2579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HUKfyhsECnCMpkaLmcYCrcS0kKhbidPS+RHD/vSNW42VqwQCdjg6NJuS/Z4RjNCOkHpLrwt5tg6hF+w6HwZzRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3392
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

Git diff without debug print. Please review. Thanks. =


diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm=
/i915/display/intel_display.c
index 4d1634ed6a1b..806cf622fb39 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -14108,11 +14108,13 @@ static int intel_atomic_check(struct drm_device *=
dev,
        int ret, i;
        bool any_ms =3D false;
 =

+
        /* Catch I915_MODE_FLAG_INHERITED */
        for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
                                            new_crtc_state, i) {
-               if (new_crtc_state->hw.mode.private_flags !=3D
-                   old_crtc_state->hw.mode.private_flags)
+
+               if (new_crtc_state->uapi.mode.private_flags !=3D
+                   old_crtc_state->uapi.mode.private_flags)
                        new_crtc_state->uapi.mode_changed =3D true;
        }

Regards,
SweeAun

-----Original Message-----
From: Khor, Swee Aun =

Sent: Monday, March 23, 2020 10:29 PM
To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>; Shankar, Uma <uma.=
shankar@intel.com>
Cc: Souza, Jose <jose.souza@intel.com>; 'intel-gfx@lists.freedesktop.org' <=
intel-gfx@lists.freedesktop.org>
Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot =
for audio codec init

Hi Ville, =


You are right, your suggestion will fix this issue.

#Based on dmesg log, uapi mode private flags change is captured ...
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

#Here is the git diff
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
From: Khor, Swee Aun
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
