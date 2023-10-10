Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE187C036C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0BC10E3B4;
	Tue, 10 Oct 2023 18:30:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC86A10E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696962633; x=1728498633;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=/YIeGhS7Q/PX6cddS9tKfj3coXPSNOgYAuETTxQVAEM=;
 b=UZSfiJPGbhf9gImb6Ag7CvbyXPNgoB/b0BE2TjnhQ5fVHBR1MFTxsuc8
 B/BlewOVquU+hkUMqCW2bafT3s7qpYISPGxLwWJWN8HMPvi9AgzRgDN1P
 0n6cAkCTntSSrfvdjmSDv8i72h3F3MWB39cERSSbrtJxSo9KvZsBOlJ9T
 oaMFhNqLCUF1tN01zJRQM1lacASxXvCoC09WRR/VTM5a94r1Fh+y2ZEyj
 1EIA5H0Q/qjSGWZGVPZZhQ3YTfLFSXOKVrPlwQW1XqsaayRPQUpkRxkSj
 T0NLJQtW1hq8wmTfDCtGXT7yzkVO3uiaufAucUQyW4jzwIP8w0NwRlUPh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415506946"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="415506946"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:30:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="703400734"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; 
 d="scan'208,217";a="703400734"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 11:30:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 11:30:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 11:30:31 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 11:30:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWmUsgvQXDyNuQGCEny/z3fp0dXbvPslrx3ZqFi84byGgfqbogU0JqpAkrxJ4SVqzhcccxMmjSN1Ek+1hAI+sxFAOf87xQ4t7jdlj4w/+RvVVOE8U1v1g7qql8Vtmde7EjStsOSE7TcRQs4KbkP4XLySXvujcGIH3Fa6Me2Z7b03qFor9HLoAHAnG7/mmNkUSsz9auEzKIuTCtdU3Y7gFCSv7QiFJlx61XIm9PuA+43L8y8jANtpwkUX5c7hAXCtsVgP/1jVlgboMFcCbJaMDf8VdtEQGoN5uBKaEg+sQIL0r9LTCWuD7mfiJu1lX+8LuQ3wdRmYERJAWWj8dr2Tqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RLf0adb/Hy6XgldIxvlELLz933cXhcvEzB3R/1+7nKU=;
 b=ImhhVUpqk83gtEGKPIu1S8KOaZXBuwITlODvlgzizm7la4yv5To+pMylQWOkxXNqb00p21hui5flkSXX0+jU2g0rjJHfj6N6FVRqN/6+pB84yILfJy7hZdbKoGhwrai6CHbxkUCWkruGe2fes5GSb91u/MgWBAG/pzWOwc2gwnYnOCkLUUKjbSDWPTjt0Hyc2r2sjubsTdUcL2d0ZKZFtUPEs2er+IUGOGHdcmRe9YoNfN/J94RCgiha3JQ8WHAQInmh6kXtJgXl38AxiP8N6JJmNfwzA2mwrv19KA+iZZN74gY+W3HCzWgM5DunL51m/asw+ODYDY9FO54ooRijyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH0PR11MB5781.namprd11.prod.outlook.com (2603:10b6:510:14a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.41; Tue, 10 Oct
 2023 18:29:57 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 18:29:57 +0000
Content-Type: multipart/alternative;
 boundary="------------HSMNg0qezQ1IEIt4S7wY1hTh"
Message-ID: <c5b6f2a6-0983-48a8-accc-15ded0121f6b@intel.com>
Date: Tue, 10 Oct 2023 11:29:54 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20231009183802.673882-1-John.C.Harrison@Intel.com>
 <169693777246.28098.11353036775005396680@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <169693777246.28098.11353036775005396680@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0271.namprd03.prod.outlook.com
 (2603:10b6:303:b5::6) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH0PR11MB5781:EE_
X-MS-Office365-Filtering-Correlation-Id: 6eb2c15d-c8a3-41b4-653c-08dbc9bee772
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KHjNjlt+NXwZzsNvpFP4hO7F1p+wV9nM1po/pFPqzZ0Xqba+uJA2gm9NQ+mEaVcpIu7SCwJM8e/0gDh33dXskCJHRt8cpwxNN1QUXrJoHYMGvxOIvIbJW8PAcwsth3993wRebv2GWBtqscrjhncShWJsGPh8kkhLIWWT5xlQPz6X+t436v6QztcyEvir8I0vMFwN0BtglW0w4hPKaHQGSd7VT5reb6Txy1qpRBjqcwJXtSEt5hJyYigVOOozK6JlMGy+yIxF5/V66NlFzfwOwPLvbt8BlVQTlhMXj6AWphxsFcmcNDEYG1e8IE38A69qGtwGpsYfabb5A6YyzwrLNb0z9UhxD1hKn2j3VT96tOUM1AEgwmb5BtoFA+0OlLxxFqYWI4iFkBEJMJIm544fuFeFpiYlsYJ9ccNGXxmJsVCuefKXsrPjRuDMD3NgicQjzaNFoMNSu8VrBVLl2Fo7vdvoNjzLHdnP65IXSf8pik9q2ykJQiuwkvHT3BZ8GtzNtIzfJwz0DsM/3JgOvrmoTw0UbO0fJjkp/wqvtrWmWjMmntv2Tkf0tiE4ILIEG6RvmbLWDtQkFuiaEjuyrSGvAPKxFl6vX4hqOMzxXqqMeBobbJ+pr4QH5pZpSPwvRngR/Q+hotHsGQYcI/NBsXbfjw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(136003)(396003)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(6512007)(86362001)(26005)(6666004)(33964004)(53546011)(6506007)(40265005)(478600001)(966005)(6486002)(83380400001)(2906002)(38100700002)(41300700001)(5660300002)(36756003)(8936002)(66556008)(66946007)(66476007)(21615005)(6916009)(15650500001)(31696002)(166002)(316002)(82960400001)(30864003)(2616005)(31686004)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkVMTW5lbU1OS3pUVmsycHNOaVBXeXdBNHI5TU5GTUxlTFZic2c4ZXdsdUx0?=
 =?utf-8?B?NnJDUjNFaFBoT3h0Q2hVMnRIUlNKZjFmMUZWZndDRUMwbEZENUJuSU9WTCtF?=
 =?utf-8?B?RGVyT1M1bXBGaWdEeHQ0OUdwNWJnK2dsVGtaV084dGlOSWFoS0pXeXFuQmVy?=
 =?utf-8?B?NmZuMjBIdWNEUkZSYVlIM1MzU1JhSkp0cGRUTHM2eUJKUlJ3ckVvTHp2Y2dN?=
 =?utf-8?B?R3Q4N1ppWVJxNEM1emlVNDBzQXZKMFVVYm1zMHp5M0ZMMmxIZlh6QStnR3Iy?=
 =?utf-8?B?MVBNTFE5M1FsL1l4UmFKZFJUV3pmRGhkQ0Roc250T05IaEw4cnd1dTJvNURs?=
 =?utf-8?B?OGVCOTF4VEJmNmIxM3kzd05JWnRNODZxNzh0WldVZTlUNUxPS3ArK0pPOG5P?=
 =?utf-8?B?dTVFY2p4K2hHS0Z6bTN2enpNclRtTmtnclBhUVphWTJ1dHNPbCtUVzNFbFBD?=
 =?utf-8?B?RU5iVUJvNld4UlZ0ZWJoU3Urbk14KzZpVHVJclN3WVUrbFd5YVpvUi9VVnYy?=
 =?utf-8?B?MTdlYzVLcVpUUVpacFRUR0pPZFRTOUFMd0Y1ZkdDVkFxMkpPaC9HUi9Wc3J1?=
 =?utf-8?B?akNHM3kyYzJlZ3ZpZXlJaXo3T1huUVZ5WW1kUTNJTWJnaWtUZTBzT08ranh4?=
 =?utf-8?B?UEJmYktOQjh5eGhSVXNmck55dHZJdzdsK0J0UU9GZFBIRksxdGlQeFNqdmZj?=
 =?utf-8?B?Sjc5Q0p2Y1JXemp4KzNMbDhjV1ZjT3BDRUZkNFNoanhxNjJrSG1TRGZQU2h5?=
 =?utf-8?B?REtOYkg4RmJjNEFGVmlJc1BzL1J5T204d2YwOVhyTTJzSGhSaGVqZEVyZE43?=
 =?utf-8?B?T3pRKzlLUXVxRHNkZ2JZb1Z6T2QwQk1BUnFGRjFCQmpZOFViNHZaQjNiZ2Ev?=
 =?utf-8?B?RytWSlZ0ZXdkNWdJZCtOOEdUenNZdDVIVmJ2anJFRVhWT0h3cG9hSHNrU2VF?=
 =?utf-8?B?dlFEOFpnRm92UUNJVktNMUEyMTBlMjVrRnRFdG1hbVpnQ2tGOFltWktwN1lU?=
 =?utf-8?B?WGJRNGpCQjdqOG1xT1V0VEx3L3kzMFUwK2Z3amhtTFJaMnNaRGROelZvTDdB?=
 =?utf-8?B?STkyTkx2bUd5amRzSTdRY2FvNUtpZmp5Ylk5Sm5JTVlEaUlIaUZLM2Nkekwy?=
 =?utf-8?B?M1E2L00zYXRkemltR1NIWnhvaEM5OTNycjNZaGR2SFBKemhFY0tOZ2VFMGhi?=
 =?utf-8?B?alN6a1NoN1MzRWFaZzMvY2wzakJYTlcvTFdQakZ3UWZhV0dxVlNCV0V5SHY4?=
 =?utf-8?B?UnJvdlhlamVHWXNpWmV6WVM0cW5YbFJuNHdJQXRzajRvWmdRQ0VvNDgvY0Ny?=
 =?utf-8?B?R29GWlRHaUREdWUrNndGcEZLWFBrV2llUGthd1ozQ1VqenNXWkdhc3BqVTBX?=
 =?utf-8?B?eU12RWVQOUF5QUFSK2REcThTSUF1KzhxWTRXMnFNWFU4cENDdytIRDhOUC9Z?=
 =?utf-8?B?UGJ5Y2JEY1U1MkVTQTVxdkFLRXhiRTB4K0ZKNGFEaVVEeTR6S3NtdHJNeXJJ?=
 =?utf-8?B?THp4elRSeVZyZTZKNndSOUFHQ0xVdDNSOVk4YTZhWXVVeG9pTUZEenZoVTNi?=
 =?utf-8?B?bnAzdDZkLzN3ZnJub3RVMld2dzAyYlJDK0RBbUJvWUREZWgwZzZoU3RQRmt0?=
 =?utf-8?B?Y2tkV011RklXbExjaFRBUXZ5bWJIcDU4YmtIU3p5dk5VMUxTbkh4UDhnTVdN?=
 =?utf-8?B?NWVMVE52N1VOcEtqTmdTNEUwQm1nUSszLzNRUjZGOXpmeUNEN2ZkMXVBZWlz?=
 =?utf-8?B?MzBZOW00WlBvV2tyM3Y5MGVSYnViMXVwU3hhTG00aHU4SEZQMHVkeGdXcHcr?=
 =?utf-8?B?bkE4T1JOMWRVY1JQeGpOdVQyUWdzOWg0Z01ROXd4MStnR2R5SVEwVnBaYjhN?=
 =?utf-8?B?SU92bXlwQ1hBRjNQY2k5UzlFUGFlVlVaR0lUNGtrWkxCTjJ1cmlmajl6M2ZT?=
 =?utf-8?B?a0QvRFpZanRidjAzcXB1K1ArU1ZGZ3RjeGVuc2o3MGU2UWsxeVRabkxOOU1X?=
 =?utf-8?B?akpsMnFhV0FHazJJZEhhR3RNd3JJUG1oL0hYOVlqZzNXQzYzeVZmUTAzZGVi?=
 =?utf-8?B?eElERmRCd1Y3K0Fjemp3aTgvNVNkTVdZZFlUN1laZmVRcmNsYU5Kd054T3c0?=
 =?utf-8?B?L3BvN1MwajF3Q1RPMHRFeTM4Vlp1ekl2Y1JGVFBhVFkvQXZJWEs0V0JiSGt5?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eb2c15d-c8a3-41b4-653c-08dbc9bee772
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 18:29:57.0569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ARLPGwN8U78tWZfN3B9HdMvBcRdBjagjBDO7rnRL7N9x1TIcGHS47k+Wm79Y0fP6PjY1B8KlF0nWsO+EXVelp42G5vOvJOopztMGw/b4Qtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5781
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgTW9y?=
 =?utf-8?q?e_print_message_helper_updates_=28rev2=29?=
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

--------------HSMNg0qezQ1IEIt4S7wY1hTh
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/10/2023 04:36, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	More print message helper updates (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/124853/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13732_full -> Patchwork_124853v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_124853v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_124853v2_full, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/index.html
>
>
>     Participating hosts (9 -> 9)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_124853v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_exec_suspend@basic-s0@lmem0:
>
>       o shard-dg2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html>
>
Looks like system or the test environment died during suspend. Logs are 
corrupted from the point of suspend so impossible to say what happened. 
But seems impossible to be the result of improving the text of some 
debug prints.

>  *
>  *
>
>     igt@i915_pm_rc6_residency@rc6-accuracy:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@i915_pm_rc6_residency@rc6-accuracy.html>
>
RC6 residency mis-math. Not related to changing some debug prints that 
were not printed during the test.

John.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_124853v2_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Possible fixes
>
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html>)
>         (i915#8293
>         <https://gitlab.freedesktop.org/drm/intel/issues/8293>) ->
>         (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@api_intel_bb@blit-reloc-keep-cache:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html>
>         (i915#8411
>         <https://gitlab.freedesktop.org/drm/intel/issues/8411>) +1
>         other test skip
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html>
>         (i915#8411
>         <https://gitlab.freedesktop.org/drm/intel/issues/8411>) +1
>         other test skip
>
>  *
>
>     igt@drm_fdinfo@busy-check-all@vecs1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@drm_fdinfo@busy-check-all@vecs1.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +9
>         other tests skip
>  *
>
>     igt@gem_bad_reloc@negative-reloc-lut:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +2
>         other tests skip
>  *
>
>     igt@gem_close_race@multigpu-basic-process:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_close_race@multigpu-basic-process.html>
>         (i915#7697 <https://gitlab.freedesktop.org/drm/intel/issues/7697>)
>  *
>
>     igt@gem_create@create-ext-cpu-access-big:
>
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_create@create-ext-cpu-access-big.html>
>         (i915#7461 <https://gitlab.freedesktop.org/drm/intel/issues/7461>)
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>  *
>
>     igt@gem_ctx_isolation@preservation@vcs1:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-5/igt@gem_ctx_isolation@preservation@vcs1.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-2/igt@gem_ctx_isolation@preservation@vcs1.html>
>         (i915#9414 <https://gitlab.freedesktop.org/drm/intel/issues/9414>)
>  *
>
>     igt@gem_ctx_persistence@engines-hang@vcs0:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-6/igt@gem_ctx_persistence@engines-hang@vcs0.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@gem_ctx_persistence@engines-hang@vcs0.html>
>         (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>)
>  *
>
>     igt@gem_ctx_persistence@heartbeat-stop:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-stop.html>
>         (i915#8555 <https://gitlab.freedesktop.org/drm/intel/issues/8555>)
>  *
>
>     igt@gem_ctx_persistence@idempotent:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_ctx_persistence@idempotent.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>)
>  *
>
>     igt@gem_eio@hibernate:
>
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_eio@hibernate.html>
>         (i915#7975
>         <https://gitlab.freedesktop.org/drm/intel/issues/7975> /
>         i915#8213 <https://gitlab.freedesktop.org/drm/intel/issues/8213>)
>  *
>
>     igt@gem_exec_fair@basic-none-share:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_fair@basic-none-share.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/intel/issues/3539> /
>         i915#4852
>         <https://gitlab.freedesktop.org/drm/intel/issues/4852>) +4
>         other tests skip
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1
>         other test fail
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fence@submit3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_exec_fence@submit3.html>
>         (i915#4812
>         <https://gitlab.freedesktop.org/drm/intel/issues/4812>) +1
>         other test skip
>  *
>
>     igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +124
>         other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-cpu-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_reloc@basic-cpu-gtt.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +7
>         other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-gtt-noreloc:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_exec_reloc@basic-gtt-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +1
>         other test skip
>  *
>
>     igt@gem_exec_schedule@noreorder-corked@ccs0:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-6/igt@gem_exec_schedule@noreorder-corked@ccs0.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@gem_exec_schedule@noreorder-corked@ccs0.html>
>         (i915#8962 <https://gitlab.freedesktop.org/drm/intel/issues/8962>)
>  *
>
>     igt@gem_exec_schedule@preempt-queue-contexts-chain:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_schedule@preempt-queue-contexts-chain.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/intel/issues/4537> /
>         i915#4812
>         <https://gitlab.freedesktop.org/drm/intel/issues/4812>) +1
>         other test skip
>  *
>
>     igt@gem_lmem_evict@dontneed-evict-race:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_lmem_evict@dontneed-evict-race.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_lmem_swapping@smem-oom@lmem0:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html>
>         (i915#4936
>         <https://gitlab.freedesktop.org/drm/intel/issues/4936> /
>         i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
>  *
>
>     igt@gem_mmap_gtt@basic-read-write-distinct:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_mmap_gtt@basic-read-write-distinct.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +14
>         other tests skip
>  *
>
>     igt@gem_mmap_gtt@basic-write-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_mmap_gtt@basic-write-gtt.html>
>         (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>)
>  *
>
>     igt@gem_mmap_wc@write-gtt-read-wc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_mmap_wc@write-gtt-read-wc.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +5
>         other tests skip
>  *
>
>     igt@gem_partial_pwrite_pread@write-display:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_partial_pwrite_pread@write-display.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +3
>         other tests skip
>  *
>
>     igt@gem_pread@bench:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_pread@bench.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +1
>         other test skip
>  *
>
>     igt@gem_pread@exhaustion:
>
>       o shard-snb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@gem_pread@exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-glk: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +3
>         other tests skip
>  *
>
>     igt@gem_softpin@evict-snoop-interruptible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_softpin@evict-snoop-interruptible.html>
>         (i915#4885 <https://gitlab.freedesktop.org/drm/intel/issues/4885>)
>  *
>
>     igt@gem_tiled_pread_pwrite:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_tiled_pread_pwrite.html>
>         (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>)
>  *
>
>     igt@gem_userptr_blits@readonly-pwrite-unsync:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_userptr_blits@readonly-pwrite-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +1
>         other test skip
>  *
>
>     igt@gen7_exec_parse@basic-allocation:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen7_exec_parse@basic-allocation.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1
>         other test skip
>  *
>
>     igt@gen7_exec_parse@basic-allowed:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen7_exec_parse@basic-allowed.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen9_exec_parse@allowed-single.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +3
>         other tests skip
>
>      o
>
>         shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-apl4/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
>
>      o
>
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/igt@gen9_exec_parse@allowed-single.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
>
>  *
>
>     igt@gen9_exec_parse@bb-start-out:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen9_exec_parse@bb-start-out.html>
>         (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>)
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-dg2: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#8617 <https://gitlab.freedesktop.org/drm/intel/issues/8617>)
>  *
>
>     igt@i915_pm_rpm@dpms-non-lpsp:
>
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1
>         other test skip
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1
>         other test skip
>  *
>
>     igt@i915_pm_rpm@modeset-lpsp-stress:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1
>         other test skip
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>         (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>         (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>  *
>
>     igt@i915_pm_rps@min-max-config-loaded:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@i915_pm_rps@min-max-config-loaded.html>
>         (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>  *
>
>     igt@i915_suspend@basic-s3-without-i915:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html>
>         (fdo#103375
>         <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) +1
>         other test fail
>  *
>
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html>
>         (i915#404 <https://gitlab.freedesktop.org/drm/intel/issues/404>)
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html>
>         (i915#1769
>         <https://gitlab.freedesktop.org/drm/intel/issues/1769> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html>
>         (i915#1769
>         <https://gitlab.freedesktop.org/drm/intel/issues/1769> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html>
>         (fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +3
>         other tests skip
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>
>  *
>
>     igt@kms_big_fb@y-tiled-64bpp-rotate-0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +9
>         other tests skip
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) +1
>         other test fail
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +2
>         other tests skip
>  *
>
>     igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/intel/issues/4538> /
>         i915#5190
>         <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +1
>         other test skip
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html>
>         (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>
>  *
>
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html>
>         (i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>  *
>
>     igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354> /
>         i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +1
>         other test skip
>  *
>
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354> /
>         i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +1
>         other test skip
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html>
>         (i915#3734
>         <https://gitlab.freedesktop.org/drm/intel/issues/3734> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354> /
>         i915#6095
>         <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +1
>         other test skip
>  *
>
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +5
>         other tests skip
>  *
>
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +10
>         other tests skip
>  *
>
>     igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +17
>         other tests skip
>  *
>
>     igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +37
>         other tests skip
>  *
>
>     igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html>
>         (i915#4087
>         <https://gitlab.freedesktop.org/drm/intel/issues/4087>) +3
>         other tests skip
>  *
>
>     igt@kms_chamelium_color@ctm-blue-to-red:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_chamelium_color@ctm-blue-to-red.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_color@ctm-blue-to-red.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>
>  *
>
>     igt@kms_chamelium_color@ctm-green-to-red:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_chamelium_color@ctm-green-to-red.html>
>         (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_chamelium_edid@vga-edid-read:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_chamelium_edid@vga-edid-read.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +6
>         other tests skip
>  *
>
>     igt@kms_chamelium_frames@vga-frame-dump:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_frames@vga-frame-dump.html>
>         (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>  *
>
>     igt@kms_color@deep-color:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_color@deep-color.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_content_protection@atomic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_content_protection@atomic.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/intel/issues/7118>) +1
>         other test skip
>  *
>
>     igt@kms_content_protection@dp-mst-lic-type-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html>
>         (i915#3299
>         <https://gitlab.freedesktop.org/drm/intel/issues/3299>) +1
>         other test skip
>  *
>
>     igt@kms_content_protection@dp-mst-type-0:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_content_protection@dp-mst-type-0.html>
>         (i915#3299 <https://gitlab.freedesktop.org/drm/intel/issues/3299>)
>  *
>
>     igt@kms_content_protection@lic:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_content_protection@lic.html>
>         (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>  *
>
>     igt@kms_cursor_crc@cursor-random-32x10:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-32x10.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#8814 <https://gitlab.freedesktop.org/drm/intel/issues/8814>)
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x512:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1
>         other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
>
>       o shard-snb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html>
>         (i915#8841
>         <https://gitlab.freedesktop.org/drm/intel/issues/8841>) +1
>         other test dmesg-warn
>  *
>
>     igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html>
>         (i915#3546 <https://gitlab.freedesktop.org/drm/intel/issues/3546>)
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html>
>         (i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         i915#5354
>         <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +5
>         other tests skip
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_cursor_legacy@single-move@all-pipes:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html>
>         (i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017>)
>  *
>
>     igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1.html>
>         (i915#9227 <https://gitlab.freedesktop.org/drm/intel/issues/9227>)
>  *
>
>     igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html>
>         (i915#9227 <https://gitlab.freedesktop.org/drm/intel/issues/9227>)
>  *
>
>     igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1.html>
>         (i915#9226
>         <https://gitlab.freedesktop.org/drm/intel/issues/9226> /
>         i915#9261
>         <https://gitlab.freedesktop.org/drm/intel/issues/9261>) +1
>         other test skip
>  *
>
>     igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html>
>         (i915#9226
>         <https://gitlab.freedesktop.org/drm/intel/issues/9226> /
>         i915#9261
>         <https://gitlab.freedesktop.org/drm/intel/issues/9261>) +1
>         other test skip
>  *
>
>     igt@kms_dp_aux_dev:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dp_aux_dev.html>
>         (i915#1257 <https://gitlab.freedesktop.org/drm/intel/issues/1257>)
>  *
>
>     igt@kms_dsc@dsc-with-formats:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dsc@dsc-with-formats.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-with-output-formats:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#3840
>         <https://gitlab.freedesktop.org/drm/intel/issues/3840>) +1
>         other test skip
>  *
>
>     igt@kms_flip@2x-dpms-vs-vblank-race:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-dpms-vs-vblank-race.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +3
>         other tests skip
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip@2x-dpms-vs-vblank-race.html>
>         (fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +4
>         other tests skip
>
>  *
>
>     igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html>
>         (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>  *
>
>     igt@kms_flip@2x-flip-vs-fences-interruptible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-fences-interruptible.html>
>         (i915#8381 <https://gitlab.freedesktop.org/drm/intel/issues/8381>)
>  *
>
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767>)
>  *
>
>     igt@kms_flip@absolute-wf_vblank@d-edp1:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-6/igt@kms_flip@absolute-wf_vblank@d-edp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@kms_flip@absolute-wf_vblank@d-edp1.html>
>         (i915#9157 <https://gitlab.freedesktop.org/drm/intel/issues/9157>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#8810 <https://gitlab.freedesktop.org/drm/intel/issues/8810>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html>
>         (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2
>         other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html>
>         (i915#6880
>         <https://gitlab.freedesktop.org/drm/intel/issues/6880>) +1
>         other test fail
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         (fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825> /
>         i915#1825
>         <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +4
>         other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +1
>         other test skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +10
>         other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +15
>         other tests skip
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html>
>         (i915#3023
>         <https://gitlab.freedesktop.org/drm/intel/issues/3023>) +5
>         other tests skip
>
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +1
>         other test skip
>  *
>
>     igt@kms_hdr@bpc-switch:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_hdr@bpc-switch.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>  *
>
>     igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1
>         other test skip
>  *
>
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-16/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html>
>         (i915#8292 <https://gitlab.freedesktop.org/drm/intel/issues/8292>)
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176> /
>         i915#9423
>         <https://gitlab.freedesktop.org/drm/intel/issues/9423>) +1
>         other test skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +11
>         other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3
>         other tests skip
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         other tests skip
>  *
>
>     igt@kms_psr@psr2_cursor_mmap_cpu:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +5
>         other tests skip
>  *
>
>     igt@kms_psr@psr2_no_drrs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_psr@psr2_no_drrs.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +1
>         other test skip
>  *
>
>     igt@kms_rotation_crc@primary-rotation-270:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-270.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_rotation_crc@primary-rotation-270.html>
>         (i915#8875 <https://gitlab.freedesktop.org/drm/intel/issues/8875>)
>  *
>
>     igt@kms_rotation_crc@sprite-rotation-270:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-270.html>
>         (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>)
>  *
>
>     igt@kms_rotation_crc@sprite-rotation-90:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_rotation_crc@sprite-rotation-90.html>
>         (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>)
>  *
>
>     igt@kms_setmode@basic-clone-single-crtc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>  *
>
>     igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html>
>         (i915#5465
>         <https://gitlab.freedesktop.org/drm/intel/issues/5465>) +1
>         other test fail
>  *
>
>     igt@kms_setmode@invalid-clone-single-crtc:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_setmode@invalid-clone-single-crtc.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#8809 <https://gitlab.freedesktop.org/drm/intel/issues/8809>)
>  *
>
>     igt@kms_sysfs_edid_timing:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_sysfs_edid_timing.html>
>         (IGT#2
>         <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2>)
>  *
>
>     igt@kms_tv_load_detect@load-detect:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_tv_load_detect@load-detect.html>
>         (fdo#109309 <https://bugs.freedesktop.org/show_bug.cgi?id=109309>)
>  *
>
>     igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/intel/issues/9196>) +1
>         other test fail
>  *
>
>     igt@kms_vblank@pipe-c-query-idle-hang:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-c-query-idle-hang.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#6768 <https://gitlab.freedesktop.org/drm/intel/issues/6768>)
>  *
>
>     igt@kms_vblank@pipe-d-query-busy-hang:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@kms_vblank@pipe-d-query-busy-hang.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +57
>         other tests skip
>  *
>
>     igt@kms_vblank@pipe-d-wait-forked-busy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-d-wait-forked-busy.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>
>         / i915#6768
>         <https://gitlab.freedesktop.org/drm/intel/issues/6768>)
>  *
>
>     igt@kms_vrr@negative-basic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_vrr@negative-basic.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@prime_vgem@basic-fence-flip:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@prime_vgem@basic-fence-flip.html>
>         (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>  *
>
>     igt@prime_vgem@basic-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@prime_vgem@basic-gtt.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/intel/issues/3708> /
>         i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>)
>  *
>
>     igt@v3d/v3d_job_submission@array-job-submission:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@v3d/v3d_job_submission@array-job-submission.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +10
>         other tests skip
>  *
>
>     igt@v3d/v3d_submit_csd@bad-multisync-extension:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-multisync-extension.html>
>         (fdo#109315
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +1
>         other test skip
>  *
>
>     igt@v3d/v3d_wait_bo@unused-bo-0ns:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@v3d/v3d_wait_bo@unused-bo-0ns.html>
>         (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>)
>  *
>
>     igt@vc4/vc4_mmap@mmap-bo:
>
>      o
>
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@vc4/vc4_mmap@mmap-bo.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +4
>         other tests skip
>
>      o
>
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@vc4/vc4_mmap@mmap-bo.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +1
>         other test skip
>
>
>         Possible fixes
>
>  *
>
>     igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html>
>         (i915#7742
>         <https://gitlab.freedesktop.org/drm/intel/issues/7742>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html>
>  *
>
>     igt@gem_ctx_persistence@legacy-engines-hostile@blt:
>
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html>
>         (i915#9414
>         <https://gitlab.freedesktop.org/drm/intel/issues/9414>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html>
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-17/igt@gem_eio@unwedge-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-14/igt@gem_eio@unwedge-stress.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>      o
>
>         shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>
>      o
>
>         shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>
>  *
>
>     igt@gem_exec_flush@basic-wb-rw-before-default:
>
>       o shard-mtlp: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@gem_exec_flush@basic-wb-rw-before-default.html>
>         (i915#8962
>         <https://gitlab.freedesktop.org/drm/intel/issues/8962>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@gem_exec_flush@basic-wb-rw-before-default.html>
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html>
>  *
>
>     igt@i915_pm_freq_api@freq-suspend@gt0:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html>
>         (i915#9407
>         <https://gitlab.freedesktop.org/drm/intel/issues/9407>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html>
>  *
>
>     igt@i915_pm_rpm@dpms-lpsp:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-3/igt@i915_pm_rpm@dpms-lpsp.html>
>         (i915#1397
>         <https://gitlab.freedesktop.org/drm/intel/issues/1397>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html>
>  *
>
>     igt@i915_pm_rps@reset:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-snb1/igt@i915_pm_rps@reset.html>
>         (i915#7790
>         <https://gitlab.freedesktop.org/drm/intel/issues/7790>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@i915_pm_rps@reset.html>
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         (i915#5138
>         <https://gitlab.freedesktop.org/drm/intel/issues/5138>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         +1 other test pass
>  *
>
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/intel/issues/3743>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         +3 other tests pass
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>         (i915#2346
>         <https://gitlab.freedesktop.org/drm/intel/issues/2346>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>  *
>
>     igt@kms_cursor_legacy@forked-bo@all-pipes:
>
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.html>
>         (i915#2017
>         <https://gitlab.freedesktop.org/drm/intel/issues/2017>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@kms_cursor_legacy@forked-bo@all-pipes.html>
>  *
>
>     {igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2}:
>
>       o shard-rkl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-2.html>
>  *
>
>     {igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4}:
>
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/intel/issues/9196>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4.html>
>  *
>
>     igt@perf@enable-disable@0-rcs0:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html>
>         (i915#8724
>         <https://gitlab.freedesktop.org/drm/intel/issues/8724>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-2/igt@perf@enable-disable@0-rcs0.html>
>  *
>
>     igt@perf_pmu@busy-double-start@bcs0:
>
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html>
>         (i915#4349
>         <https://gitlab.freedesktop.org/drm/intel/issues/4349>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@perf_pmu@busy-double-start@bcs0.html>
>         +3 other tests pass
>
>
>         Warnings
>
>  *
>
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816
>         <https://gitlab.freedesktop.org/drm/intel/issues/4816>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/intel/issues/4070> /
>         i915#4816 <https://gitlab.freedesktop.org/drm/intel/issues/4816>)
>  *
>
>     igt@kms_rotation_crc@primary-rotation-90:
>
>       o shard-rkl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html>
>         (i915#8875
>         <https://gitlab.freedesktop.org/drm/intel/issues/8875> /
>         i915#9475
>         <https://gitlab.freedesktop.org/drm/intel/issues/9475>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html>
>         (i915#8875 <https://gitlab.freedesktop.org/drm/intel/issues/8875>)
>  *
>
>     igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#5493
>         <https://gitlab.freedesktop.org/drm/intel/issues/5493>) ->
>         CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#9351 <https://gitlab.freedesktop.org/drm/intel/issues/9351>)
>  *
>
>     igt@syncobj_timeline@invalid-signal-illegal-point:
>
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-mtlp-4/igt@syncobj_timeline@invalid-signal-illegal-point.html>
>         (i915#2017
>         <https://gitlab.freedesktop.org/drm/intel/issues/2017>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-7/igt@syncobj_timeline@invalid-signal-illegal-point.html>
>         (i915#2017
>         <https://gitlab.freedesktop.org/drm/intel/issues/2017> /
>         i915#9157 <https://gitlab.freedesktop.org/drm/intel/issues/9157>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_13732 -> Patchwork_124853v2
>   * Piglit: piglit_4509 -> None
>
> CI-20190529: 20190529
> CI_DRM_13732: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7523: 361c2f92f1fe5641090f2fc59951fcaba15387f5 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_124853v2: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------HSMNg0qezQ1IEIt4S7wY1hTh
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 10/10/2023 04:36, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:169693777246.28098.11353036775005=
396680@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>More print message helper updates (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/124853/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/124853/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124853v2/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13732_full -&gt;
        Patchwork_124853v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_124853v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_124853v2_full, please notify your bug
        team (<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:lgci.bug=
.filing@intel.com">lgci.bug.filing@intel.com</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class=3D"moz-txt-link-freetext" href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/index.html">https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_124853v2/index.html</a></p>
      <h2>Participating hosts (9 -&gt; 9)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_124853v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@gem_exec_suspend@basic-=
s0@lmem0.html" moz-do-not-send=3D"true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Looks like system or the test environment died during suspend. Logs
    are corrupted from the point of suspend so impossible to say what
    happened. But seems impossible to be the result of improving the
    text of some debug prints.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:169693777246.28098.11353036775005=
396680@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg2-7/igt@i915_pm_rc6_residency@rc6-accuracy.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@i915_pm_rc6_residency@rc=
6-accuracy.html" moz-do-not-send=3D"true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    RC6 residency mis-math. Not related to changing some debug prints
    that were not printed during the test.<br>
    <br>
    John.<br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:169693777246.28098.11353036775005=
396680@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_124853v2_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Possible fixes</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_13732/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_13732/shard-glk8/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1373=
2/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk5/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_13732/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-g=
lk5/boot.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_13732/shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_13732/shard-glk4/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_137=
32/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk3/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_13732/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-=
glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13732/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_13732/shard-glk2/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13=
732/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13732/shard-glk9/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_13732/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293" moz-=
do-not-send=3D"true">i915#8293</a>) -&gt; (<a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_124853v2/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard=
-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_124853v2/shard-glk2/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12485=
3v2/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124853v2/shard-glk3/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_124853v2/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk=
4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk4/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_124853v2/shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/=
shard-glk4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk5/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_124853v2/shard-glk5/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
124853v2/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk8/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_124853v2/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/sh=
ard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_124853v2/shard-glk9/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4853v2/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk9/boot=
.html" moz-do-not-send=3D"true">PASS</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@api_intel_bb@blit-relo=
c-keep-cache.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8411" moz-do-not-send=3D"true">i915#8=
411</a>) +1 other test
                skip</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@api_intel_bb@blit-relo=
c-keep-cache.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8411" moz-do-not-send=3D"true">i915#8=
411</a>) +1 other test
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@busy-check-all@vecs1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@drm_fdinfo@busy-check-=
all@vecs1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/8414" moz-do-not-send=3D"true">i915#8414=
</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_bad_reloc@negative-reloc-lut:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gem_bad_reloc@negative-=
reloc-lut.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3281" moz-do-not-send=3D"true">i915#3281=
</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_close_race@multigpu-basic-process:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_close_race@multigpu=
-basic-process.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7697" moz-do-not-send=3D"true">i915=
#7697</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-ext-cpu-access-big:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_create@create-ext-c=
pu-access-big.html" moz-do-not-send=3D"true">ABORT</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/7461" moz-do-not-send=3D"true">i915=
#7461</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html" moz-d=
o-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gem_ctx_exec@basic-nohangche=
ck.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/6268" moz-do-not-send=3D"true">i915#6268</a>)</=
li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_isolation@preservation@vcs1:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-5/igt@gem_ctx_isolation@preservation@vcs1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-2/igt@gem_ctx_isolation@pr=
eservation@vcs1.html" moz-do-not-send=3D"true">ABORT</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9414" moz-do-not-send=3D"true">i9=
15#9414</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@engines-hang@vcs0:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-6/igt@gem_ctx_persistence@engines-hang@vcs0.ht=
ml" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@gem_ctx_persistenc=
e@engines-hang@vcs0.html" moz-do-not-send=3D"true">ABORT</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/9262" moz-do-not-send=3D"true=
">i915#9262</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@heartbeat-stop:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_ctx_persistence@hea=
rtbeat-stop.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8555" moz-do-not-send=3D"true">i915#85=
55</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@idempotent:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_ctx_persistence@idem=
potent.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1099" moz-=
do-not-send=3D"true">i915#1099</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@hibernate:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_eio@hibernate.html"=
 moz-do-not-send=3D"true">ABORT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/7975" moz-do-not-send=3D"true">i915#7975</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8213" moz-do-not-send=
=3D"true">i915#8213</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_fair@basic-non=
e-share.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3539" moz-do-not-send=3D"true">i915#3539</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4852" moz-d=
o-not-send=3D"true">i915#4852</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124853v2/shard-glk4/igt@gem_exec_fair@basic-none-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#284=
2</a>) +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-tglu-5/igt@gem_exec_fair@basic-pace-share@rcs0.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_124853v2/shard-tglu-2/igt@gem_exec_fair@basic-=
pace-share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i91=
5#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fence@submit3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_exec_fence@submit3=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4812" moz-do-not-send=3D"true">i915#4812</a>) +1 =
other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:</p=
>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@gem_exec_fence@syncobj-b=
ackward-timeline-chain-engines.html" moz-do-not-send=3D"true">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-s=
end=3D"true">fdo#109271</a>) +124 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_reloc@basic-cp=
u-gtt.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3281" moz-do-not-send=3D"true">i915#3281</a>=
) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_exec_reloc@basic-=
gtt-noreloc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3281" moz-do-not-send=3D"true">i915#32=
81</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@noreorder-corked@ccs0:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-6/igt@gem_exec_schedule@noreorder-corked@ccs0.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@gem_exec_schedul=
e@noreorder-corked@ccs0.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/8962" moz-do-not-sen=
d=3D"true">i915#8962</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_exec_schedule@preem=
pt-queue-contexts-chain.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4537" moz-do-not-send=3D"t=
rue">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4812" moz-do-not-send=3D"true">i915#4812</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_evict@dontneed-evict-race:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_lmem_evict@dontneed-=
evict-race.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109=
271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613" =
moz-do-not-send=3D"true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html" mo=
z-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_124853v2/shard-dg1-18/igt@gem_lmem_swapping@smem-o=
om@lmem0.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4936" moz-do-not-send=3D"true">i915=
#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493=
" moz-do-not-send=3D"true">i915#5493</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@gem_mmap_gtt@basic-read=
-write-distinct.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4077" moz-do-not-send=3D"true">i91=
5#4077</a>) +14 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic-write-gtt:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_mmap_gtt@basic-wr=
ite-gtt.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/4077" moz-do-not-send=3D"true">i915#4077</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@gem_mmap_wc@write-gtt-r=
ead-wc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4083" moz-do-not-send=3D"true">i915#4083</a=
>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@write-display:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_partial_pwrite_prea=
d@write-display.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3282" moz-do-not-send=3D"true">i91=
5#3282</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@bench:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@gem_pread@bench.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3282" moz-do-not-send=3D"true">i915#3282</a>) +1 other =
test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pread@exhaustion:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@gem_pread@exhaustion.htm=
l" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2658" moz-do-not-send=3D"true">i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@gem_pwrite@basic-exhaust=
ion.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2658" moz-do-not-send=3D"true">i915#2658</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_pxp@protected-encry=
pted-src-copy-not-readible.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4270" moz-do-not-send=
=3D"true">i915#4270</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-snoop-interruptible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_softpin@evict-snoop=
-interruptible.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4885" moz-do-not-send=3D"true">i915=
#4885</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_tiled_pread_pwrite:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@gem_tiled_pread_pwrite.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4079" moz-do-not-send=3D"true">i915#4079</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gem_userptr_blits@read=
only-pwrite-unsync.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3297" moz-do-not-send=3D"true">=
i915#3297</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen7_exec_parse@basic-allocation:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen7_exec_parse@basic-=
allocation.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109289" moz-do-not-send=3D"true">fdo#109=
289</a>) +1 other test
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen7_exec_parse@basic-allowed:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen7_exec_parse@basic-a=
llowed.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109289" moz-do-not-send=3D"true">fdo#109289<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@gen9_exec_parse@allow=
ed-single.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2856" moz-do-not-send=3D"true">i915#2856=
</a>) +3 other tests
                skip</p>
            </li>
            <li>
              <p>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-apl4/igt@gen9_exec_parse@allowed=
-single.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#=
5566</a>)</p>
            </li>
            <li>
              <p>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-glk4/igt@gen9_exec_parse@allowed-single.html" moz-d=
o-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_124853v2/shard-glk8/igt@gen9_exec_parse@allowed-singl=
e.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</=
a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-out:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@gen9_exec_parse@bb-star=
t-out.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/2527" moz-do-not-send=3D"true">i915#2527</a>=
)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@i915_module_load@reloa=
d-with-fault-injection.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/8617" moz-do-not-send=
=3D"true">i915#8617</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html" moz-do-no=
t-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_124853v2/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html"=
 moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1397" moz-do-not-send=3D"true">i915#1397</a>) +1 other =
test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp.html" moz-do-not-=
send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_124853v2/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html" moz=
-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/1397" moz-do-not-send=3D"true">i915#1397</a>) +1 other test=
 skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@i915_pm_rpm@modeset-lp=
sp-stress.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1397" moz-do-not-send=3D"true">i915#1397=
</a>) +1 other test
                skip</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@i915_pm_rpm@modeset-lp=
sp-stress.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1397" moz-do-not-send=3D"true">i915#1397=
</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg2-6/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wai=
t.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@i915_pm_rpm@mo=
deset-non-lpsp-stress-no-wait.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397" moz-do-not-sen=
d=3D"true">i915#1397</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@min-max-config-loaded:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@i915_pm_rps@min-max-con=
fig-loaded.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/6621" moz-do-not-send=3D"true">i915#662=
1</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_suspend@basic-s3-without-i915:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@i915_suspend@basic-s3-wi=
thout-i915.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D103375" moz-do-not-send=3D"true">fdo#103=
375</a>) +1 other test
              fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic@plane-prim=
ary-overlay-mutable-zpos.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/404" moz-do-not-send=3D=
"true">i915#404</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing=
:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_atomic_transition=
@plane-all-modeset-transition-fencing.html" moz-do-not-send=3D"true">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1769" moz-do=
-not-send=3D"true">i915#1769</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic_transition@plane-all-modeset-transition-interna=
l-panels:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_atomic_transition@p=
lane-all-modeset-transition-internal-panels.html" moz-do-not-send=3D"true">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1769" =
moz-do-not-send=3D"true">i915#1769</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@4-tiled-8bp=
p-rotate-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D111614" moz-do-not-send=3D"true">fdo#11=
1614</a>) +3 other tests
                skip</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@4-tiled-8bp=
p-rotate-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5286" moz-do-not-send=3D"true">i915#52=
86</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@y-tiled-64bp=
p-rotate-0.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5190" moz-do-not-send=3D"true">i915#519=
0</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-as=
ync-flip:</p>
          <ul>
            <li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-r=
otate-180-hflip-async-flip.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-=
tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-fl=
ip.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3743" moz-do-not-send=3D"true">i915#3743</a>) +=
1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_big_fb@y-tiled-ma=
x-hw-stride-64bpp-rotate-180.html" moz-do-not-send=3D"true">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111615" moz-do-not-sen=
d=3D"true">fdo#111615</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-16=
bpp-rotate-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4538" moz-do-not-send=3D"true">i915#=
4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5190"=
 moz-do-not-send=3D"true">i915#5190</a>) +1 other test
                skip</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16=
bpp-rotate-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110723" moz-do-not-send=3D"true">fdo#=
110723</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p=
>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-a-missin=
g-ccs-buffer-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3886" moz-do-not=
-send=3D"true">i915#3886</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5354" moz-do-not-send=3D"true">i915#5354</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/6095" moz-do-not-send=3D"true=
">i915#6095</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-a-random-c=
cs-data-4_tiled_dg2_rc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-send=
=3D"true">i915#5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/6095" moz-do-not-send=3D"true">i915#6095</a>) +1 other test skip<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_ccs@pipe-b-ccs-on=
-another-bo-y_tiled_gen12_rc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-=
send=3D"true">i915#5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6095" moz-do-not-send=3D"true">i915#6095</a>) +1 other test s=
kip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-b-crc-prim=
ary-basic-yf_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3734" moz-do-not-send=3D"tr=
ue">i915#3734</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5354" moz-do-not-send=3D"true">i915#5354</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095" moz-do-not-send=3D"true">i915#6095=
</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_ccs@pipe-c-bad-aux-=
stride-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-se=
nd=3D"true">i915#5354</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p=
>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_ccs@pipe-c-bad-rota=
tion-90-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-s=
end=3D"true">i915#3689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-send=3D"true">=
i915#5354</a>) +10 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-crc-primary-basic-yf_tiled_ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-prim=
ary-basic-yf_tiled_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3689" moz-do-not-send=3D"tr=
ue">i915#3689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5354" moz-do-not-send=3D"true">i915#5354</a>) +17 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_mc_ccs:=
</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-1/igt@kms_ccs@pipe-d-crc-spri=
te-planes-basic-4_tiled_mtl_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-no=
t-send=3D"true">i915#5354</a>) +37 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cdclk@plane-scaling=
@pipe-c-hdmi-a-3.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4087" moz-do-not-send=3D"true">i9=
15#4087</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@ctm-blue-to-red:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_chamelium_color@ct=
m-blue-to-red.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do-not-send=3D"true">fdo#=
111827</a>)</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_color@ct=
m-blue-to-red.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do-not-send=3D"true">fdo#=
111827</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_color@ctm-green-to-red:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_chamelium_color@c=
tm-green-to-red.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do-not-send=3D"true">fd=
o#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_edid@vga-edid-read:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_chamelium_edid@vga-=
edid-read.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/7828" moz-do-not-send=3D"true">i915#7828=
</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@vga-frame-dump:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_chamelium_frames@vg=
a-frame-dump.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/7828" moz-do-not-send=3D"true">i915#7=
828</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_color@deep-color:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_color@deep-color.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_content_protection@=
atomic.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/7118" moz-do-not-send=3D"true">i915#7118</a=
>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_content_protection=
@dp-mst-lic-type-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3299" moz-do-not-send=3D"true">=
i915#3299</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-type-0:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_content_protectio=
n@dp-mst-type-0.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3299" moz-do-not-send=3D"true">i91=
5#3299</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_content_protection@=
lic.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/7118" moz-do-not-send=3D"true">i915#7118</a>)<=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-32x10:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_crc@cursor=
-random-32x10.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#=
3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8814"=
 moz-do-not-send=3D"true">i915#8814</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-512x512:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_crc@cursor-r=
andom-512x512.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3359" moz-do-not-send=3D"true">i915#=
3359</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@kms_cursor_crc@cursor-su=
spend@pipe-b-vga-1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8841" moz-do-not-send=
=3D"true">i915#8841</a>) +1 other test
              dmesg-warn</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@2x-=
cursor-vs-flip-atomic.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3546" moz-do-not-send=3D"tru=
e">i915#3546</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-si=
ze:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_cursor_legacy@bas=
ic-busy-flip-before-cursor-varying-size.html" moz-do-not-send=3D"true">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4213" moz-=
do-not-send=3D"true">i915#4213</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_cursor_legacy@curso=
rb-vs-flipb-legacy.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true"=
>fdo#109274</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5354" moz-do-not-send=3D"true">i915#5354</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tra=
nsitions.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-glk2/igt@kms_curso=
r_legacy@flip-vs-cursor-atomic-transitions.html" moz-do-not-send=3D"true">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346" m=
oz-do-not-send=3D"true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@single-move@all-pipes:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-8/igt@kms_cursor_legacy@single-move@all-pipes.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-4/igt@kms_cursor_legac=
y@single-move@all-pipes.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2017" moz-do-not-sen=
d=3D"true">i915#2017</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioc=
tl@fbc-hdmi-a-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9227" moz-do-not-send=3D"true">i91=
5#9227</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-io=
ctl@fbc-hdmi-a-4.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9227" moz-do-not-send=3D"true">i9=
15#9227</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_dirtyfb@dirtyfb-ioc=
tl@psr-hdmi-a-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9226" moz-do-not-send=3D"true">i91=
5#9226</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/926=
1" moz-do-not-send=3D"true">i915#9261</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_dirtyfb@dirtyfb-io=
ctl@psr-hdmi-a-4.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/9226" moz-do-not-send=3D"true">i9=
15#9226</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92=
61" moz-do-not-send=3D"true">i915#9261</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_aux_dev:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dp_aux_dev.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1257" moz-do-not-send=3D"true">i915#1257</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-with-formats:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_dsc@dsc-with-format=
s.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840" moz-do-not-=
send=3D"true">i915#3840</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-with-output-formats:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_dsc@dsc-with-output=
-formats.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3840" moz-=
do-not-send=3D"true">i915#3840</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-dpms-vs-vb=
lank-race.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true">fdo#1092=
74</a>) +3 other tests
                skip</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip@2x-dpms-vs-vb=
lank-race.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D111825" moz-do-not-send=3D"true">fdo#1118=
25</a>) +4 other tests
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip@2x-dpms-vs-v=
blank-race-interruptible.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3637" moz-do-not-send=
=3D"true">i915#3637</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-fen=
ces-interruptible.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/8381" moz-do-not-send=3D"true">i=
915#8381</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_flip@2x-flip-vs-rmf=
b-interruptible.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true">fd=
o#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1767" moz-do-not-send=3D"true">fdo#111767</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@absolute-wf_vblank@d-edp1:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-6/igt@kms_flip@absolute-wf_vblank@d-edp1.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-8/igt@kms_flip@absolute-wf_=
vblank@d-edp1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9157" moz-do-not-send=3D"true"=
>i915#9157</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_flip_scaled_crc@f=
lip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/8810" moz-do-not-send=3D"true">=
i915#8810</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-d=
ownscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_flip_scaled_crc@fli=
p-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html" moz-d=
o-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-ups=
caling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_flip_scaled_crc@fl=
ip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rc=
ccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_flip_scaled_crc@fli=
p-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html" mo=
z-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"tr=
ue">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pw=
rite:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-=
pri-indfb-draw-pwrite.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6=
/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html" m=
oz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/6880" moz-do-not-send=3D"true">i915#6880</a>) +1 other te=
st fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_trackin=
g@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825" m=
oz-do-not-send=3D"true">fdo#111825</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/1825" moz-do-not-send=3D"true">i915#1825</a>) +4 o=
ther tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_track=
ing@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8708" =
moz-do-not-send=3D"true">i915#8708</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw=
-mmap-wc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_frontbuffer_tracki=
ng@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html" moz-do-not-send=3D"true"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8708"=
 moz-do-not-send=3D"true">i915#8708</a>) +10 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-bl=
t:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_frontbuffer_tracki=
ng@psr-1p-primscrn-spr-indfb-draw-blt.html" moz-do-not-send=3D"true">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3458" moz-do=
-not-send=3D"true">i915#3458</a>) +15 other tests
                skip</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_frontbuffer_tracki=
ng@psr-1p-primscrn-spr-indfb-draw-blt.html" moz-do-not-send=3D"true">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3023" moz-do=
-not-send=3D"true">i915#3023</a>) +5 other tests
                skip</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:=
</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_frontbuffer_track=
ing@psr-2p-scndscrn-indfb-plflip-blt.html" moz-do-not-send=3D"true">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825" moz-do-=
not-send=3D"true">i915#1825</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_hdr@bpc-switch.html=
" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8228" moz-do-not-send=
=3D"true">i915#8228</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c=
:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_pipe_b_c_ivb@pipe=
-b-double-modeset-then-modeset-pipe-c.html" moz-do-not-send=3D"true">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289" moz-d=
o-not-send=3D"true">fdo#109289</a>) +1 other test
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg1-16/igt@kms_plane_scaling@inte=
l-max-src-size@pipe-a-hdmi-a-4.html" moz-do-not-send=3D"true">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8292" moz-do-not-se=
nd=3D"true">i915#8292</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rota=
tion@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_plane_scaling@plane=
-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html" moz-do-not-se=
nd=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/5176" moz-do-not-send=3D"true">i915#5176</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/9423" moz-do-not-send=3D"true">i915#94=
23</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x=
20@pipe-d-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg1-17/igt@kms_plane_scaling@plan=
es-downscale-factor-0-25-upscale-20x20@pipe-d-hdmi-a-4.html" moz-do-not-sen=
d=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/5235" moz-do-not-send=3D"true">i915#5235</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-=
5@pipe-d-edp-1:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_plane_scaling@pla=
nes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5235" moz-do-not-send=3D"true">i915#5235</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-=
25@pipe-a-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_plane_scaling@plane=
s-upscale-20x20-downscale-factor-0-25@pipe-a-hdmi-a-3.html" moz-do-not-send=
=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5235" moz-do-not-send=3D"true">i915#5235</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-fac=
tor-0-25@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-6/igt@kms_plane_scaling@plane=
s-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/5235" moz-do-not-send=3D"true">i915#5235</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_psr2_sf@cursor-plan=
e-move-continuous-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true"=
>i915#658</a>) +2 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-6/igt@kms_psr@psr2_cursor_mma=
p_cpu.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/1072" moz-do-not-send=3D"true">i915#1072</a>=
) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_no_drrs:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_psr@psr2_no_drrs.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1072" moz-do-not-send=3D"true">i915#1072</a>) +1 oth=
er test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-rotation-270:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-270.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@kms_rotation_crc@prim=
ary-rotation-270.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8875" moz-do-not-send=3D"tr=
ue">i915#8875</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@sprite-rotation-270:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_rotation_crc@sprite=
-rotation-270.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4235" moz-do-not-send=3D"true">i915#=
4235</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@sprite-rotation-90:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_rotation_crc@spri=
te-rotation-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4235" moz-do-not-send=3D"true">i915=
#4235</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic-clone-single-crtc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_setmode@basic-clone=
-single-crtc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3=
555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098" =
moz-do-not-send=3D"true">i915#4098</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@kms_setmode@basic@pipe-a=
-hdmi-a-1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5465" moz-do-not-send=3D"true">i915#5465=
</a>) +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@invalid-clone-single-crtc:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@kms_setmode@invalid-c=
lone-single-crtc.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/88=
09" moz-do-not-send=3D"true">i915#8809</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_sysfs_edid_timing:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@kms_sysfs_edid_timing.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools/issues/2" moz-do-not-send=3D"true">IGT#2</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_tv_load_detect@load-detect:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@kms_tv_load_detect@load=
-detect.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109309" moz-do-not-send=3D"true">fdo#109309=
</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-=
d-edp-1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-7/igt@kms_univ=
ersal_plane@cursor-fb-leak@pipe-d-edp-1.html" moz-do-not-send=3D"true">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9196" moz-=
do-not-send=3D"true">i915#9196</a>) +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-c-query-idle-hang:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-c-query=
-idle-hang.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4070" moz-do-not-send=3D"true">i915#407=
0</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6768" mo=
z-do-not-send=3D"true">i915#6768</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-d-query-busy-hang:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-glk9/igt@kms_vblank@pipe-d-query-=
busy-hang.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1092=
71</a>) +57 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-d-wait-forked-busy:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@kms_vblank@pipe-d-wait-=
forked-busy.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4070" moz-do-not-send=3D"true">i915#40=
70</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/533" mo=
z-do-not-send=3D"true">i915#533</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/6768" moz-do-not-send=3D"true">i915#6768</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@negative-basic:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@kms_vrr@negative-basic=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li=
>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-fence-flip:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-10/igt@prime_vgem@basic-fence=
-flip.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3708" moz-do-not-send=3D"true">i915#3708</a>=
)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@prime_vgem@basic-gtt.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3708" moz-do-not-send=3D"true">i915#3708</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077" moz-do-not-send=
=3D"true">i915#4077</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_job_submission@array-job-submission:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-dg2-3/igt@v3d/v3d_job_submission@=
array-job-submission.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2575" moz-do-not-send=3D"true=
">i915#2575</a>) +10 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_csd@bad-multisync-extension:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-=
multisync-extension.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109315" moz-do-not-send=3D"true=
">fdo#109315</a>) +1 other test
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_wait_bo@unused-bo-0ns:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp-6/igt@v3d/v3d_wait_bo@unuse=
d-bo-0ns.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2575" moz-do-not-send=3D"true">i915#2575<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_mmap@mmap-bo:</p>
          <ul>
            <li>
              <p>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-5/igt@vc4/vc4_mmap@mmap-bo.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7711" moz-do-not-send=3D"true">i915#7711</a>) +4 ot=
her tests
                skip</p>
            </li>
            <li>
              <p>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-1/igt@vc4/vc4_mmap@mmap-bo.h=
tml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7711" moz-do-not-send=3D"true">i915#7711</a>) +1 ot=
her test
                skip</p>
            </li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.h=
tml" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/7742" moz-do-not-send=3D"true">i915#7742</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/sha=
rd-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html" moz-do-not-send=
=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@legacy-engines-hostile@blt:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-4/igt@gem_ctx_persistence@legacy-engines-hosti=
le@blt.html" moz-do-not-send=3D"true">ABORT</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9414" moz-do-not-send=3D"true">i915#9414</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
853v2/shard-mtlp-6/igt@gem_ctx_persistence@legacy-engines-hostile@blt.html"=
 moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg1-17/igt@gem_eio@unwedge-stress.html" moz-do-not-s=
end=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5784" moz-do-not-send=3D"true">i915#5784</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg1-14/igt@gem=
_eio@unwedge-stress.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>
              <p>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html" =
moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-gl=
k2/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send=3D"true">P=
ASS</a></p>
            </li>
            <li>
              <p>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
 moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-r=
kl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send=3D"true"=
>PASS</a></p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-4/igt@gem_exec_flush@basic-wb-rw-before-defaul=
t.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/8962" moz-do-not-send=3D"true">i915#8962</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
853v2/shard-mtlp-8/igt@gem_exec_flush@basic-wb-rw-before-default.html" moz-=
do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-snb4/igt@i915_module_load@reload-with-fault-injectio=
n.html" moz-do-not-send=3D"true">INCOMPLETE</a> -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb7/igt@i915_modul=
e_load@reload-with-fault-injection.html" moz-do-not-send=3D"true">PASS</a><=
/li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html" m=
oz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/9407" moz-do-not-send=3D"true">i915#9407</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/sha=
rd-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html" moz-do-not-send=3D"tru=
e">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@dpms-lpsp:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-3/igt@i915_pm_rpm@dpms-lpsp.html" moz-do-not-sen=
d=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1397" moz-do-not-send=3D"true">i915#1397</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-rkl-7/igt@i915_p=
m_rpm@dpms-lpsp.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@reset:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-snb1/igt@i915_pm_rps@reset.html" moz-do-not-send=3D"=
true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7790" moz-do-not-send=3D"true">i915#7790</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-snb1/igt@i915_p=
m_rps@reset.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-r=
otate-0-hflip.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5138" moz-do-not-send=3D"true">i915#=
5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_124853v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-=
0-hflip.html" moz-do-not-send=3D"true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-fl=
ip:</p>
          <ul>
            <li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-r=
otate-180-async-flip.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3743" moz-do-not-send=3D"true=
">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_124853v2/shard-tglu-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-=
rotate-180-async-flip.html" moz-do-not-send=3D"true">PASS</a> +3 other test=
s pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tra=
nsitions.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2346" moz-do-not-send=3D"true">i915#2346<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
4853v2/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.h=
tml" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@forked-bo@all-pipes:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-4/igt@kms_cursor_legacy@forked-bo@all-pipes.ht=
ml" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2017" moz-do-not-send=3D"true">i915#2017</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v=
2/shard-mtlp-8/igt@kms_cursor_legacy@forked-bo@all-pipes.html" moz-do-not-s=
end=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifier=
s@pipe-a-hdmi-a-2}:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-2=
5-with-modifiers@pipe-a-hdmi-a-2.html" moz-do-not-send=3D"true">INCOMPLETE<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124=
853v2/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modi=
fiers@pipe-a-hdmi-a-2.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>{igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4}:</p>
          <ul>
            <li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-a=
-hdmi-a-4.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/9196" moz-do-not-send=3D"true">i915#9196=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
24853v2/shard-dg1-14/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-4=
.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@enable-disable@0-rcs0:</p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html" moz-do-n=
ot-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8724" moz-do-not-send=3D"true">i915#8724</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-dg2-2/igt@=
perf@enable-disable@0-rcs0.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@busy-double-start@bcs0:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-4/igt@perf_pmu@busy-double-start@bcs0.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4349" moz-do-not-send=3D"true">i915#4349</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853v2/shard-mtlp=
-8/igt@perf_pmu@busy-double-start@bcs0.html" moz-do-not-send=3D"true">PASS<=
/a> +3 other tests pass</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-c=
heck.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4816" moz-do-not-send=3D"true">i915#4816</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124853=
v2/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html" moz=
-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4070" moz-do-not-send=3D"true">i915#4070</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/4816" moz-do-not-send=3D"tru=
e">i915#4816</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-rotation-90:</p>
          <ul>
            <li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-rkl-4/igt@kms_rotation_crc@primary-rotation-90.html"=
 moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8875" moz-do-not-send=3D"true">i915#8875</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9475" moz-do-not-s=
end=3D"true">i915#9475</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_124853v2/shard-rkl-2/igt@kms_rotation_crc@primary-rota=
tion-90.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/8875" moz-do-not-send=3D"true">i915#=
8875</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</=
p>
          <ul>
            <li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_13732/shard-dg2-7/igt@prime_mmap@test_aperture_limit@test_apertu=
re_limit-smem.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5493" moz-do-not-send=3D"true"=
>i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_124853v2/shard-dg2-3/igt@prime_mmap@test_aperture_limit@test_apert=
ure_limit-smem.html" moz-do-not-send=3D"true">CRASH</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9351" moz-do-not-send=3D"true">i91=
5#9351</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@syncobj_timeline@invalid-signal-illegal-point:</p>
          <ul>
            <li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13732/shard-mtlp-4/igt@syncobj_timeline@invalid-signal-illegal-=
point.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2017" moz-do-not-send=3D"true">i915#20=
17</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_124853v2/shard-mtlp-7/igt@syncobj_timeline@invalid-signal-illegal-point.ht=
ml" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2017" moz-do-not-send=3D"true">i915#2017</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9157" moz-do-no=
t-send=3D"true">i915#9157</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13732 -&gt; Patchwork_124853v2</li>
        <li>Piglit: piglit_4509 -&gt; None</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13732: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7523: 361c2f92f1fe5641090f2fc59951fcaba15387f5 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_124853v2: 7c57bbfe2c6194cc4d4edf50466b057d7b191251 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------HSMNg0qezQ1IEIt4S7wY1hTh--
