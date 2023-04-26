Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EE76EF8EC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 19:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A7710E265;
	Wed, 26 Apr 2023 17:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891A410E265
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 17:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682528763; x=1714064763;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AF1gOPLM0RD4pg78Dt6bvzjXcWw7GUd/R0M1I5UJQrE=;
 b=MsdtH7pqj9SD9zOZlZ9GcbfIiUm27/x9mh7t9/zfknDyZ7wV3nu+Szjf
 BpJtqHbfU2l3QMpiFw2w1zM4Hy8fVtGM/HL8Gds75u+mQNrcpbAqw8O8+
 ulDob1eWPJOpXS2QpeDbWG44cEyXVRLKnxrRI0fkH/Wfv9McP41wxmLE6
 o5YinmH7segITVZ/XlmQTrDPb9aJOk0VaWyM72WSwSKJMYljOYXF1S/aI
 KmQ7dEjBzANpWMkeXha7pkja9LEysIC5zjhT9fZxPlOyhoebzQvbeO4SU
 /r9i8RgWi3l/EP8b85K2S4Zf1Uqm4CtvLQjf4DnB1kVlgjrJYse/6bWpr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="336092323"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="336092323"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 10:03:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="868362100"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="868362100"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 26 Apr 2023 10:03:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 10:03:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 10:03:33 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 10:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1/AJ2l5TIVvSUEe6WgQV+c5BLl6bDftaLJ2LpdY4YmnPC1JmuY1Zhc12FZaoOdlnMcVPV+kjZHQFkThahaFQgavkAeXqOt8as5yjIJXYCBraKxtzmIgdgamOLyfShoFiLiX6yF2EzJEDFErmhqqiJj+Hk0FeorITFHM8nY/BQk87D6LirwVSDu7bysTkSctELYLMPkj1Lg4BVO78bB/wvS0mShxu21tbsJqBstso8pSdiwd8WUqnItfoDYRHKd4VoMOwMxz0i3w+XurslvfRlTmCOadO6BfrRFKR7g0v814E+zYwWfq+ZFW4s8q4RitfFxmJ8gcKjhZX8rq0cAeiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k1c7IwJ87zRXLtVmBeVnt/cNumxZCSkt9fMMFmCybao=;
 b=Z0UdU4Fh/r6DuHQlPzag7waOgSfxSpsjp+R/dTwzavKp0ljH0GJmy5JEID7CknLR9QF5RDF79L9Y9j6Y9ula/w8xn+ZChEawRzmGi35QdpEAD1m5XxQ5xdPNMTr/YXNG7iav8CqKNRz20fKa7lddtIA+/Md01u7B0PmMHj9LE7SqC1hSInzlpE8c50APAhkNqQeQj1hx8jCLyFKc22uqjwI2rs34GSqULBjnGG483URXssN/NzEG5R1+q1hJ4Ym0UugbIat6eTf3mDX107XPUJhh9tToDubwRzh4QSgWMDbnBkeREYgDFzoVovoaM+l5ld/CSW7YtSArDwrCrHqWBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Wed, 26 Apr
 2023 17:03:30 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee%5]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 17:03:30 +0000
