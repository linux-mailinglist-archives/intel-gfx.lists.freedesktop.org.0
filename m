Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0EAAA6E8B5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 04:41:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6805410E043;
	Tue, 25 Mar 2025 03:41:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgt6S0hh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1706F10E043;
 Tue, 25 Mar 2025 03:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742874100; x=1774410100;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i7N8KAdESsyYTIZcaPdLMhzIWPohoyL49e7nJkL3T8Q=;
 b=mgt6S0hhXzdALnFLYD1CD21+STrz5sHVR/tWxjuVq/O0DodLFfLmGAlO
 liJpYdcQOyPyGUlCfZ4hKU2tSfQFKyufhVRTH9W2hYn6HzG5p1z+lSfAm
 u0Q9ACB7ULIh7c0dZ2UsgqLxApPzaPnBS2gMedjcMQgNXnL6n131daStt
 6Tv/BQwJp5HRwrhCKogS96D/0QYPv8F3gDyecLKfVLPtLC7AveYaZ3HZm
 6Tx58yYbl/XUIwrVGwCGBpWH2lZYRH68dHuZSCcsgkUzugdXFzJgRym1J
 6pvTEOhzzmawaNc8ML6A0MmP8A7EgQBPqqM2gCSx7ZBnxLTQ210SHne8+ A==;
X-CSE-ConnectionGUID: BhSWPKlCSmi9hlACEr7NnA==
X-CSE-MsgGUID: 223qYBQaTTGfUg8ug0k/oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="61494122"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="61494122"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 20:41:37 -0700
X-CSE-ConnectionGUID: D5qOHzpzR5qtst0dJAarig==
X-CSE-MsgGUID: M3yRW+YyQ765mPObN3PI+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="129339860"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 20:41:36 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Mar 2025 20:41:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 20:41:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 20:41:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cYOdamNJRnQZBxUxErR66OrXO5nEuXrX03h19EnFTc4IO501V7YSujPx6ls400VJuQrWXnbIzi8ucKlltORVRgM26uFby4ji/fqAdXCLbkxJkMHj1aSeN8ah8b/nGY9EQTF36Rg4lG8QN0/vXzR19f0CxixsY3iyKM6C0i21lomj/Uzkeu5N/0jyi4ZpWCMOMWDU8d2IR7zO82cueGZOn0XwVKB/fcJt/lgfpTkjZ/fYGpD6tZE8l+yuyM8rJeIq6mIl/g8aGLUuemVf6UDDSVvZZ5+rhncNZRFrR0rP9I9am39VqUXrXj7QrD00reGJphdtKhjulWXyrN3EcXYXXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Vj2VTdsZcKv2qAx95QuZtlqB3z+WWZFNdx9T8C4Q+Q=;
 b=nW4NiDJyWPpvZTP2ZTeuNlT8DudhV23Ccfu29eJCoKArDkA+SVWohK6jjwOq2336uY2Pp6UsA1ucpDcdUVN+u1zJSqeUCfvPq0A8xjsMDnDGt6CCOTyH9G+76Gf8APR849B4B9uLvRC4ORMbEhGvMFSldeO5pgwlVY/n9IjffS7vyCRGN6vhV3PqS/8IzCEQ44HgjKJlj6v0HbPAxT63o1dlQ7Toc55xAcdYejaR4twn0VcPFq/FGqLPUZejEB1W4/bGJgFNa7c5qsENr7dy5WGGd8aak7b913cs7uJHvzRE3oOwweGhDfHyw8jczmyKJPu4G/O+LZuMmSN5nbnM3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6312.namprd11.prod.outlook.com (2603:10b6:8:a5::11) by
 SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8534.42; Tue, 25 Mar 2025 03:40:47 +0000
Received: from DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::faad:f9ae:2b45:e9ba]) by DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::faad:f9ae:2b45:e9ba%6]) with mapi id 15.20.8534.040; Tue, 25 Mar 2025
 03:40:46 +0000
From: "B, Jeevan" <jeevan.b@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>, "Saarinen, 
 Jani" <jani.saarinen@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/fbc: keep FBC disabled if selective
 update is on in xe2lpd
