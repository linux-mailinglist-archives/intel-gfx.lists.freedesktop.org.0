Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4E36251B8
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 04:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621DB10E73E;
	Fri, 11 Nov 2022 03:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E05E810E73E
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Nov 2022 03:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668137581; x=1699673581;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=waphgMEKy+uA6n6M1xr0Y22GlW84PuxO5cnXHgSuk+g=;
 b=MW2M/Mcqggx0XPST2vtsvWsuJBZNai8LvNdXQRFNUYRvw+MgoJsIO6xE
 oYe+SwsDVQOJNNyPzzUl/wJ6cBuopAuWZU03XChY1sLcZO4cr/ALD3NcH
 sdZV5sIeDhrtTG70Dmg4yGUArrE2yY4pg6FqFRp3Sd3Jer07yuKwmJjOU
 caf52jlpMbWgYbwXJFBFZlXfrPKqTvcBK/Z1Mu8LTY5J/1HrCRFKMIUa2
 9eNFtJcvnTNGZWOSyWHiN2bXWINiXrzu5SANGGe1xPkSUoyY9tgRxymBT
 RLs6CeW+zLYkkdIhLyPT81fbrQNXWpC2FFOoIxwaaVXfUCal76qv9SZHn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="291916351"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="291916351"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 19:33:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="743132934"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="743132934"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 10 Nov 2022 19:33:00 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 19:33:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 19:33:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 19:32:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jSgJc0hha6xfkNegeQXc/5SyNl/oOIIRU7n0zg/pCi8nsCCF5/RCBEn730NUvEVYIW5L6QrJwUmgNaBS6hOKqnebYyLjb5jLlxC/Ophbug8CLCXL+0kqh1YgaxTn+Kzax6PA75bVWaNLebGpXZc0RzmCCs3vI6hY6OqF8kHnXmBmbUVJS7RsVVzgVyvqnjKrHGhEF+rkKDm05WQyH8/EzacI3njNMfQu30vD08+esaHW0CcSVZpijGoCT5SLwhOr2gaABQsKDhczKUITbk3D9GuAC4AuLM1l7NZ/fVWAO3J8BZgUqvNsbQbyjaL3CrmokWULM4hNH8eu2VfLMWDxFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4SjFCIlIvpf+C/q3w4N1MJcOPirx8N0mSj3uQoKlrBo=;
 b=gXEJXgeiOoXLjvSBDPbgJnMQUfUFRkkday87Nny3sj58T6F3yND5DxS4Rt/1rIVd9X7n5xMYEH644ngXPHNEAKr2K17hyETJmgkp0RLzmCf9iI/QllWyf0nGisuAi2rWsOnEHQ+7CsqS/U1zWvuNPzdjuqN07zVm8834YYrqyIuZiZLLyoH57cc4iUCriU5Z2wZYr8mRYH1g8oBOJpWLFRCm4iQ7CMSN/vUlLHW3FZVjE61Ex3u/NgEjey3CRDtE6sXEZvRKQ0vRJbVPNH1/LAV45xpH69KAGWSFzNPQXiedBZ7kob9QeO0ojP/uRo1JOphqlOyCk1doLbuk75wSmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5653.namprd11.prod.outlook.com (2603:10b6:8:25::8) by
 SA2PR11MB5034.namprd11.prod.outlook.com (2603:10b6:806:f8::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.13; Fri, 11 Nov 2022 03:32:58 +0000
Received: from DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::54bd:d24a:e18c:36c3]) by DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::54bd:d24a:e18c:36c3%5]) with mapi id 15.20.5813.012; Fri, 11 Nov 2022
 03:32:58 +0000
Message-ID: <d99a5c08-a1df-5b47-d63a-c71936cc4b53@intel.com>
Date: Fri, 11 Nov 2022 09:02:47 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20221103123723.18063-1-sujaritha.sundaresan@intel.com>
 <87h6z90wbp.wl-ashutosh.dixit@intel.com>
