Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 346415ED10A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 01:32:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5497910E199;
	Tue, 27 Sep 2022 23:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02E810E199
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 23:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664321536; x=1695857536;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=6GTJye1a0/Xj/CQNELfoEvzkxT2ZCA6obSNZ9xaidvo=;
 b=d5s8UMqirqczP+Ewp+xwPGTYkrXDM3/hvGyDCU2925uEah2RCG/CoM8+
 HS7SwSEjUduutbpLay19J2btqUcciEUIFbqidJewfqnC7gtM7tkZzJqqx
 hyk1k6vppUotgFp3J8EZ5JtPrWiD3K1G9wlsW7HPQqNwSSVZq37SVcTAQ
 pm0K2nDUKW1m0TyTRFF2T96IQA2TQpDEIPXiNkPL+LscAJ7+WXgrVFCGz
 cyAvR3HksXgb7lgJUSXxkvmAR6koXa0wBR51BYulytWVHSPloGBia9x9s
 4qUAzI8uI3FgvHD02E3BgsXJUJFTeZ8oYywbimKGBAuas+cZy5d8BpkM9 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="288611647"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; 
 d="scan'208,217";a="288611647"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 16:32:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="690179157"
X-IronPort-AV: E=Sophos;i="5.93,350,1654585200"; 
 d="scan'208,217";a="690179157"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2022 16:32:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 16:32:15 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 16:32:14 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 16:32:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Po/optHLJFaZramrP5BE0+xB+7wBWUQCiLVA/dCAsNl5l5VgeuY5brWTsBBfSh5hpbHOgPuOHoAnQk0qd+YL3XipiUbBFRewgBn6xfV6J3Uwt4Rq0EdkBAdQx7SkU6mbG6UfhOjWK4V7hjfGffX6OJP69WascYndnBXTe3EpLdwbde39TROVWrANbq53mefdoyNzOI0sNiUKB+ytP2zj4yzkZYFxupOSLqilmngeYFyyyiEa/8IHmoB0L6gaup8dMNY1T8zYTBcWMAujCo/BAJVuGJSf7kpcXfXrMfSh5+SNdJ5f+rMK/OT9uOPpU04VgkewuWAXidCMWCZjXywplQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0PQtxUYBOz6hL4eORpXnx+se3gjeBVoUxjglSb0x1ZM=;
 b=n+gBM8I+ZOdxdB02GT3HC7X13EPzU7JuQwPOIZnr5gxZKR+Q2aDJZu/2Y/2MGYxuTEVyUPqnJmeUBRBaT0cuzyqWUx9pzjrXnh6A39rohgV9UJ0nFMqipnCxAWgGSOspOBKw8nS/vMggTTx2Kpf8wwqUN/wumZVujpoSeRk0Og4A85sKusY9wefQUWscwsPivO3JHpi/O6yq3g3Vy5BCJxDyz/a7mX9jRL/u51ZjYcF948gBANMUThIEIURuQU4EUODLaj+NJymqi8L/VgeUrYkQjj/Ght360T+4vCkfO708pfET8TZP4ztK5a2EMgClh0H+UY/R6/hDxxqO0zPQNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5612.22; Tue, 27 Sep 2022 23:32:11 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::7750:dd86:4ef:afc6%7]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 23:32:11 +0000
Content-Type: multipart/alternative;
 boundary="------------r5oiTm1foi1PKcYyHDNvwMVK"
Message-ID: <050a6b3e-012a-a185-af28-2bf7f17f3842@intel.com>
Date: Tue, 27 Sep 2022 16:32:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20220922201209.1446343-1-John.C.Harrison@Intel.com>
 <166391932510.30118.14381190496031064302@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <166391932510.30118.14381190496031064302@emeril.freedesktop.org>
X-ClientProxiedBy: BY3PR10CA0011.namprd10.prod.outlook.com
 (2603:10b6:a03:255::16) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DS7PR11MB6078:EE_
