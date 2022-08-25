Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDF85A1CEE
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 01:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EECB210E4C4;
	Thu, 25 Aug 2022 23:05:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E3110E4D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661468733; x=1693004733;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=18uGS7hGwDaYcKwLAYmLht1qh0lvUXC5GKNUkhDo5fA=;
 b=WU6JM2eizyxK/L0UzvN7NNnRZm7NhlB/i4hzTQLEM8Wxsh+Bug8AjI67
 5tVwVKFTfAinSO52qQ5JtLvKLPxJ9lL8QaiGtdAFARtV38iBGb01V6olz
 uOUAIKcZ4cHoy7uOxOMoAywBk5nijkElPlLRiTc8XBpKELCX+nZ8so4RQ
 IVcUy0pjUzE03ekYePna3jPx64pwoeF+D7cQnnV+hz/y2Jokf1K+nBPaz
 bncIZ9ZXH3soAxR8rZkgo28Q2mkRfXHCuCputHBxwm9MKumBD17FraX7y
 g0dGJVmlne2PaeMYNNFQQmIj/oMqfD7wOruzYfKdIkk1ODtOGMED/zDj7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="274769563"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="274769563"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 16:05:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="606570581"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 25 Aug 2022 16:05:32 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 16:05:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 16:05:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 16:05:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 16:05:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XIlJo+lhCIqJW/gkGSLI4WI3k9ZCn1UknaLCDSHRBOTZpiIBDkPL5LZ0NfBfJ102PyJ3PUzcUtybOmiCCWopQIg3sfWaxpu7drvabMAyFWndBjMtngteMwBM1ncj5Iaz85m34ZIjDEeiMd7lq0wibWvdkUjX4khhqMPApz2cvdKRaH2l75ltEH1STSUsbRnjR6YCkADmFpPO7Yb+wMjEKpwi3VsYPsPrBwrH7b5rMKLhuk5bjHLHEJzZ+F/a1naPaLGlM5dSlCInxIiBCH9FRBRGqczv3QEFRJWlfE/5MB+BNfLo3kYsVcngYs9TEvcj1b4bKr0R2pzxl1T3N3etPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+zZlLT2Rr3NTXCWmtC5IQL91qcuy0AMC9ElOwY1XzDs=;
 b=Jjjh8YoVWmp7qyQaX4b/DyCDfM7cWhfyJR/YeUcx46bqQeIrgtF+HxwgzZSah0cyiCQGLuKf7AghjA0MSiuNmtHykBe1vvBEw+bjNbxgabJDn0h6SCan+HdeXJuwyzqdyfX6ONVeBp/XJP20gcnrHhwk+2MOPfsnpz2Ovz7w9SBzxbhogbkNFIwHaz1HWcqHnFqZa8Vgq3LUI/Atnk1zHWZsn5wGhjYY0sT+3Ln1p/ID37YzHoQF3G/J55Zu+P/k67enhSe8YOUncknckoelkCYIGp1D5pjI+i1pDcuwRgNfY4qR7qLs+bUTgjRP6lD4UHRXwneNl315VrKStLMWDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR11MB1898.namprd11.prod.outlook.com (2603:10b6:3:114::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Thu, 25 Aug 2022 23:05:30 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%8]) with mapi id 15.20.5566.015; Thu, 25 Aug 2022
 23:05:30 +0000
Message-ID: <db46be26-0a23-2fda-6492-8cbc76c18adc@intel.com>
Date: Thu, 25 Aug 2022 16:05:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Juston Li <justonli@chromium.org>, Andrzej Hajda <andrzej.hajda@intel.com>
References: <20220818174205.2412730-1-justonli@chromium.org>
 <3aeae2e6-ebe3-5241-bfa1-ee36a0d5ec94@intel.com>
 <CAKhQNHHoC3e6NjpjRovHnTCe88fiRXU_U08Rw1k+-3pcB3sDYg@mail.gmail.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <CAKhQNHHoC3e6NjpjRovHnTCe88fiRXU_U08Rw1k+-3pcB3sDYg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR04CA0026.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::36) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b0219851-43f6-4aa1-fc32-08da86ee4e2b
