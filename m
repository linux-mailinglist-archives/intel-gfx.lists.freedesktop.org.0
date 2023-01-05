Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD0865E892
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 11:04:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1BFA10E6E9;
	Thu,  5 Jan 2023 10:03:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD93510E6DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 10:03:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672913036; x=1704449036;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Rr1vom7LVY/rqllrmIfpYg76h8iPPRNnYaFYE1tM3SQ=;
 b=FWd10sBjmqTpvKzQ6vjDGYQSoioYR/RTtXM9wgbxNX60ej3jPUgo3P0x
 DMlbcjiXE8pSUozI4P8IoRu4cw3u3Jj5yKRr7G5DNuDDYe96EsnnraRS1
 WKxrdRUl9FTwco0mZBzpugAkDmzVWX2RqWzvNtuYo+faL+NugJ/UDwxr4
 NDxDC+YgyqTf/MQXijSswpLvbHwKo99AXXVK9JL8GPvfOzR8MSqthde2+
 v/Ed9qM2u0kvVVUT18nez0e1bZSHrQrUHs1c5MPlZ9q4PirYbL98uDkKj
 0SIGeeKeSUEcPruOQkTvP9dwLe3/KI/fwB6hk5rhOBE2kVM+yb92kF00R A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="384459779"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="384459779"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 02:03:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633097460"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="633097460"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 05 Jan 2023 02:03:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 02:03:54 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 02:03:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 02:03:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 02:03:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RSKpoLmYB14Aozm+8SN1lhLOfnv0fK1PYVm6XpHCgQQxoOR8PFekbnxCnwr1qVXCa83cjRFRC2s7xdNyviqyGPUeBV5uIr6tM2MhIKGzS8H4DT3nC+7gQF+c7M9KQUq7E9ob/v6k3MdPCihhcfLCR4ac133VnYusNL/j1VHju1RFZRrjaz3HsIRCZ38q7SgBIRgFpteU+5Kujxw3b+KHwcLLgBp9LWZN7hHjtdhEmKX4ZeqCpCVVE7zN/eZ/Ri6hTMc/72kbOyJ6IypsqcyKM2Mh49e0zDL/lXn8BARfdk5/fWo5SYa21gtPz3rhimeLESlW/usEsgJDg9r8thJQ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RuirLyGZ9QBvtFfnlcY/Gr8yE67lH4/Ux5Z7Y3bghWo=;
 b=J8PcAA0FaFePtbWdV5wOiKlT4t8Z+d/ZDWSEZHJPWeKk55OwoW0y9JaeHZI11Cj2HqjEyeY3/MVTHvJB+UTB9+yQqvSHZ7hJavyNwGxmz8elTWQnxdNvI1U+5s1+nzMl86QrKbELSs5MiaPG5sDl6YI8yrg/yoQ+MEZWyGp84ZJgufOgoGClPWyP0V4tB2lmNR5v4sNCILp/U65poXu7Qo+RiOX6YxJKLG205fGa3IF6aeb4adVA8ZROGMVWHJdo53wFp10b6ZSBX+SuuIV7Asbv7FEgHkC/QpHEWnx3NO22GyZQ21RO4ZG3YdFl0RJlZD25cPZZTgP39+525FbMZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by DS0PR11MB8018.namprd11.prod.outlook.com (2603:10b6:8:116::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 10:03:52 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::755:cc4:8c46:509f%6]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 10:03:52 +0000
Message-ID: <16130c3b-b208-be46-37e3-2c387a4a2d5e@intel.com>
Date: Thu, 5 Jan 2023 11:03:48 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20221223092011.11657-1-nirmoy.das@intel.com>
 <CAM0jSHNCOE7_KNpc=iTqPf4WOrA_YZ+TzhpVaMQ1hFxqgHB_0Q@mail.gmail.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <CAM0jSHNCOE7_KNpc=iTqPf4WOrA_YZ+TzhpVaMQ1hFxqgHB_0Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0060.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::17) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|DS0PR11MB8018:EE_
