Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1184C3B6C
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 03:07:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DD610E6CB;
	Fri, 25 Feb 2022 02:07:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8CA10E6CB
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 02:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645754857; x=1677290857;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=5HwyK8lrIjdgrb0lJvFdtjALlM5bUi6nM+AF+msq51k=;
 b=FDqKvdGz2lYToOPl5iHjlM/UGe5HOvkASK9kvi6p5seGWGf72uOzBw8g
 YEN0oRYmp7ZtRzokJoSVE0nOdjMpaCNwx4CkRZje5olSwmV3CeXXI8pQD
 zClBoApePVjjUSPzaA86d3GCiT+qjnAgUASwJxV0KiK05LbP4LfgGj1IA
 pLry+7HUjVie++xvBQh/hg09riqG3sMomL/DT1FKVSsCAZPO7GMaF17d6
 GAhsaBzFSIyoQ6+/0wu02P2lyulbqX/UxxtHpNkKt9PjRMvvoleHkvLcd
 jkPND1G7KVxKW/CSIYz7dXGwUUMERf2hMUzGvq6nvP6XSc+ncylR9xhlo w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="277032331"
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; 
 d="scan'208,217";a="277032331"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2022 18:07:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,134,1643702400"; 
 d="scan'208,217";a="607622200"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga004.fm.intel.com with ESMTP; 24 Feb 2022 18:07:36 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 24 Feb 2022 18:07:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 24 Feb 2022 18:07:36 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 24 Feb 2022 18:07:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/9+Y/2UwBDSjrcIihzh0pIfZ3wtoTlheBCWTch+yJ592qxW0wjFCOMLsAZvJokZiFZgoyG02JcJy51yyW/J2CM+pPxGIWmDqwV4jZJiLUX/hMQfUK7YzEs42YkhLLxzAC3aTCLPw6HqFPMmM7z2E5xN9eaZv9Ylgnr/BIePkamafypFtaf4iEJD8gxDwOgIpYpz9ukugq3/cmooAmOUwhR+Xf9lIAY/vmPibtSwiymUzL3pa4brqw5VVROHNkNMqHGlxPiacEB9M+fvHokSG3ieUtGkCcETJQm2CXHenIah3FxQ+2w9AXt4VFURVPM85Z6E4U5tbRVntyeU3CHwHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FnETXmpyIveQB/i9+wX5S9lGwq+eIGfmjhEwo0ndO8A=;
 b=W12O22Y1NtgMFV+Zqp3ZV8fOfJJk/HEsdLvA+V2jIOEy99wCiIwgi/OvS1AWBkKPxK3n2FytepPAXHrzQbKoTLIVcsswoMBN06m37+qZ6jqrlOsj0qBC+1dVze4eL/fVZqtj3QLWRDVQUxRiBg8BozEUoP/b+xFIx1C6eQ3OeuyXmDgHXq7phpb2Dy7F5p5aB7TJmFk5EPnlWkCBOFOVZ7QWrzNHlXL8iiNWW7YnrAqWfaqU+9ToCvnveP3Q2ymrc3jINp21NxXeITVy8eBcYCB4/TneClUZLxEtCZ5HhR6azvvaqhMw/lLfYK+6wjW5p/lmiXxDwNp5AqlhzHMelw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM6PR11MB4507.namprd11.prod.outlook.com (2603:10b6:5:1da::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.24; Fri, 25 Feb
 2022 02:07:29 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7%4]) with mapi id 15.20.5017.022; Fri, 25 Feb 2022
 02:07:29 +0000
Content-Type: multipart/alternative;
 boundary="------------A660sWiCq0BHMHnC2fVVvbVD"
Message-ID: <09154c92-4ba3-bd73-a24f-981228f67ca6@intel.com>
Date: Thu, 24 Feb 2022 18:07:26 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Jordan Justen <jordan.l.justen@intel.com>
References: <20220222103640.1006006-1-jordan.l.justen@intel.com>
 <164553139777.23044.10409640137630856210@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <164553139777.23044.10409640137630856210@emeril.freedesktop.org>
