Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7448460352D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 23:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFAEC10E616;
	Tue, 18 Oct 2022 21:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B38410E616
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 21:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666129756; x=1697665756;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=FMKtmRnLRhgn7syyUchLlWkxWnGPaVOSRVvPdZASD/E=;
 b=RRMPQcCalVmD4RhALrc4nsO/yIWYhX3uTZ8niczpYTkVemWeEzW/W+9U
 D+Q+L9pdxWKEFn9VuR1EN0wqnZXSlRqymVp16yAsvsebh9fKBy2cbCLkS
 JCO69bVQmBhYnSrH9D11AhqSGpORnSiqEjjy01bgEJDG5z7Fg1aXFBb+w
 +9OMR48PeVHBZbp3XrPQJx6hbYpDZWX8NgPd9I1ySQN//rjHE7qo5RtOq
 yXpiIf8oJW9PnR4xV0xkRMpd+wHhIQw1Fy2lMY26opAKzJR67wug4atf0
 TyuTeATl7mxLZhPuijB6lljt/dXj2HW16zgf36Zv+oTYpaixYaZipTnTw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="303858784"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="303858784"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 14:49:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="623823415"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="623823415"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 18 Oct 2022 14:49:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 14:49:12 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 18 Oct 2022 14:49:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 18 Oct 2022 14:49:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 18 Oct 2022 14:49:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WS6DNQFomtOc9tH6v9quPGRoBYb4Huryv/W8jgUGvzZvh0pGQHiwwXdBumxW9NMkrB1oP/ljxwzr3ZSScK811lUFygtpMRXuJwJHvkdPVc6yICuoBCAuYdwEe6N9f0OyORC86yJIfWqvAKEyc+Z5Upp30MIuxsp6C/RJOwJr5zPKty1w+vnypFcZwVCGPflvXiMhEibuQ3R3/1rVVoLIrgyUH19/xD8hkWg2xpVdDi4DPqoT8tphxByBUQmlWT6zss67RMGMDGihCdY/vcb3UZFTiwx9I0GMNNWHj73DysFr46aIkbUvi5OsIMmrT2B4lRQ6EwzNNek+zH9kWWKxqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Al4ldj4UDg536S2S4OG7GeSqunRuLO3mOpJxZJWS5U8=;
 b=IXObn5QxaGDn+NnAKliUaZFjyw4/AuFczUTkjnUGxl2OZh7KdH4poOGe/+FexkoXotDFTFfMtVlRJXbtIkitHzGD0ya1ReSyY51zNZSrR28s0YuDiiYQff64jXmck+FRm1BUyQjakwM9cInP29gMkX6wBK+eX5Dj8SeZxg9qb/H1K043/xbBwj5yI9vTnNP5WrGKrorvgALhoI9An5EijjEPXSinyuP0shuwfc3JOxd+FNiZ2GfqQBz34ZVJ84YGZWko+yHhqj0AZffVFUDK3uCIMvGVAqw2kVjyo+TDHhWwr9w4evF4J2BW3EaWS8ai1QYJfm8j+yPoK/GtiyHnqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH7PR11MB7516.namprd11.prod.outlook.com (2603:10b6:510:275::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Tue, 18 Oct
 2022 21:49:05 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%8]) with mapi id 15.20.5723.034; Tue, 18 Oct 2022
 21:49:04 +0000
Date: Tue, 18 Oct 2022 14:49:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y08fTuvTsUGZ2AUq@mdroper-desk1.amr.corp.intel.com>
References: <20221014233004.1053678-1-matthew.d.roper@intel.com>
 <166579931025.302.11929370850742937949@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166579931025.302.11929370850742937949@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0080.namprd05.prod.outlook.com
 (2603:10b6:a03:332::25) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH7PR11MB7516:EE_
