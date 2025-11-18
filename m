Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 783AFC68E97
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 11:50:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC7AF10E15E;
	Tue, 18 Nov 2025 10:50:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h44iWCFd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F76410E15E;
 Tue, 18 Nov 2025 10:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763463034; x=1794999034;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=X+WZJx0oxSFpz3FKB1O3Xhs2JCXvtsWYf214OgX37hg=;
 b=h44iWCFdNyNqxaEUg/zokzwenCLAGvaPvQLfG5Fq/F2+v54RRl6hocct
 LEN7q0sRLtZAKOQCOyS8Ec3qESWSWyKfqdbFxNIlJrFYa4AmEI0Q7fsdX
 6SAF7/1QuzdblRd96Djq5+qM/nyjVRstZcs6skI17UKi1G31hAIpTRT6p
 ncQ0CduB1rb/U+KvLmHy5DjlC3WtiohQHEu6V5/uKuAWkuXhfx4qTR0/m
 VaxNj9W0y1egBgwiIOaUjQvMPnV+NXv5CcskQtB5rDh6F0K8XnmHCJzY9
 JfVNLxSkUz4DV3Ep9RyWdlJplFn/tKF91eXP8sG8rqQYl31/+avUv6vhh Q==;
X-CSE-ConnectionGUID: bEHJGElZTg+ta14+YPRl0w==
X-CSE-MsgGUID: U2P1br9lQU+8ORfU99irfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="64481786"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="64481786"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 02:50:34 -0800
X-CSE-ConnectionGUID: NbQ3tny2QiyWUFzxiZEnqQ==
X-CSE-MsgGUID: Eu9ejyVsRqOtU+RXsJfkdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190522617"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 02:50:34 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 02:50:33 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 02:50:33 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 02:50:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R7IXnhnI9xkrU2e9LJdGO1jG+GOQh++F4oR9U3jK5J++xIT120x9LYmoAMnokvQvcs3FBC3RwONMF0z/PvBrDbWMrPChMzd9Tvm6A7FKKPeSOMY3dv3bLovXMjPpHRVBwVprat3APsAZCQq1Z3qU5p/kapuHQ4K92nbR4jFwtXbmPmTWYWPOTpfn+etfF9QE/a7QYvE25C3UUjYVdhokd+/w2ny6r/HBKeJ1uV/L1Ck9l1gAAXdtFqv0cYL28Y/K1ZAT0bC9m0zuCgHjtuxU2bvXyMVEMt4NHTOIzceL0CXqMqi4hh/n/wRMr696BJ1j9E42Om7JVbxgghM+o+0N3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IQtuMMatD5pFXo3bMMmuIV/7ANoBS08+uX173PN2g9g=;
 b=vXJaWIbrebAobpUqWTUS/+9KF3fpEoFbgwu/J6ZFAtZ8Pv5lnYMXjbBM39I+S6c8I0uujsPI70gorPUTT0llzNmC56BC8pL7UV/YwezdqSZMJPCt3IUBsfFc87iSjJdD4D0GD8N8QjE9zaQkHAbEzSMur/H4AeaTCi1k/i00R8G5/q+qzy//rKfdeMVRTiX7hU74lt3e6C8vzN1Az1O8+akzqKn3cqfUHVybEU9imlGeuR1hsaJyJPbtNX8/gdGo9sy9x2IZG5fUa3/3oqhba9xDBUYn7XBydtZ90HgXrFXG2ws2lfKbfjTQkeFvVrahsenniA90u3pkwHKJNFn7Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB4840.namprd11.prod.outlook.com (2603:10b6:510:43::16)
 by DM4PR11MB6431.namprd11.prod.outlook.com (2603:10b6:8:b8::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9320.20; Tue, 18 Nov 2025 10:50:31 +0000
Received: from PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd]) by PH0PR11MB4840.namprd11.prod.outlook.com
 ([fe80::7044:24a0:758a:4bfd%2]) with mapi id 15.20.9343.009; Tue, 18 Nov 2025
 10:50:31 +0000
