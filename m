Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D171E726A07
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 21:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD32B10E1E7;
	Wed,  7 Jun 2023 19:45:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C2F10E1E7
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 19:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686167109; x=1717703109;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=naysdBugsGF3th7aOVmh/AMIwbMnuw0lvqWhZV4QQLg=;
 b=AKuD1/MDpJEyxmclK9YFQ6qvhHrA4KaOq6sQD6kNt0IhFfNel0cIMy/Q
 VQMrERnb7AZDZCEq8bDqxE6/Nn/Wd4MJAo/+vlOg3XhJN1szFs7p6cg+1
 AWww/sbt3fzPuJZR6DnS2qVWuY7ZK15LIjX8eyCJ15WYBp+AfQXS5NErd
 7+B7y4oj2qoCwxPHU+bmKZx+oIVoxbFWALfv4KpqHOPTap7Nq5vZiC302
 a2hqG5ykEI2GEbccGX8Xu9gRTd7ZuuYS3db8uKEoalnKK0k+eR/FaKeEN
 tqdm8d4doK6qMnJtpOoVFyjbp+ruzWNjn+2ndkKHDE86HGnoQA2/bxosM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="422935459"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="422935459"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 12:45:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="1039810506"
X-IronPort-AV: E=Sophos;i="6.00,225,1681196400"; d="scan'208";a="1039810506"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 07 Jun 2023 12:45:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 12:45:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 12:45:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 12:45:07 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 12:45:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ChGcPA8elHgf44rZzCyBZJ7q/qz2MayTv69B58LOxT2RKJY6ytlglWSdvUvorRksPGCSEsp9aexjftxGm2kuqPyYbAbqlthoZhEtYfLR6yQLJHeO6ugaE/EXHuCHibaUFq0GX+KcyY9eKsfcntD4CISCyUwSHafMDn3ctsE8BSiqSrEgukAH9AdNU/2Ns8Hv7GbKYQyrVeYEufyS5r+cDUH+DpSKe/RAI2CEbNUMihbb45sR7Iy9TbE2AKeIuzlNxWIwRPJwRxTi/M5x53tPvl5ZqLjxKnvptTg67W+UcoVUuSbccFxHZ21qdRv9VqTrxuQaHviENslbqm6agj7QKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/Rq0G5xVpK1pBqvhIBGtXAql7JHduzr6OhiNcjgUhw=;
 b=joN5jxsoC+knQ9hutF5vcGmwtauDK9LAuGQ245CXWz8dSEk0U8n2DQEv9oIRDAQ5UDpuEyrOTAnahbkeGXOnoGjVsuieMYTCIUKO2yUDgO43uI21kdncfH6cQzVBAuRmFUBsXlrBqmGh12Jtzch2FwlTSKmyENciuWs/6sWBP6o2Qoje6giF+qVFj+Hk359DF2dPR+lVX786N2v4iBkaZKTh40jQ++ZrQlw+66nX3APofWJYxcI98mDmNV19Au3xK1dbnQ9U6+bVfgDph4GUS7WPbwyjGpI7d/DaUHzouVSOK30Hr1+Nj0hAgs3r4ixY5qaOs6ggVUC/ubraWB1bZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 PH7PR11MB6007.namprd11.prod.outlook.com (2603:10b6:510:1e2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Wed, 7 Jun
 2023 19:45:05 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281%7]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 19:45:04 +0000
