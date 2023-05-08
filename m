Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 666666F9EAD
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 06:30:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F2810E03F;
	Mon,  8 May 2023 04:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDCB710E03F
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 04:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683520239; x=1715056239;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4Zdiz4xJoNvnSVYA7LqogRPoOERfekpeTtqFUtx/K5I=;
 b=GD2UuZHL7lWoXsmWsQ+du0LAI1CsERUQMwZqGvR1Uxq7w4vs9xv9UKig
 8ZqQGX25XzZqjp5l8ftSMR5ygpfXwXqEhueNKhzK0MiLpu820YeRBfnKv
 24Eg82OY+nY7h/tkxBAxgOrRgfmQc9JoS37C55hAvP0a/9TNR6iGiE/QN
 vrdFqq6F3LUmDHkg1yWE9Dm45Yv6fWkh4mrr7ebLuxcIDcdLeXwJAAjQD
 5PqAeSJdjc05M33HaKl7Ee9KPBMTEeWz5sGunzgNEzsAklJFUu7QsTfxr
 4AaSstEM1G4BxfHHQ3rTjxjDHjHFxAtLLYEqWlHwc4xPXNjRqWzvSfGzu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="377644924"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="377644924"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2023 21:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="1028279076"
X-IronPort-AV: E=Sophos;i="5.99,258,1677571200"; d="scan'208";a="1028279076"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2023 21:30:39 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 7 May 2023 21:30:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 7 May 2023 21:30:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 7 May 2023 21:30:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iwp59uNXKC4bVTG3QUM1kPRPj7g9iieH/O2hoo+RskELTaIQK7ADqF14CeMdxXoa2qQ+kcvzI/opaKIliEdVjONB3y2rHDS8PP5idKYCFz2lBBgvs4OrngvwJr+4Bg4E+DQOCAY9oC3E7b0WkK//fmdWot3i3ue5LgfZFuo8fmat3hVYUpLn3BCXOjFfqCrGEFeRxnMgRHyE9QG+XVGHioiE2BSwZybCzdcqWfAgtSrWkVAR9dK62vCmnUg5qJvB01SVvZtFvBhn5gLbkUHqEG1qkxcDk3Vwhdqc+bXG6oSokvNSfr3b382csnAvxOcfaclpD4eks7qaBOkjK1hCnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=99ZO8RWagWGGrvlZeYAL1ttfRqdC+nOlrLp4U1Z/W4E=;
 b=PyAB0Rv1TFHZYN/ia9GctUWjmp3/9skjQ6a3ndprKQXizOjPLMO4/rRn4YvXpylK+sZsKgicovlW2G37JDU0R14IAx3Vg8tgRlaukbqGI6bxBUSGvIn1ACtDYkUOsPuGsjIhQ3MK74bLrqj4LnpJxBVmAsLEeDNnmZ/ug+yQxeAlBcQluuU01atFREeOpuUpIpRWqNIYnW0WINueKuDGl9Xsz/u9b5py8lGxnf7zkBTZWpSZW/vVM6dFc15xj0cubXabzLtO3a43ZnHM+qr6EjlgvV0KEbCWF8vGOuf6tfpRNrbvk+P1zTJE5sKpd/UOnCVEORpn/Z4sUXvop0/2OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SN7PR11MB7138.namprd11.prod.outlook.com (2603:10b6:806:2a1::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 04:30:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 04:30:37 +0000
Message-ID: <9194fd3e-8986-edc1-6dd2-8158501a620c@intel.com>
Date: Mon, 8 May 2023 10:00:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
 <ZFUt48Z1eCfyAr3h@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZFUt48Z1eCfyAr3h@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0157.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SN7PR11MB7138:EE_
X-MS-Office365-Filtering-Correlation-Id: e616e5ee-5531-40d8-36b5-08db4f7cf876
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NNStOl4nqKOjkaJX9yjx/qCtS/k4OhC77SZ9t6ogC5PukLpijAg7R9nWQJYjzaMsmula9SyUFYSoPhFiNd4GTUbfkS534B8g6Fx1w/M+LNyPtb8FvVdRtHUeZVH5pbnJBGs7m+YvPu8gTVoZkR29GVjVC6uzQGkAZLgchflsSKN0qc+ZelxYZA5OvuzALL3A8rIEF1Hum1kWqXrDGcIVFUEikuwi8eBthLRlY4XyJXBj5nFXo2xEX2b2T8WvC3Xz6S95qq2ZHuWx0YAY2WLALkwtobEkj+wQ6Rt23w748aplcABHzlpdzEFX3trxNbnpHL/Vto/smeJcYQWzC5KHahN/wyB8T0QnDdsQeEWOXqN92vwYSfy7OXmWk3OVxhSgjoEPh5jg9jqvlHzexsM8d2xIliiCbvP9XQLck0aNL/G3lgQSt4GfLSSsTXsuauGqY8v6s4evytI8fMQjjnwH99ix8dK3cb6iYMnFgNjfJzGt+vggcqGdYIlqZR/Azj5Y70E9l0Vku8TiV1gL0vHTLNNzMbP/19u3s4A6JnDnMJggU4kVgXg9SyPjhdOaFrLkeQn3yp+wfs7fr5EopQPtFqVdauEf5Btn1ljIEKBkDdI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(346002)(39860400002)(366004)(451199021)(31686004)(966005)(66946007)(66556008)(66476007)(6916009)(4326008)(478600001)(6486002)(316002)(86362001)(31696002)(36756003)(83380400001)(2616005)(55236004)(53546011)(6512007)(6506007)(26005)(6666004)(8676002)(8936002)(5660300002)(41300700001)(2906002)(82960400001)(186003)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0RGeG96QXBhenpLTFl6Z3pWc2pWTWlDbm1zR2NFbUNXdDJDcHczVzBYdUpY?=
 =?utf-8?B?NGtWd0I5NHVNQXRaR2hMeUZ1bUFTTXdvZXZmUUR1cmt6eXVTRjBlUm9IRW40?=
 =?utf-8?B?TkJWRVc0Yk1OMVBNMlpDdmQrYkVRR1A1OFV6QnJBSlYyaHh1QTZROUh0Qkto?=
 =?utf-8?B?bllCOVhRYnpEeEUyNnZVd2NJTG0yNWFBU0RTZDRYQmNNMHlaVVlhYUZIeCtx?=
 =?utf-8?B?eUZnMG41dGFZYU9KaEpMMDR0ZjlYY0NMMER0N1J1MzJNRDZEMWcxTlVObFRS?=
 =?utf-8?B?MldEMFhmTzE5emI4UUhLOGJHVnRZdkV1Qkllb0J0Tnc3ZWoxaHA3NWJQSlU1?=
 =?utf-8?B?VUcrdEdCd01SNGFUa25aTUtLZFlPcHFpQ3BEbUNoUEFXeS9Rd0RyU3dYWWZ4?=
 =?utf-8?B?U2N3UXp2VUZGM24ydU9YSm0yTGRVb2ppcXJqTXB3aUo4ZzY1Nk50TTN6L1or?=
 =?utf-8?B?d0dTNkhGdTl1Wlk3YzRlZWpLYlRxN1d3WHh6K2NhdmpZa3VyS2hvSDB6bGJL?=
 =?utf-8?B?NzVkTExYUTRlWjAySE9kMmw1WVNINDl4WHAvMWV3MUMrWHBGMjhETWZLOHc0?=
 =?utf-8?B?Ni94dkczQzZDNTN5RTZHRWQ0NUxXcmZjcEJ5ZDNhdVJ2OUpMM1N0dDdObndx?=
 =?utf-8?B?dUZNcURkNW54VHVwaHVOU0RJK29QeE5GcXg2bDU2eS8rdjFQMy9uUEpTRG10?=
 =?utf-8?B?cFkxc2Z6L1lWK1FwQ3g3QWZRa1RLVDRCdGh0QTE1MVFFS3VIcC9OT1J4RjBO?=
 =?utf-8?B?N0pnVTFnYTRnTzdhWll3Y0tSVGpQR3dudDhta1cwOHR4c05tZzFhMkNXV3h5?=
 =?utf-8?B?WldYV0Q4dm5MUGNzbm1RMVNJQWNrUGFKalkrZDY4SDNoNUlBYUhld2VpRFVH?=
 =?utf-8?B?MWo1aDNlV0dpa2NNVVlUcFBrWll0NEFEM2Z1emF4RnJsalFIS2d1VDEzek5v?=
 =?utf-8?B?UFZUbHpwWEljdUErclpGRlVHdTZ6L3A3T2VkSDVBbDBEcENMZFc5dzJBNGwy?=
 =?utf-8?B?dm5UcDNuRk5iVWdNaDdvenB6N0V4MllIWUJOTkx6NHBHUUVqbDZKd0NSMitC?=
 =?utf-8?B?ZUZSbSt6NHlXMkt5QnlWMy9uZXFxaEtYV2xNd1hHMXhIR2dhY29HM0tSdVNS?=
 =?utf-8?B?cGd3eExaTmhjdGRyMC84aFBWaUtGdE1VbGdLR3EzTWFDYmcyc1RUbW44RUVX?=
 =?utf-8?B?eVNzRzFXNXdEM01GZUEyMzFjaStsTlMzclh1QlJsNzdGQjRmQVpMdVE4dzZS?=
 =?utf-8?B?RXFHcW92R0taMlU5SmJhODR6U3BhaXZKNnBJcHByQjRMWGNabERodk8rZi9N?=
 =?utf-8?B?UCtXdGhpdDRleHNzM2h3TlFYR1ZJOXd5Qlc0UUtCZHNBN0IvMGhuZG9BVnhu?=
 =?utf-8?B?TzBhc2wzcDdsNlBEc0xWZzZZRUIrcnpzUGErVG5xeEw1VmNzamg4Tk1ySW43?=
 =?utf-8?B?WjIyeEFSUUQ4RlZTZWFNNnRlU3BGK2pINDdtckpWdCsybEFqVlJtQm1WVGw5?=
 =?utf-8?B?dzhzMG9FL3EybmNtdlRreXVUNk15cDd4WUE3VEZFZVB5aS9oUW5qemx6VnNG?=
 =?utf-8?B?K3M3dklCRlNCQzlBbktHYWVyS2ViU1pncENRbm5ia2R3eDZza3FMZGgyRHpP?=
 =?utf-8?B?UEZtN3g5UEs1RUtVVkw1Ty91M0VVWDkxa3k2NlZPZUk2TW1hWG84VE9lRm10?=
 =?utf-8?B?VGxoVFk2RVcwcXo1d0U1dWxJdG5ySVlmZXZ6MEQxNGd4YjFycmFZRk9Fa1h3?=
 =?utf-8?B?TUlJbWZ3Yy9yWGxyMzBJOCtHYjRvaTFrck9SVXdYQXVSMTVjbkE5VHhqa0M5?=
 =?utf-8?B?V3BzRzRQMDdUN05YU29kNXdKSkVOcHdkR2V1R25QRTlJS0loUGEzN1NiWS8x?=
 =?utf-8?B?Q2VGZitmdkhzWlk5T1dzTDJrQlFleGVqMFVLZXh3MTNXeEM5NERtbFczT0tU?=
 =?utf-8?B?V1VFNWNJWnZUdGlzcFd6THM4ZXE4d0hmQ1FjY2MzWUJHVVFWWUp1Q2pNemhS?=
 =?utf-8?B?cVhrVTR1Tmt5ZFE3WUpta1RCRlJoMGVTWURscmV4Rnh1V3pzZ096bXhpbkxu?=
 =?utf-8?B?cGEzZUZZd0xISHZoM0FQT1lwdmhOaDBqTUViTUtwRS9qazVmTUxuTHIrY1Jp?=
 =?utf-8?B?WVRqODJiUGJBOHVMbVhtM1hqYUVTRVJCb1VGdERTaWk3L2RRbSszdCtUbHJ2?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e616e5ee-5531-40d8-36b5-08db4f7cf876
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 04:30:36.9790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Crq4Xjo3F2hL5zYTo9/ULqYRdyUN/9cwdK3iVyoitaQs3xSLGdCqJp2NjLNHhxRfKbrpPlNCj/rFoerJWWNKCX92YBYgzBKimoPkDoSPjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7138
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/6] Introduce sink_format and other fixes
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/5/2023 9:55 PM, Ville Syrjälä wrote:
> On Thu, Apr 27, 2023 at 06:25:59PM +0530, Ankit Nautiyal wrote:
>> This patch series is part of a previous series:
>> https://patchwork.freedesktop.org/series/109470/
>>
>> This adds new member sink_format to store the final format that the
>> sink will be using, which might be different than the output format,
>> and thus might need color/format conversion performed by the PCON.
>>
>> Last patch just refactors some lines in mode_valid code for DP.
>>
>> Ankit Nautiyal (6):
>>    drm/i915/display: Add new member to configure PCON color conversion
>>    drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
>>      sink_format
>>    drm/i915/dp: Configure PCON for conversion of output_format to
>>      YCbCr444
>>    drm/i915/display: Use sink_format instead of ycbcr420_output flag
>>    drm/i915/dp: Add helper to get sink_format
>>    drm/i915/dp: Rearrange check for illegal mode and comments in
>>      mode_valid
> Series pushed to drm-intel-next. Thanks.
Thanks Ville!
>
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>>   drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
>>   .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>>   drivers/gpu/drm/i915/display/intel_display.c  |   5 +
>>   .../drm/i915/display/intel_display_types.h    |  12 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 263 ++++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |   1 +
>>   drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     |  71 +++--
>>   drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
>>   drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
>>   drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
>>   drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
>>   drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
>>   14 files changed, 250 insertions(+), 119 deletions(-)
>>
>> -- 
>> 2.25.1
