Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B159A9B92
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 09:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2596710E5FB;
	Tue, 22 Oct 2024 07:55:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAXq+cmr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D06210E5FB;
 Tue, 22 Oct 2024 07:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729583749; x=1761119749;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iSVYBiRZJ2VLpY1Cg1JDs7GMdo/vy+ZibSH4zExdM3U=;
 b=TAXq+cmrn++7bMRVL20VbMeDdpjB8p3Z7D1Oq/dJVor9iD6TmO5ra+Nw
 qTHuz61NHrwax48eSJVeyMFRQJvq8q/e0th/o2rq6PJ+s5FN+brZcBUvW
 QDbt1DpXtDZ+snrLTQth/XNYvhC+wKsF9QxcbtYSrAITaVc/oHWyDVnk7
 kw29Vqhd4VNO5sE2ypdqo0ylbcp9aN7nwHcHHlgUqqnIOkW/vDfotHleU
 +TtedpJ/054/3rzzeeyS8OkOj9vbi4M17V2dew29m6N01plN0470Js/9D
 63rSXbw9F8YxP49hVjchvQ6V5WpmfEYUx33GzCBzTvajoxx/L/Q+IAIrq g==;
X-CSE-ConnectionGUID: d18+iQMjTY2EoOOfTt7qSg==
X-CSE-MsgGUID: PVxDUqPnSCK+HLf29EcgDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="29201197"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="29201197"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:55:48 -0700
X-CSE-ConnectionGUID: bEf0xoKDR+OzFOBC4qWTgQ==
X-CSE-MsgGUID: mtvIMAO5SSuzLw+9SAvP6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="84375848"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 00:55:47 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 00:55:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 00:55:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 00:55:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xrhTzq1OuMQoLzooxVqE5ajezXYXmodb026OTFf3WzRdmQ3ktrplwZfr07JzSqjc7ThybzexqqmWD/4WN+s9ScY57ASeNG2gGosY6EektLt274BZlNdWIq0VIQLOFvMS6rB9fozqyavrTdGT4j8YrFttLpfGgRLtOCVKhWUexxVSZErEQVexwG5v/BSRLgMeJ+1/Sh3CDCLNgzCemZAHpvjjxM19oem1ootNhcKKAlM1js576T8WPyowsXpn54LrDXafHLUORZ9T1EYy8fEPWFbScIiCRHNiyra9DtAjd3S0HlyNPXz77g92rMk3W8j6VTsOtZaAmc4yT7/EfmyV8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=byBoVueir6394w7kQFzlwMJkEp0WyKZ1sccg4GvEMLg=;
 b=ksTYObLUayx0XYhjSVBkWgFsDMrJelDojh4fvSttG3RdYtsjeSyTgQyCdIQ+4vheoDR/9lFqNIgm4+dr7qrsehpmfDLBjaq54XBrgszShMZ0kCGcyQI6Czxd3ZML4bMIbJJupSrvL9yJwAKD6Z9fLTSdkj9Na2/AwaCDGscZab9kSRcH20st5yic8sRfkvlv/+XEW7BA/DWnmdKPdxVDWheJpi+3XigbhhLMPZwAiWQOupYWSUabwiR0AUtaA/jmFx+Y9jgpz4R5UpmAH2+1K5+9KYETiQUIQCT/f2nYrRc5INgmv5YYy029Qr7IM76/MDMmB7DJQkqgTn0piw9dyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB5958.namprd11.prod.outlook.com (2603:10b6:510:1e1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 07:55:44 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 07:55:44 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Topic: [PATCHv2] drm/i915/dp: Guarantee a minimum HBlank time
Thread-Index: AQHbE9cM2pVHWW1BOUW52q6WoHBT6rKSgdIAgAAESwA=
Date: Tue, 22 Oct 2024 07:55:43 +0000
Message-ID: <IA0PR11MB730729D08E9F999FBEB69327BA4C2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20241001074348.2193502-1-arun.r.murthy@intel.com>
 <87ed48y4kb.fsf@intel.com>
In-Reply-To: <87ed48y4kb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH7PR11MB5958:EE_
x-ms-office365-filtering-correlation-id: 5043ddfb-7a5c-409a-bd56-08dcf26eee69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AuqbwSsQsNXPPCrUNATVJgmdZGUNiXYXLO/TwBcxA5JPlLBIQPmSA/VvXaRV?=
 =?us-ascii?Q?uVOZd+taAbipnsA1Dnhfj6zVwH9k9gKk//HVYcRJWllg7kiAbhPi8FZyGRo0?=
 =?us-ascii?Q?dkIIVscgMznkPSjgj9gDGxr03dAkQ96z9AhZZlDNuQ1PIcssSa4hxno+zWmk?=
 =?us-ascii?Q?KS7fchjG84KaGygzDF8UYkC/qS62wNLoEejjTUWgyXp8iKJ0SbLt7Tkaq+jh?=
 =?us-ascii?Q?tigekjnwCE/M/Qtms+uRpIRrjux+9I+mV4tE00mD1NPM0Y1mvAom9ZpYQU1l?=
 =?us-ascii?Q?UiP6c6en6ElTCAZVeTzo8wc0ZF0DtBAUI5MAP+hBzdE8Dl6CUUSzQB9MNkeO?=
 =?us-ascii?Q?j+23UD7vA837OKIKD6/1B1k66mY5c0z/3vpa5yhKnOFsUZJJKGtwPfB8rnGe?=
 =?us-ascii?Q?VtLrz3SxCgAHWo5TkBJeEfoFtPArRUxBqOdN0r3OC92hQUpjr5/QEvAuUv1K?=
 =?us-ascii?Q?Ri1H4Z6z7or5BWQxn+29/u+76x+RZWrhaCFDebE4LeJtTbR9J8dXTWSjIkyS?=
 =?us-ascii?Q?23DGo1RE4StRti04io4cUSlzROjTtWOkKd+qLu7F6poOsr3diKQwIklNKxM1?=
 =?us-ascii?Q?fbwqEigv7HkUy/ObTlBA616zfpEP2mgEEd5S4L5pWiTYz0Mx1lEqGY/MR1t+?=
 =?us-ascii?Q?EZTMWVxRTIikk/b8bU2G0KS5Ch+0OsfMfKnvNtoYraWu05rnX4c/Y0AxGs8j?=
 =?us-ascii?Q?lbU5M4+F2Y8y3ZIDmzcJ3D+ipr2zska+mlidD6kcPMir7hwNvMgAtZIWayC+?=
 =?us-ascii?Q?Auxjzu2R6iJtL58Q1TuZMSXbKvT1j7b8xFec60Lfbxe2XGqNzny3Mq3fWZcQ?=
 =?us-ascii?Q?6P6EyLl7L0YKXWrDtGWmIkGe9RrV+4E/wEuMVhhnoIIpx0Q3Z5+h61WB0E15?=
 =?us-ascii?Q?YUuuXnR2wpMsC+VWSamM+GwPhATBKIeO5+OT+9n/Yl0BbNMNJi+TozVgql5v?=
 =?us-ascii?Q?GSEG4qy1TYEPDwrsmK6F38fFUcViAhryl7yK37bS+bkszWHBYatM1wvCO0Nl?=
 =?us-ascii?Q?pCQCsU97yuC8bOTKf+39Se7jwVmrzc8dW77Njgvc9R+VUVERygpoURJn0elT?=
 =?us-ascii?Q?sYcK9jSv4reSMHRTz4HwxW5nI5BRVopU+8sK7EA0bSxnmVgF5Y6q0ab/BbLN?=
 =?us-ascii?Q?CjBov5B0bmGU9H40lRESYA8LWVQgiUIobL26LAmdxXvXNqWsSbrMPXR89YKN?=
 =?us-ascii?Q?PqG5dhPbWT5awEeg6IQl/dCAVhHV+F5rsPSXO1yuxx5yJ1a+Ph5iBsS84bMI?=
 =?us-ascii?Q?UG/l8JvtRbXH0bGg3BT4hArENlL5RKr/5QG02YX7fu5demAH10McRavpFOjN?=
 =?us-ascii?Q?JnPQVhWZ//wDOEJScyMWMQ3RFplyMMWOwFmkhLtVTqdcU6hmHB7gyGsxlzJz?=
 =?us-ascii?Q?p/Y6PUA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dGign3wb5H402kd5oOIohXqKQwQ+Hj7ZFeIjttUM54xQ6dKJD8yxu2/hoCh7?=
 =?us-ascii?Q?N1Czhl2DBBMpqBhGdf8niH39pqAilmWi/y4joBG3a2RX2zsTMsQoQ+MMR7Ht?=
 =?us-ascii?Q?DOvmbKGvfArJxU1zEsRAXDqH4FVjlKKdo6WXB1OWzT4Bxyaw81Su/tV2fUgt?=
 =?us-ascii?Q?mypQwduIdteTCtDaq0GK8osm5QfRM7EfLYXqcBdgjOs4iuXW/Qo49qkBOEam?=
 =?us-ascii?Q?kX7umCG0eRnA+iGVG0Jl0c4LtI48JKZo5iyKXg4De6Kbs7JcrSt2/yQEnGD2?=
 =?us-ascii?Q?4KoN600JPKw4fdwH6zn1gFFFCPf2Hoz/aeyQmyoSFUKXDfNHNlZbkPPNgZg4?=
 =?us-ascii?Q?gi4SZPeHDSIMIxr7BdHV/4N1Z6+xWzwZ41YcGTSoawix1342lSQ7MiHujR0f?=
 =?us-ascii?Q?79vL/uUM860kGJZIZ5LoUecHveqv4tNAHwwAboIbV4ZuhZJWTmHqimg+kw8P?=
 =?us-ascii?Q?p3DUHD3JDH4x8yzf+pqlFiwKo+qny6ZiUUQIe48jV8Tg9LkB/KFJUAnArdnA?=
 =?us-ascii?Q?a0VKgxHktg0THKmhvt38ZJEzD+8k6lZ/AlnwydJtjkFH/zf+6/ulsmHhafDz?=
 =?us-ascii?Q?IQeIVNWGp+Yfayq/OMHgrztlzeF8AZDWqSvXwUqeznFwUkVdyavm5nYtdW8T?=
 =?us-ascii?Q?AlGgEuDVWM6fe5zLi2Wa40qJmaBLG70NnvhSKdAEohz5e+tQWDVPf1kKuRC2?=
 =?us-ascii?Q?cZFcmukUD1xPGEj/F8qNZ1l761r7sj9eZv4EXnEwq8ktKlt7TaPnouUr1ky2?=
 =?us-ascii?Q?AS/iRxK9ZgpCF32QLyCmH/WudbYnEcunIMy1FSBN3VVhdMa66xASdXjxS7cc?=
 =?us-ascii?Q?o/zJRebHpGtqx1UftCGLRmoLQuMCYsGEuxkTWiVVLWCjR0g6BQLhPnz3vu86?=
 =?us-ascii?Q?8E2GfH0JixRpWsbHLXnvlTr7i+34td0i88XbYAjq+Ry9r9avsHP2lbBFXgWy?=
 =?us-ascii?Q?XWeyeZSfaQeXypWx/AehTBSCyrEOW+aMa3lFEZB9akTxhw5n6F/xppRZiGOc?=
 =?us-ascii?Q?C8toXr8xXzMy0vsSSBWXn7S6snYp5Pq5vyiu6LAJUKbRxZTwSbR9n0HrpNSi?=
 =?us-ascii?Q?6ktuhp67fCOjWgPkw0CyuFhMe3AaUIr7TomK9Q6bhOf/b93TOWkLMGbT5b5S?=
 =?us-ascii?Q?2jn3UOqg756Kk4EE1YW7LaVdjlxVyuAHVh1PsEWRsmpKM1+6fK0tbOvTExDq?=
 =?us-ascii?Q?6O9odH5Zb9tJYrlxHKn6iraREn/qeSKkbkiOWa09HbXfPrSFjL6CsaTftjv8?=
 =?us-ascii?Q?Ltke/X6MeO5Vmk6kNh2tkvQHkmpejeQUAjvb4qtplAdC7yRPl9eBvfqJeFyK?=
 =?us-ascii?Q?/IBsfLaxC/YJXBXARFsKhriToCZvGbMJRIkWXPYxg+we3ajwaRJKuYAC2vr7?=
 =?us-ascii?Q?lvhRTR/t8V1IAeGBHysA9JhUr210x45IF19CoD1IZdLetdPcdn0i9sC603tM?=
 =?us-ascii?Q?bQnOILc10f/GCRMZ6QA8otRdl619ddA3TOW9qL/1jGRgMDsUmyTVH2sSdkZu?=
 =?us-ascii?Q?aQ6dzekV/po1vUnh4ONXJdLUYsVJ58sc6ET0axxIlmFXfI7tMoFN6jdV+3hU?=
 =?us-ascii?Q?KPPKAhzvbgY0i4c64o05mzyO/5KJFqwxSNd55noutIwxWeWswfeBI93ZuyH7?=
 =?us-ascii?Q?Aqie98Ypw8niNbvzIL6s6OUvKoJxcan9UXlnxoJ4y4It?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5043ddfb-7a5c-409a-bd56-08dcf26eee69
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 07:55:43.9887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 87iR3U/6d51yVOUya1mZcziw3pFZ3Sfg/XoF8ddcFGbDcCaplTHywRvna/UFHxZJmZ9sa4yfwXKOACNyoBrQOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5958
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
> Sent: Tuesday, October 22, 2024 1:04 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv2] drm/i915/dp: Guarantee a minimum HBlank time
>=20
> On Tue, 01 Oct 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Mandate a minimum Hblank symbol cycle count between BS and BE in
> > 8b/10b MST and 12b/132b mode.
>=20
> Should be 128b.
>=20
Done