X-MS-Office365-Filtering-Correlation-Id: d3ee3bda-4e4d-4382-44a7-08daa0e0800e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nz9Q2pyvZ+9K4kpVxU6tJXMpka1ufknBwZRi/5VFx49upgJfA2lOabocoDFOrXUKEgX97Li5OwSO932uiEScb8Psr2vIhXRjWonyRg2XqD8aSemVRTLTbeFgRJEKayJYNizp9NMd32/P8ZMzEvxcoSJBgGzbztExFaC0uMntqKcgi8m+ORrzYv+Mw5mVKP2q5a3Aj3fbeqVII1/iwCXp2sokLJarBsT7XGDXg8BOTB3xsPPPV6MF5P47qrc2JxKboExK3mXsHfv5gTjZaAQArscj0prebXoYrBSry5yK2O6aqCUnql1CAeAG/mrFMkHOFlZ1qaNxzcrjYtfzsSWIIKk4GVxbVJTYMHjrqtTu4RCut7QQFglFzbMON/N562qyJHiOvHWBrnfz/UDwCGuYLEXwJ6Tg3nKQvWFU+vVSHHey56X7ZOeMIP7Dq9rwMhQLkwAQs++CIe+PenxRDjUx/HRMlPipYhM2UqrE+/qHIgV+8j0PQYVvkUgR+S3PX2e2rNA0hK/7e4x+xHK6eCSCb7JIv7ztE/WULAdc/OlRzgKTZ0HQIy85P6BgTO1EP6XTc+Mjbxgha/1TKnN+jCY+u3vfPqUEZc3wWL266ZyyNrXBgRfAEAIqvSWBO49ggmoCEl3uIFeY81pBm4f0+bVlIrWIQWfZo9rbT9za6rHnFL3FX9NNHHIca+cEje6bo6g6snBzo4cDPpHvLURJZR7WQaA0PJwTNagiP1/OBZKD3Kr+VVrH5Pqzyfg7/HfR1LfWyXdy16VcMxOAXC5EqzmqGOq8xb86xFBMZkM/zecGEw2VmflUjjMJPcLDxAueYrhvrIhT1uFrLWSFTSow1fvgxq5eUnllmuxgsPt6r5udMv0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(376002)(346002)(366004)(39860400002)(451199015)(36756003)(38100700002)(82960400001)(31696002)(166002)(31686004)(86362001)(83380400001)(2906002)(33964004)(2616005)(478600001)(26005)(6486002)(966005)(41300700001)(40265005)(6512007)(53546011)(6666004)(6506007)(6916009)(30864003)(21615005)(66556008)(8936002)(186003)(316002)(5660300002)(66476007)(66946007)(45980500001)(43740500002)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cCtyLzAyeXlTN2U3NGZ1QzVPMHhyZlJvbkhycmpmWjhMRjR4T0wvMS9OQWNl?=
 =?utf-8?B?bTdQQS9rV240eVBPTEFjaFVhdTBiZUJyZDk1TTFOU00rYm14VGFZVFExVCtJ?=
 =?utf-8?B?dkJ6dlJYVStkZHdRR1kxRFJHSzJPaUlSMmNxVXg4MElPam5ZUmlmSTdyaFJv?=
 =?utf-8?B?OWc1SjZ3TzdiKzVPUGJRV1JHQVVnQWJlajlHdDM5Sk9JUkc2NWZuYzZacDRo?=
 =?utf-8?B?TTlTNmQzWHNmNXowaGIzQUZVL0VuTlh1K3d0bU9GVTMrc21qVWVDZ1pJaDdZ?=
 =?utf-8?B?REQ4ZEdDeFlUK2JEM1VmK2phUWRVc3prdlArK0ZidHJnenhtaURQOUppUThF?=
 =?utf-8?B?QWFjZTJ6ZFBPU21BK2dzYzcybEdqWjNUb0U2dWJ2RzBNalNicFhVNGkySUxJ?=
 =?utf-8?B?aFFyU3pCUk1ocWdTREw5cHNNMUlaeHNMeWYxak5BQTZNS2NiZlN1US9tcUtF?=
 =?utf-8?B?SmwxUEdlV2Rzc3NDRnVRRW5PVGR2MFRwUlJYcjlUa0hMVGtvWXNTcVlKSWpD?=
 =?utf-8?B?MnBmNnQ3TStvRWY1STJNR1BwMXZzZkpsWEZ5cW8zS295NzlNSUV1VlZWZmpp?=
 =?utf-8?B?MzJvbEV4YUs4QW9ZWkhWQ1JrVnJlTVVJRVV0NStKbE8yRXYxVjA2TnR1RE5o?=
 =?utf-8?B?VE1uNDk3blpqckFBSU9CY0hBblNDUm1YTHBXMVc1aEY0UHZqaXFRNmwxcFNr?=
 =?utf-8?B?Lzc5TWtWbkhreWllOEhuUENFdUcydU9ON21JUEVud1VPSVdZZ0hEWUJzVEtK?=
 =?utf-8?B?OFIxTnNNUHVuWURnRDU5RlQwMXI4UVRRQ0hRYTh3V1EwdHhzd3Q5WXVlL0x4?=
 =?utf-8?B?enJaQkR3aVRUaDBsbEVkMzV5WDFGblNSRUV4ME1hcXNMbEFSTHBtNXBubTIx?=
 =?utf-8?B?bnVvL1pvekptRkgrVnkvZnlTTjJySUYyemduWUdjbmRnSjY1RUZjYitHdnFY?=
 =?utf-8?B?QWZYaitJcWNlakhDMVNTSzJ1UEVWV2FFOHhZK3A4OUEwZ0Fwc3YxRTlmbkc5?=
 =?utf-8?B?MW1ZZlFnbUlUdmh3Y09EQmRhNEVXKzJic1MyRWc1UlVscWcwVDBGMkFRQnQ0?=
 =?utf-8?B?dFl2UTRpQ1lQTFNSZG1abVhyQXdnUFhaaXRDY0pCeEM3WmJCM0VNdW1EMGZQ?=
 =?utf-8?B?WXVDQ3EyTFkwZXBKUVBXanRwQmw2eXlYbzk1QVh0NjZNUE0weG1JajFTM0xq?=
 =?utf-8?B?R1NVY2NDWkxUUGNZYVpwNUt6MDRzQ2ZiTHZackdrQU1EQ3g0UzVVSmpmeUo5?=
 =?utf-8?B?bDFrczYzWkY2dTFPRGtpb3M5RFl3d3JDR21paXByV3ZZUzh3V0x5WDQ1bmJv?=
 =?utf-8?B?RTBkNEJVeWtCYmxDMlI2elBheDVzTXZCT3dXTENPQXVSOFI4NzRHRlFEcU1r?=
 =?utf-8?B?Y1liK3Q2blVIb3RsYmVHbUFXSlBJYmJXckdBWFBGaWlGZTZPMmVBNW1OK29s?=
 =?utf-8?B?MjF2V0VDUXNyYXNsZDd5cngwQlh3ODlyT1N3L2x2Lzd1eEhodVNvTkQ5NzN5?=
 =?utf-8?B?Nk45R3ViK1pLMHkrSGJ5cGIwSE95VTVnM2h2R29pWXdNT2dCZlVEV29jdlBS?=
 =?utf-8?B?dDJXVUhQSlp4SWVNeEFoeEJLOVVpZi9FRWRtSGZuOGxubm44a3JQeUgxSWs2?=
 =?utf-8?B?UlZMa0NUNUZYc0NmVWRDbkUyRHBHOEh5WTBQTXBtbzZRNk1qQ1VoSUJqNGpL?=
 =?utf-8?B?ejF1aTBYbkdQTWlwclFST1hXLzQzR2hRU0E4L2VhNlByRFZiNTlBOGxkYWpo?=
 =?utf-8?B?Mjd2K3lpeTRjNjFqN3YvMjZiUFJGT3hLUjRPY1RiWjVrQk1yTmdtUk1QWTBQ?=
 =?utf-8?B?VUprZmg4MGNLWVFOcjJMRE05Y0t3UitNa1JnTkp4ZTVWNUJMb3dsM014Nkx3?=
 =?utf-8?B?Q3dPemgzVFRQdXFhWVg3eHJ2eUVxU2xCTXhHRkpaWkNnUGRDeVUrbXNtVmlJ?=
 =?utf-8?B?TUxkd0lDcTgwdW93U0lyVTBJZUgwY0hzcTZNWHQwMG9qbnlGemdKeUxRMjFs?=
 =?utf-8?B?dE5zSDJHdlpqRXRXbU5kU3BRYWl5czkreElCMDFRNnpmSHlJUG5icmg3K1Q5?=
 =?utf-8?B?aTlzYWZ0dCtwcjl2WkxpWVJEcDZ3TFZEK2tZUnV1SStIRTVoNEFHbHhrMXhk?=
 =?utf-8?B?bkxzZytnVkgza0QvL1FXY1RqWlFnOVdQcnZlaVdrVUZacDVYeTY2MEpoejI2?=
 =?utf-8?B?N3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3ee3bda-4e4d-4382-44a7-08daa0e0800e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2022 23:32:11.0227 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rnb3wDJkb4An/UWo7nUuCrYpZ1pQQ4rcz/MtzfqKLwxEkyB2GIRP9teWS+WIZ4i+5O8nfGIgSYDPRaX9Xn3qJi8A8/+5yE+TifGSV4RzBac=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgREcy?=
 =?utf-8?q?_fix_for_CCS_starvation?=
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

