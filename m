Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2099C67F6
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 05:09:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F52510E679;
	Wed, 13 Nov 2024 04:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V9kXkMl+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0D410E67A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2024 04:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731470992; x=1763006992;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=qHpGduAoMEs0Ed//FmWVCGMC0ZPM5TpuboGy0/NTPmg=;
 b=V9kXkMl+5jYSU6VpZOAeDgsyV0SYk3GuQQgRLLuw3KqrNsIIjjYMn2iv
 mQ/ZVfg8OSq2OTS+MNFk0/s7vkm65euAfGF7QPQ6cq8iUPmqyAmlGHACj
 Xlaz9MtthwmuXyO8XObMLY3ZP3QqRt/F2EpUDydBduPn0jKsStAYoCSfM
 yAd1o47I1XoqTwGwJb7pLcU2hYE21y2C/MFn16g8irb0Cx/7u3ws8fDhT
 Dg+xv317428Y3GTNFLMlom1EVONR5KjQv0NKWRqwV7V4BlHUDu/gxcEHn
 cIIklY50AxP9w+9DxKSbOgl4dzNY8Iu814d5d8pOqd1aFxspr1FnXO04W A==;
X-CSE-ConnectionGUID: 2s171LABT5yxnXO7UqZxZA==
X-CSE-MsgGUID: tPGaWPElRfii9kXSWT4+Wg==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="41952991"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="41952991"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 20:09:43 -0800
X-CSE-ConnectionGUID: NGP25Z+VQYaobs6YbaH/dg==
X-CSE-MsgGUID: ynMq2d7UTwOwHmiSk5J+RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="91785581"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 20:09:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 20:09:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 20:09:38 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 20:09:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RuEICBFHyM1zpBswNJXFRn/2G0tMVO2mg1lemoedI897PikA1QLd5uU9hDmvgKLWOgWFxyv0YV/OvzofM+AU7Fy63kdXgP99SmnjzUrPxrYUE1wKaEF14MmxAxSRP2CFjvZ7magHKfKfC8W0IFgXR6TKIve5291xnq9tZFo4woBI1LhVJTWchlcE+285FjmapQhpcYT1KgM7Ig9PhX7sQahS69qFQM6PtgKOHKK1KOmS/gtXZ2uDsZypLsLHRSXDEGJcelKO98Jmp9cTWXEG/eIryVHuViA1Jafyf4lAPdJw2UZ7CtbIAfCteYAN9pqHHkJ5irS/6JFuBQdotxCTMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TaqtPR/yOIw/65WBfCX87AJlhzzfjPPRiZlp9JaZ0Yw=;
 b=TxGJVhgblNGAmMVCyvfcR8pOI7MDOGovIWeFZURLT37x7lDTOeLG/5wsFkf0hUoue1RV2CH7i/O6/KkXOJewt+EOWAFSHh2/sFiOgxm1DNUieGn9NVirHG+n85Q5YNH7FdzdbwjDJ9BOH+TqK22Q31PDJ/B0mAQlsVKeek8ygunO88QqFQT9Ld/g5pPtXPcVZV6KulALKStm6CS18oxI2gbnnSFoVP76SKlSOqgpOHBIHoaR3Bd+Ypg3PfUl79FoEekTUyEpdCjSHD9lEO/dJiZwnWVPCjVVWXN+i35zD90w5WPw/pGFuAsyl/PXrQL2oHYl77xZtZNUNdlVYhf00A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by CH3PR11MB7204.namprd11.prod.outlook.com (2603:10b6:610:146::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Wed, 13 Nov
 2024 04:09:35 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%4]) with mapi id 15.20.8137.027; Wed, 13 Nov 2024
 04:09:35 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
 coefficients
Thread-Topic: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
 coefficients
Thread-Index: AQHbHioEax9CUthRHEaCsBt2ZIForbKViHQggAAkgQCAHxoSwA==
Date: Wed, 13 Nov 2024 04:09:35 +0000
Message-ID: <CH0PR11MB5508D329DA046BAB698907B7C25A2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20241014111302.95362-1-nemesa.garg@intel.com>
 <20241014111302.95362-3-nemesa.garg@intel.com>
 <CH0PR11MB5508BADD65CA32A1F3ADB77EC24E2@CH0PR11MB5508.namprd11.prod.outlook.com>
 <IA1PR11MB646706473E65B47CC8C4B601E34E2@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB646706473E65B47CC8C4B601E34E2@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|CH3PR11MB7204:EE_
