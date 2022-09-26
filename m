Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC815EB5CE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 01:34:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9476E10E1A2;
	Mon, 26 Sep 2022 23:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0293A10E1A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Sep 2022 23:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664235252; x=1695771252;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=axqLLyWFPKuzTVjeV2yluSBPls+bqqclsXKldv5qSec=;
 b=Gt+08LHMKINg9hM8OG5/Y/c9rzstPDFJQFQNX43Uz8MPFpBKhA0YXQSV
 Uh8X23r8UkLSjiVZisnLGC3zLaAq2czHMioLjbHuqn7J7mmPZYoI2PvFj
 q/l4LFEbMmHoDpRBxNuCRvNxPoTBsISAZhFPmmIli209r1S5nzZEbXsf3
 p1iE6Rh5lCg4WvMRfxQSU1Vsg7HDuk7v4nrFH2lPpm/pi4ysEgivMNmxF
 V5hRETCQMEeYvYqTAqfurCJV8uiI59iscC8O2gm8sI6HYyweE2QsVwc0g
 V3ucBVPHrSgbMJSPrgmiQrOvjB/Pxzm7Tqh5PEdz5memiAZcWqbEXSU3l w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="362999874"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="362999874"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 16:34:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="654499052"
X-IronPort-AV: E=Sophos;i="5.93,347,1654585200"; d="scan'208";a="654499052"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 26 Sep 2022 16:34:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 16:34:11 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 16:34:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 16:34:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BcuBIZzmv7SlhyG5WlUx9h6PXoJ+9ojx8pqOdlhowOwVb0SilwLmJVDSKX1FA5LE6HzAgUNM18tcY1RBS+ZCrZWRBkKnUWdMgdRmSZhxAkTmqmTi9SqtqnalUO5Z3Kvi1ZDmu00cgPu6q6pk2OIBYhiZeCDFhiR4Zz7IUO6X1IZIu03WhnB8yxzvh68+E0+Rp6uny7N8gELpxY85QJ2NOEz2EDmNUnWO4oyrrlB202i3kCpbhjD/3Kcjxzw+QCBFq7MB2Cf12WgyJZrfxcMXB2FHp37VuB1d3yGHMaVMzHU77GanIC33B/FkVdORcO0fXa0XkALtc7aI9Z/fBh5G/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uJKBkaV8GMnpNm1XxQ55qdU8CXbsbKSl/695SW9/JNU=;
 b=RgZjAdByEyoIurwrvkQ5jUDQ7B0ZsJxSAO+5bnIpIYxinKI4eNsLWchjWOXS4meouJl2ndtqADhPO4fp/n5bKXk/MK9zmyWImECvIYN6ZhJY9s4CXGXZZ/E/p2IvkuuDoliIJxRT7wYRVLDwc45hSZ4EZmLmwF5vv6mJiSxmoN7MVAdB51qxYuXjvhTFE39g84l9csi4tU8jendwNKkLeWm8ndveT7K9JRSpn7VB+3r73ClPsoM1mZPTZ5o+TKtgKPTMs4Fjcio7RgB09xBZyVySSRmT6+eswT/gZS9lePiTk7ZBnnjDe7Y/x5BW42n/93Fk53KOTPIQt+xc9w3b4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.25; Mon, 26 Sep 2022 23:34:09 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::280f:75b5:17ad:1668%3]) with mapi id 15.20.5654.026; Mon, 26 Sep 2022
 23:34:08 +0000
Message-ID: <7039faf9-b2a1-9400-fdc7-f5dcd7a8dd9a@intel.com>
Date: Mon, 26 Sep 2022 16:34:06 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20220926215410.2268295-1-andrzej.hajda@intel.com>
 <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <YzIrUG8lrEsY9XOo@ashyti-mobl2.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR07CA0051.namprd07.prod.outlook.com
 (2603:10b6:a03:60::28) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|SJ0PR11MB4861:EE_
