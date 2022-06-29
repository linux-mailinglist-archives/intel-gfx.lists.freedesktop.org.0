Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3197F55FB1C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 10:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD1B11287D;
	Wed, 29 Jun 2022 08:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D9E411286F;
 Wed, 29 Jun 2022 08:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656492947; x=1688028947;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nKKByBWv+RbztOIbzeDrG7zqNPnC0zUGmAtwMlhBMAg=;
 b=dmD7iYxJ4d0q1ik/8Rh2n+xzRvlyaRbdvcuAMGhmeUTNJjyZElIXsmb+
 d2E9dDwfzh0MeSbPTI4hS8pm4LSjmdvVH9RraVLbnR5themJzopipbWy4
 2b/snYVFBq+Z77seOlWMkR0TNPalKDI9H4BZdC0zf6S49fmZHCGC9UsdZ
 DxMiDDNGAHQkTPVGSPqSD1aTEy+Pp1opFne0rSklcNk4UiIBSOnsfoQBq
 zn5n4i278jHw0e0bY5Nshm6PzVDjZ1s8tBXZ3S22mkPVFS4g8U3F9Q91w
 oB0RXF7mC9QunNf1DOlSfhHbJlgk28O97BZCmdob9obvFvePK+YwCA0Q2 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="262382950"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="262382950"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 01:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="565372665"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 29 Jun 2022 01:55:23 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 01:55:23 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 29 Jun 2022 01:55:23 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 29 Jun 2022 01:55:22 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 29 Jun 2022 01:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hzPfxVcBV1Bh4V4Eyd+PZOnl7cYrvyLaN/WyC6UiKldkGCAdZXVSzBKWoEhYJgLlg7I6ZwRKasEjbQo5YPb/nBduwDGDQiA7WHtNIjxs1mnLMoZuyuRdDF6K4YMiOV4IDkPjdkMAEJuSAHKXZ5lIvcJIXMVvP0yxw7xClFc3au7OtgyrndKVaIcTDd/hvKSFS7MLxUbdw02hHbonMQ4I5qHCPA+Yz2/jx3rjNq+ejQazi/gtPEw+axv+dONcCpxBMJ/JsVCs/pl7aCXF8Km9altf/8T3RABZCJCIsTgE4ERK1xct/GxjzYS1p7Gv/kewVCJu0OgaY7HFMxepGRExkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VnrGjuO3VToH/Z1ApdU4eGBA8n1uie1UVuzR1R07zQ0=;
 b=WfEf0RpieILTOWt5c2IDjuCl9k1cDDR44PQ4f2o1HiArkPhvZIBAcixcxO38fXJyWhmsgDQsNQ3YAeQqGju4TnR2VkWX/dstWhP25kpQaoKQTpJyymbWmo4g22j9WhMRKpsV+ccxZn/PyIejGnYarPRD71ss7TOnJHNP1V66nhYoVZz94wZYTAgPQu1+MpBevL7KYH0SuV9MnD7F7UmjeC5NSLkMoVl3JyclDrWI3e5dAB0BJ1kiMbIMhKj1c82JqityRjX5lS5bDOHFM47Oi02X11npb5Qf6hZPRmSKY6DROZBQ13t7RXUylJOK4d2IusHEmJgIKqpo25LzLH48Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by DM5PR11MB0011.namprd11.prod.outlook.com (2603:10b6:4:6b::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Wed, 29 Jun
 2022 08:55:12 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398%8]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 08:55:12 +0000
Message-ID: <57e33def-e5a6-1adc-ff9f-2cec251d676c@intel.com>
Date: Wed, 29 Jun 2022 11:55:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20220628131318.197965-1-matthew.auld@intel.com>
 <20220628131318.197965-3-matthew.auld@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20220628131318.197965-3-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0150.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::8) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 05ee1c2d-dd15-468f-503b-08da59ad139b
