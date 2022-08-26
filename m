Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A347F5A2B7A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 17:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D96310E990;
	Fri, 26 Aug 2022 15:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD9110E990
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661528634; x=1693064634;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=MuIlAY5klzxqJK0tLJBpbKthOP5ypLrEtti2W3XfnNo=;
 b=kKLtOpfM8xkRFOuXWF/u43NsDa6n21ZzovyY0l+Mt525dJ4I7/+/ol+/
 qijCiwTN2XPkahNoH7EqCVhDnKDirXHYCHgoi8Krj474mH1n4ko9dg+cM
 J/cv8/PgdSR8ZpHjrywJIrWdzU0EjY5bYSd2O3zs8E9zEAC2h/7RyJk37
 FzQ3lGluZnFZ2qb3ffv8oMq8KQy2IWlnI15MEtFGO0Oj0vBFUZl+v1sd+
 bIPwYWhppBJAmQ8Ems5lxvA+0rM994JsjmQS7qcAU7F80kvvmHqKp3NIG
 7NIZOwQ6pmx+l9Ila2v4S0GgBSTQ5A5k1xhRucIuY99QT1Wjfl5tzNVoA w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="293274766"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; 
 d="scan'208,217";a="293274766"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 08:43:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; 
 d="scan'208,217";a="643701252"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 26 Aug 2022 08:43:53 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 08:43:52 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 08:43:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 26 Aug 2022 08:43:52 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 26 Aug 2022 08:43:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=irbDaVVKto/Ti17oilebJhi8zLJWYY9+7PMB1MsT/M+c2fodT+YAAmeNs0132ftV+LFxTRiYCAXhQrsmnlJ6h+yoHTk81BaL7bzkkIw2VP02ms3hxRU52ShUD5MH4Qhom4jhyAOGymsTSBySvEoMcgxBx3XFQqW6adtXkWeq8I4eIEEySaRwifs85UuCdiJDgZMol9Hk1GW9HGdgfXCskVX6eKjAaV25SPVIYNwBoY/hiQ2p9TXfvg9BMPPEJQBLD3xCUlIzrZlQc/xRrdEWKcejA8UDNFE5vFokDKmMQTlbVLn0PNu17eY5LRbo2MAe3nQGl3BWwSQdaF2Kc8jtYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DJyW9nkdZ4oW/6L4yRLaBY8Rir19syQUZSjcIHzglHU=;
 b=LeWxQkduqaE7vrWdBn87JZ5Rc63nfjsA7x77+y45XUkzCC1RRhfbyO9E8s27Ve7p40yBtnqIOMjZbKhANCaa2EghNTUWCuZomPvG94/3UlD9RVLwuW1mL0xs8NCSxbC+jsVcVKP5aDw6IjTcEU+Z0wAlTQkNe3J4rSCbchFtbasO/2fr+9zcGK0eKE/LVcI0JhK4blZP8a1dbAdt8DKUK9lBnKyBx/9Ip5CGhwKMZB1edIRNeFNpGbsy0iHdTe3x9/qWPdp/cdwQLNVPVSdmyahuolcawBMELb7cnJ4tPsmfgK2y3EPPVGqrivBENrVJ2peN2lIZtpjC/XKsyAOwkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BL1PR11MB5955.namprd11.prod.outlook.com (2603:10b6:208:386::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.16; Fri, 26 Aug
 2022 15:43:49 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::d078:34f1:873f:a40d]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::d078:34f1:873f:a40d%6]) with mapi id 15.20.5566.015; Fri, 26 Aug 2022
 15:43:49 +0000
Content-Type: multipart/alternative;
 boundary="------------mXRO5a8Xd24rCmpeUUXjMINR"
Message-ID: <0f47d1d9-628c-1cfc-6b5e-188a70bc8992@intel.com>
Date: Fri, 26 Aug 2022 08:43:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220826030553.2611574-1-John.C.Harrison@Intel.com>
 <166148578698.30040.9850551299214570369@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <166148578698.30040.9850551299214570369@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR16CA0024.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::37) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 23a87371-2767-4ef6-41b7-08da8779c52b
