Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2427AB6A41
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 13:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16CE610E2AA;
	Wed, 14 May 2025 11:40:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QY7RW0+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AB8510E2AA;
 Wed, 14 May 2025 11:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747222852; x=1778758852;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DM1lPNlBv5iI4BI30mk04ru6uYY2oUFROc+LVV9eky4=;
 b=QY7RW0+UQD/QSId9PiSIxrU6N8+DzBBqcxjYWC9rADurLLXgnrAgbAvR
 EhEPV0FyjJ8vAHEF8UNgZ4kYwFlCFMzNKdVtfkTTDPfhNCCEWrHfF7Kqm
 k7cnkoqzHYLvZLHS+lQjXHLh/95VD59JDmSXIatPv4lAGb1gDc6M4eNyk
 SC4Pb+29Mzl9doGZ0K1+rDVpoMp4uoEiYXCcYCkm4yuLreeFtRHuAqrra
 EYdyYCKQx13Kg60ms1RMOiNCZw/syIqnPrixDYvzWISz7MIg+8fsUCRtp
 5ZN8SMRWVL5hmwhhhmOpe6VHnccdPXu4F9g0XqW7FqdJMlQo/04dAzWi6 g==;
X-CSE-ConnectionGUID: HUnZAblQSFSHqgvg9cMwvA==
X-CSE-MsgGUID: DkVKJx1vTUW2nHiTamq++Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="48799711"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="48799711"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:40:52 -0700
X-CSE-ConnectionGUID: dJLlvhgjRG6uAY7Ek9G41Q==
X-CSE-MsgGUID: 416Bn2/FTpmUH5O+d7ecIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="161304428"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:40:52 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 04:40:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 04:40:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 04:40:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SRkuvs5IDrypXNOwTMrOh2/Dv4gMkCbwEKoQ9Eaj4BcfUCpjltjpxkXhLn+05qM8s4DiGKV7nwWUTCYV3d9/8u5WLwnfVwuSdHYizRpTDJqnqaLpd8xTP4oNJ/9PS5C/yrxgiB/6B2VtILxrovaJvmyC9d6vb29wwPTNVxxiBGlaEyMzRt6VxAwzS6eto0/nJfMvFLjEcJj64rWIcESGDL+zCVOICMu7O8IY5iNxt0d+0l1heLwgCFtw5S/sGcjFFTSjUrtH48UZNxNUNV107An7g2iS1BOxiG2de+mYbjKQLZDCfK/fQfVuIVnuRZ0/8u22gPQbM+KJ+wNlQ8kY2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lW5M8AtRoYP8DzWL9MilIhufLP3Ip4uDaXEMdIX01nQ=;
 b=xmTnViTuZK4XDVwY/+yf8He9sdPbz2NrDD7JTAcTdvJ1bpdy+nzR1Pr55DxAv/3wizho9Kg7TTuCbJLfzPCvQJCLCwh2BpHzSRZ+2cOaXP+oLp4JWK93rh7n4rmUsyndk9dm70evzjrayCiOQyTdEEBMQwvY94ZUMfgK+WTk5iV60nv4yU2kkAmF8fxzc5tlbinv65DIy5xGA+ZXbw76UDXIWXltPCSlFBF1OkepFV1e0p62dNe+Th4oCc8pciyBB/IjRQMlm2SVBEZAiEAqY2FL9dRIq8+9Y66xrEM6hd3nPMDNjrbzcHoiIIF33nXPjuXw+bqhZjfDkkdN8HvvBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB7860.namprd11.prod.outlook.com (2603:10b6:8:e9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.29; Wed, 14 May 2025 11:40:29 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 11:40:28 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH v2 08/11] drm/i915: use GOSUB to program doubled buffered
 LUT registers
Thread-Topic: [PATCH v2 08/11] drm/i915: use GOSUB to program doubled buffered
 LUT registers
