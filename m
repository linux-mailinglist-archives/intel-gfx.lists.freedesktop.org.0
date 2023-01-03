Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B5965BBDD
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jan 2023 09:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62B0210E3A2;
	Tue,  3 Jan 2023 08:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3575D10E3A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jan 2023 08:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672733788; x=1704269788;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cGSZevLgcIklX0Rvcf5QZDSTiyrbDJwyOohk5RyHSBM=;
 b=F6WNgrA1VCo5L42IC1Xv/KyT5YWfAAgsW0clWSQjebg6C3mL/u2sgdGD
 2QGBcK55/gQrRQ7O0k1K8+iGWAOXx93dwByQVENJtje7b9SqEE+82+4ht
 +nxvdjMb8s9y5ugvjyIoLaL22W5jz2sUEghu/QtPUe3bcei3xNZVszSzH
 rCqEaLKOBQsgkjcfZmQcTDESJRqlvpsthZtpqtDsfDVOZ3BVztxllWOHE
 XWdqFxNg2t2og3Z+dHt/jDorWcmEvzD6jnekE8dqgD0/auQynKyFgOs0b
 jb0DaAaXlZrCeunwhrOxHl5ZdndSFfRliuYes6N5BVovase4y6rdpkpv+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="321678023"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="321678023"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 00:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10578"; a="797102061"
X-IronPort-AV: E=Sophos;i="5.96,296,1665471600"; d="scan'208";a="797102061"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jan 2023 00:12:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 00:12:22 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 00:12:22 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 00:12:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lguGzCpZmnRmvnnXkx2+5h/oBvdC52ai2qmaj0+ObKUA1MYD0MGeAKLPOu51q90lnIz0Rr+IRMKWcyPl4wYWpr0jZnjG4NopJwRQpyo+8APPncZbFz2GXUj8ay2tZxusFoN8Bx68aiXWR4j5gbx+rnhUEK+ywRBs38Ci+xfFH4aAr5WAxIUBw6iEjizVYxduMnOG14RnhHiLmF5/pMp1d4ucUJgahHer+LGsQQTGKlixj/Y+IYm5n6xld2UP3c+MQb/hYjdbLEPzREr1OGnei3EAJQkdOYSPE9kMQj5as7MIFhQPhbAjJ4bWbWxngmVeroUEjNocOOouTR/o1jDTGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kuSyBOb5xrCcA3u+/a5WBsG062M9MZfqw2s69AKe95E=;
 b=XXtRuyFIWx1jUIiqWo+sq/uGGmPKu7ny9COTn142v4C8PvKtieFntzyGgG3nPWC8KYzZke8KXbbvtaSa8CSD4p+1vvateNUm5GHbgfY3H1N/a03uqiP9CW1gFfqqVzMZe1YPywNnvmJ1WCgSzf7a29prumAZClg3HcuPpK+gK7bsYljANE+iCRQaeTtwZ6GTp/Ltu/LeoyLBDbdG746GioF1fWGJnkH6vGaZbBCsueGbJjJVbHO0QXNUjwIOUPWnacL46dsdDm89wwS2PJXWUetlci1+r1msWgDKdRfItKSDR9NjLJuawC/U0oUfTLr4U+c4h8YaffigfrzUxAIMTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by PH8PR11MB7991.namprd11.prod.outlook.com (2603:10b6:510:25a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Tue, 3 Jan
 2023 08:12:17 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::2f13:f639:2761:bb6c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::2f13:f639:2761:bb6c%3]) with mapi id 15.20.5944.019; Tue, 3 Jan 2023
 08:12:17 +0000
Message-ID: <b2540829-6fe9-59d0-c5ca-4d00a26f763e@intel.com>
Date: Tue, 3 Jan 2023 10:11:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>, Patchwork
 <patchwork@emeril.freedesktop.org>, Nirmoy Das <nirmoy.das@intel.com>
