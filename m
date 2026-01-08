Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD66DD0342D
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 15:15:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA3610E742;
	Thu,  8 Jan 2026 14:15:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RIYwaUtf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43CE210E741;
 Thu,  8 Jan 2026 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767881753; x=1799417753;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Wb+ET5AjoIliVhoUJYcveAqOujn6tDlFYk1OH0rnhT0=;
 b=RIYwaUtfVtD99/RaohzRWwmMDFO7Ik18lbnrSvWzyVZAYrmG6x2dU6iE
 m4qvcRFtJm5YXVaAjss10bKkJCLLZhB8a1ijc3vWPW/pELGl2nB8iRIfZ
 Af6dcMBj1VSptdtdFw4VguCHnfsX/3IExm+9g0PSpifTt7uVuH74LKRKe
 vS6e3TTnctE6bwf5+vF9ItxQsu9gQ6HFHkLlTex1tR3tto4XYIMJl4d3M
 MieJYolqjNJsEA0BXLIsN4eVERy2/UEX76Btuu6z2u84NBqUgRzIyLP9C
 dwQNcgCqzLBPKAoswwGYB9b49PqEH+aR/rALerzOqdm/zicl99CQOi2AL A==;
X-CSE-ConnectionGUID: AEbkGqUeTD+x+p4a1Tn5yA==
X-CSE-MsgGUID: 1aeLD+D4QxisInO5i9oBrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="69419710"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="69419710"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:15:53 -0800
X-CSE-ConnectionGUID: ABOEk7HZS5SV1FNFpfKkpw==
X-CSE-MsgGUID: X0C8s9yrTn2Smu5DXt2TuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="203489236"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:15:52 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:15:52 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 06:15:52 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.39) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:15:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9ent3ooNwhPHWT8ZNWm6jru3H+hjRUnzkhcxRGLmUrFp68WK3kYWUR0qnn1MIzDUGkx1X/yTytjyQkwM9yBOzssPippDwaJa3pSsckFV+YGC9Io86jJCTOjDZFeP81QCTRPYirwe1wuU9L1H4n0o1j8W5T4gmg9ADQqtR6FRtYBTIEJVJskKD/ZhOCWltuiwHEeUabFmSQdhGtJqOFDhHOI0kM71OiK+MTJ3Al9aiCDvYYS2qXJRlFpSbG5wEMQAhFU88oRiOU8sFlZMFAenO7apKY0lGkXt8O1AHhx6G+m2omssmS8fV4ib/PEUT7AtZ9QfZiBsZKJ5kpHfffmQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J3kl4UZS0PrOBJNZPJypErws1xES4oRzl9xdwJHIyYM=;
 b=HNcANbioNgF680tifOTjBOy42HZqWoaRHgOlOibO0KY8ccseNltc2uCcoZ//UcvEEssGjoGhA4DHfFc1Q7OLq1yTLbfu1DELc9I4ap44kIF58K07gEAUatgfy6Cx6ElAJipvqL51NVYn5HvlR87nDSK5InudTQwS+g8FqF4FVMv4kIhlCA45bf/aSjjMMOX+WrQbNVFj7rp/LA4k66ZOHl7sLhXKy44ju/zv3HwHuz0p8Qp/6evhSSC4tb3uW+lcRztfhcHHQbxmJglY4lZRKMInI8NtGmhxu2MgbfNDJTiPLZ7HeYJir+Hqrev9z6ogGovjFfjJyuvDwPgvjBb9jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5080.namprd11.prod.outlook.com (2603:10b6:510:3f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Thu, 8 Jan
 2026 14:15:50 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 14:15:50 +0000
Date: Thu, 8 Jan 2026 16:15:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for
 port calculation
Message-ID: <aV-8ENon-SNGF36w@ideak-desk>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-5-mika.kahola@intel.com>
 <IA3PR11MB8937D97F8D85DEAA1977839EE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8937D97F8D85DEAA1977839EE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO2P265CA0506.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5080:EE_