Thread-Topic: [PATCH v2 1/2] drm/i915/fbc: keep FBC disabled if selective
 update is on in xe2lpd
Thread-Index: AQHbmkYRahQLhFV9lU6rSHKhHWvYbLODOolA
Date: Tue, 25 Mar 2025 03:40:46 +0000
Message-ID: <DM4PR11MB6312509A73E3AAB41AA86ACE90A72@DM4PR11MB6312.namprd11.prod.outlook.com>
References: <20250321094529.197397-1-vinod.govindapillai@intel.com>
 <20250321094529.197397-2-vinod.govindapillai@intel.com>
In-Reply-To: <20250321094529.197397-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6312:EE_|SJ0PR11MB4783:EE_
x-ms-office365-filtering-correlation-id: 670461f6-9a51-4300-d0c4-08dd6b4ed43c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?XBWLOs86NRMiKwUL/mZ1CrZf08t3l/yhhTmMC9SsOFIJotkKJ/Xj+bkmoAMr?=
 =?us-ascii?Q?7/GdKHEDT8Uay4CyoLd2lV/viBvjwNBwhyrDQvUWN4wX2CT10+132fX5uaxO?=
 =?us-ascii?Q?m/6DLpdCbkmi6henPqbDb85O6GVuIz13Lkp34trT2BLFtfjHUMDbICbJ3BrL?=
 =?us-ascii?Q?rTpIQigg2EmIudW2k+nlLuBB8bfRPxjq9j2BrW+TO4JNrEBLU71UyWxNppq8?=
 =?us-ascii?Q?9E1zYjpF3d706x5Th4mkkXcmmcJWiKBymFgrB1aq8OPUUpaa6pFSGFGu4xbM?=
 =?us-ascii?Q?7xeY8j4VwjB/JPMeOGE5RCU+BZEWsYqCx6ngPLCpNUnb4s6nVBqWsBePx67s?=
 =?us-ascii?Q?W3A954IVs2oNaDrKy5ssivyf8SunX2AuOL+yYnu4upJPAtmG2K0daEqmp7rn?=
 =?us-ascii?Q?/QScg/4f7uJQRgHVWFPN0+n2mpd1rCxVVT9Atxp2pMuocNhwf0dEuPchZQwf?=
 =?us-ascii?Q?7AZzsQoOGwVUL1NEX+nqDkZlprlH8zm2ox8gfAqeQI4ATIeQk67UAjCFUrVu?=
 =?us-ascii?Q?Jv0ZFtXZsTdvVxk2Rr3M8AyCNzKHj1KXxqomqFPzHbw7PivGN91TWWnRe8O2?=
 =?us-ascii?Q?oPuSwAWyk12645dtGf/P/imYHMLYCt1vKxpv7MLyiOn88mbF3jx08Ol9BHDz?=
 =?us-ascii?Q?a+bwyICl+q5kKpaf+7y8Bqf6qZirTPq7cgMnvjNuOQH4l83Ex3p55pn03+o9?=
 =?us-ascii?Q?dS+/FSNbPSyXRwNn2ZrKRUMfPYnGuC16PCNoAGLPhIq9ijUQmT0DJoyQjqmj?=
 =?us-ascii?Q?42ozZ6fKYkkrPUf3b/SJ2j54aMYUzyOzCSNNePE0fgbfHjG1dLbHavf6tvTJ?=
 =?us-ascii?Q?8+QwTXeLr+9o30DEJ3c+jIIeCMv9xU+8Km5sL8Ay9lNycAZhrEQ3dgYPY+w8?=
 =?us-ascii?Q?cUSPdcXXXOSqtid1aY8bnCBUWlTRSEFmHxrPBfSVhGigDZGbYTwyQIh8tFxN?=
 =?us-ascii?Q?J0ChIfy8+Xq9rDSYVra+rtT/oVCBXGX+cAhDepFnte9Lu5K28Xuy80sqnFJM?=
 =?us-ascii?Q?Jk+Lt5QCSYimHfDu64o+e+YUqY2RkTBPoSZaYsDCcx8M/cOzAlEXhu6nE63j?=
 =?us-ascii?Q?nB3ZLpCCzdqH9UbilVhwA5bmGqPXhIu3Q6eQSkXnn2asRllVyIvU8cTzMAdK?=
 =?us-ascii?Q?RsXSsL+ka4NyPEO8bdTGk7TpbeGsiO28B/HjWctw2/onFxId/Gn17aMVNMkK?=
 =?us-ascii?Q?Ej8eXSbPII80w1LGzSfGVElX0Ab5GBjYLe3CGti3kYc6tEW0glSVER9pO2bw?=
 =?us-ascii?Q?H0Qtih47h1T+1Zz21nK7fBWXWnd8wUoBPpD0BZ1OsYpQP1B808gSCDdbb4mE?=
 =?us-ascii?Q?D9U9EiiaLcdCXb6Jpt0AaGhC3hDXP9otkKPeppmd7Imi4mTcnWw25mZKKka9?=
 =?us-ascii?Q?hsQ5EHGMV7QxxewgwfFyTzxwIx5E4kwbEk4qAB2FLCM0Sxkf/KHgxrxEXST+?=
 =?us-ascii?Q?nntejCXJj0kHgPZlfdGoPGmpHsS8Urrg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6312.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?m6Pf1RbggmlcdXiNYNywxzdmgHXKlMEsqJRtPnTsULx4e40h5CntJNgBJNHW?=
 =?us-ascii?Q?TZiVOf1ytzK00VXfNo78Olg6qh/YpvacGOlQ7gxosI8vR4DWYDaoJ2p60jd7?=
 =?us-ascii?Q?0s5ZUkYwRwa9h476M4HGAD6GW9QDE3kjCjqc+gsfjrNiqSuqt2pzfr3KW2ze?=
 =?us-ascii?Q?CLeNIG8nynEYa/ZFN39zKAtV9N73qw3OW34mLaPFxKOi4WjOhPpNeVth+OmQ?=
 =?us-ascii?Q?ZDDW1uxFxnJoXOFoplSqVd1T2nR4td5UtNuL6HDTgdifL1uAoO33+Q+1lmJ4?=
 =?us-ascii?Q?Y6adrSCT+6J3OrakVSGRgr9oxRU3o3Pff8TF9EHmpi4a+Zeac/L/y+iiMTuH?=
 =?us-ascii?Q?AMKXLGiyet1EyNHhl5VolgbGbDX2KO7nh4iqWO43nBtLUwxl+EZNBaf5HMdL?=
 =?us-ascii?Q?f2nsAWoN0m5nKaa8pCCtGIw3ywpaAbZ9WiZGgz8abZ7TLrIcBB4vFJh1qpMx?=
 =?us-ascii?Q?9cG2B2hZLlg3f/yFLkMEP8uj/Vtxd/rQjUL/rpPsMhERGenOayetXrdulUIA?=
 =?us-ascii?Q?pgvXh4xSSGr8bUS8rfZiIzF3HNH/wPPxaxUTLkxRnshbpAUf3f91OJswXv6y?=
 =?us-ascii?Q?GDcsGVGeMnQyEKcW4j7NBL894E4Dd6FzAFi2Bx1qYM4XVTe69ZNDNFBwl7gJ?=
 =?us-ascii?Q?VgH4ACpOujYvZwzkNqugacu007FgbUU3yuIiadZcz3mHTxd/t/Mxy7RlbCWl?=
 =?us-ascii?Q?Z7JLN4EKB8j6YUt2HHURXOeCBPH9Lhly9a3ycAS+ji2XXLvvdvZJ9DrSrw8k?=
 =?us-ascii?Q?zxaY9YeBgB2BOu2uMw1IWVvDzn0U8Vgy7MPxloI/3iW0RqUO9k1C7N+ZsRmX?=
 =?us-ascii?Q?FvV1vZ3zXRjkAvJ9Tf17lM/nwWxmPd3KExiuNSJE4fz9btbENSTPuvvoef5z?=
 =?us-ascii?Q?obhGZ4qVBLRx2P7dXuYaBERL+JOG0k93TDuQhKUQwB4DjRfxQn3+MNOv3hKU?=
 =?us-ascii?Q?k/NGrXojpdVrERCLfHceuk/F3pNrX4M+h8Yk4jc9c/ZAsWfCVXWwEEdD4ma+?=
 =?us-ascii?Q?drDWgPPuHq5u85zYo0G4QxGiXeco9n2CqFEKez5K9v5IQuNS3qCgXNMsW8j3?=
 =?us-ascii?Q?UK3anvi39NTiIo/bhiewSi09F7Jj/2FulFzi1bb5Gz6PSgeVc/KiolRQRx9f?=
 =?us-ascii?Q?B7CaGBX9dqJssGIZsNla9akdG1NGrsns96sDEg0CVUulO/wtGQxOCDrK8y2M?=
 =?us-ascii?Q?5X2+WismX3VlKkH54EeQO9uZY9JiuuWkWovHARUkjWFYzDC44rNqgCarIUzt?=
 =?us-ascii?Q?u9l13sJvxdTBC2UwcCib9HgCHsANmdajvgYfWNYNs/0HfN4xggFy20Jnqy1F?=
 =?us-ascii?Q?gnC57oQlHLzgFXl02CTif4IiVH9oY2qIt2WxKk7PpISLtgbDFn7RkxJ5L2MH?=
 =?us-ascii?Q?ekk9FhKnAPIkoalKPBhG8+gLHQscchXFeChmbQqBDUM6fTvHEfPmQyzPDwTT?=
 =?us-ascii?Q?1zEJOj4Vg5Zpy2/b7Qk6XOy7PwH52pfletbX/r6CPRxuHXbZbI5+Y+9tPgUF?=
 =?us-ascii?Q?LON7gWywj22FPBxXtim0mpabIaeHhctIXmXyOx43AlkJ0jSA0txLkQI2XUvY?=
 =?us-ascii?Q?QoHwL6gsdE4O20E2Kg4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6312.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 670461f6-9a51-4300-d0c4-08dd6b4ed43c
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2025 03:40:46.8597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9AsO99PKcohaUocpPoWxxmmmr1ruNm2s8EqjNugeWd2vrMJu5xP03lagxLIAPmNPgOZPJTe/ZOXoD8nlHU3lUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Friday, March 21, 2025 3:15 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Hogander, Jouni
> <jouni.hogander@intel.com>; Syrjala, Ville <ville.syrjala@intel.com>; Sha=
nkar,
> Uma <uma.shankar@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>; B,
> Jeevan <jeevan.b@intel.com>
> Subject: [PATCH v2 1/2] drm/i915/fbc: keep FBC disabled if selective upda=
te is
> on in xe2lpd
>=20
> FBC was disabled in case PSR2 selective update in display 12 to
> 14 as part of a wa. From xe2lpd onwards there is a logic to be implemente=
d to
> decide between FBC and selective update. Until that logic is implemented =
keep
> FBC disabled in case selective update is enabled.
>=20
> v1: updated patch description and some explanation and todo
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b6978135e8ad..92b00da4c0ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1464,13 +1464,15 @@ static int intel_fbc_check_plane(struct
> intel_atomic_state *state,
>  	 * Recommendation is to keep this combination disabled
>  	 * Bspec: 50422 HSD: 14010260002
>  	 *
> -	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
> -	 * coexist. So if PSR2 selective fetch is supported then mark that
> -	 * FBC is not supported.
> -	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
> +	 * TODO: Implement a logic to select between PSR2 selective fetch and
> +	 * FBC based on Bspec: 68881 in xe2lpd onwards.
> +	 *
> +	 * As we still see some strange underruns in those platforms while
> +	 * disabling PSR2, keep FBC disabled in case of selective update is on
> +	 * until the selection logic is implemented.
>  	 */
Please add FIXME tag in comment and with this Patch LGTM.=20

Reviewed-by: Jeevan B <jeevan.b@intel.com>
> -	if ((IS_DISPLAY_VER(display, 12, 14) ||
> HAS_FBC_DIRTY_RECT(display)) &&
> -	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
> +	if (DISPLAY_VER(display) >=3D 12 && crtc_state->has_sel_update &&
> +	    !crtc_state->has_panel_replay) {
>  		plane_state->no_fbc_reason =3D "PSR2 enabled";
>  		return 0;
>  	}
> --
> 2.43.0

