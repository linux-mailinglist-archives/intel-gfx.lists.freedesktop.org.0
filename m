Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1705BA5011C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 14:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8642710E04D;
	Wed,  5 Mar 2025 13:55:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S8wx9Ne5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 525E310E0CA;
 Wed,  5 Mar 2025 13:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741182902; x=1772718902;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Xu8HCcW2W2dhw5985/Oj08Y/bnbFh+YqW555GWF1vGA=;
 b=S8wx9Ne5TblYX2oOmST0lfulY+r+HZ9OBC6/mMo1TnEujO+1DHgNWdf8
 OUYiR1V+NGkoUhTHth4EdFeLeiLHK0CVyO/pS/DsFHQYIAufDW50Y/xbs
 4CW9Ulvb7r0pd3zT5617R3L1LeisH9hVG6TDkPjtjHq1W4OepQf+4387F
 xPD1bbFmHhUv3a9r4Rdx32ebVR82Qo5sAoo7LSkSXTnfSFAkEFqh7/wiw
 PusDfzMQqUkhjmG32jmtotHH0HVD0WU0OdIl8VukBYFJeDKERfzDOPNX5
 KJuEVHy1RT+Rr3TCX/ERGPaFDMWGmAZhARyVGcWkElHwFAy1of3C7/dGu A==;
X-CSE-ConnectionGUID: VJvZAYtYQSyM+P1CCktBwA==
X-CSE-MsgGUID: +GJc5yQoQ1CmzFt9ABUvaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41856007"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="41856007"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:55:02 -0800
X-CSE-ConnectionGUID: aGur9KURRXSjT93QB7DtYg==
X-CSE-MsgGUID: 2Qa5WJQBQ7y2UzTTtCJPqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119206652"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 05:55:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 05:55:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 05:55:01 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 05:55:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g6jTh9+c7buoVtibjlD8DhVRbTEZmAiYNCnOYBSG3L5Z+YcJisZciR3IAlRqWyXUMtMoaGo88h72+/QiJGEaTuyGeRoFMBW8bow7h1XnKpQrtcS8iQtDLIMDznSkIhPBczdOf5hDrgAZYgpBKdaKiP+wFy2B44LIu1z3KtLIFxxI96aB4SHRWSiWsjuDv7CmwfI0O4liu44/xJVF95GgvnEPSNwfYcCig6tqLxJWmeZbZeUFdDrQl60P4l8dNEGno7OQiN7vfn48kcd6kJGqnyYD6ftRdncFFfUmMKCxEsxMzSodIauN6NkEBRf8DpNp6Swib0O73ZwyNRZ1lNm6Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xu8HCcW2W2dhw5985/Oj08Y/bnbFh+YqW555GWF1vGA=;
 b=ZveNaDJwsWqYSAW+iPkLMbolPn/XOjb6jryWCkw2FPVR/q8YmdOKNJq6e0VAdKZqE9o/d8zVKsg/Xzwucw+KW0bNd9JqsR6rffrUecvE1Hbxt0kDbUmlrpd+WIZtALjmrPNK9EoVth5ghANGXGN1Y/Iq4KXNo26ZsVs4G0Cgjku2USOEZb8yP1r8qiVce3WSQOsoQsysX1pbi0+baCRQC13EH/bGCdWUkmUMCEfSqo9eem8PCMTFEHt3THdjSl87Hc3UeLeSRMb45cvBR3PmPcjmZk+qHG/6LsBQ6/HRjiQmnw4yVjnA3J/VXoY74F1nd11PFFZtKdRyNPmxOFKc2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 IA0PR11MB7839.namprd11.prod.outlook.com (2603:10b6:208:408::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.27; Wed, 5 Mar
 2025 13:54:59 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%6]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 13:54:59 +0000
