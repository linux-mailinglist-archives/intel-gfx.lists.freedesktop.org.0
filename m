Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A28580EC6
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 10:18:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D7B113CD1;
	Tue, 26 Jul 2022 08:18:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80F0F113CD1
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658823502; x=1690359502;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pfiaC5oeZ699D8L/rDBxvxC2LVd/4mI8eHxC5j51nuw=;
 b=E13LLmYC2KsROFnQ2bYfvpRKnVctjjYdNvCKEHYmsRL1Pgc9LCtR230y
 5PROeQkOXGCJS74k8MfC0ivJEWBIRRKRQxjm4twp4dCZciQpjXdTY6KMV
 X2eQzByUqaR1wGQhgSQmVt5vzNJ/HTdqXj5dnBFbhe/twRoS9DuK6mC9j
 oIRjZEStwSNLF33BXhHvLVDptkwVOJ2HVhLavAy3ybPKJ38xbGkHK0DZC
 bdu5w0BZpEPX+eOdgs0SE02D1o1sGVEs3JJHIlm0XsmRCyQjTmSl7lq0g
 SSnwF5M2KtuM3ICWLMTamGY5rzb8jl12IWFnjvbWuOhNvP2DzAvXDZBTP w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="285442953"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="285442953"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 01:18:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="658573820"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2022 01:18:22 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 01:18:21 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 01:18:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 01:18:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 01:18:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGC+2VtEx44quSakGJdQUlB1G3xsBG18K+gHUTR7z58+HrfxR52Jj7YfI/7IYY8000/K6cmL/Oej04ywD+XJdRtmUrl8ym/X18uYHivEwjX/KrxEzsmeRh1BNcwJCyb76sKrHNj+nooAJQDQ/ocwYqi+uSVbcjrL9OpBb5tKq0XdhnVXFKMetWEtGdrmGXIMMQf9rYIdLVq5D6N/v0fR7a+ZC29Kt6cze+p1qFJksxFY2RGSTvfHdcVJkIcgdNw+5A7Ia6+YuyqQSx7yDWUCUJ7/PBJytQA254ffjZ6pwnXKUGOtqOv37amK+J6wIszFuD8wtor9zY4zfh3DfhSxfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3hUQHVv2kqqCl9aGwISw6fazugb+iIEFN/sx0hBBjVc=;
 b=lkqsgVH++ZKCe4+mta94gjZdajPmLf8Xza4hJmnlbEUDirDRoUlskZOsrZB2SIoCgdT2R+cv5k7M+zb22n8+VXGSWd5W43YDg7Ql9MTVpXaO6KUnhLUDVqktjoZCYw0JjsdZ0dyK4GoGpNQ4nLzRLR6a1RlL2PKr8k0XCnoQLNPVnrgm4aclIOrVouyOL2jnFmXv+VKzQJ5oZZErGjEGSJUPRw5NBkNbKSiljLPpq//izLQi89eMA/kIQrXZqkQClwGuonbVxJQAd5+ys1MXc73D+3PIcEjX9/4PIBgddvH7MoP2j7areihjAD7fbXftR2GPUCMi3IQLw7+JYasqjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by DM6PR11MB2810.namprd11.prod.outlook.com (2603:10b6:5:ce::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.21; Tue, 26 Jul
 2022 08:18:14 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398%9]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 08:18:14 +0000
Message-ID: <354ba2ea-45b7-df24-4135-ce28f0e5981e@intel.com>
Date: Tue, 26 Jul 2022 11:17:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220725092528.1281487-1-gwan-gyeong.mun@intel.com>
 <165875289945.20164.2037720980176205614@emeril.freedesktop.org>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <165875289945.20164.2037720980176205614@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM0PR10CA0044.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:150::24) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 957047e6-c6f4-4602-3823-08da6edf62bf
