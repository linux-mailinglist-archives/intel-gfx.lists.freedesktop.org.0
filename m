Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5D9A2AE5A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 18:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A30DB10E8DA;
	Thu,  6 Feb 2025 17:02:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bLYasTg5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4704710E8DA;
 Thu,  6 Feb 2025 17:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738861366; x=1770397366;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=57p0xiYjrmp6r/cJyJC8eQv1r5lK8nWKjWmOnbBXKwI=;
 b=bLYasTg5XurLbXPq11Igaq7N0BVwVxWtM4p7W4RCphNIHPn3VqZ57EUl
 HSzflRZKZTmR8kAPCIPT92k4SFmHV88wRbJHQX3efh4FCI06rYkk57f7R
 SumhVO7w/1RrQMzrnE9LKLgKwWx9ohbARFBm1dbtRDQE+zrQ6Km12qq4j
 Bv8zX2VjJyXyqsF7qY03KV4s4izCvY6wPJ4+wj1Z7txPFRw+hNj5ij4P3
 qv6SCb6mAJ3KeSFyJbBaCHM7SOC1UfMKlHGu+HlGQrWujSC0YtfuwuWP9
 t8wvfzzeoszzx1kw2fL2hpi3ukmE6Fkwi+piHKhbr2V+bsOg5Re3HFDdj Q==;
X-CSE-ConnectionGUID: dvVml67pQzy9DLbMtlFn9g==
X-CSE-MsgGUID: cuMoaPkqSY+d4VOYgc5HjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50905845"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50905845"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 09:02:37 -0800
X-CSE-ConnectionGUID: EYiUZyvBTLW7Tzd3C1O1UQ==
X-CSE-MsgGUID: r343JVE/R8utWqYDzbyJjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="111862281"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 09:02:33 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 09:02:32 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 09:02:32 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 09:02:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qy3l1nQn63Uvw39bnv8TXtnuZPWEt9cRRSGZtTNuaew4gBaANWCxampoG8Pi2+hPCCtMbGONU/l7N9sOppftCk0C3LLzOby7jhKtxEGCgf72ykgrgwMTqg+k8f5ywd0udDh9QV/+bLQh1enHvI2e6BZIFOFsWEHQNhPR9r3rRGI+vzd90tEK+jSe8Eq7PMS18llJg8L9VSdKHnz9y5tYF0H+rtrhqnYYI7VTqiy2WwExA7U7FzIJnheTcwp7oihhiwHWW7wpHFGn4ZFU+W1xsKwnznXSl1znlG4baDuo94enZzatrR37Kmy1Df+VKzLBCF3jJjcPfO+AhI9O91GeOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b6PVk+GOGE7TwEutqyBIDWCnYLDqrNJQSOAlH6WYwRQ=;
 b=lyh/8YHWGG0I5OYKIGn2NsP0fYhNV0rF0Zg+Hh63c4EShnpab7WS6SiXrsUy0gcY+Bzw9vmagKlZFU3MO31lKn7HzuXWPJ4nMnHgsZ5tnqZuZxDtML4DYsK4pR4oHeptpP8tudeU69bxzxbcNLKo9ENAZoaHdOLAIO/0YN7TqCN4/O5FI6C4iZVnPJ6ozuBxiq8j9905IQDRApxuAk5A0AiG8O5DOam4xm577DM0SPPZO3uCGRWK3RLKBn4GTp2of3gI3zlPYC+Tkm105eIrWJ4TQmJBEA8AvzfBM+B0AMJa48TyhqHBVglHQ4JHQNoDKjaP9OXmQLly4UvDWC9aFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6395.namprd11.prod.outlook.com (2603:10b6:208:3ac::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Thu, 6 Feb
 2025 17:02:21 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Thu, 6 Feb 2025
 17:02:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH] drm/i915/dp_mst: Fix disabling the minimum HBlank time
