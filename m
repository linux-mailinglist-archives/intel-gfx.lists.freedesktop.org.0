Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C96A4842D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 17:04:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9BF10EB30;
	Thu, 27 Feb 2025 16:04:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="btnda4jT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56ACC10EB28;
 Thu, 27 Feb 2025 16:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740672273; x=1772208273;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=iCWCTSF7VY2dfQQIdYcliAnRZd5N02FddjsRkOeR/Fc=;
 b=btnda4jTxBW9OOssmxiVTN6MjgQkDwKCwqj6D+QAEpdKPC9JwHi2uq2r
 JHesAK6Wdid0JP7vQlZknSU5tVkd7gAiuLwXBC76ft/85uZ2qhHrs1dOt
 apiH1NBHHsurBY6zKwXqSFtCziW+tJwPHFTObJ2vV9qfd/lioDDMWFOI6
 k2AXQSwEYuvaC1KEjbD1EoKa9LQTdC4E1u0SzXQuux12IVGJkT3TIrtPY
 tQU4Kj2x7+vNfOzR+AuMe3LHcROO5UkfBsggQkcbV3sml0DjkD5Z8OFGo
 GPawAExtRKRpvd5EjKeHu2QEftTWoZTxeQpRQXqzjrYLBjww6a6qwrdDk w==;
