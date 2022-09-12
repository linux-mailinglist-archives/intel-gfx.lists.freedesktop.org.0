Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 409A15B5952
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:30:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1320210E39B;
	Mon, 12 Sep 2022 11:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E549010E39B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662982191; x=1694518191;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bQnlSKWcFEdezsDb4JsZmkfzRZ10B6CXDnRTFKYSlzs=;
 b=iSqUnnGjIXHDStNAMjbdaFo/F+V5yXRSFHGHiybXZRFNJgEf9vgRAOA4
 lLQhXnJ5G9lGcWlmFA5bPrCVjvqb5qCaEryZJlpcZqFK/fEUv2kUMk2vz
 ONq9bzZJNwSftYwpKiNaNT3DCPWZyVFnCtaw1hZ0pTk/fJ8pJIx+gyepO
 tyi4bkq2IMOSSDsFPdk3HCESShnKqiotNM9sVy/mfiNy8HKYrZBx4AikT
 eaS+XSWlvQmLTrsg8KUaG7XSI/BHxlWLAj8q8ZB+1DnWlLRBRXfuY5vpV
 GDdJY7/8NqsBT0poDJuEgub9YIXR7VcHzKWTjtYIPfGP0FcD7gfEzUJNc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="284862817"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="284862817"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:29:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="611729851"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 12 Sep 2022 04:29:51 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 04:29:51 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 12 Sep 2022 04:29:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 12 Sep 2022 04:29:50 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 12 Sep 2022 04:29:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GbaYjK1DAPymVQTaBEr+BDlpQcnmM+SHjwQr78y+3EGYQBK9KSvPQb/6YRK1H2opVIj1B5SMBSEt/YZUNHX+B7JfFAmleNybioamKkyIHt/kUsk4ZwDjLnybIzHGChsOpzjtcL1w4kxUY3fDeGgYkJF28HsGRWuJTuZj2oyPvnVub4B/ypOmvJjuSjyofDWuO8l2jNMKMODyyq5o7ZI7JmYz7BAqxpcS2Jn473/Ddde+DXvZ1123Oup5JYdpCu4z24UcZ6MXZ1/keapxPQ6dWGo2i9bzLa1KVT69+HUHuP789AchSxQjmeqCH849gXMWlnrf1qIy0+2pSeH7uO565g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80JiEDoFTZwxCqI6yd/enJ4kEfOoaFKBD1/46JecYOQ=;
 b=dljTD8gmzBK0LXGvZdSQwXDTaHO81qdCwMCjGOAGQrGnWqkPJqAybg/e1A5vRfIhGuEjZtqzEDBMcTGy32mi7i1Wrfx2QNuagJy6l/Ut2qaI9LNJtGcy9BwfqXPZWO6PqD3U0oTg+tgMilTQyu+u2MptyzSTHVeSGU7CtM1P+0WpFuBi+xRCV+Ovm/mooeXepoU2JZYcXIzdn9e0rGJ0x3KbLbgHybDf2hUfNclRYAz0T5++f6965Ea+DFUHxj4foRuw/N1pAskg0ZcmpMcBl/gf+q9hf5NWqr/Ihw6XIgJQyrIExQvRkt7zVJKv9Dl5HNg/7wTgUE8shAkgNnEktQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Mon, 12 Sep
 2022 11:29:48 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::b8f7:e789:58d6:f0ee%7]) with mapi id 15.20.5612.022; Mon, 12 Sep 2022
 11:29:48 +0000
Message-ID: <1ce34139-0b3f-6709-597f-e55437bccc0d@intel.com>
Date: Mon, 12 Sep 2022 16:59:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
 <20220909025646.3397620-5-badal.nilawar@intel.com>
 <87k06c577l.wl-ashutosh.dixit@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <87k06c577l.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0142.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::27) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CO1PR11MB5057:EE_
