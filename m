Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DB679E539
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 12:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B5E10E49B;
	Wed, 13 Sep 2023 10:49:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE6210E06E;
 Wed, 13 Sep 2023 10:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694602150; x=1726138150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=RWlprwHUANeS/K2nV8PJ62TIzjxE90+u1cJFTsVBudg=;
 b=lAdidg04Az7qcI4+J/HTIZqixYRW8VL2qJIPlD8Yywrrnl7RcMkYfkwz
 XbnV0EdTWMZlvV0u47WSQmwbV1GGnzk61/U7wlyAnNWxMDCYCWUgmlGrs
 ydQuR3gWwmsqi5srnIwAMEGvPaBLSXgkVoTMAhMjUsesNf9unrI5GRM+4
 ncpPcct+tRwnn7N4DBxvrCYnjw/lcsw+Def34bY43C/8Od4RNLJWpQY1Q
 cdBh8klPEn6JriXCc/vWd53n8WeUSZKUl8CnaKDH5H7SLsQMS46a1luoN
 KC4U0F8VR8VXTMfSpgkfymjhfYoYTz2mR1OWqBOybS4sY9mgzT7Hetm4U g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="358059348"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; 
 d="scan'208,217";a="358059348"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 03:49:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="720763204"
X-IronPort-AV: E=Sophos;i="6.02,143,1688454000"; 
 d="scan'208,217";a="720763204"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 03:49:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 03:49:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 03:49:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 03:48:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RxHzzY9NQRyISuwjtW+YJFkqK+gzbDal5KzxC+4xSiNezA51ho6E3TYeEuHnGOk4eSUdagbAyXNtpmS8NXDRhAWpkFL5gZTrN13RRvPXToCLG/sYW2aqsAiq9SGg17YztMiAmepcksPIC+cxUAKQAV0Jzm1JZMtRxhg3zjaF7uzfs/UvmYZyoEUGmQnhZ7EuNJpiYoT5ILP11KZ5JNT3rcUs2l/LLUPay3EmHd7tuuQdiGMDI/K8nP4MQ1W8T2yW6kCYByLTF/dKi5imnbvKZZ60gng9q85TDW9jc0mmqgNaWoHAiBpWX/RTjNdmLp1Ddneksz3p8SmBir/GqrN00A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y1gJyMinP9yVubqfkEI3jMl9nhOYpwdCAj7K0fnSZ4c=;
 b=WQ5CZgraPV7q/h0o1Q9xw+eERmMmQaL0B6UhDxb6AzqYqk/KfFhe59MeF+FZHgLAKxJNs+jJhg1tDBe7RKFjx+WwBJWm2X1/AEJ4x++lnsfEEHCN05wUEbNGZdaNx4a6DJqtu8FaRkrFoMhepejbyWUHwELSznggpkzadhtrd8cjHcUZ1s8CQmSi624xPQA+5BNI78R9vfgONvdAWcCeYL+uqr1twnmkpYQu2EOsamhZ/mUnE/LlgDTve75XDnXArIPkXsTFKwXu/h7pvljImPSuu7OZfKkH4z6hr2qScnTW6iPi0t6BdVrX5PPXFWvgvgbVRUaGlMrhcJgArloejQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ2PR11MB7504.namprd11.prod.outlook.com (2603:10b6:a03:4c5::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.36; Wed, 13 Sep
 2023 10:48:57 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6768.029; Wed, 13 Sep 2023
 10:48:57 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is supported with
 per pixel alpha
Thread-Index: AQHZ3ybNAPtAmY0m1UGv9F9ezqxjnLAYnomAgAACOow=
Date: Wed, 13 Sep 2023 10:48:57 +0000
Message-ID: <CY8PR11MB77774A05AB9DD2BB169C932EF6F0A@CY8PR11MB7777.namprd11.prod.outlook.com>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
 <20230904115517.458662-3-vinod.govindapillai@intel.com>
 <ZQGRH4aWpp078lBl@intel.com>
In-Reply-To: <ZQGRH4aWpp078lBl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ2PR11MB7504:EE_
x-ms-office365-filtering-correlation-id: 2fa32245-abbe-4094-520c-08dbb44707e9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fum+CBFYkA9QnCQ/yaYa9UVi38BunBNWqA1soDE1sqixxmaL/e134P0on152jkzuBVCQb3Dz2cVH8WpLea0iaEZxeE2MKTf7hB8tCBHIQemOtFdCvzl07kPD5dTXYqYgsUV1nU3AzEVP8ESi/zT6ZpsbHxjsEFktwFBr7bQpfhbv8ojcBHg4FHi4QN6rSFRVwmnMhWS7Jk8pUhIG9wF7XbR3qFLdZ/MkCDEsPFj5LvelVCBWioKzasvuUk4wtwA/gv3hynn8Z14c9fowoSVJN+XUW9fs6YZ7YDmGpG8kI0jZK3maET43MRNUQcF5Be+RXy72bV0SE/6/5fYsdiEkuyVNd65nHab+jv27tsoS7vsQKaDB2ecYE4wfYD16uGkEcs0VDo5cBCIfE0y8kR+eukvnip9HNFwY4zqGdS6hhPjnpSHcMg5G/9umzVwVseOr/IsvcazphbehCQ/FwgP3ZPXxIbG4zv9MrBpyo1WvoFeGvKLDPXoP5u3EKrtFilA00iksG+dqFmhOKdAOk6G4EkhZRqpjqsFSdCy1s1PBvm7Qi7qOwbl3I+rHWBp3McMHlbcQaRAoJYaNmtUuiQdK9nstNEi8nfPkxGSgXQR5mJEOGagn9U4VuS8LBD2M7uZE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(396003)(346002)(39860400002)(451199024)(186009)(1800799009)(52536014)(64756008)(66556008)(53546011)(76116006)(54906003)(66446008)(66946007)(4326008)(8676002)(8936002)(66476007)(478600001)(55016003)(122000001)(7696005)(316002)(6506007)(6916009)(9686003)(41300700001)(5660300002)(83380400001)(26005)(71200400001)(82960400001)(2906002)(66574015)(86362001)(38070700005)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?yyVTJ00YD+VPpNL6SmAlLkpYERk7R2Z87NqyTZAXKIXDiiI61wUg/ajAiA?=
 =?iso-8859-1?Q?g6BAtuxt0xjlvOoqLte/v2GhpmS3yyqGIO2xw9rgGBS2GbKALz9Ga02Fms?=
 =?iso-8859-1?Q?h8MCASG7FEt7HwxSfUckf8cTfAd11jiAXgaV6pIT68RNNXey2+wQX/mM75?=
 =?iso-8859-1?Q?YQbEu7mwxeEamSDtN9TKpwAhqBrzRtDiEQtVGVEolYDMCE1ykUXfZMnIfL?=
 =?iso-8859-1?Q?3mAAM3C/iXUwdBssxbqrKg84zgiN3ueucK4+Xf7kUY8LG1/DyZwZFSh55X?=
 =?iso-8859-1?Q?u2hwugnsrmsV1Cgl2kzFpNOdEGYLgIiZqJDw5LE9uJXUrEu1S4dCLssCGP?=
 =?iso-8859-1?Q?4Ou/c/5g8heBI2o8nDT8D085+zjlXbIHmDcQToCjCNF1jucNthHUQWIpX3?=
 =?iso-8859-1?Q?1CV21CD5Ljw6wYGZ1BCwpcdFhWEPv1Ca4fEKL+QLi6Yg7GDTKVFTEIiIl2?=
 =?iso-8859-1?Q?MQNmBhb2+JtJbpY/5AEN4oCiHDxGNi4pomTcFP6ZuST1CVyCRSvRg8OzFw?=
 =?iso-8859-1?Q?FQB6lYCoRHShoi1GBlSb+rjkUq7nMfOzPJFb/KkaY02Q5AyjsOqdSdeBjx?=
 =?iso-8859-1?Q?NHXr4XEzbw485s1bClP6BQPY3OIi6kCeMANOiM3ndWJZsgUw5Gr/Of4zt0?=
 =?iso-8859-1?Q?JRZCp2Yb4CkmMCY5ozshFEJFM6nt4tzo05Z5/0lIRULRwKR/nvJAHaccqi?=
 =?iso-8859-1?Q?gVLQ3VXlne9dGyN6qDMbGDcrdUUJ1YTRlTfrk7k7B3JGjibQohdq4bQZUQ?=
 =?iso-8859-1?Q?TscafKvvakfO1f0ifo8hGNBz8LbJ2hlZAxVchxW0yGwnmL+Uax+OYVIxI6?=
 =?iso-8859-1?Q?3pFKHmqqJUkcJjtqGD61vvE/unoux5vU+BfGEvjcyvQFhJDBQXS0ImB1tO?=
 =?iso-8859-1?Q?oh4U4Z28JGyw0EdYonpKLeg4zfr2/bTIjridgfEaPsjt8seSbmG2PIE0yU?=
 =?iso-8859-1?Q?GS3nQxQ9V9MegDd0LsSxrc2JzsNNw+Z4JEwe/qGAxxFGZ4q0dHZMPRCEdJ?=
 =?iso-8859-1?Q?0WhGfLxchQgu95tjGDBiuw+0swScl4KLEG1Y3bXc3RBbGYe17E6fqy9QwI?=
 =?iso-8859-1?Q?X+xIICs4m4GV84osW0PkKlyDAfFWh61HargDMePxRCk+GRRz1G0ih6gIIk?=
 =?iso-8859-1?Q?5T9u1yQGpZSV9DYZRCltJTDxUEvcCDmEx7NZ3vjHruvBc4dCB9foXj47IV?=
 =?iso-8859-1?Q?wQW854cRed6Ij5AuKnJXir5+WfnoNDGurOI0l1iRq4qROXiq8r0nU9tf2t?=
 =?iso-8859-1?Q?A+z+XgQHrFN0cmF1NL4BwKnNiAnXW4q3F4zzwAjCCgO2HkCV/Veo6ngkCV?=
 =?iso-8859-1?Q?2+JUsXr4YfI7cs5d7HNXqbG6TJamXg+cWXl23jNTusAlv3z8OFUL/vzm5i?=
 =?iso-8859-1?Q?0Qbw3G8/Utf4FezkDbmtrgg+rZmyRYsM9AzmXpcXv3bf22htA2yoLYNMMP?=
 =?iso-8859-1?Q?jmW3e0iDCEqvtvVrOA/lEFy51B6Ms1A5Fp1uz723jgEw/OSFflHkGp4/2B?=
 =?iso-8859-1?Q?k+3Cx1pkCaP8lfaMEa6F14YEEh1tow2/Tsrq5cqjvPf+ZKBfyJGAjRBWFx?=
 =?iso-8859-1?Q?EuMymhAkWn70IQCEp2f7tZ/XmTgKgjbO0sUIJst7waG3o48oFlahH/9e3j?=
 =?iso-8859-1?Q?OOPcpN1crTJilgtYomJc+e3AGgesYeQ9YMAhF7NNFeLBpDEQZgOHNYKJsL?=
 =?iso-8859-1?Q?ltLk9qIKNwpxV+uEhuY=3D?=
Content-Type: multipart/alternative;
 boundary="_000_CY8PR11MB77774A05AB9DD2BB169C932EF6F0ACY8PR11MB7777namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fa32245-abbe-4094-520c-08dbb44707e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 10:48:57.1068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TMkLYIEK33OH09qqoB9Y23OyhT2nZSMj8vYFBbvoq7JoI/GOcFaH9No2Ys5mgPaTvlMMf9QYdtorTuZ/Rz8RGkS6w72HB0mggwz9/jm29Dc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7504
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is supported with
 per pixel alpha
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper, 
 Matthew D" <matthew.d.roper@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_CY8PR11MB77774A05AB9DD2BB169C932EF6F0ACY8PR11MB7777namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Ville,

It was confirmed by Jani Nikula that it is 20. Here is his comments.

".... display ver 20 is what the hardware reports to us. the current info i=
s at bspecb70821  if you scroll down to "LNL GMD Architecture IDs"
"

Br
Vinod


________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Wednesday, September 13, 2023 1:38:23 PM
To: Govindapillai, Vinod <vinod.govindapillai@intel.com>
Cc: intel-xe@lists.freedesktop.org <intel-xe@lists.freedesktop.org>; Roper,=
 Matthew D <matthew.d.roper@intel.com>; intel-gfx@lists.freedesktop.org <in=
tel-gfx@lists.freedesktop.org>; Syrjala, Ville <ville.syrjala@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is supported with=
 per pixel alpha

On Mon, Sep 04, 2023 at 02:55:17PM +0300, Vinod Govindapillai wrote:
> For LNL onwards, FBC can be supported on planes with per
> pixel alpha
>
> Bspec: 69560
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index a3999ad95a19..c0e4caec03ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1209,7 +1209,8 @@ static int intel_fbc_check_plane(struct intel_atomi=
c_state *state,
>                return 0;
>        }
>
> -     if (plane_state->hw.pixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE=
 &&
> +     if (DISPLAY_VER(i915) < 20 &&

Bspec still says 15. Someone needs to figure this mess out for
all LNL patches.

> +         plane_state->hw.pixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE=
 &&
>            fb->format->has_alpha) {

We would have already rejected the pixel format earlier, so atm this
check is redundant.

>                plane_state->no_fbc_reason =3D "per-pixel alpha not suppor=
ted";
>                return 0;
> --
> 2.34.1

--
Ville Syrj=E4l=E4
Intel

--_000_CY8PR11MB77774A05AB9DD2BB169C932EF6F0ACY8PR11MB7777namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Hi Ville,</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">It was confirmed by Jani Nikula that it is 20. Here is hi=
s comments.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">&quot;....&nbsp;<span style=3D"font-size: 12pt;">display =
ver 20 is what the hardware reports to us. the current info is at bspecb708=
21&nbsp;</span><span style=3D"font-size: 12pt;">&nbsp;if you scroll down to=
 &quot;LNL GMD Architecture IDs&quot;</span></div>
<div dir=3D"auto">&quot;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Br</div>
<div dir=3D"auto">Vinod</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Ville Syrj=E4l=E4 &lt=
;ville.syrjala@linux.intel.com&gt;<br>
<b>Sent:</b> Wednesday, September 13, 2023 1:38:23 PM<br>
<b>To:</b> Govindapillai, Vinod &lt;vinod.govindapillai@intel.com&gt;<br>
<b>Cc:</b> intel-xe@lists.freedesktop.org &lt;intel-xe@lists.freedesktop.or=
g&gt;; Roper, Matthew D &lt;matthew.d.roper@intel.com&gt;; intel-gfx@lists.=
freedesktop.org &lt;intel-gfx@lists.freedesktop.org&gt;; Syrjala, Ville &lt=
;ville.syrjala@intel.com&gt;<br>
<b>Subject:</b> Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is support=
ed with per pixel alpha</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Mon, Sep 04, 2023 at 02:55:17PM +0300, Vinod Go=
vindapillai wrote:<br>
&gt; For LNL onwards, FBC can be supported on planes with per<br>
&gt; pixel alpha<br>
&gt; <br>
&gt; Bspec: 69560<br>
&gt; Signed-off-by: Vinod Govindapillai &lt;vinod.govindapillai@intel.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-<br>
&gt;&nbsp; 1 file changed, 2 insertions(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c<br>
&gt; index a3999ad95a19..c0e4caec03ea 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_fbc.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_fbc.c<br>
&gt; @@ -1209,7 +1209,8 @@ static int intel_fbc_check_plane(struct intel_at=
omic_state *state,<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt;&nbsp; <br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp; if (plane_state-&gt;hw.pixel_blend_mode !=3D=
 DRM_MODE_BLEND_PIXEL_NONE &amp;&amp;<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp; if (DISPLAY_VER(i915) &lt; 20 &amp;&amp;<br>
<br>
Bspec still says 15. Someone needs to figure this mess out for<br>
all LNL patches.<br>
<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; plane_state-&gt;hw.p=
ixel_blend_mode !=3D DRM_MODE_BLEND_PIXEL_NONE &amp;&amp;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fb-&=
gt;format-&gt;has_alpha) {<br>
<br>
We would have already rejected the pixel format earlier, so atm this<br>
check is redundant.<br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; plane_state-&gt;no_fbc_reason =3D &quot;per-pixel alpha=
 not supported&quot;;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return 0;<br>
&gt; -- <br>
&gt; 2.34.1<br>
<br>
-- <br>
Ville Syrj=E4l=E4<br>
Intel<br>
</div>
</span></font></div>
</body>
</html>

--_000_CY8PR11MB77774A05AB9DD2BB169C932EF6F0ACY8PR11MB7777namp_--
