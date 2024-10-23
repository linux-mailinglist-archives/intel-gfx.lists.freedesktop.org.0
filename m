Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 179DD9AC1E9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 10:40:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF29710E798;
	Wed, 23 Oct 2024 08:40:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eyUZEy6X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F6410E796;
 Wed, 23 Oct 2024 08:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729672801; x=1761208801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1+z1/RKxeXkA2cVj3tmsrDZ6uqFYDBc+yqZXOBrlmno=;
 b=eyUZEy6XxCOOX5fe1X1g5MgnKxgxhiWsOmQnTPm0L7KQ0JkZn+F+eAEl
 aM14L3UuW3ATwjAHQXGLo4LjTn7xp0d8oNvjwWBwF1oqLNVDEO2pO30TY
 kNOuPRkkKSlvGs8SQxuegnffM4TJV2/XPihv/cVYvxeIir3pmBYshWUPN
 byAwqT2N0Z0yawHW7RstnM3yetwRdVaKSU71pNvtQ9YO41n64+zjsajh1
 djAeOcNWxu/NRyTHV/PyNRovAqlVgAJhUHuEoEgpSiUw+jI/5oZx7om0e
 FFbR3FHShHrZwbhFfR1aPdXpprorZMsR9iu90YT1MorDR3w00ubY3/J0+ g==;
X-CSE-ConnectionGUID: co8ZEd+BQDaR0M3I5bvcTg==
X-CSE-MsgGUID: g3i37g39QKSXo6Zdh2JhcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="54648031"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="54648031"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 01:40:00 -0700
X-CSE-ConnectionGUID: 8UTO+gcwT8uKhxEbe5BezA==
X-CSE-MsgGUID: ahXFVv/jTlu/kKaJmUQBwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84710147"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 01:40:01 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 01:40:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 01:40:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 01:40:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TxC6feBmtDjrDPhFAUaP8o66xfudUylyzo3Jcavr2Fw3wMGdbH6fE86+Pew2ALbb7MHK1HxldVEUdofrUFjAzJjEXs9RbyONqFGxM7EdL03U5kMGFhDzAH4ha7OIEyGPg4tqbMpoDghHVQ9Z+dbrqnPCebZlOhxqUy8RBzdn032HhyG9kyT+xlRFcAb7FqW0kednTed7hQxK9p5jBpFx7zdzWu/lpuCQVkwhyAEr7aLCcUCUIQawOSXK9lA/GydFa8ekofXJzR8mIB/rU81GSjMFBvZcwZMq3Ljq9ywBSuSXkbn36beq7qlzM8IdfELeVwuaneXvwbRk8wHF7Iz2DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y2/Dw5LhCAHcTQe/czbKaN554eWHhcDDtSwY0SssCg4=;
 b=r+kRAEURDNpV0voKj9lIdVbWAGDBGvukLWfNbDWgLW2kmZS1oNDqXUO88E1f9bkW2nwDy0ZeIM3N7ouTj8/1sd3jKEe05zfoZLAXR4Xr6tV4lK68ML56W1qArMLtHl0WuAaSxPvWyswtqMUYaabfWUcfH+apvNtg8nyC52i2NioylVAFwWCuDy04w/ceBaVXOWPk58OCEZWlAf1L1rZl4Md8M3igdNSf85n9F44XvU9ANj/4bmaE7xfGgrzsuaWYAm/L4TQtr88dtHBXuBwH90+t+cFheEfdNxJhdhW3+brRZrMZqi6PdvC+FuNk0YcZRXeBJcHVO2a3AVDLT03zgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS7PR11MB7740.namprd11.prod.outlook.com (2603:10b6:8:e0::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Wed, 23 Oct
 2024 08:39:53 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8069.027; Wed, 23 Oct 2024
 08:39:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 08/16] drm/i915/display: Add macro HAS_PIXEL_REPLICATION
Thread-Topic: [PATCH 08/16] drm/i915/display: Add macro HAS_PIXEL_REPLICATION
Thread-Index: AQHbJRfs+uNLs8yip0+Cs1vLqXcy7rKUA+bg
Date: Wed, 23 Oct 2024 08:39:53 +0000
Message-ID: <SN7PR11MB67507DA575C5F1337C397221E34D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
 <20241023065257.190035-9-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241023065257.190035-9-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS7PR11MB7740:EE_
