Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC5C979702
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Sep 2024 16:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 911C110E11B;
	Sun, 15 Sep 2024 14:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GwY+aKkb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A025892D2
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Sep 2024 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726409393; x=1757945393;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wEjcx2Ny0o4a1/NL4YgUQJ8otgRJv1yMufYJD1PPtxs=;
 b=GwY+aKkb2583O5Sgu3ln6qWoRFXv7FckU/NsGQmTJLczmexVIwpcQDLF
 4CjTYMfCH9KrDmthifTE32pTiz2Je8Wkxdh5srrUUY1KqeR1Z/tJP4FuK
 H2jPSJWY4vXYMjQiW44eOKIkbOwDfpUvvChYOx4ac3MjFjjhyEORbW/tA
 /JjIYgQEByxEuSjjCQGaft/wHrrpXVwuZiVE7uHb0N3YK49U1QQv1qqW7
 COjyVND1vx05QdABGqj+aG+C1mCts3X+9F/HNwODuKoaX5iPkuDpKL4FU
 mBh7AJpARf03upmuZ3/jQCoP9oFrrTewFkdWFdZcBZcF2ST0cr96FNhni g==;
X-CSE-ConnectionGUID: u0MqYvf9SHmj8mCg+FPwkw==
X-CSE-MsgGUID: vILcXIJiSBuAdReX19MLTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25413323"
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600"; d="scan'208";a="25413323"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2024 07:09:52 -0700
X-CSE-ConnectionGUID: N7i2g1miQF6vdU4g/tbe4Q==
X-CSE-MsgGUID: mzczijf7Scmlyob8PQauEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,231,1719903600"; d="scan'208";a="68255594"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2024 07:09:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 15 Sep 2024 07:09:52 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 15 Sep 2024 07:09:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 15 Sep 2024 07:09:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 15 Sep 2024 07:09:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LqKH7jSyP95uxyvvzDaY/AdGRO5yAbdUqs1y+V8lb55unM6y656Daq8qLUEe1GahFtlYKDLUFdriOS2uVw5sYF3zq7WPiQrr4qXCiFG9QhC5Ite9Kaaju3LlyGq+vPqccJ8WBO8eELSZ1aYiIADWokOLbD4IQwdrRXVRQxG2M8xguXodfgByr+R5wkt/u/EyJvi4XxGDZ9jVAl25GOg0uRfgtLBw4VL+YBFJOpufmRyzpO1O32UswWALjMM/7eDlhmIkMuAq2PtkKfsBzXBI94I/VLzwkiLmR/hoIiEwM3IUzpmE5GZT1eB5I4VF6PY9lVSUSd2Tap/dJ2L/3xeZ6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzo3WrJTdZvqmlCWe7OBaEponY3RBsPqcQ96MzcjpfA=;
 b=KXw/ztyZz0Gf57Z6L9ShzoG6Yu8wy8XhAFgLWEXl9C+2JP4DZjnOJNWH+/vjRXBFyzUoGSOXaciWzvysawbLKkHoymE1be2jIPDWYeKwgKkbATkKpiYqHUjCPFXFA8Xmg5pm9t5TrYxjyDbgHyC0SWn59hoUq9y3USpgPhg7Gl377j7X76SJb9MU9nCfqTuYR4nIJVW2T22XTcmQEhMynXl63hl9wPqG6MqLfiw3em+llJ4JYJxTg5rmkvfTv1hP6JpyQnyOciTpkfXdlQ9NPC8zj2zZBC3zi60OIk4M3wjXsdGjhm9urAMfOGmNmPwC2Ydf3V/Dwaho6YHYsnqCwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7939.25; Sun, 15 Sep 2024 14:09:49 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.022; Sun, 15 Sep 2024
 14:09:49 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Topic: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Index: AQHa87WZJusTjY3OEUmZ63RSw/ze/bJSe16AgAZ5dzA=
Date: Sun, 15 Sep 2024 14:09:49 +0000
Message-ID: <IA0PR11MB7307538FF7951575AD0861A5BA672@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-3-arun.r.murthy@intel.com>
 <SN7PR11MB6750DA63AE737BD354294CADE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750DA63AE737BD354294CADE39B2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM4PR11MB5971:EE_
