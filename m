Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA29C5B9D83
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 16:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCA310EB4E;
	Thu, 15 Sep 2022 14:40:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 089AA10EB55
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 14:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663252851; x=1694788851;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U9sfBUgurpRYe3cCi+ZahPN+ZjgGQvkxE8FIFQTLlmk=;
 b=gF3Jnp2vjHpsEBbwF0Eqk1SwJ0JpWMvvk2NTmVtYRmGnA0y7hbwOh0t+
 BUrcPGptVTGjl0TCtkQYDi4F/D52exaYmq1BHC8MgqMm/2mesSTh78fZH
 QVqlw0ncrUtq0g5bYfmJYtK4u3twb7lLDlEZy9hA15ltfM0HmLu+/vu1e
 cbnhsqjReu2sF1O6F5KCfy07na1sJO5Sj2gQarMWU0mRBrk+jSP8mIKJL
 xMi47jbJLtgX9p88OWhuZJ63RSxG48AFbO16NjA5h7rZkhWYj3d8LdKsR
 0WujDVElqP1WIkOYiG7XsttN1FhdvtddCAyBqsvysj5BHilGo7HXc6eKb g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298727770"
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="298727770"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 07:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,318,1654585200"; d="scan'208";a="594843512"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 15 Sep 2022 07:40:50 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 07:40:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 15 Sep 2022 07:40:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 15 Sep 2022 07:40:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 15 Sep 2022 07:40:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YLqipUb2PoaLQhH9UecT3a2BR0QfML+NFKZCR9PrNB+yQrQblkNGyQ6ZMbLqBoOYm7c8/+pgDOSeGNwCwE5x0ryLIkcw2I1R6LuwSH4IuiSaZEIek4kB2evFvbEALE6X+8dZgdaUgb6i5p+k6NHHdycsDbJkh1eZ+o+pSYRKT9saaFipHpKQJKQ56OPqGrCXx6ELG66RFI47coTDVisuaN2km5+NthDaTqMlBTc4w7ReyZexHwPcXmsoQW4k9t8Qajvx+Baqmj8B9BaD7/flfndTO1NsEa7m5o7k8QapmK8SFH0l/kd2K6MhFOMi7WDsujVihR4z0yIAhmn6DJbjLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BEGhFRbIe9qIwzn2MT6BVil7FC4YGaa9KhPzYxWO4wU=;
 b=DywKEfzt9KyBp3+k2D+Dzg5hNVgDAF6IzmX+MC+2HlvyUffj8qVpHYNvnOj7cjtp3EEl5HpYYW4193gNOegG1dnj4u5CXgREI3mSGZ1ao6+4DqijU6gcHNw9qajHbZOrln6eL3/MlW1Cou4wxuiO/ILXnwD/02E33WwvcS+6I0yVIxZdi2Gf0X8nI3J425NpQd4F/Rfz89UwGRJ+V03v4cIoXcWuhyu/hiYaGKb/x8IgzPcKhvlsV8o6ybxyadsNKpIUWrkyEeezAkS3w8v6+0zvwDewQNPTRyLbEHmpX827WjoUS3SkqKvIqhyVaqbyUpVvg9JPRI4jJoQemZfHjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by MN2PR11MB4535.namprd11.prod.outlook.com (2603:10b6:208:24e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Thu, 15 Sep
 2022 14:40:47 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee%8]) with mapi id 15.20.5632.015; Thu, 15 Sep 2022
 14:40:47 +0000
Message-ID: <9760a03d-a83e-7e27-e4da-faff02c6f11a@intel.com>
Date: Thu, 15 Sep 2022 20:10:37 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220825132118.784407-1-badal.nilawar@intel.com>
 <20220825132118.784407-3-badal.nilawar@intel.com>
 <87o7w3yn28.wl-ashutosh.dixit@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <87o7w3yn28.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0137.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::14) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|MN2PR11MB4535:EE_