> What are BS and BE? I'm not asking specifically for *me*. The commit mess=
age
> needs to have more clarity.
>=20
ok
> > Spec: DP2.1a
> >
> > v2: Affine calculation/updation of min HBlank to dp_mst (Jani)
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  2 ++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 30 +++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h               |  4 +++
> >  3 files changed, 36 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 17fc21f6ae36..5f151ad9b878 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1770,6 +1770,8 @@ struct intel_dp {
> >
> >  	u8 alpm_dpcd;
> >
> > +	u32 min_hblank;
> > +
>=20
> Why would this be in intel_dp?
>=20
This feature is part of DP2.1 hence adding in intel_dp struct.

> >  	struct {
> >  		unsigned long mask;
> >  	} quirks;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 4765bda154c1..45c8be7cd7b3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -156,6 +156,30 @@ static int intel_dp_mst_calc_pbn(int pixel_clock, =
int
> bpp_x16, int bw_overhead)
> >  	return DIV_ROUND_UP(effective_data_rate * 64, 54 * 1000);  }
> >
> > +static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state
> *crtc_state,
> > +					    struct intel_connector
> *intel_connector,
> > +					    int bpp_x16)
> > +{
> > +	struct intel_encoder *intel_encoder =3D intel_connector->encoder;
> > +	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(intel_encoder);
> > +	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> > +	struct intel_display *intel_display =3D to_intel_display(intel_encode=
r);
> > +	const struct drm_display_mode *adjusted_mode =3D
> > +					&crtc_state->hw.adjusted_mode;
> > +	u32 symbol_size =3D intel_dp_is_uhbr(crtc_state) ? 32 : 8;
> > +	u32 hblank;
> > +
> > +	if (DISPLAY_VER(intel_display) < 20)
> > +		return;
> > +
> > +	/* Calculate min Hblank Link Layer Symbol Cycle Count for 8b/10b MST
> & 128b/132b */
> > +	hblank =3D DIV_ROUND_UP((DIV_ROUND_UP(adjusted_mode->htotal -
> adjusted_mode->hdisplay, 4) * bpp_x16), symbol_size);
> > +	if (intel_dp_is_uhbr(crtc_state))
> > +		intel_dp->min_hblank =3D hblank > 5 ? hblank : 5;
> > +	else
> > +		intel_dp->min_hblank =3D hblank > 3 ? hblank : 3;
>=20
> Compute config must not mess with permanent data.
>=20
Tend to change on mode change. Hence added this in modeset config. This is =
MST only feature hence added in mst_compute_config.

Thanks and Regards,
Arun R Murthy
--------------------

> This should be in crtc state with readout and state checker etc.
>=20
> BR,
> Jani.
>=20
> > +}
> > +
> >  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder
> *encoder,
> >  						struct intel_crtc_state
> *crtc_state,
> >  						int max_bpp,
> > @@ -228,6 +252,8 @@ static int
> intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
> >  					 link_bpp_x16,
> >  					 &crtc_state->dp_m_n);
> >
> > +		intel_dp_mst_compute_min_hblank(crtc_state, connector,
> > +link_bpp_x16);
> > +
> >  		/*
> >  		 * The TU size programmed to the HW determines which slots
> in
> >  		 * an MTP frame are used for this stream, which needs to
> match @@
> > -1274,6 +1300,10 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
> >  			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz &
> 0xffffff));
> >  	}
> >
> > +	if (DISPLAY_VER(dev_priv) >=3D 20)
> > +		intel_de_write(dev_priv, DP_MIN_HBLANK_CTL(dev_priv,
> trans),
> > +			       intel_dp->min_hblank);
> > +
> >  	enable_bs_jitter_was(pipe_config);
> >
> >  	intel_ddi_enable_transcoder_func(encoder, pipe_config); diff --git
> > a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 7396fc630e29..b321d136e1b0 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1138,6 +1138,10 @@
> >  #define _TRANS_MULT_B		0x6102c
> >  #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans),
> _TRANS_MULT_A)
> >
> > +#define _DP_MIN_HBLANK_CTL_A	0x600ac
> > +#define _DP_MIN_HBLANK_CTL_B	0x610ac
> > +#define DP_MIN_HBLANK_CTL(dev_priv, trans)
> 	_MMIO_TRANS2(dev_priv, (trans), _DP_MIN_HBLANK_CTL_A)
> > +
> >  /* VGA port control */
> >  #define ADPA			_MMIO(0x61100)
> >  #define PCH_ADPA                _MMIO(0xe1100)
>=20
> --
> Jani Nikula, Intel