Date: Wed, 5 Mar 2025 07:54:56 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe/display: Fix fbdev GGTT mapping handling.
Message-ID: <esj7j45blq4k6qiabudyczhz3jbnpqbiu6hri6esbe7x6dso73@lkir5uszfcvv>
References: <20250305110106.564366-1-dev@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20250305110106.564366-1-dev@lankhorst.se>
X-ClientProxiedBy: MW2PR16CA0024.namprd16.prod.outlook.com (2603:10b6:907::37)
 To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|IA0PR11MB7839:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a925fbb-afd4-4645-4b6f-08dd5bed5170
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7o2gr0I59RESuoIeEh/FH/FNgAXZMVmtzfxS0qy/H2VlAQnyrOQ1p13WOpOL?=
 =?us-ascii?Q?wT08agIVHwjfjLvZ6JgiDLzHtRwcyraurWMDwY+mJs3QdnkGHpP2LClgKmot?=
 =?us-ascii?Q?0chYKmreA7t+lOJKc+sDCHNHzdzuBxaF2nVJuN4XfYbUPz8ADoCwpT6QREaP?=
 =?us-ascii?Q?kutbbg1TEVUpBBEGUg85Vb7YHH6q75q36+2KzlaXkxocIejcvMCiL596cotq?=
 =?us-ascii?Q?xN5UHSICFIKOqSzFFnEKKqriCXzvj+4weX0Qb0UIVSot50/XylKpBz/PHtyZ?=
 =?us-ascii?Q?9+y5t7ZvopUZeXCv/CG7zn8N/zBJoZUdLJ8/C0qurj9nvrlbHlpX7H1iFkVJ?=
 =?us-ascii?Q?YnwmeGX8nWn2ec7uv0cu6lb0Gg16Jkv0GfEErmZOV4z+lo+HBDCMJm6YVqYk?=
 =?us-ascii?Q?sw5TtbI9k3oXz0KJqMOPR8kTYh05KwzS8fxgysw5nCDFJRI+tNTybnAFJTmx?=
 =?us-ascii?Q?LerXPJ0iwBMRn1nVEDYol8TsVdxSgCWVob9GfYgEUA8YQ8ogrhlqQncR7e/n?=
 =?us-ascii?Q?gZxNZxl0cLn4LB04JiySaW1tmPYPwXVQSVkcx6QeifixgFRhZBY0M6ISXame?=
 =?us-ascii?Q?w7Y8wEvD194m9BDvoNk5abpVYYh9+PuD3308VInUFUDwciotocZ+Vp0wIIH7?=
 =?us-ascii?Q?yd9gcZJlitu877L0ytlzlYGGQiJ4OE6z3XbwOKcLxHdWCWEh22RDHYbMr1M8?=
 =?us-ascii?Q?CmlY0lnEXs867GJeggtn/uVc7B1Y1tWqEprhT0KPF6Uz/iHoq9sa1nU2GRLs?=
 =?us-ascii?Q?HUVbrA9IpieCOs6r9esJjHSyOvJQgVrN3UxpXaZz2VmDDAPvgVSHdPKWc6vH?=
 =?us-ascii?Q?mA3QxfT7WWLkf1J+eZ8BJJdTmsnSMFtqTY0m50nQ2gUJMSliBNuG+KyViwIh?=
 =?us-ascii?Q?fPEikkye8EQPEEvyXviXxKhJUgGGQfs2Fl/VJW4231o5rC6p+TRkFS4AE2K6?=
 =?us-ascii?Q?GshL0p9npcsqRinNjddaKsuJ0cXpzB2PaGlcgxDA6HyvLxHLEvsNLGPyz6C4?=
 =?us-ascii?Q?qA9qfLzt+T9d4b4o/lmXaa8mXSi2y2Yky248UJia4s/gbmom+R5Wx0sUbomd?=
 =?us-ascii?Q?tJE4IDNC6gST5zeA7S2P3PCE190zxWMMyM76R7Qc/ZsHQOKbmpAXALmcHu2k?=
 =?us-ascii?Q?rzKNWr9BG/XQfuKXdj51k7j1mD3XGVntm2fOhQa+fbVZWYO9gnVH5SYGpzDy?=
 =?us-ascii?Q?Jn/qhpNwx/VdFsj37umrp+fay7g0cstnAFEH15XpmTEOlialQ2Yw/vom7VQE?=
 =?us-ascii?Q?ke4sdZWaB/XyCT+c3aqNID0mIjmZhgZl32uYmfIZIBLdjNUM1tLwSqS96hjg?=
 =?us-ascii?Q?d3zPWsSbNNtWDVioHhx+HVmjg1kXxC+pYupebOBvGdaHuBis28BlXhvLRLyB?=
 =?us-ascii?Q?3TKGWJ1g7AmVzI6pCtLw6J7Ed5FY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r1sfy4TuIwynAFTwrFsBnkZSpHt3xSM4xWBaODs6LpEYSmg5m4xcIRkQ0Z7X?=
 =?us-ascii?Q?24JPdEpcBr+05hYvIJWLMYZisTefDAm56JcXdiGCoQVt8jV7wT/9/CWrHH7Y?=
 =?us-ascii?Q?PMca6hwhrO+B56CMmzZRPzSQaU2fNFc/mygxJDKMsUdfUUVj+rQKJDNS8PPd?=
 =?us-ascii?Q?ffL1kLlNc2jxvzPuCzvXAhmhA9eQgFyhJCRsRjINw3MB5WGjdn+54hcr3c46?=
 =?us-ascii?Q?xTJWGzVP8ruuTWVnoso0J6xv5Zk7nkwTwKXdt4ABji3xDdCf6W5lmjmGtMV4?=
 =?us-ascii?Q?CSxLtgX47Qi0ZLyv1P0EZ99C9ZB9gdpsRojHMI6xfsErm7lPGk+emTQZ/qPV?=
 =?us-ascii?Q?xzQee5TmcvxwrnneH3i2xDfEapcq4YtngtK11oB9G24ybsYpCzU8GftK9uJr?=
 =?us-ascii?Q?NmIJR1qVfWGef/Yk1/QSS+DAo5Qu3+YL9XLP97xspyLXVOgGqMiarlkLIr78?=
 =?us-ascii?Q?1OxbJ85MlXqWrRE0IHiW44ytwLAA/qe1Fe6x/3QUEeQHRsAZoMZMc/j71hjb?=
 =?us-ascii?Q?bXQK8YC7lNMrmtPHd2TndTMZlUgKbJFbOqJZ7M08/vjYBLjF/WFfhuim7bGP?=
 =?us-ascii?Q?h6cetGEKDmYpPtzzTkQ6kYEhjc2sFDmkB1BnvCSPL53nC8t+zSU9aRRntsA2?=
 =?us-ascii?Q?5w46UlZOg6JM056xWQFv5MagcBl6G+p8T8CSmhzd40wuJgMbVIoaDfi6BmG3?=
 =?us-ascii?Q?bqxpuDGatTU/KjycisOa65uQUgEXSdxMwlWY9DB4eI70ndBR0ofdpB80uKO3?=
 =?us-ascii?Q?XEvCfa7QWjjWpYk9/XstgJn+vqmy88oPzu/F5JocSXnKnZV11FHL934FW7tv?=
 =?us-ascii?Q?54HJemM0swwkt8quPIGtqIAwfrEDi0HI+Fqy7Gf2Y0PgVzMcDOg1sjstHMpP?=
 =?us-ascii?Q?1IMn1Fff6s+GEBWLR9d0kuTIZS710ReMSSpVEbmGpE3xBZfXRZYXZd+MdZD+?=
 =?us-ascii?Q?+f/SQgB4mEzMKXlTSMzNfgwqgDBmU/rEY2Qt8BNHo/wHed7N+D+yJ9UU8dEb?=
 =?us-ascii?Q?IGSWx+DotsMBAPHba3F6wpv6e0QCx08Pfm4Wf/f8QvGHtXSwPQmnZXkaUv/F?=
 =?us-ascii?Q?15F3KZyNc/MB2ysc+wdi3Ot/EVaWyi82jvqEmD24XQpSXFd0Tk5QGDdo7Njd?=
 =?us-ascii?Q?rgYtXXEkCrRt9/lMs6zTL3CXVggo+VsRAKxYlUKVzKhUyhYYNQ1WhkgK110m?=
 =?us-ascii?Q?9Q6h1FBvjCX+ajwqAshvan7w9nCnWOMQ1bcAEO6ZblolJWyI1Alpvqlk7u/7?=
 =?us-ascii?Q?4orNNzY2sTW7gleengtlCRG1xDbQmyHVJq+h2hcEg8+cHsdpkWfb25aaKmOk?=
 =?us-ascii?Q?HZopA5cFxoW6U9Gh59MSz7RT8jim/wGPZbas5N0oswCtr8HDFOK3LZbTweMZ?=
 =?us-ascii?Q?rtCjThhIvTpboZkyP/9jXU9nF3wHlR5JDBVujQNEefbHuraVfce9lj/lnDaD?=
 =?us-ascii?Q?+BPPvELN8hPAztfVbOmI5dkwb9JjkKfZwW8z12KP6qFAUiplsOioIFz4vmPK?=
 =?us-ascii?Q?iP3MnZdiLakGfTRMq3K+biJ0jX1P+Vp3vpq/diBLZ5Z4Mfp9WrHwTnam1f7j?=
 =?us-ascii?Q?UiolY3snBO45AxlPO8hGu2pcrwDTv9jQqmqVYDh3nTi5qcg4DL2AiKWGQSRt?=
 =?us-ascii?Q?1w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a925fbb-afd4-4645-4b6f-08dd5bed5170
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 13:54:58.9701 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FAOblkxdpDwmUnE6PA4F+KTICAfP7CwR/rO9kUQiZs0AXxbMPa64aIK7aUC2xsbEsesYirAqVpWZEc0xMtj/Z3wG1QxTIQnH1WVbkAjVbuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7839
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

On Wed, Mar 05, 2025 at 12:01:06PM +0100, Maarten Lankhorst wrote:
>FBDEV ggtt is not restored correctly, add missing GGTT flag to intel_fbdev_fb_alloc to make it work.
>This ensures that the global GGTT mapping is always restored on resume. The GGTT mapping would
>otherwise be created in intel_fb_pin_to_ggtt() by intel_fbdev anyway.
>
>This fixes the fbdev device not working after resume.
>
>Fixes: 67a98f7e27ba ("drm/xe/display: Re-use display vmas when possible")
>Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
