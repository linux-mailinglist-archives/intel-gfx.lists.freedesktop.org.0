Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0BC973709
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 14:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9564210E7AC;
	Tue, 10 Sep 2024 12:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FjOZVDxB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 259FF10E7AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2024 12:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725970810; x=1757506810;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8i6xajyHOwK/Q9IKjraK6IGnsjkOQUwM0qMjKeCW1Co=;
 b=FjOZVDxB9MvT4jgPOLJ+NFWVHcWe6031YzBidvOf3Xsz1bqGpKUqi2Co
 DY6ok7o7mA1+VvVknwm04kDUeSIFbSfjMklSZDGC5w4NenLUOlt8OHOYP
 MEGYe6FZwGY6yqTPwXIsM2RXBEPT+MFckV51j7VrkwzLeASCLi9QoIUKW
 JsPsIr9ESLaG7HD3l818Z/lD+138QZ3nOuVj9baFh1pvoH085pdXqGwWR
 RiyJcrwkfDVlrh6oEbFZVCbJUrznWDFjL1pYsH/bH2cnXe6hCKUr3n/Tu
 N1tONQlySzujdwQEU/mVqR36AN7h8BiX722VcWNcqT1EVjM7zE3gx7GYh A==;
X-CSE-ConnectionGUID: iyLWu9C5TQiwCxFaL8v2EA==
X-CSE-MsgGUID: XsLYjxi5SOChTxU0afLWrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="35380754"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="35380754"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 05:20:10 -0700
X-CSE-ConnectionGUID: QZ9XUXWsRiWUGUm9DKLteg==
X-CSE-MsgGUID: lZ9sG51TQQeem0gKwChg9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="66809921"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 05:20:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 05:20:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 05:20:09 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 05:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ms0LIZfcSnT5j0POoWBMamEmfTTYs+3ZI4n51D13n8Yk2DZTFpVcuDUBoubv9uO5OSWMhmAEbIg8XhwdF92RpFkp6K+qbzLEQYbqj/rNwNE7YcW3c+uB99agl3lQ7cVvv0PLXV0nhLSX72FCvKH0rZ+qiC2FU9PNEPV5ZBly8K8hlSUXlyVZ4hBmxi7OWiwbIGTNTGrkVGaHK/kcHDuXtbfjJtjjwZuxfN1nktwCkN7q4AAtqJzMAyhqzRpYWQzfgFzw84jVitEseXxwVuVyr7/f8jywbk/3aeCtyIS3h869R7b5y7lptwuXOpNDBkj3DfWRYkyDSgZgkbjWNHM6eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OhLL6WQZlVHCXbf0gAr9VGgHsmOiRbb7SNcdsUWy1O8=;
 b=AnTNl9PgorcSjdp+lSn+seGkQY7N99jhqs4nLepBGWwbiOvdktB7ejIRUJEIKQyaVQio73L4yox6fwPDB6yeb7MMdwQ614vrjP87qD67dfVG7eNfjUfBhke11tTxDtkgfeWdF0bd0XUL539YY2QBFf/5ZZvZ9FBBpaAoGHtjNtnf9nE+2vXAqJKt75OQfvi8RckLtIC+2iNBoWT0uw+si/iRdchFB9slWWOITVQdrqwogeMPwagyRK8y8K4lgxj8XFCpPiu2T1A40Ird1SdxGfq3b/tEU/mfn30eCG68WXGVuHm69+rI5AyJKU/p2cwJi3+31GIXRNW1E0jVy9Fu/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by SA0PR11MB4655.namprd11.prod.outlook.com (2603:10b6:806:9d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.24; Tue, 10 Sep
 2024 12:20:06 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 12:20:05 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Topic: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Index: AQHa87WmrOm4Ny0oTE2r+jhtPBD9R7JRDx9w
Date: Tue, 10 Sep 2024 12:20:05 +0000
Message-ID: <SJ0PR11MB6789F3182BCE5DEF3E3FB7D38D9A2@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-6-arun.r.murthy@intel.com>
In-Reply-To: <20240821102349.3961986-6-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|SA0PR11MB4655:EE_
x-ms-office365-filtering-correlation-id: 988edc32-cb47-4ce2-8bb1-08dcd192e73c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?OPbbmUKZzDHjMIAdgHm20ztgeNT/80VNxMfK9dkO/LXdVbc0LFZDfigQ8SAE?=
 =?us-ascii?Q?1l0F7FR2a1kzu68PZIjRIyUU3hPdSqQ9CLG0+WNiPrOG5Li6QFloHEsUH4x2?=
 =?us-ascii?Q?bCKTDvVmFPfwdY0fScMhQLGTC6NuL4h8bsnydagCIy0kIc0ncgQJMP6gHAzd?=
 =?us-ascii?Q?SzvwTRk6QTWRqxrJNXeouF2jUg20mtfIjRLQrearTxgUKH5bvGlNPElu8mIO?=
 =?us-ascii?Q?gDP4j8Mt007xRFS+iIGL6y2vUkOt1dIESJEJ7yWR/R2HKqf/UtFgUq6QW84s?=
 =?us-ascii?Q?HMoCoxWpOPwu8XGxPK8APNBury3gzr/THgtlGGHvFR7eMYJxre/qh8c1Vau6?=
 =?us-ascii?Q?S9J6RYelmaRwlLkmGqRjQUGdCoTSqle07aizIQumax+zrDYsVzSFs0A4TB2s?=
 =?us-ascii?Q?ob3iGweFuZ2zoc95bW1EAkDYR+3ybjaW2yozjpXCG+ybnHTZc4Ik6Pna7ZRf?=
 =?us-ascii?Q?reUQpE3/FyjiTwfGxde5EelxP4xmYVxwjVZyOPD63dQduWKHomopgIIYQoMA?=
 =?us-ascii?Q?jeogxiOajH9GyEnsJWK+rfK3J4O5NGOQmR/ErRRnd8oqpcDHxSNH0wLbE4vm?=
 =?us-ascii?Q?TSs+gsZ5V8DTLjQOWwHd3MnJcppGpccBew/2ZYfCgxNl3Re/Y8+ch6215Bio?=
 =?us-ascii?Q?T/Y/94/v/xO5+KuaLopR/RgIUrm+A+FcbsCURTvXVWiEjaBL08hyc5JqV15H?=
 =?us-ascii?Q?SZfFvTRi0apTTqXWAYVhuuFBoqnMBgx3RDvf47dKFprcHBq60tBT1ljUk8hu?=
 =?us-ascii?Q?zMv6eoeAWXN+0qXFmsmUCQCZaRdK20TFc7ToVHeCyHe5yIS83LbQz62x66XF?=
 =?us-ascii?Q?SB2yyUz94nTV14Yn7RkW/QDQ8XtpK/hWvV25Pm+rpAE7XwN3hADyMYjxSFPi?=
 =?us-ascii?Q?Q0zS4mIRp+4WrVUy+hA7GFgDlRINS4url104fS3+1xXN/BeP8nxJAxyTUdXP?=
 =?us-ascii?Q?Di+Vj4wQyXUjGq1zBmICFykze17YnknkrdXgiuq1WY3NDFTA7ZgFhEU78+hH?=
 =?us-ascii?Q?Fwpf8s1Fkx6Eyee3o6PzFLsKa6ykD7B6fh9aFsTmjM+CeiY+50yoA/b+uCoa?=
 =?us-ascii?Q?Y4hG5iXBXHlgFo7cCvY4n8D3vDWaodHqXprAkbBJtUIP55m8w5Qrsb2BRZiu?=
 =?us-ascii?Q?vxO9oEhfzNuWCAiy1qDofJCC/hYLyENuO+HaqLvzSo+PwcD6WF0jFy4ebpOh?=
 =?us-ascii?Q?uJoPpAw914wsDXFqTMEDOE/HwTG874pafBHRgewDx4ICoNnlg5jXgpvYLP0B?=
 =?us-ascii?Q?SgYQyUK/UR0kBtcg5/CK5bCY/uqiwzVqzpdeMUNxUEQiRpqua7JB0CiJK2e0?=
 =?us-ascii?Q?YZB9wyVmaN9kETk8GfHyaJ2CX/bXM6AoXdAtOF5lZLBQqw0O47ij97TFF4TX?=
 =?us-ascii?Q?cwSTTUIRhUch3fV3JqHCp9LtnnQR3KEAXJ0pzZntAdohJbhy8w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hpb3hSIJKg4oMUYt/1+Crqm0CDYMYawMl3eT+tylVBDVu6aYJXQ2M455iwZ+?=
 =?us-ascii?Q?nVE6hVBWrZKi1lbEQO7VMIWTp6CGVYddQLiHKYQJmEx2hZ7uCiuDHXFbSY5R?=
 =?us-ascii?Q?zZhCfu5b9vOIAHF4J75k0++GDw+kaA0dU+3Go0z2unWYcRa2R15jIDwaMLtw?=
 =?us-ascii?Q?4YjSJhApaorfB1UJMG2kpHN1iKKOy+eUDEZSnr3qpb3iFed/CneTWFBurT3Y?=
 =?us-ascii?Q?Ie63c4LZiCTIewl8s66pbGdMYbWBZvLhgGtuMj3lRaEJnhy4Mmg9P2LmVptS?=
 =?us-ascii?Q?w59H7UbnMOXNbkd7ED1nwZqQpq6ocWEvDIiH2vaEHgH+G5OI3I0SDpFfKnWn?=
 =?us-ascii?Q?ykuY2WasY7TR9G+F1GgBj/mQd7Rps2kmLNTPAytCvycUZnit8v0ZMZayFpMw?=
 =?us-ascii?Q?zJpohhJvphb735xqCt/pRmbXjP98eIfsUr5OiD1mRmgm6Ya4xRi+0b6qASAu?=
 =?us-ascii?Q?FTWssG5AkMbC4XZ5mYjamIGNV9vdVDnRMOzdBtpF+vPs1xFKGVYXYKjmL00Z?=
 =?us-ascii?Q?drqnnLrV/tzoAAsRFFpxR8RuHZlzrHZW/EP8nM/lcqGg/cDrxhw/7uxsAIr9?=
 =?us-ascii?Q?4E97R2ataMR3WuvcIW/cwHC8sK4IuB0NAgQLTw/hrDrqIkzucQnyss2shzTb?=
 =?us-ascii?Q?jpCIhuaC0xCTEo1gONO57/MhhinYqdqfJRKoZxyBkmFgR9v6kSbufJR5cRPB?=
 =?us-ascii?Q?aMKC6OoHgWp7JEH1KKt42jTQpwWdZ8eqhXKu7pGZlvuNYPIgo46mpY3q/+2t?=
 =?us-ascii?Q?8NYEN7Fkm5Eb8DZiKwdjlvXF5uzfvDlG/HlOo/R/et03O+pKKzm01P6O+6oa?=
 =?us-ascii?Q?eRXa23tR0Ab+Ji++eXD38xJ5mtpPYWm2YfVfGzZShFZY0cpG4xLezahn9vsr?=
 =?us-ascii?Q?X/vCQnhw320YWvNTVddIp66H+vY2qYiqNo/o5WPHTVyukWIs+bkQcoDwzrmR?=
 =?us-ascii?Q?ywiqn8kc8kZBlVPAy3C0WetqgNhkrtnpb7NkVm0WV95ZX86G9iuq2miUpijk?=
 =?us-ascii?Q?RV6pqcDGGV1103cIO/+XtVIv8FxVodxHNz6pCrSC6kwFFJ0itOQAOFxPi2rz?=
 =?us-ascii?Q?vUhoEyp7MXS6EbpZTD2kRumBZarGHRig1Sr0uTQCGpkCh5hHnub7Jk46EHqq?=
 =?us-ascii?Q?ymliqJ8SBjSs5R9N9bFQSfEXF3ZVfRZwJOSeia1x90cqFRvMzONwtrPSJsQF?=
 =?us-ascii?Q?HpVLaELIclgug/o1xAdIZ/4rbH+CsigbWQ1DwRleftbNvPy2rT2jOV+H780b?=
 =?us-ascii?Q?EHaKD5PAtoP7v88PjVB6U0mM/k2fguI/S5MgHh/Nusc6tWhaaz/cE/RrnAxC?=
 =?us-ascii?Q?B+yDTvkhvOYwyfonn8qxhhgxRK2jA3c+EgA3+aSSZlbSk0/WWOGWwG4vSIqv?=
 =?us-ascii?Q?B8oWRlJuFTvX45EGeJk0mZ3X3aSk8Q9gw6kqpUqFdrcVfLl9EkYAfJhAHkMU?=
 =?us-ascii?Q?f6E6I3Mc5j1dL4brOstFsful+Lw4mFGy4rciGhiPffHHDBtJQIGHCiduyNgZ?=
 =?us-ascii?Q?frpSiyqUWcsvPW0+m+BhW/s6+FqjCsu6pgJNemmEyDrQYXmrTiIIe7K8gfki?=
 =?us-ascii?Q?vsLVdai4dRjcRWEngyV+L/K3S36WmxLjmKqGc8OweNeLkC1fjHk7qhhHeAu6?=
 =?us-ascii?Q?Qw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 988edc32-cb47-4ce2-8bb1-08dcd192e73c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2024 12:20:05.4209 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zKwY1nVGEn5G1q7GaSoZgIl1IpxQ18b2S1qytvhktwRcY3oUgogHDdOyU+uQIBEihrIsIf0lJLDE6B9MhA+sBvRp7kgp6fnsEoz69MV4MtI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4655
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Arun R Murthy
> Sent: Wednesday, August 21, 2024 3:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
> Display LNL+
>=20
> In LNL+, histogram/IE data and index registers are added which was includ=
ed
> in the control registers in the legacy platforms. The new registers are u=
sed
> for reading histogram and writing the IET LUT data.
>=20
> v2: Removed duplicate code (Jani)
>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_histogram.c    | 138 ++++++++++++------
>  .../gpu/drm/i915/display/intel_histogram.h    |  25 ++++
>  2 files changed, 122 insertions(+), 41 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 189f7ccd6df8..9c31a7d83362 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -26,38 +26,41 @@ struct intel_histogram {
>  	u32 bindata[HISTOGRAM_BIN_COUNT];
>  };
>=20
> -static void intel_histogram_handle_int_work(struct work_struct *work)
> +static void intel_histogram_read_data(struct intel_histogram
> +*histogram)
>  {
> -	struct intel_histogram *histogram =3D container_of(work,
> -		struct intel_histogram, handle_histogram_int_work.work);
>  	struct drm_i915_private *i915 =3D histogram->i915;
>  	struct intel_crtc *intel_crtc =3D histogram->crtc;
> -	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
>  	u32 dpstbin;
>  	int i, try =3D 0;
>=20
> -	/* Wa: 14014889975 */
> -	if (IS_DISPLAY_VER(i915, 12, 13))
> +retry:
> +	if (DISPLAY_VER(i915) >=3D 20) {
> +		/* Set index to zero */
> +		intel_de_rmw(i915, DPST_HIST_INDEX(intel_crtc->pipe),
> +			     DPST_HIST_BIN_INDEX_MASK,
> DPST_HIST_BIN_INDEX(0));
> +	} else {
>  		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> -			     DPST_CTL_RESTORE, 0);
> +			     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK, 0);
> +	}
>=20
> -	/*
> -	 * TODO: PSR to be exited while reading the Histogram data
> -	 * Set DPST_CTL Bin Reg function select to TC
> -	 * Set DPST_CTL Bin Register Index to 0
> -	 */
> -retry:
> -	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK, 0);
>  	for (i =3D 0; i < HISTOGRAM_BIN_COUNT; i++) {
> -		dpstbin =3D intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> +		dpstbin =3D intel_de_read(i915, DPST_HIST_BIN(intel_crtc-
> >pipe));
>  		if (dpstbin & DPST_BIN_BUSY) {
>  			/*
>  			 * If DPST_BIN busy bit is set, then set the
>  			 * DPST_CTL bin reg index to 0 and proceed
>  			 * from beginning.
>  			 */
> -			if (try++ >=3D 5) {
> +			if (DISPLAY_VER(i915) >=3D 20) {
> +				intel_de_rmw(i915,
> DPST_HIST_INDEX(intel_crtc->pipe),
> +					     DPST_HIST_BIN_INDEX_MASK,
> +					     DPST_HIST_BIN_INDEX(0));
> +			} else {
> +				intel_de_rmw(i915, DPST_CTL(intel_crtc-
> >pipe),
> +					     DPST_CTL_BIN_REG_MASK, 0);
> +			}
> +
> +			if (try++ =3D=3D 5) {
>  				drm_err(&i915->drm,
>  					"Histogram block is busy, failed to
> read\n");
>  				intel_de_rmw(i915, DPST_GUARD(intel_crtc-
> >pipe), @@ -66,10 +69,37 @@ static void
> intel_histogram_handle_int_work(struct work_struct *work)
>  			}
>  			goto retry;
>  		}
> -		histogram->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> +		histogram->bindata[i] =3D dpstbin &
> DPST_HIST_BIN_DATA_MASK;
>  		drm_dbg_atomic(&i915->drm, "Histogram[%d]=3D%x\n",
>  			       i, histogram->bindata[i]);
>  	}
> +}
> +
> +static void intel_histogram_get_data(struct intel_histogram *histogram)
> +{
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_histogram_read_data(histogram);
> +}
> +
> +static void intel_histogram_handle_int_work(struct work_struct *work) {
> +	struct intel_histogram *histogram =3D container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 =3D histogram->i915;
> +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> +
> +	/* Wa: 14014889975 */
> +	if (IS_DISPLAY_VER(i915, 12, 13))
> +		intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +			     DPST_CTL_RESTORE, 0);
> +
> +	intel_histogram_get_data(histogram);
>=20
>  	drm_property_replace_global_blob(&i915->drm,
>  			&intel_crtc->config->histogram,
> @@ -161,12 +191,19 @@ static int intel_histogram_enable(struct intel_crtc
> *intel_crtc)
>  	 * enable DPST_CTL Histogram mode
>  	 * Clear DPST_CTL Bin Reg function select to TC
>  	 */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_IE_HIST_EN |
> -		     DPST_CTL_HIST_MODE |
> DPST_CTL_IE_TABLE_VALUE_FORMAT,
> -		     DPST_CTL_BIN_REG_FUNC_TC | DPST_CTL_IE_HIST_EN |
> -		     DPST_CTL_HIST_MODE_HSV |
> -		     DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
> +	if (DISPLAY_VER(i915) >=3D 20)
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE,
> +			     DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE_HSV);
> +	else
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE |
> DPST_CTL_IE_TABLE_VALUE_FORMAT,
> +			     DPST_CTL_BIN_REG_FUNC_TC |
> DPST_CTL_IE_HIST_EN |
> +			     DPST_CTL_HIST_MODE_HSV |
> +
> DPST_CTL_IE_TABLE_VALUE_FORMAT_1INT_9FRAC);
>=20
I checked the Spec looks like this wait_for_vblank is not present. As the s=
tep 1 itself differs here and there is no need of putting in TC mode.

>  	/* Re-Visit: check if wait for one vblank is required */
>  	drm_crtc_wait_one_vblank(&intel_crtc->base);
> @@ -252,24 +289,43 @@ int intel_histogram_set_iet_lut(struct intel_crtc
> *intel_crtc, u32 *data)
>  	 * Set DPST_CTL Bin Reg function select to IE
>  	 * Set DPST_CTL Bin Register Index to 0
>  	 */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> -		     DPST_CTL_BIN_REG_FUNC_IE |
> DPST_CTL_BIN_REG_CLEAR);
> -
> -	for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> -		intel_de_rmw(i915, DPST_BIN(pipe),
> -			     DPST_BIN_DATA_MASK, data[i]);
> -		drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n", i,
> data[i]);
> +	if (DISPLAY_VER(i915) >=3D 20) {
> +		/* Set index to zero */
> +		intel_de_rmw(i915, DPST_IE_INDEX(pipe),
> +			     DPST_IE_BIN_INDEX_MASK,
> DPST_IE_BIN_INDEX(0));
> +		for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +			intel_de_rmw(i915, DPST_IE_BIN(pipe),
> +				     DPST_IE_BIN_DATA_MASK,
> +				     DPST_IE_BIN_DATA(data[i]));
> +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n",
> +				       i, data[i]);
> +		}
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> +			     DPST_CTL_IE_MODI_TABLE_EN,
> +			     DPST_CTL_EN_MULTIPLICATIVE |
> +			     DPST_CTL_IE_MODI_TABLE_EN);
> +	} else {
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL |
> DPST_CTL_BIN_REG_MASK,
> +			     DPST_CTL_BIN_REG_FUNC_IE |
> DPST_CTL_BIN_REG_CLEAR);
> +		for (i =3D 0; i < HISTOGRAM_IET_LENGTH; i++) {
> +			intel_de_rmw(i915, DPST_BIN(pipe),
> +				     DPST_BIN_DATA_MASK, data[i]);
> +			drm_dbg_atomic(&i915->drm, "iet_lut[%d]=3D%x\n",
> +				       i, data[i]);
> +		}
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_ENHANCEMENT_MODE_MASK |
> +			     DPST_CTL_IE_MODI_TABLE_EN,
> +			     DPST_CTL_EN_MULTIPLICATIVE |
> +			     DPST_CTL_IE_MODI_TABLE_EN);
> +
> +		/* Once IE is applied, change DPST CTL to TC */
> +		intel_de_rmw(i915, DPST_CTL(pipe),
> +			     DPST_CTL_BIN_REG_FUNC_SEL,
> +			     DPST_CTL_BIN_REG_FUNC_TC);
>  	}
> -
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_ENHANCEMENT_MODE_MASK |
> DPST_CTL_IE_MODI_TABLE_EN,
> -		     DPST_CTL_EN_MULTIPLICATIVE |
> DPST_CTL_IE_MODI_TABLE_EN);
> -
> -	/* Once IE is applied, change DPST CTL to TC */
> -	intel_de_rmw(i915, DPST_CTL(pipe),
> -		     DPST_CTL_BIN_REG_FUNC_SEL,
> DPST_CTL_BIN_REG_FUNC_TC);
> -
>  	return 0;
>  }
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h
> b/drivers/gpu/drm/i915/display/intel_histogram.h
> index 5e24d3c5c28b..436e0b8e9ffd 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -48,8 +48,33 @@ enum pipe;
>  #define _DPST_BIN_B					0x491C4
>  #define DPST_BIN(pipe)
> 	_MMIO_PIPE(pipe, _DPST_BIN_A, _DPST_BIN_B)
>  #define DPST_BIN_DATA_MASK
> 	REG_GENMASK(23, 0)
> +#define DPST_BIN_DATA
> 	REG_FIELD_PREP(DPST_BIN_DATA_MASK, val)
>  #define DPST_BIN_BUSY					REG_BIT(31)
>=20
> +#define _DPST_HIST_INDEX_A				0x490D8
> +#define _DPST_HIST_INDEX_B				0x491D8
> +#define DPST_HIST_INDEX(pipe)
> 	_MMIO_PIPE(pipe, _DPST_HIST_INDEX_A, _DPST_HIST_INDEX_B)
> +#define DPST_HIST_BIN_INDEX_MASK
> 	REG_GENMASK(4, 0)
> +#define DPST_HIST_BIN_INDEX(val)
> 	REG_FIELD_PREP(DPST_HIST_BIN_INDEX_MASK, val)
> +
> +#define _DPST_HIST_BIN_A				0x490C4
> +#define _DPST_HIST_BIN_B				0x491C4
> +#define DPST_HIST_BIN(pipe)
> 	_MMIO_PIPE(pipe, _DPST_HIST_BIN_A, _DPST_HIST_BIN_B)
> +#define DPST_HIST_BIN_BUSY				REG_BIT(31)
> +#define DPST_HIST_BIN_DATA_MASK
> 	REG_GENMASK(30, 0)
> +
> +#define _DPST_IE_BIN_A					0x490CC
> +#define _DPST_IE_BIN_B					0x491CC
> +#define DPST_IE_BIN(pipe)				_MMIO_PIPE(pipe,
> _DPST_IE_BIN_A, _DPST_IE_BIN_B)
> +#define	DPST_IE_BIN_DATA_MASK
> 	REG_GENMASK(9, 0)
> +#define DPST_IE_BIN_DATA(val)
> 	REG_FIELD_PREP(DPST_IE_BIN_DATA_MASK, val)
> +
> +#define _DPST_IE_INDEX_A				0x490DC
> +#define _DPST_IE_INDEX_B				0x491DC
> +#define DPST_IE_INDEX(pipe)
> 	_MMIO_PIPE(pipe, _DPST_IE_INDEX_A, _DPST_IE_INDEX_B)
> +#define DPST_IE_BIN_INDEX_MASK
> 	REG_GENMASK(6, 0)
> +#define DPST_IE_BIN_INDEX(val)
> 	REG_FIELD_PREP(DPST_IE_BIN_INDEX_MASK, val)
> +
>  #define INTEL_HISTOGRAM_PIPEA			0x90000000
>  #define INTEL_HISTOGRAM_PIPEB			0x90000002
>  #define INTEL_HISTOGRAM_EVENT(pipe)		PIPE(pipe, \
> --
> 2.25.1

