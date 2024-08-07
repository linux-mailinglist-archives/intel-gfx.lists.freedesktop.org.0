Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A318F949EBF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 06:07:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5668210E425;
	Wed,  7 Aug 2024 04:07:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jRMg7q6P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBC6E10E41B;
 Wed,  7 Aug 2024 04:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723003655; x=1754539655;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+2zu+iOPWHRJ/Ng+GaHyuwi/9xsRp9aEp8WWrz4AKk4=;
 b=jRMg7q6PO/aJzTug2DDymhV4Y/IZxK0Y9V11QL51vrIJH2C/VzqTvbXv
 tvHGtugpTSiwJbG5dRoN5Cjlj4kXxXY+9sNY9XWwI2sCm0T3XXccV9roj
 fsk5STSIZuGNdJXCsH7PiuWxAU/Ag+8wU3CjAPVQ1gj1mWYckm85OFWCH
 VhwKYeky2+0SHXc2HWAieAzj6mWDlXJBbKcwFiLYzSLZUCSQpb+HSkTqY
 MboY95nBIEq1W73FRABvuE2dUuv1LKAkXn1FsRo4EnjeX4s+RCJOuksyL
 YcES9OBE4yUM/hJza5Yt1fH6zY+RZHWE0fqQWhome6F9DsioEWZGWOC4K Q==;
X-CSE-ConnectionGUID: bF44KOR1SGm9YuLTcISPJg==
X-CSE-MsgGUID: LhEfSK6lSKWfag65VI5w8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20910536"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20910536"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 21:07:35 -0700
X-CSE-ConnectionGUID: UaF+uilmTsudVcZ8oGr+cw==
X-CSE-MsgGUID: 82yZHIoITmiGFLwXO0GOig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="57265014"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Aug 2024 21:07:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 21:07:34 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 6 Aug 2024 21:07:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 6 Aug 2024 21:07:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 6 Aug 2024 21:07:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FIGSO2ftbQHKsL5mEVChFBO53WgQi5gUlQIVPC7YG3ImeUvSX3n//LxqnWB7qr/JGvJZ2PuKBkq62VLZGgPGDUzyp2hM58cgQgu19K36sxp70JRKK+Psa940Ou6X2cbt2AyrA6HfXH87uq3L4Wx3GdSwcSK5hhXAssUiQCUBne8+En6c/OweZoQKhNkB8mIkr1TwVoKw6K6jNyIXtnt/EmnNNzS2dZEewnPL/9t4VVzfzAEXC9JeqskmDeudMzjqtQOVSw5qgFAcUGMd2TGuw+vODVtC9H9YQMFmDF7M3Wx/lUsK7WvvmUTCrWf+vX6WaMXWNpkjYQ90nXFqKSJ91Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4sUELVOqXEBtoaOqc3jTfDO25zXf1F3DBH6W7xgJnZs=;
 b=PZVbO5uf2DTUuVXsu7HyfEi2oML5ij0JFquvHsDHEmzQl1fFdLHAKQQVv7YfU399iLMBBn8UnsoawxJzgmRxBOBDde1L2fqnI2QfH3RClDFf0CrYdNzc4OyaM9hArgYQdc+jEE7nhEvOejJF7EWzhFX/wRqteBapn58fkyuPMPfefwtkZoUcA6B8pSxDEzXNZTkKxG+U5Nvvh69wq5fDuqVz6Cb0YBbrWi9bK8ZzhW4c7kFSybJx5YYRgA6JJ4sQmXL8sEhq9fBZ5e0CjB3mZO5Ddx40t5aiX4xVVcILoMQiw7D+nL7rbFsTrTS0nvthbGBsByfLdT9l1gxEMrXcdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CH0PR11MB8085.namprd11.prod.outlook.com (2603:10b6:610:183::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.27; Wed, 7 Aug
 2024 04:07:31 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%4]) with mapi id 15.20.7828.023; Wed, 7 Aug 2024
 04:07:30 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/bmg: Read display register timeout
Thread-Topic: [PATCH] drm/i915/bmg: Read display register timeout
Thread-Index: AQHa3pI0r4CuSdM/D0GrkyhpQ7LIdLINcN+AgA3Pf8A=
Date: Wed, 7 Aug 2024 04:07:30 +0000
Message-ID: <IA1PR11MB634851F1833F930940B23462B2B82@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20240725125735.105194-1-mitulkumar.ajitkumar.golani@intel.com>
 <SN7PR11MB675008B59AB930E2177CA5C6E3B72@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB675008B59AB930E2177CA5C6E3B72@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CH0PR11MB8085:EE_
