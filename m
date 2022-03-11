Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB9D4D5A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 05:53:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AAAF10E262;
	Fri, 11 Mar 2022 04:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AB710E16C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 04:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646974374; x=1678510374;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QDKvDrL5KTIVnuY8h0XIg+mCGxhaYAD6+5iJuQymGXc=;
 b=O9rYFbbQ2U+pd8QdPUq0SVBGGbH/A/Q/FtTyX/sZHsWvht44O4cSDb3p
 8fYfDNaWahvh9SP1JLN7tIS9ILFRngN7/DQbyp87ncFKF7QYlozcRPyOc
 q6Fb2fR/gSJzYBoPRz0sS4QNNnrA/XxOpqMplcWf4PSGRmwZzJ6Rpldd8
 BlHP5/dXOFLHTihurHiBCvOPWFK10+KV57RNlQll7gT4pyOknR4TtPDti
 TMwyUkrjxQqyUExGEo//b0aK7BT3AZoQKc5hka+FiQ6hIQK7Rjtdw8Tpb
 +WNCpcp3cvvkGDsxMbO0Pdna+OSw0yJfTo8+XLoMXHC2PYs5I+syjE2Cd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="255688987"
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="255688987"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 20:52:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="816415164"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2022 20:52:53 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 20:52:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 20:52:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 20:52:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 20:52:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B2r+dy8EwDsA0CsROGXM1aR1TKBdwZMdeBTUxl41rW72ZjKqF+ffcU6C2Bn5cJtOWU9tX2K5tTd5w8JlEnfEp9wdmFvuxxOvNbhWozqID6pAX+RE115ni2ZlsEA6m5NZMMns+7sCXEyWQDYMwg3+J4akQdzN6WhHnhMvT/2C1EWJhRqBzVrtFPmszqaG/c/F2eVCl/VafcRNsv79mglTmJUKB88BbA2U93+aZviipm0FKGbqWnq4AX23HSJOYRRWJURDNxSWXIf++WoiZQGDZ7B3ONCBkas1YL1BMRIpmF75PcWTBz3o9E+8KhHPbdk6AkGAqYaOyUNvQN02sotiCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y3YC9Eir9y1kAnDlWYQ+dfcZ05LCIQDcQiSeVfoj4QA=;
 b=Rhgk0WN/3HPSLmomB0G8VTaWiDKgbUCYzrzWSpakk2bfdpgF1Q5gUM0GuZMamO4AvlJhhBSFz0l5cYzXDcYctNcu/dH1dnibyNlldfOaQUACe/iPYFzaoF4+d5F9P6ArM8TGHBOAVq5f6IREtusx4kd6Vwy6uudDxJuQHDFiL7rcyuE3ikDpk6wu4QkoHtuOGBpWVG8fy2QtSmVsn+eqVMRVcFIHJY0r93v1CKE/ACu2tfcUqZrvOj0QokmMN3z8Ote19ULrj2bfGfmhCqijAV2WUTxGvAWlEdPED6yOMuHqKqacHWyQiW/KufnG7uQWyLvGCOeNsiKI5Z6Hjj6rpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 DM6PR11MB4625.namprd11.prod.outlook.com (2603:10b6:5:2a8::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5061.21; Fri, 11 Mar 2022 04:52:46 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%11]) with mapi id 15.20.5061.022; Fri, 11 Mar
 2022 04:52:46 +0000
Message-ID: <eb79835d-2cb3-b2ba-65ea-7dbbc578c155@intel.com>
Date: Thu, 10 Mar 2022 20:52:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: John Harrison <john.c.harrison@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220226062732.747531-1-alan.previn.teres.alexis@intel.com>
 <20220226062732.747531-2-alan.previn.teres.alexis@intel.com>
 <c4976a17-1254-c893-6501-e6fa6620a855@intel.com>
 <dc58f444-12f6-6a33-1be7-f0fa004d4b93@intel.com>
 <07d59aa2-2d3c-c9b6-f4c1-359e623934b8@intel.com>
 <e9d4aabd-2677-25f5-dc6c-c8421b5d03f6@intel.com>
In-Reply-To: <e9d4aabd-2677-25f5-dc6c-c8421b5d03f6@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0099.namprd07.prod.outlook.com
 (2603:10b6:510:4::14) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98fd9be1-2759-4ce4-8098-08da031afbf7
