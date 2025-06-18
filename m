Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9F1ADE30C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 07:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2080610E1D5;
	Wed, 18 Jun 2025 05:29:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KooOOm0f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E181B10E1D5;
 Wed, 18 Jun 2025 05:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750224547; x=1781760547;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+BPahzty8dxnEEEr+Xk0B8mOPKySoUDzaqB/WkO73YY=;
 b=KooOOm0fphYBlcZlFL8VWSNuBwPF452K0rB/oii4x7GidVP8UqNbfKr3
 kFPdO0TOC3lDjptv+3m8BlGQDJPOXHCn1bmunigVvDQPdT43IUzfdleda
 XTCpTtfGgw2eqp6KPpcikztXySgaMIsLecDBhhNkE5ifkI3C7dZB317wg
 5zJ/J7bOaoZbUQPEjcbBhfO+jvayOMWaO9tVZxTqoVNTWNA4yur5+GwiS
 VZCgG/tWOMwsdnJvesA4hYAk5WSlVYsqlM0g7OxnnDtfRT/7aT2RVH2wu
 IS32o2bK9pCZ1FU2VepHCNPDLisw57GepNP3d2TlR8R0SM8jqJ73RvqSy Q==;
X-CSE-ConnectionGUID: Z2T5o7BUSYacZ2mG2dbcqg==
X-CSE-MsgGUID: DnFAuiljS6CRDM6ZHCaMkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="52512677"
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="52512677"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 22:29:06 -0700
X-CSE-ConnectionGUID: BqOFyHqISLSegl1Sjo6WGA==
X-CSE-MsgGUID: PMoO4TpZSkKVH5OYmF3iJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="149203860"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 22:29:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 22:29:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 17 Jun 2025 22:29:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.72)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 17 Jun 2025 22:29:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TtRaFaCn/fGTWt4N2V3UMX3/sgPEaOxqqGNTpyEYbx8C3II27pWzKFxxgRCRRy3b034v4AzytcYvCp5ZRIv36uAgFfl7IxZnzIprq8qyQR0HqvB9ni5eprZqjLrXdweoDfnBNFXfffr+dhk4jQ7/tAHgTU5ysiGF2rD+ftUrRVVuYuchl2YXqmmuvq8ASC0gm8lnpJ0rCr0NHltLarcdDbI7S+foDSv6xtw8d6Dfi8UaPG82ArTxTvquRpQ88WjjiKBiBkb8+pYTGt6/nfixK51euJdw+/pVxWEEpQqv5ysBQVSyrs5pIYsRodMBAOEdgeyw582J8e1DN0xKNGoGUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oucwn5jT590K+V5VJrkofUH0VSRDjdYh4AY5h5MgmpU=;
 b=NGDC6Ut8kxQv/7g7ra+yl65GYrRT3EDJ3oSwJldjnB4nyASsg3UqFGEveJPpgSckBFZSKQOTz1zHbjogCUbQWMS82nj1goB7EsWg+wB/ctWQUqlM1YJ+UBtJ4BCyQdWJZv2XsN2+Q0Yrq+oiYCPZcbgx2WA+6qD8dGOd7mCMc0MP5Ahp/O0mQGT6ko99WArDznNjmCrxBdHh0BtedJnQ0NiIGzlj+yVzrvunI5jWxTwR63LSUTFGmzxaqxceaWLb2J+a5ti/PlLYesCXErKDn2IkuzqB/5ZmHZWTyq3j/WvnDzmNrrKLDpmfK5rbtckR4W11PNmY/WTrWSoluKc9yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB6422.namprd11.prod.outlook.com (2603:10b6:8:c6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Wed, 18 Jun
 2025 05:28:43 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 05:28:43 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH] drm/i915/panel: register drm_panel and call
 prepare/unprepare for eDP
Thread-Topic: [PATCH] drm/i915/panel: register drm_panel and call
 prepare/unprepare for eDP
Thread-Index: AQHb312hNsDOtQQRsUGZdufhVKg2N7QHCnGAgAFYvcA=
Date: Wed, 18 Jun 2025 05:28:43 +0000
Message-ID: <IA0PR11MB7307CED3811C1531BFF7355DBA72A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com>
 <03326a6c7e533816fd8e247c388fcb4284610a88@intel.com>