X-CSE-ConnectionGUID: EX0YJmYpRamAZVtQXLUQJA==
X-CSE-MsgGUID: ThC3Jv4kT1GRll7hLZOSUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41594411"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="41594411"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 08:04:30 -0800
X-CSE-ConnectionGUID: yYP/O58OQWitqXPcAiGYVQ==
X-CSE-MsgGUID: +DIjDa9nTAO/OvEwz+BT/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116871769"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 08:04:30 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 08:04:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 08:04:26 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 08:04:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fk0sfeqMK9bOh86Q3bYaRw/zJFc9AhkMq2JsmDqLYTzM/4qwbY2L7nPF9k9Bt/4feH4rxVpJKwK6XaKZFINHEXGx4N16aeWuvCxfX1sNojRsz49UaOAMs8VkNSvtCw8fmOnIoI1rwAykoN9Z79VhI8S/XTgx+JIJCnyC78uIFlq3TfR+PUBmZLsti8wFZjX5mVhy+TpXIcZdSOBZwpecv0VPIFHSWlAzfTF2f1nvqWifuAdNLsHFqlEvJLEChlMsUtflV8VEQeD04hwlTrmzxvu9X4old9UBP/YogJ4bhYrBbhGwxidbb1E2qPxfcOIK84dA9bk7eXY2Kd5Jg65kog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UAdPgLBlKrsWYvk+mA3TDrtIjw/P0EN8qqNoKMEiUuU=;
 b=OiF5lglPubX9nrvDEdZQEM9Bv+QoOEyLMyGHUWeQPj2KmCbubOsWny6d22Wy3o4YshzymxWHmUGhDA1vDubWSgjCA5M9iYAgweRqj3JWQ2oYtPqsKpsTrtIwCpOcnlx9Ugk6ro3Z7coOsJZ1wfPdTK9qvs2Kh/xWO2YRhMZvXiNiV4PGRbl7v6j52dI5vXWe71sle8xCY7DTs9tKun3bkC64RiKXBw+TYvkEyuoYE77VD/0j4Hvv3xyZp8pkcagmr8lvfGYUYko5QcASvgFbF65hkqfesVebDLsj1ATXydZSeaIjLHuYteZbRReYRHoWijE92qY08Df3Rx0pJIPFMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB8720.namprd11.prod.outlook.com (2603:10b6:8:1aa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.18; Thu, 27 Feb
 2025 16:03:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 16:03:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/vdsc: intel_display conversions
Thread-Topic: [PATCH] drm/i915/vdsc: intel_display conversions
Thread-Index: AQHbiQn1OhpvjtXdgE2Zdvo1N9HlMbNbEPqAgAA9YlA=
Date: Thu, 27 Feb 2025 16:03:57 +0000
Message-ID: <SN7PR11MB6750ADE79EE5378C1745D6FBE3CD2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250227112240.278827-1-suraj.kandpal@intel.com>
 <87o6yn37lk.fsf@intel.com>
In-Reply-To: <87o6yn37lk.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB8720:EE_
x-ms-office365-filtering-correlation-id: fb79efb0-a9af-4259-fde9-08dd5748579e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?dVZ6CJsREV9rIoESH2eA2OB98Hc0knMxwsmzfiMvS+RxKb1eOoqJZXdJhLjf?=
 =?us-ascii?Q?L6/F6eNA+d+RQxhkHwn9/vgRwCLdosFveGqmSsol5c7Kbf/ES2nJo2o5dt9E?=
 =?us-ascii?Q?BVqRQpZ1OG1PTDkhoIrGwen1IfQ4docQSPUZNqFzh6066GfE7UQWIL4hKY+2?=
 =?us-ascii?Q?hdJzdtEH/Jp4wDfP/WPgHSx1vwsbuoGBfQVpVORB5OydOF5nr9HYFcjoPbhH?=
 =?us-ascii?Q?45qkTJMRvUqkLT7GxqgubjeonMDcq215yDKzzmVtYF0NLIfhdvunz1a87psU?=
 =?us-ascii?Q?yb7pJiGm88JPV4MzX1EmqEo7OsL6C+BjHakrYpsZEtZYFdI1NCSjMFOS/d+Q?=
 =?us-ascii?Q?AFDDy9RkD8wol/LQomhV3TwKdReRKI+tpDiKB8jPKELD5NLkNqeLGct0Qlsf?=
 =?us-ascii?Q?cs/UPFd6eIQOkfb2b1asLmyAkxJtie+QThSxSz61lFRMcTM6DQGbJuAB8o3S?=
 =?us-ascii?Q?u+mKgkvKl/xDpJQEg9tXzETAv49UDAXH6L4aUCZlze4xxj3vJH8X8GQSY5HR?=
 =?us-ascii?Q?n1e5gXi3E+jcapNMS4+8LXB4ThtEWxDFtrn9LHNJE1c0RlFnQFnYqMT3DCi0?=
 =?us-ascii?Q?zUtS8+zzDQEB4zqud/TO1anSR0CtMgfq1i9cU/PD57htec3LThblXAfyDNgd?=
 =?us-ascii?Q?RctGNJuf60ddOUu3vu09Wj3KTB6swUiXVC8lNf9BRSxfeEbrhvHl7ENSfnui?=
 =?us-ascii?Q?GM89cCS/LaLK6Fr81nQ9C7d+2+scS7gOqHMH1YO/1heWAfeqhmWLMsJcJ4zA?=
 =?us-ascii?Q?X9baHHWMKEaO6BFGIc2fZFBOLxJufCqoXA2BHykoOz0CX/ENKb+61Z/8Z+re?=
 =?us-ascii?Q?ZrdyUv1N5bfarH8u66dj4UJhlnxDV2sQRHpZGNXPO5424iRgJZJQfJgSeTq/?=
 =?us-ascii?Q?9WtETizahCpDYExjDk2UvDRkRayBhZINWrGHLcY+F4ZkJE76ofvE9fFR5Ek4?=
 =?us-ascii?Q?95FiyFPSiWrOUQuPW+driy/9mtgl3UWkrePmHwDWCZW3bDY8d44AtTA4mswG?=
 =?us-ascii?Q?MmGUKsXT+4kT4lUZX802GfJO55hLsrR4kGBcKzFGkBmgPNh2RHLec/pJgblS?=
 =?us-ascii?Q?AJq3lTncxubG4u5ZJRGksSfg5RyJ67Cbd3FAuDtGFOpTQsMF4PC9+DCuxNuc?=
 =?us-ascii?Q?i6SKLUe0GjBsezHux0XAcl2Weer/5vQQ4VaNQ80ZliQMZwWNxqBuwaEa9SJO?=
 =?us-ascii?Q?1HsG9YFyEVgsfDoL99mE1+2FBn12cohsL60yLzOx2lTecLDK8T+O63LxIbTx?=
 =?us-ascii?Q?yz59tefbxC/EVzdT/5NyrxM5j+VZiA7SmYc7jRWVNoEdSlftNYiFgtnC5FG8?=
 =?us-ascii?Q?Z0uITw9wIbYdsxyUR3dy1VlOxrpFF54LabZnIAVHZm27lNOe+8mfUZvG3jTs?=
 =?us-ascii?Q?Cp2I++kskc9JL45uyVHGkS4igp+p1AmtqzFdSGHLELvszIcdu8S4YcW/A7fr?=
 =?us-ascii?Q?P9MtD2YDbz4xk51W+4cYSmkl4RtrQZEf?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?85fz/281o2FSn3Ug+d3o+F2rbEr9MEpqxahgwNgpPqZgc9wNRHYeUOkg6RPL?=
 =?us-ascii?Q?iHf1TGV+PVxqBFbdPkZs79zXk7dUJhOV0IO2jHLyAB7SmtE99DVsmam7qlVQ?=
 =?us-ascii?Q?pn+0spa/r9z4d/ZZ8naglbCEVhai1IiB/Uo8x415VANqm86LbapbRP/OOD0q?=
 =?us-ascii?Q?tYTviyKJzdQVaq/Tx7QDgAjINxmppAHO4R0Pwl0AULW6zMsWYO1790ev6G32?=
 =?us-ascii?Q?mOhNvE/hF2SuELJ9AWfqHiHLndQ4/T1Yxd+Wl5Ie9wAWMQukyOMTetq3zUzq?=
 =?us-ascii?Q?EMaeRzVW5lCpT5SA/FitcD4u5QkUW6l3u8oSRQbEbZLNOvLuwLy+bp7T0kCS?=
 =?us-ascii?Q?+0BrO0eq6TOtjEUwdoBK1Lgudmf7zpaKC7B3oVD605uB9QcoWIupa0rF5GBH?=
 =?us-ascii?Q?B458+4QcGWzDSTHZQsC7HtNmA1jmz1KhfxDGM0VJNOsVj3TyKDQtkb3FGqa+?=
 =?us-ascii?Q?hWl4jlcZMsMdPq8s+KWtpM4U/X8P9mLOOmUwH6HtFTwFXRgj6AimHTHXgHHn?=
 =?us-ascii?Q?TmB4l4TzDqD29pmVEpRAUWaDlaxBkjEKfYvvFguAVidsA9mh5dqdrKZB3mDb?=
 =?us-ascii?Q?3Ub6nMLCgQxMw7SIoIlKVFyAH1+DMFJQ8x8Bw3riMaSx2v93FcbY32ht84ve?=
 =?us-ascii?Q?2ixP1SN/8sRaDFHpOx8UGiodTbV6kHnnxqdq9ecl1ZaPScpJhEdESuwq2C7R?=
 =?us-ascii?Q?CRFdOpoBLvvhUDJ6k26R7sw6tNhBCplMTw9TgOWa6oc9UIAQD8B9IvhLgXpz?=
 =?us-ascii?Q?14Vu7/BuaHp+VytzW9vazhrHfVA4VMZBzcqwxJeqd3y3DOPgLk8x43sf7wf+?=
 =?us-ascii?Q?uSCAf7bOJQDlFSDPbgsF+0vKfYI3+xwso9fxUn+O+CuwYjY3q2ft5B6cmUgy?=
 =?us-ascii?Q?yFXB8gK98vAhX/UXKV0XUiWlmOZgLBukMljJbhZ/mIJG851cYKqA4u8Rfkds?=
 =?us-ascii?Q?0/SDqcIk+5PAJeVdPZDOfNpgFn+mpLPXSpKKq2wL/NcgnWpWlzdoCGVzchaS?=
 =?us-ascii?Q?+dBVvEJS+BoeR/07Lom7omzD/QVS6kEOHul5H81r3EQZjJGRZ2oCfvHHfJcF?=
 =?us-ascii?Q?8D97qRsPjbCRgr2vluWmr9DBaAGEYmINHSPPxWEf4YXCY2c79vcTKIF3Y3JX?=
 =?us-ascii?Q?94yp+bloiUEyc68OccVKCoZfioIRdTsbmq+HMNoOQhPZveaSCs9CgvNgJs43?=
 =?us-ascii?Q?3IA7nSFFXQ14tCEr5Bju6ulLzDadJkN0LQnkB0W0aOHxncqQxPLvwtxZPjkA?=
 =?us-ascii?Q?33qn9DPJpEzTPgzU3qL+cLAuuKb0plzApW9c9T3Pwp7y7rBLg156TzTjNJVI?=
 =?us-ascii?Q?VlR50WwwbBUFlE/rrI9fRoRSh+zczkidYJbEb4qMpary5rNg/xuZ8HoQfpBr?=
 =?us-ascii?Q?IFjB59RUQ/o+D2BV3QS7sIdp+ky9HHiH1oNC+k9ss9DTOR97jo1s8fn+OFpE?=
 =?us-ascii?Q?fiB8c/72b0S9NurKNUbgqJKFJUMjtW34+0nvZp8w2zDqOWVtzJcjnD6CsEiU?=
 =?us-ascii?Q?VO3+0bTbevqAyQEZKXR5/hgRD6whPVxD8MTAkk2T/6/nQmvIx/HPPEKejTqV?=
 =?us-ascii?Q?ZW8a+3rakg9KzBRfdvEemj/JRT9v0tjwGuQJV6V0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb79efb0-a9af-4259-fde9-08dd5748579e
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 16:03:57.5345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +XGavi8xDQaAhwavfeCSVuOSOF67Ub+Yrls0wccyHF219GaWFXYQoWhWszOE7GkQqVq9O454E0alOJ6udPtZ8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8720
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, February 27, 2025 5:47 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-xe@lists.freedesktop.=
org;
> intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/vdsc: intel_display conversions
>=20
> On Thu, 27 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > intel_display conversions for vdsc in an effort to move away from
> > drm_i915_private.
> > While at it use display->platform.xx.
>=20
> Please update with
>=20
> -#include "i915_drv.h"
> +#include "i915_utils.h"
>=20
> and you get
>=20
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks for the reviews pushed to drm-intel-next with the above mentioned ch=
anges

Regards,
Suraj Kandpal

>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 180
> > +++++++++++-----------
> >  1 file changed, 87 insertions(+), 93 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 6e7151346382..35d558ca98db 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -22,14 +22,13 @@
> >
> >  bool intel_dsc_source_support(const struct intel_crtc_state
> > *crtc_state)  {
> > -	const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc=
);
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >
> > -	if (!HAS_DSC(i915))
> > +	if (!HAS_DSC(display))
> >  		return false;
> >
> > -	if (DISPLAY_VER(i915) =3D=3D 11 && cpu_transcoder =3D=3D TRANSCODER_A=
)
> > +	if (DISPLAY_VER(display) =3D=3D 11 && cpu_transcoder =3D=3D TRANSCODE=
R_A)
> >  		return false;
> >
> >  	return true;
> > @@ -37,9 +36,9 @@ bool intel_dsc_source_support(const struct
> > intel_crtc_state *crtc_state)
> >
> >  static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder
> > cpu_transcoder)  {
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct intel_display *display =3D to_intel_display(crtc);
> >
> > -	if (DISPLAY_VER(i915) >=3D 12)
> > +	if (DISPLAY_VER(display) >=3D 12)
> >  		return true;
> >
> >  	if (cpu_transcoder =3D=3D TRANSCODER_EDP || @@ -48,7 +47,7 @@ static
> > bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcode=
r)
> >  		return false;
> >
> >  	/* There's no pipe A DSC engine on ICL */
> > -	drm_WARN_ON(&i915->drm, crtc->pipe =3D=3D PIPE_A);
> > +	drm_WARN_ON(display->drm, crtc->pipe =3D=3D PIPE_A);
> >
> >  	return true;
> >  }
> > @@ -262,8 +261,7 @@ static int intel_dsc_slice_dimensions_valid(struct
> > intel_crtc_state *pipe_config
> >
> >  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)  {
> > -	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +	struct intel_display *display =3D to_intel_display(pipe_config);
> >  	struct drm_dsc_config *vdsc_cfg =3D &pipe_config->dsc.config;
> >  	u16 compressed_bpp =3D fxp_q4_to_int(pipe_config-
> >dsc.compressed_bpp_x16);
> >  	int err;
> > @@ -276,7 +274,7 @@ int intel_dsc_compute_params(struct intel_crtc_stat=
e
> *pipe_config)
> >  	err =3D intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
> >
> >  	if (err) {
> > -		drm_dbg_kms(&dev_priv->drm, "Slice dimension
> requirements not met\n");
> > +		drm_dbg_kms(display->drm, "Slice dimension requirements
> not
> > +met\n");
> >  		return err;
> >  	}
> >
> > @@ -287,7 +285,7 @@ int intel_dsc_compute_params(struct intel_crtc_stat=
e
> *pipe_config)
> >  	vdsc_cfg->convert_rgb =3D pipe_config->output_format !=3D
> INTEL_OUTPUT_FORMAT_YCBCR420 &&
> >  				pipe_config->output_format !=3D
> INTEL_OUTPUT_FORMAT_YCBCR444;
> >
> > -	if (DISPLAY_VER(dev_priv) >=3D 14 &&
> > +	if (DISPLAY_VER(display) >=3D 14 &&
> >  	    pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420)
> >  		vdsc_cfg->native_420 =3D true;
> >  	/* We do not support YcBCr422 as of now */ @@ -308,7 +306,7 @@ int
> > intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
> >  	vdsc_cfg->bits_per_component =3D pipe_config->pipe_bpp / 3;
> >
> >  	if (vdsc_cfg->bits_per_component < 8) {
> > -		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not
> met bpc: %d\n",
> > +		drm_dbg_kms(display->drm, "DSC bpc requirements not met
> bpc: %d\n",
> >  			    vdsc_cfg->bits_per_component);
> >  		return -EINVAL;
> >  	}
> > @@ -320,7 +318,7 @@ int intel_dsc_compute_params(struct intel_crtc_stat=
e
> *pipe_config)
> >  	 * upto uncompressed bpp-1, hence add calculations for all the rc
> >  	 * parameters
> >  	 */
> > -	if (DISPLAY_VER(dev_priv) >=3D 13) {
> > +	if (DISPLAY_VER(display) >=3D 13) {
> >  		calculate_rc_params(vdsc_cfg);
> >  	} else {
> >  		if ((compressed_bpp =3D=3D 8 ||
> > @@ -356,7 +354,7 @@ int intel_dsc_compute_params(struct
> > intel_crtc_state *pipe_config)  enum intel_display_power_domain
> > intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder
> > cpu_transcoder)  {
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct intel_display *display =3D to_intel_display(crtc);
> >  	enum pipe pipe =3D crtc->pipe;
> >
> >  	/*
> > @@ -370,7 +368,8 @@ intel_dsc_power_domain(struct intel_crtc *crtc,
> enum transcoder cpu_transcoder)
> >  	 * the pipe in use. Hence another reference on the pipe power domain
> >  	 * will suffice. (Except no VDSC/joining on ICL pipe A.)
> >  	 */
> > -	if (DISPLAY_VER(i915) =3D=3D 12 && !IS_ROCKETLAKE(i915) && pipe =3D=
=3D
> PIPE_A)
> > +	if (DISPLAY_VER(display) =3D=3D 12 && !display->platform.rocketlake &=
&
> > +	    pipe =3D=3D PIPE_A)
> >  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> >  	else if (is_pipe_dsc(crtc, cpu_transcoder))
> >  		return POWER_DOMAIN_PIPE(pipe);
> > @@ -416,26 +415,25 @@ static void intel_dsc_get_pps_reg(const struct
> > intel_crtc_state *crtc_state, int  static void intel_dsc_pps_write(cons=
t struct
> intel_crtc_state *crtc_state,
> >  				int pps, u32 pps_val)
> >  {
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	i915_reg_t dsc_reg[3];
> >  	int i, vdsc_per_pipe, dsc_reg_num;
> >
> >  	vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> >  	dsc_reg_num =3D min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
> >
> > -	drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
> > +	drm_WARN_ON_ONCE(display->drm, dsc_reg_num < vdsc_per_pipe);
> >
> >  	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
> >
> >  	for (i =3D 0; i < dsc_reg_num; i++)
> > -		intel_de_write(i915, dsc_reg[i], pps_val);
> > +		intel_de_write(display, dsc_reg[i], pps_val);
> >  }
> >
> >  static void intel_dsc_pps_configure(const struct intel_crtc_state
> > *crtc_state)  {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	const struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >  	enum pipe pipe =3D crtc->pipe;
> > @@ -529,7 +527,7 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
> >  					      vdsc_cfg->slice_height);
> >  	intel_dsc_pps_write(crtc_state, 16, pps_val);
> >
> > -	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > +	if (DISPLAY_VER(display) >=3D 14) {
> >  		/* PPS 17 */
> >  		pps_val =3D DSC_PPS17_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
> >  		intel_dsc_pps_write(crtc_state, 17, pps_val); @@ -547,44
> +545,44 @@
> > static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc=
_state)
> >  			(u32)(vdsc_cfg->rc_buf_thresh[i] <<
> >  			      BITS_PER_BYTE * (i % 4));
> >  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> > -		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
> > +		intel_de_write(display, DSCA_RC_BUF_THRESH_0,
> >  			       rc_buf_thresh_dword[0]);
> > -		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
> > +		intel_de_write(display, DSCA_RC_BUF_THRESH_0_UDW,
> >  			       rc_buf_thresh_dword[1]);
> > -		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1,
> > +		intel_de_write(display, DSCA_RC_BUF_THRESH_1,
> >  			       rc_buf_thresh_dword[2]);
> > -		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_1_UDW,
> > +		intel_de_write(display, DSCA_RC_BUF_THRESH_1_UDW,
> >  			       rc_buf_thresh_dword[3]);
> >  		if (vdsc_instances_per_pipe > 1) {
> > -			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_0,
> > +			intel_de_write(display, DSCC_RC_BUF_THRESH_0,
> >  				       rc_buf_thresh_dword[0]);
> > -			intel_de_write(dev_priv,
> DSCC_RC_BUF_THRESH_0_UDW,
> > +			intel_de_write(display,
> DSCC_RC_BUF_THRESH_0_UDW,
> >  				       rc_buf_thresh_dword[1]);
> > -			intel_de_write(dev_priv, DSCC_RC_BUF_THRESH_1,
> > +			intel_de_write(display, DSCC_RC_BUF_THRESH_1,
> >  				       rc_buf_thresh_dword[2]);
> > -			intel_de_write(dev_priv,
> DSCC_RC_BUF_THRESH_1_UDW,
> > +			intel_de_write(display,
> DSCC_RC_BUF_THRESH_1_UDW,
> >  				       rc_buf_thresh_dword[3]);
> >  		}
> >  	} else {
> > -		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_0(pipe),
> > +		intel_de_write(display, ICL_DSC0_RC_BUF_THRESH_0(pipe),
> >  			       rc_buf_thresh_dword[0]);
> > -		intel_de_write(dev_priv,
> ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
> > +		intel_de_write(display,
> ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
> >  			       rc_buf_thresh_dword[1]);
> > -		intel_de_write(dev_priv, ICL_DSC0_RC_BUF_THRESH_1(pipe),
> > +		intel_de_write(display, ICL_DSC0_RC_BUF_THRESH_1(pipe),
> >  			       rc_buf_thresh_dword[2]);
> > -		intel_de_write(dev_priv,
> ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
> > +		intel_de_write(display,
> ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
> >  			       rc_buf_thresh_dword[3]);
> >  		if (vdsc_instances_per_pipe > 1) {
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       ICL_DSC1_RC_BUF_THRESH_0(pipe),
> >  				       rc_buf_thresh_dword[0]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe),
> >  				       rc_buf_thresh_dword[1]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       ICL_DSC1_RC_BUF_THRESH_1(pipe),
> >  				       rc_buf_thresh_dword[2]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe),
> >  				       rc_buf_thresh_dword[3]);
> >  		}
> > @@ -601,88 +599,88 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
> >  			       (vdsc_cfg->rc_range_params[i].range_min_qp <<
> >  				RC_MIN_QP_SHIFT)) << 16 * (i % 2));
> >  	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> > -		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
> > +		intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_0,
> >  			       rc_range_params_dword[0]);
> > -		intel_de_write(dev_priv,
> DSCA_RC_RANGE_PARAMETERS_0_UDW,
> > +		intel_de_write(display,
> DSCA_RC_RANGE_PARAMETERS_0_UDW,
> >  			       rc_range_params_dword[1]);
> > -		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_1,
> > +		intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_1,
> >  			       rc_range_params_dword[2]);
> > -		intel_de_write(dev_priv,
> DSCA_RC_RANGE_PARAMETERS_1_UDW,
> > +		intel_de_write(display,
> DSCA_RC_RANGE_PARAMETERS_1_UDW,
> >  			       rc_range_params_dword[3]);
> > -		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_2,
> > +		intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_2,
> >  			       rc_range_params_dword[4]);
> > -		intel_de_write(dev_priv,
> DSCA_RC_RANGE_PARAMETERS_2_UDW,
> > +		intel_de_write(display,
> DSCA_RC_RANGE_PARAMETERS_2_UDW,
> >  			       rc_range_params_dword[5]);
> > -		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_3,
> > +		intel_de_write(display, DSCA_RC_RANGE_PARAMETERS_3,
> >  			       rc_range_params_dword[6]);
> > -		intel_de_write(dev_priv,
> DSCA_RC_RANGE_PARAMETERS_3_UDW,
> > +		intel_de_write(display,
> DSCA_RC_RANGE_PARAMETERS_3_UDW,
> >  			       rc_range_params_dword[7]);
> >  		if (vdsc_instances_per_pipe > 1) {
> > -			intel_de_write(dev_priv,
> DSCC_RC_RANGE_PARAMETERS_0,
> > +			intel_de_write(display,
> DSCC_RC_RANGE_PARAMETERS_0,
> >  				       rc_range_params_dword[0]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       DSCC_RC_RANGE_PARAMETERS_0_UDW,
> >  				       rc_range_params_dword[1]);
> > -			intel_de_write(dev_priv,
> DSCC_RC_RANGE_PARAMETERS_1,
> > +			intel_de_write(display,
> DSCC_RC_RANGE_PARAMETERS_1,
> >  				       rc_range_params_dword[2]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       DSCC_RC_RANGE_PARAMETERS_1_UDW,
> >  				       rc_range_params_dword[3]);
> > -			intel_de_write(dev_priv,
> DSCC_RC_RANGE_PARAMETERS_2,
> > +			intel_de_write(display,
> DSCC_RC_RANGE_PARAMETERS_2,
> >  				       rc_range_params_dword[4]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       DSCC_RC_RANGE_PARAMETERS_2_UDW,
> >  				       rc_range_params_dword[5]);
> > -			intel_de_write(dev_priv,
> DSCC_RC_RANGE_PARAMETERS_3,
> > +			intel_de_write(display,
> DSCC_RC_RANGE_PARAMETERS_3,
> >  				       rc_range_params_dword[6]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >  				       DSCC_RC_RANGE_PARAMETERS_3_UDW,
> >  				       rc_range_params_dword[7]);
> >  		}
> >  	} else {
> > -		intel_de_write(dev_priv,
> ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
> > +		intel_de_write(display,
> ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
> >  			       rc_range_params_dword[0]);
> > -		intel_de_write(dev_priv,
> > +		intel_de_write(display,
> >
> ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe),
> >  			       rc_range_params_dword[1]);
> > -		intel_de_write(dev_priv,
> ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
> > +		intel_de_write(display,
> ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
> >  			       rc_range_params_dword[2]);
> > -		intel_de_write(dev_priv,
> > +		intel_de_write(display,
> >
> ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe),
> >  			       rc_range_params_dword[3]);
> > -		intel_de_write(dev_priv,
> ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
> > +		intel_de_write(display,
> ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
> >  			       rc_range_params_dword[4]);
> > -		intel_de_write(dev_priv,
> > +		intel_de_write(display,
> >
> ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe),
> >  			       rc_range_params_dword[5]);
> > -		intel_de_write(dev_priv,
> ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
> > +		intel_de_write(display,
> ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
> >  			       rc_range_params_dword[6]);
> > -		intel_de_write(dev_priv,
> > +		intel_de_write(display,
> >
> ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
> >  			       rc_range_params_dword[7]);
> >  		if (vdsc_instances_per_pipe > 1) {
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
> >  				       rc_range_params_dword[0]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe),
> >  				       rc_range_params_dword[1]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe),
> >  				       rc_range_params_dword[2]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe),
> >  				       rc_range_params_dword[3]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe),
> >  				       rc_range_params_dword[4]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe),
> >  				       rc_range_params_dword[5]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe),
> >  				       rc_range_params_dword[6]);
> > -			intel_de_write(dev_priv,
> > +			intel_de_write(display,
> >
> ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe),
> >  				       rc_range_params_dword[7]);
> >  		}
> > @@ -746,8 +744,8 @@ static i915_reg_t dss_ctl2_reg(struct intel_crtc
> > *crtc, enum transcoder cpu_tran
> >
> >  void intel_uncompressed_joiner_enable(const struct intel_crtc_state
> > *crtc_state)  {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	u32 dss_ctl1_val =3D 0;
> >
> >  	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable)
> > { @@ -756,14 +754,15 @@ void intel_uncompressed_joiner_enable(const
> struct intel_crtc_state *crtc_state)
> >  		else
> >  			dss_ctl1_val |=3D UNCOMPRESSED_JOINER_PRIMARY;
> >
> > -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state-
> >cpu_transcoder), dss_ctl1_val);
> > +		intel_de_write(display, dss_ctl1_reg(crtc, crtc_state-
> >cpu_transcoder),
> > +			       dss_ctl1_val);
> >  	}
> >  }
> >
> >  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)  {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	u32 dss_ctl1_val =3D 0;
> >  	u32 dss_ctl2_val =3D 0;
> >  	int vdsc_instances_per_pipe =3D
> > intel_dsc_get_vdsc_per_pipe(crtc_state);
> > @@ -796,28 +795,27 @@ void intel_dsc_enable(const struct intel_crtc_sta=
te
> *crtc_state)
> >  		if (intel_crtc_is_bigjoiner_primary(crtc_state))
> >  			dss_ctl1_val |=3D PRIMARY_BIG_JOINER_ENABLE;
> >  	}
> > -	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state-
> >cpu_transcoder), dss_ctl1_val);
> > -	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state-
> >cpu_transcoder), dss_ctl2_val);
> > +	intel_de_write(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder=
),
> dss_ctl1_val);
> > +	intel_de_write(display, dss_ctl2_reg(crtc,
> > +crtc_state->cpu_transcoder), dss_ctl2_val);
> >  }
> >
> >  void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
> > {
> > +	struct intel_display *display =3D to_intel_display(old_crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >
> >  	/* Disable only if either of them is enabled */
> >  	if (old_crtc_state->dsc.compression_enable ||
> >  	    old_crtc_state->joiner_pipes) {
> > -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state-
> >cpu_transcoder), 0);
> > -		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state-
> >cpu_transcoder), 0);
> > +		intel_de_write(display, dss_ctl1_reg(crtc, old_crtc_state-
> >cpu_transcoder), 0);
> > +		intel_de_write(display, dss_ctl2_reg(crtc,
> > +old_crtc_state->cpu_transcoder), 0);
> >  	}
> >  }
> >
> >  static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int=
 pps,
> >  			      bool *all_equal)
> >  {
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	i915_reg_t dsc_reg[3];
> >  	int i, vdsc_per_pipe, dsc_reg_num;
> >  	u32 val;
> > @@ -825,16 +823,16 @@ static u32 intel_dsc_pps_read(struct
> intel_crtc_state *crtc_state, int pps,
> >  	vdsc_per_pipe =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> >  	dsc_reg_num =3D min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe);
> >
> > -	drm_WARN_ON_ONCE(&i915->drm, dsc_reg_num < vdsc_per_pipe);
> > +	drm_WARN_ON_ONCE(display->drm, dsc_reg_num < vdsc_per_pipe);
> >
> >  	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, dsc_reg_num);
> >
> >  	*all_equal =3D true;
> >
> > -	val =3D intel_de_read(i915, dsc_reg[0]);
> > +	val =3D intel_de_read(display, dsc_reg[0]);
> >
> >  	for (i =3D 1; i < dsc_reg_num; i++) {
> > -		if (intel_de_read(i915, dsc_reg[i]) !=3D val) {
> > +		if (intel_de_read(display, dsc_reg[i]) !=3D val) {
> >  			*all_equal =3D false;
> >  			break;
> >  		}
> > @@ -845,22 +843,20 @@ static u32 intel_dsc_pps_read(struct
> > intel_crtc_state *crtc_state, int pps,
> >
> >  static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state
> > *crtc_state, int pps)  {
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	u32 val;
> >  	bool all_equal;
> >
> >  	val =3D intel_dsc_pps_read(crtc_state, pps, &all_equal);
> > -	drm_WARN_ON(&i915->drm, !all_equal);
> > +	drm_WARN_ON(display->drm, !all_equal);
> >
> >  	return val;
> >  }
> >
> >  static void intel_dsc_get_pps_config(struct intel_crtc_state
> > *crtc_state)  {
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> >  	int num_vdsc_instances =3D
> intel_dsc_get_num_vdsc_instances(crtc_state);
> >  	u32 pps_temp;
> >
> > @@ -946,7 +942,7 @@ static void intel_dsc_get_pps_config(struct
> > intel_crtc_state *crtc_state)
> >
> >  	vdsc_cfg->slice_chunk_size =3D
> > REG_FIELD_GET(DSC_PPS16_SLICE_CHUNK_SIZE_MASK, pps_temp);
> >
> > -	if (DISPLAY_VER(i915) >=3D 14) {
> > +	if (DISPLAY_VER(display) >=3D 14) {
> >  		/* PPS 17 */
> >  		pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 17);
> >
> > @@ -964,7 +960,6 @@ void intel_dsc_get_config(struct intel_crtc_state
> > *crtc_state)  {
> >  	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> >  	enum intel_display_power_domain power_domain;
> >  	intel_wakeref_t wakeref;
> > @@ -979,8 +974,8 @@ void intel_dsc_get_config(struct intel_crtc_state
> *crtc_state)
> >  	if (!wakeref)
> >  		return;
> >
> > -	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcode=
r));
> > -	dss_ctl2 =3D intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcode=
r));
> > +	dss_ctl1 =3D intel_de_read(display, dss_ctl1_reg(crtc, cpu_transcoder=
));
> > +	dss_ctl2 =3D intel_de_read(display, dss_ctl2_reg(crtc,
> > +cpu_transcoder));
> >
> >  	crtc_state->dsc.compression_enable =3D dss_ctl2 & VDSC0_ENABLE;
> >  	if (!crtc_state->dsc.compression_enable)
> > @@ -1020,8 +1015,7 @@ void intel_vdsc_state_dump(struct drm_printer
> > *p, int indent,
> >
> >  int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> > {
> > -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > -	struct intel_display *display =3D to_intel_display(crtc);
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >  	int num_vdsc_instances =3D
> intel_dsc_get_num_vdsc_instances(crtc_state);
> >  	int min_cdclk;
>=20
> --
> Jani Nikula, Intel
