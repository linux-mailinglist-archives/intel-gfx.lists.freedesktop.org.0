Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCEF5870B1
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 21:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6794611BB2B;
	Mon,  1 Aug 2022 19:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 438B611AB06
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 19:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659380536; x=1690916536;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HbYlyHvqHqvxzeQJGDUjnE6sPj965Iwy12HFx/WORiQ=;
 b=Zs/Fx1WnALVs5b0kSMk4qAXCDZWozT/GSO7XrxJxvUfqxuvxt0Yg/hbp
 rza2vWo016PDMj8oF17sanRpKKwHdM8pvYxGpzAGXDdLclEslzBatbpUd
 MmRPFsP3JK4GmVtcLDX1VfeDB9svDKIbdgU4Pbr6VRJwg2Dcmglk7bLdQ
 WU2fBhBvKilNAKjNzgpOZYzPmTEQXx7sU8EYl3Dn6IP8tfMU0DdJiJFH+
 uNhFmrpVBwZ3mohZ5J3ESAkeZndek1WpF9tVtbQwvbapEE7soO2DiWwPm
 sKIT7KfrviGcpE3IzWjriWtBKKa2oxYKXeisCHDFkIOwxG84vEN0yuzva A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="287978909"
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="287978909"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 12:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,208,1654585200"; d="scan'208";a="599035343"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2022 12:02:14 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 12:02:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 12:02:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 12:02:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KQXapGJQgRRnDJVF2F+inQl7Gyy2led7q64e2+usvF2z0xxGCmFWuQDxAKd5qcUAA9D+/KT4xKkVz89/JW6rWWHGqkyvfchjHQZIx6lAIxtMl4dRCnyPgUGiPMRKa0iBjz9JScH+0N9TqGd2jgT6NNz5+Ch08Rhg+mJ2pxrP6BGxb+a1fJ9Y/JWydu6uCym/YN0eg7fOKartEy05bIudF04o9wHrGwoCdjWQi781kBstgpRfYZtrO//HZyhELgM5Tkghylz+DLgilcahac5a++YtTudj2MzeOe1/eH9t7rhmOBWosk/w7HmBPRZ7PKDRMIWqdO22a1D7qlhc+QNBWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aRlcmxkw1SPms+B4HkDfgOwKJc5rBxnB+qE2t81g+dg=;
 b=NtcddfD/qnRMLG6QI+uZgW1DS33qjn24eHaH7rrE9twEDWDXMFY4lUXnUi95p0BtX5YBpi9FMOzCZG/ZLj5ganUBULjVnQPXf/QuqZLJbvtjAC72m77rHHPU0gHO893cqRxnIZS/20VYxfnbnK1hyld54VNBFFfBOPqdslhSro3nGOx6xGuhoar/4QSQD70WeMBWiSwUedAwDObMJ6f33Y8jHapMMI7+Wu/M1jia3I8GaEt83gcs5Z7/IZxO7VzPBxNzPqSQTFOjsG0/+jQ567wIB/LkcVc7t6T6IwYDmg6F7R0V1EjoTstVI9KTUg+3bGgRf+HCMhg/WcqtxKvTsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CY5PR11MB6485.namprd11.prod.outlook.com (2603:10b6:930:33::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.16; Mon, 1 Aug 2022 19:02:12 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a%7]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 19:02:12 +0000
Date: Mon, 1 Aug 2022 12:02:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YugjMdjh9AFZfybF@orsosgc001.jf.intel.com>
References: <20220616221347.27621-1-umesh.nerlige.ramappa@intel.com>
 <a0c37ef9-9cde-883e-306d-11f520e273ef@linux.intel.com>
 <YuDUyca6f26zv5SE@orsosgc001.jf.intel.com>
 <e09ba5f4-c7f7-68a6-1ccc-df5229952f89@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e09ba5f4-c7f7-68a6-1ccc-df5229952f89@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0105.namprd03.prod.outlook.com
 (2603:10b6:a03:333::20) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72eec56c-399a-4169-341a-08da73f0578d