X-MS-TrafficTypeDiagnostic: DM5PR11MB1898:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mS9Fl7ZdXUIZ2ZJdiZMboMb3ayolye4MkNCrKihYO5V2mG3xLuE8iLMO6SY37rfKL9mwFpyQxYzKUxNg6TrKLQcMflVIVXiamBFlIQCENon4n2P44vPKQkJMgIz5sbb3iDO6LOrlZbd26rNCP4rQ1E73BzbQhKSg9RVcSbcHuH4PDy/Dgrz2MxOHxPO5zo8+/c34xKXu06kweyDo7fJznZ/E/lvl00TgJ1vEbA6qUOQQXO3UsCbwGpLp2u7OStilLqAJNT4GI2fNPioWAEzfFquiPhxqvUkgcuyKkp6SA6+fcCJ3r3ktApJkSkyVcxns7KeREqxzB6wHANExiCuRbxOQo7kY3pcXn26Lb5Ld5Hs+uQVCDCD85tvKXfflBmPGy88kEip6vNc4tpDG5+znAv/HBqroEX/1VTS23fg3jAo6TngrCX86U3Y8fB6pPeJwgydnyJOVIViidh/6FqU9BhFzDTDreXcb+M5cpckJNBF7LjnyVquN4de9BCkKzDMh+EnG60uAT25n7HCF0W+afC5QwfiaJcihaoE7k15UxRpobC4iaPsgDw+81zsem86tTedaokShFYJi81mI7EL+J8DUf3W0B8YzD7jM8993n773TdYinQAeDmkxEWNtFxewShNqQ8KMqeoN+zfxwUD2dbeUy3aln5hjbOWymJ1orDd/Sq9r7YCBkak5VxkzghvDlyRDOcALLFdtYoI6P4vYO7DP9biuJONyP061yUNPD6iiBq1LfMQYjJOyMW2pyQlPeSiu1buiNRj8uYcAHIEg3c0qoZ0u36hTopUgE9Jm7qE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(346002)(136003)(366004)(6636002)(5660300002)(478600001)(8936002)(6486002)(31696002)(41300700001)(2906002)(6506007)(53546011)(6512007)(86362001)(6666004)(107886003)(82960400001)(26005)(38100700002)(316002)(186003)(2616005)(83380400001)(36756003)(31686004)(66946007)(66556008)(66476007)(110136005)(4326008)(8676002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXVNN3ptT0ZLbFpoeEpkNTB4Qm4xSjd5RytNS1dHSmxRRlZWNUFRa3BQSTJY?=
 =?utf-8?B?Q3o0UzdQZzZoc0YrZDJkMWlFajgwUllOOXMycjhPUmFCY2xBaGtCZm8rSXZj?=
 =?utf-8?B?S0NNSnowbFROdGhBb0IvWXpkOW9TVi9aNTZOTXduSStxZUdwVTN2UlhqVUJJ?=
 =?utf-8?B?ZFBuUU1XWGt6aWtzMVZ5MkJiY2ZTdEM4c2FJekZET2EwR2FhODNXdXdtS2ZY?=
 =?utf-8?B?MWlreUF2SzRhY0x4NEpPUGE2SmpNUDBVRkhJUEd3bHBqRklKckEvSUNia0Nn?=
 =?utf-8?B?TlVVTThiMjM1Z3EwMnA0RTI5WERSdkluTVN2elFpVWY4SmpVaDNBRlZBWjJ5?=
 =?utf-8?B?bnBCcXdKa0ZFUjA4Vm1lZGZHQTZ4Vmg2TmlOWkY1ZHpyYjFuUGczTlZQbFpy?=
 =?utf-8?B?Mi9RTGZ6eCt3Q0hERFRDZFczL2s5aUhCZVpuejZZTmxEK3BCUmNDcFliVmlS?=
 =?utf-8?B?UmJPYVU5dFBmUHNrOWduNHFJb015TnB2RzNnUXpNdUI1Yy9TZDQrRFRBZGp5?=
 =?utf-8?B?aWtoNlZGYjF0dU5lUFBkYmtQZFdQY0lzZzV5VTNQdnpId2RFeFA3MjQzcWFB?=
 =?utf-8?B?Ull0K3QrOElaL3hCZUNaNVJHMmNaU2hIRzFIYVlxMi9zL2hWWHEwSTBaY0hz?=
 =?utf-8?B?R1MzQ2t0TWFyV3FoMTVPVm5LVmJrWFUzeFBwWDRNYWRBUE1RekVNdnhaS1Na?=
 =?utf-8?B?UUwvOE96OFI0b1NZZklQRGJhTGxPckNwbnpGZEtpK0dpQzhOUEZhbit6Unpv?=
 =?utf-8?B?QnJzUDlkbTF0eVdiTjNXbG8xTVBDV2cva0J4Z1NhUGVoWTZZN3pwczlXU0Q2?=
 =?utf-8?B?cS8zeElCQ0R5QW13Y3F1M3R4b3RKWUxGV2xIajRQdEE1cDRXbUxXZEtqSTdw?=
 =?utf-8?B?SFJyWVBNOEMrWVcxb1lqWkQyUnBEazJwQ2Q5Qjh4cW90djRtYlJwZ01FZC8z?=
 =?utf-8?B?MkRNbzRYU1VmYVlCSTVXbldYek91RGNiQmdxb1J0NWNKL1AzanJzNC9HQWRW?=
 =?utf-8?B?YTJCVmxaWG5aVEVlQ3hHNmZPZzhLRVBLTWhBTmFLMXdUVkNsenV4aGxwUkdJ?=
 =?utf-8?B?RFZMZDF4Tmh3aWxnU2pqSmJXcFNDcW9lRXZ0Ukl1dVdHZG0yYnJNUkZ1SHF3?=
 =?utf-8?B?TFNtRWxlTFNGdjBuV05vYVk1RndjZnRVRVpVbnZFWnY5cGQrdURtMjRGcHFG?=
 =?utf-8?B?RHpUSGUrOTNPSEV3aUVXaDVla3pDTS9Oc3BCNk5YV0hPd1JEdmpBbjRzM005?=
 =?utf-8?B?YmE4ZkJhZnlTdjcwT01OdHE4TzU2S2dlN0twWVV3Rmt6eGorWWVZUFhJcWIy?=
 =?utf-8?B?SUcway80eHoyM2JTMGxuQTQ4TkdHa3Y5UHlTcU9EZkF4aVBMaG8zM3NvYmZj?=
 =?utf-8?B?UU5namR4TzNKcFhRc3hSQm95TUl1YTFIdHdpdlFMZlV2ZkVPL0JXclE4RS9C?=
 =?utf-8?B?a2dFVVlGOEJvMHA4Y24zeWlLOHhCdmQva1dyczNlaDVnaWsrSE84WDJFaXJl?=
 =?utf-8?B?OUpTbk9BR1RWNGpZN1NBamxEVVlwSmVvdk1aQVNScW5PYTFoSWxQWDhITVBw?=
 =?utf-8?B?emlUdVEvUVNXeVNxbHFrTWVKVDNncHJOY1kvT0pjUEMvQWxDcno0OCtHS0Nm?=
 =?utf-8?B?UnZ0NSt3ZzBZbEpLQkNpUlUyRlZocFBocHVsOFI5dTM3dngwSkpETERsVmxX?=
 =?utf-8?B?T0kyVmhXeUxTV1dKRnQ4ZlNuMk5FZnZiaytZMjBwaXIwWnNvQ2pucjN2RURL?=
 =?utf-8?B?ZEkySjh6L09yRElTbUVBbjFPZmUwMzEyNGR1a1lyY0piNDY0U04vdmE1eTlz?=
 =?utf-8?B?MndxcGlqRnRIRlR0LzROSlpyNEgySytKRjBSSzYxYUoxbGx4QWdqMjVWalV1?=
 =?utf-8?B?bzVsQlh6VjR0MlRwcE5YckVnZVN5elV4eW13UklFVjRDYTNRYjRyV3ppSGs4?=
 =?utf-8?B?Q1FSUG9vbXBEMDZZdHB5S1poeHNxQ0xhOXdrcG8wYk01K3JpZzlKbHN0LytP?=
 =?utf-8?B?K0Rmc2lObmNBb2R0Qml5NWgxT3ZmTWdsbkJkU3dlcGNEYVFldkx2Q0wrczlD?=
 =?utf-8?B?bFkwaWN3SnBQb0kvTlhSRDJqVG45aGJsUGJKdjVReUxQK3lWMFBQT0N5NzAy?=
 =?utf-8?B?U0dPVktCVlJMdUdYNkNrM2xWeHhpVCtTRzBWWXdtZDBWUVAyRzRkR2JrbTQ0?=
 =?utf-8?Q?TDPvIp83oblF4aqns5iyjJ8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0219851-43f6-4aa1-fc32-08da86ee4e2b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2022 23:05:29.9595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X4nWV5qHs/kJlqcVS3gJrLXOymuvbMNTeqPeGunIUfFviRW5aqFk9BMfW2IaKElzCFIGTaUTFCXLqbbkVlgcj0yo0KTV5G2FyanUe4Zzx68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1898
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/pxp: don't start pxp without
 mei_pxp bind
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
Cc: intel-gfx@lists.freedesktop.org, alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 8/23/2022 2:15 PM, Juston Li wrote:
> On Fri, Aug 19, 2022 at 4:53 AM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>> On 18.08.2022 19:42, Juston Li wrote:
>>> pxp will not start correctly until after mei_pxp bind completes and
>>> intel_pxp_init_hw() is called.
>>> Wait for the bind to complete before proceeding with startup.
>>>
>>> This fixes a race condition during bootup where we observed a small
>>> window for pxp commands to be sent, starting pxp before mei_pxp bind
>>> completed.
>>>
>>> Changes since v2:
>>> - wait for pxp_component to bind instead of returning -EAGAIN (Daniele)
>>>
>>> Changes since v1:
>>> - check pxp_component instead of pxp_component_added (Daniele)
>>> - pxp_component needs tee_mutex (Daniele)
>>> - return -EAGAIN so caller knows to retry (Daniele)
>>>
>>> Signed-off-by: Juston Li <justonli@chromium.org>
>> In typical usage of component framework driver postpones initialization
>> till component is bound. In such case checking/waiting for component as
>> in this patch is not necessary and the code is more straightforward.
>> I wonder how it behaves on component unbind.

This component is only used for a specific use-case (content 
protection), so we don't want to hold back the whole graphics driver 
initialization for that. Unbind can only happen on suspend or driver 
removal and in both cases we're not accepting userspace submission at 
that point.

>> Anyway:
>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Thanks Andrzej!
>
> Any other comments Daniele?
> Otherwise, need some help from someone to merge this :)

