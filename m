Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 358687572BE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 06:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E87A10E062;
	Tue, 18 Jul 2023 04:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE21A10E062;
 Tue, 18 Jul 2023 04:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689653976; x=1721189976;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=m2/MbF+UA1AglAQDzXlWDhrmu4N12jQX4fi773MaJzg=;
 b=annxGN07OXBRt2oJu3huyN4+gaU/1jRRrzawg9imHKb+KCSWhhVXUzoO
 6L48D5xzuC/nU3Vm0+wDn1vG+7WzTkw0A8bPi3p4tsrEEdVXycghi+Upq
 bX4ZC/SSSoXHWtvLS6CYwLb5aGZKgoAQJlKSpDphCngTA8itULkaZAUzb
 6oWnWjgM6z0qMzs3eQYlRwLBzNgcC0V5VcH9brbpUIsqdz6CxpzfAvrsw
 0Hcq859UqTkkgzjUtcnQIp2tEAoJYSdbVcfDPa458Pd+PsS9DSLEdB5x0
 yOiYgM1rAzfqwhHX0nA2HNSSWa6H/Vw6FGxqA2GLIWRtBuT+IvfUewZlT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="432283366"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="432283366"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 21:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="700748634"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="700748634"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 17 Jul 2023 21:19:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 21:19:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 17 Jul 2023 21:19:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 17 Jul 2023 21:19:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 17 Jul 2023 21:19:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O14hEgkBJICVHe7QGYpQcygmJO1qeT2XEgRSOYXVHBvguv3cBBericj/6Eepad3dbGdl4ETvEMkJwuEeDeu98qNI9eFUDzcbvFhChsVeKno6/08cplIN+9C96vx0umHf8QdUojSvHL4iiLboaZJJwgy6V38BH1B8n3YQLHPq2imk/1xh2nH51QgrY3l65obvV1xObwIKzPhM15/nheNrHM+h8OPIWAtXj8MlAW0/swbD39cFnHrGbLRb1XHnYJw56Jpp6u32x3RbaGXv9vEcRgHxcgIcLXyvdkjpJMfVaRBiSPvmIuQYbqP4qEGQHiXtmeQjBaXs/W1U0h9lOds9jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z7jEegTp973T5gStq4cmsyUqlNKzm/dUYxCc19QH79c=;
 b=hSkTpaF2zwVWvxDQa6pGj/DkW2Tj9FpkQG0sFpxQmrKwFPGoLIPeTwj8qJcrMfwJU0b+JbO1SpVGGFgwaq/7PxqujSl2WOEnlofnrbjrTdTV8jNyjlSJtiL1nf0/B8YAngDTwxhXSm9AL1BtPxjgGBbU1oHfIsB9C/h5VYNFU2H3dkOqpgZDi9pZhlEwtJxcp7Ov3dDxV01QYYlD/8PmB0Tb8qb7zhQJUeuuRPPmBqKnMyM1O0lTNH3fjHkO3k3Faq8fTo2VAz0L1oUuNJgq42PYz1wYRyqp91GJWQMsqMnByI+YCjZc1ukNhQnEoBxfJqtS2/8yTPxRVB8hpqPRew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by SA3PR11MB8076.namprd11.prod.outlook.com (2603:10b6:806:2f0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.26; Tue, 18 Jul
 2023 04:19:15 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::8b4:fdfd:4a61:1e14]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::8b4:fdfd:4a61:1e14%7]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 04:19:15 +0000
Message-ID: <8544177f-994d-88a4-6c7f-aa64c84e8846@intel.com>
Date: Mon, 17 Jul 2023 21:19:13 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20230717184213.624518-1-vinay.belgaumkar@intel.com>
 <87pm4qhtss.wl-ashutosh.dixit@intel.com>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <87pm4qhtss.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0140.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::25) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|SA3PR11MB8076:EE_
