Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 383F1918658
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 17:55:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE31D10E92B;
	Wed, 26 Jun 2024 15:55:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J89tGb/L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D438510E92B;
 Wed, 26 Jun 2024 15:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719417350; x=1750953350;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ev9mZfGxxuPExgfoaixdHIBwxC++nNzMBB7fXfCfOek=;
 b=J89tGb/LgbmWomM4kemzD6+xdkHy3uGMLjM9BLlaqrepzCuQypbjYVGw
 816UHeoa8jAakCBNzmEG4xvzsoOxPI57Mf97vlbKiPI3II84TVnGSraqg
 YA2mz8zh1+x+LZLTMZZBSryF1WLFQM1/I1hZEnYmQcNVT9sPxKRTsOFcD
 YxevPZMljrB1P93KI6HiLCHtbBJ5+Zd4NackzKdCWpo961PqOWyGO76k2
 4NKgBfTWZ/372nS+jNUUKLhlIcqSQLcPZiwrQTn4z43u9u4fpg+fgcmmD
 Cdx0RJFgNkZoIYBIsoDajcDPNDLECS4KfCeJ0Zk+X7ouFAq2fPUFdOh2e g==;
X-CSE-ConnectionGUID: /Bwx/G90T1aeKiFkBNXQGQ==
X-CSE-MsgGUID: VHOjjxlGRaSFlK0ljBpcKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16336397"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16336397"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:55:49 -0700
X-CSE-ConnectionGUID: 1z90cGsOQ8GqrzXzFzlG9A==
X-CSE-MsgGUID: WlyMtzrgRl6xTpIL2H79hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48500194"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 08:55:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 08:55:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 08:55:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 08:55:48 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 08:55:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGF13DO8kt+SgjYB2L+JB0uuxFDrdtN0xvL1zxHI6rUMrQT9M4oj7+7TRlKbZsUhl9VhJs/Cr6sG89aJ3RV5llI+4v1Y7SCDQd2yvIZDZXdmK7u+OvUOIhTulaGfswIfSbpYan3KqG/JEr5VwCIZmQr72BHLZCI1X4DHOjPx11UUdKGYDqC3vE454GLzl1CipkszDYC2kpuwtVidQ+UphyNA5BU3x80wfhepmIIHFYM7OmExiE7aIELqsAKaBS9gLVDVfv9q7wMBec65b9J/+OpsC/HXzNsVBX2Ipmrb5qgWIzcRecFYcFmboExy7R7T0GpOxbvsb+duHfW/WjMsEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tQPujf5GmWex7lglAezTZebS1jCJ4bEvgzLDXkpBbDE=;
 b=DBYF7Si8nFz7bNcoGDL06+ImxBCq0sjW2BDF3WsrxOSa9nWnQ/LNo/7BkMzmfiit+d/CFH0xuU88dckc+p/Y3KQrSE/nIEWD/6tGtwyRMudvyVeoj7Si+Y1xYr4ioDVkDtTN5yXTsMf+Sa7JjpWw5a03AzcwbKxSaUStXKgFKZy7eIYLt4DCKulCs9wGwymhK5mhio57dpS4FHjdkiQ6A4ZFiLAzXQUbSezmsr23Rl/qL43E6ajft5g/a5S0j0jah0K75UzxQYVVtEZsCGNjHIQLOtJxio6bWT/aN/EIHQU+q/OLx/A92u/MVZfGFj+w8bOUV+GbTla8KcYMYsdnlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN2PR11MB4614.namprd11.prod.outlook.com (2603:10b6:208:268::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.30; Wed, 26 Jun
 2024 15:55:46 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 15:55:45 +0000
Date: Wed, 26 Jun 2024 11:55:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
CC: <intel-xe@lists.freedesktop.org>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Lucas
 De Marchi" <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <Znw5_WqRPnstGEit@intel.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <53aa0e4e-96f9-4cc8-9d59-73309315808d@intel.com>
 <b36ab824-bed9-4568-bce6-02f8c1e5d08e@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b36ab824-bed9-4568-bce6-02f8c1e5d08e@intel.com>
X-ClientProxiedBy: SJ0PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN2PR11MB4614:EE_
X-MS-Office365-Filtering-Correlation-Id: b6871d08-76f3-4e2c-7fcc-08dc95f870a2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|376012|1800799022;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?lckUYs6issp3FX9qRZEyVJWkwU8P/8zolYbdafNGGuKobsMV9JAt9kPVhL?=
 =?iso-8859-1?Q?+9knXlPrB2ePr70/LoC3OTmsi1dLrqjeyVP34bvCHhf71QGNF3r0pM2xux?=
 =?iso-8859-1?Q?XKWxTxb/ihsz+ijNViw22uzslp67AUSIt2dmV1bPF1C72X26erTr18C8q+?=
 =?iso-8859-1?Q?7m1o7NWux4zmZMlmA+CkZtH5PsEUg3oYEGbk1CVLpbxLhJyh2fTT0wQ4sH?=
 =?iso-8859-1?Q?3zfQrE2UfKrAY/lwHpclZ2rSYvs5wXtTO9lZQTL2zu6ZoSSnq/HDtE4TDQ?=
 =?iso-8859-1?Q?MsUskz4CjKaqJ5SAx2b8UqG8x2iqtucB2eecOPuI6Rtu0f7BvDXdpwfZjw?=
 =?iso-8859-1?Q?sgoCyoKms9hVWc9o37YtmfqrLbwATmUAZh2sIW1bPc0lrBHRpMAwmeIuYF?=
 =?iso-8859-1?Q?hgWxX5dgLXS+vlbCZ3EpUfvEfg1I5UbjsqB04NhnskdwM17vGSwuDvq8E0?=
 =?iso-8859-1?Q?2C3MIHaMXQCDt2ZGIfMQL6CJ2VB4Z/fYJYoAE4d9OJ13BGr0j92pCeJAJq?=
 =?iso-8859-1?Q?RyQkwFB8fPn0cLc4gSxfxDNN0Bt8zEv/YbofglNqc18E8OsIz56beDpFPH?=
 =?iso-8859-1?Q?b6WJ3P88vpCtS0vO3k3nHuDeHfPK/xnBGShz/G2h7rDgyCvd63NzzSI90k?=
 =?iso-8859-1?Q?At+uFAw/NcvzSF9020iYoOkFIovdL+pDsc9w7loVzIz8vtqhY7V123ViLY?=
 =?iso-8859-1?Q?RFUJ3JVXEf+ByFGp+Fdpoj7obdyZYhqTp4+BCj0fK4rkBq2uc2PuAy00TI?=
 =?iso-8859-1?Q?YiXkbN06TmJ8yfjRaobIiKN2UJ40S7tTuuwaAX+zGolKsunBbHa9GKGwrq?=
 =?iso-8859-1?Q?kaGeFVO1qFK2CoBnX3MkRacHqVa4XG+wEJvflpYZJOMRg3jXbqNVhiMKQc?=
 =?iso-8859-1?Q?4pivup4Gnj37DYne7XMncRsibh9K6Nf03Jz0f7fsf8O+zFjkq0pj0jEVzN?=
 =?iso-8859-1?Q?Qqml2taqtK1d9j4Z5UpTpT7cGb71gJLR59rc14kJe2Pr8E801KgQt6j+Xl?=
 =?iso-8859-1?Q?S9Lp5GRtZP9HEYQ8SZr/rcBxD2jvCEfeuA1BV3ptSOknO/pekQFAn/sT4r?=
 =?iso-8859-1?Q?Ej+c9KcILPETC2OH4qfCRx4C1nzSvkXMlPOEN6PvDHN71ftmu9Pl5MfIfa?=
 =?iso-8859-1?Q?dBMY9Rth093EY6tD8QNcA4w1MWgnCK+j70xH6nBekf5tsKeDjSHFf/wOtd?=
 =?iso-8859-1?Q?X5Wtmu/DcVXlm4aR4milS/d087zI3jO53in2XL1US4zBR7/Y8XvUghaFJg?=
 =?iso-8859-1?Q?UlDdz51c3agyAtpHPHEIzViP+7cyDonvepazVCvMLJy4ujhsqiFYGMojQK?=
 =?iso-8859-1?Q?LfHjAYHo/zGjszEFH3wpro5K9/8eIUd8SsW5WuBECWyg8IM+TzYYl7rB4Q?=
 =?iso-8859-1?Q?w2DGQE6hsu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(376012)(1800799022); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?V76Yysrv5dQNjN8C4p2rxOzNi0AxGsr4uDVcwp9n5vaVFCujFKXN6W+fUE?=
 =?iso-8859-1?Q?DdYZ+8/8rKrRyQWLYN3FnmDuTAPl6MjB5fGMnZATLdYo4jmdXzd9Zbm2F9?=
 =?iso-8859-1?Q?TGuA2mLH/Sns/uX1NDRPP+SfvrMPr6BQHct575CnRQ188FwOMPkcbwTRU+?=
 =?iso-8859-1?Q?05S7blVFHgVvg0IIuYKIWGauyautJ5T8g7S2avvv43JPGOTrjeGrfqxe5R?=
 =?iso-8859-1?Q?UGE3GPprE9InBno5ZKMfoirZOtwE20oC08JOIWfBinjRmM3tVqd7wl3VQL?=
 =?iso-8859-1?Q?SR+LOikqjcrjh3VT7lJRVBTkBF3zFcms22CLZgguB+qg/9vjno5wJj5bev?=
 =?iso-8859-1?Q?PWf0yVlj2kYzsZDR+4NJ+vjQjQX2xjfsEpwGasARVm1hlsgszLW6GzMYyE?=
 =?iso-8859-1?Q?e2JfrKJ+RmVuPkEpF4r292R4PHrXradcGhfzeJvb/qPVvQNqKprOGxnSLX?=
 =?iso-8859-1?Q?FNItw/cTyRfXsdMfpbFo9Ni/Qadg9BY5NSY0icutuAJJNjX3rRJtM4XzGx?=
 =?iso-8859-1?Q?qe51/Ex4PeISrYbSwhC1oyifojSiVBiRkuQNeDd38puJYmfymzrVS6x/Rr?=
 =?iso-8859-1?Q?W6fD4R9R8pvEogvi4C1LryUP776HU0df6wxJ14B+sRBwKw3981SoQLHiCs?=
 =?iso-8859-1?Q?yo77ze+MBXXouStKmLw23FhxESjDF13FgcHaWsAbnacMVtVXxiXrDGeBkg?=
 =?iso-8859-1?Q?wi0ycewbQsdaenkSulna6PzoPcrRXOE5QqU5yycYrRM03KElB7BphTE8Fc?=
 =?iso-8859-1?Q?bDSWhAbYCL/Mo17TW8pd4vu5ebw7C13sSCLtDyhqQRIS0POBtBhgN+7VJR?=
 =?iso-8859-1?Q?YPWi2kgGC9AvIy6enhTE3O6yr/SmCqeRCRj5ukT0iHtxcH7RgQ6686kOdc?=
 =?iso-8859-1?Q?5pPWH9dTc9Dxs4qwt3qlwJAX4OLxNrc6jlBRwSIGFHh36auOuMpO6Ak7AK?=
 =?iso-8859-1?Q?CYFKOHcuhdGMwiZUNg9Ro4eC7SRU8Z41oLvy/KfilayHi9F0vVnNseaSFw?=
 =?iso-8859-1?Q?Z0cWXqVIsH4jGJ7pWwF6DzrdiKsliR888/E6tGHLR1vVJJAdXirTstFvrQ?=
 =?iso-8859-1?Q?n4xp6TPj9MYCf+63KESidXtoHjkNkQ9sKRDbXu/jUIgYbRJAk9Q1X6JOOM?=
 =?iso-8859-1?Q?ckU9iR9gHG9SYwx+Iw2xcqTEzJJYakm8wSjUXQg68GvyTq9hmNQLPTc8/n?=
 =?iso-8859-1?Q?BNerH+7dad1Ww4ND8Onr4ClmP3LyWXs1v0p9e2fkVPIqhZHw3oW/lx+WPm?=
 =?iso-8859-1?Q?72ZhjDIWT42EhnBvnJcpMGJqFg0qE/HyIovSpWxCKghIDhbV23iWLI33CY?=
 =?iso-8859-1?Q?CraXbAOmQoYlTld6QuBg0rjfHwO+VF/Z+TfENY1qFRJdjSAhERA5pF1VqI?=
 =?iso-8859-1?Q?8AqPgDb0LQuO5j2MXCmRMIF4Xw0sard6gK7EZ1l0BhTEDnNGkqCrIsLc/1?=
 =?iso-8859-1?Q?DDaeIhiz05GtI6b45NJzfFEEk55vSzNk5xJ5sbVQmvwO974rWNkd2vVprv?=
 =?iso-8859-1?Q?ExcVoAsjkmYhxSSxBGXVmK3I9gUHnnHDcG7WS983Yfk+K4J9KGiqb9aK3K?=
 =?iso-8859-1?Q?j428pzWZlQKQPrZDWxqbrvyG8PHkBvhD2E+zLeyApd8csXW85ldGXQCQn9?=
 =?iso-8859-1?Q?iv1t6OLPvMSYwlGRE9jdbvdSzNH/6XSLaF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6871d08-76f3-4e2c-7fcc-08dc95f870a2
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 15:55:45.7728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z3Kpa493GVa3hDmqMZmOkg5W4wmLVZpfHfUhjGybC0N0UO9UV04gdhFcEnmga+3yTru0KyYz/npOCToO7DlAzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4614
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

On Wed, Jun 26, 2024 at 04:14:02PM +0100, Matthew Auld wrote:
> On 25/06/2024 09:09, Matthew Auld wrote:
> > On 19/06/2024 15:31, Matthew Auld wrote:
> > > On BMG-G21 we need to disable fbc due to complications around the WA.
> > > 
> > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > Can this be merged via drm-xe-next? The first patch is the xe centric
> > part of the WA, but here this is touching i915 display and xe.
> 
> Ping? Can this be landed via drm-xe-next? Lucas, Jani?

I'm afraid this patch-2 only submission to intel-gfx didn't trigger
the i915 CI. probably good to submit the entire series to both mailing
lists so we get both CIs?

> 
> > 
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
> > >   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
> > >   drivers/gpu/drm/xe/Makefile                     |  4 +++-
> > >   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
> > >   4 files changed, 33 insertions(+), 1 deletion(-)
> > >   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > index 63201d09852c..be644ab6ae00 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > @@ -6,8 +6,16 @@
> > >   #ifndef __INTEL_DISPLAY_WA_H__
> > >   #define __INTEL_DISPLAY_WA_H__
> > > +#include <linux/types.h>
> > > +
> > >   struct drm_i915_private;
> > >   void intel_display_wa_apply(struct drm_i915_private *i915);
> > > +#ifdef I915
> > > +static inline bool intel_display_needs_wa_16023588340(struct
> > > drm_i915_private *i915) { return false; }
> > > +#else
> > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
> > > +#endif
> > > +
> > >   #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 67116c9f1464..8488f82143a4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -56,6 +56,7 @@
> > >   #include "intel_display_device.h"
> > >   #include "intel_display_trace.h"
> > >   #include "intel_display_types.h"
> > > +#include "intel_display_wa.h"
> > >   #include "intel_fbc.h"
> > >   #include "intel_fbc_regs.h"
> > >   #include "intel_frontbuffer.h"
> > > @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct
> > > intel_atomic_state *state,
> > >           return 0;
> > >       }
> > > +    if (intel_display_needs_wa_16023588340(i915)) {
> > > +        plane_state->no_fbc_reason = "Wa_16023588340";
> > > +        return 0;
> > > +    }
> > > +
> > >       /* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> > >       if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) ||
> > > IS_BROXTON(i915))) {
> > >           plane_state->no_fbc_reason = "VT-d enabled";
> > > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > > index 0e16e5029081..f7521fd5db4c 100644
> > > --- a/drivers/gpu/drm/xe/Makefile
> > > +++ b/drivers/gpu/drm/xe/Makefile
> > > @@ -34,7 +34,8 @@ uses_generated_oob := \
> > >       $(obj)/xe_ring_ops.o \
> > >       $(obj)/xe_vm.o \
> > >       $(obj)/xe_wa.o \
> > > -    $(obj)/xe_ttm_stolen_mgr.o
> > > +    $(obj)/xe_ttm_stolen_mgr.o \
> > > +    $(obj)/display/xe_display_wa.o \
> > >   $(uses_generated_oob): $(generated_oob)
> > > @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> > >       display/xe_display.o \
> > >       display/xe_display_misc.o \
> > >       display/xe_display_rps.o \
> > > +    display/xe_display_wa.o \
> > >       display/xe_dsb_buffer.o \
> > >       display/xe_fb_pin.o \
> > >       display/xe_hdcp_gsc.o \
> > > diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > new file mode 100644
> > > index 000000000000..68e3d1959ad6
> > > --- /dev/null
> > > +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > @@ -0,0 +1,16 @@
> > > +// SPDX-License-Identifier: MIT
> > > +/*
> > > + * Copyright © 2024 Intel Corporation
> > > + */
> > > +
> > > +#include "intel_display_wa.h"
> > > +
> > > +#include "xe_device.h"
> > > +#include "xe_wa.h"
> > > +
> > > +#include <generated/xe_wa_oob.h>
> > > +
> > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
> > > +{
> > > +    return XE_WA(xe_root_mmio_gt(i915), 16023588340);
> > > +}