X-MS-TrafficTypeDiagnostic: DM5PR11MB0011:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Z3hdswdV21OcWTX8a8PAPGoYQlcLPn/sXl/+mM/y2toJa3/CVtQAmFPM3FYfIAvO2w4yFDivsziH4EcyIm2IfdIhGs2U5vRuno5mYIv/FPmR7iTccEdaHK4EglUYBILUyNvViaxgb0NNc4Fnay1Q/Ssylg1yFzT+BYiZsQHAEd6fRJq+e3Ok0BTTWByzgiJnO9DLvAnWtrFZ6v6ahqFl34AXFNDtRkGMPi2PLrOvA2nZ95P7noyXkOl/vI62gwFt4f4ftSOj+Kqyaw741SQL+Yx9Cp4TnP2iRkk72ECUhOUfa82nCoVT48pDbZt56I0QoXi1qMi2+jatNZN7bqOCU0uQjbJoLXY55wRTATTBR6x7d/iJ6maNfl3R4OLO2JXsHKjj7QhwQEgXWLP3h8OaBglJ+ODUTrHe3spOKJ9fYk2LT9nuvj1IJcCqZ4aQujQXgHG6elR67+6exBqEMGTK27sHWkqZYfPgcWRan3wjoY+ne5X/QMLyvLQdDXiFJvwGcww9dc9CAORcLdTcWMVui/cqic4fgbXx11XY/SV/eKAFi2Q7AsmCOUpdK39D55Mp81vmRNs4ZUY7uoaKKRskC/OJeEgrjZCo8TPgdw/WExVOdfoXhJaFEQUx4Z/2CNbTq9ZTToyxgjyHOW+MDKXMqGx2joM4tzIf53RS/3Kb8d7dSs7IRi1td2vyE11mON6gaBCnL2XPYAnOaA5xoRLbd0m0DG/JowhwZKZdW+5rDpPdAywxgIAxkMeQAF1I/FoamCu8DnWbuP9V2IL1jWnbSBgLBIBtTkAh3F5xLw3xLF/4HMjl4kzymjmgtssJqrQS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(39860400002)(376002)(346002)(136003)(6486002)(5660300002)(66946007)(2616005)(478600001)(4326008)(66556008)(26005)(8676002)(8936002)(83380400001)(450100002)(38100700002)(41300700001)(186003)(66476007)(6666004)(6512007)(31696002)(86362001)(53546011)(6506007)(2906002)(82960400001)(31686004)(316002)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTJHVWhhWUZ5WCtsVDJmU0pmSzVnTXlQdWFLODFtYVVWaE12M05JdkgxZUUv?=
 =?utf-8?B?M0EwYmM3VUJxR3ZjV29aRFpSVzhzNXZFSWJXemFuL1FQQTNOYWlJUFZXMlY4?=
 =?utf-8?B?ZW5HMVliVUphR3BHR3RCb1J1YWwzTktHMmZDRFFLSXEwTGdBUHd2RTNiZDUr?=
 =?utf-8?B?YmMzTVRpdERvRVJocmRPbmVlMXdmbTQ4STZxL1NSaGFaSURuZ2FaNTBIOG93?=
 =?utf-8?B?Ymxja2pjcFdJSWd5YVVNaGVaMHRObHZLWEEySE56bUxRbzZGVTBpRU90ZEk5?=
 =?utf-8?B?dnIyU3M4dk52Rko3VW00bkpyZ2ZxSS8xbHN0N0hmMG5kampDdWhvaDU2VEVq?=
 =?utf-8?B?Uk9vWlJMMnNORUYyTWtkOFpIVjA1eDBBbTYrczc4MDdSZXBPM2RlU21Ld1py?=
 =?utf-8?B?OE13VTRtVFgvQzBtUFlPOGdoQ09DeWQvL1pOdFRZaXBSOHNrYkhEWEJIRTNU?=
 =?utf-8?B?VmJtM1VMdmtoQko3dmZzTVZ2Q2ZnYUVCbDYxNUxFbS9ra0o4NXN4d3pZKzJs?=
 =?utf-8?B?OWtKd1NsYkxjZ2RXREtnTStQakNjZmM3STVJcVhPTE1YZ1p1T3FjWFk5S09R?=
 =?utf-8?B?NHROYURHSUhiOURDdmhJZ0hzNStFdllGWnBKSEo3WUxTMk13Q01OVCs3czJD?=
 =?utf-8?B?SmJuOEo0NlFxYXFQeFRvVG02cFhqcFFLem9vNWVFOC9MKzFDTWt6VEZ0U3NQ?=
 =?utf-8?B?Z0srZmI1NCtrc3c0VDVaRktBK3YwVG9oM3dCaTY5OGkyZ2pZVzlBSXRNeitJ?=
 =?utf-8?B?a0I2MkJxK2FTSVBNU1A5enBYaFRnM1VocVRaUVRPUnBZQ2VUVXVYQzBwUmQ0?=
 =?utf-8?B?Z1E3RWJ3SlFBeTIrUTMrRFhLMmlxMjBhaXMvOGV1N09CVTJKZWt1ckNUQU9X?=
 =?utf-8?B?OGRuZ0NhU05ZZkYyMmJpMmlFdFVoOXFtbm1qdDRpdWZwbEIzZkttdlQxVmh0?=
 =?utf-8?B?RHlCa1hDdHdnb05Sc2xUM3J3dFRXMktTWStHUGlyelpWM1VhcW8vWENNOUVu?=
 =?utf-8?B?QWZPQjFQbTNtZVdvWm5vdVcwaW4vVEc5ek5xNDQzZUF1Q283aWJsQWh1eVNE?=
 =?utf-8?B?U0R0b3Z1YlVXeEcrbWNhTm1IZ0t3cFJ1Q3R6WkVvTERucndkNUVzNHhrbnUv?=
 =?utf-8?B?TytKZzM0RHdHcFpMNU9KeTVTTVkrOGRDSjVOSHBJSm1UQTFtbC83cFlKWHNY?=
 =?utf-8?B?RzRNMDYzbm9LNkhuRW1UT2dWSzVUS0xCUFlyZWppTThjMFRJNVc4TlZGVEQ3?=
 =?utf-8?B?ZjhjMHdISlZFU3UwSmlwRzFEUWp0S3RONmNCNGtwdXUrUGs3eUFHeUlva3NT?=
 =?utf-8?B?M0JwRGpKd1VhNXhBZlZKUDBsQ0hqRDlPTS9Fb3UxcEh3SVg3M0dJWVdzOFpH?=
 =?utf-8?B?ZFUvcld1MS84bHVXQzFNRnF1QUxmNU4rVWcyYVNDWEdjREprRGxhZU9hdTlO?=
 =?utf-8?B?L1dlZ1hFb2U1c3l6dmJEZmtVUFdDREE5d3hCaU9CTCtQMXNNTDd4SmZGOERw?=
 =?utf-8?B?SVQ2WDdyWEEydjhWQzMzYTVLUTlXLzU3Vk5uS1BxTDE1ajlKOXpPTW1JQmk4?=
 =?utf-8?B?eVRBTkdVdGxZRU56UlA3Y3AySmZUTGtEaEhuNmhxV0plZkcwbEdESmJhaTkv?=
 =?utf-8?B?NGVYbm9aS2pKbS9yY3ByZithTFRKalVIVU9TVHhQRTEwV0RPNjBzMmJzRW13?=
 =?utf-8?B?NEFEcTlvdDhJRTRzRFpVUVdKYkNyK2diZDY4ZnlRd1JtaTRIZ0xVcmQyNSt4?=
 =?utf-8?B?QStOZHFUcXFCdUZSUHpSZkhDa0ZKQUlOcE01WVlVRDVvZUU0cjhhZVFPdklH?=
 =?utf-8?B?ZmZ5QStqQlVLRTBHRXg2WlFUSXBWVG8yOHJzUkIvNVFTeWkwcWFMc3NkQ093?=
 =?utf-8?B?ZzJyK1RFWi96UzQ5WExOa2tnOXQ4Lzl0Q0VrSUQ5SGNUZG9GUG5EOXZnM3JQ?=
 =?utf-8?B?ZFYrWUNFK3RrbmJabEpOZEVWVTBuN1kwZjUzejFRbU1RUm8wWXlqM2NkdG1w?=
 =?utf-8?B?VWRDTVVTQnUrM2tRUkZWQnFWczBoU2ppeEUwSlZXSTRDdEhBVnBjWGd1amJV?=
 =?utf-8?B?eFQwQ0RSZzg4MGFBeVM0VTR4YTFSOEV5MGVva01ZcmhDSi9WRWFVdHhQMDc2?=
 =?utf-8?B?VkFGZU5XVk85a3NHNVFvSmlDT2ZWNktPL2djR3lKVVJOa3h3TzRJeWFZNjN6?=
 =?utf-8?B?Nmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05ee1c2d-dd15-468f-503b-08da59ad139b
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2022 08:55:12.2800 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fhgKSbHl8Nf/1q8jccjzgzaooaGFSZUDnVWtBt2t7d6mR+sh8yiXGubD5NabPI9kAJfAd+xfJiUBQCT6tdEK1yWgFAfelP0tTBCZmoH7bbg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0011
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3]
 tests/amdgpu/amdgpu_command_submission: fix uaf
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