Date: Wed, 7 Jun 2023 12:44:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <ZIDeOfzZKVVIBQx2@orsosgc001.jf.intel.com>
References: <20230605193923.1836048-1-umesh.nerlige.ramappa@intel.com>
 <168615962814.21184.14101376781239913842@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <168615962814.21184.14101376781239913842@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::30) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|PH7PR11MB6007:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b433a7d-d271-45ff-52ec-08db678fb024
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MHKurK+NdKvIFTzpQcgjwVmWIMywDTWTDAiLEz5pEmR6V7SkrhY1k1iInwiu7LbSZtDfqbL5Smo4d3yuqFpCFTcl8jQXrFm29Zv0++XiDLaexBbWRHhE5kT4F11PpAiNnasQDJpomRoLrs4EJD4haDFestvrDWjzUfMH+4LiM/W1j+aNSNN0g+fxdnVyjmSTVj3Eerw4jXTlfV0AidZETd/bGuljTwEWkth72CaX/vvovl1NCV20VZklbVvWWwjngYUHRm34KHf/inq2ndoROzXjE7E1bTjYzMmbl4B4pbgQ7b5G/puBZ0Yci/L3j5yiRsXhHwDbLbvGBE9VUgAcr7uN+X0HMq7Cm1P8eg0mmqNARgrqr65Mu3EdUVkCMELMlpmUXq8ydxP6jNkusumnuaIeHybfeqi6k1JQRTx9K0bGCr0SDEfe2SHiHR7BVSJbPoEeK2it9e502vPawlELElzDrQB3rlT2MtMdCUysbfFfTpXX4oeivIppZtoZoOP9yfOrVMJcsuT6Og22EAlAydWfFBMghC71tfg9QEAbQqw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(39860400002)(376002)(136003)(451199021)(26005)(6512007)(186003)(41300700001)(5660300002)(6506007)(316002)(66476007)(6666004)(66556008)(66946007)(8936002)(83380400001)(478600001)(86362001)(2906002)(6916009)(82960400001)(6486002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGlqS2lDQ0ZtVDRsUjROYmF0MWM0dGNMMWlNQmw3eHprcDVEcTRQNGpOUmZ2?=
 =?utf-8?B?T0FrNHlWZHQvVTNjeHI1VGs1R241V2tkMGdOL3BuOW5aakxvd3A3aFdvS3lv?=
 =?utf-8?B?bDVKNVVxOU1PSUlhYlh1N3I3MFdzay8vc0lTdUY0NnhWMXl0dGhqL0U1OG9D?=
 =?utf-8?B?SENqTmc1ajdqTUpqczhmbG9GQjZ4Y2pjSUN4VGtsTWZUbXhBTVFrbWZuRXFl?=
 =?utf-8?B?RnNWckxJbHdlNEJOcmRTQXpBQ1FWcEFSZXFDM2VCTE5jbTFidjA2eTRjQjdC?=
 =?utf-8?B?UzFTSzhQcUZhYWQzaE12UXlTZk9HeUQ4K0JuN1BXTDZtL3dJN20wSk03aFBv?=
 =?utf-8?B?ZzY2Z1g4S29jL0FOWUZTWklQbUJlckRsT3JlSEJtZlV0MklpMXlyV0JqNU9k?=
 =?utf-8?B?YTFWckwzcEJRQnJ1K3REVXlsODlOc3U1clBqUmJMUXkwZWduQURTWnJnekJL?=
 =?utf-8?B?UTFqQjVkTzlWaEx0bUdiNHp6czBzcFBjenVXZkxyZXpxMHFMYkUxZHVlbkdP?=
 =?utf-8?B?cDhjUUxPVDJmdEMwTEpJbkM2MUxNZnBHSEFibS9vT1o2ZkM3YTRTSXhoSW52?=
 =?utf-8?B?eTBnOGxEZ0VwRFkxanluYlBBbjhDVDNJYjQ1Q0hna2JTVXZGbmsrSTIvUzZY?=
 =?utf-8?B?Q0R6NStmbkxid0VIZS9HTFZlQ1N4WEpUeGFVYTFYTXZwTTF3VHRWZWQ2WWI5?=
 =?utf-8?B?d1FicmRvdXNDT08zQ2YyUWJiTDd1dFlOT3NreEFMRjhnK3BYc3BuMGFTTDBp?=
 =?utf-8?B?ZjR5V29FVWJkTGNiL1dBaktpei9SemNVQk1LM0R0VmNXczE0c3RHdWE0TWFj?=
 =?utf-8?B?Yi81TFNOMGNMS2hqdTRyWVdXeGtTWmhESHR2b21qOVp1WHNTY0hpNStxdnRa?=
 =?utf-8?B?RmNqTERwQ0t2K1B5T2doVW0yOHNNZWcyY3hvbVF1V1ozYWdTb1VQeCtia0Q2?=
 =?utf-8?B?clhRRHRpSDJQN3grN29KakV6ZjZrbWVoYzBjc3I5S2d5QisvdXRMajVqTFpP?=
 =?utf-8?B?Nm5FQ3F6NWM0eGVxbTFRcHV3NWowVzJkZlFQMTV6S1BIU0pYS0hZcXhubGVk?=
 =?utf-8?B?cklGdnd6aVE0QWJVSlBsRCsxK21uK2szTE5UMGpsZkFEMjJYb2NldnpzQ090?=
 =?utf-8?B?ekRvOFpDL1lCejlZR2ovK0hlR0tEOVZsUThWM2EwL3JqT1ViaVkxckJnbVpv?=
 =?utf-8?B?M0V0VFZUSFJWVlhJSG85Z2xHbis4eURLa1VYZGswMjNQbXFGa1hwbzhFcjV4?=
 =?utf-8?B?RnpiSnB6SkFXT2U3WFhMT1JxOWxEZG5uOFV5S1BVdW5UY0pQU3pMZlVzRFlZ?=
 =?utf-8?B?N0lCQUVqWUxrWVpSbkhuUzZTaVE0VU0rK211VERhWFJYY0tobGY2N1FCWVUy?=
 =?utf-8?B?cjUvcHBWbk9uVzZ5YVVXcWJsVS9mV01DdFoyeTVydlByU2pmMDlmb3lmaENF?=
 =?utf-8?B?eTByblFLODcwUm1yWWlZQlVaMWM2MDFPU0RDV21VT1FSdW9NOEs4QWZNdzk1?=
 =?utf-8?B?VVBPc282S0M3dzRlSFNRU2dLWEdiQTZGZzBmQTM1bHZRQzFCbTVscjA2UENI?=
 =?utf-8?B?aGZQYU9VaTVDRXVBZ3hwM1pmV1dwNkJJOU1YcktUQ0Z3Tzl6UHJ3UndRYkEx?=
 =?utf-8?B?UVRLL252bVFrYTBZMUpWdHlwaGY2QlUwZFh4MGIzTTB0ZDVKcWlEUXZWdkpM?=
 =?utf-8?B?OWpNYjdoNzU5N0NpSU1UdGZxQzJoeU5ZSk5aU09ieU1rd2VCY1pDaDdjOHJi?=
 =?utf-8?B?Ynd5bEV4clBDSklzOExxRmE2VDhsR1M0bU8zVURSMVM2a09vRzBBZ3RCamNG?=
 =?utf-8?B?bjFpRDhiYlhiMS96L3pJM2phczBrV3Z2M0l2Rko0SExpcHZ3UytwOG96aWI5?=
 =?utf-8?B?RVZtTVlkRGdFQVBPMGlxT3BucGYwVzV5anova1ZXeHNpUGh2OEYwSS9LazNZ?=
 =?utf-8?B?Q2V3dXpmZEMvVVFjS0E3TVFCTnRmckpGbjM3aHpaY3IxWHpCS0IwL0laMXhz?=
 =?utf-8?B?alFrNVVjWlpiLzlCZSt5K2dHcUw0bnlaZDUreEMxdWpyYUh1OVVsK3FNK2ZG?=
 =?utf-8?B?ZXVtWnJhTFA3OWpzSjZpSGRIK2tUZlhvQ3Y0ZDdpWW5ZOXR0ZEd3eWxYOXNv?=
 =?utf-8?B?YTZzajg3UDVUQWEyWkhEV3kwRUk2alRyV3pxczJ0ekdGaTBKQkVNSEpScEpx?=
 =?utf-8?Q?jPSTHBDFM9pp5cX0i0EPlWY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b433a7d-d271-45ff-52ec-08db678fb024
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jun 2023 19:45:03.8629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wVqWXnBZOzoYsHL9S9LLUmFheH27od5POBuZw2p/EHUrV8EtWORp6t8RnbTPz+czeBKkzyj3fpWHOg15uDeOLFBCuQ0m+PIH7eFGPXnGGcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6007
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQXZv?=
 =?utf-8?q?id_reading_OA_reports_before_they_land_=28rev2=29?=
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

On Wed, Jun 07, 2023 at 05:40:28PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  Avoid reading OA reports before they land (rev2)
>URL:     [1]https://patchwork.freedesktop.org/series/118886/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118886v2/index.html
>
>     CI Bug Log - changes from CI_DRM_13238_full -> Patchwork_118886v2_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_118886v2_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_118886v2_full, please notify your bug team to
>   allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (7 -> 7)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_118886v2_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@kms_vblank@pipe-b-accuracy-idle:
>
>          * shard-glk: [3]PASS -> [4]FAIL

Unrelated to this patch since no OA use cases in the above test path.  

Umesh

>
>Known issues
>