Thread-Index: AQHbqHebHibDH1tfTEerK7RkyOw9GbPSMf+w
Date: Wed, 14 May 2025 11:40:28 +0000
Message-ID: <DM4PR11MB63602C7D0AA18A0DDA9F2B85F491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-9-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-9-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB7860:EE_
x-ms-office365-filtering-correlation-id: 3f4a2f7d-220f-4150-5b8a-08dd92dc2007
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rrZsPGtTXGXibzfqBGojPcxKAe8VU+vQv+TGmxzM2XkKG/TFMMXDjnQxN8yT?=
 =?us-ascii?Q?Sh+OZReSA3646wasHik3kxOoEtOVF8mhLspkQxRS4wtqttG9nnv80iIG+XRM?=
 =?us-ascii?Q?Z0Dt5B3mIA/cE+9MZjjKaL/w5l0IO0TQEdlq8nogz5yOiqfyL2VdGPtuK86y?=
 =?us-ascii?Q?H3GWDUPBtq1wpVaRscwykJzsf5UFjLX0C4gCnrXKXM+Ej/msyWQr8Evqjiou?=
 =?us-ascii?Q?KEfMOAfwR1LuAhYjC6yJL8vBv1l8ddORiSghoqIyWgAJTalJU394zc9lmDhm?=
 =?us-ascii?Q?6fm7WFEqpOX7UwYLfIx+76fzNV6X7zq2Q1anbp4JgH2vlb02G5+n2KR3aEQY?=
 =?us-ascii?Q?RwtwI4bnFfkTPSRYTIyeLhUr7gzqhrduRBlenMgoR1+aPCI00+g9/pwEILnu?=
 =?us-ascii?Q?PQ9ddFppwhW2MM2/aXI9rq5T7IPbhR5MmnGzQpS8mqxRq/kSrxTZJY5nnEAb?=
 =?us-ascii?Q?dX7AYWZV57x4/X9efKJT3cIGxKHNNaTmAKOnueFJpOGAdzq2gBK8eKOoqEJZ?=
 =?us-ascii?Q?qezERQDmiC62CvhjYq5m+YwZvNhRaDaTUclJKaO5XtUCAVieK4f4NCeHE/D2?=
 =?us-ascii?Q?Km5ajnv1s0gP3D1D8+/72PbvSyJor0+lUer0d9pK941n1NIEIqT6/kAGmUT4?=
 =?us-ascii?Q?aW4P5lkKKcRDSPJo7mcH7M5CfnRefCGM+qrS6W5lerSpL+aDdUojJmIUrWwV?=
 =?us-ascii?Q?Ki/5fJdOF3+gvI8hhCs+dUyIsCbTeara6/ehYmaMDWGuANZ0ykOIWDyBvL5A?=
 =?us-ascii?Q?TIW4+9yY12mxVYIw+xdBRxaxqJlOSsfP9dviSjttD8BcvawXyOzX2e1ogrsf?=
 =?us-ascii?Q?pcR5LI8yvDn3AkwXhmcdawM32jk3rTg1d9exLsgW4wwucm7SkyU9EpmM3n5w?=
 =?us-ascii?Q?QkCJn+z/TNjoWnIkblSDc2Somon+jpBtI26gNOAZXawgzSzNYC+4uriddD0X?=
 =?us-ascii?Q?y/hHXRzRF3EozC8yRPJ1+EMxZCi0ind3qrLNglix7FEViNHpF7+EkkHuiIuq?=
 =?us-ascii?Q?sn7eYOYK7BFPbJls5HCw2n6p4XfK7Rpgl+JnZZeoPIGqYhO6hPmIPMvw0x6d?=
 =?us-ascii?Q?n3+hXdy5L9U4fDvDq9nfSanLRduvZD+f88UgQnV84kH8l/d2ISHUYk4LjW6G?=
 =?us-ascii?Q?1sKmfyhucI3ZjB+qt/oaMvkZ+WLOlTiuyidPS59fBVlyPs001rOjxs+sVGK6?=
 =?us-ascii?Q?w83OKDUXKppKxxaq6guvmsaTSq+3QiNFJQ+t21j52ObdiMpg/VKGRjUUSXLG?=
 =?us-ascii?Q?fu1bPxthbyjEh8xA2oVeNPDrIEg1FoZlQOFUEmFaJtSMzyHtKNtEFz9+L5mq?=
 =?us-ascii?Q?4O3jb/bKVD5McevfqH+1IJ0u5vdl+lLzUVjUt7dsrbOYVCH67QM3bw3QHEsb?=
 =?us-ascii?Q?j1ClJngZGtv/5kqRQdIw7mHQyU8t/42f1QReJKtLZKBrGOSTk79JJjufxz8A?=
 =?us-ascii?Q?R0bIzQKGsyKc/xliZ7QXT9Txal+O0aBVdAwFrGXELNFXX5p+UraGaY45STkV?=
 =?us-ascii?Q?uAbkO/IHZwcTHb0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hW5xKklYj5kpTRLQB+uVTltc7dlKT6v7boxUyuxgjd81CoPtcdsryvuvm873?=
 =?us-ascii?Q?LI0EuqRLiXa22LS0+kYsbON2rFdlAbV8ivxUYLAmAovbEKAR2IJDZO9MCFYG?=
 =?us-ascii?Q?TPSswyUXdVpRmZiSI+PyBmCxCZHcpo+2TtaM28YvORsp6gaznfD4NBB6NVn6?=
 =?us-ascii?Q?gjc+vFYp+jTI4yWG/kQRx8cawDgW6xIcmtICKSUDDTsYa9q+FhJ1ajR7Y7q2?=
 =?us-ascii?Q?2wiuUQ9igFtRKoVEXxNSrg5aUQQAEye4rt6B4a5LJwf6HR3Ay5mY82m4sdqo?=
 =?us-ascii?Q?UBNk4hmPapPx9D8ekCsLdgkblIS0P67FUQ8GI/u8za48qBtUsuca4Z50WOod?=
 =?us-ascii?Q?tiSpw4m7jDE942Vsachiud+E+2W8Sp0f2SkPR8De6PRtIjMLxF2ze40dQsOc?=
 =?us-ascii?Q?wbMTpx2w3KRBp6m+t0JadVv54EN0ptDBMvGGR2FEiQwDAx+uwGk9SidwEH2p?=
 =?us-ascii?Q?Gz9UmDDtAJ37jtNKEA8svguBWvwM1PdJ/rkiQkus0GSn2xz9nTsqWIz1T9i9?=
 =?us-ascii?Q?5AsGgMbp2haqwBpq4jUomh30BneuRQme6PlxL/VAG8i1VfJxh/28lsunKcxL?=
 =?us-ascii?Q?If46T7jooE6cyyt1QJcIoomK9ElNaq8PfyAg2c/Ic5PDC755IgMDc3UTnca/?=
 =?us-ascii?Q?vkcoQlC3An/6RXUoEJg17EZDfUaHJK2IAt2n8j1y6iEifytnXl+awTqW5lmA?=
 =?us-ascii?Q?nNUCFQiX6jaN/PDV22YnElhEZl3y/HDYEHNqzXw3ZoE0HWQNwoDrsMj1HzaG?=
 =?us-ascii?Q?FupM0ImQcxUgK/qzXMGhWEevB61BmuUIM4aYNJ2I8HnAV8yp77zPmaTc6JDW?=
 =?us-ascii?Q?Nh5oYgIxskKE3FiCH6WhwDZGNhZOtw2IUpwx63BBMm7D56CJbeVjNtm3GRmw?=
 =?us-ascii?Q?ryobWUil/sJ+shms3ztgu4BsKlWjfqb301n9dAXC7UObQIu4gao39cqdlq2H?=
 =?us-ascii?Q?wVDwJGEQH2V0RLAmP5FpdY9e3Qn0zPjMluhmrDUNVaRXstulu1QvY+wpkuFh?=
 =?us-ascii?Q?VMwdO6/3x0lYfnQIO+fumG/8GAM16TLjsiXbL/s3TLmVwxQZ9UF6i+4sMwgy?=
 =?us-ascii?Q?NJfWoP7Gh+53VwlDZAGHxbvjXpIGSjcSBoyHXeiQ9qhHUskr4jYPynNT+VSX?=
 =?us-ascii?Q?MOgQV11KvM8DHXgPtzAReasx9F+LHxOc8E2iabk2hlHdyFxM5tQXShuXCZ4A?=
 =?us-ascii?Q?YXuHwlAEmN+AsDS++h0j0zBGsq/5mNqR71D/h1brQNzpcAAFo+mUadRStjzk?=
 =?us-ascii?Q?9bCiNboT9o0mVqI90b7v/yhu35GAnNCVzsDB3bfX/EwClHO1PaOHy/x5ICQO?=
 =?us-ascii?Q?cTvqUoluf7kjRLcB6PNaSZYWJYyT4UB8M3Ex/4n9WMbCvdCY/rdf5fC5jcPX?=
 =?us-ascii?Q?8rGiRCcIqKwEcOGbFcYwVuWK7kZa6tRSylE6XRypm4LZSZtosb5opQkxSPcg?=
 =?us-ascii?Q?KCb0YLDWsMTu0QERlloRzyACy1S/DN7XVWmnbnGubde7ERlNHy+A7KFwAJxS?=
 =?us-ascii?Q?KqzyG1Gl+CpavD24RMpvxJqCwhVh4NLZGfFWhRID07VaL9RQj/lW1Opk59BJ?=
 =?us-ascii?Q?OzbyCVWu9QRYiXyfksk1ii+VPEzEk2Iqrn7hdCFH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f4a2f7d-220f-4150-5b8a-08dd92dc2007
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 11:40:28.3940 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6MPEN3GcfVYBYy/Js/SZtvqvCf85YNAPlZffCys3NgbyU0FXyl967AUL/7jSKqTtAMG/Uek6oMU5D6KT4sOFGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7860
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, April 8, 2025 4:30 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v2 08/11] drm/i915: use GOSUB to program doubled buffered

