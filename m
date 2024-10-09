Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54599996798
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC11710E6D0;
	Wed,  9 Oct 2024 10:47:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W6joYmov";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944D810E6D0;
 Wed,  9 Oct 2024 10:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728470858; x=1760006858;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mZkLz2W2rQgp52UJJiW2BmATkfDltxVvXcZnOX3+q+Y=;
 b=W6joYmov0tiDKFDsPreKw1MxYpoepsjZxPPSksZYb1l1414YJzm/HkEf
 fkoh3by3gXzzil/tYNkrIgh41RYWdNj1Ipx6SP0Kl14/WcrWFKtsT3m+I
 IThuxzNykeagpcVxB8A1ec3eZqvrYRcaw1HiQy1BCS7Pw1tcKc9IVaFO5
 esvaBsg7eFlYPSlSeiKJ2C2D1vvquRbyPPlVAt4zecNRiNf8Z0UxWWDJr
 KN0LF+ibPRkA1w8rI2+gzmLEVqx6bM3LqPg49H3xTMSd9wouVHOM+TD22
 0/997HcRcxcQvGHIMVZHknIagC1e6FDhz1j0KdDU29yy7Y5tYhhBD1mGM A==;
X-CSE-ConnectionGUID: mBhhMk5eQfaK+t9JwMNv1Q==
X-CSE-MsgGUID: NNPs8aowRQCF290d7cMzWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="31460887"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31460887"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:47:34 -0700
X-CSE-ConnectionGUID: K840/JKpRXyI5P0sqZPICQ==
X-CSE-MsgGUID: SFNSUiXbTMWF+lr6ls/gaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="75808288"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 03:47:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 03:47:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 03:47:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 03:47:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mEA01i5fBFF8FEJSWiqwLOMrkkCUxAoqaPHBfmzCUxtDqjmE7JP4MdH0QjPeaqXLVsrWFnRp9tqS5+ESHApD3OxSDl8Jo9LxdDHwyO0iZj5HAxuVv4AL5A27pgueUR+GoA+hB2XynnWPKDWSGwvMHF62J19mzDIn3hJoW3dEieUW7yxw7Co3c9bjU3ApJv/f5q8OqYf0gU8/J9F1HbdGeMh1lPsOLLgWx8T2biiXflfmF5Zs+mS/IfwlE7R9BMkBkIjNJgBPIzTqRxuNebv0JNepBlBZMhW5IJRnXgW7fRpQVWaeMpz/8VXE24tRwVCqGxi3K3xIGBn+TFTP5j8F0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JxERYiFJL2E3GP46fcTUtlOoOem7TxfFLB2znKJPykE=;
 b=xKN5M2762kDX4oocVaVMUhLkReOA8QlhnJmQYXRffSiT57V04UyFuuNop6dH+Fytoe/cLufFDB7vU3V0XdBXts7U3tviRPT+h1rDqdp/7+0WV9nNm354SSNa/YYp9CwP+MW0pF4kKVzFqYFA0CLa02oyDpcRA7k5wO9PkU6n4JMgbNhbKy4pfnZE1V5rw6d9tn1wH1Sh3WeiFtaLTnGoSE0zJG4LbsO1C8oceettKPD0l3UR5xtbyYCgLPniLbhziMpGXq59LorV4OWyvjLbZ6dnJb5XMx4dyOfIc/Oqk20eiKGM8WFiVxGVmINgr4euas/aDTmWO0LbAPQQ7Qq4Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4536.namprd11.prod.outlook.com (2603:10b6:208:26a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.21; Wed, 9 Oct
 2024 10:47:30 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Wed, 9 Oct 2024
 10:47:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH] drm/i915/dmc: Add dmc null check
Thread-Topic: [PATCH] drm/i915/dmc: Add dmc null check
Thread-Index: AQHbGhjnmwhCkEtVC0q5rNOOaFVABrJ+J9eAgAAVJsA=
Date: Wed, 9 Oct 2024 10:47:30 +0000
Message-ID: <SN7PR11MB675043C8EB17E54A71F8816DE37F2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009065434.1799459-2-suraj.kandpal@intel.com>
 <8734l5bp1q.fsf@intel.com>
