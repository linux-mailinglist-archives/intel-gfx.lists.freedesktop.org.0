Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C604C50902
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:50:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DCC910E690;
	Wed, 12 Nov 2025 04:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V0EJpcor";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A76010E192;
 Wed, 12 Nov 2025 04:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762923029; x=1794459029;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6E/f/BcHuGnzPRvJVi9O9zedUxnIgvV+KMOs/V49Xwc=;
 b=V0EJpcorO0dLW9D3bj6Ia4Xm24azEUn6lV799gY+dxuYMu4vtVYzgRat
 dt01FkeCWAYWMgPQhvz71wAT1+TI0h0lLLsQ0Ayave2CRFwEGfthsbYLx
 0a6b3/pMaM8uibWr9TvG32e7vqfKvk+CJPBBnclUbnj2UFAHQgQW2Ahj1
 WcTQwsZQKKTUnmsDle8ascoNxBtvWtw2eaSZNZ8Dbosw9C5eL6Xf2E6gb
 yVVSBw21vwdNaDBvtotKnKAkKeET17xv6x0reQhFV/IyAGuIgMzqB8wSI
 4QYlbyLhGkoxksrWhbFDyt68HS5+nqZfU9w3wYZv45tIG52J/KBbuCi7P Q==;
X-CSE-ConnectionGUID: zKYXhsvfQI24SsdGUSRjuw==
X-CSE-MsgGUID: FHDA4qOcQEaEaTGcpvEzHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="90453306"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="90453306"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:50:28 -0800
X-CSE-ConnectionGUID: DhwO0TSAQxW459UNfmdbjQ==
X-CSE-MsgGUID: PKNZiXdySmKlPbRcCVUKYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="188887995"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:50:28 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:50:27 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:50:27 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:50:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oglnbPln/XxbsNlakX1G9vnLUfZpDbHYgDDFiRpw4cAm6YmDftvh7ffkbaEhLvE6Hcqww3Dji3nd+XpWzNg9V+bjnXjxC+WwKEzI788O1bN95vlwWuUnoQ1G+u+t5FID7yQeYEhn0g3y6M15J+6aecO3U6SWBUVaDNcBPn1eb5D2JjJXBkNh82qVyJFGWhDjt9HDzxN/JiggRKK5kfY0jNAUCT+mrAs5lymW/caCjAEMgoYRiQWHXmAckA4254m6Qg5z365Iuw+hjZjfX6c8oB4Btr/7Lm61R8Nuhujq8Jc6uFjRoqIMzntAG4BgeYgys/U3MmLyANO8uwJS7CSbgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+J3RcE2TY0+2TvoVBrS9+3a3xE2lm5lNNLWCh+DAzU=;
 b=goEYxbGjPygXk6h3doEv0IXqXhxxeFxDB5IWZUIuQZArQSQYZhZVyxS+XHHVIQHvJGTIHKt97pA+7h5b+selI5iUk5yLrgiuoXR+b1FWxsZJUtzWOVwPkl5r6OMkbUZpzeb8ToQevV6EV7g9G1L9zjS63rplkyiFmmNFHkaQ18ArdPzXM5WCFMjkU0eVC3i+a8kLYrR8Odh6SWMGxRdHPqDXbdQH/bM9v917jHqMY8vaAW+ynaj+Jd4epjLeXLftoJFZmDIyH3IGuI7/XBYyhPgM3dmAZQi8YN2IATpyOwRc801QKRm84gEuk0iaKQbVgQJx7nGCeg1d4dQkp8WlHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA1PR11MB6442.namprd11.prod.outlook.com
 (2603:10b6:208:3a9::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Wed, 12 Nov
 2025 04:50:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:50:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 21/32] drm/i915/display: Add .update_active_dpll
