Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2BB9D676F
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Nov 2024 05:08:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB8210E08E;
	Sat, 23 Nov 2024 04:08:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P6zMPfwI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E35EF10E1AE
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Nov 2024 04:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732334927; x=1763870927;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OOz8D34UMKNgE+b4DhoDmSY3kwB+ncPc81ZEs4PQu7M=;
 b=P6zMPfwI5AOT7dm6C/JCm91HoX4i6cmImQDyHwCGmcv63C6fXkbf/KXi
 54DXXUH/eE9YtWOGa/WQG0uicJSQoNpCNHPbp0ifInPsHwfouR/JES+3O
 ZvlDy19MwqQZ9DSdV4qgQExv407/IGv2pFOKYvNFdffQOo+L82+/UJH6j
 h35MGQwTcTqbirBruoshHodCNeWB5+yN5iID+uGhGblUS1Hxq8o7Tap4n
 S4x5qRgloVT4/UnjXo1FO1QqLjN/6fOjYSp26qqwjdaPeHi3GitZUKOrN
 a0kaOfcNu1GmElqYyfs+/yDjbT7zP86hO3j1ooPB7rcO11x1bzChzquvS g==;
X-CSE-ConnectionGUID: 4fZ3DfXUQniDV2Q4CNw2Jg==
X-CSE-MsgGUID: oOmgTKioSfOlGThNe4hA8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11264"; a="35355934"
X-IronPort-AV: E=Sophos;i="6.12,177,1728975600"; d="scan'208";a="35355934"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2024 20:08:46 -0800
X-CSE-ConnectionGUID: nsEclldyTLiXteYn4jxF+w==
X-CSE-MsgGUID: fg1awXTAT/+Xev1uXnC0/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,177,1728975600"; d="scan'208";a="90670548"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Nov 2024 20:08:46 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 22 Nov 2024 20:08:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 22 Nov 2024 20:08:45 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 22 Nov 2024 20:08:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KWNgfa30iBA5vnHmVUSxULZqDVmFUpKVuu7PUbP/Vx908JemR6MR+RBIjQZ62CBMGydmj7TYkd45f4ECh2aXwsE6UMixij01LauYfBidq4ZJLsSNwVLD9kgL6ZQGhiTumCIO0oY0/xQAC9/ZwTh9XRVuQCUTQXjN5XrDLQsW2FCZ4svZmaObLI93nGX5z2+5dh8yNWdke4kfnGIPB1gQISbCw+N9QxMgUPsg9sMnJNTWULoXitLljaQM8UmQ4H4Myi7pNxdBIWykpDxEQM03+kH+nWiwPuiGwv9AmamU9U8+hw06hGTt5dZObcI7T4Zjd6nmEQSrmGT7rzMZpANAWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dgm4kbz3HUaWGNROWLXfU7o3ybcunQZIyqKFiFCYC6E=;
 b=vkapqjCN4DtE6cjjlBI14ep9GJe+tul94xKjKJWSn4OpX8XsBHlpDoB5j5fAaGlEhXg3o+L0bIuPM+q4tp4NvNmPuN/Hr0YEhxx6Sln5M/224nQeB/wKVV/097z8j5r0fVsvyRBUKIFn6yFYbfpdW3tg3/Ts3Hes3mDGj3NvnBBZQ6OsK2Sx+CRxbiDeAptZkoovhSzsl0D2kFOES6u7eUABRFgiu6RYycCEWhoe2WhRvouzX6YMzjQzsENfIRfT5REcG3niZwatADC8gFgCK3PGJ/VzH6WnDnGRCeqav9J3AAs9aAkLXNKQtI4Mmo6Ma2oKcgY7K0VAvgG0s9W7fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by IA1PR11MB7677.namprd11.prod.outlook.com (2603:10b6:208:3fd::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.22; Sat, 23 Nov
 2024 04:08:36 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8158.024; Sat, 23 Nov 2024
 04:08:35 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>, "bgeffon@google.com"
 <bgeffon@google.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Thread-Topic: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not mapped
Thread-Index: AQHbPNInKgdYHFO9T0i2zYtD9zlURrLD54IAgABYwIA=
Date: Sat, 23 Nov 2024 04:08:35 +0000
Message-ID: <PH7PR11MB825273D7A748B4514E316AB1892C2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20241122110741.405941-1-vidya.srinivas@intel.com>
 <Z0EKHlMUx2uqZVnZ@intel.com>
In-Reply-To: <Z0EKHlMUx2uqZVnZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|IA1PR11MB7677:EE_
x-ms-office365-filtering-correlation-id: 50a5fa88-a3e5-4f65-f262-08dd0b7480a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?+xo7pvPSzKHm/XsiPggPZSLTjyDxK6bCTSfRtnRIc+wKbOjWQlqbD0OkER?=
 =?iso-8859-1?Q?Doay4ANzynj+2T22c3PRx8IYnsSvhPJwP/dmEXtjYCIZ+6ZibWnmhAOFVT?=
 =?iso-8859-1?Q?pyhV3D182pkxTrFHVPsCdGMjcux01OldR1upPh4ObL2n2V1AkHICvnNdpN?=
 =?iso-8859-1?Q?Gcmn5Z2DvIaS0qiNJe98d9ITlMBuGomZbdYCKC76FCspfLcAcXyaYjUqBi?=
 =?iso-8859-1?Q?OPxpPsCdSqzEEnIlqIcExlQ4IrGAHpgKpcOyqLpPwPDzsmT6FW0ol/uFUK?=
 =?iso-8859-1?Q?Lah25YNmEw5GGanP2WL1mJz4JnCSTEQHN34AWw/DWyymWDBPVZCYvyWGw6?=
 =?iso-8859-1?Q?j1q3ld6lyTDirkD+UkcSRxDsYko1njaDOYVB+n2XIAM/7aNKbTeMz8qjzD?=
 =?iso-8859-1?Q?/db51AUw46tVOdHmV9IdDPQqA12myRWReVC+MTtM79uOTuDXVsvz2aTCGI?=
 =?iso-8859-1?Q?rMD3jFURFx5YJ5MX/EM+X6gXhYOvljQ09zU4ceqLEPe0CHG7B95bsR3yex?=
 =?iso-8859-1?Q?tXMAxdyV4CUxp9SSufb7s0qWNRAwzuFWjrg4Q3tP1gJZ2k9rzcZDTLG/Wu?=
 =?iso-8859-1?Q?re5AAwiHKBT1IXi0OUT9kFcQRzS9/73z9X09+nnTMh0eeUh4MDGl9wCz8K?=
 =?iso-8859-1?Q?NhnqDsm8TTd8DYcG06PqiGIa+JfdrOKZZmoB0I1o9IrITLdX4v5EwdQxsi?=
 =?iso-8859-1?Q?eyc2SzGomWnVrLprHRGidPR06qOg54Ixa6flFMClGdvzBRcZxEXuMggpqN?=
 =?iso-8859-1?Q?geMKyqd5wfzUiwoaRE0UI84WmeF7r3oevCfFLd2Z2FlCTt9HP2Cf/AN2u1?=
 =?iso-8859-1?Q?elEnPuogSlXdrsO1ZOSircPN9uz/UtphdA04IIN+RPWILDTuKRrXAFX9iS?=
 =?iso-8859-1?Q?6R/FJtPA8D5A8QqkmHdBVlDENOrV9ABUYigZvDGDylEEubDs7BADyNLfgh?=
 =?iso-8859-1?Q?M4Boeoma77VyWUxrFbtRqJwJkNmvpyHvZrbjI35GRa3GjCz12mcbpDw+MF?=
 =?iso-8859-1?Q?JzVj/atAebpT20LebOjfEXnmrZbVnMLSSM51+2kSScR0ycb8IX3+BL2yTT?=
 =?iso-8859-1?Q?cDS3VhzvoOTLKJUF3rAX1j/jOQA+pb0Ya5pE7c83+LIUu8iSKXhzzNeGXv?=
 =?iso-8859-1?Q?q96UOUyTZs73/8KGcNhEAsF2OvSaBTbij5QSjLNsoaofz+59qeRwuuNVEd?=
 =?iso-8859-1?Q?cKA0gKK/nhlHOuQdYafU+1XujSKoxR8EOP0eSZbWd3XFjW/wm+V3PP7xi7?=
 =?iso-8859-1?Q?qMeGSdDz29eZNwCX4GOImfbCTo9U40ELuOl60t9aG5C4UBUTasla3uwL/X?=
 =?iso-8859-1?Q?Mi2vzEDZPc/8YjiynGlEGZXjWt6i5u4OrtiHoe+xOLrBu/CuwXN6bB6nZX?=
 =?iso-8859-1?Q?949lXtuF2PMGxGL3zGwrJfN6/U1xUcQDxm0iI3Gaemq02XFNu0lNA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?IF2wyEd8O65tsnyQhUj9/MnCIirSa3WwkiTyqlAZ7kTZ0z2pDgOGZO0Dls?=
 =?iso-8859-1?Q?qGmloMZJsra7r/w0ojsHrRj6OGJywG0qAV72LXVWaDml7ZPUWn86rv1S94?=
 =?iso-8859-1?Q?NKL2iWqme5BxAnCN1zYawqs8UhIjFwEZpxJ5m2Q++aZz2tqikEWT+jETZy?=
 =?iso-8859-1?Q?1qRVnNKb3fmGmv2oP5UQ2lTrgo7CUf07p0eOdkviksrIDvabh0VNPVzPTX?=
 =?iso-8859-1?Q?EArCYNCaB9azmcKXhQMivlT1u2z3wKHQColLGVkqloMG5BYX7X7ctafUPD?=
 =?iso-8859-1?Q?kkdQPqliMPIEBnxQDItfJS8p2VF3ra8/ecPtQ46OwkqmziJCWuymq+ZSm3?=
 =?iso-8859-1?Q?ZgeZyFEu86HiP+KKrNqWaHc1Hcij3RsVCfZAUVpU52hl8ATOgF8uHdhtaT?=
 =?iso-8859-1?Q?iIiiAOKn3cfKyabT3mn2/0hjdW6m39ad0+lKNyfb2vl4P9gVauIyAp1JIa?=
 =?iso-8859-1?Q?ooKXMI+LYdXffPP9v0dtvJJ7rRdCq50QXZyyX2G7WsgOOtyWToJwZiQ9FG?=
 =?iso-8859-1?Q?EeuQENwJbVT9clgLfW2C+J3GN/ok0dZCIESNMGAynSVbLwTXRwUiJAEoeA?=
 =?iso-8859-1?Q?MUyBjbmcEVPKfPTkxRUniJrHfSG0mRAzSF/pGUlqjWi36ZS/F+mGN4+/0y?=
 =?iso-8859-1?Q?3KsAV1mbBieotvfVJ9m8jnfw8EEkR3nOUDWPVMr9SWvtR6RLpcZeC2mFOa?=
 =?iso-8859-1?Q?8SacK3T2/sV/YZxFPSoIQ7d3+iEeNkN6klIakSYXtGwwHY8+pc68tvqOa5?=
 =?iso-8859-1?Q?xJ8Sdpjd32YajSvOVPn9nA1SO0tpRRCORGOMhLXFKXPB0LS9DuaWM+InGR?=
 =?iso-8859-1?Q?3dOxyL65QA0+twQ7hLTKKe52dKQAQIUSOV0d5JDd1maYSCAqzYevKa5dRG?=
 =?iso-8859-1?Q?m4UTsSdN8lkS8srdAPKRe2wuxOrE+T2B2itsMVUQD7EtL+6PhSdmElohxL?=
 =?iso-8859-1?Q?PpgURXyMV+cO70lol+9CfNJni0+yClQnAiiYWnwhcZhpdXgVw6Wx25ydzM?=
 =?iso-8859-1?Q?xSnJnFPKAjeZEBMPzHkxC7Fpz+xNOmbEktmZaKvp5HHKQ7qcK7oxLB+VO+?=
 =?iso-8859-1?Q?LkDR5p+4+LfS5Y1qM/vqZXHY68QaZgFebTw03i0A5pBEfBR99b+/EJYTfO?=
 =?iso-8859-1?Q?ntM6Yf4uTCu35Yz8zB6Y5jcn3rqAbRsK0H6slWypb9sVo2v7mfoHtVcmIb?=
 =?iso-8859-1?Q?CEEfCFP28xym2N0Iezx4X+9SwNJI2YuN6cTmApWQc1KQjZfi6dkKu+Grh+?=
 =?iso-8859-1?Q?ck7XgPC3VIBSuE7mT02ZjUABrBiulYwSHbLZymGgn9O5SQzLPuDsF6P3vO?=
 =?iso-8859-1?Q?NJVQ213Q0B+wGETNXcN+0E0bpjNMXm4Kog4zojEI8CuHV9bozhS08sqfTX?=
 =?iso-8859-1?Q?C68Kjnl39GfeW5YGhKhbiIalNMPhPsyCkfzsInyHTP7S0AOOx3o4vDlKxv?=
 =?iso-8859-1?Q?eHlWtlbwNPozq738qVKJw2Zyj2c6qn3/QTuUJidcyqJGTNBfaKMNnXY0fw?=
 =?iso-8859-1?Q?O5bBAZlwUcyWv7jTV9ioIBAghLYq5lX1YcFkeQtx9F3xRNUEh8IL7TduiB?=
 =?iso-8859-1?Q?FzjD6j5dVJHW3rT5C/upcBeZGBSDeqpKgwnnjJocL84ko3o8aTQO8dwMdP?=
 =?iso-8859-1?Q?xk4zg/8f3nxANUTbGAFYFoER0nBUJRpWTZ?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50a5fa88-a3e5-4f65-f262-08dd0b7480a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Nov 2024 04:08:35.8798 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KbaO47n++lnEobPAGkz9k6+mIIgzxYAX+6qOMv7rCDa4rHsYyrdA7GPM2lq11yKlz9L4YSpAJzuGDfu1gQKJNVFIP6IX3fD1KiVUWr48dJ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7677
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
> Sent: 23 November 2024 04:18
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjala@intel.=
com>;
> bgeffon@google.com; Lee, Shawn C <shawn.c.lee@intel.com>
> Subject: Re: [PATCH] drm/i915/dpt: Restrict shrinker to DPT objects not
> mapped
>=20
> On Fri, Nov 22, 2024 at 04:37:41PM +0530, Vidya Srinivas wrote:
> > Restricting all DPT objects as unshrinkable was causing some
> > chromebooks to run out of memory causing DMA remap failures. Thanks to
> > Brian Geffon for the pointers on debug and suggesting usage of
> > !obj->mm.mapping
> >
> > Fixes: 43e2b37e2ab6 ("drm/i915/dpt: Make DPT object unshrinkable")
> >
> > Credits-to: Brian Geffon <bgeffon@google.com>
> > Suggested-by: Ville Syrj_l_ <ville.syrjala@linux.intel.com>
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_object.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > index 3dc61cbd2e11..b155f0139d4e 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> > @@ -285,7 +285,7 @@ i915_gem_object_is_shrinkable(const struct
> > drm_i915_gem_object *obj)  {
> >  	/* TODO: make DPT shrinkable when it has no bound vmas */
> >  	return i915_gem_object_type_has(obj,
> I915_GEM_OBJECT_IS_SHRINKABLE) &&
> > -		!obj->is_dpt;
> > +		!(obj->is_dpt && obj->mm.mapping);
>=20
> AFAICS the mapping could only become NULL if the DPT got evicted from the
> GGTT, but if that can happen then I think the current code must still be =
busted
> wrt. suspend/resume even with the unshrinkable DPT obj.
>=20
> Looking at the vma suspend stuff I think the only way something could sti=
ll be
> bound in the DPT during resume is if it was pinned during suspend. But we
> should be unpinning all FBs during suspend, so that's a bit weird in itse=
lf. Hmm,
> we do the unpinning from the cleanup_work so maybe that's still pending
> when we suspend and thus something is still pinned in the DPT. And indeed
> there is no flush_work()/etc. for that. So perhaps if we add that we coul=
d just
> revert the unshrinkable DPT patch.
>=20
Hello Ville,
Thank you so much. Yes, Google team also insist on that as they worry the D=
PT
patch might just be a workaround for the real memory corruption.

> Did we have a good way to reproduce the resume explosion? If not, I suppo=
se
> we could try to confirm the lack of flush_work() as the culprit by simply=
 sticking
> some kind of sleep() into the cleanup function to make sure it doesn't ge=
t a
> chance to run during suspend.
We can reproduce the original issue where during the suspend/resume,
the meteorlake chromebook goes for a reboot and we have the crash
captured from console-ramoops.

>=20
> I also had this:
> https://patchwork.freedesktop.org/patch/503398/?series=3D108669&rev=3D1
> which would be good to have so that we can actully do the obvious
> flush_work(cleanup_work) instead of playing confusing tricks with the the
> commit_work.
>=20
Thank you so much. Will try this patch as well and update.

Regards
Vidya

> >  }
> >
> >  static inline bool
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
