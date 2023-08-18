Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E587805C9
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 08:02:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B2B10E456;
	Fri, 18 Aug 2023 06:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADD910E456
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 06:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692338564; x=1723874564;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZlKT70OULHM7m0a2Oag8qgKIjN/acNtYXgwYKwKJvVA=;
 b=bjQeA8EqktDFG4FSh4XrhluOWDXFoO32TmOy451vQm1ZSaSy2Etps+Qo
 VEde/XTPO8dES2XpSH1XpI/rs3s5wRmYV+ZB7TzBqb8yatqKU/h3BC87N
 6ePOoSRXdnMixVPcyysuqHqCyyXOV8ac00fZC3wkErlO0hpOSNk4lUdAq
 pbRfbbSomszAn6NtLJ7woPmF5Lbt87NMmEXs6TNFJAqT5paVSIZg4njPi
 6oWNYsv83Ty5scTAN//IVmb8SUXVyfY2cormXfnPigO9zt979aKM8ndOV
 wNCGsphzdjAJ8EfOOGR6DMddQKZQS33PzLZHez4i0eqFJyoQ0s7t6sdKh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376777066"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="376777066"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 23:02:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="764436474"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="764436474"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 17 Aug 2023 23:02:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 23:02:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 23:02:43 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 23:02:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PgZg863sH4j/bCGIZokUDd/hapWkhwILwsH3U4OLUXOKEzKCsuNKwYSopx7cUAAmoxwxeXxsl1Z3P/m0yVeE5Gpb8QhtMjDtKffMBlrqVycxSfbE558Ijehh8F6rS/6C42cMk03h/xbL16y1aqmeGyfluaKCL7DEDzcZ4n0f/VGHOUMns0p/yQRlMJWQ9oH6DYYP4NIbSL3G0Us0kgoEz19t9d4Kf+2fCLV087ZGYt5uqNUSMecNXhNtjdqEv572J0GR1o3/8RcOEP+Xny1ZSnuxfPr/bQ+V8OZK6GFm+bDoHppnebjBuiqCBbRtaSTKaGzl4dtbzatZbFxsoL9RMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KG/Tj2veE4c+QcaQYmOYEuD1IUol1SvHPtwPecDonXk=;
 b=IIAJtw/WEoDPrL58M1ibp+zbPlgazcuVOtZHls/wJo0oOxsv/5bB2ZU0CnJjYy0gp3B2e9qXgkCgphPAyIU8ORfbhz96NG7RD8B7uTZznbxO7sZ3vbs127WbRPxNe+D+Yxk2ZpWarlpT1cOCxO0IS2sW3PQwBef5MmkEY2wxGGFaRTQyfjo4L7+27ishC9UwOOyphJeA0RKMBf0K5JE57/dQaRDfRcIKEBQ+HsNGXXwhWIKobT8LHdM8r2NGlTfqkyBe2UZTrCzeu0JvwSrIEC82WAbZ8t8VZ5wWfg+5hHK+ExFpBqVzKU78hnjCfsIbyu61Rfkr6K0KCH0dUpAE3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5653.namprd11.prod.outlook.com (2603:10b6:8:25::8) by
 PH8PR11MB7045.namprd11.prod.outlook.com (2603:10b6:510:217::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.31; Fri, 18 Aug 2023 06:02:36 +0000
Received: from DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::3382:a13a:ef37:f584]) by DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::3382:a13a:ef37:f584%5]) with mapi id 15.20.6699.020; Fri, 18 Aug 2023
 06:02:35 +0000
Message-ID: <7b9ea8e7-9f9c-c12e-1844-71b828f91eb1@intel.com>
Date: Fri, 18 Aug 2023 11:32:27 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230818024558.10780-1-sujaritha.sundaresan@intel.com>
 <CY5PR11MB6211DF1509200AA47C77246F951BA@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
