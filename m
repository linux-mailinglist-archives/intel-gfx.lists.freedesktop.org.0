Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6846C6D02A9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 13:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB7CC10E246;
	Thu, 30 Mar 2023 11:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39AEA10E246
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 11:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680174697; x=1711710697;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vGzWKkker8rmb13NsffUrEmjmOvzc2tV8nGNhf+60E4=;
 b=nEqyvZMSTU8aYUfE0WQwcyzWOXMwHQ5DVI1FObf+AzpZYQH6bf18DXNf
 dsqjt8+8LsPCeFzrRcLQpiD7R2vFA7HeJmhEeMYcOsLBDPvQc3T4kK06M
 gBi+9Av50r0ojsZKZN7ekyVzqv8qYWgRI1hHQkqBLN5DwHTtaaul3qWJT
 rHO2KXr2qxTX/F4nSvASQvD8Vn1doyhQkG4fSdBVJWqysd8Yu3QFbA9Hw
 hU7fZyitd0ww1b+xViXcSwk993JFYxBqqmO+UV7nT/aLljY6auKLsEoH1
 k3ths/Qns7m4PdvDECZlfhjr6dUWICKqGI0GVWz+WhI76+vH6Hq8+qj+C Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="341152930"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="341152930"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 04:11:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="795634851"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="795634851"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 30 Mar 2023 04:11:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 04:11:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 04:11:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 04:11:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 04:11:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KayrBb3Vv0tkn12RSqxyCoHICOAyZKjblDnLr5VEeM/e3nKu9LX8rf4Y1u6nUaWcsJmlRklZHKf1UNC6WsauGMO2Qd5U1aHRHDlLLOrmqDL4Umb6A0ulKK0WhYqIkEOT0fFXCKwiq+ynVfJiihtGjUt+2v+kD6sVWjk8Fmh9ZOMkfnSh6g6FRf18SvaV7PbyrCXaRyimyOLYUm0iBBScqsRO4Pkl2gwPRKsIPo2Ij5umn6tu9O2zbSCMCHaFq8+EXM0PBLBBxuxcqd51yVCVnTh5uiWHt/0cP0EvIINhl+wDMT00aypQiJOR44gNUZIpObc/2+YLcy+gJjDlgBo9tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s4Z17K1plErJT9xl4D2VAaAF3AyvRP+U8PcvtD8t8dA=;
 b=C/f5T7G5TtLlZxIRLpteAkZQzH9x7B5+qo4xMkohXpaxyPMF0vk9TULYVSFWu0cany2bCEdpPVsnGmwrs2L4o0XvKMVSoc3R7251rdFe+3VagWKKr68m8Pi7j5YSq2Km9PKzafWJVo9qHOf5cDW4/IsTD+Vs8LGFvrZASMMkBkeQeJoL67ZcbI7UTHvma3pjgVdU5/v/bTxweLCwBQwcNcDtcLZ2epVoFCfge/S+pd8bdHDLOh8apJJrfq1nodoGecy657ZGtZiyHYATYjpsaZp4ogN5tDiBQqRTeb8nrjhQnHxWGowGMhXmqy4ABFGM3aFIy/yz6iT2RBQUHJAjWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by BL1PR11MB5554.namprd11.prod.outlook.com (2603:10b6:208:31d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.21; Thu, 30 Mar
 2023 11:11:33 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::d383:a1b9:4c0:7d04]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::d383:a1b9:4c0:7d04%6]) with mapi id 15.20.6222.033; Thu, 30 Mar 2023
 11:11:33 +0000
Message-ID: <fbf095f7-a222-8763-5624-7440b645c5e7@intel.com>
Date: Thu, 30 Mar 2023 16:41:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
 <ZCQLhkwNGRnZkD4k@intel.com> <f62f54f4-b42f-dc23-2ae9-2be450854bb1@intel.com>
 <ZCQYkQHDnPLX0Ee2@intel.com> <32039884-4045-478a-e03b-09afba2b15a3@intel.com>
 <ZCQiijNDxTqT98bw@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZCQiijNDxTqT98bw@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::13) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|BL1PR11MB5554:EE_