x-ms-office365-filtering-correlation-id: d44f05d8-c3c5-48d6-1d88-08dd0398fbce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?iw6TrYpK2CisuqxrSTOxHYw+h4LIMJgLE++KNFCUg665rVCJ7P9npzhYdj1u?=
 =?us-ascii?Q?3VcSdcVEbMnsFHwiHCRvjJNsI2c9vvEN99zZPzWPrHkEkS4jBcnhXfBghKY5?=
 =?us-ascii?Q?vFPN1luztKcaqU593xUM0t4XZwVKTm8QukeXfVG+cE7Kl5JeZiOc2YJJ+j94?=
 =?us-ascii?Q?ltOXs1uXTnkRVJ66Nt57vL7WYLyONG0ATv33tzZqtUHuXa0Nr+LCgEAfizs9?=
 =?us-ascii?Q?vZyxrhk8Y/03nMvZbe8+h/wyQU2uVtUqiGRuMyzDYgCGJVJhGhCg7nHbKBH/?=
 =?us-ascii?Q?xKsF1xuISLB+xxYO0yVH/eP5pl3X033a3NxKIUI9tn48yI92WMRsXPSDRRWF?=
 =?us-ascii?Q?XXWykb0V+6wWneOB2Ip+xZzYmQ8aJQUbY/bHo5qvn4hBSgLkHKefWgEht4NN?=
 =?us-ascii?Q?BbcuMkrGR/lf8vlm5ycFGlH+NL3y01gUatNRjfDSlxPhAeCMobMnuIKo36GK?=
 =?us-ascii?Q?XB8cmGSeTPHcQhXMYqK2rNbu5h0EOyN+1JJ09t3WuHuE6QQph0v2Dl69ojk6?=
 =?us-ascii?Q?1quZmy8NFx8v2v8man90Gag7iUvJgPhqgbHdm1ln4jUvXjOffwpkbpE7hx+f?=
 =?us-ascii?Q?66BxUmNrR2ObP2vcakG4WYz0oLADw/7jw28eBrzcBsrcJstoVRwCfmPFp02p?=
 =?us-ascii?Q?ex1R/o5cduXfXOME7W+MFU6GinjLJ/RquO/f39BxYXdvN3pspZU47wgi1s+p?=
 =?us-ascii?Q?QwX/5ZbTqe2yd1OdqGdsBSrW3QQPksfGTx0em+18uOGNKBL2YtyCrFkZfoKR?=
 =?us-ascii?Q?SSI7KDwpTuMKlISIzx+4LzXO0lE92igWiCaJ5T1H7oM6Yrsc+1um5/NA6OeU?=
 =?us-ascii?Q?99zUMndJHMQ7dGGo+HSSdFtBrGh6kU5mbnSa58OceNqrM7pCoiJufvLy5EyM?=
 =?us-ascii?Q?Ydq/Wv2nFV8tEG8RF+NAf2rhxK8ooLx2rIFCFzv5Y367dPtTiuDB8lP91sCf?=
 =?us-ascii?Q?59Pb5Am1W5+APZxQagEL1ppiysCjtegf07NNOp7ipyBGWah4MSJHo8wKSRuL?=
 =?us-ascii?Q?Xo8Dl12izc7LoSMUQe1UTRQGfPkzn9u92tK9m35xgwr3zE/x72RbMxnEjqyp?=
 =?us-ascii?Q?K8Ui8DsK42Im7H2ZDawR53o1NPa/KRtky4RJ5HJI9FzRUQGOehexA2NHtKUO?=
 =?us-ascii?Q?IMQjwQ4SzgxwAZuU7tYir5vTvf95n0OpEjwIGqFJRrd1hnd/kDCYFwgljBAd?=
 =?us-ascii?Q?A4uCbtR8aNkhnVntg+PbyK6Fnj00ZoCl6W4LeOB8BE7imsWtw3Bx/pJLY/L6?=
 =?us-ascii?Q?dqplfeWB9uaegoztYRqMrH8nPphpaE6zvsVwJoykFYHVXbpDHPDhmLf5XM+4?=
 =?us-ascii?Q?TupYF47V53jd53N00EX6rxLgnogER8gkmdURFSA8kvzJCISsx3Ipxca6U/qY?=
 =?us-ascii?Q?APT5jQ4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?1VKnpa5yCMjsp1yRd84jXJrTVvuDv6+zIKPHl+XhdtoBV+AYuD9vRLhMVwvQ?=
 =?us-ascii?Q?8K+jaGwAlw1Z79vuYcnPWJXkq7XdzXNB+0QLA5jF+GYvbO05LLgYxII0NWgP?=
 =?us-ascii?Q?LKH62n1jjfENZr2Iv1PFuZZSF0ovUdH9RZVVJjtc4wDFsvYnvv9aeIppAAIx?=
 =?us-ascii?Q?Nej08CR+fQhlHqgCKCLQ2698pPbx71/TTrYfX8rsHTJidIGSWuqMpeitPj9u?=
 =?us-ascii?Q?AUU7CeDolCH+TGWvUZkIvhPzIoI5l0iiw1OgkHMm909mesZPeqXqI4QsB/16?=
 =?us-ascii?Q?cvYMRF6Bg6mWxBLUj6X6fdNVLfHZGVzEOJO0tgPyUSx5wo5Ms8d1UsP8HuMv?=
 =?us-ascii?Q?jDgh74S1Rcz049kskKSjt2p1WdKrHhEBF5NOC0BvmCcfYbEAB6snO8i3K9Fb?=
 =?us-ascii?Q?YGYWQqwhNCbNQi8ZrQj5JiFszjpYz+rwZWvpOe7Tg2XCxYGCLiQNqNQ47CmO?=
 =?us-ascii?Q?/iJLjhvJmm4bX1wpQpFxbokSjMAQerZPMB4zL61m+EB0H58JvlOV+misFJD0?=
 =?us-ascii?Q?tykvsYsoWDHI615grRWNYxNtNvE6CupghMjyzjjPCZ0OvjJCefD3yhSl7les?=
 =?us-ascii?Q?2Uhh1n0MZTvM/UY11sTWluGKXdg5CqhFNUdme+SXqSVQ/iswUviLlesSPiZx?=
 =?us-ascii?Q?DxWOtKdfm76iIeD6Yv+fHZmLek/7jToyHMAOKqbepro3Glo9eJ2sy2zAAMP5?=
 =?us-ascii?Q?CkueYikL2kW0svO+bGPHE80QegD38vqiWPARSH0zcqQ9J9xTL0Y7pft1ntg4?=
 =?us-ascii?Q?arAT4n0Li5dXW1Re/bm2jlUUH0WyTRmO73fZWQmooem0QMilyA1OKw55ZTmm?=
 =?us-ascii?Q?fMPpA6F/m+OL9f6ORUqfyo+Z2eeslt1eEbWMTU8IcwBoNMMpfsv/OuQf8dXC?=
 =?us-ascii?Q?uYgRFSrD7txOJrFPEXqNuGSvpRZ9EWaBUSDy/fd+0xc6g+Yb7MgFa1R1uMnv?=
 =?us-ascii?Q?T4Z6w0PMTi6kV/0SvYsgYFeHI+7lIr705mY6x3haFdv3Cv74cgPeb1k3cbsv?=
 =?us-ascii?Q?ztx3VhSo6vTJvIxSvGSkOnkDTvx7Z5EEqiwTcBQrHaGqFQFMN9tJmYyYVoUA?=
 =?us-ascii?Q?/Od+Cu0Pz4TohOYnUXNloFC10Yw1zzrsHtWacgFGeW3CfllLMG+qAoNgDxOU?=
 =?us-ascii?Q?fdMQfVAKgOv+FFYybhYnggh01YZsPo6gryyv54ZyuTemF6M2TLh9HYLM2ZzZ?=
 =?us-ascii?Q?7DxSFImr2JWFCQ5Wra6tqqF7Qwo/+cnB/L4IsChtj7LzQZxY6MvtN3QFsG8V?=
 =?us-ascii?Q?ktPIDRgSGRsR0xwAsv6Dwlj5vCpdAVSY/eEgpmKjvywApDttYd61j7l3Wao3?=
 =?us-ascii?Q?J5Y3H1rRtnxdkgIONtLVJeK07Zxt1tIRN8OTeVR/Ovx7nmTEi3t7z8IZQvtH?=
 =?us-ascii?Q?WiCwE3jLRpwIDPOkJk/JtQlSCNBo3kUV3cY1kxQhqmQms5nfkgrwD2S9VzGj?=
 =?us-ascii?Q?Gk7m0ONzM3MKflrAEPx7PZrOFKDzNrjHzqV/dgmkB5VLujaH1Ze0/rj9szFj?=
 =?us-ascii?Q?7/nmB4WvnybclgCbWfmIbmuYuUvANZRNBgdxFAD+ZwBeeCd4yt1lW23jc0D8?=
 =?us-ascii?Q?+7egFnM+P+QyuykFqq4b/8JWDzUCigmPuIj4us1iu582tTaon4LseRgwi/AF?=
 =?us-ascii?Q?mA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d44f05d8-c3c5-48d6-1d88-08dd0398fbce
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2024 04:09:35.0716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UfQCFom0WXYyUHTKSuPubVSNY/98S3ODSEUv09pHf7duxnBqbj1WJVm98+MLCInQ2mFTsZzv0K2hB8vwi9YGK+gm6z5tBaHAJI3vqX+Q/aFC5czBxnA5ChijVdI7Rjw/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7204
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
> From: Garg, Nemesa <nemesa.garg@intel.com>
> Sent: Thursday, October 24, 2024 2:41 PM
> To: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
> coefficients
>=20
>=20
>=20
> > -----Original Message-----
> > From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> > Sent: Thursday, October 24, 2024 12:41 PM
> > To: Garg, Nemesa <nemesa.garg@intel.com>;
> > intel-gfx@lists.freedesktop.org
> > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: RE: [PATCH v4 2/5] drm/i915/display: Compute the scaler
> > filter coefficients
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Nemesa Garg
> > > Sent: Monday, October 14, 2024 4:43 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Garg, Nemesa <nemesa.garg@intel.com>
> > > Subject: [PATCH v4 2/5] drm/i915/display: Compute the scaler filter
> > > coefficients
> > >
> > > The sharpness property requires the use of one of the scaler so need
> > > to set the sharpness scaler coefficient values.
> > > These values are based on experiments and vary for different tap
> > > value/win size. These values are normalized by taking the sum of all
> > > values and then dividing each value with a sum.
> > >
> > > v2: Fix ifndef header naming issue reported by kernel test robot
> > > v3: Rename file name[Arun]
> > >     Replace array size number with macro[Arun]
> > > v4: Correct the register format[Jani]
> > >     Add brief comment and expalin about file[Jani]
> > >     Remove coefficient value from crtc_state[Jani]
> > >
> > > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > > ---