X-MS-TrafficTypeDiagnostic: CY5PR11MB6485:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7YfqdWWokepqkChYt+TbleUZV/bI026+fG2lDWEwempPlOB2Jx2Q+wtLI+3H9w/Ujo1KiIiRdTGYn8T/SYNvWZ2bl1Loaj9ghxYM3rD0q6Be+071G64XBlAsDDcoAmcUHb9dgnbVXf9+b0AhybmQKznChpimr41Oim22eqC6zL0kcnrlSDQPTHFqeO62hR7WE8eX1nbNThmiRxLQcca5QrtlOJ5hOC2nxHZT+TYPLYUCSLAMcqZYo9CLvUZKqR5IMLFDoS+op7Mp+klq9AsT079341zpdyyUlDSvP/tx9I9wzCg3TnI7Lr/Umsh9mb+h5NDPhHYfqPatsK9V0xAQlv3NxT4KEG4l3OijGuKcmTfKzU6Gep0V4pEAKFv9T6/qn8llxavi7b9ruCfng9IC0Ua2wIpfzoZb2q/eXmH7GAiT8rFiMasIK7qValhCdJTm/FUpVHXy7D6xj+laObXml7wThaoOUgLByFAazYNRhhkl3VUquiKwM6+JPOcLyvQ0Ah0ZCohqYhDZM1Qn5nb6lrL+BKbpjNx4zDgD7EXTrnsUEkhES4E4xPUvJ9gXLXb5CXVe8iDqUFHMxswn/ul6/ZA1b+0/5qYSvfDg0iWynLjWBDGxFtUnZ7QrATWzpIfuKADPqwg9VlVLLYx15ASTKoEbAmm4B0Kvv94HqO6VE83xUtf5icbUwM+QZfUD+UizJecil7LFgwCzF/1LU1zLAjolm9FGkOVeE5vml/1vcuJsyy20mw9fn6mX8FGR5kbY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(136003)(396003)(376002)(346002)(26005)(6512007)(5660300002)(316002)(30864003)(82960400001)(41300700001)(6666004)(2906002)(6916009)(478600001)(186003)(38100700002)(6506007)(83380400001)(8676002)(6486002)(4326008)(66946007)(966005)(66476007)(66556008)(86362001)(8936002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eCtpM0RBMG1pZjljdVBMa0xoVFB3ZE5mV1dUYXYyRDRVc0NaSVNCalpDaWVm?=
 =?utf-8?B?Umx5YkRrUm9TQjYxTFAyV1BBZ0FNOFVRTzhZem1xYWY0bVl0ajg1UTVIK09p?=
 =?utf-8?B?Rk5TODErQVM1bU5RL3VuY245NFk3YVM1MHhTRkZWMU5MSmJCSXcwR3NhekhB?=
 =?utf-8?B?NW1HdkZRVGZaRVlGb1NaQ2pXelJ6aHRzaTdzQVJrdkdwSDRPZDJJYjVDR200?=
 =?utf-8?B?MzRCYTZKMFJIQ3pJMmZ1MHdVRXlxcHN6RVNWVkFRWHd0c1hEM010K01raGVq?=
 =?utf-8?B?WnRJalh1VXFLWVMrbkhpYXZtK25YWEtQY1pKdzR5VEZINlEwTmZueFdMS2Yv?=
 =?utf-8?B?aFptUUw4dnR2Vy9DZmc5RXowV2VlWWdPOVhqblBWOUEzTEx0VUJzSGxhb2kx?=
 =?utf-8?B?NmJNU08wazFEZlNsLzF6TFBRTDQwNDFQa1FEMzFqaXZFOU9iRlBYaVpLbSs2?=
 =?utf-8?B?eUFmV0FkNG1TUldXUTl3bUdtbjRRVnpPWHEzR1JXVFp3TXdIN3g4V2t6WVV3?=
 =?utf-8?B?TkpaS0tRRllGUTZrb3h2cjIwNG5MS0xOQTBvYjdJT2dReEsxMmpRdThxaGgz?=
 =?utf-8?B?eUdNTmFQRStqVTFzS2ZsOGNPbS85cU44ZkVpNDJtWEdOMDgvNC84UFM1RDlv?=
 =?utf-8?B?ZkdwdGxlbkVaNjNRSHI2Y0RpMWZUM28wOWlZcXErMFZpaFFZY2J5Rml6Ri8v?=
 =?utf-8?B?VGtJRytqUFdSUDJqdGVPT0tuM3V5eDZ0OVNPVWRjcmV0eUNDZnRYVGt2UXJa?=
 =?utf-8?B?MUpBNjdaOTA0NGZVL3h6Qlhsa3lCWWQ1RWJZSVR1cklBQkNJSm9PazN4dHZp?=
 =?utf-8?B?bkVVblRqOVE1K3VUbW01M2lYUmtybS95MlRDTkxIY04rUlEyUGpKY3JISHJh?=
 =?utf-8?B?dnVFSllXTTZrZThQWStscUhwTDBRUE8yMm41SmNHRExUUHVoVlJIVEJyQjRB?=
 =?utf-8?B?YWR4L1QzNytGNzJtMzE3R3NqcmxzdmErWlMvWTlvc2xCZHZqVStmcjRFajNy?=
 =?utf-8?B?QXZFS1pVLy9ZUURBR1Fob3kvb0lUOEdXNkFrWmZoU2o2dUhRRkFnY0h2THZG?=
 =?utf-8?B?TlhsSDlOSHpaODU2VjhlVTRKOXEvSXh1NFVlV00vZ21MYmlPcmVTenY1UE9t?=
 =?utf-8?B?MEhTMllQR2hUckVtNjlIRHFpRzlHZS9tT2JHeDEzOWZSMEZDRVo3Z0RLYWZS?=
 =?utf-8?B?emhRUkZuWkUrYU1RK3pjZmlRcllvaHZnbFR0MVZ2QURKM1YzVEFzRkt1YTVn?=
 =?utf-8?B?Y3RGNzY1cnRtdW9oVmxQQnAvdlhHOGNGVEJQSUpsZU02T0phek9pMlRsNmRr?=
 =?utf-8?B?SkY3WGFxQ3M4S3pFbjViNG9tbHlONlhBNkVTTVkrNlFjTTdNOVcxN3pDNW9h?=
 =?utf-8?B?dEJhRWMvdDJsZzYwc2NpNGVmQkJJdFhhQWIxU1ZQejZLTEkxNE9YODBuWXMr?=
 =?utf-8?B?dHVZRmNBdHVYOWRFVG4rK3hyaXArMTFrMjNROUk4Q2RHTGIxRTZtOTErNWt2?=
 =?utf-8?B?T1F0Z3d2QVJpNVlOL01UaUJVMWJUVVlrOXpKaGpGTXFyYmtvZXZqRXBCVW8x?=
 =?utf-8?B?UnJBV2lDaDZOdWJuaE1oT1BVbWNkKy80aEpxQ3FMS3BnazlGd3d1NHI3T3Bx?=
 =?utf-8?B?eFY5VTFLb3JJM0l4RFNQNU9BTHFsMm9veW14UlAxZllybVdMVy9jbjMvWlJs?=
 =?utf-8?B?OEU5QlBzOHkyWnJmSEZJaU55M3VVUnVEdlQwSW9pajh1TVQyY2hXdk9TOUxD?=
 =?utf-8?B?cXMyWGJpNFJ2WDR0NEM1d1pyTTNsc3ZGT2RFNGxuL3BOOW9uRTJqc0dHN2xV?=
 =?utf-8?B?WDZDU2grb1lRaXRTTllpcEV4NjgwbTVGUjBpNy9sdEdHbll1Ym5wZkZaTEhV?=
 =?utf-8?B?enJBMUtDNGVUUzRzeFcwdldQQWg3SU94blRNRk9YV05ya2VDUDUrSGhzR3Jn?=
 =?utf-8?B?c0dtS1NXRDgzRE9CZlZjWjZMMUlJL1VVL1dHS1BLQnpvbUVCcXJESHhFSFNT?=
 =?utf-8?B?enNUQmVZc1h4UzIvWm8vd1VnWnptb0pLNlZsQndqMHgvQjJWeFFXMkVEaG5h?=
 =?utf-8?B?RzNRSnpNaW9oVE51UlJYU2JLS3JVa0RPMFpwRnhHTlljSDFvQ3ZaSlprR21X?=
 =?utf-8?B?blpSd2RDemphM0k3bFlMRjFpazFzQ1h3VDIyMktCUDBNU01ONDdEYXhlZlFT?=
 =?utf-8?Q?5RtnSpFekuV9ZhQ/zyDK8uw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72eec56c-399a-4169-341a-08da73f0578d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 19:02:12.6438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SQadPecP9W8iBZLer0SF7PcSKvM+4+tIX9NnGu20N6WZBdT4DO++lHHCVZXkGFK4EeEMRUF46VRk8an9HxLi6SKWMgoi/PNv5xHXN21Cj38=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6485
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Wire GuC backend to per-client
 busyness
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

On Wed, Jul 27, 2022 at 09:48:18AM +0100, Tvrtko Ursulin wrote:
>
>On 27/07/2022 07:01, Umesh Nerlige Ramappa wrote:
>>On Fri, Jun 17, 2022 at 09:00:06AM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 16/06/2022 23:13, Nerlige Ramappa, Umesh wrote:
>>>>From: John Harrison <John.C.Harrison@Intel.com>
>>>>
>>>>GuC provides engine_id and last_switch_in ticks for an active context in
>>>>the pphwsp. The context image provides a 32 bit total ticks which is the
>>>>accumulated by the context (a.k.a. context[CTX_TIMESTAMP]). This
>>>>information is used to calculate the context busyness as follows:
>>>>
>>>>If the engine_id is valid, then busyness is the sum of accumulated total
>>>>ticks and active ticks. Active ticks is calculated with current gt time
>>>>as reference.
>>>>
>>>>If engine_id is invalid, busyness is equal to accumulated total ticks.
>>>>
>>>>Since KMD (CPU) retrieves busyness data from 2 sources - GPU and GuC, a
>>>>potential race was highlighted in an earlier review that can lead to
>>>>double accounting of busyness. While the solution to this is a wip,
>>>>busyness is still usable for platforms running GuC submission.
>>>>
>>>>v2: (Tvrtko)
>>>>- Use COPS_RUNTIME_ACTIVE_TOTAL
>>>>- Add code comment for the race
>>>>- Undo local variables initializations
>>>>
>>>>v3:
>>>>- Add support for virtual engines based on
>>>>  https://patchwork.freedesktop.org/series/105227/
>>>>
>>>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>---
>>>> drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++-
>>>> drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>>> drivers/gpu/drm/i915/gt/intel_context_types.h |  6 ++
>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>>> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 65 ++++++++++++++++++-
>>>> drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>>> 6 files changed, 89 insertions(+), 11 deletions(-)
>>>>
>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c 
>>>>b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>index 4070cb5711d8..4a84146710e0 100644
>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>@@ -576,16 +576,24 @@ void 
>>>>intel_context_bind_parent_child(struct intel_context *parent,
>>>>     child->parallel.parent = parent;
>>>> }
>>>>-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>>>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>>> {
>>>>     u64 total, active;
>>>>+    if (ce->ops->update_stats)
>>>>+        ce->ops->update_stats(ce);
>>>>+
>>>>     total = ce->stats.runtime.total;
>>>>     if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>>>         total *= ce->engine->gt->clock_period_ns;
>>>>     active = READ_ONCE(ce->stats.active);
>>>>-    if (active)
>>>>+    /*
>>>>+     * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
>>>>+     * already provides the total active time of the context, 
>>>>so skip this
>>>>+     * calculation when this flag is set.
>>>>+     */
>>>>+    if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>>>         active = intel_context_clock() - active;
>>>>     return total + active;
>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.h 
>>>>b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>index b7d3214d2cdd..5fc7c19ab29b 100644
>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>@@ -56,7 +56,7 @@ static inline bool 
>>>>intel_context_is_parent(struct intel_context *ce)
>>>>     return !!ce->parallel.number_children;
>>>> }
>>>>-static inline bool intel_context_is_pinned(struct intel_context *ce);
>>>>+static inline bool intel_context_is_pinned(const struct 
>>>>intel_context *ce);
>>>> static inline struct intel_context *
>>>> intel_context_to_parent(struct intel_context *ce)
>>>>@@ -116,7 +116,7 @@ static inline int 
>>>>intel_context_lock_pinned(struct intel_context *ce)
>>>>  * Returns: true if the context is currently pinned for use by the GPU.
>>>>  */
>>>> static inline bool
>>>>-intel_context_is_pinned(struct intel_context *ce)
>>>>+intel_context_is_pinned(const struct intel_context *ce)
>>>> {
>>>>     return atomic_read(&ce->pin_count);
>>>> }
>>>>@@ -351,7 +351,7 @@ intel_context_clear_nopreempt(struct 
>>>>intel_context *ce)
>>>>     clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>>> }
>>>>-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
>>>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>>> u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>>> static inline u64 intel_context_clock(void)
>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h 
>>>>b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>index 09f82545789f..797bb4242c18 100644
>>>>--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>@@ -38,6 +38,9 @@ struct intel_context_ops {
>>>> #define COPS_RUNTIME_CYCLES_BIT 1
>>>> #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>>>+#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>>>>+#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>>>>+
>>>>     int (*alloc)(struct intel_context *ce);
>>>>     void (*ban)(struct intel_context *ce, struct i915_request *rq);
>>>>@@ -55,6 +58,8 @@ struct intel_context_ops {
>>>>     void (*sched_disable)(struct intel_context *ce);
>>>>+    void (*update_stats)(struct intel_context *ce);
>>>>+
>>>>     void (*reset)(struct intel_context *ce);
>>>>     void (*destroy)(struct kref *kref);
>>>>@@ -146,6 +151,7 @@ struct intel_context {
>>>>             struct ewma_runtime avg;
>>>>             u64 total;
>>>>             u32 last;
>>>>+            u64 start_gt_clk;
>>>>             I915_SELFTEST_DECLARE(u32 num_underflow);
>>>>             I915_SELFTEST_DECLARE(u32 max_underflow);
>>>>         } runtime;
>>>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>index b3c9a9327f76..6231ad03e4eb 100644
>>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>@@ -196,6 +196,11 @@ static inline u8 
>>>>guc_class_to_engine_class(u8 guc_class)
>>>>     return guc_class_engine_class_map[guc_class];
>>>> }
>>>>+/* Per context engine usage stats: */
>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO    (0x500 / sizeof(u32))
>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI    
>>>>(PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO + 1)
>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID    
>>>>(PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI + 1)
>>>>+
>>>> /* Work item for submitting workloads into work queue of GuC. */
>>>> struct guc_wq_item {
>>>>     u32 header;
>>>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>index 5a1dfacf24ea..cbf3cbb983ce 100644
>>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>@@ -378,7 +378,7 @@ static inline void 
>>>>set_context_guc_id_invalid(struct intel_context *ce)
>>>>     ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
>>>> }
>>>>-static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
>>>>+static inline struct intel_guc *ce_to_guc(const struct 
>>>>intel_context *ce)
>>>> {
>>>>     return &ce->engine->gt->uc.guc;
>>>> }
>>>>@@ -1323,13 +1323,16 @@ static void 
>>>>__update_guc_busyness_stats(struct intel_guc *guc)
>>>>     spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>> }
>>>>+static void __guc_context_update_clks(struct intel_context *ce);
>>>> static void guc_timestamp_ping(struct work_struct *wrk)
>>>> {
>>>>     struct intel_guc *guc = container_of(wrk, typeof(*guc),
>>>>                          timestamp.work.work);
>>>>     struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>>>>     struct intel_gt *gt = guc_to_gt(guc);
>>>>+    struct intel_context *ce;
>>>>     intel_wakeref_t wakeref;
>>>>+    unsigned long index;
>>>>     int srcu, ret;
>>>>     /*
>>>>@@ -1343,6 +1346,10 @@ static void guc_timestamp_ping(struct 
>>>>work_struct *wrk)
>>>>     with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>>>         __update_guc_busyness_stats(guc);
>>>>+    /* adjust context stats for overflow */
>>>>+    xa_for_each(&guc->context_lookup, index, ce)
>>>>+        __guc_context_update_clks(ce);
>>>>+
>>>>     intel_gt_reset_unlock(gt, srcu);
>>>>     mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>>>@@ -1405,6 +1412,56 @@ void intel_guc_busyness_unpark(struct 
>>>>intel_gt *gt)
>>>>              guc->timestamp.ping_delay);
>>>> }
>>>>+static void __guc_context_update_clks(struct intel_context *ce)
>>>>+{
>>>>+    struct intel_guc *guc = ce_to_guc(ce);
>>>>+    struct intel_gt *gt = ce->engine->gt;
>>>>+    u32 *pphwsp, last_switch, engine_id;
>>>>+    u64 start_gt_clk, active;
>>>>+    unsigned long flags;
>>>>+    ktime_t unused;
>>>>+
>>>>+    spin_lock_irqsave(&guc->timestamp.lock, flags);
>>>>+
>>>>+    /*
>>>>+     * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when 
>>>>context is switched
>>>>+     * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>>>>+     * relies on GuC and GPU for busyness calculations. Due to this, A
>>>>+     * potential race was highlighted in an earlier review that 
>>>>can lead to
>>>>+     * double accounting of busyness. While the solution to 
>>>>this is a wip,
>>>>+     * busyness is still usable for platforms running GuC submission.
>>>>+     */
>>>>+    pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>>>+    last_switch = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>>>>+    engine_id = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>>>+
>>>>+    guc_update_pm_timestamp(guc, &unused);
>>>>+
>>>>+    if (engine_id != 0xffffffff && last_switch) {
>>>>+        start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>>>+        __extend_last_switch(guc, &start_gt_clk, last_switch);
>>>>+        active = intel_gt_clock_interval_to_ns(gt, 
>>>>guc->timestamp.gt_stamp - start_gt_clk);
>>>>+        WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>>>+        WRITE_ONCE(ce->stats.active, active);
>>>>+    } else {
>>>>+        lrc_update_runtime(ce);
>>>>+    }
>>>>+
>>>>+    spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>+}
>>>>+
>>>>+static void guc_context_update_stats(struct intel_context *ce)
>>>>+{
>>>>+    if (!intel_context_pin_if_active(ce)) {
>>>>+        WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>>>>+        WRITE_ONCE(ce->stats.active, 0);
>>>>+        return;
>>>>+    }
>>>>+
>>>>+    __guc_context_update_clks(ce);
>>>>+    intel_context_unpin(ce);
>>>>+}
>>>>+
>>>> static inline bool
>>>> submission_disabled(struct intel_guc *guc)
>>>> {
>>>>@@ -2585,6 +2642,7 @@ static void guc_context_unpin(struct 
>>>>intel_context *ce)
>>>> {
>>>>     struct intel_guc *guc = ce_to_guc(ce);
>>>>+    lrc_update_runtime(ce);
>>>>     unpin_guc_id(guc, ce);
>>>>     lrc_unpin(ce);
>>>>@@ -3183,6 +3241,7 @@ static void remove_from_context(struct 
>>>>i915_request *rq)
>>>> }
>>>> static const struct intel_context_ops guc_context_ops = {
>>>>+    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>     .alloc = guc_context_alloc,
>>>>     .pre_pin = guc_context_pre_pin,
>>>>@@ -3199,6 +3258,8 @@ static const struct intel_context_ops 
>>>>guc_context_ops = {
>>>>     .sched_disable = guc_context_sched_disable,
>>>>+    .update_stats = guc_context_update_stats,
>>>>+
>>>>     .reset = lrc_reset,
>>>>     .destroy = guc_context_destroy,
>>>>@@ -3432,6 +3493,7 @@ static int 
>>>>guc_virtual_context_alloc(struct intel_context *ce)
>>>> }
>>>> static const struct intel_context_ops virtual_guc_context_ops = {
>>>>+    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>     .alloc = guc_virtual_context_alloc,
>>>>     .pre_pin = guc_virtual_context_pre_pin,
>>>>@@ -3447,6 +3509,7 @@ static const struct intel_context_ops 
>>>>virtual_guc_context_ops = {
>>>>     .exit = guc_virtual_context_exit,
>>>>     .sched_disable = guc_context_sched_disable,
>>>>+    .update_stats = guc_context_update_stats,
>>>
>>>There are also virtual_parent_context_ops and 
>>>virtual_child_context_ops - which means more test coverage is 
>>>needed..
>>
>>Trying to come back to this... The 
>>virtual_parent_context_ops/virtual_child_context_ops are used for 
>>parallel engines. GuC would only update the pphwsp of the parent 
>>context with the last_switched_in_time.
>>
>>In general, how should I report the busyness for a parallel engine?
>>
>>I would think it is busyness reported by parent context multiplied 
>>by width.
>
>That could a reasonable approximation but I can't say for certain. 
>Depends on the GuC scheduler implementation a bit. Like is anything 
>preventing child contexts from finishing their useful work ahead of 
>the parent context, or they are always strictly scheduled as one 
>entity and child engines are blocked from taking other workloads until 
>the parent is scheduled out?

Correct, if a child finishes the work before parent/siblings for some 
reason, it cannot take up other work until all siblings are done.

Regards,
Umesh

>
>Regards,
>
>Tvrtko
>
>>Thanks,
>>Umesh
>>
>>>
>>>Regards,
>>>
>>>Tvrtko
>>>
>>>>     .destroy = guc_context_destroy,
>>>>diff --git a/drivers/gpu/drm/i915/i915_drm_client.c 
>>>>b/drivers/gpu/drm/i915/i915_drm_client.c
>>>>index 18d38cb59923..118db6f03f15 100644
>>>>--- a/drivers/gpu/drm/i915/i915_drm_client.c
>>>>+++ b/drivers/gpu/drm/i915/i915_drm_client.c
>>>>@@ -146,11 +146,7 @@ void i915_drm_client_fdinfo(struct seq_file 
>>>>*m, struct file *f)
>>>>            PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>>>>     seq_printf(m, "drm-client-id:\t%u\n", client->id);
>>>>-    /*
>>>>-     * Temporarily skip showing client engine information with 
>>>>GuC submission till
>>>>-     * fetching engine busyness is implemented in the GuC 
>>>>submission backend
>>>>-     */
>>>>-    if (GRAPHICS_VER(i915) < 8 || 
>>>>intel_uc_uses_guc_submission(&i915->gt0.uc))
>>>>+    if (GRAPHICS_VER(i915) < 8)
>>>>         return;
>>>>     for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