X-MS-Office365-Filtering-Correlation-Id: bc1075fc-b29e-45a4-bb81-08db310f856f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +ZekRb3Yi/kuFubf4QFNonIj8GJ/6DLPMJ6DRa0c2Ry2byWMg0BQY7L1O7zT+Cki+7UvD6pQsUklUDFCVf5u2FIYY8Igs1qglfyfaekBJrO5t5G+DPjC31IIX0oNnp7sHDtkPyacUD7T3LQgiUB2WkP+t7iXRHu7h1iAHL+Pa5dTofnl5fckUjVUXPI5cvecTL2qx4DxzDrXPWzlq/WrRCfTYwjuO+wpO+/QdnMYRqjtHH2f/lDvrjXLFdHTqUAgamWKoDj2U0NlHZPx5bZzCZSSnz/poFh3sA9ptj1KONhl201GUnfDnJrm0v5uhlQPQMee3Bzh68JbaaAW+UMXnmFEuXs1NYCyb1P0BzCW3CsrujmWTCDMSoJmKmw3cB7J1gtt+TR6vIAfv3O7Vaj37zNDd+mdIGTm7SgeXQiex3+eiug/gwk7ae41SKka9uN20Mx6Hwab454y59P8kBZg0ceTzuAMiXyIcFObwtVhXPkRHWOzwepoFWfx1DOxBmwu3zpeAUOKPJFBN4gAAG3nG15/Yw8MKVDRftc+JhhlalK9H7Y2SFgdlke/Z1+gsz8HPKprRqQPI9xd9hqxxV+jO0U3P5xIk8eMtSpjh0BH2/nB2TUulzspKEPKw5LHFxTWOBq6cuhmZNYN3Z7SgYlQwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(396003)(39860400002)(346002)(376002)(451199021)(36756003)(82960400001)(83380400001)(66574015)(2616005)(55236004)(6506007)(6486002)(478600001)(316002)(53546011)(186003)(6666004)(26005)(2906002)(6512007)(5660300002)(6916009)(8936002)(38100700002)(66556008)(66946007)(8676002)(66476007)(41300700001)(86362001)(31696002)(4326008)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QU5XbFJiVStYd2xVT2VRRThkM2NpaGtvWTZsWWFDUEVQNy8vU3N6NkZzbTBq?=
 =?utf-8?B?NmFOTGw5dzBMTFY2R0g1R1hPeVFYUm5mR01hODZqVFl3dVFmVGxFekJVUm9Z?=
 =?utf-8?B?Q0ZtZXlJczhrcmRKa1g2K05xYUhwemdHeGFvQUhKSHorTXU2Zzdoa3FMQ2hw?=
 =?utf-8?B?RWtNaUlVUGV1clR0VWtsK0VaQ2tXV1VWUlJ3QVRpTk5pOEhkVERuVlNqT0Vh?=
 =?utf-8?B?R2d0eTRNSWVvWUIyVVpkQ1VJQmpnSHoweHNlc3FnQjVncjVFQkRneEcvRHIz?=
 =?utf-8?B?eGhnMU8yMEhkayswSWtHWlJPcjFIMDNBdGZKci80SjlBc0lPdXY5azdBcDIy?=
 =?utf-8?B?d0htUXNOZGlQUE42b2x4NUZuRXVoYkQzVUNIODA0N2hsaU1uZzY5LzQzb3RX?=
 =?utf-8?B?VVVNTFZSa3Y1OE5abXNqUEZUU2dJc1h4M3dTL1Z4cTcrUXZVUFZURXFjdW5h?=
 =?utf-8?B?U3I5N296N1dRZjRyWDlzNkY4Qk5mSXFzWUZpN2RqeTc4NE54VjBoOVg5V0pB?=
 =?utf-8?B?ZkplL040RHVJclFQaTIyZVJyalpOcUdZN2Z6bVc0SHdNbGFiaEJxUUZRN0VC?=
 =?utf-8?B?cm54SkNhTVBBdi9kYnZrYWk0MldrbXdhTjVRK0FmbUR0U2tDWFB4WXo4S0tL?=
 =?utf-8?B?VWdWYlIrQ1krOXBrVWF6QkZxak1FdWdPU0QwTmc4RXFlLzc4Z2RRbzB0WEZk?=
 =?utf-8?B?dGNJVmRJckVDamtRcTk5TkN0L2NRdWpKUUtrbnVYS0dEZU8vWG5qSy95dzBY?=
 =?utf-8?B?M0NnK0k2emZkWW5FTFVoT3NqRVJDalByeDh1VkJWenhsdittYU5kTFFmSFRw?=
 =?utf-8?B?WTdwcVVEdXh0a3lOUkRLU2E2ZjF6WG9NZktPVm5JWElKS05YZzRJV3dqUDBs?=
 =?utf-8?B?cERaV3kxUjFXdkhOUy8rRlpPdS9rUTJzZWZkRDR5cVFoUHplZHMwN29hODF0?=
 =?utf-8?B?L1ZIWGFXYVl1MVpqL3Y3a0hiZmc3NkNMamprcFJJT0xxQWxwVThTVXc0Z3Nu?=
 =?utf-8?B?U01VdnZ3ZitZM1BQT0M4aFZMdUFjankzMjB6TUlnMHYzTmdsSk5Tc0hZSW9H?=
 =?utf-8?B?YlYyUWdYL2tBOU5ZdGo1TTlnNXY2ZUhHZG1QSm1uS1VXbEl0NGFFRkFVU1Ra?=
 =?utf-8?B?czJqdjdNUm8vREJ0dVBOZ3pPZFYrcGlaM3BDWXNFZTlvR3NUVFdUTkxWempI?=
 =?utf-8?B?RVE2b2lSZEIrRnBXSzhTbFRWeUlUWC9Fc2F5NjFseS9CY0szNGZ1UEFJOXlW?=
 =?utf-8?B?akNWc0R5Z1UzaDBZUXd1bmhaV1dxOXMwTWZ6cmtNbnJjalBtWmExY3J2d3ZJ?=
 =?utf-8?B?T1JSSEJGeXp1czRhU2haazVuLzlWM3FhNUdJa3R4QXdkME1mNmh4MnA5dHNt?=
 =?utf-8?B?KzdrTzJMdnlLcmE1azJqeHkrZVQ4UW9NR2RXU3Z1d01jUExQSWNsRnFBVkN1?=
 =?utf-8?B?M1JNZEp4YkxYMXpEdGVGN2k0WitKVm9Pd1I4eVExdEppN3hxMkl2Z0R5Q1Ns?=
 =?utf-8?B?bFJrQzgxWk5UVDl5RGdjMlg1QU8vZHlLNkd2cCtjdkxwejZWd2ZEblFEM3A5?=
 =?utf-8?B?cXE5YSt3Rmxidkx3S0l6SmUreW5OWHZ2RlVRa2xDdmw4VXBxUVhKTE1lZDF6?=
 =?utf-8?B?MHpOeCtFRm5aMUZHT2NNc3grdS9CSUFJc2MyWnE3Q3AxMDk1RVBiK2xGVjh4?=
 =?utf-8?B?bmR3cFVaeWQ2TzY1SWhMWWtpc01ScFhyaEUzOVhWM0xGc3VHVytPaGlPMjdW?=
 =?utf-8?B?d3cyTE10aTBaeHhSSHdhVktxelRFS0ErdkRoMkRJMnpQT0Mrc3ZZQk9TNlZm?=
 =?utf-8?B?ZHJFLzJHcTlQUUd3VWtaMWMyUTNqY25lV1Vkd3J3N29oLzV3UW5pYWsyRTR1?=
 =?utf-8?B?OVYweTZKNUV2ZjBpaE0zNGFQV21mTTJMa3RLZVN3TWREY1dwLzJrWVlMVkZJ?=
 =?utf-8?B?TzllK09UR1RRWjNXN2JOR3V4b1E4bkJSMksvNmViQ21UQjV5STY2WHl4Nm1X?=
 =?utf-8?B?NzMwUjF4cTNNN3VOSTBjeUY3MFBzcnF2QjZjR0ltdHJuNFRvMGJjZ1VDMGU0?=
 =?utf-8?B?ZG1QdDB1TVR5ZmQ4OE5TYnl1UGVXNVFxV0hkNCtIc0k0V1lPdzAyVHhNS1FD?=
 =?utf-8?B?ZFNPK2RmeTdtdk5kRk54UGtQTnREUkVVNDc0bWErb2krbGpaVmVEbmM4WGl5?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1075fc-b29e-45a4-bb81-08db310f856f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 11:11:33.7521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhv5vjcGplpJbkI9WWHo68QZ4VbDmHeTKQ6EzR1PRCqDx7z/oG8k0nFiDx2MVPJ67IZmnAnEQwagEdCw2v/cpy+q7nb5nMnaIwai/Xzsxfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5554
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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