X-MS-Office365-Filtering-Correlation-Id: fbafe5c4-7bd3-479d-2a21-08daef04260a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hVMJj99EMQrTkYmYnmkn7gFDiGfms4NK1H528+RM9vusjmKjyMVUqO5dsEUyi03+vyGzaW1kpGiyW0TuDGggbfJoEN+f/Fnx9vlcpSJfpqdQ9jXJImM32wyk9hBGbI6W/SKQTFbR04wm1XVwS+b60pJBcw+U1bfbHM86GDNLlcEB6MtvYEJ7yJfYhRRVYnJp1dmUl/0IFWmSI3ciVrZaD2d8Sjq6SOZZt83JYbHyoapFPy8ApdwZYnAF5kgJfH8cWe7ggqwXYDLdjComgCgF4Fq5q4qwtCh8lnNM5GxVz9xS085rouU9Eh5D1D3UndIokWZ/3Cafzt47/Gnma0D1+BPEaCFtnzJCMZy9h1lZ9ceCTrf1Jix2f+1pnq4/DeNgrwzJWBME1i5Zb2f4RbD1CsZvSaYPVkAhIT9BMifF7T69ZJG/jUfyV+wB2OGdFWnm8liRPu1aZ10xxo2HwEaqqCn9Xc3x8p3oTgsm8YFveL4SuVqNNrl76p+KIgiDbTqaqtBgq9VC9pI7hk5GfTsnY3279kJO8bojNJLtVwgk3DXjAhtiXy5DoAVStnay9hf9a3vejb3o2ZeuWewn018co9CTCNuCu6lS+VhalSw64OIXd4i6Cnu84bZAY/Iyas5R0h8M+r7lIaqvOeeR0+NEEYoBCC72dlI+DWshtDE8ojIpjNFXQNkv4HZnAH3p9WrjGoQ/98KG1MTi0FFk6fky2AEWTxql2QhYCBr6dutkW+M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199015)(4326008)(66946007)(5660300002)(8676002)(66556008)(66476007)(31686004)(2906002)(6916009)(8936002)(316002)(6506007)(6486002)(478600001)(6666004)(53546011)(41300700001)(26005)(186003)(6512007)(2616005)(83380400001)(66574015)(36756003)(38100700002)(82960400001)(86362001)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1lKOFpPWWpjT1VOYm9zT05XTTVEblQzeVFBM1JNdmpGY2NWQmtuem5uWSti?=
 =?utf-8?B?TFBLQTFsTk45YWlIZHRjazI3UWVsVTBPUk5NRWVyVnNmRWFrYmU0YWhPVlU4?=
 =?utf-8?B?WUxwMnhHbWNjcy91U3BWNSt0aFAwQ3lHSGtFaGFURVVvbnhlSGFVb3piQld4?=
 =?utf-8?B?K2hFNXZMZG1GdTV3eXl0SzhWTTZMRzF6dGFCUHRnWHFPZEpjVjdYV2JjQTVP?=
 =?utf-8?B?c1NsYUhnek1wREdtaTRUL0VVb1k2Sysva1VxOVNyckF1WWdMaDY2LzBQTVZu?=
 =?utf-8?B?eEphcUZudHhXR1FGYi9DZ0t0WThpTmNHaFF2Sld5WlJLS1ZzaDVqYlZxU1Fr?=
 =?utf-8?B?K0t1eWkvYXNUWGVmajVYYkpKc1p0TGtKV2U5R0I4bTdPRStDWDVVZkNuU0Zx?=
 =?utf-8?B?VWlhZVBXMXdxSzEwMi9ncWhodTBoSnFBaEl3NjcwOTlLb2hlcnE1NDJyZU5Y?=
 =?utf-8?B?WE0wNzNIMHBGMTFYR1hiNUEySW1pRVhOYythVW55ZDdQT05SMlhwbTJCTGxw?=
 =?utf-8?B?RUpyeUlYbFRodU5QZ0pmYzF5MjFYdzB1VEdHSjg4U2ZzWHdLeE5FYlVuMkNz?=
 =?utf-8?B?RUdjYmpLMy9JRFJ2cjBTUXpiTEpiYkNiMit2WjdtS1owcU9vYWpKeUtlbmRQ?=
 =?utf-8?B?SzQ1TlV4TFc4U1ZBSzh6aGxEeGYrQURRelZvL3JZeEtUUU0vUkp0UWFnVWRW?=
 =?utf-8?B?S3JlWmpGTVhFWVdUVFlCL3BkR1p1UElWeExIdC9PZUFEVXM3TTdhRGc3STl0?=
 =?utf-8?B?UlVqNi84ZWM1ZmtleWNHeU5hRTB2eVkrZlVCT0lCY2NOclVvVnoxcVZxRWZD?=
 =?utf-8?B?alRTQWU0ZGhWQlNTS3NySFVMRjJTSXhPeGFuOVdjNVlIbUlXSFdjK1VLK0RI?=
 =?utf-8?B?QnVkby9LTTkyMW1ReEFmU0s4NGhQSXpIa0FKR21KZEFQSFVmZHZldUZtOWRN?=
 =?utf-8?B?STljNFg0QmJ0eUttNmxpU0xpenNYTjdmeGJNMUtHcHBYSzlTYjVWbWU0bzR5?=
 =?utf-8?B?bE5xMVNsMTVXSG5DZ0V0M1NmMHFDaitWckduUnppTHg3OTc5bHErK283NVBt?=
 =?utf-8?B?RFZMbHRoc0kzVmtlOWFFaUZIeCtKRUF3bjU0RnZQQ3I5dW9wVHlMNVQvdHN6?=
 =?utf-8?B?SUtqQ1B6Z09wQXBHWlVNbVh0S01Uenk0R2tFbERWak9YWHdzZmEzbVNJK1or?=
 =?utf-8?B?ZTRJRTFmZEFHSHlDamM5NEErSStPYS9DM1ZDWWpjTWQzdDB4R1RIRUJOWVFK?=
 =?utf-8?B?Tml6UWwvRjc1eEdPNGp2SGh4VlRLRFdEbnM5WU9QcitjdlZqTG84N0Nub1hV?=
 =?utf-8?B?MXl2TS8vSnFXQzA4RFdiWlBPQlBMeEZaZjdqVTQvK2YrMVdQaCtMcGRQMW1B?=
 =?utf-8?B?amhiUVJMNkF1NjZtMzZoR0xFdk4vTmV4WHJQSGpnV0g3cmVGeVJ0U3IrRzVa?=
 =?utf-8?B?cGJrZkJHVDRHazZMMWt2bkNHUGxzR2Z3aytZcHBHM2s2VUxHeHZ3UzFyaE5O?=
 =?utf-8?B?b2ZyZkRNeUg2NmZQeDJVK1dSSGtLbU13aEJjaktzYVNaZlcxSUZDcnJCS2pC?=
 =?utf-8?B?SFFON2M0L2dzRGk5VTdMNTJhSEtlODFlY1liS2JsK215QlQzL1BSekxVNjdO?=
 =?utf-8?B?TU1RSUVXUjRUUDN0N2RydWVYWUQ4Ui9FSDVhTjIrZ3NabnYyelF1NXpORGpJ?=
 =?utf-8?B?V1h6RmVXT3FDMkJKODFsQWwrUCtZV2prZ1NlZG1KYWJTSkM3L3BObHFkZXk5?=
 =?utf-8?B?MDhoUmFiNFZjaGNaUGlQbVk1c0l3SFA1MDM3M1BkSitBV2VnMHhzNXplSHJG?=
 =?utf-8?B?L21oNitkWU4waDkwMUxtbkEwNFNJazllMVAzZ09neThMSjJTQ0MrQkIvNjdI?=
 =?utf-8?B?Mm5JdXVLZHJHd2pDRDFWTCtmMHZsYmxZTm91S2pQeTVmN1gyd2dOdkdzNDA2?=
 =?utf-8?B?QmdnZlptNTNWOW0vZjQxeHlwV2dubXQzaVpaSE05Ym9SSWdVa3pISmZ3cUZv?=
 =?utf-8?B?Z3ZqaDFVbFRjTFlic2QrRUhvTG5lTVZaVzd2UzZmR0QyREQ1N3hkS0NFM2Zp?=
 =?utf-8?B?bDdVQVJxNXZoT1owQTV0aXBua0g5UGtMa2ZobFJXeWt3RTZweXRCcEdCWWFv?=
 =?utf-8?Q?0M8LMk+jz+lU6v7PhOuaayLH8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbafe5c4-7bd3-479d-2a21-08daef04260a
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 10:03:52.5798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uOd5je3fjToI+0TSyEfw6F783YPdsPpNe2mS9ToGX63vwHevOIDSQRW2qO95mm5YXk+5uA+EqYmFm0HSMTvZjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reserve enough fence slot for
 i915_vma_unbind_async
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, jianshui.yu@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/5/2023 10:56 AM, Matthew Auld wrote:
> On Fri, 23 Dec 2022 at 09:20, Nirmoy Das <nirmoy.das@intel.com> wrote:
>> A nested dma_resv_reserve_fences(1) will not reserve slot from the
>> 2nd call onwards and folowing dma_resv_add_fence() might hit the
>> "BUG_ON(fobj->num_fences >= fobj->max_fences)" check.
>>
>> I915 hit above nested dma_resv case in ttm_bo_handle_move_mem() with
>> async unbind:
>>
>> dma_resv_reserve_fences() from --> ttm_bo_handle_move_mem()
>>          dma_resv_reserve_fences() from --> i915_vma_unbind_async()
>>          dma_resv_add_fence() from --> i915_vma_unbind_async()
>> dma_resv_add_fence() from -->ttm_bo_move_accel_cleanup()
>>
>> Resolve this by adding an extra fence in i915_vma_unbind_async().
>>
>> Suggested-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>
> Does this need a fixes tag?
>
> Fixes: 2f6b90da9192 ("drm/i915: Use vma resources for async unbinding")
> Cc: <stable@vger.kernel.org> # v5.18+
>
> I can add when pushing.


Yes, please add that.


Thanks,

Nirmoy

>
>> ---
>>   drivers/gpu/drm/i915/i915_vma.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
>> index 7d044888ac33..5ac4c1c2403c 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -2149,7 +2149,7 @@ int i915_vma_unbind_async(struct i915_vma *vma, bool trylock_vm)
>>          if (!obj->mm.rsgt)
>>                  return -EBUSY;
>>
>> -       err = dma_resv_reserve_fences(obj->base.resv, 1);
>> +       err = dma_resv_reserve_fences(obj->base.resv, 2);
>>          if (err)
>>                  return -EBUSY;
>>
>> --
>> 2.38.0
>>