X-ClientProxiedBy: MWHPR20CA0014.namprd20.prod.outlook.com
 (2603:10b6:300:13d::24) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 851a10b1-8e09-4444-91be-08d9f8039335
X-MS-TrafficTypeDiagnostic: DM6PR11MB4507:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB4507AEE2FD9FD4E988E3C8C1BD3E9@DM6PR11MB4507.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v4DUjKmkKXbZXx0lJjduWiBauEonN0e6L6W1lPMuaHEGhPK15qUEoKKzXpViD6Ffj+Y3B+fskqzYUmA+rbN+Wibcgmj+thzq3Rn4tv/0EPyi4lVaQZe/dGJ0X9u/XoMtI7luHNS5jf3BAWEwEN49UcX1W75HK4VT1L1AC2QjdSow/P0Dn1jUluNUE0hq0xwmljUhhVH57ECdMEccXc05q8fAvoK21NWsqZgecyBCGoaQMGgOOoNT5PEmFIf/R0ey0B1tiRLg3VIEFtGrlmD+mwObGV1KijmA+y83HI0ge69s3OnTbm2Cs/bOGOFjWjKShPN44SGD71JjvHyqO7X7OQrZCT+RgeSU7VkjW+Z5xJ8aaMj8RXm+/j+H89Dti0/3GfmyUZSwku4L1QXp+bwsvP+Z9Vxkc+D5MEcsZOCPeOXMcbrmq7ArtalCaCUzWvd7tOhIwDu9E7A0iI7gZFbyyl3VSC4LfFsdTNteDGhsQXjY6oA9enT/4NzzlHkNIX5SjF4xvOlr3Ea0U/4YT1bayuJETl1P97S2kxAbrwHmKxXaQUOwLBopMB9NH++GGOeMxqsrXCVsjHQ1YhXk4Aj6LFRdmBAkRPvn8QgqAzcdwezCZMp7WvFjMrxXCSnm3ajnfHVovVlEr/5eM1vhTxauX2eCdgVvr7nd8m+cLn/Gr2RoyZ2VrIeIsNmLcOiPLPgn/RRHboGLD73VSa6sjnkvByWHEEcRfJaujFAwNb3iWW8IYXUlU2LTB7Nb+QN+WySWVWWVlexzd4xfLbH4YZRzUcUpXss3R+om6HpssfujiCkQ11Pc2b27rpBM8MjBucwC2RCzWtk5WaL38JOLdN1rUU+FME6/3/rgUxk//5Y/MXM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6486002)(66476007)(66556008)(21615005)(38100700002)(966005)(66946007)(508600001)(6636002)(316002)(110136005)(36756003)(86362001)(31696002)(82960400001)(5660300002)(2906002)(30864003)(8936002)(6506007)(53546011)(6512007)(166002)(2616005)(26005)(6666004)(40265005)(33964004)(83380400001)(186003)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGk4RHJBRTl2aFYvak5ZTk4yWTNpQUh3UWdsR3lwTitQY3RaL0dBc09VTmF1?=
 =?utf-8?B?R1pNYmU0TzJ6MSttUUhqNVRNVGFNS1EvUHkxcXhKSUtiNlBYVjZvd2VhWW13?=
 =?utf-8?B?Tm1vamdrenQxRnhsZmgwUjZsQUtJekRFb2hPZUoraTdVb1NSNVVwZ3JmdHVV?=
 =?utf-8?B?clFYSkwvQUhIc2EvSGwxcjNzc0wvSFoxUnh4TzM4UHQ3MTZhdm1VRmx2Z2tL?=
 =?utf-8?B?bm9kVHFFNUw0eHJGMzEwVDZ1bVdBYTR0K0xqT0RYK0pOWjJJWFdZYUZySjk1?=
 =?utf-8?B?dXZ5R0V2Y0lyNUZKdFFvaFk2aFBlQVl4NCs3QnZiTTRjN2l1ejJMRlR2Ykps?=
 =?utf-8?B?dDQ3TmxKVUxtaFkyZ1F5SHY3TmRyYUMzbUxHODhPbStUY3Nrdzl4SytsUUxa?=
 =?utf-8?B?U1BUcFpZN0k1QmlNQkY5MFpWMkhBSVNjOFl5bThrY3FXUmYwV052ZnFSMHRW?=
 =?utf-8?B?WTRhcWx5OU8wNWl2WTJPYVlpNGVQRjZUT3RWTkdDZEVrUUtkTnc1ajBNc0hQ?=
 =?utf-8?B?OGVjL3lWdnpHWmdTWWp6SmlrMUFLMVdJRWp3bHBqWW9MbHI1TmRrZForcEdv?=
 =?utf-8?B?UENnVDk3MExDSGc2dnloT1FuTTlsdWkxUk9aTWlORW52R29oRGs5WWtta29H?=
 =?utf-8?B?ZGZ2VEw4YnRLNGxLM0l5Q3N3aFB3bE9qVE9ncjl4dVNkTmRKMXBKckEzNmlp?=
 =?utf-8?B?ZUpMZzlUT08vMlpLbnJONDBwYlFzRktwR2k0TnB6RFBVTXN0Q1htazJNaEpy?=
 =?utf-8?B?aFlwTGZuTmFXTGxtK0dRL2lWdzVoZ2dzTjdFTnFZeDNwMlJFcUJnenJyOHh6?=
 =?utf-8?B?bDU3d1JySnpaNmV5VnB4cXREdk5EQmo2NkxHWU95YlhEVUdtUUNWeWR1Z3V3?=
 =?utf-8?B?K3g3Vzk1aFJtS0J0UDFpcUhzcHoyS0VhQmxvcWNuM3hOd29IeXRTcEt2em04?=
 =?utf-8?B?SzVjZmgvNEZ0M2pZZkplcEQ2UDVBQzJob3lsbStxcGdoUlA0NW5RN210YUh6?=
 =?utf-8?B?OTNxVVJBR3JzNURBSmxjNlFpbDQ2Y3dRTmtYSnNQSWtVYVpTbmF2WE1kWGhR?=
 =?utf-8?B?aHdybkNHK2UxcFd1amwxd0s5ZlRGV2lSekRSOHVxMVhNcDdKcEdSMExGc1dC?=
 =?utf-8?B?YU5JYytnSm1CdFpsalQ2YmJGdEpJek5obkZ1KzlVUm1JTEpwZVVaL0JDaEgv?=
 =?utf-8?B?d2JUSFFZcytEVUdjc3MwR1NNYzc5cENJSGFKenkzTjBsWWVCNWd3RmRDUWpo?=
 =?utf-8?B?bGdrRTBOZllBbnp4RHFpWlRwSFRvMjBORWVWcGVCcGV6SVlNY3BkRURrZWR3?=
 =?utf-8?B?QzVOV0x3NjhSRllETHRiWk5ibUl6K1hPaG5ybG1QdmdRTUNqSGR4c1l5Ukpw?=
 =?utf-8?B?d3lYdkZpNXc2Zy9GU3BJS284Q1AySUgvV216N1F5b3B3UmkwZm9EcHhReXdN?=
 =?utf-8?B?Znl1WXM0SFl2Q2lBTzJTWXVFZmR5QWpPS2laVXBYcm9YcmpreElLNUp5Wko0?=
 =?utf-8?B?cGN6dnVNQ3FrZlQ5RzlkWGczRVA1b2M1d1dEanN2Rml0MnNXWW1ub2FFSms2?=
 =?utf-8?B?R0ZmZ1FRMzRWclE0czFJT2J5MUs3S3BFcnlBazFhYjRPd3praUJ1cm1jbUVa?=
 =?utf-8?B?NXpxcU1IUXNsMWprQjRRSkpaTHpnR25GYzBzYnJZNzV3UzNxTU5oNHFKZ3FR?=
 =?utf-8?B?VzMvVzQ1OEdYeVp6WU4rNll3UVV2aXdEcVdrdEVFUk44V0FPU2xYaFVsMmhj?=
 =?utf-8?B?UW1kNDVsKzY2dyttbythMHVrMjVrRFBrTFZRSlBZSXk0bVRpU2FQRHZrZ3BG?=
 =?utf-8?B?T3UrZFRQSXM0c2I5a1JkWGdWL3RLMEFBdE5kSTJnOWZkMUhPL3ZRNEFtcGZH?=
 =?utf-8?B?ZWhZcTM2b2tPaUptTms5SU0xMEloaEg2c05Ec01KL1FwNkVVa2JPOS9BZ2ta?=
 =?utf-8?B?dHdQOUNDaTJBYUdEVjQ5dXNDb0VITE1kUHRMdXhlSE9SSkdPWE1xaUN4NnRz?=
 =?utf-8?B?bUUxeE9NY3o2a1ZSQ0twUnhIdmtwVmVtQ3VFUnVvNG5qVjFkMkg4RlNaK0xy?=
 =?utf-8?B?c2NRSmFlNkxwUFcrR1hRVEN4aXZKcE8yTlkrNnhUZWVRanViWVg0aUFMNmxa?=
 =?utf-8?B?MEx2bFBoeGdEblZuMHBWRFhjU3poMGFLVjgyWE1kRnJ3czZNRGM4UzRaWDFH?=
 =?utf-8?B?ZGMzcGF1b2tDSGVveDNSVklqZ0ZOSzlkY3hYaVhrR3hlZElBMllKZUI5aTYx?=
 =?utf-8?Q?k4jDL9S/iW0OVmMAnjBoHYvkzYqci3TGtYxZTiFpAQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 851a10b1-8e09-4444-91be-08d9f8039335
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 02:07:29.0956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fnoj1pUAvDRnrjKwioj4eJQIiUIBgtjbhNrqZlQOA3aOUca2++Ga8Nn3m9POEufvzEVsGE4lWV4RpYb7F9Q/f4BYneqAFwAqTurRhRR8THI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4507
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR3VD?=
 =?utf-8?q?_HWCONFIG_with_documentation_=28rev5=29?=
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