From: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
In-Reply-To: <87h6z90wbp.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0120.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::15) To DM8PR11MB5653.namprd11.prod.outlook.com
 (2603:10b6:8:25::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5653:EE_|SA2PR11MB5034:EE_
X-MS-Office365-Filtering-Correlation-Id: 41ac7ff8-a231-4a43-7c93-08dac3956ca8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2KVG/eKPb2s0COcjLtbaIv8T0Dv72bb9eTTwyfsRjQO/zUPUrVg7etSx/pBnbD3VMEPFfxTI04x9mZYvBLIlf5Cm7RPa95NWJTg2Kl4P4pTLLPn2TZRzKEteXWbXAVxg4Zy1M/AeCvkeMCnebHa232u3oC8TSzR3iPzMghtRZSbx4kEw/AR0YV7XZXh1k4ACq6wV7B6tDTJksiBq1hm680fod4KA5F3MzRYGJOx5Xotj9MXRvc1qWshNRdiq10kzV7kRyg1esjQfavdk/OR6ISqAEQWFAERY2EM9SHawvLa6wWK9hrCr/8byH7cYQa6nTk971HWalyuSFQKJOWTXHevm1whavueBXOxemAdal2m3bHTnMYkqg0JNyzXFaqL89i+U7VzwrBwDys/XOBNNDrclcNykUtmKnKRu6ElTTeoufpG6LNeiyzVBxeTmgLqNe5Ny6M+mD2w3IcvJe6kErVraxRcMgnbdl3ZhoyKgoE9VsrWN2I6pnHGQzo/2fCFvBnPzZQjRnL0ks3UII7u59DFqy4z5K0zUUhuCq5lHxeIqqrzfvmsfP/zW/hzt+mspHF+Qp8y00LxM2/gUDUlGNV+AhwrLsGsxLZrhYUzN6qb/LNJ92G7TfwU5Qq2uBJzeg7rx1Ye2AVu+QqMmCjOp6z0CLTIJB7LBUV7OBwjn/KtWlihPxDkEV8UWL1ohX2LhC2gnwaC7BoxEfdCpGkz7C0miCuFo0iYOCd8OY8UWen1U22qtlG7oPUwORMFqvUDzwRcLsAq8/+HTKijywqsB19YS1/cRBI52g9cq7o0TnZ0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5653.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199015)(6486002)(66556008)(86362001)(31696002)(6666004)(478600001)(31686004)(6636002)(37006003)(66476007)(8676002)(4326008)(6512007)(6506007)(53546011)(26005)(36756003)(2616005)(186003)(5660300002)(6862004)(41300700001)(8936002)(83380400001)(82960400001)(2906002)(66946007)(316002)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tkl3K2xpSlZ0NHFGaGgzcTZXUjR1WmZlbm1WZUNhZDFTWlZSUytaWWQzTDht?=
 =?utf-8?B?UUUzdWIwbzdJUWZTV3d1RVJSMkpSdDVhdTNNWWhQaWNvelR4bFNkR1BMVm9S?=
 =?utf-8?B?QlBOaGJQZ2dMMUk2ZklXS2xJbW1JaDZPMWE3Z29nYWIyOXo2eFJadGF0eFE4?=
 =?utf-8?B?SkdRMG1TTDNXMk5jblJJS2N3dzRlYXNINCsrTWo1QnF2NzRCcm0zZDc3dFU1?=
 =?utf-8?B?Z01HdU8wdk15ZXZaenFZZUw4QzhNdmh5REplR3ZsQ2QxUlAwWTVUR3BvLytv?=
 =?utf-8?B?aGRjMU5qWlllSEpWblZ5TXhYVThvWFVrSEJrdVFwbjAzdjN2dmh6NkZzSnIr?=
 =?utf-8?B?RkdqdWhyWHordVJrWjJmeEhCK0NIQUYrNS9XOWR3Z083T2x3M3owTWR6NUpx?=
 =?utf-8?B?RFVDTmoyK0tyYnI2ZlpSREdsTFpoRDBZOEI0N3IxSklLTnRDZnp1eWRpV0Z0?=
 =?utf-8?B?UVFFTXdJZE5QNmxYd0ZIUkcwcVZTaFdDNjJnQ1lVcHpXZEw1OHNGTTE4YW5q?=
 =?utf-8?B?MS81NnFLb2l5T042VFU0VlRNTG54dU9jbitlTzBWTHFhWHhNSHE2alBhb0ln?=
 =?utf-8?B?ZTgxWERWbGVheWpselhKOWpLdXNYeDZiYndUNVlmTWFjbmszSzNJc3F0a1pM?=
 =?utf-8?B?QVN6VlhqanoycVY1RzBSVndPZTcybjdlL0hIMnFwcGdkR1liQ2dmSHo4Q2ZY?=
 =?utf-8?B?alFudkdMeVVXeE9VTkV0NzhyN2E5Wk5BNUIzc3V3TUhWUGRBdTdJR2hUdGdG?=
 =?utf-8?B?ckt0bHU0VXBKY0p6c1F4ZVBzTldnRTBoQnRYZmdpNTV5YWNQeTZNWjdyZ3lm?=
 =?utf-8?B?OUN0Tk1UUEU1K0xTd3NUUkRDdmprdC85VEJuVXA3cHFVSmNKMEhaK2NTZFRZ?=
 =?utf-8?B?Nk00NXl3TExjSmttdlhvYVRBdlpUVWd2T04wRGh5MitwakdSbzgvYVR1MElX?=
 =?utf-8?B?VXhVMUdRczgrSzVKYVRYYi9nWTJ6K3IyN0ZxK2Fuai9JV0M1Y1JJbFJCcUVD?=
 =?utf-8?B?YmJmTDFGY2pOVmJYZU5SY0NJdUhtRTM0RWNBaXpKSUFBcWhRWjFzK1U4QzhV?=
 =?utf-8?B?eUl4MlJ6OEU5VE1QOS9LMm94TWIyRFE2VWJmWGcxK1R2anpKRTVGUkY0QXFK?=
 =?utf-8?B?dFdXZyt5UW5MaWlLejluVnRUaHh5TktpYXlHRGh0MWh1ZXkxWjA5cWhrSW5S?=
 =?utf-8?B?QVhtQm5sNkFrOVlObm1vQ08wMUYzamtMc01nckcyRUJJRmZHa1NHNHYvNFB2?=
 =?utf-8?B?QVdLRHRBbjVnaytuRGd0bTZyQ25pa3MzalFnUTdHWkQzcFFjZHkrbDNFVjNj?=
 =?utf-8?B?SFJKVlo2d0cvMzJyN280YlZNY1cxTDZqS3k1dFROSWRKSmV5TUI2WkFmalRM?=
 =?utf-8?B?VVFnTUNGV0pBMSsrUDBYanlVejNaY0tEMVpSM2laQkFyaTRWbGNSVnhzZXBn?=
 =?utf-8?B?bWY3UElQajUzUk1FcFZHN3lleE96aEVPQm44anFtRWVNeGphdnNIRElpZW1Q?=
 =?utf-8?B?S1k3QmpNVFhiY1p0UDZmVGdydXN0cjhQeWJvWXpCbGF6dUE0cWdzQkRmbGpk?=
 =?utf-8?B?MnVTQ1JqUmFmVW5BRVdFaGlNN2JaUkRnSTdMWTNwVGJnazJpVHk3TzRDZ2k4?=
 =?utf-8?B?cFd4QkxrYnliZ01DcmFPOHZ6OVA5KzFWOGhMdmNiKzFLTEJFMy9vMFBGa2lQ?=
 =?utf-8?B?U1gvOHdKRFlsbXFaMVU5UEdGa0IzNTNtTm5tYTRPNnFma3VrNzRxZmJLek40?=
 =?utf-8?B?b1J4RWZuejNPTmk0NVpFQkIzekFKNE93WHQyTGNJRUcwbVpJUVE2M3lXL3lM?=
 =?utf-8?B?d2dlZnZvZVhrQUtMUVVVeS9mK3lURnNSRDdqa0pQdXAxRmJ0S3pla3BKTzE2?=
 =?utf-8?B?bnNTR25BTzkwT2xUMjRreGlTYXdmTnY2YzgrRllSbXZhNkZqL1lpUzRkZ29n?=
 =?utf-8?B?V2hSZUJaWjlqMVVCdVZaVnFYVEFFc0dnbkx3NFNnbitLbStOREdZK0t3TVBC?=
 =?utf-8?B?VW1QYVBKVUU2ZEJyeXVvZUxsZytLRFpVTHpodWtWV2RKeHlRYVp3YmlJSmdP?=
 =?utf-8?B?VUVDdDF1cDl6UCtVSkhqQi9zNlpqUHliQUVpTWpvR2Z2cG9UdmRGenlDMnB1?=
 =?utf-8?B?a2I4QmtkNmtZVEZQeTlFMGNrM0F1dlhMeXJhZkZtb1pEQjZFODY5Z3QzVXVN?=
 =?utf-8?Q?wripjNQltKJ8zis3Ml4Z8nc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 41ac7ff8-a231-4a43-7c93-08dac3956ca8
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5653.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2022 03:32:58.0213 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fnBVqL92lWaQoon7mZ8HtT/64YV93g/zkY64FQuM9MAXZNH5oBRn8GqK/H2oW4RO0XZXToCSF2N2MqQLrAkNObG490Kz354ExaIr/kZBZ08=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915/gt: Add sysfs RAPL PL1 interface
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


