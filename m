Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8156B0C98
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 16:25:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F01E10E605;
	Wed,  8 Mar 2023 15:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F93810E607
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 15:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678289134; x=1709825134;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ql1soQRGdi54DXk5JpJtVjasvLEk4LQIkXQWLtH8bsE=;
 b=nYRi1PcyozHqhQS5HOyIVg8WlqFRxT74Ul+NUxnkF3vLIwpyu5s/KA/n
 RtjXhg9guudQ3D0QnQhtJsxkKqrCThPARVmMvXl4dMFKbHengSrkjCs/2
 ja+3qNWELdkeYaQy7htjn9LqU9sdPv0QBShqkk4VjwtVHk4JmCW0DAq1N
 IFMBt2JUa9kplQ2+/0GJy0ePlRY2hbeXpYnCsErNsDWodatSSOlhQOby1
 E+w0IzFWrsGGkfrbGRXs+EERDezVHr+fjRe5vIMbYtZryYe9L1m2AGkPs
 cgsS8fV1vGgQPZ2n0LaRXHiQVKbKz23Wdr77kEM5oiSateFdXydnpLP3w Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="315838216"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="315838216"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 07:25:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="1006360784"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="1006360784"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 08 Mar 2023 07:25:33 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 07:25:33 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 07:25:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 07:25:32 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 07:25:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gFnqLu+nWzDMK65WJn5lY/H6icjCysh5YSWpW3rVr8Q57zHIERT7V31+45WsgBieU44dKA6n3QNNxn11pkz+Ldi9mz+7DKIsch7Ro/EyHjG6bd9/xoQhxbs9aDLhB9Mi8wSk50+Ea2jrGGJLaWws9HG2LlNEGd4NxAp+53m6uQrboKt46xDE4C9/B9lj3ZrshFU0MJmh85IoaWo68NVTXFXGVznDqwyeu2laOD2WqS3cn68kewlGJ0kQnrmbMNY84LGBkNQiffw+jEFwNvbTzNSxir/xW3Zhx1G/+SGxtc4NZnWNl8DeIHIJwdvuKOk6nFG1XedX3812Us3PNtUO0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+BqGg99znJ9DYlIU5Wdl48dvfW6xQ7rP2RG6O5gIay0=;
 b=NSYcosNXrnwLcScj6RWy3/jsKBALfCVgIX1/Mxx8BcSKwBX2wLYdlRH8Y6gd506dBHLs+aRIG/SDvv5wpWLkySyTooGgL7vV1VKeifKcFoaysCmLGQfOTLgOSWQcae3VuuWatsfOmLksmd4I4s7vHdRMbDRghMi2h6cPR8eYYCk984m1pW6nyz09cwOe2cSo7GBBfYvk+Tv6mR1MpQs53MsXdAza3zBCXOTAUDKLr1khrvbkEuwNG2Mk7Cm/P9jYbV+3X3GzqLeuyKyBXA5KtBnEhixnGNX71ZZvyc7i2VbGKr+CBAjYMesnLrUL7yTTKmxCxXjX6IByMW3h9h5A8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SJ0PR11MB5070.namprd11.prod.outlook.com (2603:10b6:a03:2d5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Wed, 8 Mar
 2023 15:25:30 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ba24:c771:dd96:7d68%9]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 15:25:30 +0000
Message-ID: <64a67a3a-c2b9-591b-221f-90944ac71e23@intel.com>
Date: Wed, 8 Mar 2023 20:55:19 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230308102109.2386712-1-badal.nilawar@intel.com>
 <20230308102109.2386712-2-badal.nilawar@intel.com> <871qlzcwzs.fsf@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <871qlzcwzs.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0154.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::7) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SJ0PR11MB5070:EE_