References: <20221230183500.20553-1-nirmoy.das@intel.com>
 <167242907094.16415.9629348880723649332@emeril.freedesktop.org>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <167242907094.16415.9629348880723649332@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0127.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9e::15) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5409:EE_|PH8PR11MB7991:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a0f0f0d-a83d-4734-6da7-08daed623a8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hi8SnKqDHPAQn3I4sJb7TMSeSOcQQv5mwJ7wp4f0Lc+nyCjl/OFlbi31R1rEgyjdO2WngBFOedYpfdcGp/PLlK2WBzr3YXicm7cL0h5qHI/d1hh0xMHjd03u5k5YQvKJmxN1TAMbrjrg/pbxhA7rPNa+vXOSvKDKr30xkdNFP9YWWsSzi9wRhbxOyjhukztxsBuMccMN+MF+GN1xMmPTdFL6syqk0A8A+76DITDIR/IchV2vPBNDJ9obQU2XImhXglznnnzNndErN3qv8uUEfn+QjOE9l0b8+vxzcXgHJgNDi+XViEm1Lhcn9N4lahYuHCIGdy2AkGvZ1DkyBPrBaG2qF3Yt+9Y3TzBZ+SeuQimNjRE7sjsD7cEkoFhwgXg6vvApiry6+czfqOFQ3zV4/7UPNpQsIjZIh0HpgS9YTDrEmtJR9ijmWRs1n9v8/FnsvRCaMfydGTn25Dv3Oa8r4CNKTGbFdQPj8zWXAEiBNZmoLYeZiF8HYVxXtLwmjy/iSSv+E0OnqQLH8hbV/sargFRIjLyDEO8OYlL7hot1r1DNN/xS/kqj4FrVK7LrJfTXcvQ4Mko2Z1gNGvLTe6y3JRnMjUu0L75yzZjNNqwfdmqB/j8SB2qtZ0rswhA7VFt3hXEQHePQ8A439TVXq/jMrfqW/3S4n4iujNYymuEC721hEfe2Qrx1TRdDnU7qLy0L883WgW8fMi+bZjdLHflodPjECzC1nOldQqEvLH20zb0J4aprvTnhRY/6WQWHTe3keMI0rClo+4dPe1WwGdvAhOwnuTjk+jy1TtZ4hBLNo29V/A76wtAowPvIsHJatM1B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(39860400002)(136003)(396003)(451199015)(2616005)(83380400001)(6512007)(186003)(26005)(82960400001)(31696002)(86362001)(36756003)(38100700002)(2906002)(6636002)(110136005)(316002)(5660300002)(8936002)(66556008)(66476007)(66946007)(31686004)(6666004)(53546011)(41300700001)(6506007)(966005)(478600001)(6486002)(22166006)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDYrUGduOTRLYWlVd3lGQVJjYnhjNnVjdXBmeHVXTHZwVER1QnU0R3l2WVB4?=
 =?utf-8?B?QWZSMEttUEp6VGRKWWI2Uk9wQmF0Yk8vbFJ4OVptcDh1R2M0cnBSZDlxdkoy?=
 =?utf-8?B?SlhTQk9ZUmVlbTlzY0doM05wZVVOTWVPYlpGWFZKM1FaQ1NBclZPcDc0WVBT?=
 =?utf-8?B?dlJpNlZkaDRzamZuVXFpNzBCNmVwNzRjd0NHNmxJNGFwSVFSK25vTXFXcGJD?=
 =?utf-8?B?dlFuY2lRTVJOeHJ0R2tPamJnZ2JvV1c2Z1BkNmR1UWxjU0U1WmRsTzdrZEty?=
 =?utf-8?B?T1JtUzY1cEo3Q1E4VWZITlpOdnJqdnZxR1lCNURXeFpVSVJ4cEgwc3hUTjVk?=
 =?utf-8?B?SjlPMjgyWkhlZjZzbVF6dE9XRVkzMzVmMFF0NnhsZEF0RDNKRk4xNkh3Nk54?=
 =?utf-8?B?M09wWHdzYzZyZmh1UnFPRGpSU1NxVkpYdUlVVFptbXpVcGJleWR6a0V6cGsw?=
 =?utf-8?B?cGMwRnNqT0VGM0NmaGlVOG1ZS0svYzZhNnc2eWQxNjJZeldhT2psUG9aK1d4?=
 =?utf-8?B?L0tjTElFdXQxN1FtUkhZdExOcHg1TmMvQ1lDSnFqN0lVaW9tZW5URUlJdUFr?=
 =?utf-8?B?cWNwazBhQ29YRnlKWm1BVW1icGpHUmtoM3BLcnR3alVWYjlwUW9RVWhTMXFs?=
 =?utf-8?B?KzJDWlk5U2x3cjZsM2hPK2hnTWVwUjVkVVB2WVdRbGs1RGRHK2lUVFBQaDNQ?=
 =?utf-8?B?WUljMmQ3MEk5MXNmL0N1SDRrd1Q0VjZLZENNOUVUand0R1I0NGJ4NS9EZmRB?=
 =?utf-8?B?OHlTb1ZOejJoaGxFYnV0aXpwSHJiRjd5UzZDRXhXcDJKSjE2NVNEVXdOZTNJ?=
 =?utf-8?B?NExEQ3ZMVUtkT3JZS1FYUHYyRGwyS3JJYjBYRG1RMlhqazZ6T255ejVhMkds?=
 =?utf-8?B?SEdWVkFnbWdIMWlXRmQ2RjArZGMzQkNtcDc1dEtmKzJFNHVpNGY5NE4rNXdU?=
 =?utf-8?B?RS9kSWpBSzZjQk9OVVZDYkV1Zm91Q0lZMlNUTUZGbWJqVHd5WmhteVFmVi9D?=
 =?utf-8?B?alkxeE10T2I4UGFha0xOYklLMFUva0dySFBkYzJ4b0FWRVQ3QjJ3RUtRSTE0?=
 =?utf-8?B?aTd4RUhsQjl6Qmgzd2xzYldYZHBreXJuTW1rSUNpeEkyRDV2WmtmMWFnOURt?=
 =?utf-8?B?VVdSazNrNUkrbFBZcjJ0UGNqdXl4QTlvQXd0WUxkUjU2TWpjbmxTV3pDWG1o?=
 =?utf-8?B?bnp6Z0paaHZNSHVYTm1keXA2eDJKbVFCWHBkTkFwMU9RUTZmbkdLRmNvcXBW?=
 =?utf-8?B?cWdjRzdjSlhEaG9DWXdSbGYvdStOL3hkaXhybHlzR21ZSFVqQURKbDlZQTRC?=
 =?utf-8?B?alcrMk9jOWUvTnJxTUxXNytNdG1FQ3NSYjVZZDZGMGNWblVtTlBRVkJEdmhm?=
 =?utf-8?B?SVJuYTUwbGVSbEdraHJ6WXYrVktrYmllZEpNWlU1MGt5UElWT2NhYzVQQllw?=
 =?utf-8?B?TlFPZUtkalJndWdzM1B0UjNGY2lpUHYycFV4QlBPT3FNQnF3WlQ2Rm9odkZ5?=
 =?utf-8?B?YTVaeDFVUFpBay9hbkhmNWlNdWE3R3FFalY3bVV0WXRLVHhrTWhnVDNjNHpw?=
 =?utf-8?B?ZytjYU4yUlRxdTZ1c05TWFFJTXVDK01tYWREekduSG9yR2pWaTVIZENQeXY3?=
 =?utf-8?B?L0I5OSttRzVPdEoyMlhmUVZTZVVnSllOTFF2ZFJkL2ZhSXFYbGRqVGkyM1R4?=
 =?utf-8?B?eFJuc0dvU0Vsbk5HcTNaeVhkWjFGRkZSdzRtZXB3Mnd3RlU4OXZtT2FqSCto?=
 =?utf-8?B?cWI5dHA0MFhZZEE3ZEhqaVpRcCtUb1kvaTI4UlJkR1ppYWZ0QWc5R0FnMThP?=
 =?utf-8?B?Y2dvbUZ5bTN6dklkemh4WGNwbkdRZjFsS3VhYkxxdHRxbEljSk5aeGRjU3VL?=
 =?utf-8?B?N0U2ZjRnL3JoSFE3dkthamIzSk1obkZ4TlhpOERtbXRWenRDUTJrYWtXY2dF?=
 =?utf-8?B?Uk5qU2hydWRqWFNRY3hPM3RmU2FGMDBaQ0srMmZLTlhPaEJjNXFEck10a01W?=
 =?utf-8?B?d3JBWjhDVFNDaHQzS24rNFA4dDZsaFpTZUJPaUtzbTYzMGJQY0lDVk1OZTdJ?=
 =?utf-8?B?QW1DSkFndEhabHdBeFBRQkhleHl4elNlNkRsRm11TGM1SjNwa2swYmQ3VE1a?=
 =?utf-8?B?aTdpQ3haLzF1Rnk4Z0oyeE91d3VDN3lwd0J6bmx4NmdlSGFLQkFnYjdJMzFZ?=
 =?utf-8?B?OXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a0f0f0d-a83d-4734-6da7-08daed623a8a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2023 08:12:17.5761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jI8pPb8ULMYp8F1eF86AUCmK2ICQvgIpnn0Caw0KGbSycLDoijvIlvKFl/AGpcfB1ifPf4DE+QuXG6EYzviM4Has+7Y3zxrxCcL2wS8IwUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7991
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_=22=25zu=22_to_format_size=5Ft?=
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