In-Reply-To: <03326a6c7e533816fd8e247c388fcb4284610a88@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB6422:EE_
x-ms-office365-filtering-correlation-id: 24813194-767d-4b34-666c-08ddae28fd88
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?nexMmHYF82j5kB/Hsv+2n+QstITQ5D8KYHqUi81kj7hmFR/3FMbsGW/l4fn4?=
 =?us-ascii?Q?tTgwMRxGh0dYiF4j/PV5R2IVryxDFnBqsb1b8el1dU8o9a3gKYwD4BnFI8v2?=
 =?us-ascii?Q?IdhQKOdLvmSsowv9Tk4xmyS9k5nxAZ5ARELFV3UN5CfYHM1oMWDxBUU+D7cL?=
 =?us-ascii?Q?+HODhrGWnqTHBG+E/9pArgd+dvHbQ4rdDCSRGm+VUnUm7cVqJVsvf/cqIW1d?=
 =?us-ascii?Q?IcEjC54xfCNi90a+R6GhTwNVQ1+EPPTzqoCIbYUObsLJ/ZbWQ2hB49E7cmuT?=
 =?us-ascii?Q?GEjnjNOB66zO6A2lqm9OBWytEoVjzLdY3qKgiWhYIjgCyFTjfU4v4Wf0PLmc?=
 =?us-ascii?Q?axCCfDsoc94X3pJmqpekX49PggELeoEAJAhOwEEvSuZn7wTKgo52HoDQPWxE?=
 =?us-ascii?Q?DpSc7f+EEAbSsL3+dvC8SQWRuBfKscC4bYswqE5Awo4NEh9aok9nJ2NjeS7L?=
 =?us-ascii?Q?A9/k+kjmFpFYpSCxLClXWwt1XblPm6S95kr7AQUNSYXXfu/T8hdzrm8NNZRL?=
 =?us-ascii?Q?I95b320auYWa3I07JaPe/2x9aiYyiHvT4Q1BR7DvovB/s4lzFyAYkqKgqtd2?=
 =?us-ascii?Q?v2cEGjJthIEJZUNw27N+0KDp4BbMBDtDWD70tNTnsQG0KLFADD8AL7B4vQEg?=
 =?us-ascii?Q?CNGC3l63mnw/2yLSUhB/CpIS6I4bwSAceKP0Cu2YbtvwLdAo/qmiWsgVn2bv?=
 =?us-ascii?Q?HOOTPMrfuTzD2EV7KoS9Z0+PO7g50PyitpUkqIyqvs71aW53K8BdPQLw8JbE?=
 =?us-ascii?Q?kk/jCs6x+IzBLRyOxjeZOZ/cdFFz3B5I4jcb3buUXvH2TOMifb9T94nPhsOf?=
 =?us-ascii?Q?6/Q3R1hBciMsyGtSD1WMHmddntqE5Y9cBKCzH7WI/qDBzz0eAkfnnEN8mw6k?=
 =?us-ascii?Q?cW4PWTxKS3237Ta5syjiywijInM5CZ4Su53YKEBfkeYVAO03VttwgiYER4Bw?=
 =?us-ascii?Q?GxJG5+iZTLL9UdcMQB+9NNs70ty6cYrWxVsURt1wD3dILVo/wS8gGtzUj3B3?=
 =?us-ascii?Q?k/+xsKp1rqQ52DjSX2PyDugdb4A8f4HTCoSljr3390BV0e4VdtRubxR/8B22?=
 =?us-ascii?Q?6aB9efF8Oc0BnqbeLo4F4EdfHBf6BvS4bvNqGMjiJJYqcaz3+XJOdj7uyKGY?=
 =?us-ascii?Q?WCULL+VaymEYrujI1nMAWkHTw3GxejoO2e5TspjU2UDWH39FcH0+9yfLeLmy?=
 =?us-ascii?Q?8ZREwvqzT6Z8SVIGDO+6IxApZusP/6p2nkJd5ZJiDHiYuxOdC/mrbiNfCKQ0?=
 =?us-ascii?Q?nf1CINqoPKfNOkxDsGMNJ//ntRot2uH73WxW4sB6mc6r4T36/4WvPp1Wiz0a?=
 =?us-ascii?Q?DRwbSh4Kz+4rr4o1g6ivEDmCcKgSoSO7EVqXUcLi1uD0wWnJVx3kd9/gh2i3?=
 =?us-ascii?Q?C1vB1kdcpesNKK/UrHSZfToAHXun0R3qz+pgn8SQh6Ll9X/TS2AYbWr1Ck8K?=
 =?us-ascii?Q?Kw8GslLxKZDw9ut5uAHxr80S/qXHzLhdj/A4Cdtrlk9X+oaURWnrig=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Hr+xxB9MNQJYFMrKymW49x7fH6XcSqnHzxGqIyQYFVT2l6ISzR6JIZy08Wue?=
 =?us-ascii?Q?MvyTlnINg6rn5R/o6rv/7dLrcfvSDrqZtKcY3U2Hxw6j21XlUOukihGtQqah?=
 =?us-ascii?Q?hYICK/PL25dv7T6udLeeKAyYdx2hUnrI4ppy2iqSskdksO4rh49FM0ebub/f?=
 =?us-ascii?Q?LntcQIMh1sYNzRWC2Y62UNkAKVQ5y+SGV/lVC2i+EkmrHYHGitQb9dHDm7Y+?=
 =?us-ascii?Q?7dW4yn8j1m94SV5fJSiiu2KyN7kZ+4VhpVBLjrfzwstPzyzENKUvdHLaexZ4?=
 =?us-ascii?Q?o8Mx1EkseDKrny0aXcpvXs0nRsZLl93hw0AFX0T9WWi3DslqcjqO/HGMeDxK?=
 =?us-ascii?Q?LQyBwVwnBLOAERd/2NERpKY7g0hOJe0RM9pCG+fsyltHEWDGDp5uOpbcbG15?=
 =?us-ascii?Q?6kfao0FPb8P2OXv/i7RxCrgQOFditj0MDzA2/SvtdJdsJrrpNkV3+vw0Mbey?=
 =?us-ascii?Q?BRUEOdubxSvFnjZcvUOW3HjOPobEEBvzCKEHyVqk9WWFSZlmHrVLrenXQch0?=
 =?us-ascii?Q?+dHD82ulDTkd0XFj1WO+KQWsggzpZvgJjqleFAiIrq7y/PIgvow7TiHxeGqB?=
 =?us-ascii?Q?D5gYTFLNLBFIL6WAaMSTO8+Ul8pwQbeoxKLoyClDWSy2wdunwD8xOkIhTvbe?=
 =?us-ascii?Q?nBBwwEmSUStjEapc9CGE4gslBHiNgTzvbBv1HiTlxUISYrKUcbBGHhcJ7Ndm?=
 =?us-ascii?Q?3ExGNtZIbzdJ5VrHKKz9uL+ChuIX0d08GwEijHIry97zL6E5MqZu2aUWSBz/?=
 =?us-ascii?Q?7DIPFPSMK/8CGfFdHGsWjuG72wd6i7cnATtViLYgx+WFjCSEs0kFFx6+ZLWP?=
 =?us-ascii?Q?FtgbGCt+1M5XnpIaKBVhyPE1RHAcEmuoWg3deG3QvtJUCAAvmx+HDHx617D7?=
 =?us-ascii?Q?LIUSgV2nwBM74L1QIIF9qU1dmf4hHB089IbDCPQG/LzjMrVXAB5f0+4Tgp7+?=
 =?us-ascii?Q?9bzMIjnPiVrBmuzwG2XoOLyIMUuOaPXysgnFxYAzL+XW+nOF5VHTEEr78qG9?=
 =?us-ascii?Q?ma1hK3GP47ocIl7mVm8ynN039GCbzScpYxZj8fgOT0rGJJcdxXk9iyilucds?=
 =?us-ascii?Q?DKY7VBJTWld+BXAvgxirMh08yFk5gOh/Nny7hcxqAF4mX4CB5VIHOBER5zjg?=
 =?us-ascii?Q?x41WS8Q+Qu5Y3d4xSG9uXOjsdQ5wA5AGlIYjHdhgPhVlkdlps2cqYI1/jxuZ?=
 =?us-ascii?Q?Y9cUd5jBQudajXHQ9iA6UvCyeRDSvKRdxl4fSg0Taj67eYX4S+bfJdSV6TH/?=
 =?us-ascii?Q?oFwwFwrKbxJSpgZmldiUV0FPeOWur66wZhAwZeTjuAw1GDsfC4uEbB/93yUl?=
 =?us-ascii?Q?qsxmK5s6UoJUSW/nm8wleF5LEwmqFE4yyNyfSfbnzxTH9kLjYUbEq+FZU7PA?=
 =?us-ascii?Q?7GwwocbRSl2rFkbA9x2krOqrXzEN4rT3DwlYPI9DTo/wdaWYS70wTN1rhbng?=
 =?us-ascii?Q?uKvesfgZmXtNFkXYV4mu8jO3qjAiM4kpJOT+28ekG0mOYe3m+HHECosBCTv9?=
 =?us-ascii?Q?0PHYNhYb20H/cEkZHMggWAUMjkC2X7k7ro18C1HESPIOzlBuhkRujlLEjhDk?=
 =?us-ascii?Q?WwQp2ovCjucddBGWk+TCIPpJjO8PkhSqfpeuRDZjuEqUvkkKb5AECowPezmr?=
 =?us-ascii?Q?7VV6FxRUNdAyGia2TQfiie1rl8bqFAVMRoVD++Rr52BL?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24813194-767d-4b34-666c-08ddae28fd88
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2025 05:28:43.1676 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DpNrjOag0VD83ACsLfC0t+pcVc0GWWbFYHPCIMMPClWvArQcIJ6H83S5nSMHDpicbPIkYWcMs5GitFwkSmZJIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6422
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
> Sent: Tuesday, June 17, 2025 2:18 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> intel-xe@lists.freedesktop.org
> Cc: Lee, Shawn C <shawn.c.lee@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [PATCH] drm/i915/panel: register drm_panel and call
> prepare/unprepare for eDP
>=20
> On Tue, 17 Jun 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Allocate and register drm_panel to allow the panel_follower framework
> > to detect the eDP panel and pass drm_connector::kdev device to
> > drm_panel allocation for matching.
> > Call drm_panel_prepare/unprepare in ddi_enable for eDP to allow the
> > followers to get notified of the panel power state changes.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> > v1: Initial patch version based on the panel_follower added for DSI by
> > Jani.
> > ---
> >  drivers/gpu/drm/i915/display/intel_backlight.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_ddi.c       |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_dp.c        |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_dp.h        |  1 +
> >  drivers/gpu/drm/i915/display/intel_panel.c     | 20 ++++++++++++++++--=
--
> >  5 files changed, 25 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.h
> > b/drivers/gpu/drm/i915/display/intel_backlight.h
> > index
> >
> 339643f6389789a9b52c4c1d74e03d8f15a6efa6..ebeb6448188f0b8cf45edd10
> 9343
> > 9bd6b6e63111 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.h
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.h
> > @@ -18,6 +18,7 @@ enum pipe;
> >
> >  void intel_backlight_init_funcs(struct intel_panel *panel);  int
> > intel_backlight_setup(struct intel_connector *connector, enum pipe
> > pipe);
> > +void intel_edp_backlight_setup(struct intel_connector *connector);
> >  void intel_backlight_destroy(struct intel_panel *panel);
> >
> >  void intel_backlight_enable(const struct intel_crtc_state
> > *crtc_state, diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index
> >
> cbd1060e966431e0884aa9df7b5e6d2f27fde6d5..36aa6d14589d37614fe13ba1
> 5baf
> > 4c7e60014e2c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -73,6 +73,7 @@
> >  #include "intel_lspcon.h"
> >  #include "intel_mg_phy_regs.h"
> >  #include "intel_modeset_lock.h"
> > +#include "intel_panel.h"
> >  #include "intel_pfit.h"
> >  #include "intel_pps.h"
> >  #include "intel_psr.h"
> > @@ -3355,6 +3356,8 @@ static void intel_ddi_enable_dp(struct
> intel_atomic_state *state,
> >  	drm_connector_update_privacy_screen(conn_state);
> >  	intel_edp_backlight_on(crtc_state, conn_state);
> >
> > +	intel_panel_prepare(crtc_state, conn_state);
> > +
> >  	if (!intel_lspcon_active(dig_port) ||
> intel_dp_has_hdmi_sink(&dig_port->dp))
> >  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
> >
> > @@ -3552,6 +3555,7 @@ static void intel_ddi_disable_dp(struct
> > intel_atomic_state *state,
> >
> >  	intel_dp->link.active =3D false;
> >
> > +	intel_panel_unprepare(old_conn_state);
> >  	intel_psr_disable(intel_dp, old_crtc_state);
> >  	intel_alpm_disable(intel_dp);
> >  	intel_edp_backlight_off(old_conn_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index
> >
> 277b40b13948ed964f20aa1243f76aa263615360..451b6be6106d6ac244d23fe
> 2d997
> > b4f7b3e9f002 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -6464,9 +6464,9 @@ intel_edp_add_properties(struct intel_dp
> *intel_dp)
> >  						       fixed_mode->vdisplay);
> >  }
> >
> > -static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
> > -				      struct intel_connector *connector)
> > +void intel_edp_backlight_setup(struct intel_connector *connector)
>=20
> Why?
>=20
Thought of setting up the backlight from panel registration, now I
realize that may not be required, just registering backlight on panel_regis=
ter should be fine.

> >  {
> > +	struct intel_dp *intel_dp =3D intel_attached_dp(connector);
> >  	struct intel_display *display =3D to_intel_display(intel_dp);
> >  	enum pipe pipe =3D INVALID_PIPE;
> >
> > @@ -6627,7 +6627,7 @@ static bool intel_edp_init_connector(struct
> > intel_dp *intel_dp,
> >
> >  	intel_panel_init(connector, drm_edid);
> >
> > -	intel_edp_backlight_setup(intel_dp, connector);
> > +	intel_panel_register(connector);
>=20
> First, this is *way* too early to register the panel. Second, now it's be=
ing done
> twice, and you'll have errors at probe.
>=20
> This change is not needed.
>=20
Didn't realize that this is being done in intel_connector_register called f=
rom late_register.

> >
> >  	intel_edp_add_properties(intel_dp);
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index
> >
> 0657f568119662828344cfddbe876f2acf2596d9..2544783d3d5ad0d8e334fbe3
> a9ab
> > 874e7fee559e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct
> > intel_crtc_state *crtc_state,
> >
> >  int intel_dp_dsc_bpp_step_x16(const struct intel_connector
> > *connector);  void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp,
> > bool force_on_external);
> > +void intel_edp_backlight_setup(struct intel_connector *connector);
> >
> >  #endif /* __INTEL_DP_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> > b/drivers/gpu/drm/i915/display/intel_panel.c
> > index
> >
> f956919dc648eab507cdcca149672c1ce0173481..e884d9de3666b17197e3003
> af7bd
> > 9388b2889e6f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -511,11 +511,21 @@ int intel_panel_register(struct intel_connector
> *connector)
> >  	struct intel_panel *panel =3D &connector->panel;
> >  	int ret;
> >
> > -	ret =3D intel_backlight_device_register(connector);
> > -	if (ret)
> > -		return ret;
> > +	switch (connector->base.connector_type) {
> > +	case DRM_MODE_CONNECTOR_DSI:
> > +		ret =3D intel_backlight_device_register(connector);
> > +		if (ret)
> > +			return ret;
> > +		break;
> > +	case DRM_MODE_CONNECTOR_eDP:
> > +		intel_edp_backlight_setup(connector);
> > +		break;
> > +	default:
> > +		break;
> > +	}
>=20
> Yeah, this is completely wrong. Setup and register are two different phas=
es, and
> now you'll end up setting up backlight twice and not registering it even =
once for
> eDP.
>=20
> This change is not needed.
>=20
Will drop this.

Thanks and Regards,
Arun R Murthy
--------------------
> >
> > -	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_DSI)
> {
> > +	if (connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_DSI
> ||
> > +	    connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)
> {
> >  		struct device *dev =3D connector->base.kdev;
> >  		struct drm_panel *base;
> >
> > @@ -561,6 +571,7 @@ int intel_panel_register(struct intel_connector
> > *connector)
> >
> >  err:
> >  	intel_backlight_device_unregister(connector);
> > +	intel_backlight_destroy(panel);
>=20
> This is the register failure path, you can't call destroy here.
>=20
> >
> >  	return ret;
> >  }
> > @@ -573,6 +584,7 @@ void intel_panel_unregister(struct intel_connector
> *connector)
> >  		drm_panel_remove(panel->base);
> >
> >  	intel_backlight_device_unregister(connector);
> > +	intel_backlight_destroy(panel);
>=20
> This is the unregister path, you can't call destroy here.
>=20
> >  }
> >
> >  /* Notify followers, if any, about power being up. */
> >
> > ---
> > base-commit: 6f72990d9e0fe084afe257621edd730444a8bc52
> > change-id: 20250617-edp_panel-fb90b1c7362a
> >
> > Best regards,
>=20
> --
> Jani Nikula, Intel