Looks good to me.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>


On 6/28/22 4:13 PM, Matthew Auld wrote:
> ../lib/amdgpu/amd_command_submission.c: In function ‘amdgpu_command_submission_write_linear_helper’:
> ../lib/amdgpu/amd_command_submission.c:201:13: warning: pointer ‘ring_context’ used after ‘free’ [-Wuse-after-free]
>    201 |         r = amdgpu_cs_ctx_free(ring_context->context_handle);
>        |             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ../lib/amdgpu/amd_command_submission.c:199:9: note: call to ‘free’ here
>    199 |         free(ring_context);
>        |         ^~~~~~~~~~~~~~~~~~
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Petri Latvala <petri.latvala@intel.com>
> ---
>   lib/amdgpu/amd_command_submission.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/amdgpu/amd_command_submission.c b/lib/amdgpu/amd_command_submission.c
> index 4dc4df95..16939653 100644
> --- a/lib/amdgpu/amd_command_submission.c
> +++ b/lib/amdgpu/amd_command_submission.c
> @@ -196,10 +196,10 @@ void amdgpu_command_submission_write_linear_helper(amdgpu_device_handle device,
>   	}
>   	/* clean resources */
>   	free(ring_context->pm4);
> -	free(ring_context);
>   	/* end of test */
>   	r = amdgpu_cs_ctx_free(ring_context->context_handle);
>   	igt_assert_eq(r, 0);
> +	free(ring_context);
>   }
>   
>   
> 