X-MS-Office365-Filtering-Correlation-Id: 83293a9c-9fa5-401d-9177-08db874625c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fkPslbS3AgAYW4SGJTZJ0OfeGG8HDFJGZLItb4aNhUs6Gc7/CPxqumxqbwwj+gfYRdhNunj/gaxp436WaFhmiU0LRgy3Nh+Fx+UTbNd5daqhkg5s4bU0nYY8jZWtxTh6plPMn9aUTlcHDbI5TYW2AT5LdfZ2TQXGnFsGm4XUuIQmNUeOz+PcRMsCe1OybfqHsjpDi8b/M7FlB7amT+ZoeajIwDNACXFmNWzv49Vk8SvoeK0L6gcVeIvHHtuFuvAJY/SQvRsXdPirZtwXMpwNy8vnV65KVSAimb7vxr7E+hGCmixUOK+de7Sn4tOzwevgMooYAqygISZ/iXGyfA80izcoLvh4ltDcNHCMY5sVQcRWSQf6sW9IgJnq/NmEMwjvEGLny6sXXyFELX58EI65pr+HEKVsjwDpknc6v48MMX9VpLotOIY8vtzVe7YQ9pfV35drhKydrvTqHU22sfFz+y+UDVOohy1rQUps+fw1aBJJWTrDIW6KuqDH29Teo+0ejVo1HA1ZUCVTU8i7cv42MVKQ7cVmyAtRRtAteoa1PTvtdUkzj45p9FaELrfdEjXlWz0J+8Kc6Yz+ZkHxrd2Kl0pmeXPA+NZ/sgQqLUHz3DS2DiXcM516TwTwebP72wGwWIYdSzX/8nf2lGiSH6CZSw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(39860400002)(136003)(346002)(451199021)(31686004)(86362001)(38100700002)(2906002)(37006003)(53546011)(36756003)(82960400001)(450100002)(66946007)(31696002)(478600001)(6512007)(316002)(26005)(186003)(6862004)(5660300002)(4326008)(66556008)(8676002)(6636002)(6486002)(83380400001)(41300700001)(8936002)(6506007)(2616005)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmJhekw2MmlJdGVsUzFQSGNPR09iSU9KbVdSSWpTQ1ZEelVhUEIvWFFlOThZ?=
 =?utf-8?B?Q0p5RXRaaXhKSnlzQzNTK0pwSTBwQzJmL3JkbkZET3hkMlhzZEhIN1R6YUJs?=
 =?utf-8?B?QjA3K2dHRVozR3NXbmlBdGJDUTFaejBrbWpiYmRQYXlPanVQcUcxOCtJK2JF?=
 =?utf-8?B?T1JhZHJCSU12SUEzdjA3SnNsSjZRNjNta3hreEtDTnB3VkFlcEVldU1JK2VD?=
 =?utf-8?B?VDQ2dUV5V1hsQm1hUXZ5bmtLT2JYY1FmS1RxTXJkcGQxKzNYRjRSaUpTMWxR?=
 =?utf-8?B?WE5WcVFkMHVNaFZudVUyY1M5MVVJMHd3bHJCaitUSzRjZ3NPd0o0OEJNU05C?=
 =?utf-8?B?OGZEYUNnYUFPZ2RKSWN5KzNLWENoeldlbnBSRk1pemgzbUdpZ25CeW5lZEYv?=
 =?utf-8?B?TTZ4Y2lMbWl3aGh1K3FuaWpVMklIZUhlSys4UWZoQmZCd3NMM0hyRm9FTTlN?=
 =?utf-8?B?NDdsaTczN2hsTnVwS1VIcnp5bXhXWHlrR3VtazNkMm1kUVljV0N3aDB1T0M1?=
 =?utf-8?B?VXJNWnhyWktHVll6M3c0ZXJFMG5QK0o4bFZvci9nYWk4MUFKTTFJZC9qNmpu?=
 =?utf-8?B?T2lVQkVxM2c1K2ZvWGlhckRaQW15bXRoejh5TjUxR2piajRlUlFRY20zSEkz?=
 =?utf-8?B?Wk9ZaGI0a05UYmtSbGJLUDVSaVErb0xzTXlibXJJM1I0RU1rMTBBL05VbHcz?=
 =?utf-8?B?dXpPMExTZDFOcjVjUFJKU2NscGsyODR2WnZienFJNHV1WXFMbnllK3QrQk5E?=
 =?utf-8?B?dGxWZko1cTNRdkpDWUZKWURiY1BlaGtvSFdSQzZ6b2hZSzB6TDY4bnd5M2JY?=
 =?utf-8?B?L1RKcUdwSmozd29EVzVmMXZZVGlyNFZnZ3IwQU80ZFh1RUFLcGhya3Q0UVBt?=
 =?utf-8?B?V1RMLzlqTFVjSjVoRnhzdGl3UC9XY3FieGZsS2MrcHRIK0p5ZWRvZlUwL3dZ?=
 =?utf-8?B?ZEhqVW00ME1HYyt4a1k4ck9rMHF0Ymg0VzJuNTBrSlRhM1M4NEVCWjRjKzZU?=
 =?utf-8?B?OHdHTlBSY3U4akhQS2Nld1BpSmxST2ZZTzJpNE1WZmhWT2ZYb0hZbzViK3ZU?=
 =?utf-8?B?bUZvSHRGQUl0cVVVa0lkTXFRWXhrajBGaEZ3OGhSMGxZMjJyQndLSHhmN3pv?=
 =?utf-8?B?UTNLUUppQlZhME95bmttdmQ0QzQ5N3JoeEFrTGRKRDBEaWw4b1RCZW4xa2c0?=
 =?utf-8?B?Tmx2d0orOUZJNnYxbTBhMVNqMDhJb1EzdExtSFVWa1E5cklzaXJxNnRWanF0?=
 =?utf-8?B?S0RwSy9OQVBoaHFDSHlwN2NzUVNsQ2JJTnl5VTJsc1BuK1N6Z2VQcThuYnB5?=
 =?utf-8?B?VnYydWtMTW9nYkZydkFrak5aQzNNU25MRGRkMm5LNzkrZnRLZHduSlFwZmRE?=
 =?utf-8?B?UlB2MERtLzkwZmhxT1VsVnFqZ3lza0FYUTlZYmlQVTR3QjBDVEJRUllxZ1Y3?=
 =?utf-8?B?b0R5RlhJUTcvUXNBMzRWQjBqdWphT2VKU21CVjVVc2JaeTlpQXBueU5QR3N3?=
 =?utf-8?B?VXNHYis2WFFvcStBcG1KSmdMbGl0YXlMYkdjRGIrSE9VeGxkNUVGd3FWNktV?=
 =?utf-8?B?Mk1PVGs2enlpSW8wM3ZQVnNYT1JOMVVnbHQyN0ZtNXlpTTNsMGJyZjU1aW9y?=
 =?utf-8?B?OFYyOGU2OXZKYVk4bzQweTYwRnZ5OHlSVmtWT3dmaEhWeFVSMDJmMGp0MVVX?=
 =?utf-8?B?SlhjZHQ0WXNxS0lLbmMzTm5KUDFlZDlVQ3QzN3l6MGxDOG1mTktsRHg0ZG5D?=
 =?utf-8?B?VFdwT1ZEb2M2VkNWMHBMRzMyc1VaeWJDZkFiZ1NqT0JaSmQ5c25WaVF5eGdu?=
 =?utf-8?B?Y2ZCOGdrY0hzdnl0cTNNU0V5WVZ0dVFrVTBaVjgzQmx6VlhxcGF3QStxUUVt?=
 =?utf-8?B?MFlGZDI0eTY1c0oyWXNuQy80ZmUxYjkzUU81Y1JJcXl6anRFWGJ5cmhkckhH?=
 =?utf-8?B?ZGcwcXRMZUJHaVVIU3A3TUI5azVub0hrRkdtZzRmM0lCdFlYQnpnV1YvVVF5?=
 =?utf-8?B?aElldDUvZWlMTC9CM2M5cjJ4TjJxMlNBYVN3dU5jZ3ZFMTgxSUhrQTJzN2Fu?=
 =?utf-8?B?QTR4SXhIK28yd21Fd1dTOW85K3NsQTVuR3JsQTRMYW1TT255RjFKUGo0QjNY?=
 =?utf-8?B?OWtFSTVKWXRMUXg4UEdHQVBGWWhQZ1RDR2NxekNRaUpHd0FKZlBOWEFVTjVo?=
 =?utf-8?B?TEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 83293a9c-9fa5-401d-9177-08db874625c7
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 04:19:15.5434 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8blnIGrpIzD+XhnDchts/pCy8pqV3NfCak7INeAm1O1h96Vb1eypb4Aw8yEI1Nqbd+2NLx3BjDarg7hoSsTblSIZazQ3aXfrHNPWQvdrNtE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v2 i-g-t] i915_pm_freq_api: Add
 some debug to tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/17/2023 6:50 PM, Dixit, Ashutosh wrote:
