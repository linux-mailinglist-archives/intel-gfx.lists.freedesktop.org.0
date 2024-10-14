Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FBD99BF2A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 06:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB5A10E070;
	Mon, 14 Oct 2024 04:31:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVKXcLI9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C944B10E070
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728880313; x=1760416313;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pVIsQAJY4vyPZaS0Km+wz9wnwnK4HyBF8M2/1Jj5y18=;
 b=BVKXcLI9FTGlVedtWY1abOG8NeIGy6MUhqK7mwu5zGpFu5+oKWsVNI6s
 G39uJVffHwnitG/T0hp+VaE/UNqo1nHN1Pku1UhR/MumQb8A7W6nRGCzO
 /X43EZiy6HYPjhACl8uAS7nYXOaOdb8nDoy5t5XdlReYjyAo1A9P/jT3q
 PaxpB2HC3E1odDmrjn5YwQC0e5c+v2wpB6gHz92s09zzq1/dvyxxTDBLl
 ZgBYIQ6RnMscW/s/M4GiJZ0WKXNjbT3fprkprCQE4C/CfiNnM3d8On+d3
 1P8okfuI/WyLrZ4x5YRgqA+fDvfxq0oWKoAThwrcQfWuErF8Z90wjrhNk Q==;
X-CSE-ConnectionGUID: C08jdQ+oSPO4C5npeH0m8w==
X-CSE-MsgGUID: aiHtJNaJTzmhxyITifmfcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="27692668"
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="27692668"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 21:31:53 -0700
X-CSE-ConnectionGUID: 5pEN12k1TFO4tNgsnIp+XQ==
X-CSE-MsgGUID: DLKy3VFxQAetYjRW8lY98w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="82028765"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2024 21:31:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 21:31:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 21:31:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 13 Oct 2024 21:31:52 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 13 Oct 2024 21:31:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjm27GC3+9xfhKaynUVUJVtnKtpn+QAbgiqmceohFGFNIC90pfMEC4a4snqYIggjtiBp87Vd5tVyoImnrTNF3XtSDzPGMqR81ZERdzRYhj9cexeSTK7WdmnIZXb1jObgvXYGMapbvT9YpBlqo8JfxAbjBmtph49DYNkTFhwQWdptxE0joVhfpnPtDYAOryWoHhr5i7G29dO8hrREyIwJGcysk3X/P7vJK5p04xjU+peyoyaSK1sFmXnOVmP/Ffu4eRqkmkRPKN7eCrBpJUcbRHbBd3HDUW1Whx6ZkenBZjZEBr834FytcoJjpQSjTJgOKfYyMo6prF4A4B7TjrRrbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFC0JWuFTzqw50ZReGzLF4US2TwRBwLvNmyMYIZ16FM=;
 b=sSaAZqWprWUQGW68gF8wGd4xbOlow1k4FBM2U34TY3zAs4YFfzzsVEhzP5/n+I3l2WJq29PX9GgJihtNCvZRqPrCUv2bTQkbSmshLfnW+nrOb9qotC3SMGWZULonr06QQyAVblaaopcxemeQ2UThcGvK7cOkqvmb7RaEQNbnxQ7N3J4bGaM2Z4rUx5lMfXmAHzNdgEWB3RVZeSBwXZplcpk0L+TZomyyGSHIZgWjdouhPR0mzVUSQoaGkBnZGj4FhvBxbpzJckgSQx05mwYUIIgC6KOr2b/jeqRW3XtMmq3QeC4V4m2gObbN7mtt0HBxFo0tmFkwWDfveH8vt8wstQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by SA2PR11MB5100.namprd11.prod.outlook.com (2603:10b6:806:119::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 04:31:50 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::df5a:a32c:8904:15f1%5]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 04:31:50 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Jadav, Raag" <raag.jadav@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "andi.shyti@linux.intel.com"
 <andi.shyti@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Nilawar, Badal"
 <badal.nilawar@intel.com>, "Tauro, Riana" <riana.tauro@intel.com>