x-ms-office365-filtering-correlation-id: aef139cc-1a99-4551-21ed-08dcb6967521
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?q6lk4DDTiwbZ21UYav+7teBePKo5l6DUI0EbpO7ok1RjRI5VGgcEHL5XMzZ3?=
 =?us-ascii?Q?BuOwPHQzrHnGPcM9K3NppCOicLsGWFw0lOJ18zbNZsSMwEUCnWjyE+Hcg7PT?=
 =?us-ascii?Q?Lh+tKfx6wWlh1peTTKg/IHYvnXhJOCNtaAwbJPxDuKgXgClcLoiu8MKDW7L4?=
 =?us-ascii?Q?lV7ZOteSkA3xzFI2Vlw2aHljsWZoD9bO17n8jjqbsKt0JlAxDwZ7BNYd3Ji8?=
 =?us-ascii?Q?Tv4q0GDtFxRuNpNN3LcyJw62gaW2pBJJwa0RvChm5/kREc/yxBKL/bPfXkZR?=
 =?us-ascii?Q?csLcXynOEZHy9QINHalu/Fgx9yR1Nr9Iom4KcLvxYb0SUJSo3KJohgc/kLNS?=
 =?us-ascii?Q?akziaV3/SL7Fg1M+TvhnENZfLe+gckc4LBwHyCurivwq+YMrfSlocqzY7wF6?=
 =?us-ascii?Q?Jzj4DM5mO6yOqs1NK3EXSKmnJXrsbBw6u0hHi+9qhgyZ704Ai333gBknznAe?=
 =?us-ascii?Q?Tav0lQLOjHHKbGi+Dae7I0si0C9w8l/22oFSc58H/DcwVoqWd78C51ua4NAw?=
 =?us-ascii?Q?+tV5E2CyRx6qnf8zXjJlmmHcB89xCFNoUvBiPsKbQuxfBbtGqQLbRcZITdzW?=
 =?us-ascii?Q?qbR7MWrTaH81f+BbnURpsYx3+GlBuHfgktt9stwXG/+QCQyijTopSEzk6nqB?=
 =?us-ascii?Q?tlKsaH8n9losEDeikZAoBFR48Df5zpJQvb3mbBLjBQ+a6Rl95FMZNyXJLivs?=
 =?us-ascii?Q?TdmqOEzct+C1iTWt6fKhq/fYOJg8J0FvOX7F3Hdi9R6qpCypyTkOi2RnTFOb?=
 =?us-ascii?Q?F5u4+kih0z7kGpUjsTj68+8b/sF9evfSx4/aymczTsuLpn/JVdcV0uIXtvEy?=
 =?us-ascii?Q?+1HkVmrMXnD5GU3xTH2VNUz2741ydFwfdCb9OBxtN2/hpiBZN3YYGWuVK22V?=
 =?us-ascii?Q?vd8LoNGZUBPj8xN4NMfojn6vIIDOAUv/rm2X4Uz9XqtUdhCZraf6OkY7B/Zp?=
 =?us-ascii?Q?l5rBMr9/gblqNUjJawoFl6WBVk3L+6WexxdMxUZrAQGJaw6bT/wEfXqCxJ+c?=
 =?us-ascii?Q?+1Q4Yjb/tMJSB6O5IuX+L2xjTu0Y6CfhmYpVznE1wOOQZbQYHUYUihNeLTXW?=
 =?us-ascii?Q?3RREY9XwxdffJCkeqEhHnzzO0SGLQHUKucS2Q84X2YPc22LyZTQzT0LFJvUL?=
 =?us-ascii?Q?zZ+jBDK6ico9dAQ8i81BHg9WPDLhPhi0qYVfvH5rno12V7Yh3Umz4ZOqVVFz?=
 =?us-ascii?Q?s9GEJNXZ8quRtdxlbyTHPl3W/Y/ZKzCjJHT23tBPPyUDluaP4SJzeyWPJDhs?=
 =?us-ascii?Q?L2iISs41JuvNj6BTEW93WLgjX89FEGUJKyHlQkXFs16reuSRr6M7FL79B+g3?=
 =?us-ascii?Q?xktL9Cr2u3R/5x/vmYFE2WDWIfaRxuJqG1P6g4jtMWFR4q6GdwHDnBrn0G8p?=
 =?us-ascii?Q?FAKXVkJsKrDttK668bAC3vcXfQ9g0CyKp8NY5LDerm2a3s7OPA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xchmzE52FBwjuBwKIuVl/8X1YRR8jY3+LbVEnOodWk/blKOierQS2itpJx9q?=
 =?us-ascii?Q?BP0zwXdNz1asyfiHxkbXyNpIc6UKeeg0oPABlHnURzWhTDkc+sfTkDCnnoB5?=
 =?us-ascii?Q?bE5FNyiDWGnjoNHbh1QZS88SUg4dbubGMpXUxHLQVd9trawAk/y6/Bb1hZMH?=
 =?us-ascii?Q?ss70Rjt5ajGQYIes0V9GMQKHuJNjQnh0bbSgoQ3mJCd4ltPIoEhHhWAVS7dX?=
 =?us-ascii?Q?LJ7sNrJxn5UkbavrKMgJU2ngE8oxdSWgZ1jHEIg5/0kixXU/UKWvHSiwdIHb?=
 =?us-ascii?Q?ppvQcwpYQYOyX8Yhra+9iMKe2Uar1roplBwWNOETdLFQvY2AGX230EXPHdo/?=
 =?us-ascii?Q?nGQ4Iwecd6SOQ8jY9pFpKAP6L7SuHh3EJxkd7SYQ0VtHTzH8KCiZy6UZ1jh7?=
 =?us-ascii?Q?DCB/zSXGOrxNOBRbD3HAiBtxpU27M19lM0u75lzq5eaLISGx0es4f0rmFU3N?=
 =?us-ascii?Q?1y2f0f/mDPDN9Fqr9wDVuxAl9kdin0xx3/Wcr6F5f97dDfD5BfxtZSkeRhWP?=
 =?us-ascii?Q?zA456G1ELLDt3TOFzzT2tI2AfkpFJqsmsfvrMKd0nyF5UvWUW3rfiCj+fZnP?=
 =?us-ascii?Q?zOFBMko4qrcBedJLHzeaQgBnvFP/lu5hGIGlj/6A8964CK6kYTDvgS+ka5qm?=
 =?us-ascii?Q?4Re5hl34to43seFnR+7G9gqG3rrgrGVHjLxXinoGgymuZRyQGkNUkbaZTEXC?=
 =?us-ascii?Q?VY91dF6E4SAhdAqgjshrgkSpkaL0q2XDg0ZOgfdYoC/YvE+q4oA8GU96tnJw?=
 =?us-ascii?Q?nCNHsPHwJK+JBObgsPUqlolEYBK2NNdyM3EFBXzVnaSKEuQEOpcdNE3Cl+Qd?=
 =?us-ascii?Q?sJgFN9j4zZZoB/w4KcMobp+hO9tUFEKBFStAnaaaBgaKF+DYJGPuQfbVlIhy?=
 =?us-ascii?Q?MsmKkXP7cJ3R2vQ4GgoHB4a/iLMA/N1XKsO6NL2szmW+osQORx8bd7zLQZaJ?=
 =?us-ascii?Q?U+vPNj/ya+bGIvi7dz2fA+A1aOx/oDbdirwkWrrLTn1zUirsRk9hvZwCPrdo?=
 =?us-ascii?Q?5VLo+LIDW5tdO5c4E5dUHtYIKFjentIoZ5f5GL4FyljRfHqoiyO1GxlgCDPX?=
 =?us-ascii?Q?m8HWPX70GQNi4bpyxabQS8TjmaL8BxvY4i3aKjeSnzl4fu5TJoqzXnjwP6L4?=
 =?us-ascii?Q?sfsm3g8wa9eCKLOEbSC201zojuysTTflR17EE1MvRHqjhOZ+TRUyzFWPFCFS?=
 =?us-ascii?Q?tA/SMW/2mySEUuIbLZ1yjxJ+onDVK6IZ7AidJ9zZC7wUsNMaC8YJR8Z5dCRZ?=
 =?us-ascii?Q?owjW1iUHJIaCPWqk8dZwZIUu3JfHUL6OssA/bAG2/Xvo6FAkMPCl6b/hrXde?=
 =?us-ascii?Q?EwKwFhXVC/S/1sA/3RmJR3SeLTtDqeAed6rEwGuMIGz3s7ivqOR3ppoOZLyP?=
 =?us-ascii?Q?zCutNXNpVNpGLOPQO5XW2swWTIhtsv7oRkVb6jhF3sb+gB9wKyie4FbK3UnU?=
 =?us-ascii?Q?c3uQOSaHv/SuHWCouAFC4sHvGo5S7zJdUStnkhzRolDOp241W6cCqyBwxxRP?=
 =?us-ascii?Q?//jITZsIKw24KtfVc3ggUrrulWPnXVzP2z8Gj6aRk5DwN+4YKiM3r0kwyfeo?=
 =?us-ascii?Q?Y+UnzrhAk8UCvMQ85Iw6OcplsplCeIOBMgRLn+8yCYM383UKRr1UQb+XE5Wl?=
 =?us-ascii?Q?9g29rF6zCug2yf7Rfxl8LNk=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aef139cc-1a99-4551-21ed-08dcb6967521
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2024 04:07:30.5752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5PAeRBHA6nMyf2WCtKCaNAnuxrwSnnw05lN8QhunrwVpkHjXLgMRZ7ZkhVoh1BmOmM1Acz5hUYj1ocfeH09IgZC99hUkdiWAvd4G7InrNZACMYuYc/ldr/RGX8z47kO4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8085
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, July 29, 2024 2:39 PM
> To: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/bmg: Read display register timeout
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Mitul Golani
> > Sent: Thursday, July 25, 2024 6:28 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [PATCH] drm/i915/bmg: Read display register timeout
> >
> > Log the address of the register that caused the timeout interrupt by
> > reading RMTIMEOUTREG_CAPTURE
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_irq.c | 7 ++++++-
> >  drivers/gpu/drm/i915/i915_reg.h                  | 2 ++
> >  2 files changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index 5219ba295c74..8e22f7ac3db0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -905,6 +905,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private
> > *dev_priv, u32 iir)
> >
> >  			intel_pmdemand_irq_handler(dev_priv);
> >  			found =3D true;
> > +		} else if (iir & GEN8_DE_RM_TIMEOUT) {
> > +			u32 val =3D intel_uncore_read(&dev_priv->uncore,
> > +
> RMTIMEOUTREG_CAPTURE);
> > +			drm_warn(&dev_priv->drm, "Register Access Timeout
> =3D
> > 0x%x\n", val);
> > +			found =3D true;
> >  		}
> >  	} else if (iir & GEN8_DE_MISC_GSE) {
> >  		intel_opregion_asle_intr(dev_priv);
> > @@ -1710,7 +1715,7 @@ void gen8_de_irq_postinstall(struct
> > drm_i915_private *dev_priv)
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 14) {
> >  		de_misc_masked |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
> > -				  XELPDP_PMDEMAND_RSP;
> > +				  XELPDP_PMDEMAND_RSP |
> > GEN8_DE_RM_TIMEOUT;
>=20
> Do you only want to log it for display_ver > =3D 14,  I would expect it t=
o be logged
> Even for gen 8 so maybe this isn't the right place to OR it.

Previous targets have dependency on RMTIMEOUTREG_CAPTURE availability also =
this logging is expected to be enabled from Display Version 14 or greater.=
=20

>=20
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		enum port port;
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 0e3d79227e3c..858ce8a5d929
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2396,6 +2396,7 @@
> >
> >  /* Display Internal Timeout Register */
> >  #define RM_TIMEOUT		_MMIO(0x42060)
> > +#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420E0)
>=20
> Maybe RM_TIMEOUT_REG_CAPTURE seems cleaner.

I will add to new version.

Thanks,
Mitul
>=20
> Regards,
> Suraj Kandpal
> >  #define  MMIO_TIMEOUT_US(us)	((us) << 0)
> >
> >  /* interrupts */
> > @@ -2574,6 +2575,7 @@
> >  #define GEN8_DE_MISC_IMR _MMIO(0x44464)  #define GEN8_DE_MISC_IIR
> > _MMIO(0x44468)  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> > +#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)
> >  #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
> >  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
> >  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
> > --
> > 2.45.2

