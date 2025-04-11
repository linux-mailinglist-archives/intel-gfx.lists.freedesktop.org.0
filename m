Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 315ACA8539A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 07:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A690D10EAD1;
	Fri, 11 Apr 2025 05:54:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JsvWIXXO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F5F10EACE;
 Fri, 11 Apr 2025 05:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744350861; x=1775886861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CMvwKOJXn93sZM2ykQPJRSXpXcaRnvdyK0YDRsPdsp8=;
 b=JsvWIXXOT46TNNVUuCB2CmU5q5gfvnze3jgwnovXE8uv0HfKkODxuLfA
 vClhwCi0J1a4fDYXGziAgZnF54zWl+154mDkhlRPYDgY4REgc0uT1fBR+
 w2aHfR7ee/HrgcdMCcURXCI6wAZZ3kmKxblpnzbCJz1zn/1cy/yb6oHAL
 Y1abhk4wii+xGDfICQaJ3cOWlosi6nA9LCcPIgVwIzCvguRBoq+5jijdf
 DxFiYbi6niOz7lDKBc/cUgBk5NsB7jxIhfZCWDpDsrCJoPREcQm7BjAr+
 H+y8i8P6uzn7SI18+4AMZDE61U85w+pmC9oc8oyCpBxfSPUqhNDyGiMld w==;