X-MS-TrafficTypeDiagnostic: BL1PR11MB5955:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OAp7+KlBdaUb1btNcJRRAvFVAJxlmb8RJZZVxWmDZyuVL8xZIlXpAjB2PmQcgtdn9bOXlabN9W2SYpwaADMYiFPoX+tzrlqWzC9zQUuckPLYS5dPDUb2+5kKb0H92mtcUM/6hHPdC+GKnbvEJqqp3YYqy7YsO8rpmsH6nOW8R1glyltcqW/ce1bKUpFwolIIUv1AN8QXu0eu/orn3jtj3EIpaAJAbsrOMafZJnDOjhv/7Ep/sKicMhy5OC9O3XVwxuruWCsdsJAGrTWAU/gso/3X+J95Imb5c4TgWIOdAf8NeUNUhJDcPflMjlBEw0Sn5xli+S6QZvN6u4LLxHpJBP8GcHzNN/DFEmzU+nM2lhe/jcH2bcj1e9ocC2MgUNaWMgxlb/k/XWSOpB12LMErwcmDn7b5bbLfuTAjQDoaoyV/xicGeqvxhatR9TyZc8Hj89zYdbZq9wdNdu1W0E6uL02rtPCpeYk3lAuLLAjwz0yKPWBvA9ZOH1mGE9MFPPvjcBwalc4pLZilV9LMPud5N5sxYKqilp1aio79KVjEGkHhXb993mA+IFHcMMZK5tw8GEKH6oWQcR8IkC4fpgZfw1uK4vzlg3g+HlCJdJlxNkc2uuzLq7xWmM73Ugyt/tzo3frIUEPOp1SWCFD8KC9UbqG1COJ7Re6n3d0PwojkBRj8z6AdQLVFhqWUCIl9ejN/3WnPkKdvlUgO3Z8j2FapHuTiQ6XjTMPtKwC8ZEEFwrGTBR7lAlLzG6Hk1kx+0rf8OziRfTxjvaSTXiGY7/ZZs2ChP000V6SLidyfct7V5WL196B70SyejwnflScwfShX4BoeTqx2YlMOU+DRQGBbtpXdOdtDIV0R1OGxmwbWLiE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(39860400002)(376002)(366004)(396003)(86362001)(31696002)(166002)(38100700002)(82960400001)(316002)(6916009)(2906002)(21615005)(5660300002)(66946007)(66556008)(66476007)(2616005)(186003)(83380400001)(478600001)(33964004)(6486002)(966005)(53546011)(6512007)(6506007)(26005)(40265005)(41300700001)(8936002)(31686004)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3N0MnpHV1JyTENhQ1krWFptVkpaVnl4UHA3RHg1NXFGaUdDNzhOMXk5aUUr?=
 =?utf-8?B?OFhzSytQcVpBSzNjOUIrQ0lwVGNCd2FaNW1EWWVaSE1wUEd0ay9FcE5UM3Bw?=
 =?utf-8?B?Tjc5S0Z3bG1kZHFlKzlqRjhyeHVpSXBqUjgxWllKclltUStrY3gyTnBVVUtL?=
 =?utf-8?B?WGpjT2dnOEFvVkROa1ExQWZSY2JxOG1iMTJlVEdzOU9VQk11MzA5TFp3YS8y?=
 =?utf-8?B?SmkzQ1lHWCsyK3hlem5TT3BYQzJTUVYyVlJ0S0NvT3FmZzlEcU5KbmdhR2ND?=
 =?utf-8?B?eHR3amJ0WDJMQlZIYnBuMjJnUm5BSDcxTGgySGgvUFIvWTQ3eUxRVDdoWnZF?=
 =?utf-8?B?bGs0bS9oZEltenR1WUFxVElXdDd2MmN5ckZ6UlFBSnVnSmZGLzlxUjlIMHFr?=
 =?utf-8?B?SEEySTMwNkx4NzJkMmltcHJvOXlwYWFsb1Vpb04vMER3V0ZFd2VJT2ZwMGNC?=
 =?utf-8?B?cElxU2gzWHVsM3VVbzltazltbGVsZGZMSk1tWmZJQzNhY1Z6akFQR2xzRlI3?=
 =?utf-8?B?cGhtd0lsTzlndGdyNmQrTnd3UlkvQUorcCtZWkhUZmd6WDd4aG1Da1oyTFk5?=
 =?utf-8?B?ekZtazNzVzdJNGN2RGdKcXBwcVR5aGl3UmR5VVBqdTlmSGtlMC8waDhFMDZo?=
 =?utf-8?B?NFR3MXRyT1RnSlRMamtNdGQ2Rk8zelNUQVMzR2ozNXZnZ0pPQ25XWjlza1F4?=
 =?utf-8?B?eHVVS1RDbkJXdXo1QzVJWEpqbWk5MXpIYXNWOUl4MHp3SDQ3UVdiUjAxRWxI?=
 =?utf-8?B?R25Nb0dReUNaRS9TYTB6akVydVlSdUpndEFBSnBJVlhnTVpxa0owUFpKN2Vq?=
 =?utf-8?B?L294TkVNSUc0WWVNcUo3aFVRbE1DVDFZQWRSanFHckhYL2cyeG43QkZhdGpN?=
 =?utf-8?B?NG1DajRUZzhrUHM1OVhCd0FCNmtDbDNxbzdjeHppaWJLNkszbTFCS2tjdXQy?=
 =?utf-8?B?SXlGb0tWMlNQVlBodkhIcmtxRWFieEtScVlqYXZieHk0b0QxQ1paWCtQUXF3?=
 =?utf-8?B?NnF2dGZGdHAvTHE4QklWSU12TjRIMWpRTFQrYlZteEZDUFpwTlZtZytKK2xm?=
 =?utf-8?B?ZzdEK2tHZzVQUHcyWks3NnB0bU1xMU04RkNQMHpaOWFzWjJoSUJ2a1JRR0py?=
 =?utf-8?B?bGdoN1NydFRMalY3NEV6aTNIRG5BTjlEQlQyczB2Y1c1eGJ5ODdTc1NQR2pa?=
 =?utf-8?B?QjR0T2p0N1NPTUtWWGxYY0s2WHA2aWRhazdnNm1nVWpsV3l6akg1amdyK0sr?=
 =?utf-8?B?RlNWbjZ5RUdXc0VuNHU3Vk5PR3dWVmNna1VzeDFYWmNYbTIwL21vUjZzcGRF?=
 =?utf-8?B?dytLRlhVTGRialB1SFpkSEdpYmZaUlZHUUVVQ1lPRUhrejg5NzF0VlhwYUNV?=
 =?utf-8?B?c2lncXdwTUJPYkxGUXZoajg3ekVaR3NBeGlUbENhcEQ4dHJvVDhUWU1GSHpp?=
 =?utf-8?B?S0w1SlJaMXhiRmNuQitxU01YZXRJbHYycks3eFluSEVPR0hHdDQrTEtaWllx?=
 =?utf-8?B?bUZrY0ZZOGZGb21JVzZMRXlpd0VPeFVTSnFWMm5NdTIwUWxaTC9MWlVFc2Fw?=
 =?utf-8?B?WHdZMXFjSHMzYlVlQjREZjBLTVI5dzgxeThxRXNYZHNmNmVjb2d1K2NTNTBK?=
 =?utf-8?B?M0p3eElLL20vTm1HbUJIK3hCVit6cUxudmVMdFhuVkM3allnbDRYaGpEeTR4?=
 =?utf-8?B?NTNreTZYOGV5ZUVsMFlnblNwbnB6QTFwOGhaLytBNzhnWGZZS244c2FSOUxM?=
 =?utf-8?B?MjkvSFJHaU45Nmt3RzN3WHo1cnhLOS9QSXRKQzhVTlNjR2JDNDRLNFNjemtW?=
 =?utf-8?B?WEJyRTMwRmtlODI5T0U1QkE3NjB5UEhQOVRDcWJMU3BHVGVyS3ZZbnJUTGxv?=
 =?utf-8?B?QkRyQUFITHFqbkIybWRpQXhKQU56MjFZcVBHUXB2QWNKZ0J2V29wUlExaTds?=
 =?utf-8?B?VjFhNU02aHZrZDlmZXBuM2FCMUpuSHpBQTFyRnk3ZDgzVXNzRS9PSW8xRXJl?=
 =?utf-8?B?RXpPaFJSN2N1ZVMvTkNVcDJTK2tVTUZBa0p4SGFqaU0wa2NEUDBCWHdSREYr?=
 =?utf-8?B?QTlxLzZFTTZZVk9qNXQ0WW4veHlQWkJEZzVyOGZqMUFleDh5MXcwcW5Za2Fk?=
 =?utf-8?B?ZnhGSkZkZWEzTjZOcHRhdE5KN2FtOWFmYXIxc280dlFhVVFCZ1FYVkIvM1N1?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23a87371-2767-4ef6-41b7-08da8779c52b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2022 15:43:49.6491 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZQPgzQkISOid4DrdytduzOwHbwVjG+KGQpSp+hkzxHZ5HEI66HAUbfOpa6n2ybqEOuUOMBCX1ZDtjYaHbGK+QE1OGMGJFaCgGWM9XP/pLvw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5955
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRHJv?=
 =?utf-8?q?p_version_numbers_from_firmware_files_=28rev3=29?=
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