This fix has nothing to do with IGT Possible regression.
This fixes the code that raised build warnings in 32-bit environments. 
And this patch has been merged.

On 12/30/22 9:37 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: Use "%zu" to format size_t
> *URL:*	https://patchwork.freedesktop.org/series/112317/ 
> <https://patchwork.freedesktop.org/series/112317/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_12532 -> Patchwork_112317v1
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_112317v1 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_112317v1, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/index.html
> 
> 
>     Participating hosts (44 -> 43)
> 
> Additional (1): fi-kbl-soraka
> Missing (2): fi-rkl-11600 fi-snb-2520m
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_112317v1:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@slpc:
>       o fi-kbl-soraka: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@i915_selftest@live@slpc.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_112317v1 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_exec_gttfill@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +7
>         similar issues
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>   *
> 
>     igt@i915_selftest@live@gt_heartbeat:
> 
>       o fi-apl-guc: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html>
>         (i915#5334 <https://gitlab.freedesktop.org/drm/intel/issues/5334>)
>   *
> 
>     igt@i915_selftest@live@gt_pm:
> 
>       o fi-kbl-soraka: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>   *
> 
>     igt@kms_chamelium@common-hpd-after-suspend:
> 
>       o fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-fast:
> 
>       o fi-kbl-soraka: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o fi-hsw-4770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#4785
>         <https://gitlab.freedesktop.org/drm/intel/issues/4785>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>   *
> 
>     igt@i915_selftest@live@requests:
> 
>       o {bat-rpls-1}: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/bat-rpls-1/igt@i915_selftest@live@requests.html>
>         (i915#6257
>         <https://gitlab.freedesktop.org/drm/intel/issues/6257>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/bat-rpls-1/igt@i915_selftest@live@requests.html>
>   *
> 
>     igt@i915_selftest@live@reset:
> 
>       o {bat-rpls-2}: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12532/bat-rpls-2/igt@i915_selftest@live@reset.html>
>         (i915#4983
>         <https://gitlab.freedesktop.org/drm/intel/issues/4983>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112317v1/bat-rpls-2/igt@i915_selftest@live@reset.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12532 -> Patchwork_112317v1
> 
> CI-20190529: 20190529
> CI_DRM_12532: 91195847031b60062eb046b8bb0c9e64a2291e10 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7104: fe5def13049225967770eaaf19ec01ef80e2adc5 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_112317v1: 91195847031b60062eb046b8bb0c9e64a2291e10 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> c0b7c80b83b2 drm/i915: Use "%zu" to format size_t
> 