On 3/29/2023 5:05 PM, Ville Syrjälä wrote:
> On Wed, Mar 29, 2023 at 05:00:55PM +0530, Nautiyal, Ankit K wrote:
>> On 3/29/2023 4:23 PM, Ville Syrjälä wrote:
>>> On Wed, Mar 29, 2023 at 04:06:21PM +0530, Nautiyal, Ankit K wrote:
>>>> On 3/29/2023 3:27 PM, Ville Syrjälä wrote:
>>>>> On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
>>>>>> As per Bspec, Big Joiner BW check is:
>>>>>> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
>>>>>> Pixel clock
>>>>>>
>>>>>> Currently we always use max_cdclk in the check for both modevalid
>>>>>> and compute config steps.
>>>>>>
>>>>>> During modevalid use max_cdclk_freq for the check.
>>>>>> During compute config step use current cdclk for the check.
>>>>> Nak. cdclk is computed much later based on what is actually needed.
>>>>> The cdclk freq you are using here is essentially a random number.
>>>> Oh I didn't realise that, perhaps I was lucky when I tested this.
>>>>
>>>> So this check where CDCLK is mentioned, actually expects max_cdclk_freq?
>>>>
>>>> If it doesnt then, we might have a compressed_bpp value, that might be
>>>> violating the big joiner bw check.
>>>>
>>>> Should this be handled while computing cdclk?
>>> Yes. I suggest adding something like intel_vdsc_min_cdclk() that
>>> handles all of it.
>>
>> I can try that out.
>>
>> Will also add *Pipe BW check*: Pixel clock < PPC * CDCLK frequency *
>> Number of pipes joined, which seems to be missing.
> That is already accounted for in the pixel rate.