X-CSE-ConnectionGUID: dMkppXDrT4uF+Xr0iDRtxw==
X-CSE-MsgGUID: KVRIrJESS6OQBmi8omcW4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="45030936"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="45030936"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:54:19 -0700
X-CSE-ConnectionGUID: eiavAjnKQb+Wdj7+POaGWQ==
X-CSE-MsgGUID: Z6yf5RY5Sy6toT5K3bA44g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="129656588"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 22:54:19 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 10 Apr 2025 22:54:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 10 Apr 2025 22:54:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 10 Apr 2025 22:54:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u9Tob5USNabr5c9iGOTdazIGTbrKejGqp6qr3alKIi4zZWXDDjZ9ZMP07IrmVArFHQsoZotH46QionCPcu3y95weN3TYw60Eu9415PwmG9SeAOizmYRd9x2B8qBvfoqm98Nn8ibdgQDcJv7FHYbqra92UZ4gwYCfN9r470LiLG38KcYIQHfM3yeRnxrpBfNnTnsEr4qat88Dshn43c72hWDdo9dIQItmhxYKHjU0me2fdaVH22JFrdvmTQn6Sv9iMwpw5zOvt9mntiE267tCJWD9ol3XzsZojaMkihf7C9NVLfVdb47E9Wj4BJYFlmyqJI0IfD9IyC27hMbtRnfo8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mi5IdedJfiTw2DOck9ELVYyg70ScjzWncQrz6/tR1P4=;
 b=uQaM8yRfxlL6jggroyTEJb/40BxxLg/49savuWLF474/E4NJBjyRDlQHHno4Xe3uyxkenca5rhlRN9GGN/XHrfXrhdHwkcSaZp41gQCK4vFjMtWwHJhKwMfqD631+ZcUGxcRVXE7xPFjAZ1z7KlvpOpsCdqqRXl7jRPGauB/SCSuVD7/UBe0Sv9I8dU9DmmdUVcb+bx7VuK7cDnuM5h2gahIJFUyLA+/7TJizbtozRIbFRXXmtpaufaeu7f3j/zyBQc2keGfW0jg+icMNqzM5a4JHoHEi4NgiShlsFqEBgQKPUkJj4yCgES7FtuF7mrsSCHgj2bOSrZP4wtqlNNM4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA3PR11MB7486.namprd11.prod.outlook.com (2603:10b6:806:314::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Fri, 11 Apr
 2025 05:53:34 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Fri, 11 Apr 2025
 05:53:34 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/debugfs: move PCH type to display caps
Thread-Topic: [PATCH 2/2] drm/i915/debugfs: move PCH type to display caps
Thread-Index: AQHbqiROUpMDOF8j+EOabxHMjC0JKLOd97fQ
Date: Fri, 11 Apr 2025 05:53:34 +0000
Message-ID: <SN7PR11MB6750754539172AEC6845950EE3B62@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1744295009.git.jani.nikula@intel.com>
 <a864b7a577ea7a3bd2435e9734e023593edbfd5a.1744295009.git.jani.nikula@intel.com>
In-Reply-To: <a864b7a577ea7a3bd2435e9734e023593edbfd5a.1744295009.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA3PR11MB7486:EE_
x-ms-office365-filtering-correlation-id: e7247ff3-3098-47eb-baad-08dd78bd328e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zP+XU2RBLCiWYC/BksFAhQ7OTQSNIcr799diQ2u+/h1nYRaNSg8j+wr23dXe?=
 =?us-ascii?Q?pQTjnfMtQbTZVZ6LDzb1jtQh8BYhBJbPWecUL2762O3ecsmJE7oSKxG3S1Ee?=
 =?us-ascii?Q?RTXHrjatn+qUMQ3RBFPkNCSlQQ1hzgXbdMDKrHkejUNZKweGVmWtUMgC/Vwy?=
 =?us-ascii?Q?ff8p0EYeRvNnlkgLkG6ipwec9JLiZY8YRlJAoV63+/lul+j+O5K93kwgN2EU?=
 =?us-ascii?Q?qSw0C4lY3fm3dUHLjRsvYuvZKGZZVbMwUdfKpOS8yHmPcnfKPUlOahm5f6rP?=
 =?us-ascii?Q?GIQ/V8mI2BHfPFt1Q7Ttb2fsKJSl6K9/7pEa1YjwQwYF6FqH2+KLOCP3Yqjj?=
 =?us-ascii?Q?X8H71sKB55VPBhGlCrgfXwr6PF3Dj+4hx0MjZqIDvXV0hudSiHsuH2Z+A8J9?=
 =?us-ascii?Q?fQC9gjF5V7hRu6LwkzpwAb15HS4TLDjut7+NGRlM7Q4Z4uRCU5hupjjCXBUm?=
 =?us-ascii?Q?OhhOXWfMqpchyzi80S90wgSSqX+KWKat59fcs+aTd19g9qhev9CuT/FduCdP?=
 =?us-ascii?Q?LzgTju2cK3Da2c+L4TaZvS+6B0FPc5KZO5qLCgR2M9Eu7dZZpe4Abs3s1zj3?=
 =?us-ascii?Q?NpZpepxNfSrTh1ftPcxYlAI5fODp0pdHmSrjPNc6LE1p5XwoyKV2xZSpW3iQ?=
 =?us-ascii?Q?Z/hxk3f1DtAGfi2kRg9UWkqMah24Fi7kGJmsry9z2JPS7GY7LJ15yY/XGlO3?=
 =?us-ascii?Q?AOX5Z8vzw5QOoYudrqhxk1ZZr9MIIbUN31E4rsYDenfXx7esqohkc1Qs0Uhz?=
 =?us-ascii?Q?0zbLHmxTiipURlcb2tT57EOPOrpK/mlTcwJKWa0YPvXo1wyi/WCqfmBhbchn?=
 =?us-ascii?Q?PEVD3cC1vRrCj767UegjjjIJnBfMbIkb2437X05LZRZuc3BhdOrGQFkZ0HUF?=
 =?us-ascii?Q?zs5pYs9rHdzrr/uj/LHiAd4K5p6S9kEFyzPGRFh4o2ulWUzo0UYVHrdM2MAl?=
 =?us-ascii?Q?08co4d1eoNgC+hwmIP7oHRST98QQJoWLKBAzXC8wfeJ1nOx12UZU8DxsyeR4?=
 =?us-ascii?Q?896bWIQOT1XsCWf3y5IUpacNmNN7m3tSA5qvltbu+j5dBhqLYPEz8r97eWml?=
 =?us-ascii?Q?lqyRxA9gXpByp77B0CufCd3SpeIY+FJqheg/wSokUyWu/TqS2kxI69lBNaAP?=
 =?us-ascii?Q?Wn4knZ3ya3UhLONr8jYXWvtM7hPRXxiUNuWFmWnp4QvVBdjRbDZAs1dWipu+?=
 =?us-ascii?Q?ifv6vyeiXs3cO5g+uVhb+S2B3WQe+1+up1ScEpOyS4oe2IEcLbvGFcnC5rty?=
 =?us-ascii?Q?lWBuQFDW1hvt7hr/sd+jRR4r3yzLCn0pSYr3vobLLhB3acTCYYB4qOLIU0Vd?=
 =?us-ascii?Q?SChxKkFGQiB3ZmFZMZgDk7PcnP9+kYA/1abs1Uced4UrYUJh0QdT+svU4AGM?=
 =?us-ascii?Q?Tika/37DJdOzEH7gxJKXnx7zEqMRF+3teIz332EpMXUJN871nGdJxtyEQwzr?=
 =?us-ascii?Q?IYJ93eZNolTrgz9pmtVUJORp2lyBqv7SSLHWMEdvjOG5zb+I2Yh7xYzEhs1W?=
 =?us-ascii?Q?hKMgJzcGj2fcLSE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EN1+sC0Zh4Wgs5xY26myZ0KLXqqFe+8G71T3Cl+OK9BPm0Z94UAngdPuWy57?=
 =?us-ascii?Q?5du+XEmI1hRmrT7ZcCKVt73lQBUBjEq2mVwf+bJRnY+SOhQoV48DFEdh+wN7?=
 =?us-ascii?Q?elnW2f+fBI3N00uicE6Y0BNNkoo6vnZVi8RAyW0IGKjrzi4zC3pLQkuTLdFm?=
 =?us-ascii?Q?JBTZ4twt+MXHXaG5taMRJ7CFqgQLsU+OfUEk2k7BhWfR/XPIk1NXdcf+XAK7?=
 =?us-ascii?Q?mgERWfBa6iEAC3J0/APFUv1g5w16q72tyMXEYrhjNJrlRrHeNtNTzIwlkhe5?=
 =?us-ascii?Q?2gnjb/eqNMdK50e30n4bCSmwJkgSjuW5Z0d/oflK48p3aMmS69HW1hpzAUSf?=
 =?us-ascii?Q?tFVAeOVOF/dbDd4qx6SWkVZqUgwS+vKMDS56sIriE40juoRQxpdoMF7sYMuB?=
 =?us-ascii?Q?8oP5bnOznJnnVaXUYp0R5pyRUPkRmv//+0RhDdFjZao4FEecaihwa8bqI5rS?=
 =?us-ascii?Q?Bh26Kq//eGNjtiysx9wlA9Cdltp4lBQE+boEFErNTBfvLTXiIjMcRmJI9Ncd?=
 =?us-ascii?Q?8kGq8D3roPKdxBFUpPTZvrXemc5B4dsyvLYekSe7fhuqvasN13pUC7Yihfy1?=
 =?us-ascii?Q?seKvgJY29ZK54JevHz6rJ/3B7SN9jpRLPgVqEpd+5yiP1+w9A+GeF2XnOj92?=
 =?us-ascii?Q?QpjsC7KmUdhOqRSwBhpNz8KbKJd+TDOSR+XdGpnbC84eWmqtXyK0p2OcafAO?=
 =?us-ascii?Q?LEHCWN77ap8Eyt+tO5FhVvG0vGVEMiz/YwAtGcl+BFPcm+CVidlnEmGuIeyv?=
 =?us-ascii?Q?tozvK4QAcNMtQSKelOZWJ9riS7GoRNMlP3COo9HpDPqlYjfhTcd5YtiKzJvi?=
 =?us-ascii?Q?NBhiqzj5zC7fZPFpBR6l1lNHHhYfwMwJL6DCOTQ/58twqCIfuDC7C0l/MgX+?=
 =?us-ascii?Q?isxJJoGYAdPOCfBh/ZUrkQo1LQheO8/k2RAgrHX5GdLKa13wYoF5Jsa25//G?=
 =?us-ascii?Q?/F2LjFyrdNw3hb4GMXx+Uf7JYAAwWTS/pEjkoj3lCN5VOxX0Y9sz1N/3Qit0?=
 =?us-ascii?Q?rSfFIPn3ZsQuVKg3aLIg8v43qxknKu4xxzbI5cL/9PYIE0gH88Oqvink/9bJ?=
 =?us-ascii?Q?vkjG+Xk8y+EsXURSEWRUru1jG/57dyAhyOrsQJSepnNZMCJ9+KNG3vSILOFs?=
 =?us-ascii?Q?Lgq1GvuZxRidDYVhVq9IvCGsJm4u90HvmLA9aX993H5E1Bg5ausws9KMgvI5?=
 =?us-ascii?Q?Q7m0aHbsDnoLZWqcVX/ONKJpRIbxk6sSQDEsl3J+pptZc5GAd19aD/GBgZfY?=
 =?us-ascii?Q?CxHhasRw1mECMCIwGul6ajFK7Wse4szwSU6GQwoF821HX4S7O4J2xmAQ7DG5?=
 =?us-ascii?Q?Cbc5J0+j0T+bDpQYebzp0vgVg0NkAqur/ThjDPg1/UtnOVmDbDbhxah6hxYx?=
 =?us-ascii?Q?Sg25lwld66K2BbLRwY+mntZbILpB8fwjwsNxKXuX1b+OQ+tEFNooC7y3hyWb?=
 =?us-ascii?Q?m2OAaW2lAFKANqimqMZS9W04CZOKUJi8buPHPBoR6IsKHsY8fhC8OOH1swEs?=
 =?us-ascii?Q?zm4VMeVgKI7mUG10+opvLvvm1daVKZ0FiMSTVYnGI5xXIKMxM3WFqe8dgid8?=
 =?us-ascii?Q?C5uT4ywrfJL6bGugRNzVU7KRFd/TR4sD+KcG+lKA?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7247ff3-3098-47eb-baad-08dd78bd328e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2025 05:53:34.8495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TNQUrT0bwfObUT1asEA8+S69GtAi9wMZ0G6V5PDBWft2aWj6mSc+tuL0rTXnXB1BVMR3vZTTP0u346wYPlWRlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7486
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Thursday, April 10, 2025 7:54 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH 2/2] drm/i915/debugfs: move PCH type to display caps
>=20
> Arguably PCH is more relevant to display. Move the information to display=
 caps