X-MS-TrafficTypeDiagnostic: DM6PR11MB2810:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XBx5/iBqFgECFpaawXpFAk1H1Rxy/0gUkH/lKL3MjCzJuIXW6YQzVML6yzezPJ8Bvh9UlIoB+3SJTg3tzh1bK8/s90AnUuhgeool0p5kSemF7RN3RxgOToR4zCATtnh2xLFdy0Laf6fvW+IpYUX5AgvI5bQHdkDkXIdQZgZZEW08/XsvctA13da64dG+418IcKearp6zgwnSE5vwlxlETSdpEzhRbqntaKH8CONolHCNVB/jYYOsZfcH7rdPWdnQ1BeBr7BQen0Wh0GjE+zVAkyOPlkeuydWnD7L6GIxs0TJYPH2p7mGGrktcMCaNeU/y0SiDtXOuGmj7CSiKOGvzQxrJt/AFhyb5sXMhrk9smpQ1hq5xYx22dpFZhuQ/VGgpNJUaAWCcZ8GLdEWs91l/IsOdYUHVjFIrhdgpr5Aow5NHhOZqQyQXWHk9swDFRuEA2rX7Q96GLl7kBMHGNskJlO89BAzYaiLQv2o2g/U51jNtZ4lvsFGDNRe8k17EJiCd3KCqL/3jOSvsYtV8nYhBGt8UKiuL0h+aFzrwxXBBFvpJoux5MTGmqb39W8hZBt996spsvzwNnnS01DEpm+TElYIu6CeGxPykXAbfnqtJUihn/WzsHAf5/8Y35rN2W8wwJghVQVo1UMGYh6sMkZKsZulljhgglfjN8G8geeWX7wKKrvQVplHl0OJef0QsiPUyjEDxmncLpM2n6e1zUt3VTOYCybAQU0MAeVbCSukWlm0uRHT2qNM9HKPavGt3wQO71iIdABAE86LJstMItLKxa85fkMas6dbq30luq7cE1wsnM4S/oOMyhy0xP9ANywCSm0NLKxtHrXiYP+Arbf7aJOttI5tVA9zYjVX1l47ML74kutfsMysjssDoPstjl7YRnep4mpo2xlAfMwr9XEM5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(396003)(366004)(346002)(376002)(38100700002)(6916009)(41300700001)(31686004)(31696002)(2906002)(66946007)(66476007)(36756003)(316002)(82960400001)(66556008)(86362001)(53546011)(6506007)(26005)(966005)(6486002)(478600001)(83380400001)(6666004)(186003)(5660300002)(6512007)(8936002)(2616005)(30864003)(45980500001)(43740500002)(559001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGpTUDExa3pHUHN3ZThJOWFjWXN4MkFIcGUzUjhLMy9zakIwTUh4S05vQWs4?=
 =?utf-8?B?TGFBT2RYSmNPRmVVMWI0R25sSHBiYTNzUGtINFhCaGV1bmd1OVI2MFNOMDNM?=
 =?utf-8?B?Skg1eUYrbk9zL29La0VxbnJuV05ZUHVXOTZ0eGVPN1dQZG1rdnBQYVJlL1dC?=
 =?utf-8?B?dWNmUnBPaWxrM2FIeGtvVTBlMmpLMFhFYmd2WlZCMmpBTlM4VDQwV0Fydk9w?=
 =?utf-8?B?V3cwbm0vZVQzd2lXWjRQWkpKc0FmOVNYSnB5Lys5NWZhdVorNGUxR29JbFRZ?=
 =?utf-8?B?Q2J0Ulo0VnYxbzNNek1ETzk0SmN3Q3Y0MjVXZURjMDY5dVVFWHJLT3BONWpP?=
 =?utf-8?B?bE5jN3gxdVRQZDZSbTRyTG40UGFaQllNaHhnbkJpRjJxanRqYVlxZmFyeVpS?=
 =?utf-8?B?WGY0eld5UXdqTFUyZFM1bG5ESEN2dEVSZ0pacWdvRnkvbXlpM1VwOHhyYnpl?=
 =?utf-8?B?UzJXdHE1anZLamhQTlJRWjA4SU1xb3ZGZGkzVmVoVVpMMjBTMnBsTW5ydEwz?=
 =?utf-8?B?SHEvWG9rY3RQdXpQbjlWbVZUWkFuU29mRXhJbGthaHk2TW5oQ0JSWUduVm5C?=
 =?utf-8?B?cmtmTG11NFMyNCtPeVI3OGdZdjI2VEpKV3RSaGhFS2tnamVhRFh1R0JIdFFa?=
 =?utf-8?B?SkpxdTR0Z2k5UFBIcE8rcUxiZHdCV2VSeTlQcWxTcnAxaGNaTktPTWR4YWJp?=
 =?utf-8?B?MnpyaTFqdHRqenBvMkZtNVNYcEQvbktpU1lORGlBbTFhd1N4ZTlFamEvOWVS?=
 =?utf-8?B?VW1OaGtIYTFkZmRKWWxKYjZlOUtCVWVCNDlSZ1lhK05kL0VSR1EwaXgxdkN3?=
 =?utf-8?B?MjBxc2dkUElaaWRvUTZZMlhaaS9CTXM1bCs0Tlo4azV0YzhvZE5jYkUyZEFB?=
 =?utf-8?B?R3dhY0s3WjlmMkxwcmxWbE1EL1U1K09ZVnFRNlVLTXArdUswVHZCb1U3TXh5?=
 =?utf-8?B?cjRCZlNGZEdtRWo5UmU2TTlmdFJtaFN0RE9ibFEwcHo2aUtsNDh2Qmo2K1Yz?=
 =?utf-8?B?QTlXbEVvMFRPWVhQL3hCT1ViaVk0QXExbTVKMEJnUjRkbTI5eVhKdGtQbHY5?=
 =?utf-8?B?RlZJbnJkc0FscnhPMndTOWkyVmdYL0hEZHV1N2xSMW5FWWlwWFBDWFAyTUZN?=
 =?utf-8?B?Y3d4cUNTU1RiWUovM2ZpaFg1QTVZNGNHMkJkUjdkVGVCNk9HQmFIZXhGZ014?=
 =?utf-8?B?cW8vTEpGRjd4MGNJZFhDZjRnK2Uyb2dhOVZ5Nm9lUFltN0Z3U1FHYU14R1Ny?=
 =?utf-8?B?RitHUFFSbnFjVlNKVkE0SklTMkNVNHNCUktpWmJUYkpLK1h5dnBNdkZBOEhp?=
 =?utf-8?B?VzdYdmxCcnN6ZmdTbkFzVnFGQ1l1WDh0dlA3QkFRRDJxQnBSM05FY2lCUlQw?=
 =?utf-8?B?UmRITldUZWJqUHU5UERjOXNUaXRyK3BEUXlrcGEwK1VPOTN0WC9ReGlWQnNW?=
 =?utf-8?B?aGJrYW5lSHhVdldlcFU4bjhaeTVRUjhFSVJMaVAzT3ZFc1NBblZvRE1CMUlv?=
 =?utf-8?B?UHVraFpkSVhNSllBdmNXOW1MNWw3WndiQ3QweWZYTmpoMWJFUzZqdnEzUEcr?=
 =?utf-8?B?aVVKSk5EcFZobjRIT091WU9sdlNROWJ4Rlo0SlFWaG5HdFNWT1BtY2JINk1o?=
 =?utf-8?B?R3JGWm9PbGFTcWpsYmdtc1pJQkZnVmx0a2ZRUy9DdFlyQnlzQStwMklENEJJ?=
 =?utf-8?B?eDhLQmpuUnJ0ekpJbktWZHZ6SUNtS1ZhQUZnZVpLZDlPN0hKOFhFR1VIcmVZ?=
 =?utf-8?B?WmRmTit4Z1pneFVpNmxIbnlncWhuUm1rYVFQNXpmS1VlQlhzWi9jVVlOenZj?=
 =?utf-8?B?SjdQUkVLM3VyVS85UVlOWXArTDY2eTFRMEwwWW11MWdTaDNmSmlDQTNOQjZi?=
 =?utf-8?B?L0g1SS9zclVFdTlveU5kWUU0Mkl0OEZDcnFROWJRQXNPeHhmUWpNd3RYUS9X?=
 =?utf-8?B?c1VualJyM3hRRktWbXJKbTlDbmJZNGZ4WHIxUTcrZVlpcVpiSmdmRXZRMGJW?=
 =?utf-8?B?SEN5eTVSUU4yL2RCcVk0VmF2UUw1ZFEyZ0FIZGh4TE1wUENBZWVOYUdTR2N5?=
 =?utf-8?B?aG80d1B5MFZmOC82M0dwQW1jemsvZm1VcFBpSkdIVDllMStjQkhKd0xDQkNZ?=
 =?utf-8?B?OUtrKzlQaitURGh5UURSdkxJUzlaaHdpSTJLNklXY3RrOGZoeExCSGhtWmx6?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 957047e6-c6f4-4602-3823-08da6edf62bf
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jul 2022 08:18:14.3869 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rGDw+TE7LhvvPsjEPi8gBGwq3bQ7a5vtSJMmnJzCxn5No2F92IBQNA4CdlkCHgXc6ItFLYaUHHaNdS8/ZanJyLxuLHeQ9rm0eR9WfA/1tGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2810
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation_=28rev10?=
 =?utf-8?q?=29?=
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

this patch is not related this incomplete issue.
This patch series fixes integer overflow or integer truncation issues in
page lookups, ttm place configuration and scatterlist creation, etc.

This patch has no code changes affecting the test case reported here 
(cache mode change after suspend).
This issue seems to be caused by another issue, and if this issue has 
not been managed before,
IMHO, it should be handled separately by creating an issue.

 >         Possible regressions
 >
 >   * igt@i915_pm_rpm@pm-caching:
 >       o shard-iclb: PASS
 > 
<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@i915_pm_rpm@pm-caching.html>
 >         -> INCOMPLETE
 > 
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb4/igt@i915_pm_rpm@pm-caching.html>
 >


On 7/25/22 3:41 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	Fixes integer overflow or integer truncation issues in page 
> lookups, ttm place configuration and scatterlist creation (rev10)
> *URL:*	https://patchwork.freedesktop.org/series/104704/ 
> <https://patchwork.freedesktop.org/series/104704/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11935_full -> Patchwork_104704v10_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_104704v10_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_104704v10_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (10 -> 13)
> 
> Additional (3): shard-rkl shard-dg1 shard-tglu
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_104704v10_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_pm_rpm@pm-caching:
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@i915_pm_rpm@pm-caching.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb4/igt@i915_pm_rpm@pm-caching.html>
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_11935_full and 
> Patchwork_104704v10_full:
> 
> 
>       New IGT tests (11)
> 
>   *
> 
>     igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.60] s
>   *
> 
>     igt@kms_flip@blocking-absolute-wf_vblank-interruptible@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [7.59, 7.80] s
>   *
> 
>     igt@kms_flip@blocking-absolute-wf_vblank@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [7.62, 7.82] s
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [7.72, 8.09] s
>   *
> 
>     igt@kms_flip@flip-vs-modeset-vs-hang@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [29.94, 30.02] s
>   *
> 
>     igt@kms_flip@flip-vs-panning-interruptible@d-hdmi-a1:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [7.59] s
>   *
> 
>     igt@kms_flip@modeset-vs-vblank-race@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [2.77, 2.97] s
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate-interruptible@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [7.73, 7.95] s
>   *
> 
>     igt@kms_flip@plain-flip-interruptible@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [0.60, 0.66] s
>   *
> 
>     igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [0.62, 0.65] s
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check@d-hdmi-a1:
> 
>       o Statuses : 2 pass(s)
>       o Exec time: [7.78, 8.10] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_104704v10_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@feature_discovery@display-4x:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@feature_discovery@display-4x.html>
>         (i915#1839 <https://gitlab.freedesktop.org/drm/intel/issues/1839>)
>   *
> 
>     igt@gem_ccs@ctrl-surf-copy:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@gem_ccs@ctrl-surf-copy.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555> /
>         i915#5325 <https://gitlab.freedesktop.org/drm/intel/issues/5325>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@gem_ccs@ctrl-surf-copy.html>
>         (i915#5327 <https://gitlab.freedesktop.org/drm/intel/issues/5327>)
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +9 similar issues
>   *
> 
>     igt@gem_ctx_persistence@hostile:
> 
>       o
> 
>         shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-snb5/igt@gem_ctx_persistence@hostile.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>)
> 
>       o
> 
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@gem_ctx_persistence@hostile.html>
>         (i915#2410 <https://gitlab.freedesktop.org/drm/intel/issues/2410>)
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-bb-first:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_capture@pi@vecs0:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@gem_exec_capture@pi@vecs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb6/igt@gem_exec_capture@pi@vecs0.html>
>         (i915#3371 <https://gitlab.freedesktop.org/drm/intel/issues/3371>)
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-deadline.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl6/igt@gem_exec_fair@basic-deadline.html>
>         (i915#2846 <https://gitlab.freedesktop.org/drm/intel/issues/2846>)
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs1:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-none@vecs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +3
>         similar issues
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk8/igt@gem_exec_fair@basic-pace@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk3/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@vecs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +1
>         similar issue
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>         (fdo#109313 <https://bugs.freedesktop.org/show_bug.cgi?id=109313>)
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@gem_lmem_swapping@verify-random.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html>
>         (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_softpin@32b-excludes-last-page:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-snb5/igt@gem_softpin@32b-excludes-last-page.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +135
>         similar issues
>   *
> 
>     igt@gem_userptr_blits@coherency-unsync:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@gem_userptr_blits@coherency-unsync.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>   *
> 
>     igt@gen7_exec_parse@batch-without-end:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@gen7_exec_parse@batch-without-end.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1
>         similar issue
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@gen7_exec_parse@batch-without-end.html>
>         (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
> 
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@gen9_exec_parse@allowed-single.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +1
>         similar issue
> 
>       o
> 
>         shard-apl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl7/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716 <https://gitlab.freedesktop.org/drm/intel/issues/716>)
> 
>   *
> 
>     igt@gen9_exec_parse@bb-start-out:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@gen9_exec_parse@bb-start-out.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/intel/issues/2527> /
>         i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +1
>         similar issue
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
> 
>       o shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html>
>         (i915#6405 <https://gitlab.freedesktop.org/drm/intel/issues/6405>)
>   *
> 
>     igt@i915_pm_rpm@dpms-lpsp:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@i915_pm_rpm@dpms-lpsp.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +37
>         similar issues
>   *
> 
>     igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html>
>         (fdo#111644
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111644> /
>         i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>
>         / i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +35
>         similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         (fdo#109293
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109293> /
>         fdo#109506 <https://bugs.freedesktop.org/show_bug.cgi?id=109506>)
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         (fdo#109506
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109506> /
>         i915#2411 <https://gitlab.freedesktop.org/drm/intel/issues/2411>)
> 
>   *
> 
>     igt@i915_query@hwconfig_table:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl8/igt@i915_query@hwconfig_table.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +29
>         similar issues
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@i915_query@hwconfig_table.html>
>         (i915#6245 <https://gitlab.freedesktop.org/drm/intel/issues/6245>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@i915_query@hwconfig_table.html>
>         (i915#6245 <https://gitlab.freedesktop.org/drm/intel/issues/6245>)
> 
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-edp-1.html>
>         (i915#2521 <https://gitlab.freedesktop.org/drm/intel/issues/2521>)
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-90:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +2
>         similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
> 
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +80
>         similar issues
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-270:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-270.html>
>         (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@kms_big_fb@linear-8bpp-rotate-270.html>
>         (fdo#110725
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110725> /
>         fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
> 
>   *
> 
>     igt@kms_big_fb@y-tiled-32bpp-rotate-180:
> 
>       o
> 
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb4/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
> 
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf_tiled_ccs.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +3
>         similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   *
> 
>     igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         (i915#3689
>         <https://gitlab.freedesktop.org/drm/intel/issues/3689>) +5
>         similar issues
>   *
> 
>     igt@kms_chamelium@dp-crc-single:
> 
>       o
> 
>         shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-snb2/igt@kms_chamelium@dp-crc-single.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@kms_chamelium@dp-crc-single.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk5/igt@kms_chamelium@dp-crc-single.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@kms_chamelium@dp-crc-single.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
> 
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl8/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-negative:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-negative.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-gamma:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@kms_color_chamelium@pipe-d-gamma.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         fdo#109284 <https://bugs.freedesktop.org/show_bug.cgi?id=109284>
>         / fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1
>         similar issue
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@kms_color_chamelium@pipe-d-gamma.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +3
>         similar issues
> 
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_cursor_crc@cursor-onscreen@pipe-a-edp-1-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +7
>         similar issues
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_cursor_crc@cursor-onscreen@pipe-c-edp-1-32x10.html>
>         (i915#4462
>         <https://gitlab.freedesktop.org/drm/intel/issues/4462>) +7
>         similar issues
>   *
> 
>     igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html>
>         (i915#3528 <https://gitlab.freedesktop.org/drm/intel/issues/3528>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html>
>         (i915#3528 <https://gitlab.freedesktop.org/drm/intel/issues/3528>)
> 
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html>
>         (i915#5287 <https://gitlab.freedesktop.org/drm/intel/issues/5287>)
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl7/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#4767 <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +1
>         similar issue
>   *
> 
>     igt@kms_flip@2x-plain-flip:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_flip@2x-plain-flip.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274> /
>         fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>
>         / i915#3637
>         <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +3
>         similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend@b-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>         +4 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate@c-edp1:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) +3
>         similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +1
>         similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +5
>         similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1
>         similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html>
>         (i915#160 <https://gitlab.freedesktop.org/drm/intel/issues/160>)
>         +6 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +10
>         similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280> /
>         fdo#111825
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +16
>         similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html>
>         (fdo#108145
>         <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265
>         <https://gitlab.freedesktop.org/drm/intel/issues/265>)
>   *
> 
>     igt@kms_plane_lowres@tiling-y@pipe-c-edp-1:
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@kms_plane_lowres@tiling-y@pipe-c-edp-1.html>
>         (i915#3536
>         <https://gitlab.freedesktop.org/drm/intel/issues/3536>) +3
>         similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_plane_lowres@tiling-y@pipe-c-edp-1.html>
>         (i915#3536
>         <https://gitlab.freedesktop.org/drm/intel/issues/3536>) +2
>         similar issues
> 
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-update-sf:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl1/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl8/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) +1
>         similar issue
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk6/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
> 
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr@psr2_primary_page_flip:
> 
>       o shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_psr@psr2_primary_page_flip.html>
>         (i915#132 <https://gitlab.freedesktop.org/drm/intel/issues/132>
>         / i915#3467
>         <https://gitlab.freedesktop.org/drm/intel/issues/3467>) +1
>         similar issue
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_move:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html>
>         (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html>
>         (fdo#111615
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111615> /
>         i915#5289 <https://gitlab.freedesktop.org/drm/intel/issues/5289>)
>   *
> 
>     igt@kms_vblank@pipe-c-ts-continuation-suspend:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_vblank@pipe-d-query-forked-busy:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_vblank@pipe-d-query-forked-busy.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +3
>         similar issues
>   *
> 
>     igt@kms_vrr@flip-dpms:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@kms_vrr@flip-dpms.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb1/igt@kms_writeback@writeback-check-output.html>
>         (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl1/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl8/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@kms_writeback@writeback-check-output.html>
>         (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk6/igt@kms_writeback@writeback-check-output.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
> 
>   *
> 
>     igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html>
>         (i915#2530 <https://gitlab.freedesktop.org/drm/intel/issues/2530>)
>   *
> 
>     igt@prime_nv_pcopy@test3_1:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb3/igt@prime_nv_pcopy@test3_1.html>
>         (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>   *
> 
>     igt@prime_self_import@export-vs-gem_close-race:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb6/igt@prime_self_import@export-vs-gem_close-race.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb6/igt@prime_self_import@export-vs-gem_close-race.html>
>         (i915#6481 <https://gitlab.freedesktop.org/drm/intel/issues/6481>)
>   *
> 
>     igt@sysfs_clients@recycle:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl7/igt@sysfs_clients@recycle.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>   *
> 
>     igt@sysfs_clients@split-10:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@sysfs_clients@split-10.html>
>         (i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@sysfs_clients@split-10.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl7/igt@sysfs_clients@split-10.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb2/igt@sysfs_clients@split-10.html>
>         (i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk5/igt@sysfs_clients@split-10.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_busy@close-race:
> 
>       o shard-snb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb4/igt@gem_busy@close-race.html>
>         (i915#5748
>         <https://gitlab.freedesktop.org/drm/intel/issues/5748>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-snb6/igt@gem_busy@close-race.html>
>   *
> 
>     igt@gem_create@create-massive:
> 
>       o
> 
>         shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_create@create-massive.html>
>         (i915#4991
>         <https://gitlab.freedesktop.org/drm/intel/issues/4991>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl1/igt@gem_create@create-massive.html>
>         +1 similar issue
> 
>       o
> 
>         shard-snb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb4/igt@gem_create@create-massive.html>
>         (i915#4991
>         <https://gitlab.freedesktop.org/drm/intel/issues/4991>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-snb5/igt@gem_create@create-massive.html>
>         +1 similar issue
> 
>       o
> 
>         shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl3/igt@gem_create@create-massive.html>
>         (i915#4991
>         <https://gitlab.freedesktop.org/drm/intel/issues/4991>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl8/igt@gem_create@create-massive.html>
>         +1 similar issue
> 
>       o
> 
>         shard-tglb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb7/igt@gem_create@create-massive.html>
>         (i915#4991
>         <https://gitlab.freedesktop.org/drm/intel/issues/4991>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@gem_create@create-massive.html>
>         +1 similar issue
> 
>       o
> 
>         shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk1/igt@gem_create@create-massive.html>
>         (i915#4991
>         <https://gitlab.freedesktop.org/drm/intel/issues/4991>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk6/igt@gem_create@create-massive.html>
>         +1 similar issue
> 
>   *
> 
>     igt@gem_eio@in-flight-contexts-immediate:
> 
>       o shard-iclb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb8/igt@gem_eio@in-flight-contexts-immediate.html>
>         (i915#3070
>         <https://gitlab.freedesktop.org/drm/intel/issues/3070>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html>
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb8/igt@gem_eio@kms.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb7/igt@gem_eio@kms.html>
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-kbl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl1/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   *
> 
>     igt@gem_userptr_blits@input-checking:
> 
>       o
> 
>         shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@gem_userptr_blits@input-checking.html>
>         (i915#4991
>         <https://gitlab.freedesktop.org/drm/intel/issues/4991>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb5/igt@gem_userptr_blits@input-checking.html>
>         +1 similar issue
> 
>       o
> 
>         shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@gem_userptr_blits@input-checking.html>
>         (i915#4991
>         <https://gitlab.freedesktop.org/drm/intel/issues/4991>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl6/igt@gem_userptr_blits@input-checking.html>
> 
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl9/igt@gem_workarounds@suspend-resume-fd.html>
>         (i915#5129
>         <https://gitlab.freedesktop.org/drm/intel/issues/5129>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html>
>   *
> 
>     igt@i915_selftest@perf@engine_cs:
> 
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-snb2/igt@i915_selftest@perf@engine_cs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-snb2/igt@i915_selftest@perf@engine_cs.html>
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html>
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html>
>         (i915#4767
>         <https://gitlab.freedesktop.org/drm/intel/issues/4767>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html>
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html>
>   *
> 
>     igt@kms_flip@busy-flip@c-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@busy-flip@c-edp1.html>
>         (i915#5726
>         <https://gitlab.freedesktop.org/drm/intel/issues/5726>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl9/igt@kms_flip@busy-flip@c-edp1.html>
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
> 
>       o shard-tglb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html>
>         (i915#2411
>         <https://gitlab.freedesktop.org/drm/intel/issues/2411> /
>         i915#2867
>         <https://gitlab.freedesktop.org/drm/intel/issues/2867>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html>
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate@a-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html>
>   *
> 
>     igt@kms_hdr@bpc-switch@pipe-a-dp-1:
> 
>       o shard-kbl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>         (i915#1188
>         <https://gitlab.freedesktop.org/drm/intel/issues/1188>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html>
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html>
>         +1 similar issue
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_gtt:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb5/igt@kms_psr@psr2_primary_mmap_gtt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html>
>   *
> 
>     igt@perf@blocking:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl1/igt@perf@blocking.html>
>         (i915#1542
>         <https://gitlab.freedesktop.org/drm/intel/issues/1542>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl10/igt@perf@blocking.html>
>         +1 similar issue
>   *
> 
>     igt@prime_self_import@export-vs-gem_close-race:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-tglb1/igt@prime_self_import@export-vs-gem_close-race.html>
>         (i915#6481
>         <https://gitlab.freedesktop.org/drm/intel/issues/6481>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-tglb8/igt@prime_self_import@export-vs-gem_close-race.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb5/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#588 <https://gitlab.freedesktop.org/drm/intel/issues/588>)
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-kbl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@i915_suspend@forcewake.html>
>         (i915#3614
>         <https://gitlab.freedesktop.org/drm/intel/issues/3614> /
>         i915#4817
>         <https://gitlab.freedesktop.org/drm/intel/issues/4817>) ->
>         DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@i915_suspend@forcewake.html>
>         (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-skl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +1
>         similar issue
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@runner@aborted:
> 
>       o
> 
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-apl8/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-apl2/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
>       o
> 
>         shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-skl7/igt@runner@aborted.html>
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-skl6/igt@runner@aborted.html>
>         (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
>       o
> 
>         shard-iclb: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-iclb4/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-iclb6/igt@runner@aborted.html>
>         (i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
>       o
> 
>         shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11935/shard-kbl4/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257
>         <https://gitlab.freedesktop.org/drm/intel/issues/5257>) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v10/shard-kbl1/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>
>         / i915#5257 <https://gitlab.freedesktop.org/drm/intel/issues/5257>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11935 -> Patchwork_104704v10
> 
> CI-20190529: 20190529
> CI_DRM_11935: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6594: 326629f105459f9bd201456a0454759628e6a43d @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_104704v10: 2df3752997eeeba0843b7b1b9a27204a4e831355 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