Nit: s/doubled/double
Also add display as prefix in header (drm/i915/display)

Overall changes look good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> LUT registers
>=20
> With addition of double buffered GAMMA registers in PTL, we can now progr=
am
> them in the active region. Use GOSUB instruction of DSB to program them.
>=20
> It is done in the following steps:
> 	1. intel_color_prepare_commit()
> 		- If the platform supports, prepare a dsb instance (dsb_color)
> 		  hooked to DSB0.
> 		- Add all the register write instructions to dsb_color through
> 		  the load_lut() hook
>                 - Do not add the vrr_send_push() logic to the buffer as i=
t
> 		  should be taken care by dsb_commit instance of DSB0
>                 - Finish preparation of the buffer by aligning it to 64 b=
it
>=20
> 	2. intel_atomic_dsb_finish()
> 		- Add the gosub instruction into the dsb_commit instance of
> DSB0
> 		  using intel_dsb_gosub()
> 		- If needed, add the vrr_send_push() logic to dsb_commit after it
>=20
> v2: Refactor code to simplify commit completion flow.
>     Add some helpers along the way (Ville)
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c    | 39 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_color.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 24 +++++++-----
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  4 files changed, 47 insertions(+), 19 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> index bb2da3a53e9c..ac00b86798fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1965,6 +1965,25 @@ void intel_color_modeset(const struct
> intel_crtc_state *crtc_state)
>  	}
>  }
>=20
> +bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state) {
> +	return crtc_state->dsb_color;
> +}
> +
> +bool intel_color_uses_chained_dsb(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +
> +	return crtc_state->dsb_color &&
> !HAS_DOUBLE_BUFFERED_LUT(display);
> +}
> +
> +bool intel_color_uses_gosub_dsb(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +
> +	return crtc_state->dsb_color && HAS_DOUBLE_BUFFERED_LUT(display);
> }
> +
>  void intel_color_prepare_commit(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
> @@ -1982,20 +2001,27 @@ void intel_color_prepare_commit(struct
> intel_atomic_state *state,
>  	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
>  		return;
>=20
> -	crtc_state->dsb_color =3D intel_dsb_prepare(state, crtc, INTEL_DSB_1,
> 1024);
> -	if (!crtc_state->dsb_color)
> +	if (HAS_DOUBLE_BUFFERED_LUT(display))
> +		crtc_state->dsb_color =3D intel_dsb_prepare(state, crtc,
> INTEL_DSB_0, 1024);
> +	else
> +		crtc_state->dsb_color =3D intel_dsb_prepare(state, crtc,
> INTEL_DSB_1,
> +1024);
> +
> +	if (!intel_color_uses_dsb(crtc_state))
>  		return;
>=20
>  	display->funcs.color->load_luts(crtc_state);
>=20
> -	if (crtc_state->use_dsb) {
> +	if (crtc_state->use_dsb && intel_color_uses_chained_dsb(crtc_state)) {
>  		intel_vrr_send_push(crtc_state->dsb_color, crtc_state);
>  		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color);
>  		intel_vrr_check_push_sent(crtc_state->dsb_color, crtc_state);
>  		intel_dsb_interrupt(crtc_state->dsb_color);
>  	}
>=20
> -	intel_dsb_finish(crtc_state->dsb_color);
> +	if (intel_color_uses_gosub_dsb(crtc_state))
> +		intel_dsb_gosub_finish(crtc_state->dsb_color);
> +	else
> +		intel_dsb_finish(crtc_state->dsb_color);
>  }
>=20
>  void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state) @@ =
-
> 2012,11 +2038,6 @@ void intel_color_wait_commit(const struct intel_crtc_s=
tate
> *crtc_state)
>  		intel_dsb_wait(crtc_state->dsb_color);
>  }
>=20
> -bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state) -{
> -	return crtc_state->dsb_color;
> -}
> -
>  static bool intel_can_preload_luts(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_color.h
> b/drivers/gpu/drm/i915/display/intel_color.h
> index 9d66457c1e89..bf7a12ce9df0 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.h
> +++ b/drivers/gpu/drm/i915/display/intel_color.h
> @@ -24,6 +24,8 @@ void intel_color_prepare_commit(struct intel_atomic_sta=
te
> *state,
>  				struct intel_crtc *crtc);
>  void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state);  b=
ool
> intel_color_uses_dsb(const struct intel_crtc_state *crtc_state);
> +bool intel_color_uses_chained_dsb(const struct intel_crtc_state
> +*crtc_state); bool intel_color_uses_gosub_dsb(const struct
> +intel_crtc_state *crtc_state);
>  void intel_color_wait_commit(const struct intel_crtc_state *crtc_state);=
  void