Indeed, will club this check and the other bigjoiner_bw check in 
intel_vdsc_min_cdclk, if the approach mentioned in the other mail is 
acceptable.

Regards,

Ankit

>
>> So with pipe bw_check cdclk should be >  Pixel clock / (PPC * Number of
>> pipes joined)
>>
>> In addition, as per bigjoiner check it should be >= compressed_bpp /
>> (PPC * bigjoiner interface bits).
>>
>> Regards,
>>
>> Ankit
>>
>>>> Regards,
>>>>
>>>> Ankit
>>>>
>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>> ---
>>>>>>     drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>>>>>>     drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>>>>>>     drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>>>>>>     3 files changed, 8 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> index 3fe651a8f5d0..d6600de1ab49 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>>> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>>>>>>     u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>     				u32 link_clock, u32 lane_count,
>>>>>>     				u32 mode_clock, u32 mode_hdisplay,
>>>>>> +				unsigned int cdclk,
>>>>>>     				bool bigjoiner,
>>>>>>     				u32 pipe_bpp,
>>>>>>     				u32 timeslots)
>>>>>> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>     
>>>>>>     	if (bigjoiner) {
>>>>>>     		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
>>>>>> -		u32 max_bpp_bigjoiner =
>>>>>> -			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
>>>>>> -			intel_dp_mode_to_fec_clock(mode_clock);
>>>>>> +
>>>>>> +		u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
>>>>>> +					intel_dp_mode_to_fec_clock(mode_clock);
>>>>>>     
>>>>>>     		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>>>>>>     	}
>>>>>> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>>>     							    max_lanes,
>>>>>>     							    target_clock,
>>>>>>     							    mode->hdisplay,
>>>>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>>>>>     							    bigjoiner,
>>>>>>     							    pipe_bpp, 64) >> 4;
>>>>>>     			dsc_slice_count =
>>>>>> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>>>>>     							    pipe_config->lane_count,
>>>>>>     							    adjusted_mode->crtc_clock,
>>>>>>     							    adjusted_mode->crtc_hdisplay,
>>>>>> +							    dev_priv->display.cdclk.hw.cdclk,
>>>>>>     							    pipe_config->bigjoiner_pipes,
>>>>>>     							    pipe_bpp,
>>>>>>     							    timeslots);
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> index ef39e4f7a329..d150bfe8abf4 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>>>> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>>>>>>     u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>>>>>     				u32 link_clock, u32 lane_count,
>>>>>>     				u32 mode_clock, u32 mode_hdisplay,
>>>>>> +				unsigned int cdclk,
>>>>>>     				bool bigjoiner,
>>>>>>     				u32 pipe_bpp,
>>>>>>     				u32 timeslots);
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>> index a860cbc5dbea..266e31b78729 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>>>>> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>>>>>     							    max_lanes,
>>>>>>     							    target_clock,
>>>>>>     							    mode->hdisplay,
>>>>>> +							    dev_priv->display.cdclk.max_cdclk_freq,
>>>>>>     							    bigjoiner,
>>>>>>     							    pipe_bpp, 64) >> 4;
>>>>>>     			dsc_slice_count =
>>>>>> -- 
>>>>>> 2.25.1