Date: Tue, 18 Nov 2025 12:50:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
Message-ID: <aRxPcb7tHZlHZf1B@ideak-desk>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-32-mika.kahola@intel.com>
 <DM3PPF208195D8DAE2A5842846681C9EBE2E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM3PPF208195D8DAE2A5842846681C9EBE2E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO2P265CA0258.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::30) To PH0PR11MB4840.namprd11.prod.outlook.com
 (2603:10b6:510:43::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB4840:EE_|DM4PR11MB6431:EE_
X-MS-Office365-Filtering-Correlation-Id: 06391baa-3884-4e01-11e3-08de26904aec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?68/CGNaVHOXl7FHYFZkze8KIXPaicNYSU3Z8v/uld27lrYVr9hzHNQdm6g/K?=
 =?us-ascii?Q?iJMpIDmGjtGiWELZ5h/3/+QfqW0kkm/99Eyk1ndaJ7NnOKMrmkQeAmjSUhtk?=
 =?us-ascii?Q?zhDTfO7UKpCEFLYW0VBkJt7ofrtQ6HKRz1qmx6y6hkymkRLDAQ0BweFoi6Tr?=
 =?us-ascii?Q?5lJ3lZgOyJwKIRgozTkBwsbht3vGktZW/wNPz189L5aw4Bjr7rxHchSpU5H8?=
 =?us-ascii?Q?Ie0d99Z1uVO3j+C1Vwg5Sjd+Ku0Hb/2eABdfaYAp4S596khxBKkO/ULO7r3V?=
 =?us-ascii?Q?x3u7fweazm+gMh2VEcjhBrXA6vdTj2Qh3E+TZ0IQlSs4vMZNslThsR6hTDOs?=
 =?us-ascii?Q?yEAGzelCKW5QKkMJvDkpGg0/wsyZt7kVIlpmmDuF56yNZUaKqXcGNQdExpag?=
 =?us-ascii?Q?97yck98trw9MCBRUFsABjWA2qk5jJ/GVTOZOD/NwS91+N1cfIzTm2lT8Trzc?=
 =?us-ascii?Q?RNGCjZIeaos4gDDQlc8pCuhYdQTP6BbGRv/Yp5QLzagrP7XR0a74IJHXn4P0?=
 =?us-ascii?Q?A/TadHRH/CLs/S3n3EK3FXoOEYMHU++FBaa+0LmxTtnGmB8pw8OYh2Q+2KBi?=
 =?us-ascii?Q?VJiEPSOsTeNy4oxtTlbocr+8FaO1WHIuNV/Ox3ohvFtxlP80uXjED54U7ECJ?=
 =?us-ascii?Q?z2pNNqNfPNWFRRT+jPB+Hc2MY3LfqcLLrf+VsEft6fhhu+ybZ8+zNSZ7fesv?=
 =?us-ascii?Q?GaMyNkGrHzRryOte0tP5dnLC7eyKwyywDJ0Zp0kXN/B6c5mOLgGz7lJ2/iFJ?=
 =?us-ascii?Q?njPMB0ZYZEkwAlTgDpzeVH4Yan0W36JCwS55A2aR0Q3oJ6ODKUoYBJt7Ayy+?=
 =?us-ascii?Q?u8YhSe2yVLok/kCNTO0iFHCQPg2+iXicihVv0pE5QMusDFaWlPKGGMMWP0p2?=
 =?us-ascii?Q?K4C2BWlyH3l0gWfJUJZJbPCFEHj2t/dPDNIZ2yu97x3OWaWf1S/SnS5bxQT6?=
 =?us-ascii?Q?DCx1UrA70+IVR6Nh63N+f6mXbzMIro5JDVf/+5aeZ/w55BMUGOvtMa4h83Do?=
 =?us-ascii?Q?8+rHls5ajG5GiPlikj5Ui6bYrZO4ZLXJy2FOugEp9bf6zKR4sJzvrPoLaJKY?=
 =?us-ascii?Q?CeFBw2HjCYWBtoHQhaanOsBbwUMWmknSX/neri4e8Txuf82TkbzU0AVgCEva?=
 =?us-ascii?Q?MXBoBfnmNgjERD9iGV0KC83d8jEUNmWB9XKC0R3DM2Z6S/a5Un5C3uYqO3XN?=
 =?us-ascii?Q?NwG+zFvNOvYUdb74nSFmrtofNgkEs6k6xJe7MPzivr0jdbspv41hYaDizQKf?=
 =?us-ascii?Q?4gcZyVi4UTr698l3NWFZ0DDixAVH0IftHD7vV2cWHx5Bvsi7Z854VKhyBs9z?=
 =?us-ascii?Q?IOt74Z0KpnjtA9RjXlQsszV19IhRfKiW477VaC09M2r1Ap3B7ExOL/Rin78x?=
 =?us-ascii?Q?jzsj+VGrXrA13iSp06uHOmWz7fVKv6+D4gW6cPazhNv3Q0FlcZJJUCzdszMC?=
 =?us-ascii?Q?Vco8Uo6rJXoWP7L6f8AEBVNwbWXtb14h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB4840.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nGwjqk56VD8woUCNcYuO3hjowUMVJvEDiIz4CigrsWgmPFYFaW/AxyKR80aO?=
 =?us-ascii?Q?I1efBujq/wkIWL76DKLKZwrTKMgxWQKgvl2sPEv9L8zGaw2DKlOD155zueHZ?=
 =?us-ascii?Q?PB/GHFq0ZT8mpfcoWN2MSL4SgAIXTX6Kv2+k3xBDe08vgkEVDkBteVbzJj/X?=
 =?us-ascii?Q?xVf/mm4cWiuUsV+qQ2YDNBgWJwHC5NuBseaPO5SVWhr2acOpgCiv0bVKOccw?=
 =?us-ascii?Q?heeKI6AtweLybr6xxTwQvnHFJ+5MJFwQmF3Ygy39LLH43iAH28CyFMZl8qMN?=
 =?us-ascii?Q?Sh5u5rMT9fZN44iBZy4OtvLlnR8P4LKKRHMt9dxWaSArqNkVa5aAFVd1A5ha?=
 =?us-ascii?Q?Vk/ijMY/R1FTv9nj8cUnddH4Ku+8G9m2D1nwL5YXZK3XLtGQhwOnOW14XntF?=
 =?us-ascii?Q?8s/wlPzx0kmQkzaaqXxNSXFGr6smYuZNhYeRY5dRy6g30UcKPFzwHJ8BLdLV?=
 =?us-ascii?Q?1gQcBHg28lYG2ldPMRkE4HYg6ORfl6JplpxkTSR0jfG1MiViNfXm1dP1WWJI?=
 =?us-ascii?Q?sv99rqTKS96EfFh/3uGSALp4IWQwJsKs6DMex6ZrNfpULJ6ziPn1y47R+xUP?=
 =?us-ascii?Q?sVB25mtRyvKzO5P+WYZhkXfNp/CaQg0NeSvwbd9IPDsihh8E5Em2ZdlBplnf?=
 =?us-ascii?Q?hZQSI1nWqmZgjm7XqClRXbeZLfKZOg/QC4AmQDetauAXhp0cl3IwcjqxJyn/?=
 =?us-ascii?Q?mcCSj5cu2WHIjZcLvFF+60tuKsOeSDH1gfmexPCpm553t2+12tGc/l3siju0?=
 =?us-ascii?Q?gf3swOqS2coeEPWNrxZMiNNP5P4APfUuGuI8Qx+yW3OOVpotv+vilTxS5H9e?=
 =?us-ascii?Q?GewBvH7O/WZSwc0TnVPYhP0Xs2ItsY6QvYIM3N4lL6C/G+/wCFIC8wxO1Ml8?=
 =?us-ascii?Q?F87e199i4n4lgCwh4sGafLUs7NQ9lYjUgnmA9L9IyZ8SOcDvaUtOdjDtmIjm?=
 =?us-ascii?Q?kWBH8xu4afp1gaUDiu/I6yDm/u4UlxBXhvg0JW5bDYgAoF8SZAVstW692Ph7?=
 =?us-ascii?Q?GnAkjp3AutcVD+xe5U0PQMW3DnGGxnmN+V6tEQUOpyDPhh/lqODXXqAxTgsu?=
 =?us-ascii?Q?el2OfLk44QPeHy1s2fJYKbCzf95dJcBYnP9iNl6+/yOYpA9r+SC1PyabB/Nc?=
 =?us-ascii?Q?uCRhuvjYDL5d4Tx37Q8KnK5FWP9c0+zMjrOJLklUr4v9GrrgcKorz2apwovu?=
 =?us-ascii?Q?8z4CtOdLDV831HpsxKfRI+LlFfyUpI+XVhrS5Up3iBkqLvim7BNGNPYmx1Fj?=
 =?us-ascii?Q?I6EV6yXzswnEGqKltV7MNkJ+V/o4xxrQMqd11bNNXkp8bd6j/rmid1191ann?=
 =?us-ascii?Q?Q9sFEkYXMKSwUqSP1luhG2jouYoMGP/wnRWm9DOC6bP3mt3kuo3tA2XovT8y?=
 =?us-ascii?Q?8sF8yjP+zoZ5HZddTrF0yP+PX44rHDOQVovVVuQ2fu8sXmucZOfr6StTHNjR?=
 =?us-ascii?Q?e7o41y2CyymSTn5Xi38MYB4EwwlKwT+Ap//h9xP6vRFL968Gs0JdjN6RAe10?=
 =?us-ascii?Q?iyhXaI40Jyip8RkuztRMJms2cp/6DIDJPRXznK+ajNBWmOvREJU8ZodTp6Wq?=
 =?us-ascii?Q?34Ck0cV+axb3Dy073IAy94ZLdzU4w6o1pIvmrQNGB+ffJLjGrXsoZFY+tZN8?=
 =?us-ascii?Q?K6ar7QaM0QRjji5SOvysW9waGDWG25o+u1mWHqkCtv0T?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06391baa-3884-4e01-11e3-08de26904aec
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB4840.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2025 10:50:31.2311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c+AVNrr/215Hw+WzWkjMq/IuQ5ZRhBW+DkTdXnQs2nXSQNb+36Ts0MC52dhXcNdq8y5DnDIEkQEyVJorWVp5/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6431
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

On Tue, Nov 18, 2025 at 06:38:13AM +0200, Suraj Kandpal wrote:
> [...]
> > +static const struct intel_dpll_funcs mtl_tbt_pll_funcs = {
> > +	.enable = mtl_tbt_pll_enable,
> > +	.disable = mtl_tbt_pll_disable,
> > +	.get_hw_state = intel_mtl_tbt_pll_readout_hw_state,
> > +	.get_freq = mtl_tbt_pll_get_freq,
> > +};
> > +
> >  static const struct dpll_info mtl_plls[] = {
> >  	{ .name = "DPLL 0", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_DPLL0, },
> >  	{ .name = "DPLL 1", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_DPLL1, },
> > -	/* TODO: Add TBT PLL */
> > +	{ .name = "TBT PLL", .funcs = &mtl_tbt_pll_funcs, .id = DPLL_ID_ICL_TBTPLL,
> > +	  .is_alt_port_dpll = true, .always_on = true },
> >  	{ .name = "TC PLL 1", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL1, },
> >  	{ .name = "TC PLL 2", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL2, },
> >  	{ .name = "TC PLL 3", .funcs = &mtl_pll_funcs, .id = DPLL_ID_ICL_MGPLL3, },
> > @@ -4470,7 +4502,8 @@ static int
> > mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
> >  	struct icl_port_dpll *port_dpll;
> >  	int ret;
> > 
> > -	/* TODO: Add state calculation for TBT PLL */
> > +	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> 
> Should this be DPLL_DEFAULT or MG_PHY

The Thunderbolt PLL state should be stored to the ICL_PORT_DPLL_DEFAULT
port PLL index, as above.

> 
> Regards,
> Suraj Kandpal
> 
> > +	intel_mtl_tbt_pll_calc_state(&port_dpll->hw_state);
> > 
> >  	port_dpll = &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> >  	ret = intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_state);
> > --
> > 2.34.1
> 
