Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7F1464482
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 02:33:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5EF76E200;
	Wed,  1 Dec 2021 01:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F1A6E200
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 01:33:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="297161640"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="297161640"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 17:33:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="459068976"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 30 Nov 2021 17:33:21 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 17:33:21 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 17:33:21 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 17:33:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Occ0scz2lVsCF0Y+9o1wErEWUz3xohnwNk1DoENBPy2jUS1rC541p2RiKvaW6yPZLleChnJ8NTOUS1R9LRazyLZl7tkRjzoOzMRzpYJl6bQyOjZHBBvnM840GMauRDQfHxGLg6KEsYDF1Nm34pbEmG0wPsB2u0hbMzJq84m+whUK1/csW18+M07diO7Lrc/ptDm4BHWSHRjb9/ye4n7AT1xSDKiuK2r4fM0LRTHfKFg4ULFIq5LwbDPtIXaJ52Eu90/FnP/1Nl7rHJZneSQYCUIxkIBiXZ+52z02vnJOsiLknCG85Uv+cCMOfazBoGYdg3nW2g83TOHYDLITg5zqGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h+PC8FCHPjENuzdA3VvMedw/GGp/c1qGTYePHO5Q2Vg=;
 b=Ret3uJY2KIZTP3I83r44cq8RGxlj4749IV+er3h2ORTlPVmJskISa0VwTlQNxfv/b+XZ8lp3zMM23AJaJ6MdmNqSdwjd0t/Mn9iCnVnBZiBhsad4A4cm5626smVnfwRWVz8e2ns3CK+tmNTJIaswO6zEGvTGpcPCpkUi15+8drTVlJN50PBN+puKCNhkjo7BAvWdTo3SP5+tuM81Edc9AhBxpTnZar2VyipbyIx3QtsnFFa/n/H/KlLN3oK8TNxYSSkVEPJaJifLSGL9atkwMzowj23v0iEGHN+GIo6Y+Vqt4Ek9617Ly8jpFy/06pdGX0hX1G37BP5EUCRNQDKaoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h+PC8FCHPjENuzdA3VvMedw/GGp/c1qGTYePHO5Q2Vg=;
 b=g7GoxmDixFExbhU6PPFxKrN67J6z/PLJFJgeKg1nY1rUhuoSmvl4oju6e15D/GiUKlIDWCI8yGv8ce0hBhu3+6doiN536F8wt7xxsAdJE9pDSe4z+7iIIDpytAJKkBRJZt1Go/sIBAXbuEYJ9+lMkmFiVBrcBNkRYfBHYe1pI5g=
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by DM6PR11MB3820.namprd11.prod.outlook.com (2603:10b6:5:140::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Wed, 1 Dec
 2021 01:33:18 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69%7]) with mapi id 15.20.4755.011; Wed, 1 Dec 2021
 01:33:18 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
Thread-Index: AQHX5gVprwDdC/GP0EKN6F+06sVOHqwcTtIAgAAQAACAAHuwoA==
Date: Wed, 1 Dec 2021 01:33:18 +0000
Message-ID: <DM6PR11MB4204C5AEE52A315DEC1EA89289689@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20211130160534.7983-1-vidya.srinivas@intel.com>
 <20211130171220.8622-1-vidya.srinivas@intel.com> <YaZo4CaWe4Mtx4Me@intel.com>