X-MS-Office365-Filtering-Correlation-Id: 4967272b-a675-47b7-33f1-08de4ec06d1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0voDf+e+u066VOXyx3/SGnvFlOWFDroC22sFd0dMvUXRhW2PoUSf1qmoekYS?=
 =?us-ascii?Q?1HBiSQgTaU6WkWNRpLEktBTnUORFkn6psqJNySLdyna/U0FOACvWCrUVtmf9?=
 =?us-ascii?Q?4Y+ZNY/+Pf4m2+g8kX5dCzwg05Z4PQAWfKQ67B9b55CgwIjE+KOAmZ+UyB4o?=
 =?us-ascii?Q?5tMhoiRiqJucR9i3wtfiLcfRyfVc1oYSFRfyWDtgeyhPGPpdaZHs55+9hLnT?=
 =?us-ascii?Q?1ZMWvLngPGuyGpI+rZa17BgzFOXwLqF3NntYch99vHNVMg4yFYx7NqCvLRQM?=
 =?us-ascii?Q?4bxxEXC5LrZYh4UASGKkjI/bvDEBrDWJPu0+sroYW/33BZO493d+BFmF2NRb?=
 =?us-ascii?Q?LCQhE523VyaXnNEHeulMX8oBxB9+3IiSJVDzQWpzh1s38Orvv7O5z2esgeoL?=
 =?us-ascii?Q?COKXVPV8cXgV5mkaOwYBdBjQBNYddBZkno4zCbpUdF6tyBGCk2gnVtqr03gA?=
 =?us-ascii?Q?0PEj+C2xZFnu4tw9neS+Q7SPhA1VbEadVV9U9sTIiX+AFltRXwUg9KQicZCx?=
 =?us-ascii?Q?v+70uqY8J1FDf8yb5Gw2Bs7UMhhHeqdA1vyhEJoJ/Ntmn0ATQEZaNyuuejn7?=
 =?us-ascii?Q?gJnHkt1k0zucm6tH/JVoUSa1OuWFiHaQJNTZgKTHrlQESAqcDBk/w9pJ+1Bq?=
 =?us-ascii?Q?IK0jtemXnXaBA3CdSz3A4VO9zxZBkhXezwDqDcMvQUs9l3qHUYaWheLE8WCq?=
 =?us-ascii?Q?oe623okkxBZhWISHzv9RaCXuWPYskDz5uGl8kmRVQKyt4PFysactZ4fbu6Xh?=
 =?us-ascii?Q?olEUfAnGrUa7Tpdw0GLagDaO41gfBMZw0nBxpUfZwCFTyyk+aGtwEYy+S4t3?=
 =?us-ascii?Q?sIbAwqizMGkVubiIUnDxOx+1zIZ4TiIeBPSaS/IOnP5GOPL2AkBxyEHIfJS2?=
 =?us-ascii?Q?HSkhcq0hMVIHW/J5D5svq+rZrJVSgExYh1tL/ClKnYbNJqGtSm1VLw4wFD1K?=
 =?us-ascii?Q?PixTCJcFbKg+85JxBDc26QRzolVOeokT4IvCOwA0caGH2fwLokvEamyZ8ts5?=
 =?us-ascii?Q?erVrM2Vb9LG2gQJXBIsCRbsN1H5ID/x4zS5EmEyjO0WCG4JJiTvA9Y5GYT5x?=
 =?us-ascii?Q?tlo1Hk97L0wepQHNuTZb4HLMjPQARHFE7aBMAR6C1Sxhd7/I3el01FJK0+ou?=
 =?us-ascii?Q?xwS9tnnmgfs0xVnjN408aYH+B/1G5VnpzDDv18u3IqFkEjldM2k8AZK7k4RB?=
 =?us-ascii?Q?nMhVtF2ZwalADAz+bakX1XOw8hWpF0rK6RgbVHHJuh+gUMTODf+c0pdI+GNr?=
 =?us-ascii?Q?HeenjW1KZkRduWfUtoFXfB4cefc/F21dGSQBw/7vYyDdOK0HWD6k+Mpvh4gV?=
 =?us-ascii?Q?uZkU5jntYp3J524YeBvKRRqNAFv2SGBKtaetGKuTs+kqo656ZBmETTbGQobD?=
 =?us-ascii?Q?nG10qXBQOz8gg/MJQ1ICXed4Uyg+9ZrW3ob64e3Le///nwpp7BoFmRqDo+U6?=
 =?us-ascii?Q?epYLU+Bzou3sC9MrKUujrSUx4ltpx+sb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w+h13DF3YOFKcEdJqOyAsBYDkWjq+q7WPO15zmm3N2hJXlxfq5eCu1M4nc+4?=
 =?us-ascii?Q?BsD58xYGojm9WFIHgjAV9AGKpMU+32BZmtuRo25e5keJwMbeuIGFYZq7GOG7?=
 =?us-ascii?Q?iXzoSfORVzwkoUMGNTrqzBER+B/xjm0N3pOYyD/wAzr4g3td9Ph/T4czPGoo?=
 =?us-ascii?Q?jGRV0bbXUilKeYbY1B2LEuDHdmKsleYYPAbJ7iuHs4fSTucz8KrBV4m8shcm?=
 =?us-ascii?Q?GgFHOCPCi0fC+cAwWFqn7wWDvVqsdmQ1NXY9p8yPZ/EDnLtvPRQof5r+DhHh?=
 =?us-ascii?Q?T16X2XRy2HB4cukSuwuotbnjEumK2F4xMQSYJkrzLJf+FBWM9muz46uqAs0P?=
 =?us-ascii?Q?iC/uaugub6RoIofjlY4AFsTv/6+rKXl4lPBfSgSf5yNj7K//jjaddbJKMmeL?=
 =?us-ascii?Q?kDcv5zWkMtHO6gDbiC0U0FFoFuXJY9XBlw5kZaBLbIGmzNBSL++HP0az5++E?=
 =?us-ascii?Q?nKIpUdRZsJZMV+VInF63UDd2acffqfXyzR/3t+Gv0VRko2LxPMRAklCctR14?=
 =?us-ascii?Q?FFyB4uYWbUnSB1NYEXSbzzD0g5cP8WcjHLqo/Mg7FpHr21MVMAZWiKinD7Va?=
 =?us-ascii?Q?BhaOj9LvGRmY9RNvGko97JdfhaqjcNQMR80g4Jps/QXCVg/EIo+Nf/OqBgsK?=
 =?us-ascii?Q?LbBojLqs4mplcy91lRM3z4fDxHqQ6TsrlIUackyWNwW1BdGaVghceKzE+YGj?=
 =?us-ascii?Q?3UEuuzzIHAZrJn0MD78fL/JVTXGjcLjaFQFA00i5UJ5DlxXm28Um9+Pjekla?=
 =?us-ascii?Q?vglVNTSoTNEs5kEn2TshK9B8yX5DtI8fVnqLimrcmtPPYw7N8SiKXn3wRzMi?=
 =?us-ascii?Q?J8EtNt20lG1lPsDhseXIXGobL11wvfQP6dA39dNmndteiZbh8W6Shj7yVhiK?=
 =?us-ascii?Q?VAM4MoSNRQLKvBt391ax+WVTg/nhkkjSHeUT/k9Wp30qbiyZf4j2hncjsQjh?=
 =?us-ascii?Q?AArPnsQtYjdbjE031UiHfV6jIcRumT/mpApglEsAD3ndFEapEG3NrgDjTlTs?=
 =?us-ascii?Q?5EljF4JNAuL519sz1Bu8aKLCLePkLdqIstAX7yjorRQj/n1zOVg+CqINF+IM?=
 =?us-ascii?Q?C97fCbDapIrtwxMNe78/FvTUzzZwrivibDQgtCJlu544Dv4SZkOonbNHqz0n?=
 =?us-ascii?Q?SQSCXZl68jcKW2RpzkuoPBegZSnONja25Ec4XXvoCQXT6gDT6f24N/VIJAbr?=
 =?us-ascii?Q?tXJE+dgk0Z+XoP0D58btwO/PLWwgdO12jW6h71BfytDim0yf3UNbK9bSNo0s?=
 =?us-ascii?Q?4zpJIXs6Z6x0sRSgNHMm5LiW3hofdCgd1p/st0WsZKYZ8UpY2VlnPN3trsZi?=
 =?us-ascii?Q?lgW7YGB8kF+BbYrxB6UTPq1tNqGnXuDuC9e8fl54Kg/X3CSHiMO9unm3nAwF?=
 =?us-ascii?Q?uBjynjhx6i7bn1hf7A/n8vdRQVcZDpkB1fziZcZAvtPHnZaeIFRpO37x8RkP?=
 =?us-ascii?Q?4BEKMPckVNYFK1GrDy1lR/Z4zS5We0pXrGKnetkMu3sLkC+vLFoza7xW7G7N?=
 =?us-ascii?Q?gNURbzmKwAYJkoBcStzjfzRKtIdmMCl/sMxi1Lmp+5XU8cDLVq9rhwLk8kTc?=
 =?us-ascii?Q?UBHrN5MJZU5gPaYNwAw0655vTKPMFI0iIIMeYAYT25XCnQ2+2SXRnD1R0y1h?=
 =?us-ascii?Q?eT+kw+TL5qWj+vfZI8YLZ1svN6JcVs7XhvQlQzK+Xh51jxJLpR2yNIjgKbsv?=
 =?us-ascii?Q?OGlL00VJAIUAspWaAUbbiV1SmoFF+8QXfOqTAzNJwYVAi6BfnZHHbEZw1zOc?=
 =?us-ascii?Q?uRXoT4ak1ikVPkOYi4L/hnnrahFsqO/zc0xay8gzBm8KwKAgbnb8tpl2Ah+/?=