Message-ID: <fc675a80-532c-aa99-2f0c-6d0922d40e0c@intel.com>
Date: Wed, 26 Apr 2023 22:33:22 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
 <fd12586f-d2ca-f6a8-aaaf-0221ebf4df99@intel.com>
 <DM4PR11MB5971334D75F16E0ECE77C9EE87659@DM4PR11MB5971.namprd11.prod.outlook.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <DM4PR11MB5971334D75F16E0ECE77C9EE87659@DM4PR11MB5971.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0187.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::14) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: 3bdb3e22-bf0a-4c3e-f3c9-08db46782931
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DomBw0/HhzFHxK76NATgxcQ9Y5mQAZI+vxWYcSVoJVuOgO62Bxf9+JUQTqfiPwFGVe4pLCt3jKoAp/hdUFNWewqsjgu3gFb69xUb8bXYsavHZvKMYb88gKMSp9vq/rOVEM0bfQXi1NvZwHQr+icYIsJV4hMzHhagTL3Q6rrqe8KnM6jbuOtV2igH1aAphETy8fkMmzXRGYv9uhW892P0gAW784HJkKfc6wz7EoQ3BfnZX+TX4QS0NwR4lsKCB8XCq3q5bXVBo2JJHVkMN+dMZgJfnaFm7u1JaZ5N4aV8p+MF933rcWivvJSpEGhhCftk4Yy3mtxG7n7ga92LC/vWYdad6cB1/Z9OI1SWzLDoUeTJHhQLyn3YiIxepmLqkeI5CyETTXUUfkjOajmUNzgoXKoj4XjQ8vBqoeICUlc0KPFUrjJJVn56bsnCNxLPDVMnPldS6rSdaO7EuFRfr9xiwiX0iiTfHIJXiqRYSEyCe+Q6KYzRPMt5D+H2yTsQj8ftHdn5o739vsjF9A+K965bithOXPoeZErLkfcOr+pNbIcjRtbRBQZHtuIbqdU7p9iBnWF0xecR/pZmPK6p8FLnffE0K09qPm2vbbE3ZTBLSv/NoKT+Ce3KyU0Y1XYSfPKMSFQLmYh3dNmHgQX/XSj/nw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(376002)(346002)(136003)(396003)(39860400002)(451199021)(478600001)(31696002)(110136005)(86362001)(36756003)(107886003)(6486002)(186003)(53546011)(26005)(6506007)(6512007)(82960400001)(316002)(6666004)(66476007)(66556008)(83380400001)(66946007)(4326008)(2906002)(41300700001)(8676002)(38100700002)(31686004)(8936002)(5660300002)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NjhLcnJPcDdLbE54c09vZUhReE5lRmNoRlM3Ym1kQjE0cEVVbWh3SFFqZU40?=
 =?utf-8?B?dzVBYlJ2a2gvUW0zY0JVeTlMYVIxVTZRY3V5WVBGNXdqZHBRbnpna2N3QUli?=
 =?utf-8?B?cWRkNi81K0Fmb0xBQWtrUDVwS1RBZ0pRY05SRVVwbW9aNDVEL21HLzhDdW5X?=
 =?utf-8?B?KzFVeDZIdUdubXVRUk80MzltNGd5dXFmcVFDN0xPTVAwQ3RsL2dwamhRaGxL?=
 =?utf-8?B?T3c2TWVTbUJRemxybEd3aTNEM20yV3BSVE9pMDJvNHRuQ0RKb1pzK2gzWXQ1?=
 =?utf-8?B?VEp4ZFVueHhXUWhSMGtBdzBFRk1BZklLcXg5YWRrTFMvYnBKbjN3bGlFcGJN?=
 =?utf-8?B?UmF5cGdReE1CdER1ZDVEVno1TzRrbzJBVndoTWw4bnpLWDNWZGwvNnFKa1B1?=
 =?utf-8?B?d0FhU3FUemdGVS9Wb1VWNDhaZWtMQWZHcTg2MG9XQ29zNkV3a082QjJ0N3FI?=
 =?utf-8?B?SnpQRUtLZ2VFOFNIUWZCd3d3UUpVWWUzRHowSHNOdjdTME9sK0lwMHY4ZTMx?=
 =?utf-8?B?Sk9sZ053UlZ5a3VLWERvRFRWWUlVZzg3cFY4WWF2L0VrVWMrZmhhSkdsK0ZM?=
 =?utf-8?B?bEl0YVJMQXVsWEZIMDRTRklnQkZLQ1NuMlVTMkRQdGkyenpKbWR1WUNQeG0x?=
 =?utf-8?B?NkRaSFlLNXNqYU8xeTdNUm01Z29WVHhobElYU055ckd4M2o0S1VBdGRJZnFK?=
 =?utf-8?B?WnR6V3VaN2lCMVh2V0RHcmZHUkRpVUpNQVhmUGJKTzV3R1VxTyt2N1ZheTQ5?=
 =?utf-8?B?MXBnOVZnY1ZCUGwwNFkvYVpZUlg5L1ZkYmtKUFR2Q213TEZWUGc1aUtxNXZJ?=
 =?utf-8?B?YjFFMHQ0ZStSZVMxMVQvekxaUmFab3FlcjJBUHcwQkZmYVZ3MHI2d0l5SHBB?=
 =?utf-8?B?eUlhUDlvTFp5RTViak5tV2duU08zc1pHbWpwaysvUDRaalhCVlEzZysvWHhk?=
 =?utf-8?B?N216RVJsWFhVYlZoVVFTWXdiMjVlTHdWTEUzb3ZobVV4RVVMbTFzVm1NMzJE?=
 =?utf-8?B?MXNlYlVlb05xYS9WcmNNbndjUkEzbXQ3MjFJc0c0THBGZUt5ck9weTg0YXVp?=
 =?utf-8?B?eDJQWWw5cXNXZk5RYTQ5QTByUzBqQnFyRmNqbDN3SW12ZlFoNkJEeU5lYTdt?=
 =?utf-8?B?Z0kveDFLOFBMU0Z2cnlGQ0xjMXBqZWFIN1ZDRFhLNHVQNDBrUU05aFVHcVRR?=
 =?utf-8?B?M2k1b01kVHgwUjdOWFZjdkVLeUg5YWVhMmVobXN6Z0svdDdHazR6TUpVWERm?=
 =?utf-8?B?WUxCUEExdm00M0RpME9FOFk3RFp6T0pIWHRTYUV4VnMrbCt0OUk0dVhISCt6?=
 =?utf-8?B?V0pUUVRyVVVsbnFYdi9RWmtOTEpSYUlabFg1cWs4VmpZZzB4S3pRMExvZVNE?=
 =?utf-8?B?bUViY2EzYlRXb29SdzJyWEZMSTJGd3lYRGllc2ZiR1ZXOCt5TXJiUnhVM0Zx?=
 =?utf-8?B?WHR4VktUTG5vTmlMVHZHdTVTa2xTR3JjeUxpRWtyWi9TektxN2NSNmtPcFRu?=
 =?utf-8?B?NkNvdVNJWitvOG04bXhlOFJVME1EU2xkR3ZSdWpmUGQ3aU1VYlR4ZkJBRGFJ?=
 =?utf-8?B?OWl2NVE5T0NNUHVBM01VL3d5UjE4aDhmM2Y2enpkSndnNWNHVVlIMGFZL3hS?=
 =?utf-8?B?b0JVeW5SSjBqZVhWYlRxbEI0NG9ZVjZKZXdFYTdnL05BQWJoM3dXVU1BRjlP?=
 =?utf-8?B?djVaY0xTaStoUGZoekhqSFNVOUxGMDhZam1iQzZ5N3lRcksxYUR2TTd5cnNF?=
 =?utf-8?B?WngwdG5Vb0hUUjMxUHBqYk9TQ0t3bnpnc3Jma3ZMdCtRS2xQRjJscnVFaUtR?=
 =?utf-8?B?cklQc2lZY0Nac3pLVTRYNUt4T2hQRGVkZjhRM1BTbWpCYlUybkNyS3Nhd01R?=
 =?utf-8?B?OVR6ZFU1Y0hQOTB5SENoVU4vNWhMSXdaNS8wZ2kzaHZKZEM2WitwVk1vc2NY?=
 =?utf-8?B?c3BRb3E5cDZROGRCck5rSVA0UmMwYlhxMlJZT0pQTmRkZVorMzJ5NGZqNTh4?=
 =?utf-8?B?eFZUei9vMVNLaHVKb2JJa3NYanpsbElqMVhDSHlLbzRtRk5WT1I3eC85YjZj?=
 =?utf-8?B?NGJjd2JDczdFMWNvWHlZanFnNHF2L2loM2JkU3lSRGhrZ3Y0WTkxQlFiZUhS?=
 =?utf-8?B?UjVncURIL01FSFhLamZzOGxabHcvaERNd05EMVIyOFkrOXUzL29RQXp5bzZN?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bdb3e22-bf0a-4c3e-f3c9-08db46782931
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 17:03:30.5699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B1Pgxm0sOYETMMFnHY5GYFUzBNFmJrvuiV+maIXLZZC3cMl38dyNDHVHs7n6+UAPN8Eq+7ofA4oS/eu6ABH2aJPGLU7o7Bkl8dcqmwu/L3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/26/2023 9:41 PM, Sripada, Radhakrishna wrote:
>
>> -----Original Message-----
>> From: Kalvala, Haridhar <haridhar.kalvala@intel.com>
>> Sent: Wednesday, April 26, 2023 5:36 AM
>> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement
>> Wa_14019141245
>>
>>
>> On 4/26/2023 12:00 AM, Radhakrishna Sripada wrote:
>>> Enable strict RAR to prevent spurious GPU hangs.
>>>
>>> v1.1: Rebase
>>>
>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Reviewed-by:Haridhar Kalvala <haridhar.kalvala@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
>>>    drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>>>    drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
>>>    3 files changed, 9 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> index e8c3b762a92a..af80d2fe739b 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> @@ -529,6 +529,11 @@
>>>
>>>    #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>>>
>>> +#define GEN12_SQCNT1				_MMIO(0x8718)
>>> +#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>>> +#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>>> +#define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
>>> +
>>>    #define XEHP_SQCM				MCR_REG(0x8724)
>>>    #define   EN_32B_ACCESS				REG_BIT(30)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index de4f8e2e8e8c..ad9e7f49a6fa 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -1699,6 +1699,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt,
>> struct i915_wa_list *wal)
>>>    	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>>>    	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>>>
>>> +	/* Wa_14019141245 */
>>> +	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>>> +
>> looks good to me.
>>>    	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>>    	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>>>    		/* Wa_14014830051 */
>>> @@ -1707,6 +1710,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt,
>> struct i915_wa_list *wal)
>>>    		/* Wa_14015795083 */
>>>    		wa_write_clr(wal, GEN7_MISCCPCTL,
>> GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>>>    	}
>>> +
>>>    	/*
>>>    	 * Unlike older platforms, we no longer setup implicit steering here;
>>>    	 * all MCR accesses are explicitly steered.
>>> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>> b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>> index ba103875e19f..e5ac7a8b5cb6 100644
>>> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>>> @@ -134,10 +134,6 @@
>>>    #define GDT_CHICKEN_BITS    _MMIO(0x9840)
>>>    #define   GT_NOA_ENABLE	    0x00000080
>>>
>>> -#define GEN12_SQCNT1				_MMIO(0x8718)
>>> -#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
>>> -#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
>> These two register bit and register(0x8718) moved to "
>> intel_gt_regs.h"not getting used elsewhere(I mean, in i915_perf.c) ?
> 1) i915_perf.c includes gt/intel_gt_regs.h so moving the register def. there should not cause any problem.
> Moreover,
> 2) intel_gt_regs.h is used across almost all the files under i915/gt.
> i915_perf_oa_regs.h do not have that kind of usage.
> 3) because of this bit, the usage of this register is not limited to perf subsystem.
> Hence the better place in intel_gt_regs.h.
> 4) we need not have all the i915_pref_oa_regs.h definitions included in intel_workarounds.c
>
>
> - Radhakrishna(RK) Sripada
>    
>>> -
>>>    /* Gen12 OAM unit */
>>>    #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
>>>    #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
>> --
>> Regards,
>> Haridhar Kalvala

-- 
Regards,
Haridhar Kalvala

