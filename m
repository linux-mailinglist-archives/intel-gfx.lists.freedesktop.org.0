Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC60C625C4
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D6410E178;
	Mon, 17 Nov 2025 04:59:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8VvvRg7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B56E310E009;
 Mon, 17 Nov 2025 04:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763355596; x=1794891596;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UE+ljYGE2nbfLj4oq6k4xv/v4ijaaEq0uSSKKope+aY=;
 b=f8VvvRg7iDbFNYz+PrdfvOPPKQ6YSxaq+scu60CGcwdVSrqj8VXp1E+H
 bJ4KfB/UzRueKL06+QgiiltXPjYEqV/QCbqUQVmjCvyEHT7smDWwckWja
 ZyATq0xvtzee/0M3sQ6+V9uIQBhooUXWm1DPjqN2wLk7UYtHqUjF139UC
 J0OwYJR2gbPIF9Zd49JLv9/KAmamRMGAs8URvHqb3BJaBfqjkj8/+O0kW
 W0jkxo9W+cC7t2F3PY6DsaeGenJlybWJzOioBMCQYcW7wWa7FAubNOoId
 QtZ8ZS04uOg3qWc9WzpjSU3q0K+tS67Xws883UjSdazJbeRN+ISUfi5O7 g==;
X-CSE-ConnectionGUID: E7dLPYGLTBWVCbvnoGoDlA==
X-CSE-MsgGUID: kRHVeAjmSaWLrSeegGbd+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="67953879"
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; d="scan'208";a="67953879"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 20:59:55 -0800
X-CSE-ConnectionGUID: aW/fgs4bShSuVEvmjGpJzg==
X-CSE-MsgGUID: AK+js+6wTq+TzDHoqlAUlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,310,1754982000"; d="scan'208";a="190007010"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 20:59:55 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 20:59:54 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 16 Nov 2025 20:59:54 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 16 Nov 2025 20:59:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XS25V9m5FIIDQxOhk6YzYWN4H+PW5VuxMKEt2fBF3RJyeG5D4RMpD/EAudbJq8NaQKX3MyWBjsYnulT+/L5cuzbwsY5Ba5a0LhJ+nN7YNMMfXb3jqs2OzBF6mHBnCEuE0/p7YXPAkFelb2cf7T5pRM6UZEd2CjdEITd/P6t7Y6lWnob24o+Kgvi87aDd6Y8RjX5xfCwuy6xDanuRqXl9R/f+9e0rJYTtwNj5I+9rTREnBwD2HQ0AwWjVjM8etWG3Axf7+YV5NrbVMxg4zYLJXL3XnQiEhyF1HBqnJIOH4ueDQR1/HlIP4g9uo61idU7xTplzy1thDD5Vkk116O1ZYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iWuO31PzjDfhsAqTYy+aWqTEThPejhjxRsKRELpuh/c=;
 b=E4sCxVmU27X1eTofGnETgGltbpWioG5U1eVFQqR2WDzcpi6yY4PLx3T473ZSyZX5Ji29PbxoYU/Vqy5oYu5tdMOvYRgJTcfw4L782v0fvlSDbHIlzRYSWV6rTUcKhcrIAc0y6U/XTEaEplA96PpPcEsYqoyQLPmknK+0hExiSH4DUEl6bNi6BCID6BxOJsyYqiP2kv6LGfWRxrzGTbap1N2NWTa1prrsg8BqxJoMiA8XjMejziRozpjsv8kYMnnRNYT7QOXfOfG29vmygF9ch0LG3TFbi0T8lnw58UHSupsTrt33Wd2HKmaVOYkt/vS5PEwA30D6RYp6kTne86vIpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6076.namprd11.prod.outlook.com
 (2603:10b6:208:3d4::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Mon, 17 Nov
 2025 04:59:47 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 04:59:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll state
Thread-Topic: [PATCH v3 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll state
Thread-Index: AQHcUgocdI8dI1irVUWIg/YvzdUNy7TyRn+AgAQSgBA=
Date: Mon, 17 Nov 2025 04:59:46 +0000
Message-ID: <DM3PPF208195D8DBF586052D735DAE77BDDE3C9A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251110061940.545183-1-suraj.kandpal@intel.com>
 <845e531ed52cf5cc331f3f383b9477f571e25259@intel.com>
In-Reply-To: <845e531ed52cf5cc331f3f383b9477f571e25259@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6076:EE_
x-ms-office365-filtering-correlation-id: c0776958-d18f-4b7d-fb94-08de25962158
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?+yGBnzjzygCTGdqqu2xu7QXZh3cjL4KCn5RFlEqTJTEMqxPhVphSms+gpRwV?=
 =?us-ascii?Q?FfVHIqtTvTKy8Z9U/mjO1l3jVFfZDpWGd2qCcCvf6wn6Btsl//JwDgThHVMQ?=
 =?us-ascii?Q?GBvEzqpEyxgIJ5zG2CmO1cUmKDfhWgfKT3KKo4F03Fcu/fjXYtPyt++SBDXF?=
 =?us-ascii?Q?T55ZLq9cCNmaoLYjDv/M7kwMjZPgxngsQa7b9SQd1Ti3FCSnq+eYzHXUkRo6?=
 =?us-ascii?Q?cO9a0s/MGuvRH8XxDXcoGx6uC4oKZIH4Y3jRnZQWbkBkx+wU3bjrWSazAybU?=
 =?us-ascii?Q?ZB8PwoHYIFvCpPTYpr0zsLJBK2KoEP70UmyHb4e18pFHeTNQOJYEHPJ7ttOf?=
 =?us-ascii?Q?3c4P4/EHVBgQcsX9N9gA709DqiNdQyukkMrEMTEAt/j/PU2JjrTyULu+PinL?=
 =?us-ascii?Q?Vk32DUL1YvRIrEf6eUR+9QAeZqWrziVVRw8evTZ39xMzkH6jFED9YXdb7edr?=
 =?us-ascii?Q?U/YbVITWbHIfhPplXpFSDkDVv+Dbq/fLXoIpOvW0cHguI1z4X912V7Hs8nuQ?=
 =?us-ascii?Q?ULAKLdHKmobA3zd+0oL/V9ZhlAWrw9IoMz94MU5697MZ3G+r7X32/yj0hfkK?=
 =?us-ascii?Q?jIQDEoYcNFK2/uk3eGmsFAJNQ404HiypymZqi9NhxFmyd/hIXCFlChW+PNdp?=
 =?us-ascii?Q?VIB9RvLTUNJCmFTsOZhc6PUjpF3dMEl+jPSDQM9a0Iq13M0gTHOQ0cHikyxz?=
 =?us-ascii?Q?dAJSKUYEU6qkMWXaXBndrfxut6K64KKlNi9Qy4B7Vxg207mEStN0aQjBfWjg?=
 =?us-ascii?Q?+WTLi362dm7Gynqk9sGVMCESUNjDSGjbEWZIHjIEUJRlCoda8ms1WKeS/DA3?=
 =?us-ascii?Q?Gf+eyXFA6xrsjiFNWIrce704JkvSbHJpBEtS7B0sgmfyMcp8MCg7NiITxyES?=
 =?us-ascii?Q?AY/kCbSWmEX5ywOKVHAp0j8l9R/r2oU3xkCkcljGRINRq6NS2knWVkH1KAMG?=
 =?us-ascii?Q?aKpdwFVQBYJSjjFoVb321K7EZLAC/RGdw6/WGb9gX4FGz8Y7uRKpRMGSXP8O?=
 =?us-ascii?Q?P7hheGgagl5rE0IVjhPHdFksOP18UAkXMqlIIWC0Nt4A80R2uPiPmFe4uXoh?=
 =?us-ascii?Q?jIRpAhiU5Kw9M11vZUsX2eJiZL1OqDNLxPUqvsp+SRXB5DH5Cy0Qr8ZhvgDN?=
 =?us-ascii?Q?56dT+B0tWFkD/75jYjoOlQ3pIYIMnBWBLWUte480Tp5CehvyZmPe8+94nTRP?=
 =?us-ascii?Q?6qL7Gok7wcj0WaWkdiCf5vZ9TXg6f+oPSj/8OPV9QYnhwdmFgm6ZWkyIp3uA?=
 =?us-ascii?Q?Cs4qsxgr+Hh2/v4XGvrdDu7JHagx6jixaeX0hMvzV3jlmkUuKsPFpj1UDJcT?=
 =?us-ascii?Q?Mtt7OrVeOHK/vW9TuzCoFGfeaxJk3GB1ur5uzzm54Xjoj07KlY9kXBhIxGyr?=
 =?us-ascii?Q?QobRsAZMxAxrzv1iTaoz5BjpFIk9Fn6Ll72m5Euglk7a/qhXvJ65MLefvnFy?=
 =?us-ascii?Q?fDd4A6zcR1nDQRJIYI5IiG7XfwA0L+ezpURH6qVLlUSMYtp9Dyy0lBhTCqwd?=
 =?us-ascii?Q?FflDfLYjhxWDcetSbzfJV+rsHsLD9Rj2w3Yj?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oeYPHqlniq7XgYE9xsqsiDfs6V+7zkmatzV8VQfYctvhRMCWVD/NvjhRqzw+?=
 =?us-ascii?Q?yzETDgN9Gv6WCEvggphj9bVjJr0CYjAXLfhotCAdrHBdkOz6LL0I0KX6a/V/?=
 =?us-ascii?Q?eSG2lgfTM2lQR4TWxQOoxZ+E+Y9DTu4z+rTIHp7yqbe+K6duJgMGhG0xM5+7?=
 =?us-ascii?Q?rVmwHH23qg+3ZOpPm7bobMuXKEqCGhLX4NoyaC/pgFAXSjwZZ9UezqFQPAVf?=
 =?us-ascii?Q?eexQHnNXIkyKKN4yo+N6q/M2aeYNEbus9+L5zKmtlR0PapDOApKNQjN3Wrsd?=
 =?us-ascii?Q?036vkOudBcfCy9YiYoEI5Fr54GYgcCi1TkuDnTnIS4X+j67311k4hXqaXTKK?=
 =?us-ascii?Q?Quje2OQNYvys2u1FNY5JbAVVaRh1x+iugAY6d+aE+i+dt1OZRRpOTUV7jLPS?=
 =?us-ascii?Q?TOD6ovNqdXxpoownI2cOCn/m6gyvp8y+6ST1xfrmqMJ9bd/HSWsoHxm7qkIT?=
 =?us-ascii?Q?n612BjGdoHsxhMLgrQ2LCC4tZqH52kklY3OxzP0hJ4lJ3qGUGLgdY3curQuQ?=
 =?us-ascii?Q?NWEEgAf/T0CURQ1BxvPZhDZH18O+NTa3Eo1wSHyetBlXF7Q4LYMocD/KWbOk?=
 =?us-ascii?Q?+8nGXHJYy2bvYRWDWRikEfmg9TcTtghwtIr1n54VSrxV6ZEjwK2GILuaZTm7?=
 =?us-ascii?Q?qwEOECuvwoVKf9zzWdxJh01btX2c1VDjtbHQ9jAbuyeNZo1IOTp2j/T20kuF?=
 =?us-ascii?Q?gv7EErDZv+EaDPiXOpIt5PGrGhKlg7sR1FYA2LektDCXVrXUenGqfjFhP+7G?=
 =?us-ascii?Q?mTpdvmN02oGB5AvvrXKQEZEzLd07df8DreeXTOT79KmXRAX3Yu1Ft0z9hnH0?=
 =?us-ascii?Q?61ezq3dxWYrgqfaUuYFo7CzN9vdM8v5D6KHjv55eHwhhulZsmii759GovKco?=
 =?us-ascii?Q?TM/Rk/RZlHEyAyHZ+9s1Inyulw4NaktUpft5HQ671dYddz74zTFl8eDzayRA?=
 =?us-ascii?Q?Xif6AqldN1zXE91sfwyqhRJQwuwfNvVnTsSm3PHQsU2ciSgFieG5QnQaYVPe?=
 =?us-ascii?Q?FZyQXzJhOZ7HPFSfoGHzlRd7SKGj0m2IG9QLJJZhu0eTJ73uuktwsyB7Xd4N?=
 =?us-ascii?Q?/hBtmtGrJeG+VdDzeUnxTbuFuf8VDc2wEIstelE4ADSwah+zdjpz0pRT2Srm?=
 =?us-ascii?Q?KtrDKU6xMjqBbIpStzEhBF39Sybk/6Ds0EIuzCcuLLhCnf91hSkLK5e+MSUs?=
 =?us-ascii?Q?elSnHrItvssYe/WZ+bvxj6QbqIEujL+V0arf7mxwbh+VWUWYcFs04GN5ozGV?=
 =?us-ascii?Q?XdFiNa6EagHwN0vKU1B9GZvUR459nLXd/7pLB32PSK23gwY+mZ7nASyNRuUp?=
 =?us-ascii?Q?bkV6JgTWaE7xwDwzbmRYXXPms7Ew46Sum8RUeZAXzfsYJDmj0KX5Hzrh7YO6?=
 =?us-ascii?Q?s9iInDP2wCdjxCpR+exee7ZWVDQOJbmvPk0iQ+gKAGExXDZrF5mwOVpfklUu?=
 =?us-ascii?Q?aL8LS4rn7dTiSNEwxQ25OmEJi3LTN8Ih+34MuWnbyW8gt3ShDiCr0E0JALhG?=
 =?us-ascii?Q?BSij9w5yOJx3AROGeLXus3vGqnMwM8SPE9Yq6f5qrmweDTelkymEyaSEkpUj?=
 =?us-ascii?Q?jti56laptNjfMqpcYGeQX/5Vba56Awv1j5LhZaw/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0776958-d18f-4b7d-fb94-08de25962158
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 04:59:46.7405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7FnyMecjVwepoRbW0cMXiGEqmhKRBnypYxa7BDfWzpe0kE3r32K/5AsSD4p3vMJ09jVtC1sIZBusBnZpoyXbVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6076
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
> Sent: Friday, November 14, 2025 8:15 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH v3 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll
> state
>=20
> On Mon, 10 Nov 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Implement the HDMI Algorithm to dynamically create LT PHY state based
> > on the port clock provided.
>=20
> I know this has been merged already... because I encountered it while try=
ing
> to write a pull request changelog.
>=20
> I have no idea what the commit is supposed to do based on the commit
> message alone. Yes, I can (and now have) looked at the code, but please b=
e
> more elaborate in the commit messages.
>=20
> For patch 2, I read the code and I still don't know what it's doing, and =
what
> the fallback is, or why.

Sure will be more descriptive with the commit messages going forward.
For the second patch the idea was to not have a hang because of divide by 0=
 error when
port clock is returned as 0. Hence we return the lowest HDMI clock. We anyw=
ays have warning in
place which will tell us something has gone wrong.

Regards,
Suraj Kandpal

>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >
> > v1 -> v2:
> > -Add new macro functions and definitions for address assignment(Ankit)
> > -Introduce a structure lt_phy_param for code readability (Ankit)
> >
> > v2 ->v3:
> > -Seprate out param calulation wherever possible (Ankit) -Modify Macro
> > to accept pll_reg (Ankit)
> >
> >  drivers/gpu/drm/i915/display/intel_lt_phy.c   | 345 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_lt_phy.h   |   3 +
> >  .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  16 +
> >  3 files changed, 362 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > index af48d6cde226..d88dbfbe97b1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> > @@ -31,6 +31,32 @@
> >  #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
> >  					 INTEL_LT_PHY_LANE0)
> >  #define MODE_DP				3
> > +#define Q32_TO_INT(x)	((x) >> 32)
> > +#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
> > +#define DCO_MIN_FREQ_MHZ	11850
> > +#define REF_CLK_KHZ	38400
> > +#define TDC_RES_MULTIPLIER	10000000ULL
> > +
> > +struct phy_param_t {
> > +	u32 val;
> > +	u32 addr;
> > +};
> > +
> > +struct lt_phy_params {
> > +	struct phy_param_t pll_reg4;
> > +	struct phy_param_t pll_reg3;
> > +	struct phy_param_t pll_reg5;
> > +	struct phy_param_t pll_reg57;
> > +	struct phy_param_t lf;
> > +	struct phy_param_t tdc;
> > +	struct phy_param_t ssc;
> > +	struct phy_param_t bias2;
> > +	struct phy_param_t bias_trim;
> > +	struct phy_param_t dco_med;
> > +	struct phy_param_t dco_fine;
> > +	struct phy_param_t ssc_inj;
> > +	struct phy_param_t surv_bonus;
> > +};
> >
> >  static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr =3D {
> >  	.clock =3D 162000,
> > @@ -1356,10 +1382,322 @@ intel_lt_phy_pll_is_ssc_enabled(struct
> intel_crtc_state *crtc_state,
> >  	return false;
> >  }
> >
> > +static u64 mul_q32_u32(u64 a_q32, u32 b) {
> > +	u64 p0, p1, carry, result;
> > +	u64 x_hi =3D a_q32 >> 32;
> > +	u64 x_lo =3D a_q32 & 0xFFFFFFFFULL;
> > +
> > +	p0 =3D x_lo * (u64)b;
> > +	p1 =3D x_hi * (u64)b;
> > +	carry =3D p0 >> 32;
> > +	result =3D (p1 << 32) + (carry << 32) + (p0 & 0xFFFFFFFFULL);
> > +
> > +	return result;
> > +}
> > +
> > +static bool
> > +calculate_target_dco_and_loop_cnt(u32 frequency_khz, u64
> > +*target_dco_mhz, u32 *loop_cnt) {
> > +	u32 ppm_value =3D 1;
> > +	u32 dco_min_freq =3D DCO_MIN_FREQ_MHZ;
> > +	u32 dco_max_freq =3D 16200;
> > +	u32 dco_min_freq_low =3D 10000;
> > +	u32 dco_max_freq_low =3D 12000;
> > +	u64 val =3D 0;
> > +	u64 refclk_khz =3D REF_CLK_KHZ;
> > +	u64 m2div =3D 0;
> > +	u64 val_with_frac =3D 0;
> > +	u64 ppm =3D 0;
> > +	u64 temp0 =3D 0, temp1, scale;
> > +	int ppm_cnt, dco_count, y;
> > +
> > +	for (ppm_cnt =3D 0; ppm_cnt < 5; ppm_cnt++) {
> > +		ppm_value =3D ppm_cnt =3D=3D 2 ? 2 : 1;
> > +		for (dco_count =3D 0; dco_count < 2; dco_count++) {
> > +			if (dco_count =3D=3D 1) {
> > +				dco_min_freq =3D dco_min_freq_low;
> > +				dco_max_freq =3D dco_max_freq_low;
> > +			}
> > +			for (y =3D 2; y <=3D 255; y +=3D 2) {
> > +				val =3D div64_u64((u64)y * frequency_khz,
> 200);
> > +				m2div =3D div64_u64(((u64)(val) << 32),
> refclk_khz);
> > +				m2div =3D mul_q32_u32(m2div, 500);
> > +				val_with_frac =3D mul_q32_u32(m2div,
> refclk_khz);
> > +				val_with_frac =3D div64_u64(val_with_frac,
> 500);
> > +				temp1 =3D Q32_TO_INT(val_with_frac);
> > +				temp0 =3D (temp1 > val) ? (temp1 - val) :
> > +					(val - temp1);
> > +				ppm =3D div64_u64(temp0, val);
> > +				if (temp1 >=3D dco_min_freq &&
> > +				    temp1 <=3D dco_max_freq &&
> > +				    ppm < ppm_value) {
> > +					/* Round to two places */
> > +					scale =3D (1ULL << 32) / 100;
> > +					temp0 =3D
> DIV_ROUND_UP_ULL(val_with_frac,
> > +								 scale);
> > +					*target_dco_mhz =3D temp0 * scale;
> > +					*loop_cnt =3D y;
> > +					return true;
> > +				}
> > +			}
> > +		}
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +static void set_phy_vdr_addresses(struct lt_phy_params *p, int
> > +pll_type) {
> > +	p->pll_reg4.addr =3D PLL_REG_ADDR(PLL_REG4_ADDR, pll_type);
> > +	p->pll_reg3.addr =3D PLL_REG_ADDR(PLL_REG3_ADDR, pll_type);
> > +	p->pll_reg5.addr =3D PLL_REG_ADDR(PLL_REG5_ADDR, pll_type);
> > +	p->pll_reg57.addr =3D PLL_REG_ADDR(PLL_REG57_ADDR, pll_type);
> > +	p->lf.addr =3D PLL_REG_ADDR(PLL_LF_ADDR, pll_type);
> > +	p->tdc.addr =3D PLL_REG_ADDR(PLL_TDC_ADDR, pll_type);
> > +	p->ssc.addr =3D PLL_REG_ADDR(PLL_SSC_ADDR, pll_type);
> > +	p->bias2.addr =3D PLL_REG_ADDR(PLL_BIAS2_ADDR, pll_type);
> > +	p->bias_trim.addr =3D PLL_REG_ADDR(PLL_BIAS_TRIM_ADDR,
> pll_type);
> > +	p->dco_med.addr =3D PLL_REG_ADDR(PLL_DCO_MED_ADDR, pll_type);
> > +	p->dco_fine.addr =3D PLL_REG_ADDR(PLL_DCO_FINE_ADDR, pll_type);
> > +	p->ssc_inj.addr =3D PLL_REG_ADDR(PLL_SSC_INJ_ADDR, pll_type);
> > +	p->surv_bonus.addr =3D PLL_REG_ADDR(PLL_SURV_BONUS_ADDR,
> pll_type); }
> > +
> > +static void compute_ssc(struct lt_phy_params *p, u32 ana_cfg) {
> > +	int ssc_stepsize =3D 0;
> > +	int ssc_steplen =3D 0;
> > +	int ssc_steplog =3D 0;
> > +
> > +	p->ssc.val =3D (1 << 31) | (ana_cfg << 24) | (ssc_steplog << 16) |
> > +		(ssc_stepsize << 8) | ssc_steplen;
> > +}
> > +
> > +static void compute_bias2(struct lt_phy_params *p) {
> > +	u32 ssc_en_local =3D 0;
> > +	u64 dynctrl_ovrd_en =3D 0;
> > +
> > +	p->bias2.val =3D (dynctrl_ovrd_en << 31) | (ssc_en_local << 30) |
> > +		(1 << 23) | (1 << 24) | (32 << 16) | (1 << 8); }
> > +
> > +static void compute_tdc(struct lt_phy_params *p, u64 tdc_fine) {
> > +	u32 settling_time =3D 15;
> > +	u32 bias_ovr_en =3D 1;
> > +	u32 coldstart =3D 1;
> > +	u32 true_lock =3D 2;
> > +	u32 early_lock =3D 1;
> > +	u32 lock_ovr_en =3D 1;
> > +	u32 lock_thr =3D tdc_fine ? 3 : 5;
> > +	u32 unlock_thr =3D tdc_fine ? 5 : 11;
> > +
> > +	p->tdc.val =3D (u32)((2 << 30) + (settling_time << 16) + (bias_ovr_en=
 <<
> 15) +
> > +		    (lock_ovr_en << 14) + (coldstart << 12) + (true_lock << 10)
> +
> > +		    (early_lock << 8) + (unlock_thr << 4) + lock_thr); }
> > +
> > +static void compute_dco_med(struct lt_phy_params *p) {
> > +	u32 cselmed_en =3D 0;
> > +	u32 cselmed_dyn_adj =3D 0;
> > +	u32 cselmed_ratio =3D 39;
> > +	u32 cselmed_thr =3D 8;
> > +
> > +	p->dco_med.val =3D (cselmed_en << 31) + (cselmed_dyn_adj << 30) +
> > +		(cselmed_ratio << 24) + (cselmed_thr << 21); }
> > +
> > +static void compute_dco_fine(struct lt_phy_params *p, u32 dco_12g) {
> > +	u32 dco_fine0_tune_2_0 =3D 0;
> > +	u32 dco_fine1_tune_2_0 =3D 0;
> > +	u32 dco_fine2_tune_2_0 =3D 0;
> > +	u32 dco_fine3_tune_2_0 =3D 0;
> > +	u32 dco_dith0_tune_2_0 =3D 0;
> > +	u32 dco_dith1_tune_2_0 =3D 0;
> > +
> > +	dco_fine0_tune_2_0 =3D dco_12g ? 4 : 3;
> > +	dco_fine1_tune_2_0 =3D 2;
> > +	dco_fine2_tune_2_0 =3D dco_12g ? 2 : 1;
> > +	dco_fine3_tune_2_0 =3D 5;
> > +	dco_dith0_tune_2_0 =3D dco_12g ? 4 : 3;
> > +	dco_dith1_tune_2_0 =3D 2;
> > +
> > +	p->dco_fine.val =3D (dco_dith1_tune_2_0 << 19)
> > +		+ (dco_dith0_tune_2_0 << 16)
> > +		+ (dco_fine3_tune_2_0 << 11)
> > +		+ (dco_fine2_tune_2_0 << 8)
> > +		+ (dco_fine1_tune_2_0 << 3)
> > +		+ dco_fine0_tune_2_0;
> > +}
> > +
> > +int
> > +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_st=
ate,
> > +				  u32 frequency_khz)
> > +{
> > +#define DATA_ASSIGN(i, pll_reg)	\
> > +	do {			\
> > +		lt_state->data[i][0] =3D (u8)((((pll_reg).val) & 0xFF000000) >>
> 24); \
> > +		lt_state->data[i][1] =3D (u8)((((pll_reg).val) & 0x00FF0000) >>
> 16); \
> > +		lt_state->data[i][2] =3D (u8)((((pll_reg).val) & 0x0000FF00) >> 8);
> \
> > +		lt_state->data[i][3] =3D (u8)((((pll_reg).val) & 0x000000FF));
> 	\
> > +	} while (0)
> > +#define ADDR_ASSIGN(i, pll_reg)	\
> > +	do {			\
> > +		lt_state->addr_msb[i] =3D ((pll_reg).addr >> 8) & 0xFF;	\
> > +		lt_state->addr_lsb[i] =3D (pll_reg).addr & 0xFF;		\
> > +	} while (0)
> > +
> > +	bool found =3D false;
> > +	struct lt_phy_params p;
> > +	u32 dco_fmin =3D DCO_MIN_FREQ_MHZ;
> > +	u64 refclk_khz =3D REF_CLK_KHZ;
> > +	u64 m2div =3D 0;
> > +	u64 target_dco_mhz =3D 0;
> > +	u64 tdc_fine;
> > +	u64 tdc_targetcnt;
> > +	u64 feedfwd_gain;
> > +	u64 feedfwd_cal_en;
> > +	u64 tdc_res =3D 30;
> > +	u32 prop_coeff;
> > +	u32 int_coeff;
> > +	u32 ndiv =3D 1;
> > +	u32 m1div =3D 1;
> > +	u32 m2div_int;
> > +	u32 m2div_frac;
> > +	u32 frac_en;
> > +	u32 ana_cfg;
> > +	u32 loop_cnt =3D 0;
> > +	u32 gain_ctrl =3D 2;
> > +	u32 refclk_mhz_int =3D 38;
> > +	u32 postdiv =3D 0;
> > +	u32 d6_new =3D 0;
> > +	u32 dco_12g =3D 0;
> > +	u32 pll_type =3D 0;
> > +	u32 d1 =3D 2;
> > +	u32 d3 =3D 5;
> > +	u32 d5 =3D 0;
> > +	u32 d6 =3D 0;
> > +	u32 d7;
> > +	u32 d8 =3D 0;
> > +	u32 d4 =3D 0;
> > +	u32 bonus_7_0 =3D 0;
> > +	u32 csel2fo =3D 11;
> > +	u32 csel2fo_ovrd_en =3D 1;
> > +	u64 temp0, temp1, temp2, temp3;
> > +
> > +	p.surv_bonus.val =3D (bonus_7_0 << 16);
> > +	p.pll_reg4.val =3D (refclk_mhz_int << 17) +
> > +		(ndiv << 9) + (1 << 4);
> > +	p.bias_trim.val =3D (csel2fo_ovrd_en << 30) + (csel2fo << 24);
> > +	p.ssc_inj.val =3D 0;
> > +	found =3D calculate_target_dco_and_loop_cnt(frequency_khz,
> &target_dco_mhz, &loop_cnt);
> > +	if (!found)
> > +		return -EINVAL;
> > +
> > +	m2div =3D div64_u64(target_dco_mhz, (refclk_khz * ndiv * m1div));
> > +	m2div =3D mul_q32_u32(m2div, 1000);
> > +	if (Q32_TO_INT(m2div) > 511)
> > +		return -EINVAL;
> > +
> > +	m2div_int =3D (u32)Q32_TO_INT(m2div);
> > +	m2div_frac =3D (u32)(Q32_TO_FRAC(m2div));
> > +	frac_en =3D (m2div_frac > 0) ? 1 : 0;
> > +
> > +	if (frac_en > 0)
> > +		tdc_res =3D 70;
> > +	else
> > +		tdc_res =3D 36;
> > +	tdc_fine =3D tdc_res > 50 ? 1 : 0;
> > +	temp0 =3D tdc_res * 40 * 11;
> > +	temp1 =3D div64_u64(((4 * TDC_RES_MULTIPLIER) + temp0) * 500,
> temp0 * refclk_khz);
> > +	temp2 =3D div64_u64(temp0 * refclk_khz, 1000);
> > +	temp3 =3D div64_u64(((8 * TDC_RES_MULTIPLIER) + temp2), temp2);
> > +	tdc_targetcnt =3D tdc_res < 50 ? (int)(temp1) : (int)(temp3);
> > +	tdc_targetcnt =3D (int)(tdc_targetcnt / 2);
> > +	temp0 =3D mul_q32_u32(target_dco_mhz, tdc_res);
> > +	temp0 >>=3D 32;
> > +	feedfwd_gain =3D (m2div_frac > 0) ? div64_u64(m1div *
> TDC_RES_MULTIPLIER, temp0) : 0;
> > +	feedfwd_cal_en =3D frac_en;
> > +
> > +	temp0 =3D (u32)Q32_TO_INT(target_dco_mhz);
> > +	prop_coeff =3D (temp0 >=3D dco_fmin) ? 3 : 4;
> > +	int_coeff =3D (temp0 >=3D dco_fmin) ? 7 : 8;
> > +	ana_cfg =3D (temp0 >=3D dco_fmin) ? 8 : 6;
> > +	dco_12g =3D (temp0 >=3D dco_fmin) ? 0 : 1;
> > +
> > +	if (temp0 > 12960)
> > +		d7 =3D 10;
> > +	else
> > +		d7 =3D 8;
> > +
> > +	d8 =3D loop_cnt / 2;
> > +	d4 =3D d8 * 2;
> > +
> > +	/* Compute pll_reg3,5,57 & lf */
> > +	p.pll_reg3.val =3D (u32)((d4 << 21) + (d3 << 18) + (d1 << 15) +
> (m2div_int << 5));
> > +	p.pll_reg5.val =3D m2div_frac;
> > +	postdiv =3D (d5 =3D=3D 0) ? 9 : d5;
> > +	d6_new =3D (d6 =3D=3D 0) ? 40 : d6;
> > +	p.pll_reg57.val =3D (d7 << 24) + (postdiv << 15) + (d8 << 7) + d6_new=
;
> > +	p.lf.val =3D (u32)((frac_en << 31) + (1 << 30) + (frac_en << 29) +
> > +		   (feedfwd_cal_en << 28) + (tdc_fine << 27) +
> > +		   (gain_ctrl << 24) + (feedfwd_gain << 16) +
> > +		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);
> > +
> > +	/* Compute ssc / bias2 */
> > +	compute_ssc(&p, ana_cfg);
> > +	compute_bias2(&p);
> > +
> > +	/* Compute tdc/dco_med */
> > +	compute_tdc(&p, tdc_fine);
> > +	compute_dco_med(&p);
> > +
> > +	/* Compute dcofine */
> > +	compute_dco_fine(&p, dco_12g);
> > +
> > +	pll_type =3D ((frequency_khz =3D=3D 10000) || (frequency_khz =3D=3D 2=
0000) ||
> > +		    (frequency_khz =3D=3D 2500) || (dco_12g =3D=3D 1)) ? 0 : 1;
> > +	set_phy_vdr_addresses(&p, pll_type);
> > +
> > +	lt_state->config[0] =3D 0x84;
> > +	lt_state->config[1] =3D 0x2d;
> > +	ADDR_ASSIGN(0, p.pll_reg4);
> > +	ADDR_ASSIGN(1, p.pll_reg3);
> > +	ADDR_ASSIGN(2, p.pll_reg5);
> > +	ADDR_ASSIGN(3, p.pll_reg57);
> > +	ADDR_ASSIGN(4, p.lf);
> > +	ADDR_ASSIGN(5, p.tdc);
> > +	ADDR_ASSIGN(6, p.ssc);
> > +	ADDR_ASSIGN(7, p.bias2);
> > +	ADDR_ASSIGN(8, p.bias_trim);
> > +	ADDR_ASSIGN(9, p.dco_med);
> > +	ADDR_ASSIGN(10, p.dco_fine);
> > +	ADDR_ASSIGN(11, p.ssc_inj);
> > +	ADDR_ASSIGN(12, p.surv_bonus);
> > +	DATA_ASSIGN(0, p.pll_reg4);
> > +	DATA_ASSIGN(1, p.pll_reg3);
> > +	DATA_ASSIGN(2, p.pll_reg5);
> > +	DATA_ASSIGN(3, p.pll_reg57);
> > +	DATA_ASSIGN(4, p.lf);
> > +	DATA_ASSIGN(5, p.tdc);
> > +	DATA_ASSIGN(6, p.ssc);
> > +	DATA_ASSIGN(7, p.bias2);
> > +	DATA_ASSIGN(8, p.bias_trim);
> > +	DATA_ASSIGN(9, p.dco_med);
> > +	DATA_ASSIGN(10, p.dco_fine);
> > +	DATA_ASSIGN(11, p.ssc_inj);
> > +	DATA_ASSIGN(12, p.surv_bonus);
> > +
> > +	return 0;
> > +}
> > +
> >  static int
> >  intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state
> > *lt_state)  { -#define REF_CLK_KHZ 38400
> >  #define REGVAL(i) (				\
> >  	(lt_state->data[i][3])		|	\
> >  	(lt_state->data[i][2] << 8)	|	\
> > @@ -1472,7 +1810,10 @@ intel_lt_phy_pll_calc_state(struct
> intel_crtc_state *crtc_state,
> >  		}
> >  	}
> >
> > -	/* TODO: Add a function to compute the data for HDMI TMDS*/
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> > +		return intel_lt_phy_calculate_hdmi_state(&crtc_state-
> >dpll_hw_state.ltpll,
> > +							 crtc_state-
> >port_clock);
> > +	}
> >
> >  	return -EINVAL;
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > index a538d4c69210..b7911acd7dcd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> > @@ -35,6 +35,9 @@ void intel_lt_phy_pll_readout_hw_state(struct
> intel_encoder *encoder,
> >  				       struct intel_lt_phy_pll_state *pll_state);
> void
> > intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
> >  				   struct intel_crtc *crtc);
> > +int
> > +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_st=
ate,
> > +				  u32 frequency_khz);
> >  void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> >  			      const struct intel_crtc_state *crtc_state);  void
> > intel_xe3plpd_pll_disable(struct intel_encoder *encoder); diff --git
> > a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > index 9223487d764e..dc7b7679cd06 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> > @@ -72,4 +72,20 @@
> >  #define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)
> _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
> >
> 		    lane)
> >  #define   XE3LPD_PORT_P2M_ADDR_MASK
> 	REG_GENMASK(11, 0)
> > +
> > +#define PLL_REG4_ADDR		0x8510
> > +#define PLL_REG3_ADDR		0x850C
> > +#define PLL_REG5_ADDR		0x8514
> > +#define PLL_REG57_ADDR		0x85E4
> > +#define PLL_LF_ADDR		0x860C
> > +#define PLL_TDC_ADDR		0x8610
> > +#define PLL_SSC_ADDR		0x8614
> > +#define PLL_BIAS2_ADDR		0x8618
> > +#define PLL_BIAS_TRIM_ADDR	0x8648
> > +#define PLL_DCO_MED_ADDR	0x8640
> > +#define PLL_DCO_FINE_ADDR	0x864C
> > +#define PLL_SSC_INJ_ADDR	0x8624
> > +#define PLL_SURV_BONUS_ADDR	0x8644
> > +#define PLL_TYPE_OFFSET		0x200
> > +#define PLL_REG_ADDR(base, pll_type)		((pll_type) ? (base) +
> PLL_TYPE_OFFSET : (base))
> >  #endif /* __INTEL_LT_PHY_REGS_H__ */
>=20
> --
> Jani Nikula, Intel