x-ms-office365-filtering-correlation-id: e3e94edc-a181-4c17-1695-08dcf33e43d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?kWoBTQHnnkKP0oSCeeV5FQwgxerBF9CEfHu8Y0IC8zuNoFLkBY8tVng1rVl5?=
 =?us-ascii?Q?p8Gc3AIX1rOq2HzSoH2nTefUDKEosBdvjE67pMkE/WhMGyuot7bBY4jeANKP?=
 =?us-ascii?Q?DBJ0/7yE8cywpS1wIkRmnS5D7pDZ8IaHlEgxDILvPpAPU2Hf+uHp+SD6o1iq?=
 =?us-ascii?Q?hqRrOnWbF6lqnWOiIRC6zCN7B9JuXSAi9Pv3lzqDYTObGieBHvcc54sLZ3r9?=
 =?us-ascii?Q?xX49plyv0q+q4TEnOHup9eLZ6lNylTKPrIfCWxfd4GK4gcK7S7vt48M9gR02?=
 =?us-ascii?Q?/svt/h42J/6JH+1dNhPSnDhvL0GdTWdPHBymzqFOBpLcZyXq2981xTdAp7jD?=
 =?us-ascii?Q?zU/P2hdZZShKVtsYy/e4O8FqIYKUm9bcmL2w42+xJ8rALQjRJUTYEbvgXtQY?=
 =?us-ascii?Q?5WEeDelK/psNDZ70Xk/0dRjgUQwrt8njoPHivuzh5L15BVtNSsGCthoW+lyi?=
 =?us-ascii?Q?mQ4yVY2mHBQDAYaxYdyzvjo8vMJm5Pj4tEOKZJ04oT4i0HjdQ4zJ+DaAHEcs?=
 =?us-ascii?Q?q8Oep+rd5PMypOrZeYMdu/oiwePbU5P/javY6/O9C8ELiV4MDNSOYlAGiLYA?=
 =?us-ascii?Q?DD7b+N5knFtDbuG3Hva0/T2hHvXjc/K+3KzyBRwPEnbtFFxhmG7dmym38Q35?=
 =?us-ascii?Q?1RszFwvB36GCOq74lJnB7jj+F0MEhsJaSI7tNo/itWvRX/LHr28CPHaERkkg?=
 =?us-ascii?Q?RGDa2tQKg2kzjQGYvNFUbXXdqM8zQ64PSbPGrFsjjGf6bCtPt58kLHeKwZGN?=
 =?us-ascii?Q?mEECTauzUpkUr1FAD8pIi+TS05KaSLd/BJlJKHnhk1M2/AON/CyZKPkiZrNS?=
 =?us-ascii?Q?RIdIDJgRl69vXd1W0FKMLBMdydwlduEtx9zsH1DnVnvllHx6+gxSqyG0GkQJ?=
 =?us-ascii?Q?LLkSkj6WfYzQS5T2JZREyliA7dIl/ufyRond44GPSO7rDRFS3yXekrPYl3x2?=
 =?us-ascii?Q?Tt7FPX4THHCOnHqWYjlpHx4Zmnc0tdraBp7wctmFnmidcPCyXux4u+YltHzg?=
 =?us-ascii?Q?VtblAL6eKYjLraJDH1V2fzP4vVjUzU9VrPhYWHUUz9OGdEBlmylM4oWAvu+R?=
 =?us-ascii?Q?OzFo4L1x2fdeVh0EiIZ638rfYGW47RYfoK/e0hagM9ngc/YIY10V+hT/f3xy?=
 =?us-ascii?Q?bklcIqK0tC0tL2rCSlv3/ewhbcyRNqd65ezt+E9KExkUPcH6t7pV6UVjSNi2?=
 =?us-ascii?Q?JaF4m/X+IOGuvl2ZN3lL6Xf3Um0of4a8Tv0iROuKkg9z4hGMqJ3AXWtAeRrG?=
 =?us-ascii?Q?1IGG03vTNsifBUtriP8nj2jLru7sascotJO2i0Ler/nGKz8LWkPqZJv86ax7?=
 =?us-ascii?Q?yU/UeMF/WX4/onQRx6ACKcd9uy/tQYm4ab7a/fGEJo0Of2TVVsC/BUjlKBpe?=
 =?us-ascii?Q?bR7eDFY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qf5ppHUj8uJYvw4y9gbzBDsVuC5AxrAvPxUucDwss1RpWPDqLt/bLyjtOi4Z?=
 =?us-ascii?Q?28kaBhkpmwvfOcQ6du58wZZRh/d8d2HbsP6cwD2FjpIaQD0MosnFNEuFR7Mr?=
 =?us-ascii?Q?l6kkM7lZCcTyHWqQTzGz4MK2IWvoWtK7hXkFMjmmOXMf3YqPZKZTqe83fozK?=
 =?us-ascii?Q?wZJSypG3Ov/zZAd7hdnc8Tsf0lcrC/TxA2gTH+42zMopUThXzdS76df9eF6K?=
 =?us-ascii?Q?vBzr6QXK7kP2tPa93RoFXRR/RyQd3pRs90nfLgwrN04dExjSq5qG+xDyp60W?=
 =?us-ascii?Q?eEsqODjJ3/B+hs1KDIna4QIzah3WFFv5wTEjBNKm/BOxvEyDbazLPIxSj14L?=
 =?us-ascii?Q?jbAD9YrPievUOJoQZGfrFoCO7kRtTtzVeMyJrakoUoHl1kuV4s65kuObBc5B?=
 =?us-ascii?Q?NMo8FMSw6ux671nEU32nRNbm20/WCPB5mU5chkeW6V4WzfEYZV5ZOH6sBdNm?=
 =?us-ascii?Q?Zke2uV2ADwI9CKK0KtXa2GG3cg2gYCC40PrqM0BWeJeAe7BZbqkmmX6G+2cG?=
 =?us-ascii?Q?QbOFVh9OtFiuGMs76SajF+yuuz31o/6Mv7CebpdxKnamOwZQ8yOXka1Lb0MN?=
 =?us-ascii?Q?sqm0fcRmeyao0c0OXM1mxROSsX9PitENE030gxE8IAK77SHd/KjKDAsbR0JI?=
 =?us-ascii?Q?OLbFXZNoUtVjgvuWx4W/ErEWaS9oPY0Gt/C9D/SYrkaNbd4eskgMxUItMnfO?=
 =?us-ascii?Q?+eWpciU3NKr2o/kWgxkKs91kNucmM10FX4ghNN+nn0R2r/AfX6li9XH1s92X?=
 =?us-ascii?Q?YMctZAvxrk57eGD+cTINbsohUgQFhoThhqrPdFIoCnJxtiV52IS4mD2UW1U3?=
 =?us-ascii?Q?OWwpN6o7/QX/UFDyb+4pgheLaY6h2I6Jdn0zMw+IBG8t+u8bRg3k/jFa1I1F?=
 =?us-ascii?Q?NbN5MFDXtmJmcqwF0N0oKgo6jiepyffZv5c7l7YtKJmz9ql1OJflw4GHvldt?=
 =?us-ascii?Q?Gsh5j9FKTDocOLONzoRr4QKBjRVF4W7qftn0sz5/UgCJ4ED9AN1ctshPE5M7?=
 =?us-ascii?Q?AQrusFax5zfkpk6rmeZCAqTlgu81xdKA2t9Pl5gCBTCQUyKvXzSAVh8CCYeF?=
 =?us-ascii?Q?BwpMe7qbFGF6S4pcysYRM7P+QKAFRIu2gvgtkt4a/8QcFuhMSSX3fau4fHVa?=
 =?us-ascii?Q?Brqob8hrZX9RQ/BCKBgK2jyFKxKfacAqlKoms/RsQnhn8hZC5+3Mnb+nSrqs?=
 =?us-ascii?Q?TUwxdKPyZODMcc97VAYm+K0miEU2Ey2e88x/KtMDtcpobJmWyJ5AJ6rGDDeh?=
 =?us-ascii?Q?wNlrIO0WiVxrug69i+WxixLVOCcLmShn1gB1Hac93Nr9R+fSTBtmOtnyB2FX?=
 =?us-ascii?Q?BMITuC0CegsLOhTGB7Z9KUtqkJMknet4UO8F230K8FTuh4xr+wOLpVrPaMuY?=
 =?us-ascii?Q?WWiWNOzGOTxQYgrSwH/965/pPvHRdfqcYHag+bqjM9hARRfyjJfs/KOe1Jkl?=
 =?us-ascii?Q?PaSKWxhij6qebin9Rg0rCQkSShgwpHTpDA6MIopulw1QHhIwIPcfOpEPPZuM?=
 =?us-ascii?Q?acGHDwWpmuOiVpj0LvKRfo9IeWZUz/+AiAJIKlN6RjxUGu6pnbDpHOlTEePJ?=
 =?us-ascii?Q?icpMOxHOoIBtK6msgHZSxWOOZby8lbi05npqcpjF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3e94edc-a181-4c17-1695-08dcf33e43d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 08:39:53.1475 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 02o6bCaEJxM4FD6RFQ5GkQWTQyq9zd/7AT7JfCFQowRciL8dPjvU9IIYvLHvm2m8jdKeDqMGP7yyjTD6Hgs0JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7740
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, October 23, 2024 12:23 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>
> Subject: [PATCH 08/16] drm/i915/display: Add macro HAS_PIXEL_REPLICATION
>=20
> Add macro for Pixel replication support with DSC.
>=20
> Bspec: 49259, 68912
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 071a36b51f79..a21b910879df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -149,6 +149,9 @@ enum intel_display_subplatform {
>  #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) ||
> DISPLAY_VER(i915) >=3D 14)
>  #define HAS_MSO(i915)			(DISPLAY_VER(i915) >=3D 12)
>  #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
> +#define HAS_PIXEL_REPLICATION(i915)	(HAS_DSC(i915) && \
> +					 (DISPLAY_VER(i915) >=3D 20 || \
> +					  DISPLAY_VER_FULL(i915) =3D=3D
> IP_VER(14, 1)))
>  #define HAS_PSR(i915)			(DISPLAY_INFO(i915)->has_psr)
>  #define HAS_PSR_HW_TRACKING(i915)	(DISPLAY_INFO(i915)-
> >has_psr_hw_tracking)
>  #define HAS_PSR2_SEL_FETCH(i915)	(DISPLAY_VER(i915) >=3D 12)
> --
> 2.45.2