No other comments from me. I've pushed the patch to gt-next.

Thanks,
Daniele

>
> Thanks
> Juston
>
>> Regards
>> Andrzej
>>
>>
>>> ---
>>>    drivers/gpu/drm/i915/pxp/intel_pxp.c | 15 +++++++++++++++
>>>    1 file changed, 15 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> index 15311eaed848..17109c513259 100644
>>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>>> @@ -176,6 +176,18 @@ static void pxp_queue_termination(struct intel_pxp *pxp)
>>>        spin_unlock_irq(&gt->irq_lock);
>>>    }
>>>
>>> +static bool pxp_component_bound(struct intel_pxp *pxp)
>>> +{
>>> +     bool bound = false;
>>> +
>>> +     mutex_lock(&pxp->tee_mutex);
>>> +     if (pxp->pxp_component)
>>> +             bound = true;
>>> +     mutex_unlock(&pxp->tee_mutex);
>>> +
>>> +     return bound;
>>> +}
>>> +
>>>    /*
>>>     * the arb session is restarted from the irq work when we receive the
>>>     * termination completion interrupt
>>> @@ -187,6 +199,9 @@ int intel_pxp_start(struct intel_pxp *pxp)
>>>        if (!intel_pxp_is_enabled(pxp))
>>>                return -ENODEV;
>>>
>>> +     if (wait_for(pxp_component_bound(pxp), 250))
>>> +             return -ENXIO;
>>> +
>>>        mutex_lock(&pxp->arb_mutex);
>>>
>>>        if (pxp->arb_is_valid)

