Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405B1B1C6AA
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:13:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFD6810E773;
	Wed,  6 Aug 2025 13:13:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VeWupN09";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C199710E775;
 Wed,  6 Aug 2025 13:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754485988; x=1786021988;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=R54XklflWIgEeF33NEpx0y5rZ7c9UPRhhEF0ZUOPIpc=;
 b=VeWupN09G5YUgR2FVofd659Y+ot8dMt6Msk0aFvzWvsEzN1GquRi6uTB
 5svRNTQXH+dvi2lr4zv7WlZLW3j+gE4k1KS9g5KB3bLO0UwZthgb+naiF
 nsifEpIpC83wfeqIugpwbNcRGH/rVI+trB9q+1y/9apPwNCZz/JOMKehm
 h+wIhUHlDd4SrB3U+PQBeH3HlKyR8g6m/v6v02mv5ingAYimfNBa6YSl5
 +b9Va4FSb6rPpA4VilxWexpjvjRdUlc1hbIoe9Tk38ZJ/98dHbvljSjpJ
 8CsNK4yppt/t5qSPy0mZULAas+a4qhk6Nc3agQNhUaM2izmiQyVCscNg3 Q==;
X-CSE-ConnectionGUID: JFT56X8vTCOTVTM7/CjhzA==
X-CSE-MsgGUID: xamhdFxHTqmiCnGDBJuWSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="79349733"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="79349733"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:12:57 -0700
X-CSE-ConnectionGUID: y2jrG7HORk6nFMZTtWm9Tw==
X-CSE-MsgGUID: dfgFKWawTHyooqK9HGpzkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164685525"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:12:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 06:12:57 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 06:12:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.54)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 06:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XFsED68Hnrd8ThvuqqEk3guKA2EJ9EdTl6em6h4OwJAtpVMUsC3yLVixPD54atLQ8g00+r40QFFXEe8vLyb3xCQ4an9493qDsQDMw1wcX0VxwV60Au9Mva8M8wzRNQ4D71EHQU3vCLd216x7QTlMjS53jNb3MNZfJ9C3H5BK0XKDvD5tuTysKNXdHy1U+U0jFvQhK8yhXMdIAc5oAYY+glW2aq2rNcnjNKh+JW9SIGZROzTfvG59Qh9qNN9hHSlXJUK+q59Mzr3E2jw/xvWv8TQKH2bPTTizvwNfsZd/vMdjar93eNI9y+ny4pb3RxmTujaIlMpa1tcayhGONMQCuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/yBxXHWi12Rm7khwienZTiNaCYqiS3v55d9PS4UuN6s=;
 b=xqLLPGjfE7O8VMbQ/d/paHdKrEbPTkpj0GB9PTr+mbhXqmgr0WMyG/cljb10mco0AlknhhIRHOuEB8xdIWlKM7OmOu/L5ZZ886JyKQiac0q3oXv8IdJBPc46swgMJ4pTz5hN0AS1FW0/i1AjbgbTCJMiWs50xkvvwV12kYk/0tsGo5QUzmPsKsmDzDQymwX7+YXzzxfg9rzsd4ZE2FDTQO/5N5FK+38enkf5hP9OtFl3C/P7RLjpTXOmZjDo2wEGVJG6k95hm+jLUEtQHYtcGvL+Kiv9tbdAC3kmuSom1OA4M+H4sqto1ImS3RIq1aXaeZnnVfZW+16U4IZOsrsIAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB8420.namprd11.prod.outlook.com (2603:10b6:208:482::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Wed, 6 Aug
 2025 13:12:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 13:12:54 +0000
Date: Wed, 6 Aug 2025 16:12:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Charlton Lin <charlton.lin@intel.com>, Khaled Almahallawy
 <khaled.almahallawy@intel.com>
Subject: Re: [PATCH 00/19] drm/i915/tc: Fix enabled/disconnected DP-alt sink
 handling
Message-ID: <aJNU0W_bJOFRflwF@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <7920b8ed0ae141aecae8d40177f35e642cb1ca16.camel@coelho.fi>
 <aJNCicpwIY2YtAun@ideak-desk>
 <c87c116fac9f588c177f0c957567844a36748274.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c87c116fac9f588c177f0c957567844a36748274.camel@coelho.fi>
X-ClientProxiedBy: DU7PR01CA0045.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB8420:EE_
X-MS-Office365-Filtering-Correlation-Id: b6c89676-53d3-494e-c17a-08ddd4eaf438
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ziuoDpd3KRLsTPQvYNfJIAKUtoUe03U7N87erSDA2MMoKD7UvoqBV4iZBWvX?=
 =?us-ascii?Q?m/0aPSXcXE/XGosg8EY9yQx0gsl73HjmKaWvjxw5cbsGd8355ki8tKICpyWp?=
 =?us-ascii?Q?QCDDEs7PRqJ+W0b2eMPCTITKCVO2QjHo4cWFz88ZcQ27WMyA+cYJRLzdCKAA?=
 =?us-ascii?Q?ECV3fRpmfDqbe/Nta6FiRf5rtnH21z+BrAyf6WGWvhC9o0MA/PGm+79XXuxR?=
 =?us-ascii?Q?1JOyFZBC3e7gxyut+yNAAwSKWzM6mFYX0ZYWvGOtV9aDqXZCPvup9Pani/YJ?=
 =?us-ascii?Q?8rI5v4oSqGw4qLBaa8YdikN7f9R7ms/5VqI6Tp8/WWdHcHVALQjIhq9tdh5D?=
 =?us-ascii?Q?NGjfbtj8dzhFDyc0KUjSSjbZIdDdlZb06MP9AybMKOhnhV3NdmTF6Syhd/L2?=
 =?us-ascii?Q?ZZD0eVubKT0BHaYMa/rRqdMNMi1tAdmDZlbc+dGgv+m9VsC+K3waxBMrfWEz?=
 =?us-ascii?Q?5B8Wj9l1SYrI3c9kCoVgWoxR8TpdWA4RlkVw6UxXPOwck5GBcCxFZyzF72HB?=
 =?us-ascii?Q?SMVj8SdJ0XtkpZT5RuIY0sHRl5fKTdHx0pcZhywZAGWLJ7Afphv3qybdQKpg?=
 =?us-ascii?Q?dJr4McSoIKiGZLIZIGtO36MW272bjg2uc6Ii5zE39t9wNLcd62StD6Jw/u+L?=
 =?us-ascii?Q?RZRmucop7ZpKNpX8muxnXTRqFovemaVD/3a90jeKOXV4I5OPnKBBsR58JiOl?=
 =?us-ascii?Q?d0TjctGhW92gqkHB82p6noOoKXsq2DWEw0VOOZlUTb5zM2MCfdhyrbXdZ/uD?=
 =?us-ascii?Q?gSGYzDrbO0Z7NHqUgwjSfeaUr+N6OnmZHev9pUII3rTAvwEjAMGjsg5KJnof?=
 =?us-ascii?Q?iQpVdegtK5ofEfu5ahnamaJAb3JRJNSNa0o92eCC9tUkDSAPYmcQH/Q+iBPk?=
 =?us-ascii?Q?AW8ST7/yH1xF0dWVShi9DOH13e3gkScYdg3mIB1A2XRyyn8maKOBwuODdXHm?=
 =?us-ascii?Q?Sd2lb0l7KPkJqgGz6SdQHZK6ifkORmivqvWFifDkmLpayDEEyI/kBkVavUgb?=
 =?us-ascii?Q?Z04DcFmLtapvYaj6FKF92wVyVCdoANO7NbisqendyZH7LgutnjMr2pGIspI9?=
 =?us-ascii?Q?gQMyLm6fOuYppaUkeonq7ZQmQaM4g239J5ISUrSAJ9HN4KjEwRK3ORhAmXx8?=
 =?us-ascii?Q?Xk3qMuVUnJYet1nLiMY0Ul93xaew7QbxTV6eg1mkIAxC63bsXkrw1IkV4dTg?=
 =?us-ascii?Q?hND9dHWV36hmzSPMdwVLhaG+d9jMB/nMC7nffg3yk9CG9GPuy2er/Z27p8VL?=
 =?us-ascii?Q?AFHQ1UGBHG74JliF88unbIe5/+MBw2CUfDIJ/FcmLo1nvopJqYsiOF/BCeZE?=
 =?us-ascii?Q?bnQ3q5ZL0/ypt+X7GAuaRixwqlCzKbZ3UXs2UZZSnT5LagMgqdbK6Dws1rP7?=
 =?us-ascii?Q?edCQ6V6sKHgiRKBIvqaq2OOr6kflCOegHQ2DIGZ04HP/I2xwmr2BwQW1MD24?=
 =?us-ascii?Q?MvBYoM0CzJ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uyrvR3im4T42Swl3yf9F/1sksX+oybpDCTKoEJIOjI9revjyMBfyVzeg2IGI?=
 =?us-ascii?Q?cxANG2d5tri8fHdtvIObqS9oNcQPHu5KZm2VMNszaQZ42BfRUWjbZw7rgubg?=
 =?us-ascii?Q?ztk4GtSZ4aN1CLOo0VWTeBcULTkGbpo/WAVHrD50nmfKpclewsEexj9Ejnhs?=
 =?us-ascii?Q?rnb/uyhXkmtBc8wZ1LaGEKrbauIXMHPs5hQv7D2sKW2QDnjvEGkydlEYOYeh?=
 =?us-ascii?Q?9XPoTIZt/16kJX9QoDuM9aRASLTDxHlLmrdfjfiFzrwSuO8umUJDjI6aatFk?=
 =?us-ascii?Q?aSmGLf/BTxV4D81qfNK4kWgod/y8Om4K7YKdfs4J6tpeKkfG82Gd+9ZY9fia?=
 =?us-ascii?Q?cRzoTKkxTSf+f0jtXJLiB6wwx1HwNPs6pVfdip8JZlbkLTEEQj0eceRalaGo?=
 =?us-ascii?Q?bbug2IN3f+34Svyz4jVOxqrwajFVG/MdgPKcDvwWiHuIxNNSmn2QUMnMJkKM?=
 =?us-ascii?Q?OhGHMZv6fCq2ZxWM+Yta2E9ONCohKKUkeGjrITqf43yxdT+ZDKsQxJIVd0kk?=
 =?us-ascii?Q?/4JY/ZUa5QV4PvqUtdaGi2c1KntkKpRChRBUTcB7J2KOyl3mqZzmUqnSA2FN?=
 =?us-ascii?Q?947CKBEwL4UA2PpTnHpZCJT9/Ch8GSZxUkhszXkP2ymM1tcpp9E1wblozQQg?=
 =?us-ascii?Q?E3eqUc1W84ZQnLJ6oQVWg6PdN8OjaGPoePcRaNyr3Ghev6Qaom06hKDxGPyu?=
 =?us-ascii?Q?q8MXysvyHQhdY1r3veN7s50h83MS6g4yyGU6i0GN93JjYGm81rmepwkoa96Y?=
 =?us-ascii?Q?plz+hJbEzu079uTkDRj5CWo6nU7tnEUmASVU0INYUQQtBzTxmakQDk69OFqs?=
 =?us-ascii?Q?nhwW1RmLLyDVJgrOC1b9hawmoLWxFW+PyM0vckrPyqKk4/R1Tx4mG5gQiGMW?=
 =?us-ascii?Q?myGeRMozOMnSlK+kjqSZjz/eJxEtuagr1tP1I7YIzpZGq5HxIK8RU0GnLo4b?=
 =?us-ascii?Q?uWmjMeYs/PJH1hI0MlBqwc0g/dOTaeRutl1ooL59Zw6zO4QQM5WBv2sBd1D9?=
 =?us-ascii?Q?3ZMxIA+fBqF8JGXHReRW9XqL45cvqC0PC8OSRBuqp+TuSLhiz9DIjkcyi/6K?=
 =?us-ascii?Q?KvwaeRPrJz05fJ/ndmL1dZmzmv9uHoEztCMDyNTDWeX9cgMwYq576RixFVJQ?=
 =?us-ascii?Q?zGQAIzuleSWSqrcACQSIrooa6QULSnJGDxhVe+1vjbb7L5U4QsjrZolpdpno?=
 =?us-ascii?Q?4qEx04/U2QQe61sFjt54CHNoPnZuxBaIuCQIscINPlUDUcZNVKW2tl1+aQkB?=
 =?us-ascii?Q?b/Pg4g1xQbM724h2MspmxvVeR4Lgpgb75/LwoQ2emwX/jGDZHq7aY0CxkwE8?=
 =?us-ascii?Q?WtVk9xzMxQSd6Qqv0EzO79tEZzYgYZHTHBn5Dc7pX+9IyGBU0T3F+qJleDUk?=
 =?us-ascii?Q?Se/PU0Y4/XNGjDqGZt5jotYQoOo1d/9MkxcOM2SaNHS5HM4MWRBsJdOX9Bkn?=
 =?us-ascii?Q?56iv5oaRmYWi9hVkzuWnOAqi2A4mnJHqG7COAHhz2q3z+mYg4lUr64jyzuMv?=
 =?us-ascii?Q?klnFelcRCrlSi2Ew6IMWM0K1qdf6NmQctquvNZBtQE8ZY4QnnWZwfuG4ynAh?=
 =?us-ascii?Q?u4uyDiyOOPGZvq+yCQlmiMBFBro3e6m2sxNlboeDNqojr9GozvKJ4KjSrh2v?=
 =?us-ascii?Q?/y6rKS2tXfpxMbsDTOMMITKfnjYvCPf51hTXKT8EdulL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6c89676-53d3-494e-c17a-08ddd4eaf438
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2025 13:12:54.2205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dpq4oriHb2J6uegUo78CYsDouDo69/l/ow+MqLfAWix54zi1F2cJmxCEXVCLZBzO4yK9h9JaQfnQyzySKNRMDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8420
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

On Wed, Aug 06, 2025 at 03:54:00PM +0300, Luca Coelho wrote:
> On Wed, 2025-08-06 at 14:54 +0300, Imre Deak wrote:
> > On Wed, Aug 06, 2025 at 02:44:41PM +0300, Luca Coelho wrote:
> > > On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> > > > This patchset fixes an issue on LNL+, where the TypeC PHY's mode/state
> > > > is detected incorrectly during HW readout for a DP-alt sink that got
> > > > enabled by BIOS/GOP, but later the sink got disconnected by the user
> > > > before the driver got loaded.
> > > > 
> > > > The issue in the driver is due to overlooking a change on LNL+ in the
> > > > way the PHY ready flag and pin assignment is set/cleared in the PHY
> > > > registers by the HW/FW wrt. how this works on all the earlier (ICL-MTL)
> > > > TypeC platforms.
> > > > 
> > > > The first 5 patches fix the issue, the rest refactor the PHY's max lane
> > > > count and pin assignment query functions, sanitizing the code, removing
> > > > duplications and validating the register values read out from the HW.
> > > 
> > > If you have 5 fix patches and the rest is refactoring, wouldn't it be
> > > better to split the series in two?
> > 
> > The refactoring part depends on the changes in the fixes part, so I
> > couldn't send the refactoring part separately.
> 
> Okay, fair enough.  I'd usually send the second part _after_ sending
> the first one, of course, but you'd have to somehow mark the dependency
> for CI and such.  Is that possible with our infra?

Not aware of such. (There was a way to specify an IGT patchset to test
the kernel changes with, but that's a different thing.)

I agree it's better to have a separate CI run for the fixes part and
also merge it separately. I think the reviewing could still happen for
the current patchset and I could resend the fixes part only for CI. Are
you ok with that?

> --
> Cheers,
> Luca.
