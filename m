Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF50A00393
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 06:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F25E10E346;
	Fri,  3 Jan 2025 05:35:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HZZ4OQam";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B9B10E0B9;
 Fri,  3 Jan 2025 05:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735882530; x=1767418530;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4yRnGIFX2kBLofXcx7RBnYFmmudVm4vbOAvb7rB9q+U=;
 b=HZZ4OQamLNrpYAoKLRHhrQWnKDKhrcrxShhqqUVwgUwzbNAVbl1DN4ik
 1PBglBvvQ3aAj32BOnvwzBhtPF9xmnL51kkBQt+FYHoS4ulc3DNKsj4KY
 uGcA3RSOTwH8OdoVJGwYQr45N8liHzY2Yl7Hiuigj8iRbkbvD0Qw2PAhT
 9lBhfTdFQFZ/Cgbnj55ArO/STnpNpUiERtcmr7JjVXLWInB5SGkNhw7sw
 1fXSB+xSgOBi/CG8HqRq6c/nPaUC4LRpSntBVjlRfw3nqqBANWlvm/vR/
 Nr55iAIy6avhxVfp0xkk9fzJiWdn26Mm5MKgRYMEypFK6FzTa1D7GS+pq w==;
X-CSE-ConnectionGUID: oVv0pYMGRbGiTNGaXm1EtQ==
X-CSE-MsgGUID: fUwyluK+QgS7NfFXGg3xpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="58597027"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="58597027"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 21:35:29 -0800
X-CSE-ConnectionGUID: EeLZBPHDSn+KYe2BS9syrQ==
X-CSE-MsgGUID: qrjwVClGQSmTLxx6+OknbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101501421"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2025 21:35:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 2 Jan 2025 21:35:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 2 Jan 2025 21:35:28 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 2 Jan 2025 21:35:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BbAkh7YhILYw6RYrEuKe+MedM70ECszEU1MpSdQiXZlTektfhNsieRWQn8KUjHSGhkcedtuyyR5PUGSnSCWaDlpKyb8FH5YPe67twFMDhr7X0bAsCBemBsrfniw1dDtpw7qc66+iuVx8HcNAZrFhQejlp6O9daOFQhMzild15GDvECj76ZEv6ruJwlH/zlFraVtqY06vof94nxOVc2xEvkbag/mfv+qoYHKUXDw3phHI11suqMhRNzg7mkvus5rVdXCQ/0DSVCfFxIBYQLEDbjvgvASpmWYEzVOls71oKTUisBq46F7Ln/xEEVx6Xyfq4ICkrVUSsNS8EDedLo5rwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RYdL3dTBB6J3cqkNRA9CFdyE56COwKKM3DTR7DFecpk=;
 b=ABBuY3ler56zUnae3k2raasJyPTsb7tiy1ZayzfF1rD8G3aqmIUICndsHgXQkgICJ6YsmO1Y/K141jJIbTazE/aMYY9baJcnVcZujalFhAJwcrdTKrw4QSgvyMpqgE96eaFH79qsyeyNXSM/u+fTpBB4jduTg8+n995hcPBDgp8M36W6KuPYzsKmj53wO1maZKKWkUeieaL42Rcg0ugstnu4POrswu5He4eU6lXWbsjUMkYgqhSnbN+UgmCAlJXKg9R4EM221Z7H6+0pjW6rd7SOaVLVj3RjyG+cvotz8b3loIJ08JtDTcnX5SlZW4RZCy3ippkSVTSj0k3yDw7nUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4773.namprd11.prod.outlook.com (2603:10b6:510:33::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Fri, 3 Jan
 2025 05:34:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 05:34:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Return early if dsc is required but not
 supported
Thread-Topic: [PATCH] drm/i915/dp: Return early if dsc is required but not
 supported
Thread-Index: AQHbXY9AJCQlyTrVnEO7M3wryOTUS7MEhwfg
Date: Fri, 3 Jan 2025 05:34:41 +0000
Message-ID: <SN7PR11MB67501D0C4F85B67F62D93080E3152@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250103031424.1732774-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250103031424.1732774-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4773:EE_
x-ms-office365-filtering-correlation-id: fe08822b-f0ba-4384-1479-08dd2bb852cd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?uEQBVr1hlNqI9cfXCZECOHr0pFcV2492+LIv2ViZjcUYSH0gEdO5J9BxLE09?=
 =?us-ascii?Q?GQhSb2D6sVvmtSrKzZVvYIlwRC5ZvgKsM3oOGjNLrEFTYz8piBWSOiAFpxc/?=
 =?us-ascii?Q?xNxDVTSQ7eAbYpG2wuVYwrdCiUKzYOGpzDz0HeAkXdVnqXbSiqpBLkhy4GfB?=
 =?us-ascii?Q?1ximuH7vcXHXUSFgQWhuCS6mfBoV6teSNrDaEEVQ0CWj88/U/1gwWlzBGRhz?=
 =?us-ascii?Q?2BUNZG4ZV6du8oGQ1seM2FIAuNblZj/HmFFXN2fA4ng2MsNQ3CUxMDhEIwKy?=
 =?us-ascii?Q?8b1br9mVyQmWfvj2qOxuKsrfis6vjJcQ0WJIkZE/HHOcj7NGTgsDepEebUbv?=
 =?us-ascii?Q?5vp7+uFQonkATnQLXpetnNxNMza+o1nhX63Glwxo/bo50EFtjEzrYdUNMrHu?=
 =?us-ascii?Q?y8xxW+NbzgF7suRu18wrQwmNjGxEMArnkwQeXyq6PQzSCBmMAkK8eHJ8KdiK?=
 =?us-ascii?Q?f3gtigKB6xr7Ipx5LDdOUhaUp5xJo2/ttBIdkHXVp2I7kzYfrbAOrBLRXp3Y?=
 =?us-ascii?Q?xJc2wa2CLSQoC4bzDT43e2+ICK39gu+duKCARConlgGVKg4DIF1a/cIFRYfz?=
 =?us-ascii?Q?5R3X6JuKQqCB+efbWvdm34mhiu72Fyz3C6Rh5szSeaLXSgH1otthjtUltQUE?=
 =?us-ascii?Q?MsDuwYm0hZCeLjjXR9U3az8bV131yZgFa6F14D6iI00thF+f+J5Cma/i9avr?=
 =?us-ascii?Q?/pDxN/bcYofZL1Eyqp4l/JlLd7FGtpC9nsZYUYludU3GIa2qRkChxlm5rIFp?=
 =?us-ascii?Q?Ubr2AF3pPeZS/JPYnS4Y50SZ5fVLtCoC1uCQZbnJKl7w9weMZy4DFOL4WGc0?=
 =?us-ascii?Q?FENUU1othm4T/kl7I7AevITCeVw/wQjEaa28gbp3pRXrbxQEq3LV5M040czA?=
 =?us-ascii?Q?+elN9ljFdCHS/6JjP4Uv3IMyYGDRi4BjWCp7/D0I1fXAGsxOsEfKkj3f8RwE?=
 =?us-ascii?Q?7QVlzbjkEsXJ9Z92cyc+S+iFc4UPpoK/L6ICzO+qbpzH+YcK+K1YLgvCMQss?=
 =?us-ascii?Q?MpaT77WhJfrx1xiIt5nGH5XsqCTFfnmn/6drbxr6xz7gVxMDUUMGLSC249rS?=
 =?us-ascii?Q?HfYiI/l5vXNseoQA77IwvjAfXjac76CMDJhj4Ho81Ul1PyBYtWPN80x6NJMQ?=
 =?us-ascii?Q?YKheszmbX851RC/KLxAVTsvYBWePC035GI/0hJkEf6VW2S6WiwdDFBc8UZR0?=
 =?us-ascii?Q?L+bpg+zsTkyJxNjRtj94/MP8JDe5Ei8pk/2GH/D62aTgORZlt7VE4ciOe+QX?=
 =?us-ascii?Q?EtYYNzTxYNgjhrlO2o+lIVUbKUe/goO7f2j5yWvr1qwE2be/03uK1cAlGK4x?=
 =?us-ascii?Q?9MyYYs1JFyfQYUWVXjbpbcISIwK4Q8gNcceUCP0WShnC2H1gP20vBrcuMdFS?=
 =?us-ascii?Q?XfFr01YD4C/+FZfjMiqoVaBATGxw/4ul6vku0akHQa6HNHmqhbN9BOYfwzLo?=
 =?us-ascii?Q?zjjTgPgwzV0WrBky/vQI0pxUFVqTrFxZ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NAAeChzOLgFlUtKl1wznOv9Qd6JYBtN3ENhexXk568FrhH/h/pjSYlkgmewr?=
 =?us-ascii?Q?2jMNaBW38201CkvanoTdyRUAomIoT1bNj50aeBWci6BEjkT19xp31HpSfDJn?=
 =?us-ascii?Q?ijBqk385lEYtFqfJ/KuLTS44K8StgBHeXIjGw02zdHTOxDzjVZtJ21juQljr?=
 =?us-ascii?Q?ghjg+CoE/eSDf6Lm6K2jcJtdNfmCEIEuwZXZ6x/mGHVxpMv1m1X5DtdMnbgz?=
 =?us-ascii?Q?uYSL7HGsalbNRGQA0UR6nCq6Q6NfS/c0zN2FSAJ0EyWqdcBrHYLaOYb2O40V?=
 =?us-ascii?Q?TwnJ3OQCh7q5ahyskO3w5XgiAqO8Pp8SCBAfI/3GOWlPOKbA9n3qTuMSeYkN?=
 =?us-ascii?Q?PHk0drQiXQw0+4fA7zkStDkq7v/RMT9AUvNXVSJcwkJznjAYchK+ZYXDA4I/?=
 =?us-ascii?Q?g0xusCEkbTpD4AzTR+dfU3wFZkRv8mDhuWs9IlPZzTvV/plAN/2/DJmfY1t1?=
 =?us-ascii?Q?eb3qMG2fyiPAxU7RkDGqDhSAbKp0DvNTjSdiiHOLiVcTHvyeUY7SWxDe4iBL?=
 =?us-ascii?Q?5c5Veb2U60px95X+9iJ/kQ4VqXJBgVJ8aI9xOQ404Fkqce0t5fIcqQnJjrMP?=
 =?us-ascii?Q?6JX6rIEZsVABfKsmpd54rJZGGv/Sa+CQz6ML/+KRsx0ALNVFLZu4gFeAzTKP?=
 =?us-ascii?Q?ZQvZovcAxC3IWwiJq4MRunodlg7OCiCLxc1nrtw0Ba+/duVnY37MWJelkFOg?=
 =?us-ascii?Q?txJsmIrFXq1T8vbCs3uYegbHEvqJohytcYkurqaMiyEqA6CdMdjzVYOXOqmd?=
 =?us-ascii?Q?zOJFgBZz1SomRgnTbeOEZQO+E65kG6Bf02F/p7hqm0d4wH4kqGtU6IieI6l8?=
 =?us-ascii?Q?0gieLXAXJhCwcXKCkCU0IPt7MZJLTBNpW5UJkr21+uYaCsOnwbxNUDINeEYq?=
 =?us-ascii?Q?ZRLXIW6M2Q8bRTPXKjmrbos886TVh1bT6Xc7LCh2W6n470CU5xm48O2IBf3a?=
 =?us-ascii?Q?uNp6AAD9ghkkycB832sHtUEgs+gD7tyODaO/2lnk3KJT8RMkH5CjnyH148TX?=
 =?us-ascii?Q?GfsHhgnQnTVjWyF6ZoXZ6oWJV0KAVkvoL8EtMmgaGwUrnqmIQJsBenQnvNYV?=
 =?us-ascii?Q?760qpV2ttQzSpKKF8pPnHjA5+dq8QEyyOpiS0U9Q6tr6aIuagAwPoWhfbmkN?=
 =?us-ascii?Q?1ne/rMRzDtnLGkdzgVengqov3MrulPk8mGyAIUvPs6o1VyHIVWVUTZ7O4Yrp?=
 =?us-ascii?Q?I/ZL6qZ8uUbZur9WBixWV/Q6ZPzzd1+Lohlc5gqycIyB8WvJpwcBBnTmVW/5?=
 =?us-ascii?Q?bqUJd9F4VCR7M/HKXEP+Zh/1FrzcZNCIzvdbakQHVeXemfowetc9LB+4THnU?=
 =?us-ascii?Q?vArq/xHFvZ/cBrKdcvg/VbDtRiKedNIrs9Kt/Gqb+z7tVo0wKicB3qVn6T8Q?=
 =?us-ascii?Q?eGZ0OVQbLxAqM19n6k9I8sgixtO42wEHSk5jLpN7CQge3beCQSf4/lDFw8u9?=
 =?us-ascii?Q?hy+bMQMyjLBJIuifSZ8oea43Km7XPYIJKE+mFjdIIFUM1jRlOsEnD0T7WqiW?=
 =?us-ascii?Q?N8xXn9VKCeTywgMxXz6LC/qYPqT8PcrRHVKxJt8L+q2Il8qKlwGVF8ONZmRn?=
 =?us-ascii?Q?uL5UFcJSu95Tcq6FoSCFA+qKTq2+ym36A7tZ5RAL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe08822b-f0ba-4384-1479-08dd2bb852cd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 05:34:41.9361 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YI/X1OZYdQt0b9bWU9Q2I7YcjvwoChxlMMrc7WcT6tBSRhifhT6TGbj45ErgZcLGWPZr4ZGsRj/ENTFJ46kZuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4773
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Friday, January 3, 2025 8:44 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; jani.nikula@linux.intel.com; Deak, Im=
re
> <imre.deak@intel.com>
> Subject: [PATCH] drm/i915/dp: Return early if dsc is required but not
> supported
>=20
> Currently, when bandwidth is insufficient for a given mode, we attempt to=
 use
> DSC. This is indicated by a debug print, followed by a check for DSC supp=
ort.
>=20
> The debug message states that we are trying DSC, but DSC might not be
> supported, which can give an incorrect picture in the logs if we bail out=
 later.
>=20
> Correct the order for both DP and DP MST to:
> - Check if DSC is required and supported, and return early if DSC is not
> supported.
> - Print a debug message to indicate that DSC will be tried next.
>=20
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 8 +++++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++--
>  2 files changed, 10 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0d74adae2ec9..4fa0e0b675b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2642,15 +2642,17 @@ intel_dp_compute_link_config(struct
> intel_encoder *encoder,
>  			dsc_needed =3D true;
>  	}
>=20
> +	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector,
> pipe_config)) {
> +		drm_dbg_kms(display->drm, "DSC required but not
> available\n");
> +		return -EINVAL;
> +	}
> +
>  	if (dsc_needed) {
>  		drm_dbg_kms(display->drm,
>  			    "Try DSC (fallback=3D%s, joiner=3D%s, force=3D%s)\n",
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>=20
> -		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> -			return -EINVAL;
> -
>  		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
>=20
> respect_downstream_limits,
>  						    true,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fffd199999e0..0433f2ff77e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -633,14 +633,17 @@ static int mst_stream_compute_config(struct
> intel_encoder *encoder,
>  			dsc_needed =3D true;
>  	}
>=20
> +	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector,
> pipe_config)) {
> +		drm_dbg_kms(display->drm, "DSC required but not
> available\n");
> +		return -EINVAL;
> +	}
> +
>  	/* enable compression if the mode doesn't fit available BW */
>  	if (dsc_needed) {
>  		drm_dbg_kms(display->drm, "Try DSC (fallback=3D%s,
> joiner=3D%s, force=3D%s)\n",
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>=20
> -		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> -			return -EINVAL;
>=20
>  		if (!mst_stream_compute_config_limits(intel_dp, connector,
>  						      pipe_config, true,
> --
> 2.45.2