Looks good to me.
Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>

> > >  drivers/gpu/drm/i915/Makefile                 |   1 +
> > >  drivers/gpu/drm/i915/display/intel_casf.c     | 131 ++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/intel_casf.h     |  16 +++
> > >  .../gpu/drm/i915/display/intel_casf_regs.h    |  19 +++
> > >  drivers/gpu/drm/i915/display/intel_display.c  |   3 +
> > >  .../drm/i915/display/intel_display_types.h    |  14 ++
> > >  drivers/gpu/drm/i915/i915_reg.h               |   2 +
> > >  drivers/gpu/drm/xe/Makefile                   |   1 +
> > >  8 files changed, 187 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
> > >  create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h
> > >
> > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > b/drivers/gpu/drm/i915/Makefile index c63fa2133ccb..ba3c33ca3149
> > > 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -280,6 +280,7 @@ i915-y +=3D \
> > >  	display/intel_pmdemand.o \
> > >  	display/intel_psr.o \
> > >  	display/intel_quirks.o \
> > > +	display/intel_casf.o \
> > >  	display/intel_sprite.o \
> > >  	display/intel_sprite_uapi.o \
> > >  	display/intel_tc.o \
> > > diff --git a/drivers/gpu/drm/i915/display/intel_casf.c
> > > b/drivers/gpu/drm/i915/display/intel_casf.c
> > > new file mode 100644
> > > index 000000000000..75c1ae37ae1e
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> > > @@ -0,0 +1,131 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright (c) 2024 Intel Corporation
> > > + *
> > > + */
> > > +#include "i915_reg.h"
> > > +#include "intel_de.h"
> > > +#include "intel_display_types.h"
> > > +#include "intel_casf.h"
> > > +#include "intel_casf_regs.h"
> > > +#include "skl_scaler.h"
> > > +
> > > +#define FILTER_COEFF_0_125 125
> > > +#define FILTER_COEFF_0_25 250
> > > +#define FILTER_COEFF_0_5 500
> > > +#define FILTER_COEFF_1_0 1000
> > > +#define FILTER_COEFF_0_0 0
> > > +#define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
> > > +
> > > +/**
> > > + * DOC: Content Adaptive Sharpness Filter (CASF)
> > > + *
> > > + * From LNL onwards the display engine based adaptive
> > > + * sharpening filter is supported. This helps in
> > > + * improving the image quality. The display hardware
> > > + * uses one of the pipe scaler for implementing casf.
> > > + * It works on a region of pixels depending on the
> > > + * tap size. The coefficients are used to generate an
> > > + * alpha value which is used to blend the sharpened image
> > > + * to original image.
> > > + */
> > > +
> > > +const u16 filtercoeff_1[] =3D {FILTER_COEFF_0_0, FILTER_COEFF_0_0,
> > > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > > FILTER_COEFF_0_0,
> > > +FILTER_COEFF_0_0};
> > > +
> > > +const u16 filtercoeff_2[] =3D {FILTER_COEFF_0_0, FILTER_COEFF_0_25,
> > > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > > +FILTER_COEFF_0_25, FILTER_COEFF_0_0};
> > > +
> > > +const u16 filtercoeff_3[] =3D {FILTER_COEFF_0_125, FILTER_COEFF_0_25=
,
> > > +FILTER_COEFF_0_5, FILTER_COEFF_1_0, FILTER_COEFF_0_5,
> > > +FILTER_COEFF_0_25, FILTER_COEFF_0_125};
> > > +
> > > +static int casf_coef_tap(int i)
> > > +{
> > > +	return i % 7;
> > > +}
> > > +
> > > +static u16 casf_coef(struct intel_crtc_state *crtc_state, int t) {
> > > +	struct scaler_filter_coeff value;
> > > +	u16 coeff;
> > > +
> > > +	value =3D crtc_state->hw.casf_params.coeff[t];
> > > +	coeff =3D SET_POSITIVE_SIGN(0) | EXPONENT(value.exp) |
> > > +MANTISSA(value.mantissa);
> > > +
> > > +	return coeff;
> > > +}
> > > +
> > > +void intel_casf_enable(struct intel_crtc_state *crtc_state) {
> > > +	struct intel_display *display =3D to_intel_display(crtc_state);
> > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > +	int id =3D crtc_state->scaler_state.scaler_id;
> > > +	int i;
> > > +
> > > +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id,
> > > 0),
> > > +			  PS_COEF_INDEX_AUTO_INC);
> > > +
> > > +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id,
> > > 1),
> > > +			  PS_COEF_INDEX_AUTO_INC);
> > > +
> > > +	for (i =3D 0; i < 17 * 7; i +=3D 2) {
> > > +		u32 tmp;
> > > +		int t;
> > > +
> > > +		t =3D casf_coef_tap(i);
> > > +		tmp =3D casf_coef(crtc_state, t);
> > > +
> > > +		t =3D casf_coef_tap(i + 1);
> > > +		tmp |=3D casf_coef(crtc_state, t) << 16;
> > > +
> > > +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc-
> > > >pipe, id, 0),
> > > +				  tmp);
> > > +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc-
> > > >pipe, id, 1),
> > > +				  tmp);
> > > +	}
> > > +}
> > > +
> > > +static void convert_sharpness_coef_binary(struct scaler_filter_coeff
> *coeff,
> > > +					  u16 coefficient)
> > > +{
> > > +	if (coefficient < 25) {
> > > +		coeff->mantissa =3D (coefficient * 2048) / 100;
> > > +		coeff->exp =3D 3;
> > > +	} else if (coefficient < 50) {
> > > +		coeff->mantissa =3D (coefficient * 1024) / 100;
> > > +		coeff->exp =3D 2;
> > > +	} else if (coefficient < 100) {
> > > +		coeff->mantissa =3D (coefficient * 512) / 100;
> > > +		coeff->exp =3D 1;
> > > +	} else {
> > > +		coeff->mantissa =3D (coefficient * 256) / 100;
> > > +		coeff->exp =3D 0;
> > > +	}
> > > +}
> > > +
> > > +static void intel_casf_coeff(struct intel_crtc_state *crtc_state) {
> > > +	const u16 *filtercoeff;
> > > +	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> > > +	u16 sumcoeff =3D 0;
> > > +	u8 i;
> > > +
> > > +	if (crtc_state->hw.casf_params.win_size =3D=3D 0)
> > > +		filtercoeff =3D filtercoeff_1;
> > > +	else if (crtc_state->hw.casf_params.win_size =3D=3D 1)
> > > +		filtercoeff =3D filtercoeff_2;
> > > +	else
> > > +		filtercoeff =3D filtercoeff_3;
> > > +
> > > +	for (i =3D 0; i < SCALER_FILTER_NUM_TAPS; i++)
> > > +		sumcoeff +=3D *(filtercoeff + i);
> >
> > filtercoeff[i] instead of *(filtercoeff + i)
> >
> > > +
> > > +	for (i =3D 0; i < SCALER_FILTER_NUM_TAPS; i++) {
> > > +		filter_coeff[i] =3D (*(filtercoeff + i) * 100 / sumcoeff);
> >
> > Just by multiplying by 100, we are losing precision. Multiply by 10000
> > to preserve the precision.
> > For e.g filtercoeff of 0.125 is stored as 125.
> >
> > Ideal case using double:
> > 0.125/2 -> 0.0625
> > 0.0625 converted to mantissa 0.0625*2048 -> 128
> >
> > 125*100/2000 -> 6
> > 6 converted to mantissa 6*2048/100 -> 122
> >
> > If we multiply by 10000
> > 125*10000/2000 -> 625
> > 625 converted to mantissa 625*2048/10000 -> 128
> >
> If we are considering the first coefficient set  then we can either have =
0/2 or
> 0.5/2 or 1/2 so in this case:
> Using double:
> 0.5/ 2.0 =3D 0.25 * 1024.0 =3D 256
> 1/2 =3D 0.5 =3D 0.5 * 1024 =3D 512
> Using integer:
> 500/2000 =3D 0.25 *100 =3D 25 * 1024 =3D 25600 /100 =3D 256
> 1000/2000 =3D 0.5 * 100 =3D 50 * 1024 =3D 51200 / 100 =3D 512
>=20
> So for different coefficient set, sumcoeff will change ie 2500 and 2750 ,=
 so
> multiplying with 100 also precision will be there.
>=20
> Regards,
> Nemesa
> > > +		convert_sharpness_coef_binary(&crtc_state-
> > > >hw.casf_params.coeff[i],
> > > +					      filter_coeff[i]);
> > > +	}
> > > +}
> > > +
> > > +void intel_casf_scaler_compute_config(struct intel_crtc_state
> > > +*crtc_state) {
> > > +	intel_casf_coeff(crtc_state);
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_casf.h
> > > b/drivers/gpu/drm/i915/display/intel_casf.h
> > > new file mode 100644
> > > index 000000000000..8e0b67a2fd99
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> > > @@ -0,0 +1,16 @@
> > > +/* SPDX-License-Identifier: MIT */
> > > +/*
> > > + * Copyright (c) 2024 Intel Corporation  */
> > > +
> > > +#ifndef __INTEL_CASF_H__
> > > +#define __INTEL_CASF_H__
> > > +
> > > +#include <linux/types.h>
> > > +
> > > +struct intel_crtc_state;
> > > +
> > > +void intel_casf_enable(struct intel_crtc_state *crtc_state); void
> > > +intel_casf_scaler_compute_config(struct intel_crtc_state
> > > +*crtc_state);
> > > +
> > > +#endif /* __INTEL_CASF_H__ */
> > > diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > > b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > > new file mode 100644
> > > index 000000000000..0b3fcdb22c0c
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> > > @@ -0,0 +1,19 @@
> > > +/* SPDX-License-Identifier: MIT */
> > > +/*
> > > + * Copyright (c) 2024 Intel Corporation  */
> > > +
> > > +#ifndef __INTEL_CASF_REGS_H__
> > > +#define __INTEL_CASF_REGS_H__
> > > +
> > > +#include "intel_display_reg_defs.h"
> > > +
> > > +/* Scaler Coefficient structure */
> > > +#define SIGN				REG_BIT(15)
> > > +#define EXPONENT_MASK			REG_GENMASK(13, 12)
> > > +#define EXPONENT(x)
> > 	REG_FIELD_PREP(EXPONENT_MASK,
> > > (x))
> > > +#define MANTISSA_MASK			REG_GENMASK(11, 3)
> > > +#define MANTISSA(x)
> 	REG_FIELD_PREP(MANTISSA_MASK,
> > > (x))
> > > +
> > > +#endif /* __INTEL_CASF_REGS__ */
> > > +
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index b4ef4d59da1a..224fd0c84f18 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -112,6 +112,7 @@
> > >  #include "intel_psr.h"
> > >  #include "intel_psr_regs.h"
> > >  #include "intel_sdvo.h"
> > > +#include "intel_casf.h"
> > >  #include "intel_snps_phy.h"
> > >  #include "intel_tc.h"
> > >  #include "intel_tdf.h"
> > > @@ -5917,6 +5918,8 @@ static int intel_atomic_check_planes(struct
> > > intel_atomic_state *state)
> > >  		if (ret)
> > >  			return ret;
> > >
> > > +		intel_casf_scaler_compute_config(new_crtc_state);
> > > +
> > >  		/*
> > >  		 * On some platforms the number of active planes affects
> > >  		 * the planes' minimum cdclk calculation. Add such planes
> diff
> > > --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index f29e5dc3db91..de3867faa4d7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1036,6 +1036,19 @@ struct intel_csc_matrix {
> > >  	u16 postoff[3];
> > >  };
> > >
> > > +struct scaler_filter_coeff {
> > > +	u16 sign;
> > > +	u16 exp;
> > > +	u16 mantissa;
> > > +};
> > > +
> > > +struct intel_casf {
> > > +#define SCALER_FILTER_NUM_TAPS 7
> > > +	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
> > > +	u8 win_size;
> > > +	bool need_scaler;
> > > +};
> > > +
> > >  struct intel_crtc_state {
> > >  	/*
> > >  	 * uapi (drm) state. This is the software state shown to userspace.
> > > @@ -1072,6 +1085,7 @@ struct intel_crtc_state {
> > >  		struct drm_property_blob *degamma_lut, *gamma_lut,
> *ctm;
> > >  		struct drm_display_mode mode, pipe_mode,
> adjusted_mode;
> > >  		enum drm_scaling_filter scaling_filter;
> > > +		struct intel_casf casf_params;
> > >  	} hw;
> > >
> > >  	/* actual state of LUTs */
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index 41f4350a7c6c..84b05b57ad52
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -2257,6 +2257,8 @@
> > >  #define   PS_VERT_INT_INVERT_FIELD		REG_BIT(20)
> > >  #define   PS_PROG_SCALE_FACTOR			REG_BIT(19) /* tgl+ */
> > >  #define   PS_PWRUP_PROGRESS			REG_BIT(17)
> > > +#define   PS_BYPASS_ARMING			REG_BIT(10)
> > > +#define   PS_DB_STALL				REG_BIT(9)
> > >  #define   PS_V_FILTER_BYPASS			REG_BIT(8)
> > >  #define   PS_VADAPT_EN				REG_BIT(7) /* skl/bxt
> > > */
> > >  #define   PS_VADAPT_MODE_MASK
> 	REG_GENMASK(6, 5)
> > > /* skl/bxt */
> > > diff --git a/drivers/gpu/drm/xe/Makefile
> > > b/drivers/gpu/drm/xe/Makefile index 8f1c5c329f79..59dc97f30caa
> > > 100644
> > > --- a/drivers/gpu/drm/xe/Makefile
> > > +++ b/drivers/gpu/drm/xe/Makefile
> > > @@ -254,6 +254,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
> > >  	i915-display/intel_psr.o \
> > >  	i915-display/intel_qp_tables.o \
> > >  	i915-display/intel_quirks.o \
> > > +	i915-display/intel_casf.o \
> > >  	i915-display/intel_snps_phy.o \
> > >  	i915-display/intel_tc.o \
> > >  	i915-display/intel_vblank.o \
> > > --
> > > 2.25.1

