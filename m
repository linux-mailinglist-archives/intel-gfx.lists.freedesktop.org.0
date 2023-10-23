Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2867D2DE4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 11:16:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C03AB10E1A5;
	Mon, 23 Oct 2023 09:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C802010E1A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 09:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698052558; x=1729588558;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qqCITYZ87tliOWy57PadVqR2ky+x7S/IpGVNLGTG0Wg=;
 b=Drmng+7htI/nkquof8wnBHwBcbJlNhYUj3d1P4y+A1Xvk/VfxEVXbUZj
 BQoJo/7xoMKD60Jxebdq424M9OqV6tXoZRJ6FZLCQe4YGtODnbpQEgnOV
 1RQU4VNs3YAxHrFF2G1GMVcEOHir43vLJyfNDr5ZtMup0cI95jzZTenxb
 amRD/+wfZzKrrkWGBDwXP3nYAG85fk7IL69Tfbp4IdabLW71DhvijesZl
 QZh/AqX5ndTCBgIZeRT3329HW7jFwD5oc3K7NwJLDHRwWpI+QQoC16o92
 BkcE9ojQfVC1ixiEHf2v3PiTe9m3lW4yzyhM830aOdcZW4MlTHOaqj1DX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="5423757"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="5423757"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:15:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="1005249768"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="1005249768"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2023 02:15:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 02:15:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 23 Oct 2023 02:15:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 23 Oct 2023 02:15:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tm36gYFDadZQQtBrJTojT+yBxeF91Ysg2Ujdr6dZOorbEnKLRGQMX34JI4KH07E/8NXKtalZ+biEB+v5e3lhw7WDtaYWha+PBPhIJ5B6UhENm78Xu0kIFZXSGA3xnDZ+M/w+haAATw1WpSZqSl8hYJ39sLtByCppLD6t5TP8Dc3P6++p77pLf+bO/7tufdXPyMpyrFKZ1VBTxrjMsjtEOgfF38kLEudlr8XZQBHbOKHBlVwcfDNvhUbPIFb/WuTSE77axMs9GoVItTTzT9OfBIImTCc5QyPZHWKKeAzzZj4EInTSFfN8R2jAKWiuVgZTPa/IehhaEGhvqcG/4TJxVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ix2AuHMsBVu6owIw8dMRk+TFxXcjec3g5uNRoe0Nz1s=;
 b=FJVZ6zCZ2Wra5rFVREJuOU2LkfzspMmxXY/G180YiUSTFaY4rpcA5nhBDH09GWBwN0BZfg+O+9ol2Lg0YAbZIXfdJm/BEIU5oEuU1HZ3P4vO3FMXGa+Jfzs627EW0BI9YQw2x+8ogtPLM8jveukfvOw5dfBbOGikaR4bgAT4J6Fj37xtDvLa2xsci5yAsTmkfcckm4qF84ZFeBPS5YqdZwdWvKrw87SiLbAAZLUp+lLU9if/qycfLZ5rAJvOVgqv+xECk8RfjmEic3jrYAf+YRqoRzz6NyaqPBmblIbJKBqJlKBbX+o7Yi87R3Xw0G6TTH/H1e2ILfdTTfhfo+Q6wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB6495.namprd11.prod.outlook.com (2603:10b6:8:c1::22) by
 IA1PR11MB6291.namprd11.prod.outlook.com (2603:10b6:208:3e5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.29; Mon, 23 Oct
 2023 09:15:48 +0000
Received: from DS0PR11MB6495.namprd11.prod.outlook.com
 ([fe80::d6a1:386d:482e:fcdf]) by DS0PR11MB6495.namprd11.prod.outlook.com
 ([fe80::d6a1:386d:482e:fcdf%6]) with mapi id 15.20.6907.025; Mon, 23 Oct 2023
 09:15:48 +0000
From: "Lobo, Melanie" <melanie.lobo@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats on
 MTL
Thread-Index: AQHZ/CtIGSUjsFI5uEqbDSVmISamvbBFsbAAgABs9wCAEQucAA==
Date: Mon, 23 Oct 2023 09:15:48 +0000
Message-ID: <DS0PR11MB64958431E240BA5A9D63D33D88D8A@DS0PR11MB6495.namprd11.prod.outlook.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
 <20231012062620.23886-1-melanie.lobo@intel.com> <ZSfs9DBOmDmcUC2D@intel.com>
In-Reply-To: <ZSfs9DBOmDmcUC2D@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB6495:EE_|IA1PR11MB6291:EE_
x-ms-office365-filtering-correlation-id: fb88c0e8-4d2c-456e-eff4-08dbd3a8a538
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: spE6URhWpXJfF3dw83DpzgQfUl3YJsUYk9c6xuE9w7YyGW+0O5BPZB5xjMiEjMoP9UqK86cdmoB88URmePmIbKIVD0+QrDuAoAoECOSIgIiFknbaToUy+FJDxLb986nrdbo48abbWf6wt+fiWQ3iSHfwGNJXB6/GRs1YEKHBfeTHvGZmFPXXiesgtfKK0WoHH80no3fW6gFiOIuxKTDrE5k1DfWVwE5Y67+0QEWrt4rZXCsHo4+qraRbZymBLduExRC5vQAFBO+Ol10p01ZVziGq3r9E9MLIbgAZJvXNG5/UtDZTN12Ndl8Psbl1GE4VOb+VFjYY0jDGgLwQc5Hkc9uLMX7TXLvCCWmw/3F7CiDYGYvKKE+3ccy+lO3vbpGCuWkk7FkD5wsw128XFGKoRMhpDtiiQpC3yruWGw2N9KEvtTj/Ax+mHRaVH5z+k6YTBrXBLUJIZDboZ7BFb49c5S6cUOPOemsR/0sAvQBZDP+zSMRvv+6CjhFuJFxdZGx/ocbGxERyvz+Us0KiAK9jg8w+zqyG/BHewDcXVCKS40KPGwpKRNXtVj+35yX+wYKZc81rjQ2CGY0n77k0klH/ByCFfbv20fubQYR7dQBco80=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6495.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(39860400002)(376002)(346002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(55016003)(2906002)(38100700002)(316002)(76116006)(6916009)(66946007)(54906003)(66556008)(66446008)(64756008)(122000001)(82960400001)(66476007)(6506007)(7696005)(478600001)(71200400001)(53546011)(966005)(9686003)(83380400001)(41300700001)(86362001)(5660300002)(52536014)(4326008)(33656002)(8936002)(8676002)(38070700009)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?gUYHiU5Wc/AmMQPZTQ6HX1pcFPydY+X1p6gBvuErelN6g6Ahn523yqXIFZ?=
 =?iso-8859-1?Q?6y3BHa/LYNH7XeXSN1XgT+pieu6PPy6jYeGNtozHcIHgzdReLyKTdKpFhS?=
 =?iso-8859-1?Q?MuVntg7ClHfzMQCYLZzNULALJAMwgaLkh+VxRpKbn2Rq5ArB+xDQhIh3hl?=
 =?iso-8859-1?Q?4yACOvDXBqcvW6GHr+udk8PnnAhJ1VEjCh1ACoAigLzU66Sg+Hkl1F17wp?=
 =?iso-8859-1?Q?VdrMZXI3FoYtkCCNA6xST5z9Jnw5JXFDLLDpC1cwEkoWhiNlQXx6D/RdL8?=
 =?iso-8859-1?Q?RbHZXQf21X8bxWhES6GXGrM9rF4B0XPrOCaH8GHFSsCr05bVkn4W+xhz05?=
 =?iso-8859-1?Q?heCgX2JEmTLRC3/IMyqzc/TZSLhNXqBkUncUHXVex1xwqcmp7diAJ/6K3s?=
 =?iso-8859-1?Q?aXr0Rj61JEK1tWGkwiFM1VbPkepijmHc7yFrclgaTmBogAugkC6WJbeukW?=
 =?iso-8859-1?Q?vCqticewbfsz43DD9YpYfDS5qvPndvFTmMAj9yaoXQj1ubBkON6rBUvxSH?=
 =?iso-8859-1?Q?WAEl8MFgSrn24S/7fUszdyUkqwrcZX2F6UQfYU0KyxWdbRDwYagW5xlEit?=
 =?iso-8859-1?Q?4trXvrayR4rEoJ4SSooGmgH2MEuW4e1OlhE9LdhN596ebrTttlJPb4B1he?=
 =?iso-8859-1?Q?1le5yWKvaUQbZ8B4O1KjI+MNYtNySEpMnCr8woYuqH3PlvSa1+dErsJNNn?=
 =?iso-8859-1?Q?EgQptK9fauKjK2NNNaWSF3/dwdd9gzp74PQbfWbLotzIE6Iuxme1u+InUA?=
 =?iso-8859-1?Q?L9qi+e/YxksGJp+HY+o/e8ooptqW47sw/MJWbB8p6zl9wV8E7axChbO97B?=
 =?iso-8859-1?Q?BVUInB7RSt8X00zioFh5vuOmz2KtjuKvaa2kbEsa8IeGb9CoScjPp1fXC4?=
 =?iso-8859-1?Q?fbeurVRVJTSkdi+Yx241WqxSpxmyqSFq97bVKkwM2InTdaA6TJ/4fTVVLZ?=
 =?iso-8859-1?Q?eYIs5IKL3Z5C4MXKhidrztddllNzHoN5u/T3zXOvETllImHeTv+wR66beO?=
 =?iso-8859-1?Q?58FizvWXldw9vQ9/YnC49QxPlsJdmws6hO47exdK6UyRNJsJKS5LxXnmE6?=
 =?iso-8859-1?Q?2ripbr/RM9xRf5wKFhXYYrlO/dLTWTD67RNhPddDp3hCrVQfrYV5pAQ/Mi?=
 =?iso-8859-1?Q?J6fb6rKAJ3jNlVLdlcXWWmzEuWsv3mLBjAaaL4+LEusC6mfOXzZHDqwtFy?=
 =?iso-8859-1?Q?5d1wurIBdCUjBf/CW/doG6PYsEgdfILAn4fDCmqvC6lONwm7ohjmClRfYI?=
 =?iso-8859-1?Q?0/Km4BzkxqnPvUJY7yf1gkoj3EJhnaqxpiqrTEcx0womMouFxXULrqeBmx?=
 =?iso-8859-1?Q?1iL3xBmmyb91TlgkwqQuqkwK6AqjvCo4lWaXfwT0Bwv2PRLKdnYJa/JQ+s?=
 =?iso-8859-1?Q?jPeUPnJavPjNrTJ9IOHk1AZVsbqJrcQVG57o3mk0M1mM07Lc9srtFnSQYI?=
 =?iso-8859-1?Q?D6gnzXyA4p7i5FwsSPhkRfEtxcQiS+VkejvIdu2ZxUf6MCXRs8FRI+3OeF?=
 =?iso-8859-1?Q?irWrX5bxCBzMzH9+8ukzZwweP4I7XYgfi/CYzMKo6IsGhflNyjO67F8Xfg?=
 =?iso-8859-1?Q?EgFrdkzJj2q5Og1wm70/aZ1DSSKXQT2mwhbbCIy2ol0uAk18B9EzZVWqbl?=
 =?iso-8859-1?Q?vkGDvXOHaFbHSKQEa1//fIwr5CFtRlLX/U?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6495.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb88c0e8-4d2c-456e-eff4-08dbd3a8a538
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2023 09:15:48.2465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 60eP/mB6hJfMcn7M664U5zU9p1jG7UaK7loiEVCoKGkVpdam5p1uKAlSmoLzOoVbGJsLdGwRh70m9R0If+plAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6291
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats
 on MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, October 12, 2023 6:26 PM
> To: Lobo, Melanie <melanie.lobo@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Heikkila, Juha-pekka <juha-
> pekka.heikkila@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed format=
s
> on MTL
>=20
> On Thu, Oct 12, 2023 at 11:56:20AM +0530, Melanie Lobo wrote:
> > MTL supports FP16 format which is a binary floating-point computer
> > number format that occupies 16 bits in computer memory.Platform shall
> > render compression in display engine to receive FP16 compressed formats=
.
> >
> > This kernel change was tested with IGT patch,
> > https://patchwork.freedesktop.org/patch/562014/
> >
> > Test-with: 20231011095520.10768-1-melanie.lobo@intel.com
> >
> > Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb.c            | 2 ++
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 +---
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> > b/drivers/gpu/drm/i915/display/intel_fb.c
> > index e7678571b0d7..868cfc75e687 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -91,6 +91,8 @@ static const struct drm_format_info
> gen12_ccs_formats[] =3D {
> >  	{ .format =3D DRM_FORMAT_P016, .num_planes =3D 4,
> >  	  .char_per_block =3D { 2, 4, 1, 1 }, .block_w =3D { 1, 1, 2, 2 }, .b=
lock_h =3D { 1,
> 1, 1, 1 },
> >  	  .hsub =3D 2, .vsub =3D 2, .is_yuv =3D true },
> > +	{ .format =3D DRM_FORMAT_XRGB16161616F, .depth =3D 64,
> .num_planes =3D 2,
> > +	  .char_per_block =3D { 4, 1}, .block_w =3D { 1, 2}, .block_h =3D { 1=
, 1},
> > +.hsub =3D 1, .vsub =3D 1 },
>=20
> That chars_per_block=3D4 doesn't look sensible for a 64bit format.
> And I suspect the block_w=3D2 for the CCS is also wrong.
>=20
> >  };
> >
> >  /*
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 245a64332cc7..6ec5b96904c3 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2122,9 +2122,7 @@ static bool
> gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >  	case DRM_FORMAT_Y216:
> >  	case DRM_FORMAT_XVYU12_16161616:
> >  	case DRM_FORMAT_XVYU16161616:
> > -		if (!intel_fb_is_ccs_modifier(modifier))
> > -			return true;
> > -		fallthrough;
> > +		return true;
> >  	default:
> >  		return false;
> >  	}
> > --
> > 2.17.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel

Hi Ville,
Thanks for your reply. I have made respective changes and floated the rev 4=
 series. Please take a look.

Regards,
Melanie lobo