x-ms-office365-filtering-correlation-id: beb8e934-2567-4504-c6ca-08dcd5900f7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?j2cM4ELDbzLxjNhsIZgAHmI3Xg/VdxBQWl8o7PRw0ByexgMB85VzBbUmRuqm?=
 =?us-ascii?Q?Bf9jC71lTGD/M0heGsgnctuQkzkze8B9f9/hVN1O9JPlvQy715OEQiMGOsQ2?=
 =?us-ascii?Q?qWOPMcGcA4T2JLF2LzXUjCiXd8H77pOWX30tXrf+iyOejXi6P43lTvozIuQv?=
 =?us-ascii?Q?CTxW1BjIlxGD1Aknn40ZbTIrfHWnc6gLAbqc0iXgt2WtBc94INDyZ6kK9VPQ?=
 =?us-ascii?Q?LjdUAzYm7HSV/2DNtrk7YBQev/0e2MYAXdz6yPoW8D576P7Thl/Q4lJx0Fe8?=
 =?us-ascii?Q?yGP+u5GDuv2Xf//OyMh+PJ+zMAZwPZBDv+tNPQZMVEzWG3xGwIkT5Q5GuvQn?=
 =?us-ascii?Q?YWedhWOzHEBmjiVa2K+b2a3u5Kfyy4LtKdgs95S4DVu/hV0HaJZcT41EFmcR?=
 =?us-ascii?Q?PChK5gsYYhbwAxjCKzhoIS1C9POxnw4Y125UVmftUtOL3eEWxh8pJFrP9EpV?=
 =?us-ascii?Q?uLRmELYdRSZ0fZhJOzP0Q2kd4kfvLBhja3tJXl/Z301eEGfcDW5YCIQZsrRx?=
 =?us-ascii?Q?vWGylZVxKO9lKVZEMY+pdQAZNQtytZhulaPF55E+SfxL4QDA3F8LW90ShQMR?=
 =?us-ascii?Q?FBCpDtHoQCIT0pk0BmZqlfXkojokBvWALOHQebMmjECfFcgdWMkT7EKTh8fT?=
 =?us-ascii?Q?xHUq6Su30eP7uNfvyV3SkrYuT2SyjruWoiycvxONRteyY5Xl6202TTUU6wEs?=
 =?us-ascii?Q?Gk9kbYIefYFHhb8FSD+IMKTCqtC1E7WhaNgZeQRkQDlCulJhdVOP5MeUKJIJ?=
 =?us-ascii?Q?d5FpHGYHyaFR3iq5ay7vkvaNjSxpAOuLstAzi2G9QzzqXNcM4EYy9rJY5K7z?=
 =?us-ascii?Q?kfWA/4UMOYjtlbk2IPYwMsKtLId1jV/wFU5klZhxCgg0Zj5wzoijixnAQkUs?=
 =?us-ascii?Q?mNmWT+0FPqvUHBs6LW8XdXeohFtOdojPo8g4VXa5oUaieJVjXinHWMvIEfRQ?=
 =?us-ascii?Q?6Z2hu1lcjZ2HpyoYxPsfgRBbiYIvg+2ysUBMy+rteMEiM5HW2YZvpFfP5nL+?=
 =?us-ascii?Q?1edBNYHyqR8twseqq9XesGEr+x2KBX61dwVe/MuXFNZnXoQungwJrWqrx2vf?=
 =?us-ascii?Q?h3nts+H1aivULG6+zyibd3q2TGBkt85qZSy2jrhzqHDEituQ2+OY99XvcYnD?=
 =?us-ascii?Q?eEYhqhWRYiOY3ouglIr9GYrUhS5Hvo4P7J6nP3viLTieiNfCKnLAYOD49E+Z?=
 =?us-ascii?Q?TRiPEnqkqZ43xzN7qb/xns+I5IZoWgqVayOenz41TIe5OMZg1cTAA1iTEuTn?=
 =?us-ascii?Q?G2CbUnv1Fu48itmLPOu0lQ/YeorH0GABmIwgBFx8MYWc76oKxK7ngpOvxwut?=
 =?us-ascii?Q?4Z68l0jkYP/OomKEq6iJxhmWqaT53XWfOmtj7yUmk51BMYULP7H4YojHx7yL?=
 =?us-ascii?Q?FB+/DPfk90yudhvFtlG180TSUSNvZJJEoIgdrkNWaygWLRF1nQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZFdsNWd3mq3soZpwjZ8/Rfms7eqfSSP82qaxP3pCxszKX77Nm9WNy99nfrYZ?=
 =?us-ascii?Q?/dxnoFbwq3CjstPTTeOa82E+S148fxXHEHSXn6+KMh+oi0hPFTURkc4H214a?=
 =?us-ascii?Q?yytN8Dai43fKM51xkb8k/wQBbVYmvmsJPbklDVwpCwD0Ztk0rsHS3qaKgbhl?=
 =?us-ascii?Q?EDy943lNQShgb5WYDsFbfadjpIsM7hl+6NGA91GK8IuOlvHWpxJyzUNMVqS2?=
 =?us-ascii?Q?KtVtrN85EzaSpV3su8mCNEFZG2y+SxQyzfl0NWB6fH0SsARUz2omw11Fg6AE?=
 =?us-ascii?Q?5B6+Ld3MP5Mei+YVy0Xdw9OCkgiB30lVJCWs7fy8DRp9Sz/nlYXoi1pwJ/tM?=
 =?us-ascii?Q?61dweaaCaLUhF9aeU0eJecE2WzKPePQglwiSrfCqB+1zmmDzVj0bTbZfJHf9?=
 =?us-ascii?Q?IOGnAxOCD/ykMgwquCwPJr7Y71YKvFDDzrHIuduW5c54tMtFnRwzP6Zs9anj?=
 =?us-ascii?Q?tPBmGdICHwpuRW2T+h5I/ew00QSoTTt+FtPkmdwmsu2V+AGzSE0t9Ga/5Pie?=
 =?us-ascii?Q?UhSAqubKOwRhQTw/Ktp15ApmmU5oHVv6O4hRs+LXcBzCXQbu8WGEQLDmkrgQ?=
 =?us-ascii?Q?6At+WfmHmnUnhjCvzJpT40n+f5mb2d/h0AdORmH1fnNoa3iHOEXKn5SAwCLz?=
 =?us-ascii?Q?H+MAyHnifPIF69nMMcSDmOLgCjIEE1JAjIOIis9IsaqjwUxYLS44IMRW631L?=
 =?us-ascii?Q?xQWSD2L7YBUMQE6ZsnOU3pOO1ke2WOYQtcKFefteRdQB8EsdruDgvCCekotc?=
 =?us-ascii?Q?9urFO0plHRhH2F3Xx7v1TFOHg9GglAvTBThe/LGPZIcLb+H8TcRBJijcBKCf?=
 =?us-ascii?Q?C+L35NOG94cR/lCj90yS8URKDOjo3eZqtY0mDgVagGZ1oBUu7ylksDcD3fbg?=
 =?us-ascii?Q?xi7XxJra0vfO1DHLc7huCdeouJ/qbi3SFJETMwlBFNs6Ip2KoJvR9Fc4ZjCA?=
 =?us-ascii?Q?gvqyiQOiBN6cMcDXcADYP0G+W9os3+oSOwwf/K5L0QsmtIL0+jvvFub7vpfh?=
 =?us-ascii?Q?tGtcCKs+subXfqWeXBxwMMqD/ENf/9QDJU6k+cuZD+lgzzC0MF8tSIf1wWVS?=
 =?us-ascii?Q?toruxLIi9wVjdsSf7okPR0ood2wvArJ5g2oAHX5X+hWS2eL/jfLUQp/g/amS?=
 =?us-ascii?Q?bv6MdxLFqy6ycRcy4e4cfr8nr4oSz2DefCEaQqKUuSCy+3h+e8p2EZLnrEck?=
 =?us-ascii?Q?YWuhUuDT+8SFj/A9cXGgYsbrMoq18Nm+XaFo2+Y0hnGPHx24QfPqaR+PGs3G?=
 =?us-ascii?Q?X1ufmkx4Yf1bUHyCYjqXQSHy6TNvdeJTUVwbzN1PXFpL38c/eOYMsC92pw/R?=
 =?us-ascii?Q?so+DKRJzdBrvWEUyn+DEfW47fGIbDrwBPkgOpa5xNspu7dzj6PD6tzgSmM1g?=
 =?us-ascii?Q?UIG4Fi3+6JXN6TRQOo778bIy8kRPUmVrxuUwrB/od1Jtbs8D5WRJZ84lfoOh?=
 =?us-ascii?Q?dCUwDd3l08OpaxlrNWuQ0ZAsAlwTBDxAgNxZ9YPnkoUd1/3IBNBqR0dASr1T?=
 =?us-ascii?Q?D4DeUYsSDk6I7WGLi0ciU8k5onqNlcoAxYotOFiQm9FxHxGKquOEuHbjQVGy?=
 =?us-ascii?Q?YPUj+/id20J6oekxhixnUfVtwmnPqdA7wqLn+tS2?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: beb8e934-2567-4504-c6ca-08dcd5900f7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2024 14:09:49.1308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rdnZNkbQjHIlrxj5lw5nKeEgajCrwnjQ9EulCOdevWpP2FOPmDPlOSuGLsWx7Sm2EJPXBlicpO+A21/piJWcFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5971
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

