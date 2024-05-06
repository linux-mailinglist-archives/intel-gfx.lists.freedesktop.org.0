Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A67D8BCD92
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFDA310EFDC;
	Mon,  6 May 2024 12:15:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpHsQ7mf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B7A410EFDC
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 12:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714997716; x=1746533716;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B7uw3NW/WR+y2rkw8F3cRGT1/8pH+H7FfcmfQ+35qZg=;
 b=cpHsQ7mf7xhd1EAAYYuVxrAHHsmJFSAI0N9lEo41gPrOaqPUP3+0WFMt
 Mr7lp7jEmQD3ISSW4F0AfgTqN/+jR2HeNWMn2vKkEndl2hg3Bayvg88G4
 0ULt/3sCq0One3c3Yu8MZYq9oyZZ6dciWgnwrU0hVG1EQeS01SEFHal/q
 vfMARceZU1ks0g7V7T6GmGjzTn8o9VCiMWf/80uFI3kzQnilriD+xSdqI
 YH1sTTu7gvyZLwG4exAJtNnpSH8tAgVNT43KAbziGtUl6l6MTaR8XS0kO
 1tuMPiXie7ryqjo69jqbBWwMwm5aCynmzHiAceJ/bCSD6HFUUYSxjOYkG w==;
X-CSE-ConnectionGUID: hKBALol2R62lI2tO9jTA1A==
X-CSE-MsgGUID: MGdG7aYWQhSM3hLI245dpg==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="13685252"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="13685252"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:15:16 -0700
X-CSE-ConnectionGUID: PBFeCUMZTMGwX62lQAYlHw==
X-CSE-MsgGUID: XnskbqbmR9mclv2KmHVp7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="51336877"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 05:15:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 05:15:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 05:15:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 05:15:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbgFN11lNLArg5oJi53s+AzGGusP5qcuiZtESno2hO3Th8QpzzdfUtrd8ogeKIO7PqHHkjENer2KsNv8VUVexb7d1CgDnrbytG3zyJhgmuLY4UmCEdezA/KHNxU8wvjt/GH2Ju9u+qZa/cvmobk9NamNlGODPlrMdW+77IF7VzRV7Cs5upwUTTNexNIVn+NZdszvagTjRmCjMB0pTq76wNPoK7DEbx9GHjPWlkj3BObAnQAb+LNFa3hRHHJDeuvje7DE+y9Dfe6JV7BirjqQf4J14XebBxXAl0ANL70DFTqWje72gfUuQIcVmbov5W7CTOqi6wDQ4UiVHWMuzIzn2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ynFCmPKLf6lgZcFnvClwMz/7/auc1HTjC2lBaVKA8xY=;
 b=l4YNWuGGHBvZonmM09Ky8uyaEe1nAxNVIDVLCZL4cHE4fPQFjolASaS2Luv2tFE0HFPrJgCLwRuZCmr1H9hR2hncxFixd42BkheGkTdbTiXTdPwrrRnzsVoaTMkJEfrubSgM3272WJqlGZem+0AWSqrzqFjTnCVk78APTPTtF/mZ5HC0LVgfKsZeMDYutqctWNEe/PIyxB7X72dpgJAoxcfrx0QmPeubKvdbnmnVyqXu5sQ9zAwPQlaVtHporun78H0mWRWKImYQb6V5Z96GEDgsojQqP713gRPShCLA+eLEd6lmyPqz0uwtAPNd/DuVUBffYM/11aLr4sG5e5Rdug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.39; Mon, 6 May
 2024 12:15:13 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637%7]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 12:15:13 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Topic: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
Thread-Index: AQHan5YSD3Ayhk4uokappAeuaODKUrGKHESAgAAAclA=
Date: Mon, 6 May 2024 12:15:13 +0000
Message-ID: <IA0PR11MB7307F436AB51E954D870EEA5BA1C2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240506090625.2812332-1-arun.r.murthy@intel.com>
 <ZjjHl2oHYpm3--zR@intel.com>
