Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC80C9D19F
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 22:35:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C267F10E6DF;
	Tue,  2 Dec 2025 21:35:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvxX8IJE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B9B410E6DF;
 Tue,  2 Dec 2025 21:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764711319; x=1796247319;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Wo2y4y+levO41UEmmgSbcfzLMuoWeSbWPQqFRBRLTAs=;
 b=LvxX8IJErVa6HKe4G+RH32TQThJbhbWuJAIFOCLGKqbFQkC6Q0vuRhMQ
 sMgME+Qmc2tmSufxoHiBLGSFpN1FFaq7JN2pN+lk/ksGohoAy4wjDk2Gc
 X0v+4RcPo0zM63aSkjmVh79Nrzvf0Zw0u9tVUOGgRUI9PT6eNbrqEfXbP
 92Oeisb79H42JoTb1Yw1nEWxS4bP02YEL0ZndEAn4ZlXX/ZcN87GSz51n
 siZx4j/3EjsxqaJMQk1S6+thQjK+Bri+vgOLZLDjMnDc7JsJVAQUbzkGJ
 Fnf8ZQp/ewy0x4z+o9U+rzCQ4MhWZaST5hxuaNid8AbWkGo4wM23/5iuS A==;
X-CSE-ConnectionGUID: Y2QxzJgNSkWKNi5MN9wnsQ==
X-CSE-MsgGUID: lxPm0uUVQlei5nAFoRvZVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="70547311"
X-IronPort-AV: E=Sophos;i="6.20,244,1758610800"; d="scan'208";a="70547311"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 13:35:19 -0800
X-CSE-ConnectionGUID: pnzsI74zR9ixG7c6X3ecLg==
X-CSE-MsgGUID: 6m24ZgwQRYG1BqAxuu76IQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,244,1758610800"; d="scan'208";a="217839097"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2025 13:35:18 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 13:35:17 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 2 Dec 2025 13:35:17 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 2 Dec 2025 13:35:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=INNeeeoojhLxZA+Tbrz72IIYrzm1YAXsH/w5+GfX8a67Y6luuMF0pgzEhKti6UxSC1cQnT/jQQioc5L/0QoKlOE+BeMtsBupWWKdQVvP2i70HYe3kjFMuTKqBNBryHPX9OZSSNNFMzTBq/OhejlCOfYekRAzxpeyxl7vUKZone55/bAa7+Zqwo6VM/Mf3hOr/nD+0SOa6NN0Aq3QRwvTG3xUPkzjgHBZaiUCwI8BUF9ipwkt9RUX5DZiwK02Fb3wPDSDcKwoHg3qC/z2oUgnvQoKhDmF0Th4APu9fQzVxwKY/kC2yEGr3RrlOx1oiZFWhKD9FXQac9ancW6aOQjxPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o7YzIQvbeG3vxFBH3Apq7k1+0yOqL6+bri9z/CqhPB8=;
 b=RarN4qB7MJU6l0hP3insu0djlGmX1TU6Bx4h04bnO1GB+vjdJI8pOuHcduQ7qptK74Ckj6/0VezTTdFEJHxvoy/xOQ4UKOIfp6p2Z6it6NJz0iJxa5MmI6g3FempKlUdFpMMcmyD0w4CED731LsTUrgEm1sFuKfXTVMqpXwEeLBGY05fMMZTIROfKrqmpRruCLl3pAJ8kmYSg4p29K2BCdN3SE9c3rzbh70otFih8AhqGMl3Rjetp4efcJOFu6J3DONygVUKf/uRt8YS7HMgGxbYltZ2AYOsW5bfgCKszln1oNfe2/Egq47C+SmHkL6tvQ2nTM2TcaZo1eOn4v51Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB7312.namprd11.prod.outlook.com (2603:10b6:8:11f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Tue, 2 Dec
 2025 21:35:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Tue, 2 Dec 2025
 21:35:16 +0000
Date: Tue, 2 Dec 2025 23:35:11 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/dmc: fix an unlikely NULL pointer deference at
 probe
Message-ID: <aS9bj8RRYYc01Rzs@ideak-desk>
References: <20251202183950.2450315-1-jani.nikula@intel.com>
 <aS9ZGmXG_n0IXv-N@ideak-desk>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aS9ZGmXG_n0IXv-N@ideak-desk>
X-ClientProxiedBy: LO4P123CA0075.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:190::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB7312:EE_
X-MS-Office365-Filtering-Correlation-Id: e385e41f-8c42-4ebb-5e13-08de31eaaefa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AYrwZM73XWUtskeohf/EeDrhAguOvdhMc9RfnA3HaEzenyZyAwQi0S3PqSEE?=
 =?us-ascii?Q?/9ZqFYLCth9NSfH4X64QcidrEX8k+enc4JZ7hOjKVCNM3JjBigjL4V1q9P9a?=
 =?us-ascii?Q?RJPUOAh2Z1rsQzyfjZ1IlO3sJUp/wheV9CdjCEUhUUndzv3igZ/iTxYppEKm?=
 =?us-ascii?Q?AIKXH28jok2HsYb9i8K/vJBlhIO7Avr/og+BwPlTS/1xC/j3w0bM12SOlbL1?=
 =?us-ascii?Q?+4RxVexzqC9WKWBxy8TQFlVbEqzoLZZjavlDJz34TpezW2nYEsJ5LRyd6OS0?=
 =?us-ascii?Q?/JUnIaQlJC0/ne4TuqjkUhVfe20fOXQCng/zbfSZHudGr6YnN+9ExkDTgGBm?=
 =?us-ascii?Q?gLod4M5RADGPzxvpMxVcoF5IHdSHlYR81yFDttf2Q1w6XC8qmigM9Js6WlLz?=
 =?us-ascii?Q?geJD9MiqEAlAu9Ir+d1NCmoPlFUYKGpv9/PcD/BM1HSVmu36nDpc+RafDqpQ?=
 =?us-ascii?Q?pXLnyHL1XwPcMQavWPKkriGYIWSqQU0Dx14387xvz1kOYeX/CIisuiq0Yjwt?=
 =?us-ascii?Q?GGp40tHwlu+3djf22C8YikjAAbmHvZEhA8KUP7p5zPglIL7nPcTMbuBku25w?=
 =?us-ascii?Q?2n4yIKW5Tt7g3EKpu+k8UyZzy3mUyWrUogPPUnliJNUr5TONFsimHfXFGKsY?=
 =?us-ascii?Q?VYSOV1f2o2kBQ7t8fJROVV1QxZxCvBxEROoXOrH1eT3/xLi6+Mqw66kLaoDC?=
 =?us-ascii?Q?OUVBWd+hTTpUDcquNPgfoKRvqEhrL/mCF0HQol/n8t7XSmdKxJcHvVVXNczH?=
 =?us-ascii?Q?EQRvG4+GZxEPSs55s/CDGfc+HbUHoSmRoJRoFMYwmm4ukm0ifeSyuInS84My?=
 =?us-ascii?Q?ZWGgu/jQ2enQFD+6Yr5Co5QFCFKwyRwptruV5JRiym8Ytt17QaMUSwAFduNf?=
 =?us-ascii?Q?AWSUYq0RJ0EjvrnKAX0XOGYjqExBatCWhMt/1FkX3tJZQJiVuVd/awqmgffz?=
 =?us-ascii?Q?seD89QKd12CuW1o8fQSPVJp/InAAQI/N4/AOSSaaZ8GT7c6cqi3QkagMaA/J?=
 =?us-ascii?Q?ifgkU3xWh0TYaandsoZg3FsqzKvFFUN0tqTwKrdHaF+/0Zg83pay5E6d3x1n?=
 =?us-ascii?Q?2wJWwzsvuzXUzCilcUH2MptqA0RHfDXOpLJu9m7c6PYmj1WUMbBBkfada9Aj?=
 =?us-ascii?Q?sHv6Ef01ddvE4441wxokNlKCmR7mA7zG5p2NLabiELR+HbTKNPB2bklpPipV?=
 =?us-ascii?Q?uy8jqy4fFt0EE08iUiQ8iEqZv5MRD/d+iOMi3smJkgli20ssbwrhMbczZrdo?=
 =?us-ascii?Q?gx1f2ZmGNs+xiLN7aZt/b2N4O3R5nUWAolrewNCVlvaNFGcxVHV1CsOrr1Ax?=
 =?us-ascii?Q?BTY+IbvuamUTwr8Z556P2bMrvCjpyCdTBCgJOsORT4eJXel0/UrCRtGgtQa5?=
 =?us-ascii?Q?J1v2Z+g1LL08T3G2wpFYlSFzum9lj9vnMbCJu0C0/z8Z/yKSdlCmEsaZ3973?=
 =?us-ascii?Q?w+vtVPN0FtAfkUvQtkye/Nhn2xl7GV1m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jPOrYte6gEm7aOoDysHeFI57Zxoy11EFqruoGhTqBhLVpqXRJmEqIkng6qoD?=
 =?us-ascii?Q?dQAjBaCMgjDvzHoqu1j9Wz4IqTFe9MHw82r2TYFsTQ+InmwF+kZB8cBf4/ou?=
 =?us-ascii?Q?haKRZQAPd7cItfzv0m1EVIzrC3KmMJx4xTHzUvK/5TPim0+nYWiQI7QYLeFX?=
 =?us-ascii?Q?ReTeyoGIZBu0Js/rD+7UFc3/7h4BmpP1UU1sLH1UPrE/Bk8T6hoX6tkmyusS?=
 =?us-ascii?Q?HldJE5R2hTiIoDWhtxgm8wO17qWPpkvt0Tx/+srCur3QFbL+uh/SQIcjUM5k?=
 =?us-ascii?Q?yghW3JMqLlno8UG1f1BeoRCnQTVfcjoVVIwNLgQgOOUyFIHrT3Kf/YunOXc9?=
 =?us-ascii?Q?ffIj8XET5FQSGObmRK34YBF4JN7CwHaV9NiEYr19TxkSDmCFKzRwwyfFqtAN?=
 =?us-ascii?Q?D/pcdWxLJ+nzCO63Zcw9dy7PNnjZlVolyZkIFTSg7NwUXpqOhhCiKHBPNUR6?=
 =?us-ascii?Q?o8ssTs7WxQtu9/qUBncThcn2+1wsipNb5KtetUwaZjctRhOnIw3ygN1b0i0W?=
 =?us-ascii?Q?+ZxOA5LqfGZ1hqQl5i5lEwgBUKV51cU1U6LJYkY0Pq+TNEiI3w6yfHzlnWI0?=
 =?us-ascii?Q?gk0bD1SLS4jd4erR2vs56evr090zqnmSpiqF6zeznMeO9sdQ9tLzanGrczMG?=
 =?us-ascii?Q?/St9nxs/CdWHYr8IYL1Bh11gqdAGkWNGTt/YjMl3+uhzprxLVvwcKI+yPa9d?=
 =?us-ascii?Q?r/aX7LamZ8EfFJnrk7/WWpyTmxigDQ0z+5F59aw3YWqZaRm2tuVrmbZ6SaOH?=
 =?us-ascii?Q?wHem2NUvWK9wLtZc7kQD/+/PCKUjo8FxLzpfDadx8YJVUJRXdRQd+NKq4kXN?=
 =?us-ascii?Q?lH15Cj6od9r4xyKjIIeJjXQs17ZfGQj1fQ4IRRpsg4S9ds6m3pUie9ibboTS?=
 =?us-ascii?Q?q2vu9h5XlComOAKSCnVZRzRfAQzUrxc28QV/4uPI7s8/NUOFzNO8x5uTV1yB?=
 =?us-ascii?Q?zicfsTqqYzi8YUtFC8Dxj5r2ea5NWsBIjiaabw3J+xnwlyCbyh3kMe07OYHM?=
 =?us-ascii?Q?zFN7LmBg0uJ32KZeWEjVO4WXxxSNDeU8sd+vJzZYOMSNrfSmh0Ij5S3UiPF6?=
 =?us-ascii?Q?Fx1Gagz1VuCSjfvkcZthI4LgKthy+qaHM4qo0Eo5gvbscw0llC7ir5ZOJSxm?=
 =?us-ascii?Q?E5MRgIqSgs9Pd9+nfZ0YATY/pi25P3bjW6bmEV5U63ztdg4Ty6NsbIa/J7RC?=
 =?us-ascii?Q?pk9M+r+5tnLALV2vpPKeurTumT3k6NDOT7vPuLeodUNgTYsHQ2CF7jXEnHAS?=
 =?us-ascii?Q?YogRSl/tis90GlDLN+vH4o6GNdwO4ylRuP9q5uaZCY9F4KWvZFNWuVK1Ljxx?=
 =?us-ascii?Q?89rNCbMw6MziJBF/RobsIx2kF198sYvh9nU6Tm9nCflpEno6ToyeThVcn2Cn?=
 =?us-ascii?Q?FYrRpy+bH7ItjfL2g4LXCCahPnLIGK9hD02E1E0RtsB5irMI9KJ9Cr2T0Py2?=
 =?us-ascii?Q?N9tE0NB7IcDJy98Vmox9zDsjX+3FBLC4IiB/FZGWTySfWr1A5DyRCRMBEPiK?=
 =?us-ascii?Q?+9mrXC2A0xCRwwWewAJRsu9ZEX4NUQ3jFSSFptfuAkxRw8imyLTG+myKL0oM?=
 =?us-ascii?Q?HObz5p1sceqtDWIJXK/ppz2Y1tjWJf8c0v9M8EeJR2gZYeKfuGIKaQk/SGUv?=
 =?us-ascii?Q?u5rci32kRsKpaTBPIakJeTF1NvUz8zb+X/cFRqqGTCSN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e385e41f-8c42-4ebb-5e13-08de31eaaefa
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2025 21:35:16.1725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: beGh9YGHqgJD/OPEJxeocUE7bvMK1mI00V8vwtISvqhZIiPXrmfPfnBZ+x9z0IuBjAhwE7iRDnpGujwy82/3pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7312
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

On Tue, Dec 02, 2025 at 11:24:42PM +0200, Imre Deak wrote:
> On Tue, Dec 02, 2025 at 08:39:50PM +0200, Jani Nikula wrote:
> > intel_dmc_update_dc6_allowed_count() oopses when DMC hasn't been
> > initialized, and dmc is thus NULL.
> > 
> > That would be the case when the call path is
> > intel_power_domains_init_hw() -> {skl,bxt,icl}_display_core_init() ->
> > gen9_set_dc_state() -> intel_dmc_update_dc6_allowed_count(), as
> > intel_power_domains_init_hw() is called *before* intel_dmc_init().
> > 
> > However, gen9_set_dc_state() calls intel_dmc_update_dc6_allowed_count()
> > conditionally, depending on the current and target DC states. At probe,
> > the target is disabled, but if DC6 is enabled, the function is called,
> > and an oops follows. Apparently it's quite unlikely that DC6 is enabled
> > at probe, as we haven't seen this failure mode before.
> > 
> > Add NULL checks and switch the dmc->display references to just display.
> > 
> > Fixes: 88c1f9a4d36d ("drm/i915/dmc: Create debugfs entry for dc6 counter")
> > Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: <stable@vger.kernel.org> # v6.16+
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > 
> > ---
> > 
> > Rare case, but this may also throw off the rc6 counting in debugfs when
> > it does happen.
> 
> Yes, I missed the case where the driver is being loaded while DC6 is
> enabled, this is what happens for the reporter:
> 
> i915 0000:00:04.0: [drm] *ERROR* DC state mismatch (0x0 -> 0x2)
> 
> That's odd, as DC6 requires the DMC firmware, which - if it's indeed
> loaded by BIOS for instance - will be overwritten by the driver, not a
> well specified sequence (even though the driver is trying to handle it
> correctly by disabling any active firmware handler).
> 
> But as you pointed out this would also throw off the cooked-up DC6
> counter tracking,

Actually the patch would keep the counter working, as the counter
wouldn't be updated in the dmc==NULL case. However I still think the
correct fix would be to check the correct DC state, which from the POV
of the counter tracking is the driver's version of the state, not the HW
state.

> so could instead the counter update depend on the
> driver's DC state instead of the HW state? I.e. set
> gen9_set_dc_state()/dc6_was_enabled,
> intel_dmc_get_dc6_allowed_count()/dc6_enable if power_domains->dc_state
> says that DC6 was indeed enabled by the driver (instead of checking the
> HW state).
> 
> That would fix the reporter's oops when calling
> intel_dmc_update_dc6_allowed_count(start_tracking=false), by not calling
> it if the driver hasn't actually enabled DC6 and it would also keep the
> DC6 counter tracking correct.
> 
> intel_dmc_update_dc6_allowed_count(start_tracking=true) would be also
> guaranteed to be called only once the firmware is loaded, as until that
> point enabling DC6 is blocked (by holding a reference on the DC_off
> power well).
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > index 2fb6fec6dc99..169bbbc91f6d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > @@ -1570,10 +1570,10 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display,
> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >  	u32 dc5_cur_count;
> >  
> > -	if (DISPLAY_VER(dmc->display) < 14)
> > +	if (!dmc || DISPLAY_VER(display) < 14)
> >  		return;
> >  
> > -	dc5_cur_count = intel_de_read(dmc->display, DG1_DMC_DEBUG_DC5_COUNT);
> > +	dc5_cur_count = intel_de_read(display, DG1_DMC_DEBUG_DC5_COUNT);
> >  
> >  	if (!start_tracking)
> >  		dmc->dc6_allowed.count += dc5_cur_count - dmc->dc6_allowed.dc5_start;
> > @@ -1587,7 +1587,7 @@ static bool intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *
> >  	struct intel_dmc *dmc = display_to_dmc(display);
> >  	bool dc6_enabled;
> >  
> > -	if (DISPLAY_VER(display) < 14)
> > +	if (!dmc || DISPLAY_VER(display) < 14)
> >  		return false;
> >  
> >  	mutex_lock(&power_domains->lock);
> > -- 
> > 2.47.3
> > 
