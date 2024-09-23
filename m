Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3B697E5FB
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:28:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8086310E386;
	Mon, 23 Sep 2024 06:28:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RZnZkbGp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9E589207;
 Mon, 23 Sep 2024 06:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727072922; x=1758608922;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z/P+FuzvAOjjoNshcxBJhdSDYdQ+cNctW2a60LX4ZlM=;
 b=RZnZkbGpGXkjGAKJa30HzC4dLangXFqUaEXaVPELTjL0I8g8HvpXJLTq
 FGAfBGlBKNGWebHFm4R8Z3AFSMtVciRTI+CWzXCZKfEkdBbdR/LtJNwn/
 oNCODFhGdQr5nwmHiGrQ0mf0lX9J15OrjH1cD2HCrEMM0F6fvidpw8Nr5
 9sNKxmrHSKtkMtkaltcAWVpIBQ2gR8JPrruP6MzbhFW6fY8WRA3pAvOwB
 rGILzoZJRAYJl1JOhZBs53CgCEFeDQ/OKabqVqa2cL5fCNhhichSJZERG
 mfSRECELTcIgdCOYd1yHDyAwdk4Pym9PkxIae09Nqc86Bb4tyU6mOXRcx w==;
X-CSE-ConnectionGUID: T4/c39AoQ1aZ9K78Hvpwtg==
X-CSE-MsgGUID: BLZpn1B0RJyK4iv8hMMQNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26159361"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="26159361"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:28:41 -0700
X-CSE-ConnectionGUID: uP0fXGveTPm4ZRT1Nu6NpQ==
X-CSE-MsgGUID: LHxrIextTC2nuom1zDAXzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75343189"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:28:42 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:28:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:28:41 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:28:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I2UeaJMwBOkIhRZNq7pKxQ8OJBeIpNGLXdP2lDrpzJdYszvFRSd1l5M/VXrKT4s03Le+MJTBnmcac7AwO2PgbPjAuCPd2HFAyxiYncOgF+tiEPEQyXP8JiQi8qck2eB+cWfdhs2EiY1ltGu8N17lhx+IT/nupkUJnNKHnAWS8YKAYOHjJaEeWUe1GOBOm7HTWjf5KM4Nf67cW7X8qQk2y07ygDZHJjTwCPyvglsBn8YR0WfQN1pU1vjJTHFGlglN6eYZWrjA4fkn1NAOVczki01D8h1gl4T44i0au6A9jZdlDSfCP30CB1MwVls25k2l6IxjbD4iO5UJwoxDAm+K7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zW3F1a9Ul5UCOw/eC/43KMWT8gK3hDM2wRpeomaDA1E=;
 b=kfxIynEIJXQoInuU6ViUCA+90hPjDruQz6ABcFupe90pEhTNjN5JYiaBaa+/CqSe9cABQ295t8yOn87Y9fmrCdN6iTkbMviLAIsE4q6Vayoi3BVwiDiisbCU4xuI8BUa55ko8NTLaF0bkF/yD6Ehyc5T3zqyAZgvWMeJsdXYRWylek1ycxXX+RMM1sDEchvIaEwOmooxoHjzYd5xbT2uWRhEEo0cckADEMd49gRMTzLBl02GWg8OrlsQ+8YPI5ieVwX0Pcf6Lu5PKhhPmoSDCEsYYS8GTYQ6Oit+YBCRbfet4506HLik8oCOK5zsEOZWSdNGbzg+hJgkT/caZW3BYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by BL3PR11MB6505.namprd11.prod.outlook.com (2603:10b6:208:38c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 06:28:38 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%3]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:28:38 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLUtmidS80+BE+y9MO1RZncV7Jk9/mAgAABTqA=
Date: Mon, 23 Sep 2024 06:28:37 +0000
Message-ID: <CH0PR11MB550849D56A0906235C115F27C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com>
 <SN7PR11MB67504B125D9B035F37D79420E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67504B125D9B035F37D79420E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|BL3PR11MB6505:EE_