In-Reply-To: <ZjjHl2oHYpm3--zR@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB6219:EE_
x-ms-office365-filtering-correlation-id: 194f60c2-dbc1-43e2-d83d-08dc6dc62ebd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?uPe1GherXSyNcD2GI7GMGI2M2ru90CRqltNKTf4tb0Rqayym7AhesrtUeQ?=
 =?iso-8859-1?Q?wcW0oX8giy0xb1TF2uWUaM+lLgAesjh1zSfyIIKoqPduEjJu1vWhwPAwrn?=
 =?iso-8859-1?Q?viO1nBAxUj2wXC/bewSIcA7gqOSnu8r2krwfExS/GL4NSah6uzzJIrZMFc?=
 =?iso-8859-1?Q?asgqwWl1LjERR0lcstAhXwuQMZ5u4DFMdlkxKL/C3cLxa0quagx4o3gDIT?=
 =?iso-8859-1?Q?/yOgDzl5/58s3VImO4bDXcw+r+tK9kg+sZ3b1wbREiPBr9XC5UsFmlgN1i?=
 =?iso-8859-1?Q?qzavnTxafmad8zDnJNDl2kbCm+YfokUZQw13w80LZUMPVfI1EvG83z0o4Z?=
 =?iso-8859-1?Q?Vp+aAVgizV2G4u/HC3EZbWLV8hJ8bBBq2L6G/xVcmnjKTtrmZ66wDytIEQ?=
 =?iso-8859-1?Q?e55sodHW/24s71ldl8YaBsR4iwu90vaOkhbCi41lEBnmcGc1IRQl+nf+yJ?=
 =?iso-8859-1?Q?YYIARl/JDzW2sh3EWYeAasHpdGd0f7PfN1PNb07L6spBaqYFp2ARPNdSPO?=
 =?iso-8859-1?Q?Yxhl2ghRppaMVnLVXexNd4rTcEi7JXV7v+/Av/mk9BbQhA7ExvAOiD3dNm?=
 =?iso-8859-1?Q?527s2+YbjL4GlRvsHvb56vPF+WnH2UQ6jvSjfLHQsloa1OjH7PDtDgJ6Lb?=
 =?iso-8859-1?Q?EZb+nxqAJ4s97X02JKGB1wzD/X4LG5CK7eLMHhhzYmCHglYftfptmjn4cl?=
 =?iso-8859-1?Q?WPJkyok2ne1E9yZ8tXB4B/oSJmFkAGSKkemwmlSI8Ez0REzkCjOL+DcI6b?=
 =?iso-8859-1?Q?McCXYwbyTMweA74st6Cptd0ayxMaj/IXQhBaf7F3M1golZH0Cq0UL3iiei?=
 =?iso-8859-1?Q?GkEMjSDOT8YIpgrz8G0hsY68z3j7ylKmezoeE+mQskomZu2V/QGGx4lWZW?=
 =?iso-8859-1?Q?+0jcgpLAe2a/WSCjjkfaanArQJ1D4AIqJ0aryYS3UYUz0VQqEa4u8WHEGQ?=
 =?iso-8859-1?Q?JseugQvliv3V1mGuLgjCcCjQzAW/nd7B2XNV7y7RArHwS5odqCRF+wBOCc?=
 =?iso-8859-1?Q?oKa2pVfLZoLiu3HwFuBA1gU8KxzCq31mKpo1RtSWX1CSv6xVMXnt51Mh/Y?=
 =?iso-8859-1?Q?otrac5hM5mSYBpx38ZLbZAAZACYXmIFCa6R5Qo1Y+FeeZtEoNKIl0mo8Po?=
 =?iso-8859-1?Q?oI3Yuj/SRzfXWb24HWNnQ1R1lpKUtA3wk/mmrwSt/gorLzpQyajVJRyUHI?=
 =?iso-8859-1?Q?oWUNw4QL7kxr3VQc8hxl25lVUOB8gcMt6l+85Gafv7AOvj5Bu72T4A3OU/?=
 =?iso-8859-1?Q?c0OcnG4loMg5TnsopPdayDyP58yOcxZCfLMcM/ZGfhlYkot/Kiy7grWdBO?=
 =?iso-8859-1?Q?rSabXclXpcoIFJc6Hn/H3odjCNkqpdmBbbo1Zd/s9lONMZs02SjLjQ35Wj?=
 =?iso-8859-1?Q?AChI+bs3Ru49TDguceGsvvrjrpJAyOkg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?qiyCIZgSKtpkObfeNsZhegAmxJTus48FBxrkcQwdAlP4EPMYgTeEzjoGqm?=
 =?iso-8859-1?Q?4CvIGV8LGU8gQL10Ac3OO65b4uN3zKeDK0A/w0o1xmRCcxXhJlW/KDa82o?=
 =?iso-8859-1?Q?t4e/7STex6pjXmonOG0+ca3gMwanu4IYXn7+eVsTjZebwjjz/hkIVeM7Kq?=
 =?iso-8859-1?Q?1utoAANlnyKG9MLwdE++EIHQTDQK7oJYB2tHk2P3c8EoV/A7ilvrydLYgq?=
 =?iso-8859-1?Q?5P4spPxRIE0ehR9+3wWkSfvUq7Bf1x4V8dDmfVEwXkn4d7CH0hpUuinx9N?=
 =?iso-8859-1?Q?SxQaVL2DGgRaYMJuIJtQl2ebFzeD849Af7UItw/jDkZcrQQDO4NHPFsm6G?=
 =?iso-8859-1?Q?vOXXYBAViDxRDuEEqbpm1dFBpurkbbqA8lCJnUKYoEJipgxCeMMcN7QG53?=
 =?iso-8859-1?Q?CxytWrXQaoID0/u47+3r4BKx2309SXJ8xOeUfOSOBv5DaeVPd371ow+nRX?=
 =?iso-8859-1?Q?AI6X/pB4PBiCN4I8sOWhzje1whcZBuotJekCv6bnoxbMMcOnpcNX1xYfe7?=
 =?iso-8859-1?Q?FT803DKm0XHLzdUv94rrFYZJ8NkT551qzDlfHcFOl/cHncecP0UJHZISC0?=
 =?iso-8859-1?Q?WICGM0/sAdgMFicrO6akkhjcz+8OQIycwI85swH9zvkLMnUESaDQgEI0yH?=
 =?iso-8859-1?Q?mKo1LYDivXP6XLsvgblv5RwVpigf0lN1AhNAYF6s11DIbvYNv+JlOPgdBu?=
 =?iso-8859-1?Q?ISUhOx07qsq7QcmzG8FIvHUzdT25dovYtMXH+BO9jfynhG4zzgfumx+DS8?=
 =?iso-8859-1?Q?PzGUP3e5ojJ+gmgAFnQZCuoz1N+zTt/TpIBiGub99vkBbzeM22z4GCTgky?=
 =?iso-8859-1?Q?ngdeyYnKTlrR6Qfd96CIIZA86vtLGLZda7q+naNXzJdBWV5m55cNXCb2rX?=
 =?iso-8859-1?Q?xITZhidEkku/pNQv75wX5k8iz355eT2Qjtgbmo/zEf0zuuLiCP6P/PDE+g?=
 =?iso-8859-1?Q?lK3po7+LxNbLvClN1+h0xQh3G/msV32Xt0GZzIvBl2+KprKAFeNNAj+lpl?=
 =?iso-8859-1?Q?KAhmBeEliBhp4vR/GASQz0fk3wMufFGY/vDfOtlpz2skjsx/awVMjRWT6Z?=
 =?iso-8859-1?Q?f4W6zAEH3AtgRafEc+fWzvCFVjplHYQbZuo8yHagxLV3ONWkt9tmSC6I1L?=
 =?iso-8859-1?Q?01kh+BxBjs7SMKWStdQ1QfQyM5ux5AxdVn1YUWlCGyevw16rJ+pa59GTYW?=
 =?iso-8859-1?Q?Ous32lstj+gfge3Sa/FIUR1NYOk+cE6bB7dIwCk4ed4wwk0t8Sho+jwtLM?=
 =?iso-8859-1?Q?9AVfqHmqdk39oZdmnjUeK2Rp0BApmStY534KtbJaqmpN82bWy/30WSQEQc?=
 =?iso-8859-1?Q?JF8ojLkkfw0IJOpJgTSb23pZpePt9Xz63j3A1qcdi7Tb3bpLOwx2J6vejw?=
 =?iso-8859-1?Q?JFOpsOUtHlBFHQCD3b0deCqO7hSrSm3SLJDjGn3IGaYwGMJJZDCLioy5di?=
 =?iso-8859-1?Q?Hw/pJNwcY6mIiVR/4aSkTrWSbIeUFS8mk2e5JyKLRp3eYQbvIMQWjhfDRz?=
 =?iso-8859-1?Q?Horqi1zsmltA868xEeXDPoEn1/3jsWwkxkLYAerOfKB8cwvHdei20Cfzmy?=
 =?iso-8859-1?Q?zQjxRvd1ZvOiFdoPzchgSV991P388zO3oUnU64flNpdm9yKnVwYaI0WXcb?=
 =?iso-8859-1?Q?DaeaMtdrlXxxmtDkAVMFLBvBMFZ+Ud+J4L?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 194f60c2-dbc1-43e2-d83d-08dc6dc62ebd
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2024 12:15:13.4415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MgjUffbWaCyAYFt5XAxlpVBJP+TojBpBBP9Apoglo1BTFXgy+DOt8g4HYKpuJ3GV6zUE0dc/t2/Rv2y+96Bjfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6219
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, May 6, 2024 5:36 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCH] drm/i915/display/dp: Remove UHBR13.5 for icl
>=20
> On Mon, May 06, 2024 at 02:36:25PM +0530, Arun R Murthy wrote:
> > UHBR13.5 is not supported in icl+ as well. This has been removed for
> > mtl by the commit caf3d748f646 ("drm/i915/dp: Remove support for
> > UHBR13.5")
>=20
> icl/tgl/adl don't support UHBR at all. The numbers are there for dg2
> presumably, which I think does support this.
As per the recommendation from hardware team this is not supported on DG2 a=
nd MTL.

Thanks and Regards,
Arun R Murthy
-------------------
>=20
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 163da48bc406..7098ca65701f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -507,7 +507,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp=
)
> >  	};
> >  	static const int icl_rates[] =3D {
> >  		162000, 216000, 270000, 324000, 432000, 540000, 648000,
> 810000,
> > -		1000000, 1350000,
> > +		1000000,
> >  	};
> >  	static const int bxt_rates[] =3D {
> >  		162000, 216000, 243000, 270000, 324000, 432000, 540000
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