--------------A660sWiCq0BHMHnC2fVVvbVD
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2/22/2022 04:03, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	GuC HWCONFIG with documentation (rev5)
> *URL:* 	https://patchwork.freedesktop.org/series/99787/
> *State:* 	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/index.html
>
>
>   CI Bug Log - changes from CI_DRM_11264 -> Patchwork_22348
>
>
>     Summary
>
> *SUCCESS*
>
> No regressions found.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/index.html
>
>
>     Participating hosts (44 -> 43)
>
> Additional (4): bat-dg2-8 fi-icl-u2 fi-bdw-5557u fi-pnv-d510
> Missing (5): fi-kbl-soraka shard-tglu fi-bsw-cyan shard-rkl shard-dg1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_22348:
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
>     igt@i915_hangman@error-state-basic:
>
>       o {bat-adlp-6}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/bat-adlp-6/igt@i915_hangman@error-state-basic.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/bat-adlp-6/igt@i915_hangman@error-state-basic.html>
>
Despite the 'success' subject line, this is a failure caused by this 
patch set and it must be fixed before it can be merged.

John.

>  *
>  *
>
>     igt@i915_selftest@live:
>
>       o {fi-tgl-dsi}: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-tgl-dsi/igt@i915_selftest@live.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_22348 that come from known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@amdgpu/amd_cs_nop@fork-gfx0:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +17
>         similar issues
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o fi-bdw-5557u: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#146 <https://gitlab.freedesktop.org/drm/intel/issues/146>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>      o
>
>         fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>      o
>
>         fi-pnv-d510: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +39
>         similar issues
>
>      o
>
>         fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>  *
>
>     igt@gem_lmem_swapping@parallel-random-engines:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@gem_lmem_swapping@verify-random:
>
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>  *
>
>     igt@i915_selftest@live@requests:
>
>      o
>
>         fi-blb-e6850: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-blb-e6850/igt@i915_selftest@live@requests.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-blb-e6850/igt@i915_selftest@live@requests.html>
>         (i915#5026 <https://gitlab.freedesktop.org/drm/intel/issues/5026>)
>
>      o
>
>         fi-pnv-d510: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-pnv-d510/igt@i915_selftest@live@requests.html>
>         (i915#2927 <https://gitlab.freedesktop.org/drm/intel/issues/2927>)
>
>  *
>
>     igt@kms_chamelium@hdmi-hpd-fast:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_chamelium@vga-edid-read:
>
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +2
>         similar issues
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +21
>         similar issues
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>  *
>
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>
>       o fi-skl-6600u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>  *
>
>     igt@prime_vgem@basic-userptr:
>
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@prime_vgem@basic-userptr.html>
>         (i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         fi-pnv-d510: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-pnv-d510/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2403
>         <https://gitlab.freedesktop.org/drm/intel/issues/2403> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>      o
>
>         fi-blb-e6850: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-blb-e6850/igt@runner@aborted.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2403
>         <https://gitlab.freedesktop.org/drm/intel/issues/2403> /
>         i915#2426
>         <https://gitlab.freedesktop.org/drm/intel/issues/2426> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_exec_suspend@basic-s3@smem:
>
>       o fi-skl-6600u: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html>
>         (i915#4547
>         <https://gitlab.freedesktop.org/drm/intel/issues/4547>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html>
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o fi-tgl-1115g4: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html>
>         (i915#3987
>         <https://gitlab.freedesktop.org/drm/intel/issues/3987>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html>
>
>
>         Warnings
>
>   * igt@i915_selftest@live@hangcheck:
>       o fi-hsw-4770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#4785 <https://gitlab.freedesktop.org/drm/intel/issues/4785>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_11264 -> Patchwork_22348
>
> CI-20190529: 20190529
> CI_DRM_11264: 3b562232559bd940e63f977619548e5cc70da985 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_22348: 5eee553b638ed3f343e129636be5fade999534e8 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
> == Linux commits ==
>
> 5eee553b638e drm/i915/guc: Verify hwconfig blob matches supported format
> 2f033c0ee9f5 drm/i915/uapi: Add struct drm_i915_query_hwconfig_blob_item
> d5c4e6d3f58b drm/i915/uapi: Add query for hwconfig blob
> c3d64e01c80f drm/i915/guc: Add fetch of hwconfig table
>

--------------A660sWiCq0BHMHnC2fVVvbVD
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    On 2/22/2022 04:03, Patchwork wrote:<br>
    <blockquote type="cite" cite="mid:164553139777.23044.10409640137630856210@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>GuC HWCONFIG with documentation (rev5)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/99787/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/99787/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>success</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_11264 -&gt; Patchwork_22348</h1>
      <h2>Summary</h2>
      <p><strong>SUCCESS</strong></p>
      <p>No regressions found.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/index.html</a></p>
      <h2>Participating hosts (44 -&gt; 43)</h2>
      <p>Additional (4): bat-dg2-8 fi-icl-u2 fi-bdw-5557u fi-pnv-d510 <br>
        Missing (5): fi-kbl-soraka shard-tglu fi-bsw-cyan shard-rkl
        shard-dg1 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_22348:</p>
      <h3>IGT changes</h3>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>
          <p>igt@i915_hangman@error-state-basic:</p>
          <ul>
            <li>{bat-adlp-6}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/bat-adlp-6/igt@i915_hangman@error-state-basic.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/bat-adlp-6/igt@i915_hangman@error-state-basic.html" moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Despite the 'success' subject line, this is a failure caused by this
    patch set and it must be fixed before it can be merged.<br>
    <br>
    John.<br>
    <br>
    <blockquote type="cite" cite="mid:164553139777.23044.10409640137630856210@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live:</p>
          <ul>
            <li>{fi-tgl-dsi}: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-tgl-dsi/igt@i915_selftest@live.html" moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_22348 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315" moz-do-not-send="true">fdo#109315</a>) +17 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>fi-bdw-5557u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146" moz-do-not-send="true">i915#146</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>
              <p>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</p>
            </li>
            <li>
              <p>fi-pnv-d510: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +39 similar
                issues</p>
            </li>
            <li>
              <p>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@gem_huc_copy@huc-copy.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190" moz-do-not-send="true">i915#2190</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-engines:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@gem_lmem_swapping@parallel-random-engines.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@gem_lmem_swapping@verify-random.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@requests:</p>
          <ul>
            <li>
              <p>fi-blb-e6850: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-blb-e6850/igt@i915_selftest@live@requests.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-blb-e6850/igt@i915_selftest@live@requests.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5026" moz-do-not-send="true">i915#5026</a>)</p>
            </li>
            <li>
              <p>fi-pnv-d510: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-pnv-d510/igt@i915_selftest@live@requests.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927" moz-do-not-send="true">i915#2927</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-hpd-fast:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@vga-edid-read:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827" moz-do-not-send="true">fdo#111827</a>) +8 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278" moz-do-not-send="true">fdo#109278</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a>) +21 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285" moz-do-not-send="true">fdo#109285</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
          <ul>
            <li>fi-skl-6600u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html" moz-do-not-send="true">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533" moz-do-not-send="true">i915#533</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-userptr:</p>
          <ul>
            <li>fi-icl-u2: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-icl-u2/igt@prime_vgem@basic-userptr.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301" moz-do-not-send="true">i915#3301</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>fi-pnv-d510: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-pnv-d510/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403" moz-do-not-send="true">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</p>
            </li>
            <li>
              <p>fi-blb-e6850: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-blb-e6850/igt@runner@aborted.html" moz-do-not-send="true">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271" moz-do-not-send="true">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403" moz-do-not-send="true">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426" moz-do-not-send="true">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-send="true">i915#4312</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s3@smem:</p>
          <ul>
            <li>fi-skl-6600u: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547" moz-do-not-send="true">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>fi-tgl-1115g4: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3987" moz-do-not-send="true">i915#3987</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-tgl-1115g4/igt@i915_selftest@live@gt_pm.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@i915_selftest@live@hangcheck:
          <ul>
            <li>fi-hsw-4770: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303" moz-do-not-send="true">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22348/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785" moz-do-not-send="true">i915#4785</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_11264 -&gt; Patchwork_22348</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_11264: 3b562232559bd940e63f977619548e5cc70da985 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_22348: 5eee553b638ed3f343e129636be5fade999534e8 @
        <a class="moz-txt-link-freetext" href="git://anongit.freedesktop.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a></p>
      <p>== Linux commits ==</p>
      <p>5eee553b638e drm/i915/guc: Verify hwconfig blob matches
        supported format<br>
        2f033c0ee9f5 drm/i915/uapi: Add struct
        drm_i915_query_hwconfig_blob_item<br>
        d5c4e6d3f58b drm/i915/uapi: Add query for hwconfig blob<br>
        c3d64e01c80f drm/i915/guc: Add fetch of hwconfig table</p>
    </blockquote>
    <br>
  </body>
</html>

--------------A660sWiCq0BHMHnC2fVVvbVD--