In-Reply-To: <CY5PR11MB6211DF1509200AA47C77246F951BA@CY5PR11MB6211.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0133.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::18) To DM8PR11MB5653.namprd11.prod.outlook.com
 (2603:10b6:8:25::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5653:EE_|PH8PR11MB7045:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a71ebde-e622-4132-72c5-08db9fb0b81d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1sw8PyDaZa/RGPOlHLMvttJKRurNVaX7jH1slPFR9aBbhF/QMJXqlhpUyydgJe/ZCPKPP2k1drMyu8q/0ZY1ZLzNCRnB/IivBRkcMN7UEVZq4jpEFsvRFJ3GwtCyvygXPCYZqJrqs2cgdMWcQmY4KJDbRcvvSYuU+EsmMGzJ2xyHizNp5Tx95SafEtuKFoFZgLPEq4vQjA71Gl3bNls6przeIMkojb8jqXrJAx/5l2woqMZeOXKiiwK4bilT1uAuBc7aP1JMtRqFGNgfvptl17QJ3zEw+sQcNLOLbRnfOX+e7u9CfrUhFt4NqpCm9c5op3B9ZTaWqvHuScCqk3fM21pjQutMMRoLhR4u6jxvyyZmw1wzHwke/pL+KX96Zz0a2aiH+o6fDZsu9BnrOLnghiNRAY4jIK7odv0irOsscgBQeQjFm/1G5PJuiyE1LnR+eItW3W5BEzgQ0hkMxydQhop09Sx4oR9bMHVjw1l8VnHCxt7EUspLaK8x9sxMsEgySn1S8LP6SLYUYxm1NWgjz7+9FNfiK+LTOd9iHnFJK8yQFoSuWYC9ubky1Km9YrVTHKwzHO4VVI5uF/vcIOID9oKob8p6gftpmu+re48JLpTczcnekWAqGCUYlNdFB+zoJHMtjHCh00ZU8ZRleNR5Og==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5653.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199024)(1800799009)(186009)(31686004)(86362001)(31696002)(36756003)(82960400001)(38100700002)(2616005)(5660300002)(110136005)(66556008)(478600001)(6506007)(66946007)(66476007)(53546011)(6666004)(6486002)(316002)(26005)(6512007)(8676002)(8936002)(41300700001)(83380400001)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnJ2U3M0YmpzMEdyMlo5SEs1d2I2M3M5OUFnR0J0RUpoV2srZDRmTmJ0WnFF?=
 =?utf-8?B?Z29kYWhSbndrWngxdDFiSGRvaGZFbVR5ZXh3MlhkZmlRRDZaY3BFUDVCSjF1?=
 =?utf-8?B?NUxnK2xVTjMvU09pM3lacmF3UEIvZmVybzdKcG5DcW5sZE4reTZEazl2NG5u?=
 =?utf-8?B?a2ZEbHpnMmdNRGhncWJtV29DbW9Dd1ppS3AxcVdtK2ZRNVhjLzY1aEZ5ejZR?=
 =?utf-8?B?Yll0dVc1aVo1R2w0K0xnSkxsVWNIVExIbHdvODIvQU5UbE4rc0xQWk5heTZj?=
 =?utf-8?B?ZUdGSHFIS1ZkQytyN2xSOGJjeGc5WUhnM1JCamFTT0pRQUMrek9RcnhaMTBa?=
 =?utf-8?B?c0lvOFFRenpMeXQ4U2k0QldEVS8rT2JGQzR3ZWlRR0lhRkxaN1VaaG1SYitZ?=
 =?utf-8?B?VXRlNTFzVCtlTlg4RnE3ZVFqL0UvU0NtUXBxQUdUcWp2RWI4cHhzcjJmVUlT?=
 =?utf-8?B?M3ZEekRLRktob3VTajdWVytOa0NSZlhaUm9tRUJhSlkrM29WS0JxQ0xNVTBX?=
 =?utf-8?B?eFlmQ0tCSFFsMXkwT1BOZjZ4dEU0S3d5R1h5TEVjV29PbHBQQWFncjFPR21P?=
 =?utf-8?B?US9JS25tYWZWdzhhcDFBYU50Rmx4UHNzZGdOOW80RHBoeFZabXhLbE4vVFpT?=
 =?utf-8?B?RWUyWXdrSzdOMzUvZzFlN2s2Q0tUNHo3ek15TFBLcWhmb2JPejM5c0xuSUNP?=
 =?utf-8?B?NmY2TytHWFUvV2JtSW83K1J4NllLNUJPZTJNb3VRS3RPcDVnWFUyUUdJQ29I?=
 =?utf-8?B?VTMyRDRXWDIybS9nYTBkOUtVTnZWQVp5TTN3cGlOdC92S0VOY0puc2dRTmJj?=
 =?utf-8?B?V2hERVF3elR0cCtiWjhkVTd4OGRvazU4K0JyN2dBWmZpeDY1SkNmYVBqT0hs?=
 =?utf-8?B?YWFOTTAxY1pBSHZidGt6SHpwR0RVVEJ4NHpHLy9CTTFFZmVFb1hoWEJDTmMy?=
 =?utf-8?B?OGErOHB5MWNnWnAzQ2lMYkRQRENqUExmaENud285eldCdjRoSmduZ21RZ1l4?=
 =?utf-8?B?SUYwclcyTWx4VW1GUVVCdGtOaTRQYll3Q2RVL3RkVlRERUdOU2FPdWtwbmJW?=
 =?utf-8?B?VzZTZVF3azJ1US8zWTZBMVdwWVdDOHoreUcwRUd0WDhoeHRPWTNaNU5rMGZW?=
 =?utf-8?B?WkFuNERIazkwZkhua0l4dDc3Y3Z0cFQ5cDR1WlBtZ2E2VUdXY0JpblRiYWI3?=
 =?utf-8?B?VHpPSUpzdFIwMFoxTHJ4Y3lIRlBvcnBoSmFqS3JZb05rWkQzTCtXdHpLSndE?=
 =?utf-8?B?eXVYQml6RTUxclNLMUlFZzVOYmwrRU9HcEZpTTlkdktRMGdycXZ4bVVaQUtC?=
 =?utf-8?B?UzFTNkJ5bXRmY1djZnpuZy82REZ4ZlN0bUtmUnA2NE13c0kvdkZnUEpESlY3?=
 =?utf-8?B?dExrZmkxcC9aUVhObGhKQW9Ub0hRR1lqL2k3dnFsTEtaclV4d3hGUFJYdGkw?=
 =?utf-8?B?UU05b0NpdFhacVdDOTZ5KzByK2tDRzRQOGIzMXF6VHJVanU5bDdkMnNrV2px?=
 =?utf-8?B?L1BiMXZvTWlCNms0bnVRM0VtYmZsVmdFaEpuWFZCbjltTUlTZE9qcFdZeVBw?=
 =?utf-8?B?TlpFMG1DUUtHanc0QXZ5RVl2N3ZjWE13bFlXYUtJMFNPQmtxQU5IR3M0UEc5?=
 =?utf-8?B?WmlzTzlPaWltWGJxMC85RmtJWTF5d0FDdStqQmVpb2NhUXJTa1VFUGVjMW83?=
 =?utf-8?B?Qjd6OUN4SnBrNEdBY3BheUt1ZXB2WkRTN2R1S3dZb2VodWs3WjFkWmhqRGFz?=
 =?utf-8?B?UThQWTl4aW0reExxRlFiakdkTTRuQVkrVnJNZVNQUmNnYjZQNzNuN1VWaEIr?=
 =?utf-8?B?SUJmcnlvMVVTcVQ2ZWRXcTFtbjZuMjhlSUI4MEpvZy9rTjluV2o4SzhMZXFX?=
 =?utf-8?B?ZGxZL2QvZ0VnTDMvTG1QZWlVWkRIMVRIMnMvWkZLbXFJcTU5THVzcVJyamg2?=
 =?utf-8?B?a3NBa0hVclhrTmN2V1dacUozK0lzcC9hLzk3ZkZDblhHZzNsTVZ1bVYzQkQ0?=
 =?utf-8?B?VUg0K0t2RkVxekFkRmdkM1J5RDhaSlBHNEFYRnZDVEU4SkgyVmRTampFcTB1?=
 =?utf-8?B?SG9TNGtMejZjbnBNNktFbmNCendPenRDTUNuS3A0a1VpQWJ4QmFwV0Q5VnY1?=
 =?utf-8?B?anorSUtrM0hIaElUZGRESUYzeHZ1eUI0aGRCSjkxWkRsV3hZRWRHOVJuZWxR?=
 =?utf-8?B?UHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a71ebde-e622-4132-72c5-08db9fb0b81d
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5653.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 06:02:35.8710 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hk8MQOX7E38vIMuviP4otGbXvBRL9/KFOCrVcuOvtUQUpf8rtsLkuKxLo1gulGEew54RH+AiroDchfbN7inYH535qZvt45261uFhEyoeelw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7045
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
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