X-MS-Office365-Filtering-Correlation-Id: 62f49347-b367-4788-5bd5-08da94b21977
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: is4PmXC31Px9vS0Xof/+rx1MNXzs0Kd64FOWO2fYgLaJ2ZWqClpHeCgHJ5v9txAYX2JkXF6iknoPb7gqkylnJ016XeYqV0uFQ/wa07v6R3h+JiaVU/8p5kYKu3lvSAh9CRJDpg1RHpwTVmBwPnoh1SobqTiXJ5iSvdVKeyndAOr82LgJw1pO0EEjQNhFqXa4cwWV7bV2NvbfagV89E66umrFi6Llaq/Xug/YwBm/uxaPWOyBT3NdVov4r0v/CTNjWC0Pg3GRyU1V6YBLF49+RP+Z6YtN4Rq/xulsgVoVJ9/6n3Aos2bvuzS7jo5FZ651svZaUaUxxqmulLP22ws/sQUDN/ocmZov4qQOGZCap2yuwG47778XO7xfq9G83fvRQhYNA5foZsJRjS5i1R5+qgMJQGeOU998roh4wKDtQlfCE5kCFOhFxp0OMV5EWZg2eGspZXIjz7M7DFwU6/UXkP1RWQoreNsyGOj6ckyFDzQpzgPYR+8kzChj2dRtVXNu7jK+EZ4/j8pCV92bjiMWU3qSeVMLW0ybvwEAD79D0t203z/nt/weQkfSjE2Y8cj6D9zkWQKwZps5RRgN7pkiRW578VjwJxs9ALZ4YJV7wKo4ertLdpW50fDD9F7Nwdl3jBOfulX127S+lsp8oenIV1EVV3k7IRxIL5n9e/37KDjHRnirv38jr1VgNtN4QOAxkvykc5VEzhKhI6RSgtURgH5iwDjcytFgblzrZSkmYgpjZrSla1cYZUK0Wy38yCM/QaS1QAXOiM5mQ5GCzhd8hdx4hhL5YDj3VsKX3kLNdyM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(39860400002)(136003)(376002)(396003)(366004)(31686004)(6506007)(4326008)(8676002)(316002)(6666004)(107886003)(37006003)(6636002)(53546011)(66476007)(66946007)(66556008)(186003)(83380400001)(6512007)(36756003)(2616005)(26005)(8936002)(5660300002)(2906002)(6862004)(86362001)(6486002)(41300700001)(38100700002)(31696002)(478600001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWFTN2dGZWFqbUFrY05iU0cyNDdCejVUaFJXNXFyWGNBbHZLR0xWck1Mak13?=
 =?utf-8?B?YzdKSXRzTkZCOGZuQTFsQVExYlNZWjcwc1JKNTQ2d1NGUVB3cDdlL3lCTkxS?=
 =?utf-8?B?Uks5eUJNTGxJdE91OFBsZFFROVJQOTBUWG1iNlJWTXlzc2hOR0twcU9RQWh4?=
 =?utf-8?B?Tkl5TVBHeWE5dFlrYUdFeVE4ZlJHUzFsNStIeXpjS20xRURhbHVpeW5zdWxi?=
 =?utf-8?B?MmhKSkcvbW5YNTRld0xvOUVDcVFPQkZRY1E5aUF1WDM1VmRPZUVMQXVWSmZ1?=
 =?utf-8?B?L0pZRVB1R21rMjY0TXhrZktiWmdLM3I5dXRQSUEvMmxXQzlFUXBaeWtXc2hu?=
 =?utf-8?B?aGxnQlVrMTBUNjZCaVY1N3hYT3lpWnpSUElsdG10ZFpHZHRHZnE4SmlBTkZU?=
 =?utf-8?B?dWRNdUNvaHBtZzZCSlFnNjVwaEJhUjIwNk9nNXZyV0MrNEZlRXUzclNBVzdQ?=
 =?utf-8?B?TSt0RG50QXRqQ3ZxT2kwRVVpQW1xK1R4UHRJZVR0aWY2TkdrYzZJRlJZeklD?=
 =?utf-8?B?bW9uRmk4RFFrVklHNkRqbElJYzB2MEtUSzdTVHV2OVdiL2V0bVp5M3h1ZU9S?=
 =?utf-8?B?T0RTVGk5Rk9mMi9kYUMyS1BZbHY1QVZVODgvVjYvSTVyRnc5di9EWDRNVnQ5?=
 =?utf-8?B?d2dMUDdCSS90Vjczd1pvUWdnbWVGY0Z5Uis1NWdzaGRqTGg1NzJURUNUcWt4?=
 =?utf-8?B?Z2R2M2l4NktBY1RaL25PaUpvVVhkUUdreW5QOXFnRXk4VTFaa0p1WUxPSGxH?=
 =?utf-8?B?dmdHdGlvRnB2cmNWRm1IRmtvNUNkWXEwYXFiMGFqNUFtQXlLalF2UzBnSGd2?=
 =?utf-8?B?aGU4R1VNRWJLdFhxd1dhS0FwcXpNVWQ3eWovNUVjd2RSejRVa0ZyZXN3eGJM?=
 =?utf-8?B?L2tSTXZCNGpVR1hzTlVwVERncmRudSs0N3doTFBlWFgyODhRRURmZjFRSVdm?=
 =?utf-8?B?dFk0YzlzYU5UNlU0UWxWUGl5Y29SRWRQNytEZ2x5QUU4djFrcitza1V1WjR1?=
 =?utf-8?B?Mnh0eXNlMjdsR1E2dzJBOGdESmFNaWlYTXVhcVQzR2dyNnpjVm92UE5NUXl0?=
 =?utf-8?B?aVowZzRBZHZnUVNvQzVtRzZlYzl1MWlEK0Z2cWt1SjZoajV1V0N5VXFFSk5H?=
 =?utf-8?B?bzQzWFBFTmxVUkVOdEx3Wm5SUEpIeDNmcG1iM2s0Q2lOQnpjVkVGZHdLWEla?=
 =?utf-8?B?emNiWUpnWFNrMFd4Z2JEcEZBV2JIT2Noc2JWb1JTUEJKYUFQTitSNnhwUlRR?=
 =?utf-8?B?UkNXSmJWeWc5Tk9LM1ZRSnd2VC9MampGTFVZeTYvVzN4WHcrNGh0bW9tcnpi?=
 =?utf-8?B?RGkxcHZPSUF6dU1KM1NrdzRLSmlINFUybU5VakVxR055QUNEV0l2UDQxdTJm?=
 =?utf-8?B?UWliNVQxQU1JcTFySVJzRHBFeDVxTHl2ejNDcEtjd1ZhNE1LeFRtRGsyaFFB?=
 =?utf-8?B?TmJKcnhnVmU2L2tiMFNqQlY5Q2g2SWs3UVZTYnUyNmVHdkdCaWgrcTRwS0Rq?=
 =?utf-8?B?QkhLMTI2N2RsMFlqZ3hzV1ZqajBXZGM2cldLRzdudWU1SEJIODRsSDJUYWFn?=
 =?utf-8?B?cGlyenZDZ3NHclV6SThueUt1R0w1WndoY1BwWW9aWTFwUTNrWkg2K2YwNkcy?=
 =?utf-8?B?MTlSSTNZQ2JBV0lFSStENTdCZ1Vtck5jS2JvUklvYkRyZ2c5Q1huUWVSWjd0?=
 =?utf-8?B?MFByTjJObG5FNFBMSnhUR1pmRU00MGk5SEN3c1RjdVQ2OVBVN3pNOVp4TFdv?=
 =?utf-8?B?YmM0Nlh6SVpHN21yakFSOUJaODU1dUpiWjFmKzBDRHlRSmJpTSt5TUlOeGVn?=
 =?utf-8?B?bFp1RHc4cjBWWnA4ZkNGNzU0d3Z4OEQ4TmFqWlJqVm82VVlLZk05cHc0NENK?=
 =?utf-8?B?ZDRMQUlZUGc5eTV1dmlHY3lwWVpQdi9uRXNwam9YZFJjUCtqVjNnY3l4eEJK?=
 =?utf-8?B?dzJDcDA0SU5nMWd2NUxMdElDandRN1BMOFBIaHZLSEJlK09WV2sreVhycHY2?=
 =?utf-8?B?L1pTMXVrZXFDUnhUZVAyM2Y0NjRFN0NVUnB0MHg1RjNZU01McW9HU1lpbkJy?=
 =?utf-8?B?akZYZnU4N05rUWlRVk1yM3A2T2U4TkN0c2hrbjEwQ1Z5UTcrMmJZTURvTXJM?=
 =?utf-8?B?Zlo0NnJDNlVVem0wN0o0U1NORjBDWGtRRVBtMDk5d280TW45eXdQa2NkVlJn?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62f49347-b367-4788-5bd5-08da94b21977
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2022 11:29:48.2438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 481BFP8gyRC9K3l+2YOc/3HUWMPxRw48vFugyI1fQn+88T0gtXrAfLXoLFaTmJQxevphUYg4oLC+a46p61uP+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915: Use GEN12 RPSTAT register
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



On 10-09-2022 07:19, Dixit, Ashutosh wrote:
> On Thu, 08 Sep 2022 19:56:44 -0700, Badal Nilawar wrote:
>>
>> From: Don Hiatt <don.hiatt@intel.com>
>>
>> On GEN12, use the correct GEN12 RPSTAT register mask/shift.
>>
>> HSD: 1409538411
> 
> I think let's remove this.
Sure.
> 
>> Cc: Don Hiatt <donhiatt@gmail.com>
>> Cc: Andi Shyti <andi.shyti@intel.com>
>> Signed-off-by: Don Hiatt <don.hiatt@intel.com>
>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c |  2 +-
>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  5 +++++
>>   drivers/gpu/drm/i915/gt/intel_rps.c           | 17 ++++++++++++++++-
>>   drivers/gpu/drm/i915/gt/intel_rps.h           |  1 +
>>   drivers/gpu/drm/i915/i915_pmu.c               |  3 +--
>>   5 files changed, 24 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> index 108b9e76c32e..96c03a1258e1 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
>> @@ -380,7 +380,7 @@ void intel_gt_pm_frequency_dump(struct intel_gt *gt, struct drm_printer *p)
>> 		rpinclimit = intel_uncore_read(uncore, GEN6_RP_UP_THRESHOLD);
>> 		rpdeclimit = intel_uncore_read(uncore, GEN6_RP_DOWN_THRESHOLD);
>>
>> -		rpstat = intel_uncore_read(uncore, GEN6_RPSTAT1);
>> +		rpstat = intel_rps_read_rpstat(rps);
>> 		rpcurupei = intel_uncore_read(uncore, GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
>> 		rpcurup = intel_uncore_read(uncore, GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
>> 		rpprevup = intel_uncore_read(uncore, GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index fb2c56777480..dac59c3e68db 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -1510,6 +1510,11 @@
>>   #define VLV_RENDER_C0_COUNT			_MMIO(0x138118)
>>   #define VLV_MEDIA_C0_COUNT			_MMIO(0x13811c)
>>
>> +#define GEN12_RPSTAT1				_MMIO(0x1381b4)
>> +#define   GEN12_CAGF_SHIFT			11
>> +#define   GEN12_CAGF_MASK			REG_GENMASK(19, 11)
>> +#define   GEN12_VOLTAGE_MASK			REG_GENMASK(10, 0)
> 
> Let's remove GEN12_VOLTAGE_MASK, looks like it's not being used.
Yes, not used. I will remove this.
> 
>> +
>>   #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
>>   #define   GEN11_CSME				(31)
>>   #define   GEN11_GUNIT				(28)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
>> index 6fadde4ee7bf..341f96f536e8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -2040,6 +2040,19 @@ void intel_rps_sanitize(struct intel_rps *rps)
>> 		rps_disable_interrupts(rps);
>>   }
>>
>> +u32 intel_rps_read_rpstat(struct intel_rps *rps)
>> +{
>> +	struct drm_i915_private *i915 = rps_to_i915(rps);
>> +	u32 rpstat;
>> +
>> +	if (GRAPHICS_VER(i915) >= 12)
>> +		rpstat = intel_uncore_read(rps_to_gt(rps)->uncore, GEN12_RPSTAT1);
>> +	else
>> +		rpstat = intel_uncore_read(rps_to_gt(rps)->uncore, GEN6_RPSTAT1);
> 
> Probably nit but how about something like this:
> 
> 	i915_reg_t rpstat;
> 
> 	if (GRAPHICS_VER(i915) >= 12)
> 		rpstat = GEN12_RPSTAT1;
> 	else
> 		rpstat = GEN6_RPSTAT1;
> 
> 	return intel_uncore_read(rps_to_gt(rps)->uncore, rpstat);
Ok
>> +
>> +	return rpstat;
>> +}
>> +
>>   u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
>>   {
>> 	struct drm_i915_private *i915 = rps_to_i915(rps);
>> @@ -2047,6 +2060,8 @@ u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat)
>>
>> 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>> 		cagf = (rpstat >> 8) & 0xff;
>> +	else if (GRAPHICS_VER(i915) >= 12)
>> +		cagf = (rpstat & GEN12_CAGF_MASK) >> GEN12_CAGF_SHIFT;
>> 	else if (GRAPHICS_VER(i915) >= 9)
>> 		cagf = (rpstat & GEN9_CAGF_MASK) >> GEN9_CAGF_SHIFT;
>> 	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
>> @@ -2071,7 +2086,7 @@ static u32 read_cagf(struct intel_rps *rps)
>> 		freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
>> 		vlv_punit_put(i915);
>> 	} else if (GRAPHICS_VER(i915) >= 6) {
>> -		freq = intel_uncore_read(uncore, GEN6_RPSTAT1);
>> +		freq = intel_rps_read_rpstat(rps);
>> 	} else {
>> 		freq = intel_uncore_read(uncore, MEMSTAT_ILK);
>> 	}
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
>> index 4509dfdc52e0..08bae6d97870 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.h
>> @@ -47,6 +47,7 @@ u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
>>   u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
>>   u32 intel_rps_read_punit_req(struct intel_rps *rps);
>>   u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
>> +u32 intel_rps_read_rpstat(struct intel_rps *rps);
>>   void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps);
>>   void intel_rps_raise_unslice(struct intel_rps *rps);
>>   void intel_rps_lower_unslice(struct intel_rps *rps);
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 958b37123bf1..a24704ec2c18 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -371,7 +371,6 @@ static void
>>   frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>   {
>> 	struct drm_i915_private *i915 = gt->i915;
>> -	struct intel_uncore *uncore = gt->uncore;
>> 	struct i915_pmu *pmu = &i915->pmu;
>> 	struct intel_rps *rps = &gt->rps;
>>
>> @@ -394,7 +393,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>> 		 * case we assume the system is running at the intended
>> 		 * frequency. Fortunately, the read should rarely fail!
>> 		 */
>> -		val = intel_uncore_read_fw(uncore, GEN6_RPSTAT1);
>> +		val = intel_rps_read_rpstat(rps);
> 
> Hmm, we got rid of _fw which the comment above refers to. Maybe we need a
> fw flag to intel_rps_read_rpstat?
Above function before reading rpstat it checks if gt is awake. So when 
gt is awake shouldn't matter if we read GEN6_RPSTAT1 with forcewake.In 
that case we can remove above comment.
Let me know your thoughts on this.

Regards,
Badal Nilawar
> 
>> 		if (val)
>> 			val = intel_rps_get_cagf(rps, val);
>> 		else
>> --
>> 2.25.1
>>