--------------mXRO5a8Xd24rCmpeUUXjMINR
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/25/2022 20:49, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Drop version numbers from firmware files (rev3)
> *URL:* 	https://patchwork.freedesktop.org/series/107340/
> *State:* 	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12029 -> Patchwork_107340v3
>
>
>     Summary
>
> *SUCCESS*
>
> No regressions found.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/index.html
>
>
>     Participating hosts (33 -> 32)
>
> Missing (1): fi-kbl-soraka
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_107340v3:
>
>
>       IGT changes
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>  *
>
>     igt@i915_module_load@load:
>
>      o
>
>         {bat-dg2-9}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/bat-dg2-9/igt@i915_module_load@load.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-dg2-9/igt@i915_module_load@load.html>
>
>      o
>
>         {bat-dg2-8}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/bat-dg2-8/igt@i915_module_load@load.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-dg2-8/igt@i915_module_load@load.html>
>
These are expected. Patch 3/3 sets DG2 to only allow the new style file 
name and the new files are not yet pushed to the repo. This was 
intentional to see that the load would fail as expected.

The DG1, ADL-S and RPL-S results shows that it tried to load the new 
style files, failed to find them (as expected), dropped back to the old 
style and successfully loaded those and ran with them:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-dg1-6/igt@i915_module_load@load.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-adl-ddr5/igt@i915_module_load@load.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-rpls-1/igt@i915_module_load@load.html