Thread-Topic: [CI 21/32] drm/i915/display: Add .update_active_dpll
Thread-Index: AQHcSlaFuSNZrn9+dUqcO0th/u30erTuityw
Date: Wed, 12 Nov 2025 04:50:25 +0000
Message-ID: <DM3PPF208195D8D1D54E555EB849FF043DBE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-22-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-22-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA1PR11MB6442:EE_
x-ms-office365-filtering-correlation-id: 818986be-cb12-47c8-d4c7-08de21a6fe98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?NsF59ihiE57FvRtZRAFtxsS5iGsKYNsBL+JJdylMv3q+ZpjnU5pbdFFRQ6GL?=
 =?us-ascii?Q?WCVHapKINxpjMkyvE0q/KoB+EuyBeWH3M1YMaPY3sO60jgd+Ijg/xBQfoYDj?=
 =?us-ascii?Q?2pt8pgQhMowsd1zzc2OAXqRiye3s2tFAwKRRDXD+nmKd+oMeCwmYOG+KVIeU?=
 =?us-ascii?Q?dQQVEXVqIyv7KHHg4yAEM4SU0A5zAlSyj116wpzmZuHyNrtmi7/bSc4ZCxlj?=
 =?us-ascii?Q?PpeO8peUy/khKd3s0J4qzv77QmVT72sDXTnRNUvSDxB9kgPzhDGlFQJufBAs?=
 =?us-ascii?Q?XN9vmzTIWqpviwEpzwUEm8lF/Xz2P3vmUWawKzUtOpr7BoAFt8zs8m7fqRmq?=
 =?us-ascii?Q?sr5kiNEN9AbM6mnPC3001jFl1Dm4PP8ta/8IYk/UNIsr8MXcPkm1edGjK8vk?=
 =?us-ascii?Q?HrVlCyjFuUknerTvUFAPgfo+uHEn7DKMQpETbiDvnMr4XQuVvKxbkE7wsatI?=
 =?us-ascii?Q?2WGSGetW4B2S2eSdTTt/cIE/WhDt/L7vOjxYFqEq/Uf48umyNhJj9jlJaaD2?=
 =?us-ascii?Q?n5UxbDL7JL5DR3Arto/au0XUGJi6p496B3Tue0P+Htt/CaUYVJAUmG7S5iCq?=
 =?us-ascii?Q?gsmgU3/GsQxXJgzovMzkUIwb0ZnbqKlD0tKUKsHNCgUSkUlY8wC7yJE75Ho4?=
 =?us-ascii?Q?ALMd3Se6EGuQVUAGWemcTE9DkD/pkhjTFOyXVdzvq3wdGwHZeeekUfk0b095?=
 =?us-ascii?Q?NW94MK5yptO2IlbiXYiLgF+kv6wnE89/k9CKcJSmPmMIBrB2jSJcxEGwgopZ?=
 =?us-ascii?Q?olLVJikDhM+v2tM+ljnI7skV+LB821+ZInjnXLhxustsGNhlBElX+be40D04?=
 =?us-ascii?Q?lcp1/1oAPSFW3Zlj2nOjrhsUSQRACpd4Dy02B/5SbnshUZ9cKBUzsEZwkYaa?=
 =?us-ascii?Q?t+Iqv9CMAf+7dqEzYTNMK1UDq4upI4G3vRmiJ5gHwDST9fR2ALyW/PfM6ATO?=
 =?us-ascii?Q?M8lAsIqACjxaOFC/FEZ3IaaRBezT3cmXLrEENdHLvzBqn5qzhuVC8cJZ3LzC?=
 =?us-ascii?Q?OgWgDtZScaGQINtIVfbPE1lIXpa2iKOIYHnjZ/S2JzzH9YeFX6u49cLrwbRB?=
 =?us-ascii?Q?AaEzCaQLjXRXQDk6AxOSd2vV6AOZn+DVxo2hDRPOqRAtiw/UwR7+WML+CRfl?=
 =?us-ascii?Q?enPSlBbF2d7sryaX3tbSsN/QFxGlV4tD7eWQOZsIieV7Jt+YeN33ZGg353Wt?=
 =?us-ascii?Q?C+7LPS/CquoGHXwzwtFekMdrakMIe/QUx3RshfF2aDkRFdyOuw9rWthmQThd?=
 =?us-ascii?Q?PG3y6neCk5DKDsYmkn6fWKKzv3zhDYOW5h+J75wamllIN4Wk9KDKaHrdhjU1?=
 =?us-ascii?Q?GJdK49YNp+Ke+IB9NYHSL4K5xGs7jjZ0qCl3YQXuWAYZ28fkYXlFedNFCBFr?=
 =?us-ascii?Q?zzz9I0+nz0yjRQD6ODRNzSGi26k2flGGRlEJFzqz2LJqNRP3ykc8exww+rnd?=
 =?us-ascii?Q?M2GtioVHp8SdXQebUi24cD7llhBqgxhfKMWqxJ3B4D+3EHJaa9hRLucRQ8IH?=
 =?us-ascii?Q?NGDKaiwyMqsj372R4iFkLil2XBaiiyGxhfHm?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?w7uDfwHDi2/1G0eFdOciUIXVbJrlecOBXaNLEKqq40iKLBvq4XE+HkR0A5j/?=
 =?us-ascii?Q?drnhlzVNhmCS242E/wmNGaFcvKb5J9vK8lOOq/K2Gb2cKnZUg6T3QuA7wm9a?=
 =?us-ascii?Q?8NjDNZQKuQ8y6QSHo4uuWPkRYkY+XI2lrifmzJexhbuGhQ776MJfSJlNlcxU?=
 =?us-ascii?Q?6DxGIyUxFnXFbVEGU3dCLDIo86Bzw/6y0RFoRKzkAp64mt9DLF83HFu49XuY?=
 =?us-ascii?Q?8J9/xIrQGNjz4Mf7q27mH726TGHkgiihOlyC7xyoU/i4TyB5OR7vuaVByggE?=
 =?us-ascii?Q?VqAHLXGtzy0Upu7Zfu448Q9edaSlorZ8uio0GxU9QGuE0GDnWtL61FMYdExN?=
 =?us-ascii?Q?1TTtyJ/4MIqnw2ytPD3EOm2kpTW3oEz+xnHwafyjGUygg+Bf51LgziePsccZ?=
 =?us-ascii?Q?eqsLJZLfpmN/6EKc4A65wHJEwhny7hqx9Ivp1ot0QnRR0WBIqBd0Oq3snj7B?=
 =?us-ascii?Q?+tyPNjig37CjTgHhtV9qPuD58Lw/kEpbr17skmjwcahXr6L2Dz08MmQD9jub?=
 =?us-ascii?Q?T7YXEk+1v1Fm/ki/aSD94niFpY/7YQAwNBJ6VRf50WgW0Xn7byUEQGQVd8pz?=
 =?us-ascii?Q?QBCBvwzf/FrhyyYtE7BaiwwTQ841BTcXqaFcBelh6KwdJQ7TFgZL3uhmalU7?=
 =?us-ascii?Q?K8nf2lNKezda2+IU3CDmNRyCv86w0zscZHlIe+Fm9voiTrrnAraeOGm8c9Qb?=
 =?us-ascii?Q?e0CzY2HRf2PIyX99c//mICkmhtuLRf7bEFIfZSbYK/lNXGfhZfVYqwbtwaQK?=
 =?us-ascii?Q?YFmW95qtQv7dJDGDB0zIqKY7jP3BovliKzhaClW0MOhg27NhoezYZV0EQSCg?=
 =?us-ascii?Q?2XRzU+yO0gO0+5PbpGAkQyW8fOkYBpcJZfqh+Y7vIwQ1eEwNZOGcMREpryOW?=
 =?us-ascii?Q?XusuhPzK5Tostka+v4T9ypx+kJtIN5XkU6i/v+onUL9kN/QzloD1QmyXefaa?=
 =?us-ascii?Q?yqFemN6F3OmbuuS01k/NXjuFC5cFvFs3FMcTn3t6xJNfsYr06GDSdnJZE2aC?=
 =?us-ascii?Q?hsbS+C2kSyZ/KJ8DuQmw3pO4zhK9cgZwqh8xm4poALXkadBuYof5LuecG3V9?=
 =?us-ascii?Q?12sb7YJpZ5HnXovODFuRBQWq+Ms0OufBjtOZS7Jxu28YfUygoXe/QBKgh6bg?=
 =?us-ascii?Q?4xNBX3TQjdVy87MBdeCJoVyJit2q9JwtTpet9nIbJuGmA6YF5DKdJgiKMkYM?=
 =?us-ascii?Q?XATKBlQBVxz/t2/Xu2STv0zraG+eqJeTQukGjNhQ10T6r0nqvApMDdW2p/zP?=
 =?us-ascii?Q?H22rEAIE6/6ioTPFRVlI6qPTYGpK+IRHeiYIwwyWCk+14KXPQw1NprjaNaAn?=
 =?us-ascii?Q?55SdTfwdqRjXrY0c9oDQssTP64pI81eNhhcn4nkvQ6usCezf5iXIXxkeIDsf?=
 =?us-ascii?Q?DgxDRGJH82lfVUneszC+ezXle63inkovCabDWbKXOcwhfZ6uMfeT1JRUWDvq?=
 =?us-ascii?Q?8kXNpooSiL3nD+AOGK9g4B6peNdwc2vj4g5wxAXrn4wT1/eOfbZF60SAty5E?=
 =?us-ascii?Q?sOGe1E9jp5UzCFyKTNnrgC54mjE6HwOMYnSbD9ZwiIbL5o9ASWOb28JOYW39?=
 =?us-ascii?Q?eH9/RUr9wW3BkAN2fUQ+rMxjljbYq7+fVTP7E0pj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 818986be-cb12-47c8-d4c7-08de21a6fe98
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:50:25.2588 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2wDfnsSoybXyUilShb218LNfVb+2ktLwb1QmktQIfJjRvhzDISpSxD8T0VmBfOJpLDss+Z+36yX36LqXLllZOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6442
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

> Subject: [CI 21/32] drm/i915/display: Add .update_active_dpll
>=20
> For MTL+ platforms, add .update_active_dpll function pointer to support d=
pll
> framework. Reusing ICL function pointer.

Make this imperative same as last one
With that fixed
LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index cd612acad6e4..3b62943e2748 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4449,6 +4449,7 @@ static const struct intel_dpll_mgr mtl_pll_mgr =3D =
{
>  	.compute_dplls =3D mtl_compute_dplls,
>  	.get_dplls =3D mtl_get_dplls,
>  	.put_dplls =3D icl_put_dplls,
> +	.update_active_dpll =3D icl_update_active_dpll,
>  };
>=20
>  /**
> --
> 2.34.1