X-MS-Exchange-AntiSpam-MessageData-1: qIQ0HMi2HVPw3w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4967272b-a675-47b7-33f1-08de4ec06d1c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 14:15:50.6429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rru0bOgvtfD7IE6DQVu3lQWbnS0XL5vQQACYXZ7BeD6n8cHEPehV9JocCJ8oRFLVkt2d3swFTeEupmgOk/vBlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5080
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 06, 2026 at 05:49:15AM +0000, Kandpal, Suraj wrote:
> > Subject: [PATCH v2 04/15] drm/i915/lt_phy: Drop LT PHY crtc_state for port calculation
> > ...
> >
> > @@ -1748,12 +1746,10 @@ intel_lt_phy_calc_hdmi_port_clock(const struct intel_crtc_state *crtc_state)
> > }
> > 
> >  int
> > -intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> > -			     const struct intel_crtc_state *crtc_state)
> > +intel_lt_phy_calc_port_clock(struct intel_display *display,
> > +			     const struct intel_lt_phy_pll_state *lt_state)
> >  {
> >  	int clk;
> > -	const struct intel_lt_phy_pll_state *lt_state =
> > -		&crtc_state->dpll_hw_state.ltpll;
> >  	u8 mode, rate;
> > 
> >  	mode = REG_FIELD_GET8(LT_PHY_VDR_MODE_ENCODING_MASK,
> > @@ -1769,7 +1765,7 @@ intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
> >  				      lt_state->config[0]);
> >  		clk = intel_lt_phy_get_dp_clock(rate);
> >  	} else {
> > -		clk = intel_lt_phy_calc_hdmi_port_clock(crtc_state);
> > +		clk = intel_lt_phy_calc_hdmi_port_clock(display, lt_state);
> >  	}
> > 
> >  	return clk;
> > @@ -2220,6 +2216,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
> >  				       const struct intel_crtc_state *crtc_state,
> >  				       struct intel_lt_phy_pll_state *pll_state)
> > {
> > +	struct intel_display *display = to_intel_display(encoder);
> >  	u8 owned_lane_mask;
> >  	u8 lane;
> >  	struct ref_tracker *wakeref;
> > @@ -2245,7 +2242,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
> >  	}
> > 
> >  	pll_state->clock =
> > -		intel_lt_phy_calc_port_clock(encoder, crtc_state);
> > +		intel_lt_phy_calc_port_clock(display,
> > +&crtc_state->dpll_hw_state.ltpll);
> 
> Readout_hw_state already has pll_state maybe you can directly pass
> that instead of what's inside crtc_state Since by this point we would
> have read and dumped everything inside pll_state anyways.

This is actually a fix of the existing code: crtc_state is the new state
of CTRC computed by the commit when intel_lt_phy_pll_readout_hw_state()
is called from intel_lt_phy_pll_state_verify(). That new CRTC state and
within that the new PLL state is what supposed to be verified, so
nothing from crtc_state should be used to derive the read-out pll_state.

In detail, for the verification intel_lt_phy_pll_readout_hw_state()
reads out the PLL state from the HW into pll_state passed to it, also
computing the corresponding PLL clock via
intel_lt_phy_calc_port_clock(). intel_lt_phy_pll_state_verify() verifies
then if the read-out PLL state in pll_state matches the state in
crtc_state->dpll_hw_state.ltpll. So computing pll_state->clock based on
crtc_state->dpll_hw_state.ltpll is incorrect based on the above (in the
existing code before this patchset) and as such the fix for it should be
a separate patch.

> Regards,
> Suraj Kandpal
> 
> >  	intel_lt_phy_transaction_end(encoder, wakeref);
> > }