Unfortunately, the ADL-P and ADL-M results are invalid because they are 
apparently failing to run due to IOMMU issues that do not appear to be 
i915 related. KBL and APL are showing the same failures.

John.


>  *
>      o
>  *
>
>     igt@i915_selftest@live@ring_submission:
>
>       o {fi-ehl-2}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-ehl-2/igt@i915_selftest@live@ring_submission.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-ehl-2/igt@i915_selftest@live@ring_submission.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_107340v3 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@i915_selftest@live@hangcheck:
>
>      o
>
>         fi-hsw-4770: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>
>      o
>
>         fi-hsw-g3258: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>         i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>
>  *
>
>     igt@i915_selftest@live@requests:
>
>       o fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-pnv-d510/igt@i915_selftest@live@requests.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-pnv-d510/igt@i915_selftest@live@requests.html>
>         (i915#4528 <https://gitlab.freedesktop.org/drm/intel/issues/4528>)
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         fi-pnv-d510: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-pnv-d510/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2403
>         <https://gitlab.freedesktop.org/drm/intel/issues/2403> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>      o
>
>         fi-hsw-g3258: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-hsw-g3258/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#6246 <https://gitlab.freedesktop.org/drm/intel/issues/6246>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_12029 -> Patchwork_107340v3
>
> CI-20190529: 20190529
> CI_DRM_12029: 77ebe479d84890d78217fb7a6b556f7de71866f3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_107340v3: 77ebe479d84890d78217fb7a6b556f7de71866f3 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 9f6445fdae59 drm/i915/uc: Enable version reduced firmware files for 
> newest platforms
> 29eb7ecd836a drm/i915/uc: Add patch level version number support
> 5636c16c1a4a drm/i915/uc: Support for version reduced and multiple 
> firmware files
>

--------------mXRO5a8Xd24rCmpeUUXjMINR
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 8/25/2022 20:49, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:166148578698.30040.9850551299214570369@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Drop version numbers from firmware files (rev3)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/107340/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/107340/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>success</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12029 -&gt;
        Patchwork_107340v3</h1>
      <h2>Summary</h2>
      <p><strong>SUCCESS</strong></p>
      <p>No regressions found.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/index.html</a></p>
      <h2>Participating hosts (33 -&gt; 32)</h2>
      <p>Missing (1): fi-kbl-soraka </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_107340v3:</p>
      <h3>IGT changes</h3>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@i915_module_load@load:</p>
          <ul>
            <li>
              <p>{bat-dg2-9}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/bat-dg2-9/igt@i915_module_load@load.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-dg2-9/igt@i915_module_load@load.html" moz-do-not-send="true">FAIL</a></p>
            </li>
            <li>
              <p>{bat-dg2-8}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/bat-dg2-8/igt@i915_module_load@load.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-dg2-8/igt@i915_module_load@load.html" moz-do-not-send="true">FAIL</a></p>
            </li>
          </ul>
        </li>
      </ul>
    </blockquote>
    These are expected. Patch 3/3 sets DG2 to only allow the new style
    file name and the new files are not yet pushed to the repo. This was
    intentional to see that the load would fail as expected.<br>
    <br>
    The DG1, ADL-S and RPL-S results shows that it tried to load the new
    style files, failed to find them (as expected), dropped back to the
    old style and successfully loaded those and ran with them:<br>
    &nbsp;&nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-dg1-6/igt@i915_module_load@load.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-dg1-6/igt@i915_module_load@load.html</a><br>
    &nbsp;&nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-adl-ddr5/igt@i915_module_load@load.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-adl-ddr5/igt@i915_module_load@load.html</a><br>
    &nbsp;&nbsp;&nbsp;
<a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-rpls-1/igt@i915_module_load@load.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/bat-rpls-1/igt@i915_module_load@load.html</a><br>
    <br>
    Unfortunately, the ADL-P and ADL-M results are invalid because they
    are apparently failing to run due to IOMMU issues that do not appear
    to be i915 related. KBL and APL are showing the same failures.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type="cite" cite="mid:166148578698.30040.9850551299214570369@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
            <li>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@ring_submission:</p>
          <ul>
            <li>{fi-ehl-2}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-ehl-2/igt@i915_selftest@live@ring_submission.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-ehl-2/igt@i915_selftest@live@ring_submission.html" moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_107340v3 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@i915_selftest@live@hangcheck:</p>
          <ul>
            <li>
              <p>fi-hsw-4770: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785" moz-do-not-send="true">i915#4785</a>)</p>
            </li>
            <li>
              <p>fi-hsw-g3258: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303" moz-do-not-send="true">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785" moz-do-not-send="true">i915#4785</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>fi-pnv-d510: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12029/fi-pnv-d510/igt@i915_selftest@live@requests.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-pnv-d510/igt@i915_selftest@live@requests.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528" moz-do-not-send="true">i915#4528</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>fi-pnv-d510: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-pnv-d510/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403" moz-do-not-send="true">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</p>
            </li>
            <li>
              <p>fi-hsw-g3258: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107340v3/fi-hsw-g3258/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246" moz-do-not-send="true">i915#6246</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12029 -&gt; Patchwork_107340v3</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12029: 77ebe479d84890d78217fb7a6b556f7de71866f3 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_107340v3: 77ebe479d84890d78217fb7a6b556f7de71866f3 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <h3>Linux commits</h3>
      <p>9f6445fdae59 drm/i915/uc: Enable version reduced firmware files
        for newest platforms<br>
        29eb7ecd836a drm/i915/uc: Add patch level version number support<br>
        5636c16c1a4a drm/i915/uc: Support for version reduced and
        multiple firmware files</p>
    </blockquote>
    <br>
  </body>
</html>

--------------mXRO5a8Xd24rCmpeUUXjMINR--