> On Mon, 17 Jul 2023 11:42:13 -0700, Vinay Belgaumkar wrote:
>> Some subtests seem to be failing in CI, use igt_assert_(lt/eq) which
>> print the values being compared and some additional debug as well.
>>
>> v2: Print GT as well (Ashutosh)
>>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/i915/i915_pm_freq_api.c | 18 ++++++++----------
>>   1 file changed, 8 insertions(+), 10 deletions(-)
>>
>> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
>> index 522abee35..a7bbd4896 100644
>> --- a/tests/i915/i915_pm_freq_api.c
>> +++ b/tests/i915/i915_pm_freq_api.c
>> @@ -55,6 +55,7 @@ static void test_freq_basic_api(int dirfd, int gt)
>> 	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>> 	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>> 	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
>> +	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
>>
>> 	/*
>> 	 * Negative bound tests
>> @@ -90,21 +91,18 @@ static void test_reset(int i915, int dirfd, int gt, int count)
>> 	int fd;
>>
>> 	for (int i = 0; i < count; i++) {
>> -		igt_assert_f(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0,
>> -			     "Failed after %d good cycles\n", i);
>> -		igt_assert_f(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0,
>> -			     "Failed after %d good cycles\n", i);
>> +		igt_debug("Running cycle: %d", i);
>> +		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> +		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
> I am R-b'ing this but stuff like this should be using igt_assert_lt()
> according to the commit message?
>
> This _lt stuff has to be fixed all over the file, not just this patch, if
> it brings any value (again according to the commit message).
>
> Let me know if you want to fix this now or in a later patch. I'll wait
> before merging.

Yup, I will send out another version with the corrected commit message.

Thanks,

Vinay.

>
> Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>> 		usleep(ACT_FREQ_LATENCY_US);
>> -		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>> -			     "Failed after %d good cycles\n", i);
>> +		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>
>> 		/* Manually trigger a GT reset */
>> 		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
>> 		igt_require(fd >= 0);
>> 		igt_ignore_warn(write(fd, "1\n", 2));
>>
>> -		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
>> -			     "Failed after %d good cycles\n", i);
>> +		igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>> 	}
>> 	close(fd);
>>   }
>> @@ -116,13 +114,13 @@ static void test_suspend(int i915, int dirfd, int gt)
>> 	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>> 	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>> 	usleep(ACT_FREQ_LATENCY_US);
>> -	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>> +	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>
>> 	/* Manually trigger a suspend */
>> 	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>> 				      SUSPEND_TEST_NONE);
>>
>> -	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>> +	igt_assert_eq(get_freq(dirfd, RPS_CUR_FREQ_MHZ), rpn);
>>   }
>>
>>   int i915 = -1;
>> --
>> 2.38.1
>>