In-Reply-To: <8734l5bp1q.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4536:EE_
x-ms-office365-filtering-correlation-id: dfa6f88c-8ba2-4a23-cc38-08dce84fc641
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?sc8ZBFC/y04s06V9MhyWGuC6Fx6u/xspvCs0PRSoXT5hYRWTxV5sFwysFeCh?=
 =?us-ascii?Q?/P/+XHbYCTrHdq6XyVK/8m5s0o0jAOi6PPKDI2GykFAqi0Bc3IMfqEZsz4GW?=
 =?us-ascii?Q?Z614+M6unmwOBrrxE6rl3njvFi/fCISr65iy7f2THuIXl/1V4fdHT65wvRdw?=
 =?us-ascii?Q?aFfehLamH+B2BEUXDLGrTe3jqgJywULvDy85sVqj+C9nyDUr6Szcz8DLk3B1?=
 =?us-ascii?Q?X/8RSMyPBRHvTPwM9JNFGdAf0XWjU2MbJLm6dc9xWUx+DI7knVCEG+6rNrlo?=
 =?us-ascii?Q?QzfS02p3ybSvVQDH6t/yRXawuxpF+89HAtgi8dKKGmLKcKCCdfeHkGnswG6q?=
 =?us-ascii?Q?XDUA4B8kEY8xFXkb654pZOOP9ZMTPB2VPnZpcNlgUM86rmy8V62GzzhWdPpv?=
 =?us-ascii?Q?UkH9HFoUz06YDP/32nGjD2ic1TDyJsiEJhMPkZi3Y/Ed/foE0jRfG2a7D1HD?=
 =?us-ascii?Q?dqLNdiS79jerXLUxWhT+GlHixqAJh41bGpsfZlirBIS4SsFoPMl9gUQJUT2S?=
 =?us-ascii?Q?Rjq2V09UtpWNT+4eHO8cTjVwmnEbjRplKDirwExWtg48IdDwYb2z9l+QwQao?=
 =?us-ascii?Q?FIWP8a4+sf1i4qeA25nv3iutTANd5qXZPCIhxQEEiz56noujFgbtQSLQ23sk?=
 =?us-ascii?Q?Nz3ypAzARQp4U/7DBwOV11wkrA4Vpykk5VV/FAmskE3YOsaCJQoqYicD5Pj5?=
 =?us-ascii?Q?AfnM3cbBehU9I1xl5d/ChYr/gTlg/FyS6H6biDPP6hXE3g0IY/U78XP83Yuh?=
 =?us-ascii?Q?0FtM2CYr/iYIPjfkxsrZEDoUQ7acV1ZS9r3WPaecKS7fVXlEFvCzfYrePW2O?=
 =?us-ascii?Q?bJC/qK/OqnqQGTp9fYmr13NPNJD5R8JuwlqjTnwl+i7k0nX/7zqpRNZ7yLgA?=
 =?us-ascii?Q?lseBHM4FIy7uLttuCLOi3zFXAH2G3P48ahHWzvARWNH9ZPkpTC1lcTvtvFLr?=
 =?us-ascii?Q?CJy0xESNP/vgTzMa0wMuum/+oA3oCi6BwXpkox/e0Xu5NPzdbxdQl9b+j5dY?=
 =?us-ascii?Q?OICCM4Fb+VhjC1G6GiidN1sbqYV2mSNNhw5Dalw3XMLPfekcdmZUVDAu5r0N?=
 =?us-ascii?Q?yj3ZqJurFGyKNn8QtEHqOGXDoMDofbMLJhwaD/Zq0cOfQh0lxW1grK+tzDDW?=
 =?us-ascii?Q?od0SVoXNQhbahjOecD9Y1NYiHb83C1plQNYzWlAOMcBPUy+YScuBZ1MlxOau?=
 =?us-ascii?Q?D5RPLtlgkl4QfVw1I68yj/RQKo8m1Kh9g+5zB6yns458qLNQIjxYnS+z9INz?=
 =?us-ascii?Q?/qv7bc9o+RaHA5K47YRh3ccpKGvS1d5YLFmLgf6qmjClU/8pjeq5dWL36qjU?=
 =?us-ascii?Q?ZfLRmmw6MpRBhCkd4Pc1sfip2Ev73/2OM5Obw0pZf37ZKg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?40r+g8Q07Zt8DN/Kond2CdHD6oRkZN1dXr+XpuZWsPQULDKLrbZygy80GHDa?=
 =?us-ascii?Q?wparZUqSuuu7wg77BpMY3PRxa5LIt+Wz4pgs/t365SSk2geRP2V4gcRC15d4?=
 =?us-ascii?Q?7aXn6YkQZXnl2vc3pk3QMpPnLWNGN+CDoPeOIdspfFGrIZ0XBiF8n8i/290/?=
 =?us-ascii?Q?g0gFvLmluETR9aKw01lmyIFjyHddTCL0dR+JEY4az2OH0dpykxrUqKC8eyf8?=
 =?us-ascii?Q?keHtGQB8u+G2cSciT3PROlDWTspLoGjEKkHD/JbdU7sAU79j3NgOBjVskI4M?=
 =?us-ascii?Q?hpTYpJmR0PVo0y1R/IIPkZt8Dh71O0hffhL8NA/91wkgz7a9/RoJYYhgZxWJ?=
 =?us-ascii?Q?D7Ux0P/1vxJHYLwWL1VgJSVVCaXlfn5NNvpZzEmCtch004aliKonHg6GiaUd?=
 =?us-ascii?Q?lvvKJn9itTIl+rYTD7vngyKK4SNRpUVtj3mITix5qnro+HsGXH3zIYlm7W9s?=
 =?us-ascii?Q?NBnj6lVnPKSeHoddwq8Ba3BoRYVeWzZ/ynOr/0l5lxHETsAD7df7xDxvDpyQ?=
 =?us-ascii?Q?Sd/+ecQ2/L/fDfXIo2WRZ5K1LnJ8OxWpUv9ea7KWgOSjdVibZM1Hu1bhTR80?=
 =?us-ascii?Q?1vfmN6kFU05x7lvFNVvFTule5IbnnsiYX33s+uZstZdrTqiEE3qOj86Rx8Wb?=
 =?us-ascii?Q?gBSBzEAlHDqwsDbXucKH0/4LBaCrTXX9Q/KieTs2vl0qSgHKS+ufQXcqU9Ex?=
 =?us-ascii?Q?t1Jktuh6skBZbhO84gVQveFp7zvX1XgADa40ucL2SSWuvENmMDtZmY+skYT6?=
 =?us-ascii?Q?b3VsKoE27dn0Yu+ck7qBTQ7RB6bio+15CXxfXDWiozwBT4e4drK1AH6i1a/I?=
 =?us-ascii?Q?Qei3+DDjMMAvMPvAq/1wBMNRHUzBtzSUl1LZtLTaLqBnGovjZ2Mvi0omplGQ?=
 =?us-ascii?Q?8K0dZt7I2mC4UqB84JVMEqiqlci1trD8QWUK3ImzrkbPL1OUngrtI6B+J6Fb?=
 =?us-ascii?Q?6UMjgcdQJuLJ9mKwQ54SdudJ+ttTkbxOvTK49sV5nA7aUYnkHALawMHwOc1R?=
 =?us-ascii?Q?EeJ0/RTecwHiS1wzgQARrR9ZJ9Ur0INn45X1yT4PgY7J9nxeIE8zoSLwbQVd?=
 =?us-ascii?Q?/xcZmRDX35pwXwBel+a4MOXtvEZkf/ImpGDvU4hnNrZmofeJBW/endY8Jopn?=
 =?us-ascii?Q?XH/Ygt6XGG3tq+WEG0HGCqJJHAulyl3uSMP6Ls4eYWP1BME7yFAnrUowI01D?=
 =?us-ascii?Q?qawYTs4A3FEJo3mT+kJTBBZALkcBNmMxY3SNJbXXScd0p6rmfTahx16+naNq?=
 =?us-ascii?Q?7ymEvi12/YqImhKCQEUcKC70v74V3/1qD0f43Z9daKMNUpFiG2hS59onwbO3?=
 =?us-ascii?Q?qOQqS0wHbwie5a/JYvGTIdPo7GTjI7KJ/J/zPNcGXEUfSkXztflE0yRCWCy4?=
 =?us-ascii?Q?hiwW5q9bLavd22+UQzQN+jcl9WJ+c/CJu8ycc3b3ZnQR3xaaAuLHNFIJtcfS?=
 =?us-ascii?Q?y+3w9yxkrPa4zcxvFpxZINRPIugF+OfrYr7aFGJe0IAfHUPimMvondwuroJD?=
 =?us-ascii?Q?qUjIkA/qHBydsdrCChP5tOdWo9DFczugZzRhVZFlIehz2kBTqtnme9d2ytzj?=
 =?us-ascii?Q?igw3KYBXiaVrE7PExNFb3HAE3j4VvRtnEjegf9jE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dfa6f88c-8ba2-4a23-cc38-08dce84fc641
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 10:47:30.5825 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ggck8qkKEvDaYwGoCscX5Jhw+sN07BqboDmy1L8jP5vKEvcFhBKtYknnyUucGvaMYfbB794VmKwTzuH/QDDc4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4536
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, October 9, 2024 3:01 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/dmc: Add dmc null check
>=20
> On Wed, 09 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add dmc null check before dereferncing to get the major and minor
> > version.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 48bbbf8f312c..8c193de0e253 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1263,8 +1263,9 @@ static int intel_dmc_debugfs_status_show(struct
> seq_file *m, void *unused)
> >  	if (!intel_dmc_has_payload(display))
>=20
> See what this does.

Ahh ohkay got it.


>=20
> BR,
> Jani.
>=20
> >  		goto out;
> >
> > -	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc-
> >version),
> > -		   DMC_VERSION_MINOR(dmc->version));
> > +	if (dmc)
> > +		seq_printf(m, "version: %d.%d\n",
> DMC_VERSION_MAJOR(dmc->version),
> > +			   DMC_VERSION_MINOR(dmc->version));
> >
> >  	if (DISPLAY_VER(display) >=3D 12) {
> >  		i915_reg_t dc3co_reg;
>=20
> --
> Jani Nikula, Intel