x-ms-office365-filtering-correlation-id: 71f0aaee-85ab-49b3-32ba-08dcdb98f57f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?i6Z+cFKJmZiLyiJyZ/s2ME0i5TH97aLfy+r0bn1mfuxozm46tdUu7u6SEPSR?=
 =?us-ascii?Q?l3UiSlzNhIuqJt5witGhh5EKZuTWppCAgB7oKK3532InGqqfi5qqiCFYPHmF?=
 =?us-ascii?Q?W3r9pIZWzc0zgBbpzxGMIrcvO/boRAfGcIT8EMhnRWEreGA323PrWXlziW0d?=
 =?us-ascii?Q?AZ+Bygl639aOPQYn4KgPYFsFrvhJEQUOfwum8TAD69zk9FYV15nu9qHmGarq?=
 =?us-ascii?Q?F2qViaZ44ue1272+kaF/b/yCXnF9UQLM3LzDi2WfmPa+71CV6lcNrJ87XUlk?=
 =?us-ascii?Q?CxsS351G7C43NHHyMtFZ95Q1QmBU2VLziFLiK6WjcdFhBQ5B5Y22gXKsUDJ+?=
 =?us-ascii?Q?i69VOad5iP+cf7XOvRJTRZ+b4HkTsauC1dQyub3YPlbD9IXVt+RJykf+N9ET?=
 =?us-ascii?Q?L9keAA1Z8iD4eAZ9PNXiHYAszFWY4/FZzh90VwktYP7pd3e/d7pOXQPHd2w3?=
 =?us-ascii?Q?earueSY4zLFS367DTsmMGCAq1f0NbEGGeqdo0/TspuIl7mLYMJ7wpyTgV/RO?=
 =?us-ascii?Q?j9Sz6koNAzJRDEofqmqiDwxtezGs9NWu4mLMAikNF8ATwTF21d07GqUmYeeu?=
 =?us-ascii?Q?GcJls+KIDjTFVnpggcpRNLgQpaaCl1DyDyJbnduH2b6S+0hEl21x/DDC/HY3?=
 =?us-ascii?Q?kseb9znukXYFmgM/4lNuvSqL2MnvMBBZ1LipZUlhz/274+e05v/ntuYVOhvb?=
 =?us-ascii?Q?IMyvKGEInDa+PhjU5NW9zIVyhmqCbVO5p9rRXU078XAezkO/ybuSR+eA00EF?=
 =?us-ascii?Q?mKcn9VhEinOWCutTx1F4L4JISPsPuq7I87A+cuL2Db0AwaibqTnKKmZ+Vxgn?=
 =?us-ascii?Q?AB9p3D+GO7BKgFAkJLcJWdaomaKtK2rp6dMHNLrn0q7tegiWdckTrjjz7Ta4?=
 =?us-ascii?Q?yslwooobzk5CLea3F0QK1ZiFQBWMPJZ+kGB+tFyWqBbZ6y+/dHnt7D6Uak9Z?=
 =?us-ascii?Q?fPnpSXxSXwRsfhE9j7RiUnLj15Ymr72nVdlk3+jFgaGEwhXmDPGZdM5qzn63?=
 =?us-ascii?Q?wcjtnspLt7V4vtImo5XvHcxOOm1iSQGEQsKisZhS30HrzYG85ihhIuNU28oi?=
 =?us-ascii?Q?ATrpWwaObCMGXFlMxGC+DimZ53m1qr45nTk1YEhiWd8vinALNbT6/ey4IZI4?=
 =?us-ascii?Q?DPcmuHWAWjsbgsUXTfDDfE4xJTbkF1XjvN3GZhfS0uXPOF32mximLbr7bmTW?=
 =?us-ascii?Q?NUNtO90h/F15QdaR3I2KSiZ0mXln/xJE/ld25na8BBr1ODnspaUl24jiTjwT?=
 =?us-ascii?Q?HitBu/soPylq64wsOA8OMCoaPHQrdNgosOYhfMBOIZNfb85gs28BssRzNoOr?=
 =?us-ascii?Q?81vibFG5ONgVBvbGvEvj/HNc9KL8NcYQmkspMAmJk5b+VOSQyN5KYJ6mIt5N?=
 =?us-ascii?Q?8WifMNbUZ1Yz/xFKPB1/FAjoCxMUCkArGQnMEBDcLizAgRSwRg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xPZSuN/xsv6uylEqzUOmkMs7lWwPnaccRZSrRNuuAKb6k5yvyzOVELqSM74n?=
 =?us-ascii?Q?CUnRMj1gO3dHqMZP3oQdAdUpVqHXKcTcph7MPDungYmS4rYMC8I/ZgGdU/us?=
 =?us-ascii?Q?QZEDcUzJabRUf2BRhghQ54+Idl4frNz3xqDQu4t0rqVLN2HHmZEiCuxwKq9g?=
 =?us-ascii?Q?Eng8zLu+L5VqoeKLPTiwIXxFaphHMIO7X31BMpi+DTRz/qiDA9ryc0vpJKbW?=
 =?us-ascii?Q?S2Ua7MG0IdZVgbeqvSfs7S7BNams6nb7yniDOY54rRpWq9ijI3rfR/+sylaB?=
 =?us-ascii?Q?LbYDp0vj3o9gVpWhE9ePRmyHwprNdsfoLzwlrT8ybgzsSaR1bgcxkcTz040O?=
 =?us-ascii?Q?kHayd6Yp/8Xb8hHMm8YDGCr/Is0ogYtzu2N4K+jN86nb+s/dB58BthUgv29o?=
 =?us-ascii?Q?JZ1aaTJV/bSMHTzWzrrfmXmk6Ih3x+FqRRiSHTX3TR04ku67rarbyCrbaD5F?=
 =?us-ascii?Q?1K0AuCkoDGPvIvdABjruYYAzSNhvcQVuWM9h1Re8oNPnH7H/idA3WEpgOuPV?=
 =?us-ascii?Q?CWxX9v55WU3MzNBEGBXFTGoyyXSdMRJkjG9q4LjDeJqDO8EP7kfroe2B5ukq?=
 =?us-ascii?Q?Ef5kh6Gqx913W/eXg/2GxQB7ENUPbaoD88BmnjXsA4oFt2a7mfgpvjwcDO8a?=
 =?us-ascii?Q?gPcroiuja9i9fEUkGeWXKooWut/0aRlF3QJNPt7l71DPJUNeXFocb5cPuui5?=
 =?us-ascii?Q?XwBl6YIArzJOuyeBOpdYB99h6+VIyQla7cRGiWewXGn/Ewzx3y+y/gvGVsv4?=
 =?us-ascii?Q?HrIxX+qim9QOPPOHrZoWjc6wVKFmCf+mVMSI1vP/++gFbCgOTnnT+PwU/iCc?=
 =?us-ascii?Q?swq8CNy9T/mpg4rTp2bFOBHbTiXu6TUVXdHpyJ686sHzeXcCcntaHKruHYnO?=
 =?us-ascii?Q?IaTcHyC8utKIkYisOnDZi1/U+2r0cDjar7EKRGQ8v1eeibNRc8lDvZZ8iIb3?=
 =?us-ascii?Q?yMF6noy6TEiC3MHTe6f1+//4lAlUydxuETuxrv81hoYHNWKz+hM2f5EvZun6?=
 =?us-ascii?Q?yys3tb2dvXE7eIXszfZ/Fpj05IAINXSKASyTVDUJjuTg5wlUEqk4PIzHNRQ+?=
 =?us-ascii?Q?ly5wNke/MCLNyAccngrWnj12oAd7R0eiUwnFhNDzXjOEjoPVm2fD9okCiXkI?=
 =?us-ascii?Q?lloBvVffffskTiZpzG6yMe6/04KIDPRXt3UlE2R/mGvLRF6M8UCxAeUqBgc5?=
 =?us-ascii?Q?b+471bQzqIeapwAdnPYleElrIDbo1maVmOlVZHlNjWKSWeApgBl8NEvtiFMj?=
 =?us-ascii?Q?ccpn4gr3pwLBaB2HRHlGD/CNHi+jTuNZiDsL1KHx3ZdaoQaq/6pj1MQkDxiJ?=
 =?us-ascii?Q?kKLrLhWQKy4LnSY8MziKwOuWEA0G3haEPycpuEDYeft0HMeeHOSDctAO2Gv4?=
 =?us-ascii?Q?RVKVIOgryoNYPV7BlHWLj+NzEsDJgjxsYRfiyCisCRleuERVya6Da7TL+AXD?=
 =?us-ascii?Q?w9tJrY2Ld95qiYaRBaTT4A7Yz9kz8SLwldq0G3RvwuEOcwZblNJHvzlDm2Hk?=
 =?us-ascii?Q?gnl1gTGvGxEqjq+p+DpsJr7RTe8HK+yI9nbwHbdRPsGD6SWouT1cSPvwfjCC?=
 =?us-ascii?Q?1GwoVBcdn13GiUbSASJAnOyqH4TUcsmJkAahrzjAPEUnJkd3PCJVFE9/O4sV?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71f0aaee-85ab-49b3-32ba-08dcdb98f57f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:28:37.9425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pByjWVFrAYaXzAe3W8zcF8AGmdi3DOV8f0fNcES1rYPPustK+eG4+0HkxuGfpxQ2Sj8LfNs6kLFk49zArPsI59vjYHHwE1V4C8nhmA3jb8+BEXCdRyPnTkfoyqpgp9pA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6505
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

> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Thursday, September 12, 2024 10:36 AM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> > <nagavenkata.srikanth.v@intel.com>
> > Subject: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading
> > the FFE preset
> >
> > DP Source should be reading AUX_RD interval after we get adjusted
> > TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting in DP
> > Source)
>=20
> I think mentioning the dp spec reference here would be helpful
>=20
Please refer to Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequenc=
e of DP2.1a spec.

> >
> > Signed-off-by: Srikanth V NagaVenkata
> > <nagavenkata.srikanth.v@intel.com>
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index f41b69840ad9..ca179bed46ad 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > *intel_dp,
> >  	for (try =3D 0; try < max_tries; try++) {
> >  		fsleep(delay_us);
> >
> > -		/*
> > -		 * The delay may get updated. The transmitter shall read the
> > -		 * delay before link status during link training.
> > -		 */
> > -		delay_us =3D
> > drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> > -
> >  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux,
> > link_status) < 0) {
> >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link
> status\n");
> >  			return false;
> > @@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > *intel_dp,
> >  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX
> FFE
> > settings\n");
> >  			return false;
> >  		}
> > +
> > +		/*
> > +		 * The delay may get updated. The transmitter shall read the
> > +		 * delay before link status during link training.
> > +		 */
>=20
> The comment needs to be updated as this is not being done before link
> status Also a question does this not conflict with the requirement we
> previously had (reading it before link status) ?
>=20
> Regards,
> Suraj Kandpal
>=20
> Regards,
> Suraj Kandpal
>=20
> > +		delay_us =3D
> > drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> >  	}
> >
> >  	if (try =3D=3D max_tries) {
> > --
> > 2.25.1