Subject: RE: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Thread-Topic: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Thread-Index: AQHbGLQWlpt4+HXex0Chvvmk6hMCEbJ9HIMAgAFE5wCAB1DGkA==
Date: Mon, 14 Oct 2024 04:31:50 +0000
Message-ID: <CY5PR11MB621150027D63DDA95B01427895442@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <87ttdmbj8l.fsf@intel.com> <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
In-Reply-To: <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|SA2PR11MB5100:EE_
x-ms-office365-filtering-correlation-id: 84c38ba6-2cff-4e8a-d6bc-08dcec091f32
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?tgeDN3Ym8W85+Hs/S5MS5BpvIh5nfC4Q2Zza7i4JY1TL4E8mD/pz5EHTYPTP?=
 =?us-ascii?Q?f9itdGevmZpkINPx9BjrXA00RzNH3Sp2pXc3LbFrHGedqNAV2MMXwXM5UVQ/?=
 =?us-ascii?Q?xjSnCLGLFJzgGtUj3VM+gcBO+sG+mpjQsJh0qNGvjdQNKP0WeEf+ca0qiB8h?=
 =?us-ascii?Q?bAgPNvhfwrkSYFB4W2bVWKi864wnpJSlUwnx+aGABhzUJn3ievllzFBlSR9S?=
 =?us-ascii?Q?5RFshg8bsIE412DFsAtGu+VrqoNXBcTzV4hOb86BmN/EUnbf250V1KBctNqr?=
 =?us-ascii?Q?a/6SKR1yi/TegiLl8DHvlR+VbwE1AvXSjB7HrCtSK2WkwiITDmOYxJow5O6b?=
 =?us-ascii?Q?uZ3mlhtobgY94/zRgETVwEKIs0V4SRRuuTJKyi4hpnb4/PpMLpbLBEEdff7n?=
 =?us-ascii?Q?+RttZg2lxK7c2sPVd0Q66fUbifxbzjpLcVRktl1pBuZXrERmRJAYChwTRBJz?=
 =?us-ascii?Q?bX/ZiKbELnOAZ6kwKPSKs2K6KdTSZGvKZDrePpEuMufFvVlO3giKuCpvEi58?=
 =?us-ascii?Q?ekoy+WFT/7pW1vgIzEOI92v4nTvQx42H/F5vYWH45zW0ZjlAHQld+ZOs7vTZ?=
 =?us-ascii?Q?rlPv3jAlzZIFzAo5+RctmzzjTcrLBgWBzCYtd/QitHJIV+E3j3jX6z3D7YR5?=
 =?us-ascii?Q?vlzW04dQTaedte63zrDD6WWSwFPv2pGsqwCvuPYG+fMmUyJ2Imm1xgFZ3Sjl?=
 =?us-ascii?Q?1jFFvVxHNHGgENHgYk3Zjkeb6vxz069EgOBH7F2xeSiLUoq3IPt4LfGnyaYN?=
 =?us-ascii?Q?E6O8ahG27CAlpMoMfmYDtNNH0rBJha5EcR7/1GpePrd2X8+SEemnzUQnhntd?=
 =?us-ascii?Q?hC09FeYjyi6f0vvoyOWb9HzZ7mQNPuuD4128eAlVTtMKhhgbUqgqRPppMz6u?=
 =?us-ascii?Q?c14Wo2gVp3l5XNd6pOCviiaL1M0xXGEfm6Atvj9DHA72WUYBGJiWTJJ/nQz6?=
 =?us-ascii?Q?kwRKX4OQRVGem9RaIVLtmWnTQIm37Ashyd7pjpnKzLygsAOS8zdx7trUe5Ec?=
 =?us-ascii?Q?kTvcnYfA4e+TWxSPFuuNpvZrD9eCUvp4zNkvK3ZfD6L6dWOHW/Kab3D3mAp9?=
 =?us-ascii?Q?OpM8BPulBxALJNCglxKp0hbirxaaWShuRuqxb27RJRR6+XAuOMhERtK9Qowj?=
 =?us-ascii?Q?1Ed+sQUDGk95o8j+/jOQ8UJtQo6Di29eCGP2ufbdvNBcyleT+8jbBfwZJlio?=
 =?us-ascii?Q?25/XyhcXPD61Rcd/MfRCrv8VpHhxKrb5GAgP+BY7egdNj+rA7viDD8LibuY/?=
 =?us-ascii?Q?42FijvTT9eukkZoCE9sVutAyHV9raS+txMApMZnM0H5im2IlF5WE34mlUZTV?=
 =?us-ascii?Q?ctdWToyDEdysOJ+JuvTTbLp+gbp6qkkSejk0YwYR4czCBw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7M1FtiIOm1qGNSRPCNITr6XmkB391bHPMqNfSYZyz92ZmTdyW/nubDWWMiTu?=
 =?us-ascii?Q?O1Ci6cQACK1nKvFjyQFaFcDVSfepZL4CbvgHnFlkpgM569269XWGtk5+A10J?=
 =?us-ascii?Q?e53+1d6VKGuaFH22If3/Ydh51pkgaHfGVUSJM8SPH6MbLyUvfXia2/T+QhMb?=
 =?us-ascii?Q?X1I97ONodBTMGvC7M3h/KOXJDq77ly3VnIlxL5M7+/6CHrkuqDY6ndOCkI/I?=
 =?us-ascii?Q?bHhBmeJGoomnZNtCVfUKJ7clZMkLW0H475/aJ6ofhpMg+gC5+TBgDReRl1F+?=
 =?us-ascii?Q?iYdZka/oa6jQWw0317biElc2AUJkSuD+9DenQ+nLnxXKdTRio0L68ZrWMSaa?=
 =?us-ascii?Q?c8SRC7eV5jQcoeSkl5tkVOPYpp9Eq8wkAfxI4u/M/KM7+RJIEvMHbOrQyLwu?=
 =?us-ascii?Q?y+uIvfUxPMGe75j4CYVtbNz8wZzZEoHdrMGYTAZoyuds2SPjJYMZ+9BE6Wcz?=
 =?us-ascii?Q?+tUrIUTsICNv0w3ZoCWW4v3gwFxWYeEvOFElATMwc3rF32zzAdC4Z4TDgLwH?=
 =?us-ascii?Q?PMcDAOy5lMtGNz/y1WgGaa040Su2P9PLx4hMNeQPUGpNr8bu3dhrmhtrFu6M?=
 =?us-ascii?Q?tP+5B4EnprSgLXHuGZe53avNclFfAdoFjx0f0300+slVdIgBCnza1w/Mw7Xh?=
 =?us-ascii?Q?Lvq42WtfSUF1rDFtZRLDZJ0LeOtBq/sgwbVVJNMjspNBYt/Qn1cRkr/dxnSD?=
 =?us-ascii?Q?xaYn2BDVQaU65b6k77L9PUU7kEevr2Lc5S2tPP1gZaanHbCIZq90wVKJ88bw?=
 =?us-ascii?Q?GqQmz1yYBb2LCW1qcUKXdy5lOa07hccogsRfjg6ziLYatIUGjO5QQhIIOwYb?=
 =?us-ascii?Q?FVkd8T7X4Pbj+CPkvGujxofw0c/Adac4DFGylbOrYxqstKvbAc5X1n38muD5?=
 =?us-ascii?Q?FoATO2hIBJKbU1SN44njhV3SqgZ/JaaHON4DWKyVF/6eIf+CShQusercquY1?=
 =?us-ascii?Q?ok2rMWGHoZjaJ8nm++eHV79d6tlpHMy7yg4TJ6qAkQLROfhukbFLATeaGhYx?=
 =?us-ascii?Q?QnYW+qE2DlV6YdLWidxid21BnsFvWO7FplYsmu1ZgghFmyhOZ6emRCnVCdbm?=
 =?us-ascii?Q?bD71lZsy5O0V6fEHgYfrCIYTHEG9krOQo1GDL9YFr8uQYaLM3K2UAyHL3jaB?=
 =?us-ascii?Q?KG8IK5ryGKxNOZi9DSJxO072x6Wh+4ma4sNYDMYjVDU0l0CswjZ+2rcAwdAK?=
 =?us-ascii?Q?Lj+AYOAGsPUWxIoccFycl38UuD5v+3WCBQK+I43rrSeC5Qan/vsn7MiZe1fF?=
 =?us-ascii?Q?O2is82Cm4HtcKGxrJojRrORHjYECy8Wb5E65Isdv07VLhVmEWpLkLtm5bogk?=
 =?us-ascii?Q?aC+71ufQPMn2r1S/FaYU1D0mrKP3Y6mJbDv0FCGW+Qegwd/smYUnlD0Uvyvo?=
 =?us-ascii?Q?wJ34T0rLBk0Dc7XUJ863Mj+M9Lj0He+GnAQVVwBhM5ge1AbPsQtBDFuZmEEZ?=
 =?us-ascii?Q?et+VNagLf773heNJyrMnK1b9hqZZvDI2LEyax+Xhz+wunn3GDGYuLfD65gS+?=
 =?us-ascii?Q?iAZH2CpiTZbn8Tm/FP/abX5iWQlpWlbkT9yXzhKC3vLEbtCu/d7HZ96kgmYe?=
 =?us-ascii?Q?iKbxhzjUHwKraGTYUe2KyxBH20MOFA3lZDHuvWJS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84c38ba6-2cff-4e8a-d6bc-08dcec091f32
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2024 04:31:50.2025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: klCj8QX96pfnXvDMs7gmM9SYZJnHcjSVoVfCeKsT3kwctBp4HbMrl/+2MDdfxwV6CmaPylyIXR3PDP96p5BU+BwLNTNCTSwf+s9y7gbccS8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
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
> From: Jadav, Raag <raag.jadav@intel.com>
> Sent: Wednesday, October 9, 2024 6:18 PM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: joonas.lahtinen@linux.intel.com; Vivi, Rodrigo <rodrigo.vivi@intel.co=
m>;
> Roper, Matthew D <matthew.d.roper@intel.com>; andi.shyti@linux.intel.com;
> intel-gfx@lists.freedesktop.org; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> Tauro, Riana <riana.tauro@intel.com>
> Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
>=20
> On Tue, Oct 08, 2024 at 08:24:42PM +0300, Jani Nikula wrote:
> > On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > > Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
AFAIU it discrete card firmware not HOST bios.
Thanks,
Anshuman.
> > > enable it from kernel with Wa_14022698589. Currently it is enabled
> > > for all DG2 devices with the exception of a few, for which, it is
> > > enabled only when paired with whitelisted CPU models.
> >
> > In commit messages "currently" and the present tense usually refer to
> > the status quo before the patch has been merged. Doesn't seem to be
> > the case here, and it confuses what we have now and what the patch chan=
ges.
>=20
> True.
>=20
> > >
> > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 43
> +++++++++++++++++++++
> > >  drivers/gpu/drm/i915/i915_reg.h             |  1 +
> > >  2 files changed, 44 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index e539a656cfc3..b2db51377488 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -14,11 +14,30 @@
> > >  #include "intel_gt_mcr.h"
> > >  #include "intel_gt_print.h"
> > >  #include "intel_gt_regs.h"
> > > +#include "intel_pcode.h"
> > >  #include "intel_ring.h"
> > >  #include "intel_workarounds.h"
> > >
> > >  #include "display/intel_fbc_regs.h"
> > >
> > > +#ifdef CONFIG_X86
> > > +#include <asm/cpu_device_id.h>
> > > +#include <asm/intel-family.h>
> > > +
> > > +static const struct x86_cpu_id g8_cpu_ids[] =3D {
> > > +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
> > > +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
> > > +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
> > > +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
> > > +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
> > > +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
> > > +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
> > > +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
> > > +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
> > > +	{}
> > > +};
> > > +#endif
> > > +
> > >  /**
> > >   * DOC: Hardware workarounds
> > >   *
> > > @@ -1770,9 +1789,33 @@ static void wa_list_apply(const struct
> i915_wa_list *wal)
> > >  	intel_gt_mcr_unlock(gt, flags);
> > >  }
> > >
> > > +#define DG2_G8_WA_RANGE_1		0x56A0 ... 0x56AF
> > > +#define DG2_G8_WA_RANGE_2		0x56B0 ... 0x56B9
> >
> > Absolutely not.
>=20
> I had an "ugly" self-note which I forgot to add while sending out :D
>=20
> > > +
> > > +/* Wa_14022698589:dg2 */
> > > +static void intel_enable_g8(struct intel_uncore *uncore) {
> > > +	if (IS_DG2(uncore->i915)) {
> > > +		switch (INTEL_DEVID(uncore->i915)) {
> >
> > Even using INTEL_DEVID() is a no-go. There are currently four users,
> > and even some of them are too much.
> >
> > We try hard to abstract this stuff at a higher level, and there must
> > be zero direct PCI ID checks in code other than the table driven
> > device identification. Otherwise it's just impossible to figure out
> > where we do platform specific stuff for each platform.
>=20
> Even if we use pci_match_id(), we'd need an explicit list to match agains=
t.
> Any better way?
>=20
> Raag