In-Reply-To: <YaZo4CaWe4Mtx4Me@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8593be8e-e9ec-4a87-1f48-08d9b46a8d7a
x-ms-traffictypediagnostic: DM6PR11MB3820:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB3820595D2AB9142F4B323D0D89689@DM6PR11MB3820.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pz35V7StHNusC85TqOPvzsT9B4/lUOWS4x1n0I40YUi5j95qY4uRaecP7vMCsC2n/f8mYA3h2yfxExX9RIa4IVoz2nUcyjSaNZ5jgrhRodmHaJ7FkzMqYIZvUDBuBYHPLkTEV/OlcRUMsCjHWRoT9ZtCBwmmpIwZ46MdhSHFNttVq1EUIpKEaQMv0NOCO5ffW8vNA64Y5K7b2yNo65uWNh7gbYZ8p8PDxsZjR+TuBww4DKARIf/s7+T3PBoqCKd71b8vRXOpx9GKLLr3Njy+xbZV7IfT9yEKewWstjTOn8zCIOH94zwafZvD0xrTIPTcsIFAklqlsiO+3w4RnRxWBt9A0JbSPzgl7KT7UujY2Cj4/uQCiscL9+z00FTGDYRg/3ZM0V18Amu0Y3Vu0ovrc4DvY53khTL5UP6oZgPBSZh/18qm6DHR+1Mn6BwnJPeALA8VN9FU3ZzQhvVBToz3JlwMt7j41swjMpf8hZo1KMzyeQoCjyKwIK7Q7lD0tvRtR8jcF5E0G5O9qFy275yOdni1R86j1bkbqNid9fVILSYuXuHyxqLo2qHudOH7wqZcJLG2fCfrifWxPr2vZajEPcHqUxWiLhEK8hDpmAPJIRV9ro1GazGFIdwntTjJhjXK4jyJr7Mh/cOSuZZYnLfJ2GeUMOlTGhm88K/VF5Ed3qbHW9bhXbp3j73HAY6wHsfc3Sj32m10tYLCbxfft+sn4g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(4326008)(76116006)(64756008)(66946007)(9686003)(66476007)(66556008)(7696005)(66446008)(5660300002)(52536014)(508600001)(6916009)(55016003)(86362001)(71200400001)(8676002)(2906002)(6506007)(38070700005)(26005)(54906003)(186003)(122000001)(316002)(38100700002)(83380400001)(53546011)(33656002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zSF8vwoeCbOuFu485+fK4IaNbEKN6qkrftKIjBUlxowU9heL3m59zrUPsl?=
 =?iso-8859-1?Q?92Tvp7v39Nr7rjR6JPERJQA7YqWchiR/6ly/3/OIysJ4n1HnLzo9ZtOyNv?=
 =?iso-8859-1?Q?RcsfcjJGoj9eHkfYfTqPi7lmVm/jB0cviVK3WwItcwYAukarVFXhzhtXOH?=
 =?iso-8859-1?Q?PjMkpboGzh/TV/9EmVPx56NsHUKo3z01+/awtTKt1/PE8MXJquXWA3NJMv?=
 =?iso-8859-1?Q?moEgHZvRwMRHKQLESh/7SNoez1CGNk25AjD5NHK9nfTfKdAqtuX6673Sf6?=
 =?iso-8859-1?Q?p0PMVpK4ENsi4o+0DxOSQ1jEIf+co69oL9nVHGSkovZX7xfq9DiXCGWSYi?=
 =?iso-8859-1?Q?YzyXb81V4/7QxddMqz0F3uovo/U8b3ObtY4h4/gsQVF492ec9e4Rswys5H?=
 =?iso-8859-1?Q?Ei1l6FdJ0RzAAdsWDrujNNkTsyL4iORLcVM1Z2DswiuMZLTMU4IgUOhD4i?=
 =?iso-8859-1?Q?HbvY9HQyorbbRf9rEEgtFDuSHs7I26HytpHGR+q+6iy0r8/OphR6ILftVY?=
 =?iso-8859-1?Q?JqC/5CfqgJ+I4oj2UAAcoTtqQU7ooZvBIOOYx+C4nWCDD/KxWDp+wWdV6k?=
 =?iso-8859-1?Q?1VOrWQLpmX38GicYxITJkU+P4YBbJJ6yFUjTdmhqMT9ot4u5PpqrEv0+dB?=
 =?iso-8859-1?Q?NCiz58YVmf0KkYz/1SlD5lqJT83R33Jawpu86elN22BCk5//vW+0jSHa8P?=
 =?iso-8859-1?Q?4YLEyMvrUooAVqALl2cviFe4MYkgjW/XuLDKFie5r+QvSTNOwg3iQWSdNo?=
 =?iso-8859-1?Q?0UIayitOOu7BVtNpV+3vzrVvE2y893BvzRX4efZ2yF+kYxxA+miBLa4R1h?=
 =?iso-8859-1?Q?gMyabISgdURUiVJaERdQ1UpOuZizIMhkQ/nqxJXfhpxNWoDUv9tT3QNswm?=
 =?iso-8859-1?Q?S1R9uebWah/2a0FeDHvEe3y3/amyV1QZ+kboxEN74Rqw1n3BotF1R8IRxr?=
 =?iso-8859-1?Q?11iZ74woH177p5zrzALlvMHjosPRgi5IIYyo4bvrTEBegILHPTVMOK90cj?=
 =?iso-8859-1?Q?5hoHc9isSUxWIzgFADgJ6h2W7jQj1tzsdgV0twgbLhqgBwYWWfSnt/rzBe?=
 =?iso-8859-1?Q?rF1/DdcX/uDYyEJ0Dn5xKgUFKkJBy+F3WiToKmJIp2s+i9dKM+LA0EeQFB?=
 =?iso-8859-1?Q?DJcfFNJu2LB4G9I/eh6VO3hDSWs6QblnTNoqGHbHFtXxTx8irrlKqxwp7U?=
 =?iso-8859-1?Q?O4EYdEd4mzVLMWmMBMyzYSJW1KxCoknUOoICPBGz8EnkLow14cl89ufr8f?=
 =?iso-8859-1?Q?7YBjnIpM24xY17QmdysfwqibwQ+Rjk5A8styWofkiBrZ1uhaNA4kNmVYnh?=
 =?iso-8859-1?Q?M49Z6pDqGWfZT/5AHSbmq5aM4AqQsuXi/MlRW5W6Q8E2vMxnHBK1IuzXjQ?=
 =?iso-8859-1?Q?rKDFAWYQqXRDuHCdqBpUYajVm0sSKd7amAzCLRoqGlulPtlcUMQbZ/V34h?=
 =?iso-8859-1?Q?attCQ0PbhRO+tO/cvMpmpH2dyJ12pe1b8EsGewE9eHDB9LysuiJ14xbaUu?=
 =?iso-8859-1?Q?FQPkiRzVe/BKZi9x1OWjQlQXinZHbOgtar0JUrHl2VLTIr6iFv5F5UsisZ?=
 =?iso-8859-1?Q?J1QoAnZc8FWvil9oTIr6FrnwikEH1XfO0uIsuBySqFzYYmqUqzOonhvrjd?=
 =?iso-8859-1?Q?xZPU8PPgYoUOopTxKxKvUcwLxAkXHuGsGnsMH9GEQMS8Aww/ixifGEr9s8?=
 =?iso-8859-1?Q?yIkg1tXGsvAgGq55+NrG/c/SKN/494OtKnjRa4zlS3fnRZ3gYH9PZMooMz?=
 =?iso-8859-1?Q?I+3w=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8593be8e-e9ec-4a87-1f48-08d9b46a8d7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2021 01:33:18.2000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HQiKEQPsuaZFqS6HEP/Ojfw6NxKQrRDqF7ZbLfEDiOwt2fa7cjDwtwQMS5DlQSOLVRgWEA+O5Zf4nvB3r7/7SXm17fEN8w6ga4KDaSiZHvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
 max_width
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
Cc: "Yashashvi, Shantam" <shantam.yashashvi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, November 30, 2021 11:40 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> <uma.shankar@intel.com>; Yashashvi, Shantam
> <shantam.yashashvi@intel.com>
> Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
>=20
> On Tue, Nov 30, 2021 at 10:42:20PM +0530, Vidya Srinivas wrote:
> > PLANE_CUS_CTL has a restriction of 4096 width even though PLANE_SIZE
> > and scaler size registers supports max 5120.
> > Take care of this restriction in max_width.
> >
> > Without this patch, when 5k content is sent on HDR plane with NV12
> > content, FIFO underrun is seen and screen blanks out.
> >
> > v2: Addressed review comments from Ville. Added separate functions for
> > max_width - for HDR and SDR
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> > ---
> >  .../gpu/drm/i915/display/skl_universal_plane.c  | 17
> > +++++++++++++++--
> >  1 file changed, 15 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 28890876bdeb..d320a3ba1ade 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -420,7 +420,17 @@ static int icl_plane_min_width(const struct
> drm_framebuffer *fb,
> >  	}
> >  }
> >
> > -static int icl_plane_max_width(const struct drm_framebuffer *fb,
> > +static int icl_plane_max_width_hdr(const struct drm_framebuffer *fb,
>=20
> Naming wise I would probably go with icl_hdr_plane_max_width() and
> icl_sdr_plane_max_width().
>=20
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Thank you very much Ville, for the patch review and RB. Have fixed the nami=
ng.

Regards
Vidya

>=20
> > +			       int color_plane,
> > +			       unsigned int rotation)
> > +{
> > +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> > +		return 4096;
> > +	else
> > +		return 5120;
> > +}
> > +
> > +static int icl_plane_max_width_sdr(const struct drm_framebuffer *fb,
> >  			       int color_plane,
> >  			       unsigned int rotation)
> >  {
> > @@ -2108,7 +2118,10 @@ skl_universal_plane_create(struct
> > drm_i915_private *dev_priv,
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		plane->min_width =3D icl_plane_min_width;
> > -		plane->max_width =3D icl_plane_max_width;
> > +		if (icl_is_hdr_plane(dev_priv, plane_id))
> > +			plane->max_width =3D icl_plane_max_width_hdr;
> > +		else
> > +			plane->max_width =3D icl_plane_max_width_sdr;
> >  		plane->max_height =3D icl_plane_max_height;
> >  		plane->min_cdclk =3D icl_plane_min_cdclk;
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
> > --
> > 2.33.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