> > Upon enabling histogram an interrupt is trigerred after the generation
> > of the statistics. This patch registers the histogram interrupt and
> > handles the interrupt.
> >
> > v2: Added intel_crtc backpointer to intel_histogram struct (Jani)
> >     Removed histogram_wq and instead use dev_priv->unodered_eq (Jani)
>=20
> Typo here "wq"
Done

>=20
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
> >  .../gpu/drm/i915/display/intel_histogram.c    | 80 ++++++++++++++++++-
> >  .../gpu/drm/i915/display/intel_histogram.h    |  3 +
> >  drivers/gpu/drm/i915/i915_reg.h               |  5 +-
> >  4 files changed, 89 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > index afcd2af82942..0178595102bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > @@ -17,6 +17,7 @@
> >  #include "intel_fdi_regs.h"
> >  #include "intel_fifo_underrun.h"
> >  #include "intel_gmbus.h"
> > +#include "intel_histogram.h"
> >  #include "intel_hotplug_irq.h"
> >  #include "intel_pipe_crc_regs.h"
> >  #include "intel_pmdemand.h"
> > @@ -1170,6 +1171,9 @@ void gen8_de_irq_handler(struct
> drm_i915_private
> > *dev_priv, u32 master_ctl)
> >  		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
> >  			intel_cpu_fifo_underrun_irq_handler(dev_priv,
> > pipe);
> >
> > +		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
> > +			intel_histogram_irq_handler(dev_priv, pipe);
> > +
> >  		fault_errors =3D iir & gen8_de_pipe_fault_mask(dev_priv);
> >  		if (fault_errors)
> >  			drm_err_ratelimited(&dev_priv->drm,
> > @@ -1701,7 +1705,7 @@ void gen8_de_irq_postinstall(struct
> > drm_i915_private *dev_priv)
> >  	struct intel_uncore *uncore =3D &dev_priv->uncore;
> >
> >  	u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
> > -		GEN8_PIPE_CDCLK_CRC_DONE;
> > +		GEN8_PIPE_CDCLK_CRC_DONE |
> > GEN9_PIPE_HISTOGRAM_EVENT;
> >  	u32 de_pipe_enables;
> >  	u32 de_port_masked =3D gen8_de_port_aux_mask(dev_priv);
> >  	u32 de_port_enables;
> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > index 45e968e00af6..83ba826a7a89 100644
> > --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -19,12 +19,83 @@
> >
> >  struct intel_histogram {
> >  	struct drm_i915_private *i915;
> > +	struct intel_crtc *crtc;
> > +	struct delayed_work handle_histogram_int_work;
>=20
> Too long of a name delayed_work should be enough since it will be called =
as
> Histogram->delayed_work which is self explanatory
>=20
Done

> >  	bool enable;
> >  	bool can_enable;
> > -	enum pipe pipe;
> >  	u32 bindata[HISTOGRAM_BIN_COUNT];
> >  };
> >
> > +static void intel_histogram_handle_int_work(struct work_struct *work) =
{
> > +	struct intel_histogram *histogram =3D container_of(work,
> > +		struct intel_histogram, handle_histogram_int_work.work);
> > +	struct drm_i915_private *i915 =3D histogram->i915;
>=20
> Lets not use it like this here we have intel_crtc use this to get intel_d=
isplay by
> to_intel_display(crtc) and I don't see the use for i915 since display wil=
l do the
> job
>=20
Done

> > +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> > +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> > +	u32 dpstbin;
> > +	int i, try =3D 0;
> > +
> > +	/*
> > +	 * TODO: PSR to be exited while reading the Histogram data
> > +	 * Set DPST_CTL Bin Reg function select to TC
> > +	 * Set DPST_CTL Bin Register Index to 0
> > +	 */
>=20
> You may have to think on how you will be able to get the intel_dp structu=
re
> here You may need to add it in you histogram structure to get intel_psr
> structure Then check if psr->enabled And suspend and resume psr based on
> that Something to think about
>=20
Yes will take this up later.

> > +retry:
> > +	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
>=20
> I915 can be replaced with intel_display . can be also replaced in all oth=
er
> Occurrences of i915 in this patch where we don't need the unordered_wq
>=20
Done

>=20
> > +		     DPST_CTL_BIN_REG_FUNC_SEL |
> > DPST_CTL_BIN_REG_MASK, 0);
> > +	for (i =3D 0; i < HISTOGRAM_BIN_COUNT; i++) {
> > +		dpstbin =3D intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> > +		if (dpstbin & DPST_BIN_BUSY) {
> > +			/*
> > +			 * If DPST_BIN busy bit is set, then set the
> > +			 * DPST_CTL bin reg index to 0 and proceed
> > +			 * from beginning.
> > +			 */
> > +			if (try++ >=3D 5) {
> > +				drm_err(&i915->drm,
> > +					"Histogram block is busy, failed to
> > read\n");
> > +				intel_de_rmw(i915, DPST_GUARD(intel_crtc-
> > >pipe),
> > +
> > DPST_GUARD_HIST_EVENT_STATUS, 1);
> > +				return;
> > +			}
> > +			goto retry;
> > +		}
> > +		histogram->bindata[i] =3D dpstbin & DPST_BIN_DATA_MASK;
> > +		drm_dbg_atomic(&i915->drm, "Histogram[%d]=3D%x\n",
> > +			       i, histogram->bindata[i]);
> > +	}
> > +
> > +	/* Notify user for Histogram rediness */
>=20
> Typo "readiness"
>=20
> > +	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj,
> > KOBJ_CHANGE,
> > +			       histogram_event))
> > +		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
> > +
> > +	/* Enable histogram interrupt */
> > +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> > DPST_GUARD_HIST_INT_EN,
> > +		     DPST_GUARD_HIST_INT_EN);
> > +
> > +	/* Clear histogram interrupt by setting histogram interrupt status
> > bit*/
> > +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> > +		     DPST_GUARD_HIST_EVENT_STATUS, 1); }
> > +
> > +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum
> > +pipe pipe) {
> > +	struct intel_crtc *intel_crtc =3D
> > +		to_intel_crtc(drm_crtc_from_index(&i915->drm, pipe));
> > +	struct intel_histogram *histogram =3D intel_crtc->histogram;
> > +
> > +	if (!histogram->enable) {
> > +		drm_err(&i915->drm,
> > +			"spurious interrupt, histogram not enabled\n");
> > +		return;
> > +	}
> > +
> > +	queue_delayed_work(i915->unordered_wq,
> > +			   &histogram->handle_histogram_int_work, 0); }
> > +
> >  int intel_histogram_atomic_check(struct intel_crtc *intel_crtc)  {
> >  	struct intel_histogram *histogram =3D intel_crtc->histogram; @@ -
> > 120,6 +191,7 @@ static void intel_histogram_disable(struct intel_crtc
> > *intel_crtc)
> >  	intel_de_rmw(i915, DPST_CTL(pipe),
> >  		     DPST_CTL_IE_HIST_EN, 0);
> >
> > +	cancel_delayed_work(&histogram->handle_histogram_int_work);
> >  	histogram->enable =3D false;
> >  }
> >
> > @@ -181,6 +253,7 @@ void intel_histogram_deinit(struct intel_crtc
> > *intel_crtc)  {
> >  	struct intel_histogram *histogram =3D intel_crtc->histogram;
> >
> > +	cancel_delayed_work_sync(&histogram-
> > >handle_histogram_int_work);
> >  	kfree(histogram);
> >  }
> >
> > @@ -196,9 +269,12 @@ int intel_histogram_init(struct intel_crtc *intel_=
crtc)
> >  	}
> >
> >  	intel_crtc->histogram =3D histogram;
> > -	histogram->pipe =3D intel_crtc->pipe;
> > +	histogram->crtc =3D intel_crtc;
>=20
> Why even add it in patch 1 to delete it patch 2 lets not add it to begin =
with,
> Also we don't need the intel_pipe variable in intel_histogram since it ca=
n be
> derived from Intel_crtc.
>=20
Done

Thanks and Regards,
Arun R Murthy
---------------------