X-MS-Office365-Filtering-Correlation-Id: 983f6154-6d64-4cdd-3471-08db1fe95a0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4Db2extrLKxcrVFxAL4/wAi2xPixLS/ptPMmcfK3an4vPyS9+OkHFI1UDsgAfmN7dXbwxepAj2AuWq3a2lxjic9szZqBhEnX2pRckBV8zmhNbL7+swIgGw9WqlJ87XYCv3tvK5MtD83MO8kPLK/3WKvMkRwTnFxV1CE88uz9/swj0X80xKEZaMVKvj2LlHjZ0W35DrxHZbI9ZfK2I0GZ2Lwcsci3xohRlxch84tUl2rXrQ5u7SjpPV75tt33SPATp4soudDSQkxmxEaXdI16IDAc68pGU9vrufrQg9G2fQmqr9FHaNNvbV5zytYUm2ULxd5gOYEQfLGtNxL/J2ujFzkcMOx/kpjzAlltlvW7qFpvrAFnsdRogS2l0ODqhoY85WxL9GUN9M+L7FQMbuesswBE+f2Qqw/toC7l2x2LZ7NVmlIH06K1CfB7aEio+N2HQzqyQRnnJfd3qckrF5kBBOLYdtMiUHArCLeVtISnUnMb7hNBQ6y/cpqV/JESs7qDid3RMenGaB0yVoUqbeiglo32jClv7Gf6AJ9QPZbbkIaenXzwhNZKuZSOfWxzGy4vM1i4j3/kc+6X7noDmSEiVeV677yGq64P+Dqy5oAMiUBenCPk5Wlj7Koa4OEK6dX1gFlhpEb+XnUrXNA9hrhAXqpIxutQOG2oaUMv3KYf65ac0bBcuXC+lRCkygpZmmxyP6GuvKIFsY4FxGLzD1IydNeWc+i0KOd4nDFh2NCm4YI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(366004)(346002)(136003)(376002)(396003)(451199018)(83380400001)(86362001)(31696002)(6506007)(31686004)(6486002)(316002)(36756003)(82960400001)(186003)(2906002)(66476007)(6666004)(41300700001)(8676002)(66946007)(2616005)(478600001)(6512007)(26005)(66556008)(53546011)(8936002)(4326008)(38100700002)(5660300002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWQ5NlNxeHMxWm56NWJQb2xmMWozZ0hTVnM1Y2d0TWswcGZCODNzNWRkTXpp?=
 =?utf-8?B?ZXllZU5mRXVGd0pHNDRYdEo3eWRkM0RCN2dDZENwWXRVbnlMc3JxVjRvWVR6?=
 =?utf-8?B?ck1uQXhEajU5Y2k5aWFaUUxvT1FnMWVEK3pGVXY5M0NFSU4rRTVZZ1JwUEcr?=
 =?utf-8?B?Z0tlVW94Uk5PbFFLbXhnQVRuRk83Y2R6K3ZrVFAxQjBtak9yeXFXS1pQUTVO?=
 =?utf-8?B?YTI1NWpHRk5hU05ra2tsTlZzYXlzOVNKZ1RMRGhiNzFxeWRzOFRJS3ZwR2NL?=
 =?utf-8?B?Zlo0M28xS2h1dklCN1RBSFRHQXBjUVRpQTNPR05EMGlCRWZ3WkZLaHMrSXRu?=
 =?utf-8?B?dm1aWWhzL0F0TUFwc0R1aUVRcTd4S1V3UzR3akZrdlpXdUUvMzhoSTNBazM2?=
 =?utf-8?B?TUp6ckd5MjYwNlljZUhWRkVQZEpYSWE2UkJSVVlwQW5QYXgxRlIzY3o2MWpj?=
 =?utf-8?B?NTVWdGdjdHp6NHJmL1BBcy90MlA3d29jeHdqS1A5UEErMEZOQTg2bzNLZ0p4?=
 =?utf-8?B?V1E3bTN4VmRzbXpoYzFhUDUzbjg2RlhPQmtnd3gvemJZZ05nbExWY3haOHRO?=
 =?utf-8?B?d29LZmlIV0VlYXBzTE15Ky8vM1dicEoyV05ScGNJTGlIWGxBaHlFYmw2RGdM?=
 =?utf-8?B?Tm5SMThOdEtSSFdLT1lLS1h0OTZxOVFjY0oxUTVzYTI2L1MyNzR1SlUrU3NI?=
 =?utf-8?B?K1VwNi8vUFlXYm1HR21yNHhJVnRmR3JoVkJFTG5JYVV1RFZtdWJ4L3JTOVZS?=
 =?utf-8?B?QzV2eGplZVdGdXdWSEZHZHFmNnBsNnViTmtSeXB0dmlpL0NScFp1ZDY4RlVI?=
 =?utf-8?B?dFYrallGMzdEcWpIMGl6SjRvVURmUHNpTHlXRGlCTzRNbVRPMFd5SXNobGZ4?=
 =?utf-8?B?RkpjdHhHVFZVNHdVMEJ5UVlMRks4d0p4OHVRNlZzd0hiNkF1QW9FL29ZUngv?=
 =?utf-8?B?M3dXc3IzcGkzYnc5Tldqc0JJT09rVWhGZWZ0TUc3SVN4amYreXhaYXhrMnc4?=
 =?utf-8?B?R1gxbU5KeUtVVzF0cnZ0ZVlGeko4RnNtczVHUWJrRnpPVDZHN3ptc2JCU01L?=
 =?utf-8?B?eXIrK3VWY2RENGlpK3dHT1c5RFFYZktlaXM4Rm9DTVF5OUluNW1SK2Zlc0xN?=
 =?utf-8?B?SXRBTkZqdDRFSFVBMmRhWWg3Mzh6dDYrbE1BZk5OVlRzK2Y2bE5tc2R6T1Q3?=
 =?utf-8?B?Um1XMS9VSEw2MGhUY0x6aGZVQU8vVXp5WU5wY25mYXdpbk5YejllRzMvQS94?=
 =?utf-8?B?Um1yOTc0QXkzeUFzeFBrQUQ4MmlDYVZNOE93QzJtWE1QclRxMmk0bkFmN2ww?=
 =?utf-8?B?Y2hZaUhSRGxGd20zWWpOajFmK3dUUlhlVG5GZG9uNHJiU0hRc2J3TS9FdFow?=
 =?utf-8?B?VWZKdlRpK1RVbEdlaDM5dXJKK1VVYzUwdzJJU2lXQktRZXlLd1dseG50UW9R?=
 =?utf-8?B?S2QrRGRJblg0eG5vajRTbjhnTTVVbkNVRk9sYmVXSUdsRlI1MmRNSit4TG9z?=
 =?utf-8?B?Z09hZm03K2hPZGRIQlZUeXpRWnhyaXRrd2FEZEV4ekp3YjFYZ0lMVHZMN29p?=
 =?utf-8?B?Ui9ROG1hOGRKNFhxeVJDbkQvTTd0b1RtcC94S1orNzM1WWtUM2FnYkFPSTNL?=
 =?utf-8?B?em9SWkVzMzVvMWdINlVpVDVoVHl3N2ZranZNemp0TkFOTUJwOTc5bTE5WlRo?=
 =?utf-8?B?RjFOSzdFMFhQQkM3My9SYVJHS2FRYU1Ma1JTK2x1K2VhWXdCTHdXNUFHS0oy?=
 =?utf-8?B?WVVpRmFHS2dhbVZnL3RsSzJtdWN4THZEOW40Y29vTUNqSCtsUmpoWlFES3ph?=
 =?utf-8?B?L1AvbDYrdUlia3c4VmYvNk02RXRaZ3lIeTkrTHZxUGJ2WFp5K3JMYTRodXJs?=
 =?utf-8?B?Sy96RE1sM1pURnRjczVwbTkrdkFLUnI4ZWVETjNZdk5KNU5YVFpUenZTOXJw?=
 =?utf-8?B?SU9ObXJkVkord3QxVkE0bDRBYndqSUJRUzB6ZUcvTXRuMytXWGhDc25nSHlG?=
 =?utf-8?B?eW1hZWFTNnRBUG4rM2lkMnhEa0lxa1Y0UHZod2NuZDlMS0JqMUJTUXUwcXhp?=
 =?utf-8?B?dys2NW1xOXMyVC9kQmF6V1QxKy9CNVRxZWxXMmpNQ2pyRWluUktnZnhnNjBw?=
 =?utf-8?B?OW51Sy9OZExEOGJkYmlQK1lWR3lkeDMzOFhwUWlWYzhuNUF2d1N3VEJJNE9H?=
 =?utf-8?B?SGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 983f6154-6d64-4cdd-3471-08db1fe95a0c
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 15:25:30.4147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +JG5xwdBC1NXfv5F39d8Gmy8SlJtXjuI/2LnK7hYZ1UbglAGhy1/sUy7gktfNA7RrPlnC/4+ogEpemeTXoFQHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/mtl: Add
 Wa_14017073508 for SAMedia"
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
Cc: gregory.f.germano@intel.com, hima.b.chilmakuru@intel.com,
 srikanth.nandamuri@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On 08-03-2023 16:48, Jani Nikula wrote:
> On Wed, 08 Mar 2023, Badal Nilawar <badal.nilawar@intel.com> wrote:
>> This reverts commit 8f70f1ec587da0b0d52d768fd8c3defbc5e5b55c.
> 
> Reverts need a commit message too. The why. The cover letter is not
> recorded in git history.

I will add commit message.
Regards,
Badal
> 
> BR,
> Jani.
> 
>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
>>   drivers/gpu/drm/i915/i915_reg.h           |  9 --------
>>   3 files changed, 1 insertion(+), 48 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>> index 85ae7dc079f2..e02cb90723ae 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
>> @@ -20,31 +20,10 @@
>>   #include "intel_rc6.h"
>>   #include "intel_rps.h"
>>   #include "intel_wakeref.h"
>> -#include "intel_pcode.h"
>>   #include "pxp/intel_pxp_pm.h"
>>   
>>   #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
>>   
>> -static void mtl_media_busy(struct intel_gt *gt)
>> -{
>> -	/* Wa_14017073508: mtl */
>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>> -	    gt->type == GT_MEDIA)
>> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
>> -				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
>> -				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>> -}
>> -
>> -static void mtl_media_idle(struct intel_gt *gt)
>> -{
>> -	/* Wa_14017073508: mtl */
>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>> -	    gt->type == GT_MEDIA)
>> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
>> -				  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
>> -				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
>> -}
>> -
>>   static void user_forcewake(struct intel_gt *gt, bool suspend)
>>   {
>>   	int count = atomic_read(&gt->user_wakeref);
>> @@ -92,9 +71,6 @@ static int __gt_unpark(struct intel_wakeref *wf)
>>   
>>   	GT_TRACE(gt, "\n");
>>   
>> -	/* Wa_14017073508: mtl */
>> -	mtl_media_busy(gt);
>> -
>>   	/*
>>   	 * It seems that the DMC likes to transition between the DC states a lot
>>   	 * when there are no connected displays (no active power domains) during
>> @@ -144,9 +120,6 @@ static int __gt_park(struct intel_wakeref *wf)
>>   	GEM_BUG_ON(!wakeref);
>>   	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>>   
>> -	/* Wa_14017073508: mtl */
>> -	mtl_media_idle(gt);
>> -
>>   	return 0;
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
>> index fcf51614f9a4..1adec6de223c 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
>> @@ -12,20 +12,9 @@
>>   
>>   static bool __guc_rc_supported(struct intel_guc *guc)
>>   {
>> -	struct intel_gt *gt = guc_to_gt(guc);
>> -
>> -	/*
>> -	 * Wa_14017073508: mtl
>> -	 * Do not enable gucrc to avoid additional interrupts which
>> -	 * may disrupt pcode wa.
>> -	 */
>> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
>> -	    gt->type == GT_MEDIA)
>> -		return false;
>> -
>>   	/* GuC RC is unavailable for pre-Gen12 */
>>   	return guc->submission_supported &&
>> -		GRAPHICS_VER(gt->i915) >= 12;
>> +		GRAPHICS_VER(guc_to_gt(guc)->i915) >= 12;
>>   }
>>   
>>   static bool __guc_rc_selected(struct intel_guc *guc)
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index f2ce4bde6a68..b177cdeee1ec 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -6469,15 +6469,6 @@
>>   /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
>>   #define     PCODE_MBOX_DOMAIN_NONE		0x0
>>   #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
>> -
>> -/* Wa_14017210380: mtl */
>> -#define   PCODE_MBOX_GT_STATE			0x50
>> -/* sub-commands (param1) */
>> -#define     PCODE_MBOX_GT_STATE_MEDIA_BUSY	0x1
>> -#define     PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY	0x2
>> -/* param2 */
>> -#define     PCODE_MBOX_GT_STATE_DOMAIN_MEDIA	0x1
>> -
>>   #define GEN6_PCODE_DATA				_MMIO(0x138128)
>>   #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>>   #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
> 