X-MS-Office365-Filtering-Correlation-Id: a0ee70e2-4130-42c7-95ec-08daa0179bf1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +xBCvuvKY+1C7uMgnJff0aZNstbzxJ5wSn3tN4rrGkmM1oBB4pltUXZNRXBJ8JUm8IUa05uI0GGhKMA6QfNJyz2lnhq7lhdiR0h5W75WqRQ3iztSDoTrTWKr8DiItIB2rfHAazAJk0jNzxCDH+Jp3yUDgAoAAUAeKwoCdtJ795e5DTcRBfcodOXz/3grkesJk9X8XVeTTxKqZbbWrwhtLwUDUecwL0mE4myR9qqihkWrvua5DSv80A/04mMSXfQ28NaRdvd62Lvqti9qheHur5WBBcF912XhCqf8rT69Ij+MvtoBCTmrw7tZqeFP/s+3FJTOeQvNFAkru53wri967++NLqphXKRD5GCgXl5N6GqKjBkSDA6AiKVoT34/J0J5n6QOQNkElQSNsSzWaRJ5TzIX0Ks2fH7Hv7wo1M6trt8gzIbbSGR7/qPIfvfA317WrcK6GY+tW9412qVq0cNm2o0e+ttF9nqT5o6uemCXg2VunH2EN1xW4NZ2Slm9SqRLO7XOc5RFpDhbORX8y4YHjQOCKJbkTqabSjyKaMv8rKIO2+MJGXkRuTCuFli8YBx2YfMn7RC7qI3DbFQPxJdlG5/iJVnDXKefA1Lt8S4zDZa9NeQfmtCr/AQb3OE1MtXdRZfayvw4iL+rHOFUqSpHEfVlSDxpibwTbRRx5fY25PuxjIkMvbLlkwfqCRUr084MT2o/Tt63EqTFYp1W2pdyNjEGlI9Q1oFUsiiZo6I0ch7sxdLEvPl/t1/1+Q34uhwF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(366004)(136003)(376002)(451199015)(31686004)(31696002)(54906003)(110136005)(86362001)(478600001)(6486002)(966005)(316002)(8676002)(4326008)(66556008)(66946007)(66476007)(38100700002)(82960400001)(41300700001)(83380400001)(26005)(6512007)(5660300002)(8936002)(53546011)(6506007)(2906002)(36756003)(186003)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TU94aHg1U0lDZTNkbjRCZlRDY0pTcDczeUJwUXNOeGU4VWFkOVRteHBiNWh2?=
 =?utf-8?B?b3MrL3hLVjJEZDJGa011cHlrNEwzRmlqc1dpUFRpcm5SSFZBdlU5MnMwVXhB?=
 =?utf-8?B?Z29qTHFhakRoQytaSCtUZDZZZnBpU1p4RlQzeTM2T1RzRVlaZTlWUG83d3Vi?=
 =?utf-8?B?blorTTd5Y2xnODR4N3pITHpiOWFZL0ZkdDR5aGxIYTV5akxQY2VLMW1sakpJ?=
 =?utf-8?B?cWZzNWhOWElGWC9zTE5JaVo1ZVVhdklDSE05UkZ4U2xuRTIwTXNDNnJCUTBS?=
 =?utf-8?B?VWhNMWw4ODA1Vk1rd29IMXBaZFM0MEhrNU01dWg3b3M2MTJnTzErM2FXUXZm?=
 =?utf-8?B?QTZ0UzZMNEU3dzBWaHExZGJML05wYkFKVDdwMExqNVlGcU83SmZEZTUzQVYx?=
 =?utf-8?B?OG04Q2o2ZUlFWktNUnc5VGpzVVkvZ1NGWkdrNGRvMWE3eVpzUDRTN0QyRTV5?=
 =?utf-8?B?Zkc2M2s2dHFUUU9iMVJzY2lCZkNLMWpiNGlER2w2L1lyL01OREpycXJwZnBX?=
 =?utf-8?B?VjB2eW1nQitBd3J4YytPOFlHV0t0NjhlNG8xYytNMFFDQS9MYWh3cEpTSVB4?=
 =?utf-8?B?Q21IRFRENk9hQXlZMGViU2twRC9EUzZzaFZVNmxQUXZuaDJxbUlDUzN5TWo1?=
 =?utf-8?B?Rnh2Q3lDNktPWExJcjRJTU10Y0N1N2Jpd2ZCdVF3SVJlVzFIYmVmYU1jRG0v?=
 =?utf-8?B?eTg2MzFNcU94S2J2OFNnbWsrYXg4eFNIcUJkakhWREordjN6ckZTcGpZbzRj?=
 =?utf-8?B?RVgwcTJrcXp1TFh5c1JSKzhaYWlSVDJ3dFhsemR6Y2F1ZGlZWE1ZZ08rcTFM?=
 =?utf-8?B?WEFrNFJ3bG9PYy9IVUk4RjhtNTRwcnhkY3BVUmJTNjhwMkl0K3NyNWJyaTNj?=
 =?utf-8?B?R2lQMTZrWDhHVXRDU2JXd1FRY0RwZ2RGaFBENW5qdlAyUm9CVmpSNWpFOXBx?=
 =?utf-8?B?aHZjVGVyaXJrNlc3QzQ3VE9hOVp0dUNxWExwd0VBZ2Ryd1QyalFxWTdVK0ps?=
 =?utf-8?B?SHR2Y3NuYm9jUG9GeVplYzhqVXFOUjdsWWZOOEVMWnp3Rmdsci83anBqQW8v?=
 =?utf-8?B?R0VCRyswNWdXZDNZUVVidXBwQkRGL1RZYjIyajltYmlpL010dmp2TUEvY1Jw?=
 =?utf-8?B?Vk40azdqbHNidzRMWGJPNlVaeU5OS1hiM0tzenVFMERPOC9SR1RzblZ5alh3?=
 =?utf-8?B?Z29kcVJ6U3V3UmhYdHJvOFBuVmhGY2k1TnhVNW9hSjZ0c1h5Mkd4dlpCUUxp?=
 =?utf-8?B?TFdnbTZTQTY3Z21ac0x1c2hhQTdKNU9zUWd5dE1paDlKTmMzakhIVG5Ib0FC?=
 =?utf-8?B?REExektUV2VXY3FKYjhydXBjSW5wVWlnOElrYmJ6dXJnRUc0NVpSVTJTTEx3?=
 =?utf-8?B?MDBnZGJIMUFkQ0NVN2lpOWU0ZGVhZDE5N1NINHQ1RFlUUVZJZzFPRUxOZFZ4?=
 =?utf-8?B?NnkydFFhZnlEWVhSek9jLzNFQ2pXNnNzSkFkNWNFWUZPelhhNEQ4U0ZhNzJx?=
 =?utf-8?B?a3RtenlXTnZHMU5jRFFQZnFQVlN5b2c2QVY4WFdnKzNxUXZyeThHSjduVzFJ?=
 =?utf-8?B?TDZRM2owc0tENDN0dG1PS0xFbXdnNkE5enpaek5OVFB2c1ZsWmJhK1BmZ2Vz?=
 =?utf-8?B?eER2WnduK3Y0cmwrNnNZYUoxUklJMHlMcUZHVVQyZllKdTZ1VzBudURwYWdJ?=
 =?utf-8?B?ZlZoRHFOY3JQYVFpK083aFJVb1ViOStKRFdkbEpvdzJEQ2FFY1UwWjBrcmtT?=
 =?utf-8?B?VW5JYjYvV2FBYVZjY1I5T3NUdm5qMVBxbGt6Y0JiaFo5U2V0akJwdTZsYnZG?=
 =?utf-8?B?N2pySmlGYVJjV3czZENaZktIekltU3ZYRjJUZ0cyOEt0UVhpN3pVaUVUVW1E?=
 =?utf-8?B?cktiRGxwR05RbzRyZE5NR0d5bGZOUm9BbnVET1FtdHF6QTNOWm9lVE1rQUxu?=
 =?utf-8?B?VEVkRFJEV3dSU2RpUnFzWklxSk5JK0o0KzkrQUdzelFJTUFUT3VvVXA3Q3JM?=
 =?utf-8?B?RktMd2pzTng3RURRcXpjQUx4c0ZJbmw4TGlLeFlvdDVleW0yWEFaOUxLV0tv?=
 =?utf-8?B?Z0RkeHpnMG1HWkh5YnZrdWlTeXB3WUFoWWs4b00weHhMd0RvQjFHaTJpeFZp?=
 =?utf-8?B?R1hTUlhBRW44MFNUb1dkU21kMHpkOUMzZ2MxS09XOHQ1ZjVmSCsvZnFINEs0?=
 =?utf-8?Q?VoSzIYh8XWvk5Lf0J2xDc40=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0ee70e2-4130-42c7-95ec-08daa0179bf1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 23:34:08.8901 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gahVpuwpCqKjRsQpgBXiaacHLNVjHEZQehu/M6iZZd4CZ9Cd1V7at0pJYYlyZ8+wVI4ZKbLbq0BoSs50lvAv3vFa6s9ynry81kOKiHfXa8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: do not capture error state on
 exiting context
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 9/26/2022 3:44 PM, Andi Shyti wrote:
> Hi Andrzej,
>
> On Mon, Sep 26, 2022 at 11:54:09PM +0200, Andrzej Hajda wrote:
>> Capturing error state is time consuming (up to 350ms on DG2), so it should
>> be avoided if possible. Context reset triggered by context removal is a
>> good example.
>> With this patch multiple igt tests will not timeout and should run faster.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/1551
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3952
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5891
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6268
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6281
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> fine for me:
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>
> Just to be on the safe side, can we also have the ack from any of
> the GuC folks? Daniele, John?
>
> Andi
>
>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 22ba66e48a9b01..cb58029208afe1 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -4425,7 +4425,8 @@ static void guc_handle_context_reset(struct intel_guc *guc,
>>   	trace_intel_context_reset(ce);
>>   
>>   	if (likely(!intel_context_is_banned(ce))) {
>> -		capture_error_state(guc, ce);
>> +		if (!intel_context_is_exiting(ce))
>> +			capture_error_state(guc, ce);
>>   		guc_context_replay(ce);

You definitely don't want to replay requests of a context that is going 
away.

This seems at least in part due to 
https://patchwork.freedesktop.org/patch/487531/, where we replaced the 
"context_ban" with "context_exiting". There are several places where we 
skipped operations if the context was banned (here included) which are 
now not covered anymore for exiting contexts. Maybe we need a new 
checker function to check both flags in places where we don't care why 
the context is being removed (ban vs exiting), just that it is?

Daniele

>>   	} else {
>>   		drm_info(&guc_to_gt(guc)->i915->drm,
>> -- 
>> 2.34.1