> intel_color_commit_noarm(struct intel_dsb *dsb,
>  			      const struct intel_crtc_state *crtc_state); diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index c940ffb500e0..58a84829fe58 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7230,20 +7230,24 @@ static void intel_atomic_dsb_finish(struct
> intel_atomic_state *state,
>  		if (DISPLAY_VER(display) >=3D 9)
>  			skl_detach_scalers(new_crtc_state->dsb_commit,
>  					   new_crtc_state);
> -
> -		if (!new_crtc_state->dsb_color) {
> -			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit,
> 1);
> -
> -			intel_vrr_send_push(new_crtc_state->dsb_commit,
> new_crtc_state);
> -			intel_dsb_wait_vblank_delay(state, new_crtc_state-
> >dsb_commit);
> -			intel_vrr_check_push_sent(new_crtc_state-
> >dsb_commit, new_crtc_state);
> -			intel_dsb_interrupt(new_crtc_state->dsb_commit);
> -		}
>  	}
>=20
> -	if (new_crtc_state->dsb_color)
> +	if (intel_color_uses_chained_dsb(new_crtc_state))
>  		intel_dsb_chain(state, new_crtc_state->dsb_commit,
>  				new_crtc_state->dsb_color, true);
> +	else if (intel_color_uses_gosub_dsb(new_crtc_state))
> +		intel_dsb_gosub(new_crtc_state->dsb_commit,
> +				new_crtc_state->dsb_color);
> +
> +	if (new_crtc_state->use_dsb &&
> !intel_color_uses_chained_dsb(new_crtc_state)) {
> +		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> +
> +		intel_vrr_send_push(new_crtc_state->dsb_commit,
> new_crtc_state);
> +		intel_dsb_wait_vblank_delay(state, new_crtc_state-
> >dsb_commit);
> +		intel_vrr_check_push_sent(new_crtc_state->dsb_commit,
> +					  new_crtc_state);
> +		intel_dsb_interrupt(new_crtc_state->dsb_commit);
> +	}
>=20
>  	intel_dsb_finish(new_crtc_state->dsb_commit);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 368b0d3417c2..14943b47824b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -157,6 +157,7 @@ struct intel_display_platforms {
>  #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >has_dmc)
>  #define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >=3D 20)
>  #define HAS_DOUBLE_BUFFERED_M_N(__display)
> 	(DISPLAY_VER(__display) >=3D 9 || (__display)->platform.broadwell)
> +#define HAS_DOUBLE_BUFFERED_LUT(__display)
> 	(DISPLAY_VER(__display) >=3D 30)
>  #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
>  #define HAS_DP20(__display)		((__display)->platform.dg2 ||
> DISPLAY_VER(__display) >=3D 14)
>  #define HAS_DPT(__display)		(DISPLAY_VER(__display) >=3D 13)
> --
> 2.25.1