On 11/9/2022 6:37 AM, Dixit, Ashutosh wrote:
> On Thu, 03 Nov 2022 05:37:23 -0700, Sujaritha Sundaresan wrote:
> Hi Suja,
>
>> Adding the rapl_pl1_freq_mhz sysfs attribute.
>>
>> Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c | 20 ++++++++++
>>   drivers/gpu/drm/i915/gt/intel_rps.c         | 44 +++++++++++++++++++++
>>   drivers/gpu/drm/i915/gt/intel_rps.h         |  3 ++
>>   drivers/gpu/drm/i915/i915_reg.h             |  4 ++
>>   4 files changed, 71 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
>> index 904160952369..e7f00ec252f8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
>> @@ -496,6 +496,17 @@ static DEVICE_ATTR_RO(vlv_rpe_freq_mhz);
>>   static const struct attribute * const gen6_rps_attrs[] = GEN6_RPS_ATTR;
>>   static const struct attribute * const gen6_gt_attrs[]  = GEN6_GT_ATTR;
>>
>> +static ssize_t rapl_pl1_freq_mhz_show(struct device *dev,
>> +				      struct device_attribute *attr,
>> +				      char *buff)
>> +{
>> +	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
>> +	u32 rapl_pl1 = intel_rps_read_rapl_pl1_frequency(&gt->rps);
>> +
>> +	return sysfs_emit(buff, "%u\n", rapl_pl1);
>> +}
>> +
>> +
>>   static ssize_t punit_req_freq_mhz_show(struct device *dev,
>> 				       struct device_attribute *attr,
>> 				       char *buff)
>> @@ -534,6 +545,7 @@ struct intel_gt_bool_throttle_attr attr_##sysfs_func__ = { \
>> 	.mask = mask__, \
>>   }
>>
>> +static DEVICE_ATTR_RO(rapl_pl1_freq_mhz);
>>   static DEVICE_ATTR_RO(punit_req_freq_mhz);
> Is this patch against old code? Since this is now INTEL_GT_ATTR_RO. Yes the
> build failed. So rapl_pl1_freq_mhz will need to follow punit_req_freq_mhz.
Okay yes looks like I might not have grabbed the latest tree.
>
>>   static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_status, GT0_PERF_LIMIT_REASONS_MASK);
>>   static INTEL_GT_RPS_BOOL_ATTR_RO(throttle_reason_pl1, POWER_LIMIT_1_MASK);
>> @@ -790,12 +802,20 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
>> 	if (!is_object_gt(kobj))
>> 		return;
>>
>> +	ret = sysfs_create_file(kobj, &dev_attr_rapl_pl1_freq_mhz.attr);
> The convention here is to create sysfs files only for platforms on which a
> feature (in this case RAPL PL1 freq) is supported.
>
> Also are we sure this is only available on MTL and XEHPSDV and not on DG2?
> Since generally a feature appears first on a platform and then is available
> for all successive products. If it's available on DG2 too then we can use
> something like:
>
> 	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>
> See GRAPHICS_VER_FULL for various platforms in i915_pci.c.
I will check again for DG2.
>
>> +	if (ret)
>> +		drm_warn(&gt->i915->drm,
>> +			"failed to create gt%u rapl_pl1_freq_mhz sysfs(%pe)",
>> +			gt->info.id, ERR_PTR(ret));
>> +
>> +
>> 	ret = sysfs_create_file(kobj, &dev_attr_punit_req_freq_mhz.attr);
>> 	if (ret)
>> 		drm_warn(&gt->i915->drm,
>> 			 "failed to create gt%u punit_req_freq_mhz sysfs (%pe)",
>> 			 gt->info.id, ERR_PTR(ret));
>>
>> +
> Remove empty line.
>
>> 	if (i915_mmio_reg_valid(intel_gt_perf_limit_reasons_reg(gt))) {
>> 		ret = sysfs_create_files(kobj, throttle_reason_attrs);
>> 		if (ret)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
>> index 17b40b625e31..0e89b941e3be 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -9,6 +9,7 @@
>>
>>   #include "i915_drv.h"
>>   #include "i915_irq.h"
>> +#include "i915_reg.h"
> Not needed, see below.
>
>>   #include "intel_breadcrumbs.h"
>>   #include "intel_gt.h"
>>   #include "intel_gt_clock_utils.h"
>> @@ -2422,6 +2423,49 @@ bool rps_read_mask_mmio(struct intel_rps *rps,
>> 	return rps_read_mmio(rps, reg32) & mask;
>>   }
>>
>> +u32 intel_rps_read_rapl_pl1(struct intel_rps *rps)
>> +{
>> +	struct drm_i915_private *i915 = rps_to_i915(rps);
>> +	i915_reg_t rgadr;
>> +	u32 rapl_pl1;
>> +
>> +	if (IS_METEORLAKE(i915)) {
>> +		rgadr = MTL_RAPL_PL1_FREQ_LIMIT;
>> +	} else if (IS_XEHPSDV(i915)) {
>> +		rgadr = XEHPSDV_RAPL_PL1_FREQ_LIMIT;
>> +	} else {
>> +		MISSING_CASE(GRAPHICS_VER(i915));
>> +		rgadr = INVALID_MMIO_REG;
> No need for this, the sysfs file will only be visible for platforms on
> which this is supported so this will never be hit.
>
>> +	}
>> +
>> +	if (!i915_mmio_reg_valid(rgadr))
>> +		rapl_pl1 = 0;
> No need for this either.
>
>> +	else
>> +		rapl_pl1 = rps_read_mmio(rps, rgadr);
>> +
>> +	return rapl_pl1;
>> +}
>> +
>> +u32 intel_rps_get_rapl(struct intel_rps *rps, u32 rapl_pl1)
>> +{
>> +	struct drm_i915_private *i915 = rps_to_i915(rps);
>> +	u32 rapl = 0;
>> +
>> +	if (IS_METEORLAKE(i915) || IS_XEHPSDV(i915))
>> +		rapl = rapl_pl1 & RAPL_PL1_FREQ_LIMIT_MASK;
>> +	else
>> +		MISSING_CASE(GRAPHICS_VER(i915));
> No need for this either.
>
>> +
>> +	return rapl;
>> +}
>> +
>> +u32 intel_rps_read_rapl_pl1_frequency(struct intel_rps *rps)
>> +{
>> +	u32 rapl_freq = intel_rps_get_rapl(rps, intel_rps_read_rapl_pl1(rps));
>> +
>> +	return (rapl_freq >> 8) * GT_FREQUENCY_MULTIPLIER;
> Use REG_FIELD_GET to extract the freq.
>
> There doesn't seem any need to have 3 functions here, let's combine them
> into a single function and use REG_FIELD_GET.
Got it. Will fix this
>
>> +}
>> +
>>   /* External interface for intel_ips.ko */
>>
>>   static struct drm_i915_private __rcu *ips_mchdev;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
>> index 4509dfdc52e0..4adc6aaedba0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
>> @@ -34,6 +34,7 @@ void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive);
>>   int intel_gpu_freq(struct intel_rps *rps, int val);
>>   int intel_freq_opcode(struct intel_rps *rps, int val);
>>   u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat1);
>> +u32 intel_rps_get_rapl(struct intel_rps *rps, u32 rapl_pl1);
>>   u32 intel_rps_read_actual_frequency(struct intel_rps *rps);
>>   u32 intel_rps_get_requested_frequency(struct intel_rps *rps);
>>   u32 intel_rps_get_min_frequency(struct intel_rps *rps);
>> @@ -47,6 +48,8 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
>>   u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
>>   u32 intel_rps_read_punit_req(struct intel_rps *rps);
>>   u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
>> +u32 intel_rps_read_rapl_pl1(struct intel_rps *rps);
>> +u32 intel_rps_read_rapl_pl1_frequency(struct intel_rps *rps);
> These should be static and not in the .h file. Anyway I think as pointed
> out above these 3 functions should probably be combined into just one.
>
>>   void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
>>   void intel_rps_raise_unslice(struct intel_rps *rps);
>>   void intel_rps_lower_unslice(struct intel_rps *rps);
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 5003a5ffbc6a..68ff98e27b8d 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1818,6 +1818,10 @@
>>   #define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
>>   #define MTL_MEDIA_PERF_LIMIT_REASONS	_MMIO(0x138030)
>>
>> +#define XEHPSDV_RAPL_PL1_FREQ_LIMIT	_MMIO(0x250070)
>> +#define MTL_RAPL_PL1_FREQ_LIMIT	_MMIO(0x281070)
>> +#define RAPL_PL1_FREQ_LIMIT_MASK	0xffff
> Use REG_GENMASK(15, 0) here.
>
> Also:
> * The registers now need to be sorted by offset. Let's move these #defines
>    to gt/intel_gt_regs.h
> * RAPL_PL1_FREQ_LIMIT_MASK will need to be indented a couple of spaces as
>    done for other registers
Sure will move it to that file.
>>   #define CHV_CLK_CTL1			_MMIO(0x101100)
>>   #define VLV_CLK_CTL2			_MMIO(0x101104)
>>   #define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
>> --
>> 2.34.1
>>
> Thanks.
> --
> Ashutosh

Thank you for the review

-Suja