> debugfs.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 +++
>  drivers/gpu/drm/i915/i915_debugfs.c                  | 2 --
>  2 files changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d43ae6729f21..4c208fdb9137 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -53,8 +53,11 @@ static struct intel_display *node_to_intel_display(str=
uct
> drm_info_node *node)  static int intel_display_caps(struct seq_file *m, v=
oid
> *data)  {
>  	struct intel_display *display =3D node_to_intel_display(m->private);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct drm_printer p =3D drm_seq_file_printer(m);
>=20
> +	drm_printf(&p, "PCH type: %d\n", INTEL_PCH_TYPE(i915));
> +
>  	intel_display_device_info_print(DISPLAY_INFO(display),
>  					DISPLAY_RUNTIME_INFO(display), &p);
>  	intel_display_params_dump(&display->params, display->drm->driver-
> >name, &p); diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> b/drivers/gpu/drm/i915/i915_debugfs.c
> index 0d9e263913ff..967c0501e91e 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -66,8 +66,6 @@ static int i915_capabilities(struct seq_file *m, void *=
data)
>  	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>  	struct drm_printer p =3D drm_seq_file_printer(m);
>=20
> -	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
> -
>  	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
>  	i915_print_iommu_status(i915, &p);
>  	intel_gt_info_print(&to_gt(i915)->info, &p);
> --
> 2.39.5

