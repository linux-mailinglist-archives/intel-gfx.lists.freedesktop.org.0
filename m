Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07726997BB5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3275510E852;
	Thu, 10 Oct 2024 04:18:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5d1cYZ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C65010E085;
 Thu, 10 Oct 2024 04:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728533881; x=1760069881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mwT8qM0y+QLF6Rky3hRPXUrVoq9amXmKmA8DVCaiF00=;
 b=U5d1cYZ1BTLjh2vQF2pGv2cYjYkKabzS8hnZNDmI2vVB0Yfufe1N5HST
 ADLEMU79/B9a1ve2+IV0ywXYjDSPVz27ULKkuE8WFMT1XjVB/yydzeYJf
 /8R/X02iD978vb//JaE2ZLPY/NKC22SzUR7Zke6Lq0UWiHjj9kNZpQMTq
 WY1S07nta+FPVMglMq6Ahw0fD8PzEYqbbAhx42HUr5Jga1taDDtCTYqnK
 1qeb0sDJVaa7Jmbd/nEKfo/55YedKSVHtCK32BGB1d3bpiXztxLu8Vv/w
 JhhcsvrtJa+RIc6+kG5nH6m/zpm+bPM6NhKTE4CwCQSjoobKqr59isP3m g==;
X-CSE-ConnectionGUID: bu9qFfhBTIGGON0b26elbw==
X-CSE-MsgGUID: p1N4Z5ZdRFecLcgLAQj/6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27682169"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="27682169"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:18:01 -0700
X-CSE-ConnectionGUID: 38wadIMXSXWhgPUKzHKx+A==
X-CSE-MsgGUID: 3FQdeLoOSCGZeBk2tow3PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="76936787"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 21:18:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 21:17:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 21:17:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 21:17:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 21:17:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X8PH1fmfQO5ZskFt5svJGw2RI1HSbrQW3R3C3tSM2hHlWbFSM6ecAPyAiCMXqbcWXQJjAn2uUlUflHwRFoCO7jWAYpQLHrWZKUAHY6ApiWoRSY4Omwo6R2zhEGb3Hjm9PYe+4YosM+fLcXO6F3L4LafB/CMlfmeDIc0tKcwp5hdUhxKByXr1zob2UJp4m1SiZdKrlCTKmySxCFkLPOHDmwqmpq/dedxnP5mnYqvDFxwCo2CwntnI0hTeiELzaVAfKOL4AXuXqMkl3kacYvcn4Ltw56TnZ5U9Vrg8I0Z6a3AQHz/npLB68SiApqTiKvgXT+RSZ+DZC37jg9s7gLnKIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hTmjD7wpVGH0MPAX72+elF83K0UIuHPbzXCgU0AZuU=;
 b=dFa++vbYkarMcQ5D4sGH4JyZZpSYUqpbDSl/3G0K9Ht+AgfjPdiSoQURDMXWjjNwI2CRgYwUdSpzhf511/KHuxotnkqfcKO7wtScmKw4GHLMSBctvS1+pnDEVlDLtA1/WPzoIV0Be3h/jSzRjD1NPltW+mzDoLGkDTiUipHkiIhUOxlyBipE0zhtSL+OxNhCdOtAWmjudLHRDmVjIzlpJBspTfuNlwCIqLzucrpb/ZsKb7Z8VLHs82bfiWvKk1OYgUMO2n3/wOo6b10Apsn0jaJfeMFeFixY9WThnhUV0VLg6et8hg1gEOHJGrzX4wOemWvhVHh5X1jULVTOGdAj6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY5PR11MB6343.namprd11.prod.outlook.com (2603:10b6:930:3c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Thu, 10 Oct
 2024 04:17:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 04:17:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
Subject: RE: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
 HDCP_LINE_REKEY bit
Thread-Topic: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
 HDCP_LINE_REKEY bit
Thread-Index: AQHbGdK6tw4oJfqoYUWGO2+ex8s1xbJ+CQwAgAFZPGA=
Date: Thu, 10 Oct 2024 04:17:56 +0000
Message-ID: <SN7PR11MB6750E5110E8FC97C456AB36DE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-7-matthew.s.atwood@intel.com>
 <87plo9bu8p.fsf@intel.com>
In-Reply-To: <87plo9bu8p.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY5PR11MB6343:EE_
x-ms-office365-filtering-correlation-id: 91e85c95-d2c4-49c2-bf72-08dce8e284c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?TKQHly8lRJjhwqvQn4uWUEjRovY5Pja/ryQ6yuyatAmOIPQA3LEidOEAGJbr?=
 =?us-ascii?Q?l+Zt8fk4FKzbsGMMWtFaBTaQrqr6ppN1N/vr7T5RHPIQatiVhjyOumj7n8le?=
 =?us-ascii?Q?uTl2qWQTnjwy1rvadBQFv06BT4RnlyZDkIViTzNqgbWYcB6e6UGjugKnck27?=
 =?us-ascii?Q?YqWc11oTE3lWe92UFdH59vlYZXbcIcqJuPygWkb8iKjNbCUokrkJu0yOqqRD?=
 =?us-ascii?Q?1zy7E+h9eY0y+DdDYRlPtDwwUU5XTBLzbx/FUekW35kUyyEwEL6RXsQYoLqp?=
 =?us-ascii?Q?80i+haP7qcLem6eW7dOKFW6SoGuZdj/ALqSa8XkI92/eK2jF58zEHTNrI7lD?=
 =?us-ascii?Q?qUlARovlS4vaRlUHx9mOytb5sLm0yXfLjJCCX9EzJ1ulBiAv/oQ03Th9Bhiw?=
 =?us-ascii?Q?HQCmDTkfk4zW9maCmtPvS5fCCyy0G3tIRBaoVyUcbHK0B6o/u+VSDQy4YcQ/?=
 =?us-ascii?Q?O2nufMiBjzn2RhHxDP8P2Tsu7U7nmea+8jIYKrwOY81ogtyNR+4v7fb0oT/F?=
 =?us-ascii?Q?8Qe4Mr1YCYFZbc3hCfq8dW/Ch7zH3P8MGF8wjFpt2XlLQNmY83nEK7Wo/za0?=
 =?us-ascii?Q?/FdYR4GH1DtrSyhclkqdqPkbM1hAbXWbuOSeIp0By23D1GQ1zgtBqtjoehOn?=
 =?us-ascii?Q?t/OBq6Uz05bXHt8oqG7gPsRnknLLVgkb3H5EEwzYbge4Us0CECIYp+Godb9k?=
 =?us-ascii?Q?6mZR7ygPCGcb0s9B0p6j2GFr3PjWdeNo76CnVRaNhsu5cE5jIkM7oXWyhbJT?=
 =?us-ascii?Q?WiZytV8LdDBw7p3qLdroTfKFsZ42DuzLCNZt/+0XSL2Wp5KrCriaydr90nOW?=
 =?us-ascii?Q?CLM33lhKp4urMyBEDuuKbvtbFRW4IwYLdM2ICW7daWiP+zu+6mmUES9WkZPC?=
 =?us-ascii?Q?wCixbpv+bJgEc9j9oBvrq0AXEnko+lnmu77cZRE999EjH6FaFgbflCpv5+Bo?=
 =?us-ascii?Q?PCPNsLfqPZQj6zVU3iwWGcn6hiUkmoFXjqNM/xr14YY4DUGK7W4PAE5Ul7re?=
 =?us-ascii?Q?ug7BLWlsYEJs4YuK4zDXan/EZriL+w4fjUuYHrzSLBykyv0Fkd3y5ORCXrhG?=
 =?us-ascii?Q?0XnXFSiDwo2KO7vsO/7QNEkCMmb2Sse4YDdgfxT9hBNEjTl6jvP6O7M31Sa4?=
 =?us-ascii?Q?H7NM2mpdgbdey4vNsTjtWhaAdPH5CrgIHd19N79F9k1o6BFn926IZEYPRDGa?=
 =?us-ascii?Q?eRuvxspiJv3LPFlBhXmJ5inAuB5hqms/dS4rSWfpQL0Bw6MdFYzwW9R4hsLs?=
 =?us-ascii?Q?uoCYl+xIfnGHdWU2toPEZP+tmoJhjJgDfN0oJJviEe9jDXnp25K7JMg3yg55?=
 =?us-ascii?Q?iFY9qGVqF8kbGlZKAl8hi+AXNS4eMjpMXwsWHPclJpwstw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ISw2JRXqsCKWrS54G2eHqVZLX1E6OonxLKHF+EkJm9/SSw/ZSfpGo49/F7Pd?=
 =?us-ascii?Q?JcaBSQyQis43Iw/XS3wXqm/RGDEqQ/geZ/1FDgtoPEEz3b6u84DdiS0ya5Et?=
 =?us-ascii?Q?FjUrSnmak8QLTORkpGgag3vfhP7K5OcKa6j4lbpwY6+cJXlrTqJjubDX/Dl+?=
 =?us-ascii?Q?zCtH4j09CHBgAxxGdMmkOQ0xs3Z7+nK4mkzyCTOApxjAF5aCc+8LtcFAOJgZ?=
 =?us-ascii?Q?yvKUFd1QulamzdzUqX51Cbp1iyiAhk5WOyKVxAsfhL8YP8+AN+VRK7VnpQzu?=
 =?us-ascii?Q?4NRT5tLI/GBbm0ULSY3/8b3aDevwoaf50m+67aJyOCDe5qjQAmA2+WXVF12h?=
 =?us-ascii?Q?wD1GzBhxGJrv2BUZjSO1UEd58ByYoJyBVQJ8JZzXVovG/RHVPuG0S9Qv8DHJ?=
 =?us-ascii?Q?ahk2YYvLRVjn/6a/glmiJuAlXWIIkQhIsbulhsw9GcVzrUf15Sa2fOhe+iPo?=
 =?us-ascii?Q?q/KyjADZTzYie68I73IyX24ff/JW2WLhsWFPKvpY+uHzUvMceWGssDXp06N9?=
 =?us-ascii?Q?kjL3670J/1Rer0qp5jkEGtMNnKJkCHyV+EomSuT+L6tfO+R+NDNubFU+Jh2d?=
 =?us-ascii?Q?bCvIVppcpHPe9tVTSxHxwKeO8SrAIVfaqCSwPKaBlYoX1EGjSdk6mf/piDWN?=
 =?us-ascii?Q?ElJnquApdWdqZCmTEAmSaNwXeSA27ku31peO87WeLLiy+hD42GHQhbXURk7Q?=
 =?us-ascii?Q?xCKQPxLsoaor7UkdgckyncyH07we8nnlY2AElMw1k4lTsp/CjR19OLIq66UL?=
 =?us-ascii?Q?+ERimV+myUOmkTXJj6ywBSSrNn6OICTk9HjFDK2SGeJdL0RBnLWMYsQGenUl?=
 =?us-ascii?Q?F0RgooHxNtLJRk+Kl3fx2oF15U5O33/7tEQy3/xUVBUWe5KZRgFFokHcbyta?=
 =?us-ascii?Q?3JDV9f+1YWJap9npnXTAmbsA0U6Mx1NeQ7NGP8AJC/Rvx1hKkss3aVprxj8W?=
 =?us-ascii?Q?CAJ8HAnWzwdAkG2zvuJR6ehBi9TWdAr1w8wRgnsPLBcNSMqeQmJhpfgraJTh?=
 =?us-ascii?Q?q/tJ93OzsENmBbDOoTR/SoyajLAknbzk5rn6zTRPSjUOnTFrdjWzsJHvHGNU?=
 =?us-ascii?Q?APTMcUQ+n6TgfLi7Bp8Q1+8ktpuAyUX4kxIbHXVZWGPp+1DqbMsWci80tq1n?=
 =?us-ascii?Q?S1W9qw6v6rxT+95/Z1R+jldNLgZB4U/T/2x/1G0aSnQ9Yxgpdv0x/RA7u8Zz?=
 =?us-ascii?Q?KeLwNHL+CH0SMqcgtqomP/syOar1QHmbS2f3BIeeEIzZ6p4RM8RxouLiEvzT?=
 =?us-ascii?Q?/ZMgNjXVnsAV7X/fPqZGF2uWKKGlvLlyHq1BViBjQWCJbVja1OQQlJFm2mKa?=
 =?us-ascii?Q?3BXN9VTz6Mh0+frFrgjTIyzowoeOi8dDRnzfZXO93IaptJdMhkMzrrxDxRjX?=
 =?us-ascii?Q?1lY2CD8196jxqad4AnwYiLCLNa0LL8izk1tImTTqWXqlmmrG+WqqUXTLHjd8?=
 =?us-ascii?Q?SB2ok93pSdRR2Kdb9ZIwsnpmKW1IlhygGFpnNWQMeZAfmaIcw+xms08czhA5?=
 =?us-ascii?Q?WxL+leBYAYDQ+uzonIDcYHSk9scC00oppoIVu2DJkejqLNwlm4TwfCjqCcEf?=
 =?us-ascii?Q?zdr1Erwo5YcN8LO+2fqtBXO3cZKAd+W+mV1KlSce?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91e85c95-d2c4-49c2-bf72-08dce8e284c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 04:17:56.7225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dEKF3hnEMm1uDlAtRDAes6A1ZJyiQNZsvH7tAobR36mB8UOHRvg0rPp+jizevdtMHcdrtlIajagbfMbWMDrROg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6343
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
> Sent: Wednesday, October 9, 2024 1:09 PM
> To: Atwood, Matthew S <matthew.s.atwood@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>
> Subject: Re: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
> HDCP_LINE_REKEY bit
>=20
> On Tue, 08 Oct 2024, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > From: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > DISPLAY_VER() >=3D 30 has the HDCP_LINE_REKEY bit redefined from bit 12
> > to bit 14. Create a macro to choose the correct bit based on
> > DISPLAY_VER().
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
> >  drivers/gpu/drm/i915/i915_reg.h           | 2 +-
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ed6aa87403e2..e9b0414590ce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -47,10 +47,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> >  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> >  				     0, HDCP_LINE_REKEY_DISABLE);
> >  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0,
> STEP_FOREVER) ||
> > -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> STEP_B0, STEP_FOREVER))
> > +			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0),
> STEP_B0, STEP_FOREVER) ||
> > +			 DISPLAY_VER(display) >=3D 30)
> >  			intel_de_rmw(display,
> >  				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > -				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > +				     0,
> TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display));
> >  	}
> >  }
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index d30459f8d1cb..da65500cd0c8
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3832,7 +3832,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> > -#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> > +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display)
> 	(DISPLAY_VER(display) >=3D 30 ? REG_BIT(15) : REG_BIT(12))
>=20
> Do we really want to extend this style to individual bits?

I just thought this might be cleaner should we use=20
TRANS_DDI_HDCP_LINE_REKEY_DISABLE
And=20
XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE instead then?

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK
> 	REG_GENMASK(11, 10)
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
> >  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> trans)
>=20
> --
> Jani Nikula, Intel