X-MS-Office365-Filtering-Correlation-Id: f704a08c-b240-48c7-ffd0-08dab152937a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wVhseWLsX/LrnD4catD6FRLlbaHHZ008QNeQBKHrtYq5YTBGrNDNPn3Jk+701drWncQ9vY3gFjzORd355XTfwquM895X5xm0G8XchfmLWYwqOwdni2D78ES9eUMP0DcaFOqAlExvy4KsuPKsBcM806vdP+14BIXUbzQq9Wt2F0tpmJs/aK5XWPGoilsaeInsyPtEo354JXPrfKX7TWVoxQ0+V2muEjt0ZG9Baf9kd5NkiojJYpO0p1YNZPgJ8x13DDsZSGUlJZ3G+19Jxm12JphrUTiYWEtEPRaFEVRR0Sw3m6CxfNc/gVKhJ8fXjUHtO00Wkk0Ly9x2Yr24B0eK/edAL0/9c2yZuDJHyuMpl4yOE6yDqsHpkKClg6BMz5FDfAwrbIIk9HfH69RvbFxmZxJ5IOOtuW9DqAXF4HerxI/iCzr1G38NJINFR9CT/BPFZYKrPVXJeAQB8Ah5FLVS5M5VFq4CIW5txan6B/QISB1orKFzOYc5GQ1wWXYIxvmayj/7qWm9b7kZ4Li++mhPBsrhov42Zek7Q6h4CI14pOJ5rPN4+11/jvGccBM+KpTFTplZ7lIdvJAr9EJKOSRLst9yVw8/bCn4Kic2Fis1BnhL63FpkCrP0LCRJo0I9hU8aC5moNh1h1A3weVq30Ey1m7zYQAR2218joQq8y0XGv5D2+hb2Cu8I8+fwsZgZYLQAAQd0ELKYWtFmRhgrigPEMbwkwQpDPBZJi1ARSWeSrKJWr6jkhOsP55mj9AM/vrIwjr8CuQcorKSW5uKUk7fwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199015)(86362001)(38100700002)(82960400001)(83380400001)(2906002)(15650500001)(5660300002)(30864003)(6506007)(26005)(186003)(6512007)(6486002)(966005)(478600001)(6916009)(41300700001)(8936002)(66476007)(66556008)(66946007)(316002)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WxWeCXu5vOlRmiXh4PFebMqAxLVtfnlfq6Fig3BDEw7epnL7IwDdx+S8w+58?=
 =?us-ascii?Q?83IjOiM19gwh5TC2VVdQR+MQhIOwqjzV70NCx52iX2hdGRP4J5bvD909M9Ms?=
 =?us-ascii?Q?MjGfo+0RO1jozCU3oLE1knklszgSNfNZ8Lbc+iZVBAmh9yooxkvJSCioTnbE?=
 =?us-ascii?Q?Thdkq8yWJqo0BRissRICLRc8/AjnK3RuVJFutIiDLryoYIQJKRU1ynCVZJDL?=
 =?us-ascii?Q?mcG/EjexJVhH04SzaNA5NdyasAk/eepS7rl6hu2maxz9aqEm7c1mjtjcJ1gJ?=
 =?us-ascii?Q?aAYm6pIlUjvKTq8PAtlhMPM2LmTw3AsknkVSrH8S/bturb+Er7xXQNn2W3yh?=
 =?us-ascii?Q?TBrX9jv3i3Ka4QsHM1YkQnYqSOqhpeO/hF13O4+cSTUTPb/d2Vt58/CbLh2a?=
 =?us-ascii?Q?4UQoXGYml6W34/6iGZjh+IfxCFDzgOv1KZYa0UKejOOLm0YTE8/QuaQeXkwp?=
 =?us-ascii?Q?wtcbeR4FjNz0BplwuFXmH/GmUD7e6Ck0QWIKgp4+FffDuBaj6TGZCY3Jfwul?=
 =?us-ascii?Q?8z3Bg2TVzn9RqFEMiN/OOExZ+gUbkf3NHPdeYJQEOXmL1WNrFX1gH5m40ys1?=
 =?us-ascii?Q?VzMCi5MmSDNZ+O0NcLVlDzJls91ac31eJuEXweKmzriWNdeGHsVRg5F8IOKM?=
 =?us-ascii?Q?HwUpahOvtUUpl+XAWPvRKHe4Wmzhcf6Gogotk7LvoY47vUv9i/fphX6cfX6/?=
 =?us-ascii?Q?p3wy0Z6zjRxXsdRSBPHjCffxwQ/QJeXLTolv5B91nC+ZqbYz+G0gCehvi2du?=
 =?us-ascii?Q?euhd0kthMFG+LAepoEK1HlT5kP/SYzPkjS+Kj0GcOoi+M+Kruw68M0EVerag?=
 =?us-ascii?Q?XWFgRDwZL8gMwTUxgwno8nJgWynGRDnAzi5QUYYtXwKG/tVV7OIuVJVhDKnA?=
 =?us-ascii?Q?+hKvJcXq+BWUYIhkFUMcxnBTsrndKDR4k55ovIu1DvKXQ5HfqlRWQjCZ5Ig9?=
 =?us-ascii?Q?siZ1Tn8vRpwoAqUy1NvhLsMGcs+mMPh7HNVKHsf4Vzd3o1eOXC563wiHF4Vk?=
 =?us-ascii?Q?egvtG71r2rDpQGElZiL1+oCO9O3TCvB7WWmmfEhhg9HMOS/8OL+61aItHOIH?=
 =?us-ascii?Q?DmhrKxZVBUPZfx69Cfaspc18NgFY9AinVV4fDNmmuQyr3F9EN52NXYPKHKRp?=
 =?us-ascii?Q?h1hQ/rQdq8imQJBpOknpcy82njOs0vW45UMsJ3fQVN9NEldof1PnJUEUl7H+?=
 =?us-ascii?Q?ng5zwahYZEWV79j6Bd25I/li9lCd/TwicuUmEOG6OxPS2DEmYfbVJMo2gcsp?=
 =?us-ascii?Q?abRsyrAT0UhkgA+HZK8FQ6ZFD8mAkWhiPN/WVv9Y/iORLD4YN5m9YjBxTt5l?=
 =?us-ascii?Q?J1OdYZjPRBk+gguUjAYOUNeobZqiPtbGh09CBQZhMe1B4+YdtkFDg6BzLRZd?=
 =?us-ascii?Q?C+0VsaVoTeHsKY7vUxq0nXcEuGfe3sxC7zGh9BHDyoP3lmKDpGsw1cUj0SPQ?=
 =?us-ascii?Q?c+1sst8XQlHWXSzMYQccOeH+rKv4U49YQ/+Cg4ZjaLOR3GFarf7CpTba8Mxf?=
 =?us-ascii?Q?sLZ0ssraO122DzDpQ7n9Sisgr82LtPNOFed1gTOHCwz3vXtIwRKlTb7zHBec?=
 =?us-ascii?Q?ntRjZ3lvgyajHpB1tWyYFQT3CKFOJ76AEXlKdoLfeL7WZnB2vcDzE8/ip/u2?=
 =?us-ascii?Q?aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f704a08c-b240-48c7-ffd0-08dab152937a
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2022 21:49:04.7967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y0oaJ5ZLsxKkPc4zX/apuwwHiXVV7nYBiCKizSmN+DPlMj6vFdkeRdGG5S8cjIImmGl4zaaiHmi52YDcaGsFosD6bzjCvBTI3RvSS4TyggY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7516
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pvc=3A_Update_forcewake_domain_for_CCS_register_ranges?=
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