--------------r5oiTm1foi1PKcYyHDNvwMVK
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 9/23/2022 00:48, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	DG2 fix for CCS starvation
> *URL:* 	https://patchwork.freedesktop.org/series/108919/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12168_full -> Patchwork_108919v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_108919v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_108919v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
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
> Patchwork_108919v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@kms_universal_plane@universal-plane-pipe-b-functional:
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb7/igt@kms_universal_plane@universal-plane-pipe-b-functional.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb8/igt@kms_universal_plane@universal-plane-pipe-b-functional.html>
>
This patch only affect GuC submission. It does not affect display at 
all, nor does it affect TGL which is execlist submission.

Therefore, this failure is unrelated to this patch.

John.


>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_108919v1_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-glk: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/boot.html>)
>         (i915#4392 <https://gitlab.freedesktop.org/drm/intel/issues/4392>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@gem_exec_balancer@parallel-contexts:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>         (fdo#109313 <https://bugs.freedesktop.org/show_bug.cgi?id=109313>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gem_lmem_swapping@basic.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>  *
>
>     igt@gem_pxp@create-regular-context-1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_pxp@create-regular-context-1.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +2
>         similar issues
>  *
>
>     igt@gem_render_copy@y-tiled-to-vebox-linear:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_render_copy@y-tiled-to-vebox-linear.html>
>         (i915#768
>         <https://gitlab.freedesktop.org/drm/intel/issues/768>) +2
>         similar issues
>  *
>
>     igt@gem_softpin@evict-snoop-interruptible:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_softpin@evict-snoop-interruptible.html>
>         (fdo#109312 <https://bugs.freedesktop.org/show_bug.cgi?id=109312>)
>  *
>
>     igt@gem_userptr_blits@coherency-unsync:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@coherency-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +1
>         similar issue
>  *
>
>     igt@gem_userptr_blits@huge-split:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl7/igt@gem_userptr_blits@huge-split.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl3/igt@gem_userptr_blits@huge-split.html>
>         (i915#3376 <https://gitlab.freedesktop.org/drm/intel/issues/3376>)
>  *
>
>     igt@gem_userptr_blits@vma-merge:
>
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@vma-merge.html>
>         (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>  *
>
>     igt@gen3_render_linear_blits:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen3_render_linear_blits.html>
>         (fdo#109289
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3
>         similar issues
>  *
>
>     igt@gen9_exec_parse@bb-start-param:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen9_exec_parse@bb-start-param.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +2
>         similar issues
>  *
>
>     igt@i915_pm_dc@dc3co-vpb-simulation:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@i915_pm_dc@dc6-psr:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@i915_pm_dc@dc6-psr.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html>
>         (i915#3989
>         <https://gitlab.freedesktop.org/drm/intel/issues/3989> /
>         i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>  *
>
>     igt@i915_pm_rpm@modeset-non-lpsp:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_rpm@modeset-non-lpsp.html>
>         (fdo#110892 <https://bugs.freedesktop.org/show_bug.cgi?id=110892>)
>  *
>
>     igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +2
>         similar issues
>  *
>
>     igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html>
>         (fdo#110725
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110725> /
>         fdo#111614
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1
>         similar issue
>  *
>
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html>
>         (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>  *
>
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +6
>         similar issues
>  *
>
>     igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +4
>         similar issues
>  *
>
>     igt@kms_chamelium@dp-mode-timings:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_chamelium@dp-mode-timings.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +5
>         similar issues
>  *
>
>     igt@kms_chamelium@vga-hpd:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl6/igt@kms_chamelium@vga-hpd.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +7
>         similar issues
>  *
>
>     igt@kms_content_protection@atomic:
>
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_content_protection@atomic.html>
>         (i915#1319 <https://gitlab.freedesktop.org/drm/intel/issues/1319>)
>  *
>
>     igt@kms_content_protection@dp-mst-type-1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_content_protection@dp-mst-type-1.html>
>         (i915#3116 <https://gitlab.freedesktop.org/drm/intel/issues/3116>)
>  *
>
>     igt@kms_content_protection@uevent:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_content_protection@uevent.html>
>         (fdo#109300
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109300> /
>         fdo#111066 <https://bugs.freedesktop.org/show_bug.cgi?id=111066>)
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x512:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_cursor_crc@cursor-random-512x512.html>
>         (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>)
>  *
>
>     igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html>
>         (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_cursor_legacy@short-busy-flip-before-cursor.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>  *
>
>     igt@kms_flip@2x-wf_vblank-ts-check:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_flip@2x-wf_vblank-ts-check.html>
>         (fdo#109274
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +3
>         similar issues
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +3
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +3
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2
>         similar issues
>  *
>
>     igt@kms_force_connector_basic@force-load-detect:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#2546 <https://gitlab.freedesktop.org/drm/intel/issues/2546>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +22
>         similar issues
>  *
>
>     igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) +4
>         similar issues
>  *
>
>     igt@kms_hdr@static-toggle:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_hdr@static-toggle.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +4
>         similar issues
>  *
>
>     igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-edp-1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-c-edp-1.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +5
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +2
>         similar issues
>  *
>
>     igt@kms_prime@basic-modeset-hybrid:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_prime@basic-modeset-hybrid.html>
>         (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524>)
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +2
>         similar issues
>  *
>
>     igt@kms_psr@psr2_cursor_blt:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>  *
>
>     igt@kms_psr@psr2_sprite_plane_move:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_psr@psr2_sprite_plane_move.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>  *
>
>     igt@kms_psr@psr2_sprite_plane_onoff:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr@psr2_sprite_plane_onoff.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +116
>         similar issues
>  *
>
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>
>      o
>
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>
>      o
>
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#5519 <https://gitlab.freedesktop.org/drm/intel/issues/5519>)
>
>  *
>
>     igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b.html>
>         (i915#5030
>         <https://gitlab.freedesktop.org/drm/intel/issues/5030>) +2
>         similar issues
>  *
>
>     igt@kms_vblank@pipe-d-wait-forked:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_vblank@pipe-d-wait-forked.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +23
>         similar issues
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_writeback@writeback-invalid-parameters.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>  *
>
>     igt@nouveau_crc@pipe-c-source-outp-inactive:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@nouveau_crc@pipe-c-source-outp-inactive.html>
>         (i915#2530
>         <https://gitlab.freedesktop.org/drm/intel/issues/2530>) +2
>         similar issues
>  *
>
>     igt@prime_nv_pcopy@test3_2:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@prime_nv_pcopy@test3_2.html>
>         (fdo#109291
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109291>) +3
>         similar issues
>  *
>
>     igt@sysfs_clients@pidname:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@sysfs_clients@pidname.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994
>         <https://gitlab.freedesktop.org/drm/intel/issues/2994>) +1
>         similar issue
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_eio@kms:
>
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-tglb2/igt@gem_eio@kms.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/intel/issues/5784>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb3/igt@gem_eio@kms.html>
>  *
>
>     igt@gem_exec_balancer@parallel-keep-in-fence:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         +1 similar issue
>  *
>
>     igt@gem_exec_fair@basic-none-share@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html>
>  *
>
>     igt@gem_workarounds@suspend-resume:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@gem_workarounds@suspend-resume.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@gem_workarounds@suspend-resume.html>
>         +2 similar issues
>  *
>
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html>
>         (i915#2521
>         <https://gitlab.freedesktop.org/drm/intel/issues/2521>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html>
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/intel/issues/3555>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html>
>  *
>
>     igt@kms_psr@psr2_sprite_blt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html>
>         +1 similar issue
>
>
>         Warnings
>
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         (fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) +1
>         similar issue
>  *
>
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>)
>  *
>
>     igt@runner@aborted:
>
>       o shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl6/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>
>         / i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@runner@aborted.html>)
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_12168 -> Patchwork_108919v1
>
> CI-20190529: 20190529
> CI_DRM_12168: fea329811a7bc341aac5f51ab66ec41a3d0844af @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_108919v1: fea329811a7bc341aac5f51ab66ec41a3d0844af @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------r5oiTm1foi1PKcYyHDNvwMVK
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 9/23/2022 00:48, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:166391932510.30118.14381190496031=
064302@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>DG2 fix for CCS starvation</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/108919/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/108919/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108919v1/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12168_full -&gt;
        Patchwork_108919v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_108919v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_108919v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (9 -&gt; 9)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_108919v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@kms_universal_plane@universal-plane-pipe-b-functional:
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-tglb7/igt@kms_universal_plane@universal-plane-pipe-=
b-functional.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb8/igt@kms_=
universal_plane@universal-plane-pipe-b-functional.html" moz-do-not-send=3D"=
true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    This patch only affect GuC submission. It does not affect display at
    all, nor does it affect TGL which is execlist submission.<br>
    <br>
    Therefore, this failure is unrelated to this patch.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:166391932510.30118.14381190496031=
064302@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_108919v1_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-glk: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk1/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12168/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_12168/shard-glk2/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1216=
8/shard-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk3/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_12168/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-g=
lk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12168/shard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk5/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_121=
68/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk6/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12168/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-=
glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk7/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12168/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot=
.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12168/shard-glk8/boot.html" moz-do-not-send=3D"tr=
ue">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
168/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-glk9/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12168/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS<=
/a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08919v1/shard-glk1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/boot.html" moz-do-not-sen=
d=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108919v1/shard-glk3/boot.html" moz-do-not-send=3D"true">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard=
-glk2/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk2/boot.html" moz-d=
o-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108919v1/shard-glk2/boot.html" moz-do-not-send=3D"true">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10891=
9v1/shard-glk1/boot.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.ht=
ml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108919v1/shard-glk1/boot.html" moz-do-not-send=3D=
"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108919v1/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk=
9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk8/boot.html" moz-do-no=
t-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_108919v1/shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/=
shard-glk8/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html" =
moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_108919v1/shard-glk7/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108919v1/shard-glk7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/=
boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk6/boot.html" moz-do-not-=
send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108919v1/shard-glk6/boot.html" moz-do-not-send=3D"true">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/sh=
ard-glk5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk5/boot.html" mo=
z-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108919v1/shard-glk5/boot.html" moz-do-not-send=3D"true"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8919v1/shard-glk9/boot.html" moz-do-not-send=3D"true">PASS</a>) (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4392" moz-do-not-send=3D"t=
rue">i915#4392</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@gem_exec_balancer@parallel-contexts:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_exec_balancer@para=
llel-contexts.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#=
4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-tglb7/igt@gem_exec_fair@basic-pa=
ce-share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#=
2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_fair@basic-pa=
ce-solo@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2=
842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108919v1/shard-glk6/igt@gem_exec_fair@basic-throttl=
e@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a=
>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_exec_flush@basic-b=
atch-kernel-default-cmd.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D109313" moz-do-not-send=3D"=
true">fdo#109313</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-tglb5/igt@gem_huc_copy@huc-copy.html" moz-do-not-se=
nd=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108919v1/shard-tglb7/igt@gem_huc_copy@huc-copy.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2190" moz-do-not-send=3D"true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gem_lmem_swapping@basi=
c.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4613" moz-do-not-send=3D"true">i915#4613</a>)</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@create-regular-context-1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_pxp@create-regular=
-context-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4270" moz-do-not-send=3D"true">i915#427=
0</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_render_copy@y-tile=
d-to-vebox-linear.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/768" moz-do-not-send=3D"true">i9=
15#768</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-snoop-interruptible:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@gem_softpin@evict-snoo=
p-interruptible.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109312" moz-do-not-send=3D"true">fd=
o#109312</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@coherency-unsync:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@cohe=
rency-unsync.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3297" moz-do-not-send=3D"true">i915#3=
297</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@huge-split:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-apl7/igt@gem_userptr_blits@huge-split.html" moz-do-n=
ot-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_108919v1/shard-apl3/igt@gem_userptr_blits@huge-split.htm=
l" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3376" moz-do-not-send=3D"true">i915#3376</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@vma-merge:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@gem_userptr_blits@vma-=
merge.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3318" moz-do-not-send=3D"true">i915#3318</a>=
)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen3_render_linear_blits:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen3_render_linear_bli=
ts.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109289" moz-do-not-send=3D"true">fdo#109289</a>)=
 +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-param:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@gen9_exec_parse@bb-sta=
rt-param.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/2856" moz-do-not-send=3D"true">i915#2856<=
/a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-s=
imulation.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658</=
a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-psr:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb2/igt@i915_pm_dc@dc6-psr.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_108919v1/shard-iclb3/igt@i915_pm_dc@dc6-psr.html" moz-do-not-se=
nd=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3989" moz-do-not-send=3D"true">i915#3989</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/454" moz-do-not-send=3D"true">i915#454=
</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@i915_pm_rpm@modeset-no=
n-lpsp.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D110892" moz-do-not-send=3D"true">fdo#110892<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_big_fb@4-tiled-8bp=
p-rotate-180.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5286" moz-do-not-send=3D"true">i915#5=
286</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@y-tiled-64b=
pp-rotate-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110725" moz-do-not-send=3D"true">fdo#1=
10725</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11161=
4" moz-do-not-send=3D"true">fdo#111614</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_big_fb@yf-tiled-64=
bpp-rotate-180.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D110723" moz-do-not-send=3D"true">fdo=
#110723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:<=
/p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_ccs@pipe-b-crc-pri=
mary-basic-y_tiled_gen12_rc_ccs_cc.html" moz-do-not-send=3D"true">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-n=
ot-send=3D"true">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +6 similar =
issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-apl8/igt@kms_ccs@pipe-c-crc-prima=
ry-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-se=
nd=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +4 similar issue=
s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@dp-mode-timings:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_chamelium@dp-mode-=
timings.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109284" moz-do-not-send=3D"true">fdo#109284=
</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" mo=
z-do-not-send=3D"true">fdo#111827</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@vga-hpd:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-apl6/igt@kms_chamelium@vga-hpd.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" moz-do-not-s=
end=3D"true">fdo#111827</a>) +7 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_content_protection@a=
tomic.html" moz-do-not-send=3D"true">TIMEOUT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1319" moz-do-not-send=3D"true">i915#1319<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-type-1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_content_protection=
@dp-mst-type-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3116" moz-do-not-send=3D"true">i915=
#3116</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_content_protection=
@uevent.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109300" moz-do-not-send=3D"true">fdo#109300=
</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111066" mo=
z-do-not-send=3D"true">fdo#111066</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-512x512:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_cursor_crc@cursor-=
random-512x512.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/3359" moz-do-not-send=3D"true">i915=
#3359</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varyin=
g-size:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-tra=
nsitions-varying-size.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk3/=
igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html" =
moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346" moz-do-not-send=3D"true">i915#2346</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@short-busy-flip-before-cursor:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_cursor_legacy@shor=
t-busy-flip-before-cursor.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4103" moz-do-not-send=
=3D"true">i915#4103</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_flip@2x-wf_vblank-=
ts-check.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109274" moz-do-not-send=3D"true">fdo#10927=
4</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</=
p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@a-hdmi-a1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk1/igt@kms_f=
lip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html" moz-do-not-send=3D=
"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2122" moz-do-not-send=3D"true">i915#2122</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downsc=
aling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_flip_scaled_crc@fl=
ip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2587" moz-do-not-send=3D"true">i915#2587</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send=3D"true">i91=
5#2672</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-dow=
nscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-3=
2bpp-ytileccs-downscaling@pipe-a-default-mode.html" moz-do-not-send=3D"true=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108919v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-=
ytileccs-downscaling@pipe-a-default-mode.html" moz-do-not-send=3D"true">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555" moz=
-do-not-send=3D"true">i915#3555</a>) +3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rc=
ccs-downscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@kms_flip_scaled_crc@fl=
ip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.htm=
l" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=
=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscal=
ing@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html" moz-do-no=
t-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +2 similar issues</=
li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@force-load-detect:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_force_connector_ba=
sic@force-load-detect.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109285" moz-do-not-send=3D"tr=
ue">fdo#109285</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:<=
/p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fli=
ptrack-mmap-gtt.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb5/igt@k=
ms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html" moz-do-not-se=
nd=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1888" moz-do-not-send=3D"true">i915#1888</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2546" moz-do-not-send=3D"true">i915#25=
46</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mm=
ap-wc:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_frontbuffer_tracki=
ng@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html" moz-do-not-send=3D"true">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109280" m=
oz-do-not-send=3D"true">fdo#109280</a>) +22 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html=
" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@kms_hdr@bpc-switch-sus=
pend@pipe-a-dp-1.html" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"tru=
e">i915#180</a>) +4 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@static-toggle:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_hdr@static-toggle.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>) +4 s=
imilar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-2=
5@pipe-c-edp-1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_plane_scaling@plan=
e-downscale-with-rotation-factor-0-25@pipe-c-edp-1.html" moz-do-not-send=3D=
"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5176" moz-do-not-send=3D"true">i915#5176</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-=
5@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-do=
wnscale-factor-0-5@pipe-b-edp-1.html" moz-do-not-send=3D"true">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/s=
hard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@=
pipe-b-edp-1.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235" moz-do-not-send=3D"true">i915#5=
235</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-fac=
tor-0-25@pipe-b-edp-1:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_plane_scaling@plan=
es-upscale-factor-0-25-downscale-factor-0-25@pipe-b-edp-1.html" moz-do-not-=
send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5235" moz-do-not-send=3D"true">i915#5235</a>) +2 similar issues</li=
>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@basic-modeset-hybrid:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb8/igt@kms_prime@basic-modese=
t-hybrid.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6524" moz-do-not-send=3D"true">i915#6524<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr2_sf@plane-move-s=
f-dmg-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109=
271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" m=
oz-do-not-send=3D"true">i915#658</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_blt:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_psr@psr2_cursor_bl=
t.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) =
+2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_plane_move:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html" moz-=
do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_psr@psr2_sprite_plane_m=
ove.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>=
) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_psr@psr2_sprite_plan=
e_onoff.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271=
</a>) +116 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
          <ul>
            <li>
              <p>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12168/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-f=
lip-overlay.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb2/igt@kms_p=
sr_stress_test@invalidate-primary-flip-overlay.html" moz-do-not-send=3D"tru=
e">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/551=
9" moz-do-not-send=3D"true">i915#5519</a>)</p>
            </li>
            <li>
              <p>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12168/shard-iclb6/igt@kms_psr_stress_test@invalidate-primary-f=
lip-overlay.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@kms_p=
sr_stress_test@invalidate-primary-flip-overlay.html" moz-do-not-send=3D"tru=
e">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/551=
9" moz-do-not-send=3D"true">i915#5519</a>)</p>
            </li>
          </ul>
        </li>
        <li>
          <p>igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_scaling_modes@scal=
ing-mode-none@edp-1-pipe-b.html" moz-do-not-send=3D"true">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5030" moz-do-not-send=
=3D"true">i915#5030</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-d-wait-forked:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb1/igt@kms_vblank@pipe-d-wait=
-forked.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109278" moz-do-not-send=3D"true">fdo#109278=
</a>) +23 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@kms_writeback@writeback-=
invalid-parameters.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2437" moz-do-not-send=3D"true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@nouveau_crc@pipe-c-sou=
rce-outp-inactive.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2530" moz-do-not-send=3D"true">i=
915#2530</a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_nv_pcopy@test3_2:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108919v1/shard-iclb6/igt@prime_nv_pcopy@test3_2=
.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109291" moz-do-not-send=3D"true">fdo#109291</a>) +=
3 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@pidname:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_108919v1/shard-apl7/igt@sysfs_clients@pidname.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-se=
nd=3D"true">i915#2994</a>) +1 similar issue</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-tglb2/igt@gem_eio@kms.html" moz-do-not-send=3D"true=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784=
" moz-do-not-send=3D"true">i915#5784</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-tglb3/igt@gem_eio@kms.htm=
l" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/sh=
ard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html" moz-do-not-sen=
d=3D"true">PASS</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-glk7/igt@gem_exec_fair@basic-none-share@rcs0.html" m=
oz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-glk=
9/igt@gem_exec_fair@basic-none-share@rcs0.html" moz-do-not-send=3D"true">PA=
SS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl3=
/igt@gem_exec_fair@basic-none-solo@rcs0.html" moz-do-not-send=3D"true">PASS=
</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html" m=
oz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-icl=
b3/igt@gem_exec_fair@basic-throttle@rcs0.html" moz-do-not-send=3D"true">PAS=
S</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_workarounds@suspend-resume:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-apl8/igt@gem_workarounds@suspend-resume.html" moz-do=
-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8=
/igt@gem_workarounds@suspend-resume.html" moz-do-not-send=3D"true">PASS</a>=
 +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:=
</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12168/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@p=
ipe-c-hdmi-a-1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/2521" moz-do-not-send=3D"true">i915=
#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108919v1/shard-glk1/igt@kms_async_flips@alternate-sync-async-flip@pipe-=
c-hdmi-a-1.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-6=
4bpp-ytile-downscaling@pipe-a-default-mode.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555" m=
oz-do-not-send=3D"true">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb3/igt@kms_flip_scaled_cr=
c@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html" moz=
-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_blt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html" moz-do-not-=
send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@k=
ms_psr@psr2_sprite_blt.html" moz-do-not-send=3D"true">PASS</a> +1 similar i=
ssue</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:=
</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous=
-exceed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i9=
15#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108919v1/shard-iclb7/igt@kms_psr2_sf@overlay-plane-move-continuous-ex=
ceed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#6=
58</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg=
-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111068" moz-do-not-send=3D"true">fdo#111068</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658" moz-do=
-not-send=3D"true">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108919v1/shard-iclb2/igt@kms_psr2_sf@overlay-prim=
ary-update-sf-dmg-area.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2920" moz-do-not-send=3D"tr=
ue">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html" =
moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-ic=
lb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068" =
moz-do-not-send=3D"true">fdo#111068</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658</a>) +1 si=
milar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-a=
rea-big-fb.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8919v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12168/shard-apl7/igt@runner@aborted.html" moz-do-not-send=3D"tr=
ue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12=
168/shard-apl8/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl1=
/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl8/igt@runner@ab=
orted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12168/shard-apl3/igt@runner@aborted.html" mo=
z-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12168/shard-apl6/igt@runner@aborted.html" moz-do-not-send=
=3D"true">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#18=
0</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002" mo=
z-do-not-send=3D"true">i915#3002</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4312" moz-do-not-send=3D"true">i915#4312</a>) -&gt; =
(<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/sha=
rd-apl8/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl8/=
igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt@runn=
er@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl6/igt@runner@abort=
ed.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_108919v1/shard-apl2/igt@runner@aborted.html"=
 moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108919v1/shard-apl1/igt@runner@aborted.html" moz-do-=
not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_108919v1/shard-apl1/igt@runner@aborted.html" moz-do-not-send=
=3D"true">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180" moz-do-not-send=3D"true">i915#180</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#3002<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-=
do-not-send=3D"true">i915#4312</a>)</li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12168 -&gt; Patchwork_108919v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12168: fea329811a7bc341aac5f51ab66ec41a3d0844af @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_108919v1: fea329811a7bc341aac5f51ab66ec41a3d0844af @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------r5oiTm1foi1PKcYyHDNvwMVK--