X-MS-Office365-Filtering-Correlation-Id: 874eac12-0efa-41bd-3a0c-08da972846d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1zZW42OD3786B+fClOOOkak1SAhVYpfBUT8vWF3eMygBBZ0kd4WRNKfgBHfxww37Z3DOQmQXsR/ddmK8QuodGnodHh0dphk6pF8tSDiOZneSbldb5wNFJgud/gxfOIVo7fbLXbyoetT4Fk1Bff60NlR18OmAP3LHXL06fNzSSkI0njyZeAV5pI/nJktD75ScziwhzDJ0tyorIKufGuAisOegxC3XymJS4j8ANp2Rnb7yxy/e8nJTebqpc/sz3gRyCg8VhepGYhdppOY4z08SPXHS2hT02jwAqJhVcrCyQxDrpqV5BTkS64zjEwk3pmOiVbSWzbYRFJmnuF0psg3MS2NBd7fNrIEmhF2eOr2ybZD5san1pfuzB5W8gkzmV2/SPJOArsgmMrzYviGpbzDmCpjlnp96YjylkoqaTgEl5u/iacgkRgSeXvgoIqGfUUqdvpk9+EXApJZ6CwNUq44IHIZRAZrnCi67pGYbnx1AYAADZQ6OupLlJxQs58Wz1FzpjtCGldbIv6u02r8uVDultowyJ5wTLONRUiXR5iACRfA6Ur2RuSBQ/afQff57FfNYTCKOYyidRNmaWWAY89Dfp9rJjuEyOXjyz1q8lLA02i+9mRM6dkE2omYNBh2JmWKaAkgnewIoJajy3R4QCrixYNm+/2I0010eH/4a6zeTgKOAP4oLIOrTcfH9iQtGILYRJ1/5Rnz5ZqfWPt5lj9Jh1mK2Y0Vm5Cip+Axk6yUbzfrS+S07dFFBUVqlX83qpk5ts76AmbLEZLwCCVPjh6zUR9GwZGMcWCrS5emK5M3DWhY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(136003)(39860400002)(346002)(396003)(451199015)(83380400001)(316002)(6636002)(37006003)(53546011)(6506007)(6512007)(26005)(6666004)(41300700001)(36756003)(8936002)(6862004)(5660300002)(478600001)(4326008)(8676002)(66476007)(66556008)(66946007)(6486002)(86362001)(186003)(31696002)(2906002)(2616005)(31686004)(38100700002)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TnViZkxvWVN2MlJvSXJxdktXUm9jb2NDVHFRR2dJNjB6bENySWgxYWtGM1dn?=
 =?utf-8?B?MG5MWXZvUjZKeVovbUZ5bWUyRk9xa3o3Q3JNbDROYkoxNFJNYVkyN0FZbG1K?=
 =?utf-8?B?cVdWazBpYzc4cmV0L2toRjEvM3kzdGxraTYzNUliTVJvSWc4Y3JENUltbHBS?=
 =?utf-8?B?S3I5Vy9meXlkYVE3TnFVN0pzd25OZnppazZlQWNmMGU0NENPNzRQcmkwRVNx?=
 =?utf-8?B?M3UwKzJ3ZERQcGZiK3dlQkZ4ZkdZSENYRERxTExGaEpVZEdLTldxZGRUeURj?=
 =?utf-8?B?KzdwS1pnbXo4K3dGZ2VYeEhFbDNsVHN5Y09RQnM4eENHS21DL082bTc2V1cz?=
 =?utf-8?B?QTM5bS9PRlBPMHc3UkREY0pZbHplcEo1UWFSc1VNOGVaNTVPa3ZHT0lJTUlB?=
 =?utf-8?B?dy9aZkcyV3VMRS9yRGVoUElrcmlUQ3lDTDFna0lRV1ltS2JaYzBBM0ZvWHox?=
 =?utf-8?B?d0tjemZGL2dtV1lXTW51UjQzUlJmQTZkRWh5ZXV2VXkyTzFlazhra1V0RjZ3?=
 =?utf-8?B?OWVvYnpkTWtJMFMrTzRZOVZLM2I1Vmg2OVgzZmt3OVBETHJzYnJhWFVUalIr?=
 =?utf-8?B?K3ZzL1FudkVFMlJuM1lBSTlwR1pxeFZFMy9acTBqcmV6ZkNPWHZlUkpOeWcr?=
 =?utf-8?B?dDBVSDB6clBISmhMK0twV2srbXptZ2VGMVV3RnIxU0R0c2R0QnZTWWhhZ25z?=
 =?utf-8?B?Slp5WDdDR05hRHhaMjZENlVIYWkzYU9FelhJTDJqTENhSXhINmZQd0hpSDd1?=
 =?utf-8?B?bkRNSGZuQ0lwOTcxd3hkYlpZN051bCtIZURhdEtsMHZjMGh0Q1VkRVZRUGE4?=
 =?utf-8?B?SzFqalp3ajdIQkNyS1grNWk4TFkyUHlLNFl0OHpLOFFXRUc2cktXTkhTRlBy?=
 =?utf-8?B?K0VkOCt0ZEFKZFNxRk1pM0l6S1JRT2xrcVFQZnFTSXFrc0NicEd2VEpmVG50?=
 =?utf-8?B?MktHc3dqL0k5NGxlQVlSdDVsZlY5YmRBcDhVdGplTko0emtTdERyTk4rR1dG?=
 =?utf-8?B?bVMrdjNrWmY0YTV1VUNDTDVuWW13aGxSakNvU2F2UEtLRDZZamlCQ1VwZEFw?=
 =?utf-8?B?S05QZ0gxL0xwbFdZeTcxV09MMmdRRGMvWDREYklHMzZTZTJZNjJzd0tJL1Mr?=
 =?utf-8?B?Q05aRkZSY0NNaHdxdmFUTmx5STZwK243QmRPaFJ5QlNiS0FGS1lReGFad09U?=
 =?utf-8?B?WlFCTFlkNm1RbVZGLy9KVFRGd0xuS2VSZThhNEM4WFhBM0g0aEovQlFlajNj?=
 =?utf-8?B?WU1IYksvdFQ0b2J0d3RVMzhFQnVJaDh2YVFpM3RKSmErSVdSQ00zMzNpcWZO?=
 =?utf-8?B?UmlPTnRWemtFZFB1bWpSMzdiMDA4SHNKQm90aEtoRk9qdGJHbmZnS28rYjVC?=
 =?utf-8?B?R2FJMnpxMzVwYUxDbVcwTWcxWkhOcXdocHcra24wcEpXVnpMQ1hVcnNUVTE4?=
 =?utf-8?B?ZFluYjhPYzFaL1FIeTdNYkwxdFFuOGhBU0hxUXc5VXZ2NVdkNW5kc3VPYy9H?=
 =?utf-8?B?TXgycVNUUGxVNllSWkdQVHRmbU9KT2N0MlJqcDlGSlBwMnVTVXNPTVdPWDZD?=
 =?utf-8?B?N1VtNW9YZkx4dzc2d2NjUFBUbHBHdlY3bk11UzU2eE01aHBwT2tqbUNtd1pG?=
 =?utf-8?B?OWZsaTVIQmMvU1JRNlpBcklkVGFWS3V3cUFSb25tY3VMU0F1U3lUYVYrbm5x?=
 =?utf-8?B?QjJnaHRZKzRMYlJSdHM4ejZJa09EWlJsRG0rTzZCM0hJVm5CbFBiNFlnZ3Zj?=
 =?utf-8?B?T2QxdWs4cGd1U3BZdWZJbCtjKzBuanVTL3I3NTRCcG03TmFHMk9rUnB3RFpB?=
 =?utf-8?B?Wmc4R3l0ZFNnK2QvR3lWUEpxMVVpZktSMVAwY1hRWDgrQzBrNkNkOXMrdndn?=
 =?utf-8?B?Yjl0MWs2NGx6aHp3YkpDV0pJUmIxaWIwaHYwbWc4dDhjTWlnb3o4TW5LSHRm?=
 =?utf-8?B?cDhIZUNpTkhHZlFra3NrcDdNUUxYS0dGdUh3b0JtVnFIdHpGNmhJUk5ReXdW?=
 =?utf-8?B?MGx2cXlJUkZLMlJUV3NuUkZ5b3R3c3F5cmJnR0ZKeFBNNzZzdDZwdkFPeWRm?=
 =?utf-8?B?WFdNeHZqTWhHTkdDbEZjdlQ1VUJoNVpJTmcvajRMMU01UklYdEV5bWtUaVR2?=
 =?utf-8?B?Uzh5RytHb3ZvcmF2Q3FOZVFjdDFrT240cG1tOFlwK3hTajZlK3MrbkdteUt0?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 874eac12-0efa-41bd-3a0c-08da972846d4
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 14:40:47.2270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yBTdGzW/R70lP9FTeWPYWzxZd06JXGCWTKAc961N6muGQ6llJbeRAOL8fkvY70No70KaSdX7YxkFFmPwIxUZcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4535
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/hwmon: Add HWMON current
 voltage support
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
Cc: linux-hwmon@vger.kernel.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 29-08-2022 23:00, Dixit, Ashutosh wrote:
> On Thu, 25 Aug 2022 06:21:13 -0700, Badal Nilawar wrote:
>>
>> From: Riana Tauro <riana.tauro@intel.com>
>>
>> Use i915 HWMON subsystem to display current input voltage.
> 
> A couple of suggestions to improve comments in this patch below and after
> addressing those this patch is:
> 
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> 
>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>> index 103dd543a214..2192d0fd4c66 100644
>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>> @@ -11,8 +11,10 @@
>>   #include "i915_hwmon.h"
>>   #include "i915_reg.h"
>>   #include "intel_mchbar_regs.h"
>> +#include "gt/intel_gt_regs.h"
> 
> In later patches we have added units for different quantities here. So I
> think we should add those units for voltage to this patch too. It's in
> Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon but I think it's
> better to add to this file too otherwise if anyone looks at it is seems to
> be missing.
> 
> So I would add the following to this patch:
> 
> /*
>   * SF_* - scale factors for particular quantities according to hwmon spec.
>   * - voltage - millivolts
>   */
Sure I will add above comment.
> #define SF_VOLTAGE	1000
we are not using above scale factor for voltage. As our scale factor is 
2.5 millivolts shall I add like.
#define SF_VOLTAGE_MUL 25
#define SF_VOLTAGE_DIV 10
> 
>> +static int
>> +hwm_in_read(struct hwm_drvdata *ddat, u32 attr, long *val)
>> +{
>> +	struct i915_hwmon *hwmon = ddat->hwmon;
>> +	intel_wakeref_t wakeref;
>> +	u32 reg_value;
>> +
>> +	switch (attr) {
>> +	case hwmon_in_input:
>> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
>> +			reg_value = intel_uncore_read(ddat->uncore, hwmon->rg.gt_perf_status);
>> +		/* In units of 2.5 millivolt */
>> +		*val = DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) * 25, 10);
		
And use above scale factors here.
*val = DIV_ROUND_CLOSEST(REG_FIELD_GET(GEN12_VOLTAGE_MASK, reg_value) * 
SF_VOLTAGE_MUL, SF_VOLTAGE_DIV);
Regards,
Badal
> 
> Let's complete this comment to so that it is clear what's happening:
> 
> 		/* HW register value is in units of 2.5 millivolt */