Thread-Topic: [PATCH] drm/i915/dp_mst: Fix disabling the minimum HBlank time
Thread-Index: AQHbeLaN4IagEquo10eZx9r+6P/WlLM6f+0A
Date: Thu, 6 Feb 2025 17:02:20 +0000
Message-ID: <SN7PR11MB6750D2E6947BEC452FB9ECCAE3F62@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250206164624.3185280-1-imre.deak@intel.com>
In-Reply-To: <20250206164624.3185280-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6395:EE_
x-ms-office365-filtering-correlation-id: a1986ac1-2b7f-4934-dd5c-08dd46d00527
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?CyR0fY3AOHMPaRsiqDQ/7rY/7oS+OL7+P799cHFh3hcknntEGkRsPSrt2ULl?=
 =?us-ascii?Q?v+oD1Ch60luepii2KYRWcaprZVuzb/4fI7Ro/0vQSvdS8biP1XI9S8xVBsxs?=
 =?us-ascii?Q?KhMaHky8HcaHgHWsO2BjdzmCuNc1m3bt5ijUWPMpFqDJ6XP+Qdje6/C/+loV?=
 =?us-ascii?Q?JzflbPpQyO9luDCtSKnraXPo3juAq3NbX6kw5ZDsdduYGjPy4y+uauydLxaL?=
 =?us-ascii?Q?x1F3mtOBdSU9HWLT7ewmyUth/lw9iJfI2GJFdVB8N1iKCV25BPdb9iZbo8No?=
 =?us-ascii?Q?tOT3O9Z++wx3FbXIDhtZkQ1oA0ks1c6/XF/JzFqLb9VGi+WryWwr2Uiw9YCx?=
 =?us-ascii?Q?AZGlBzt/tXHKe2ksuKrL9s1vppGuC3vc9Sijo5WVqTIsNYWW0ZLFrlA5W5lc?=
 =?us-ascii?Q?Kp+a6pQnQwZMrDJ2cMbLWMJjCvsVY7oljLIt/WEcXOYaZoM/JszBeSBmovVP?=
 =?us-ascii?Q?tuHUxe/lKjgfks9sJ+i0x1byMLIuUu4mzGGg2RSEhNlAD/NBRnZ4t/babdi9?=
 =?us-ascii?Q?eThqw1wv8o7OsYJ13Rtas2DtQRUOr+HEOPPuRdCQV0y5J8CRWg5NImUbYPnS?=
 =?us-ascii?Q?3QEtxMRpOvBknUG9nFXVQv8/SZPu/Gy0ioA/8aI1D6GGmpFetZqUaPV8IMC0?=
 =?us-ascii?Q?Yb4F58B1wjOp+WKLIJ5UCN+5AEcfaVZoWzkakoB60r0HuWjzv4+GlIB76dT1?=
 =?us-ascii?Q?ehWuTQFqwiUUCM+gxkaGV4sy2FmUT5LKKc3umQq4zWdqm6NbNuILe7eI9XP1?=
 =?us-ascii?Q?+xDdnzEE63uHF/jfUkJhhOv01ZV/H9+hauE1SP3j+MP0J9b3mXVpviAcJyj5?=
 =?us-ascii?Q?2mIV0Jp+C7PXCJoij+cVI7fFDCSC+tLQwbEqFa/g5yrqEvfRsNRKuQMu49Z6?=
 =?us-ascii?Q?e3q6bxf3AhW7aXjvMeAAJs4aPCbhTQl1iI0vohlX6KuEieMgur6wan8TDDC2?=
 =?us-ascii?Q?hvYhuOy3q0DV1G14SRIlT39+TWi03Dov4CgXSqOrwncIayF6IZN7YGepx7bN?=
 =?us-ascii?Q?QiP6S9bT1d58yED+6FZdU40uJUUHw/s3Np8gM8iNfm+GDyYRCYJ+Qq5zf0/J?=
 =?us-ascii?Q?geK6FA9aR3hXqFFina3S6LfGly7R+LYScJy0IK6Of9T7x8LsxqZS60pZPn0N?=
 =?us-ascii?Q?TnXERqX4hv69gV401TsjK9DEePkAWRtSDs9GGyXZzKVrcquKmWgRhTgMy+IS?=
 =?us-ascii?Q?RxOG+tH6OxVU80WXG4+msBjlx8PZ4xaIo6+G0GroHl6KAyP0dYzSKNR0FiSn?=
 =?us-ascii?Q?tF6AnN519+Nz/NSRQdTd3BJ04Xs9Pw+940Nzk7mC9I/PzoGr7j5nm3lti7pH?=
 =?us-ascii?Q?ns3KqAvBgVdFxGFKGlGQFcGcYQFoeTWkXjyG7BoHs8EM0VXQEAcleZI4PeyM?=
 =?us-ascii?Q?yEn0D9YBcg57FMwabt3tUYPtmamjD50KZD2Hsio5xIcpb9hIx/0zaFJ2wMIk?=
 =?us-ascii?Q?LQPJ7z4jfyh0HqhO+YXZyy3Hc8lC9+Se?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wwIrYIw+HNmqg9E3m1wFBq6JC9f3ObP8bDm9q+vc5yCHZ0KkwGa4o3W+jgq8?=
 =?us-ascii?Q?b0oJx36z77ylizYHO6whrgVp5FBdHnIteOheavXYeYWrwDrZNLv46aVAUUDm?=
 =?us-ascii?Q?2CVaX1yzC3sMJdHieH8q0K8TcuSv1YDAcdLzBGLNOaHLgXSeRvGJHy25yNOD?=
 =?us-ascii?Q?DuTUPFqbgnDbws+NoKNGYXFXenXAoQNXqTMf9PCZUFbpFAsGm1gVGCkbC5PW?=
 =?us-ascii?Q?XkxgRJNmpBI3Q1k8cufK7Wf8B+zjzumlbdM5b72w9VMFTByVuEOc8/91y3ay?=
 =?us-ascii?Q?lumn2TxWyF8RQyrN4UEuS0ttXH6IuwJOLFUP3ZgodW0wBa9kdEUs/t4ShLXs?=
 =?us-ascii?Q?lk4wXEK6957NZfgLAcFPWpzzanK1zfVSJYDsiMRznyXDyburYx1pyX/Ajxlo?=
 =?us-ascii?Q?qZIqZoCvJkUyT6mVRyLJjSKYhewK23Xp59QTU20awQUC+apRQRNEA3WL6Jgy?=
 =?us-ascii?Q?TX8G3T8HlkVZkOVM5wtPVIvDNAPRv1Rhem5kqRKBRNPYoZhq/Fhe9OBfPuw7?=
 =?us-ascii?Q?VrRGj5BSTML7McTV6Y1J+fI6hjI7gqoB+nJE+WZTvRk6zkO8wUgiRCnHzVwI?=
 =?us-ascii?Q?dz7E6WkI3iU8KE8v88I0AojecG2YaDwqoYjZ7JSmyDI1hdZL1PVYI5Z0FXte?=
 =?us-ascii?Q?H5MeQNGywjxaFs7HipY8iQEUPI9GGSL74co5AbGvgKqH/wqRt092oua4Q4JU?=
 =?us-ascii?Q?HYIGxqaM0kEBY6Q43GPJ0Sk4WfbhVXm01dGq7x5gw3/oxCFqT41C96VSezts?=
 =?us-ascii?Q?udtmp56SLEN2Rr+c7XUOsgWWLia4JYqCvK5XKoYLFzb1wBHI27n35WyPJACv?=
 =?us-ascii?Q?FgOr/hOrlyMWbHccxiV342KffnhsMP27p/7hir9u3gzqxmHIA2JJwGmhHHBM?=
 =?us-ascii?Q?cEZpf/w+SCC4asFaGq+f1YHlMZZJV9S99Gx8vIflpvTcDfIS7y2B/zkAeO1l?=
 =?us-ascii?Q?R9iEuDd+YILY1uyFqHYf/87bNyWIb0jgFgSIe9NqP3hb7ud2mUDq+AAFVXqA?=
 =?us-ascii?Q?hqeU+ohcX+WfyqmgUzp51SU8mchJ+TgQsUnIHjc6+uJC6TYdqxTi8itouLVr?=
 =?us-ascii?Q?hMQO/3S5mmw6PQkn1NtnO2BLba+LJstOrM9TYdRxjyVXfpvV4TPZSmjTJ5wC?=
 =?us-ascii?Q?waNdATueiTnExYS0oBSs8WmEybCWnMqG+HOg7vvFvevOwTrekCUV03Gp6P3f?=
 =?us-ascii?Q?7OWE+wa/6coW2i8JG7+WRVfhFPXkByI1udefZ8Qg7upbnHhAgnK9eslHElp3?=
 =?us-ascii?Q?nYISa4QbIgeaeiS4lhizRbEaJIHXDB0aSJOgYkFkwDfKpZzs/Id8h2AHz6st?=
 =?us-ascii?Q?c+UBz3qifXS1kR+MA71t1cz/Xzk9utmGBs7wm+CIIzCKxUt18myeztV90Qht?=
 =?us-ascii?Q?wTJS58skMXZorHNkqjNSCI8EwpJzfvHKfy+kfnV0zxUQb3bEOoPTFhKF0T90?=
 =?us-ascii?Q?k4TXcS9v2t68ZrM6zRTDwJmVAZIltKo185KO8lHuzCMqIlCrGq56lYRwPdcr?=
 =?us-ascii?Q?ROTgG5ddD/GIN8TDJnHmbPr/6IfmcPLeu34JRAKv4TW6oIVGm74hKZa31L0k?=
 =?us-ascii?Q?37jxtFvHYcmWdozQa18ty0fMRfzgyfv+yD4ZexIQ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1986ac1-2b7f-4934-dd5c-08dd46d00527
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2025 17:02:20.9694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V2DiDC6XHjdeNJFd6eOf03ZFH5eoOK9k23yHx2hppxzWuA4AFni2I6ZadERHwIeArrIbx1DgCMXeBAAXZp+pEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6395
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Thursday, February 6, 2025 10:16 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dp_mst: Fix disabling the minimum HBlank time
>=20
> Disable the minimum HBlank time only on LNL+, where this functionality an=
d
> corresponding register exists.
>=20

Maybe Bspec: 74379 here
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Fixes: a5ebe00c2ace ("drm/i915/dp: Guarantee a minimum HBlank time")
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index ae2db983eff92..459440dd6e879 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1006,7 +1006,8 @@ static void mst_stream_disable(struct
> intel_atomic_state *state,
>=20
>  	intel_dp_sink_disable_decompression(state, connector,
> old_crtc_state);
>=20
> -	intel_de_write(display, DP_MIN_HBLANK_CTL(trans), 0x00);
> +	if (DISPLAY_VER(display) >=3D 20)
> +		intel_de_write(display, DP_MIN_HBLANK_CTL(trans), 0);
>  }
>=20
>  static void mst_stream_post_disable(struct intel_atomic_state *state,
> --
> 2.44.2