On Sat, Oct 15, 2022 at 02:01:50AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/pvc: Update forcewake domain for CCS register ranges
> URL   : https://patchwork.freedesktop.org/series/109734/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12242_full -> Patchwork_109734v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_109734v1_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_109734v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 11)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_109734v1_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8]) ([i915#3002] / [i915#4312])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@runner@aborted.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@runner@aborted.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl3/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl4/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/igt@runner@aborted.html

The PVC forcewake changes would not impact SKL behavior.  Patch applied
to drm-intel-gt-next.  Thanks Harish for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_busy@close-race:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][9]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-rkl-5/igt@gem_busy@close-race.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_109734v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [FAIL][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) ([i915#5032]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl7/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl3/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl10/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl10/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@reset-stress:
>     - shard-tglb:         [PASS][54] -> [FAIL][55] ([i915#5784])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb5/igt@gem_eio@reset-stress.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-tglb5/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#4525]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#1982] / [i915#3371] / [i915#7192])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/igt@gem_exec_capture@pi@bcs0.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][60] -> [FAIL][61] ([i915#2842])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [PASS][62] -> [FAIL][63] ([i915#2842])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb3/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_schedule@deep@vcs0:
>     - shard-skl:          [PASS][64] -> [INCOMPLETE][65] ([i915#7192])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/igt@gem_exec_schedule@deep@vcs0.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl3/igt@gem_exec_schedule@deep@vcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3323])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-apl:          NOTRUN -> [FAIL][68] ([i915#7036])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>     - shard-skl:          NOTRUN -> [FAIL][69] ([i915#7036])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][70] -> [FAIL][71] ([i915#3989] / [i915#454])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_addfb_basic@legacy-format:
>     - shard-tglb:         [PASS][72] -> [INCOMPLETE][73] ([i915#6987] / [i915#7190])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb5/igt@kms_addfb_basic@legacy-format.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-tglb5/igt@kms_addfb_basic@legacy-format.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
>     - shard-skl:          [PASS][74] -> [FAIL][75] ([i915#2521])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>     - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3886])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +52 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][80] ([fdo#109271]) +27 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@kms_chamelium@hdmi-hpd-storm.html
>     - shard-glk:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk3/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3546])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@kms_color@ctm-0-25.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
>     - shard-iclb:         [PASS][85] -> [FAIL][86] ([i915#2346]) +3 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][87] -> [FAIL][88] ([i915#2122])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1:
>     - shard-skl:          [PASS][89] -> [FAIL][90] ([i915#2122]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#79])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([i915#2587] / [i915#2672]) +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([i915#2672]) +6 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#2672] / [i915#3555])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +147 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][97] ([i915#4573]) +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][98] ([i915#4573]) +2 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658]) +2 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][100] -> [SKIP][101] ([fdo#109441]) +2 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2437])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-apl:          [PASS][103] -> [FAIL][104] ([i915#5639])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl8/igt@perf@polling-parameterized.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl7/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2994])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@sysfs_clients@create.html
>     - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2994])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@sysfs_clients@create.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][107] ([i915#4525]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][109] ([i915#2842]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][111] ([i915#2842]) -> [PASS][112] +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [DMESG-WARN][113] ([i915#5566] / [i915#716]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@gen9_exec_parse@allowed-all.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@gen9_exec_parse@allowed-all.html
>     - shard-apl:          [DMESG-WARN][115] ([i915#5566] / [i915#716]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@gen9_exec_parse@allowed-all.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][117] ([i915#4281]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [FAIL][119] ([i915#3524]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@i915_pm_sseu@full-enable.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl10/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>     - shard-skl:          [FAIL][121] ([i915#2346]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][123] ([i915#2346]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][125] ([i915#2122]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@busy-flip@c-edp1:
>     - shard-skl:          [FAIL][127] ([i915#7200]) -> [PASS][128] +1 similar issue
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_flip@busy-flip@c-edp1.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl10/igt@kms_flip@busy-flip@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][129] ([i915#79]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][131] ([i915#180]) -> [PASS][132] +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1:
>     - shard-iclb:         [SKIP][133] ([i915#5235]) -> [PASS][134] +2 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb8/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-c-edp-1.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [INCOMPLETE][135] ([i915#5213]) -> [PASS][136]
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk1/igt@perf@stress-open-close.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk3/igt@perf@stress-open-close.html
> 
>   
> #### Warnings ####
> 
>   * igt@dmabuf@all@dma_fence_chain:
>     - shard-skl:          [INCOMPLETE][137] ([i915#6949] / [i915#7165]) -> [INCOMPLETE][138] ([i915#6949] / [i915#7165] / [i915#7192])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@dmabuf@all@dma_fence_chain.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl3/igt@dmabuf@all@dma_fence_chain.html
> 
>   * igt@i915_selftest@mock@vma:
>     - shard-skl:          [INCOMPLETE][139] ([i915#6950] / [i915#7065]) -> [INCOMPLETE][140] ([i915#6950] / [i915#7065] / [i915#7192])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@i915_selftest@mock@vma.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl1/igt@i915_selftest@mock@vma.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-apl:          [SKIP][141] ([fdo#109271]) -> [SKIP][142] ([fdo#109271] / [i915#7206])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>     - shard-glk:          [SKIP][143] ([fdo#109271]) -> [SKIP][144] ([fdo#109271] / [i915#7206])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-glk:          [SKIP][145] ([fdo#109271]) -> [SKIP][146] ([fdo#109271] / [i915#7205])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_dsc@dsc-with-bpc-formats.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-glk9/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-skl:          [SKIP][147] ([fdo#109271]) -> [SKIP][148] ([fdo#109271] / [i915#7205])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_dsc@dsc-with-bpc-formats.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl10/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-apl:          [SKIP][149] ([fdo#109271]) -> [SKIP][150] ([fdo#109271] / [i915#7205])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-skl:          [SKIP][151] ([fdo#109271]) -> [SKIP][152] ([fdo#109271] / [i915#7207])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-iclb:         [SKIP][153] ([i915#658]) -> [SKIP][154] ([i915#2920])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][155] ([i915#2920]) -> [SKIP][156] ([i915#658]) +1 similar issue
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][157] ([i915#2920]) -> [SKIP][158] ([fdo#111068] / [i915#658])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][164], [FAIL][165]) ([i915#3002] / [i915#4312])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl6/igt@runner@aborted.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@runner@aborted.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl8/igt@runner@aborted.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl1/igt@runner@aborted.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/shard-apl1/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3524]: https://gitlab.freedesktop.org/drm/intel/issues/3524
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
>   [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
>   [i915#6987]: https://gitlab.freedesktop.org/drm/intel/issues/6987
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#7165]: https://gitlab.freedesktop.org/drm/intel/issues/7165
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7190]: https://gitlab.freedesktop.org/drm/intel/issues/7190
>   [i915#7192]: https://gitlab.freedesktop.org/drm/intel/issues/7192
>   [i915#7200]: https://gitlab.freedesktop.org/drm/intel/issues/7200
>   [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
>   [i915#7206]: https://gitlab.freedesktop.org/drm/intel/issues/7206
>   [i915#7207]: https://gitlab.freedesktop.org/drm/intel/issues/7207
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12242 -> Patchwork_109734v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12242: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_109734v1: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109734v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