On 8/18/2023 11:30 AM, Gupta, Anshuman wrote:
>
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>> Sujaritha Sundaresan
>> Sent: Friday, August 18, 2023 8:16 AM
>> To: intel-gfx@lists.freedesktop.org
>> Subject: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
>>
>> Added intel_pcode_probe, promoted wait for lmem init and intel_pcode_init
>> prior to mmio_probe during load, so that GT registers can be accessed only
>> after this, else MCA is observed.
>>
>> Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
> Both DG1 and DG2 crashed during i915_pci_probe.
> BAT is failing.
> Thanks,
> Anshuman Gupta.

Hi Anshuman,

Yes I'm currently looking into it.

Thanks,

Suja

>> ---
>>   drivers/gpu/drm/i915/i915_driver.c  | 37 ++++++++++++++++++++++++-----
>> drivers/gpu/drm/i915/intel_uncore.c | 12 ----------
>>   2 files changed, 31 insertions(+), 18 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c
>> b/drivers/gpu/drm/i915/i915_driver.c
>> index f8dbee7a5af7..92cafceaf447 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -93,6 +93,7 @@
>>   #include "i915_memcpy.h"
>>   #include "i915_perf.h"
>>   #include "i915_query.h"
>> +#include "i915_reg.h"
>>   #include "i915_suspend.h"
>>   #include "i915_switcheroo.h"
>>   #include "i915_sysfs.h"
>> @@ -436,6 +437,32 @@ static int i915_pcode_init(struct drm_i915_private
>> *i915)
>>   	return 0;
>>   }
>>
>> +static int intel_pcode_probe(struct drm_i915_private *i915) {
>> +	struct intel_uncore *uncore;
>> +	int ret;
>> +
>> +	/*
>> +	 * The boot firmware initializes local memory and assesses its health.
>> +	 * If memory training fails, the punit will have been instructed to
>> +	 * keep the GT powered down; we won't be able to communicate
>> with it
>> +	 * and we should not continue with driver initialization.
>> +	 */
>> +	if (IS_DGFX(i915) &&
>> +		!(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT))
>> {
>> +		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
>> +		return -ENODEV;
>> +	}
>> +
>> +	/*
>> +	 * Driver handshakes with pcode via mailbox command to know that
>> SoC
>> +	 * initialization is complete before proceeding further
>> +	 */
>> +	ret = i915_pcode_init(i915);
>> +
>> +	return ret;
>> +}
>> +
>>   /**
>>    * i915_driver_hw_probe - setup state requiring device access
>>    * @dev_priv: device private
>> @@ -547,10 +574,6 @@ static int i915_driver_hw_probe(struct
>> drm_i915_private *dev_priv)
>>
>>   	intel_opregion_setup(dev_priv);
>>
>> -	ret = i915_pcode_init(dev_priv);
>> -	if (ret)
>> -		goto err_opregion;
>> -
>>   	/*
>>   	 * Fill the dram structure to get the system dram info. This will be
>>   	 * used for memory latency calculation.
>> @@ -561,8 +584,6 @@ static int i915_driver_hw_probe(struct
>> drm_i915_private *dev_priv)
>>
>>   	return 0;
>>
>> -err_opregion:
>> -	intel_opregion_cleanup(dev_priv);
>>   err_msi:
>>   	if (pdev->msi_enabled)
>>   		pci_disable_msi(pdev);
>> @@ -778,6 +799,10 @@ int i915_driver_probe(struct pci_dev *pdev, const
>> struct pci_device_id *ent)
>>   	if (ret < 0)
>>   		goto out_runtime_pm_put;
>>
>> +	ret = intel_pcode_probe(i915);
>> +	if (ret)
>> +		goto out_tiles_cleanup;
>> +
>>   	ret = i915_driver_mmio_probe(i915);
>>   	if (ret < 0)
>>   		goto out_tiles_cleanup;
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
>> b/drivers/gpu/drm/i915/intel_uncore.c
>> index dfefad5a5fec..4a353d4adf86 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -2658,18 +2658,6 @@ int intel_uncore_init_mmio(struct intel_uncore
>> *uncore)
>>   	if (ret)
>>   		return ret;
>>
>> -	/*
>> -	 * The boot firmware initializes local memory and assesses its health.
>> -	 * If memory training fails, the punit will have been instructed to
>> -	 * keep the GT powered down; we won't be able to communicate
>> with it
>> -	 * and we should not continue with driver initialization.
>> -	 */
>> -	if (IS_DGFX(i915) &&
>> -	    !(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT)) {
>> -		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
>> -		return -ENODEV;
>> -	}
>> -
>>   	if (GRAPHICS_VER(i915) > 5 && !intel_vgpu_active(i915))
>>   		uncore->flags |= UNCORE_HAS_FORCEWAKE;
>>
>> --
>> 2.41.0