X-MS-TrafficTypeDiagnostic: DM6PR11MB4625:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB46258D5B011E92C671CD1C3C8A0C9@DM6PR11MB4625.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7AHlkgNzVQI3MmIFdHLXOI20Qnpu/205RNdhdcZdLOB3NzkJE8ISAMNt7gUGsMM3VHsO4wVTIWwXdsKMDWFaJHCF4ZmeuSF21KL6JSZ6gj4Hdwkdafqo9rYMeeh86X2zP0VwKRPZyNm15ET947WQj9KAYrTZe59XGxiCbZtctMeltyttNblZK7Y9qW3iE1v0ZRypHLv02BqY/ypsSQSUq2dXILlnjQN3qbW5wXOQ4Ryqx3zZoMt6QduJgCq9rFu1mdx0h2C61MItoS7WBrNI0A3S45fFz6rprMxWWmYTuwBwb+hEwlP8suCBNk6fj7LEkIbo9+jeQWHJAh06tqSsIb5ObdXCvs0DS5thCIgzDL09VGC/LZw5p5k5Epih76r58v8kRZECuA1sgnxl7tk0ygbrjZNIqE5X12pIl3MobsgaEjJlWxm4MqWBjudOJfVo0tRdXOPEig2jQCBYaRS+oBWodxgitcS7qaWuHCLLFvUG/zefucISzAuVd+1KIJ2oL/ql0AIJqLd8PYmX+4d24hrf2EnDrYER6K/Gi2Qua3Wu0HoawlIATOZEWEjuCCQhll7CdxQhRreYje29EKz8drCCDG4qHPAlYYfrBlj9OXiBeNNZggEDmpFChIHPFXwGWNvdhLvUG/WaLb4AINZ1P1j+M9hLAkha5gWDR1Zq/hDhArsinQpWtNtUFyQ462Li1UgQHKzVXLajMVcyDizzdTYDzKuxJHN7dSkYR8Zz09BO0DfheTNLRFazJ8XFS0sc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(38100700002)(6512007)(31686004)(2906002)(36756003)(66946007)(66556008)(66476007)(5660300002)(6666004)(6506007)(186003)(2616005)(26005)(316002)(8676002)(8936002)(508600001)(6486002)(966005)(83380400001)(31696002)(82960400001)(86362001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHZGS1hGTmpSeENkK1VBTWdXUUdsRFIrSXB3OXJxdmJEdjE3WFFJRnY0bUx3?=
 =?utf-8?B?M3JaUzBPYjRIUy9VakJySVhUMnd5T1UzdVVrM1M1emR3RUZ5QkVHM1FibjR5?=
 =?utf-8?B?TGVUaFZyQTJiSzYyQmRSRTZZN3RqT0tUSVZZTm9MWTVlOXBmV2tXaTNKZjgz?=
 =?utf-8?B?ZWhRbWwrNzRkdkhCcGp1SlE3ek96Qkp4UUVTelBzblkvUFRyYTFFMmdxWXpD?=
 =?utf-8?B?K3Z4VDY3QW90SmhTb3BYdkgxUDFiUHVwaXZETFI2Lzd2UVhOc3FhakppQi9L?=
 =?utf-8?B?K3BsalRJV1dmZGRNV1o1UHUydy9weWdDRUNGazhkR3dUa0JVVXA5VDgzbG45?=
 =?utf-8?B?SFpEVElBWWhEaURuZlIvRzVFRkxsNk9jNGp0eUsvcGNuNUJXS3NnbEpxS2pK?=
 =?utf-8?B?V1U4RHl3aDdXSVkrTGxxZTdKcjdOa00vN00xTTJhZ0pHMjZZblFRQWVueWE2?=
 =?utf-8?B?djBCMFBGbmdqaHN5cU5LNklaWmdWS2piWmp6WXZlT01uQm9LUTdBZ2JiZU9M?=
 =?utf-8?B?UGtFTytKdmtrblp5d1VkOEZFTWZNRHF6a3JlV3Q0NDVYeWNPaGRMYmhQVzY0?=
 =?utf-8?B?QWF0ZUNUSThoZDkyZWhrV3NvWUdpSTdtNVVRQlhmN1FGS2lOaUVqbnEvaUFv?=
 =?utf-8?B?bzI4L1ZPL1orNEZtdW9yYWh3a1p6UmpoQUlRbkdIVDhSdEs5WUxiNWowaWl0?=
 =?utf-8?B?MlZDbFI0aGUwTmlYYWZQMGhLTE5kOGFveWtiWjRCa3l5Rkw4U2NiRys0RVlJ?=
 =?utf-8?B?b0JNU0x4ZDY0aHFETjlPelF4WXFvdWhDT0hua3hLTXg0S1ArZDF4d0crUTk2?=
 =?utf-8?B?Ky9DTm84ZWpVQk9WMGhkS2pONW9yU1dJVDN4S01vMU54cGhuQndkRTZremFy?=
 =?utf-8?B?Uk94MDI2ZEd3cU9iT2JlU1N6bzJIY1VvN2lBWjdNbFFrbmhRVkZhRFZEYjBn?=
 =?utf-8?B?MStNSGdnbUhYMUxoQ3Z2YXFMa255OG1uTGFiZSt5Qjk3SkpiY0dpSkJ0b2dY?=
 =?utf-8?B?MzZzazNVaWM1ZWdiMVlTSWt1V0ZWYkROMGdoNktyTFIyRHNPS2gvaHFmRlF0?=
 =?utf-8?B?Vy9GeW05WllCVU53c29vQXFuazQ1RFlKdUppY1VmWHk3aFZWNmtxRDJQakRZ?=
 =?utf-8?B?UytqMnc2L0hmUGZYVnVSdUVLa2M5b0llRXd1WDdaWHFZRklqV3R0R0xhcjZC?=
 =?utf-8?B?Wll1ZzZFYlkrNGhzRk1EempQV3IvRHg1MWZrQk5qV1gxL01vRkVvSW0zUmRv?=
 =?utf-8?B?bXUwUVlvdjlpL09mdm9tZldpelBBZkcrVE0vdVA5SE9IUnBxamlZakNqY0ZD?=
 =?utf-8?B?T20rbFRtQzZUTFlVaE9lcFBZOVZLaW9oRTAvZCtsTEdQbGtleDBubU5CK2xv?=
 =?utf-8?B?L2lQeDYzaE0vZllWYWVMWG1jNzBwQjhrN1JaUmo0Zmtkei9YYlFGVE1iUFRS?=
 =?utf-8?B?N3pqZ1hCZjhkSXdvakNDUitySUppT2FaWTl1RWdZWHpmekJveDhBcUFNQlcv?=
 =?utf-8?B?V2s0RDdnYlJDdnRSZWN2d3hubXg0ck9wQUlFNTEyb0dOcjNLbnoxU0VaSWNk?=
 =?utf-8?B?ekFiRnZ0UHJSY0tBcUhaTElYSzhaSWxsbUVGT0NyMjYyMGhtZDJWMm1NMUNr?=
 =?utf-8?B?MDcrUy9hV1pWRlJackVvbnBoWS94d3BaWS9kS2RpUCtUd2pJUC9ORGRIVG1L?=
 =?utf-8?B?RUt3WHlzd2NxRjFJNllDeHVrZUQ3eWFJLys2MjdWaDVWMVJxZThnL3NpajMy?=
 =?utf-8?B?RWkvZmFyVE1lOG0zLzg3aXhWMXVMMk93aTF5WC9ld1E2MXkzMldJWFlKZHE0?=
 =?utf-8?B?Q1pPWFJCZUxwbStGd0V1aWtKZzZ1cnJadGxKeWsrdTZ2MjRDdWluN3ZmdnJZ?=
 =?utf-8?B?ZlR2a0VXaTNneERJT05HamRwQmhPUzdHZkx2c1N6cDBIM2FIazAydzhITHM4?=
 =?utf-8?B?RDJXZ09MVm91OHE4b2ZkWlgyc2lhMFhMZEVIVnQ2ZEo2ZkpaWkFOWnhGaE94?=
 =?utf-8?Q?gDKP6NPnx/PzId9z2dwYys6u8UnyJw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98fd9be1-2759-4ce4-8098-08da031afbf7
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 04:52:45.9868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MuAtjAGHdwX5lZ4NRg3aAj7i5zUFXvlBHXA/AH6Sp+xhkdIzHE9VQaMxAmdKyhkKW+S5d/zgnP9Y8Kuj/OqasAuN1huR3kBICADBQ53lFHR2lCbDxoFa36I7K9AUCK9N
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4625
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/reset: Fix error_state_read
 ptr + offset use
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

i missed something in rev3, but rev4 ended up as a different series.

Please review this new URL for this patch. Apologies for the confusion:

https://patchwork.freedesktop.org/series/101256/


...alan

On 3/9/2022 5:45 PM, Teres Alexis, Alan Previn wrote:
>
> On 3/9/2022 5:18 PM, John Harrison wrote:
>> On 3/8/2022 11:47, Teres Alexis, Alan Previn wrote:
>>> On 3/1/2022 1:37 PM, John Harrison wrote:
>>>> On 2/25/2022 22:27, Alan Previn wrote:
>>>>> ...
>>>>> This fixes a kernel page fault can happen when
>>>>> multiple tests are running concurrently in a loop
>>>>> and one is producing engine resets and consuming
>>>>> the i915 error_state dump while the other is
>>>>> forcing full GT resets. (takes a while to trigger).
>>>> Does need a fixes tag given that it is fixing a bug in an earlier 
>>>> patch. Especially when it is a kernel BUG.
>>>> E.g.:
>>>> 13:23> dim fixes 0e39037b31655
>>>> Fixes: 0e39037b3165 ("drm/i915: Cache the error string")
>>>>
>>> okay, will add that.
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c 
>>> b/drivers/gpu/drm/i915/i915_sysfs.c
>>>>> index a4d1759375b9..c40e51298066 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_sysfs.c
>>>>> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
>>>>> @@ -432,7 +432,7 @@ static ssize_t error_state_read(struct file 
>>>>> *filp, struct kobject *kobj,
>>>>>       struct device *kdev = kobj_to_dev(kobj);
>>>>>       struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
>>>>>       struct i915_gpu_coredump *gpu;
>>>>> -    ssize_t ret;
>>>>> +    ssize_t ret = 0;
>>>>>         gpu = i915_first_error_state(i915);
>>>>>       if (IS_ERR(gpu)) {
>>>>> @@ -444,8 +444,10 @@ static ssize_t error_state_read(struct file 
>>>>> *filp, struct kobject *kobj,
>>>>>           const char *str = "No error state collected\n";
>>>>>           size_t len = strlen(str);
>>>>>   -        ret = min_t(size_t, count, len - off);
>>>>> -        memcpy(buf, str + off, ret);
>>>>> +        if (off < len) {
>>>>> +            ret = min_t(size_t, count, len - off);
>>>>> +            memcpy(buf, str + off, ret);
>>>>> +        }
>>>> So the problem is that the error dump disappeared while it was 
>>>> being read? That seems like it cause more problems than just this 
>>>> out-of-range access. E.g. what if the dump was freed and a new one 
>>>> created? The entity doing the partial reads would end up with half 
>>>> of one dump and half of the next.
>>>>
>>>> I think we should at least add a FIXME comment to the code that 
>>>> fast recycling dumps could cause inconsistent sysfs reads.
>>>>
>>>> I guess you could do something like add a unique id to the gpu 
>>>> coredump structure. Then, when a partial sysfs read occurs starting 
>>>> at zero (i.e. a new read), take a note of the id somewhere (e.g. 
>>>> inside the i915 structure). When the next non-zero read comes in, 
>>>> compare the save id with the current coredump's id and return an 
>>>> error if there is a mis-match.
>>>>
>>>> Not sure if this would be viewed as an important enough problem to 
>>>> be worth fixing. I'd be happy with just a FIXME comment for now.
>>> For now I shall add a FIXME additional checks might impact IGT's 
>>> that currently dump and check the error state. I would assume with 
>>> that additional check in kernel, we would need to return a specific 
>>> error value like -ENODATA or -ENOLINK and handle it accordingly in 
>>> the igt.
>> If an an extra check against returning invalid data affects an 
>> existing IGT then that IGT is already broken. The check would to 
>> prevent userland reading the first half of one capture and then 
>> getting the second half of a completely different one. If that is 
>> already happening then the returned data is meaningless gibberish and 
>> even if the IGT says it is passing, it really isn't.
>>
>>
>>>>
>>>> I would also change the test to be 'if (off)' rather than 'if (off 
>>>> < len)'. Technically, the user could have read the first 10 bytes 
>>>> of a coredump and then gets "tate collected\n" as the remainder, 
>>>> for example. If we ensure that 'off' is zero then we know that this 
>>>> is a fresh read from scratch.
>>>>
>>>> John.
>>>>
>>> I'm a little confused, did u mean: in the case we dont have a 
>>> gpu-state to report, and then the user offset is zero (i.e. "if 
>>> (!off)" ) then we copy the string vs if we dont have a gpu-state to 
>>> report and the user-offset is non-zero, then we return an error 
>>> (like the -ENOLINK?). If thats what you meant, then it does mean we 
>>> are assuming that (in the case we dont have a gpu-state) the user 
>>> will never come in with a first-time-read where the user's buffer 
>>> size of less than the string length and be expected continue to read 
>>> the rest of the string-length. This i guess is okay since even 6 
>>> chars are enough to say "No err". :)
>> Sorry, yes. That was meant to say 'if (!off)'.
>>
>> Hmm, I guess technically the user could be issuing single byte reads. 
>> User's can be evil.
>>
>> Okay. Maybe just add a FIXME about needing to check for 
>> changed/missing/new error state since last read if the offset is 
>> non-zero and otherwise leave it as is.
>>
>> John.
>>
> Sounds good - will do. Apologies on the tardiness with the responses.
>>
>>>>>       }
>>>>>         return ret;
>>>>
>>
