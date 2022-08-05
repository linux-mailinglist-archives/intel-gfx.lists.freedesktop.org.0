Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D29858AD02
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 17:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45558B70D9;
	Fri,  5 Aug 2022 15:23:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D55B73C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Aug 2022 15:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659712734; x=1691248734;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Tk0ot4UyOCQ8oAw1YleF0ldwVwSoqvClGTj9D3I6lk4=;
 b=bdppRdQEgCZiBKAkSn1/H41OzgC0L/8KPwcXbSSuOZEinSazvWxbwmDa
 Q4tvbjKPcpMKEe11HK2ilSC2teseumoRooQHhhtKxbEFVkdt3Lj2EZ/uX
 5XFUeIv+VdVk+3vMx+YV+OFHUf+AkAfTD90jA2109QhkWzsgJIGQSgIql
 LvZ37xqQZFP5HNakjZvdA/CxBduQPA3o2AFqQTakETTyGbTPA4SmWXrq6
 qV2CNOprwiYTAz3kLLxctoAPu3b20/znPZWCoCbpobbAp0qVEYtrfab9E
 AFjtOnJoi6LP7vy1TMjUxBDR0Mdt4ReUk0usvT20s9bAO+D8PuTpUP9nB A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="291443408"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="291443408"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 08:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="554133870"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 05 Aug 2022 08:18:54 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 08:18:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 5 Aug 2022 08:18:52 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 5 Aug 2022 08:18:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 5 Aug 2022 08:18:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lsD/5yZeWFydAzJc0Vop1yU79lElMNi9Yflw2D8BtxVN5LQSSOQCipPCi5D6MzesQSMaWmzJsGyy5SdTAX6TqMbQ/WIXr1k5W7TIuF/OOGJ3dymdskJZEMHoSefvGGSwMhkHaBxqNVyN6Co8PNjmAyxHGMQCYj84/9P/1hpTp3LjruTVD/IZHkdAFgOxxUZI+LjEgTlOkFnc80rkGvkceCPbi+zUtZVJLG5ltFqqbcPQ7SHUgtWqnopJjMlwhHAakMrowEABmyNr/+hTzMSRJgGyqxBhxIeNUYM7P+bGLY4OqZn9FME/gNwmMAXdD0XPMdemiBq86v6GL0ukioY2jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXNVuBB8VXGc73EthFyUBnamXEYbw5tYKWmVrKz7WKA=;
 b=dsWU1Bqzvk4UgjjkRZuSq0YrAn7sHAH4u/VdyhZ7sunewju2zV6yZsAzrJFaiPJlNrecembL8nvysi7h4hUShF3f0seprWhYxf6NTNrr9ro7T1brCCiCoBqE1VaqeHVYtewVdZ930yANkIwjNydWzAw//o0v1KRq9ZYbpzZWQTdAvd3Kmhu8ILIgGST8tR1FuDblyK3Stc9Eexh9xksF3TGPfnZ97v1hBYcjnRCCwkrtNfObDtSaDEnZ0epG1pp35FPjnKu0EO8RkZ9M6wYDNn3WLvs9igMpuGyK8jgvPsJhAa56PlAluSbi6B2F41N4ufV9+4c+kIxmWPw1u4tvbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Fri, 5 Aug
 2022 15:18:50 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::5dd3:6cbb:4aee:8ffe]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::5dd3:6cbb:4aee:8ffe%7]) with mapi id 15.20.5504.016; Fri, 5 Aug 2022
 15:18:50 +0000
Date: Fri, 5 Aug 2022 08:18:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Yu002P4mDn0uycpP@orsosgc001.jf.intel.com>
References: <20220804232125.211449-1-umesh.nerlige.ramappa@intel.com>
 <e9e77415-2a26-c037-bb8e-d6c8b279b05d@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <e9e77415-2a26-c037-bb8e-d6c8b279b05d@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0068.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::13) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 800cd836-f431-4178-ee06-08da76f5cccc
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nr+1YzeBpUonf98gswZnhZkVCkHIMx6eavmif2HyCu/OpC5YkQC9zEDBLcMd2kIIlWjkcewUij9QNuEeuVS3crBu3mULkXf9fA9yi54gD8ZEU4+ZuuFJ67punE0YZ86J6O2eORTTFE6oPg4VvTqzIhHKniZBBb9zSlwCv/nXgLq51GyIV2XlrViHDHhzRTOXwA+qBS/3Pv6x3hdnxDskWeWwQC9r/E0ko+i2ZHaixeHq5XHVCeeX1iNgvNbeqFIYO/P4Gi45kOa4uMtEkstw7h8wWA9azsA9ZV7jA/0G8I+xDP4RaUS2DC2BJBMuwJOCF/NhnxSZb10z1l6xRuU2ii0DB2rFOWXUOuTJUbJ+eNzMkayDTPBv5g396mV+2zqhNOp2/FYhe9guPiVsX3WIqAZ8z60J/N3CSgS1IZ+8O6GQDap9QJj7BH+K3d/b/SAKGVsNx2w7tY7BAzrcXhgVSYbAhaF3vC1U7JS5W7z1QOCncmnBCJzGyO5lZV1UVtojj9tEbcuUaElVV8TwrjkcxQfxzdv5rBd79EqQX6e2AsuCthHmd8xwtxGm8Ab74T0ncXFHlD0eX0y8Zz6K4NIzgwcqMwjktq8IfPtLwc0QKyUkUnw/Ju6iPlvdE1yMe8cOBxrZthLHbihz1T5avtFSly9xnl8PLezPUrNULBGyIkEQ7KvPCJItWU8iLGhcR9EGrYrVhGjKRljVbPRNPhUWENeQVTYuo3TBWJ/JUlA6wKCfXu3hU7vee1yxkN0j7tZm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(396003)(366004)(376002)(346002)(6512007)(6506007)(83380400001)(186003)(38100700002)(26005)(6916009)(316002)(30864003)(8936002)(66476007)(82960400001)(66946007)(8676002)(86362001)(5660300002)(66556008)(4326008)(478600001)(6486002)(2906002)(966005)(41300700001)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mkk4LzYzYWJzbjRZa2c2RUh4Umd2WlloOUh4Y1lEM05vbE80T2VzNEZ2OW9P?=
 =?utf-8?B?Y2ZwQnN0S3Y5WWxKUmRPNUUzekFlcDEvd1JPNzJSTlJBVUxPTHdaYmZBSjNR?=
 =?utf-8?B?SUovWkR3d2srY0VIdWZlZ0dHbEJ5bUxrMXJNN0o1ZnRPMk9GbTJvbmprZHRV?=
 =?utf-8?B?NklDQXNNZ0sxem56SnEyeVVacnNINU1nSFhrNVF0cEhVTUdWeWs5ZmpqQjZi?=
 =?utf-8?B?RzUxSVo3bVBnME9xVS8xRXVIZ2dVVGZDdTh5eklVQkZuNUptd2J2K1gxbXFR?=
 =?utf-8?B?b2lrSUZXTjF3WlZGNDFwdGErOFdnSi9uWFVpRnkxSlE5cmJPQmovdjNhblFS?=
 =?utf-8?B?TkRJemFiUmVTUTg5YUlMOTJQb2dybnpnbG5zd2E3RDJxTDkrbmNPVDRzSUg4?=
 =?utf-8?B?T1NaM2ZBVjFWK2FSbWQ2bVhURVYvRWNuZ3dXR2wvdFU2N0FQZmNMRmMwRzhG?=
 =?utf-8?B?MVI3NWU4M3E2a0Z3OVAvT0tVeG54ZXhTdFdXdWxCR1lIemt6L1IzbnN5cUZT?=
 =?utf-8?B?dW9tWE92bFBoTFl3RHUrU1NmMGdCWVByRkhQZlUvSkpadU13TC9ZNlZ4WDBI?=
 =?utf-8?B?WVJYSTgvMWhLMUNtcGg1b3J5bnZvV3VBbHpVUmZqWGNYV0RPUHdiTk9qSU5X?=
 =?utf-8?B?a3RzSERpelJaVGdsR2JWeVNneERGeFZDT1BIYUdOa0V6KzRDVGt4ZUZZc20x?=
 =?utf-8?B?QkxlcmlKK1JMNmZoTjdSUXUwSlJZbXM4RkRGdy82emJWOGZyYXRBZ2U5cjky?=
 =?utf-8?B?cUY3MTR0c3ppZk1WejhUM0Q1VDJWT1creHJtQTF0b2twZFd4UENTeXVPV3Bl?=
 =?utf-8?B?alA1RldiY04wck9ndjlvcEgyeW0valJ5NDhMVE5odGR4QS9VMlRkK1IvMG5Z?=
 =?utf-8?B?OHRPVlJYeGRpUVc3UVU0T3pMR3ZJMVI1N2xMSUNPVlBhMHRZQ2ozUms2NVNV?=
 =?utf-8?B?ekcxSkQrTGpvRmlNV0V3cjVjalNaeFhTbTFBNEkyNW45RWlpUGMzaWhtTStm?=
 =?utf-8?B?K1BxZlhtR3kzOWhPYlJTdmhzbTJHTkRnbTJMSUpsREZRbklSN1Qzdi84UkZJ?=
 =?utf-8?B?elVQd1RTMk4yUkUyMW54L3NHaU9UY3lTVCtqQXA4TElsc0FTVGhYUUgrbk5S?=
 =?utf-8?B?bkpFVzhVS2s2ek9KWUN2TURyaDFVaVNiZWxOY1JwMzlFYmR0MVFXUit5anl1?=
 =?utf-8?B?Z0NydUtKTFNkUldhZG41ZHFvaE13TVk3N25CeDJEZE1tNkQ1RXJLRmNKWmNt?=
 =?utf-8?B?ZVZ2di9XSnV4T0hFYlB6ZFhZL0NoRDdPM0NvQ0ZBVUJVMkRSZzBkTzFGSXpG?=
 =?utf-8?B?dHdvOVpUYkVZemlRVFk3c0IrWCt6RHo5a05YT3F1bm9Ed3VrdVNhTTAzWmMy?=
 =?utf-8?B?WDFtK0NVV2dTYlkzWVpERDEwalBGanExcDhid09TcE9NdFE0ZzlJTGxVSU5W?=
 =?utf-8?B?WklxbldoYjl2bGJnVUJpRHE4SmM0QkM1RFptNUczMjgzMXRIV2lLQ3MvZnpJ?=
 =?utf-8?B?VW1qNUkzMVByQjZRenYxMSttUXhJcWpIaWJ0YytTWkxRaERlbjZVbkhUWm83?=
 =?utf-8?B?d3czdHJ2TUg1UmFsR2xOTVBOT1ZKbFBzN1FzRHNvUExydUdubzBRSi9qV3BK?=
 =?utf-8?B?RkJ4MUFSNGE3M3JJVEVTOENDMi9QZjVXSEJhdHB4Zlo0eVlGdHNETkoyNE9n?=
 =?utf-8?B?NStEdmtDTHU0RE9MZ3puem5OTThTanlmT3cvN2d6dy82N2gvUTh3ZzRQb3lN?=
 =?utf-8?B?NWxIUTkybWd1WE8rKzBWR0NBSGl5NE12SnZGcUU5VzdWQ0lzRElCeXdpbnNp?=
 =?utf-8?B?a3VHQS9nWlBWMXN6c2NoM3I2U2FiajM5ZDVrZTZqQ01nZkZYWVo2MjRyMUhQ?=
 =?utf-8?B?MlNvenJJaEhjUGI4dTJPSWtpTWY4SndTVmQvd1Q2Nm50RWFJazU1bmJZb0hk?=
 =?utf-8?B?TFF4WGVQQ2VlVTJ6SVA5WGpxV01teFNUVVZ2S1A4M0dvWDVtQ1ZPYytyeWZk?=
 =?utf-8?B?NHVOWTIyQy9NSEV6S0VIMi9leHpqMzA2V2FZODJqdXFKM0tYL3kyb3RUVDI0?=
 =?utf-8?B?K1B1M3JPcXc3SUJGdXBBODlISVJ1d2VnUk9vME1wQ05ldXhuWktKQ1BnZDY5?=
 =?utf-8?B?bHBYS0NPSEU2aHFkUFZrMyt5TWtDcERZTnMzTk9kaVVzUmU0ci9RMjNqV0E3?=
 =?utf-8?Q?WhD5J8g5mYlFLF0LDneyAFs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 800cd836-f431-4178-ee06-08da76f5cccc
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2022 15:18:50.3425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s7u7vvgUtieeRVy5JM90t/XZ0hoEVQTh2w5SogY9sJoIRJzOBQwc6uThrNFN6Jiqk7dhDzjnhBF8QojXUjtID0AWwe8cGxWRUVxHOH0Ceb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5399
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

On Fri, Aug 05, 2022 at 10:45:30AM +0100, Tvrtko Ursulin wrote:
>
>On 05/08/2022 00:21, Umesh Nerlige Ramappa wrote:
>>From: John Harrison <John.C.Harrison@Intel.com>
>>
>>GuC provides engine_id and last_switch_in ticks for an active context in
>>the pphwsp. The context image provides a 32 bit total ticks which is the
>>accumulated by the context (a.k.a. context[CTX_TIMESTAMP]). This
>>information is used to calculate the context busyness as follows:
>>
>>If the engine_id is valid, then busyness is the sum of accumulated total
>>ticks and active ticks. Active ticks is calculated with current gt time
>>as reference.
>>
>>If engine_id is invalid, busyness is equal to accumulated total ticks.
>>
>>Since KMD (CPU) retrieves busyness data from 2 sources - GPU and GuC, a
>>potential race was highlighted in an earlier review that can lead to
>>double accounting of busyness. While the solution to this is a wip,
>>busyness is still usable for platforms running GuC submission.
>>
>>Remaining work: Enable and test context busyness for
>>virtual_parent_context_ops and virtual_child_context_ops.
>
>I meant track the IGT work in the jira internally. :)

Oh, I did do that and added this here as well. Note that I have not 
enabled the busyness in i915 for the parent/child context ops since I 
was not able to verify it yet.

>
>Otherwise:
>
>Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
>Also, can someone else please do the full review? I'm afraid with the 
>passage of time I forgot what little I knew about how GuC tracks this 
>data. :(

I will ask around

>
>Some nits and questions below.
>
>>v2: (Tvrtko)
>>- Use COPS_RUNTIME_ACTIVE_TOTAL
>>- Add code comment for the race
>>- Undo local variables initializations
>>
>>v3:
>>- Add support for virtual engines based on
>>   https://patchwork.freedesktop.org/series/105227/
>>
>>v4:
>>- Update commit message with remaining work.
>>- Rebase
>>
>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++-
>>  drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>  drivers/gpu/drm/i915/gt/intel_context_types.h |  6 ++
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 65 ++++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>  6 files changed, 89 insertions(+), 11 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>>index 654a092ed3d6..e2d70a9fdac0 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>@@ -576,16 +576,24 @@ void intel_context_bind_parent_child(struct intel_context *parent,
>>  	child->parallel.parent = parent;
>>  }
>>-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>  {
>>  	u64 total, active;
>>+	if (ce->ops->update_stats)
>>+		ce->ops->update_stats(ce);
>>+
>>  	total = ce->stats.runtime.total;
>>  	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>  		total *= ce->engine->gt->clock_period_ns;
>>  	active = READ_ONCE(ce->stats.active);
>>-	if (active)
>>+	/*
>>+	 * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
>>+	 * already provides the total active time of the context, so skip this
>>+	 * calculation when this flag is set.
>>+	 */
>>+	if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>  		active = intel_context_clock() - active;
>>  	return total + active;
>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
>>index 8e2d70630c49..3d1d7436c1a4 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>@@ -58,7 +58,7 @@ static inline bool intel_context_is_parent(struct intel_context *ce)
>>  	return !!ce->parallel.number_children;
>>  }
>>-static inline bool intel_context_is_pinned(struct intel_context *ce);
>>+static inline bool intel_context_is_pinned(const struct intel_context *ce);
>>  static inline struct intel_context *
>>  intel_context_to_parent(struct intel_context *ce)
>>@@ -118,7 +118,7 @@ static inline int intel_context_lock_pinned(struct intel_context *ce)
>>   * Returns: true if the context is currently pinned for use by the GPU.
>>   */
>>  static inline bool
>>-intel_context_is_pinned(struct intel_context *ce)
>>+intel_context_is_pinned(const struct intel_context *ce)
>>  {
>>  	return atomic_read(&ce->pin_count);
>>  }
>>@@ -362,7 +362,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
>>  	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>  }
>>-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>  u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>  static inline u64 intel_context_clock(void)
>>diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>index 04eacae1aca5..f7ff4c7d81c7 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>@@ -38,6 +38,9 @@ struct intel_context_ops {
>>  #define COPS_RUNTIME_CYCLES_BIT 1
>>  #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>+#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>>+#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>>+
>>  	int (*alloc)(struct intel_context *ce);
>>  	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
>>@@ -56,6 +59,8 @@ struct intel_context_ops {
>>  	void (*sched_disable)(struct intel_context *ce);
>>+	void (*update_stats)(struct intel_context *ce);
>>+
>>  	void (*reset)(struct intel_context *ce);
>>  	void (*destroy)(struct kref *kref);
>>@@ -148,6 +153,7 @@ struct intel_context {
>>  			struct ewma_runtime avg;
>>  			u64 total;
>>  			u32 last;
>>+			u64 start_gt_clk;
>
>Nit - put u64 next to u64 and u32 next to u32 to avoid holes.
>
>>  			I915_SELFTEST_DECLARE(u32 num_underflow);
>>  			I915_SELFTEST_DECLARE(u32 max_underflow);
>>  		} runtime;
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>index 323b055e5db9..c7b54f1631b9 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>@@ -196,6 +196,11 @@ static inline u8 guc_class_to_engine_class(u8 guc_class)
>>  	return guc_class_engine_class_map[guc_class];
>>  }
>>+/* Per context engine usage stats: */
>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO	(0x500 / sizeof(u32))
>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI	(PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO + 1)
>>+#define PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID	(PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI + 1)
>>+
>>  /* Work item for submitting workloads into work queue of GuC. */
>>  struct guc_wq_item {
>>  	u32 header;
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>index 0d17da77e787..c9fefa254a7e 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>@@ -378,7 +378,7 @@ static inline void set_context_guc_id_invalid(struct intel_context *ce)
>>  	ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
>>  }
>>-static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
>>+static inline struct intel_guc *ce_to_guc(const struct intel_context *ce)
>
>This is odd since the helper now takes away constness. I can't really 
>figure out why the change is needed?
>
>>  {
>>  	return &ce->engine->gt->uc.guc;
>>  }
>>@@ -1376,13 +1376,16 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>>  	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>  }
>>+static void __guc_context_update_clks(struct intel_context *ce);
>>  static void guc_timestamp_ping(struct work_struct *wrk)
>>  {
>>  	struct intel_guc *guc = container_of(wrk, typeof(*guc),
>>  					     timestamp.work.work);
>>  	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>>  	struct intel_gt *gt = guc_to_gt(guc);
>>+	struct intel_context *ce;
>>  	intel_wakeref_t wakeref;
>>+	unsigned long index;
>>  	int srcu, ret;
>>  	/*
>>@@ -1396,6 +1399,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>>  	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>  		__update_guc_busyness_stats(guc);
>>+	/* adjust context stats for overflow */
>>+	xa_for_each(&guc->context_lookup, index, ce)
>>+		__guc_context_update_clks(ce);
>>+
>>  	intel_gt_reset_unlock(gt, srcu);
>>  	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>@@ -1469,6 +1476,56 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
>>  			 guc->timestamp.ping_delay);
>>  }
>>+static void __guc_context_update_clks(struct intel_context *ce)
>>+{
>>+	struct intel_guc *guc = ce_to_guc(ce);
>>+	struct intel_gt *gt = ce->engine->gt;
>>+	u32 *pphwsp, last_switch, engine_id;
>>+	u64 start_gt_clk, active;
>>+	unsigned long flags;
>>+	ktime_t unused;
>>+
>>+	spin_lock_irqsave(&guc->timestamp.lock, flags);
>>+
>>+	/*
>>+	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
>>+	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>>+	 * relies on GuC and GPU for busyness calculations. Due to this, A
>>+	 * potential race was highlighted in an earlier review that can lead to
>>+	 * double accounting of busyness. While the solution to this is a wip,
>>+	 * busyness is still usable for platforms running GuC submission.
>>+	 */
>>+	pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>+	last_switch = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>
>What about PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI? I see it defined but 
>isn't used so is the timestmap 32 bit just ABI reserved 64 bits for 
>future proofing or something?

Yes, the _HI is not populated by GuC yet, but reserved for future 
extension to 64 bits.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
>
>>+	engine_id = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>+
>>+	guc_update_pm_timestamp(guc, &unused);
>>+
>>+	if (engine_id != 0xffffffff && last_switch) {
>>+		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>+		__extend_last_switch(guc, &start_gt_clk, last_switch);
>>+		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
>>+		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>+		WRITE_ONCE(ce->stats.active, active);
>>+	} else {
>>+		lrc_update_runtime(ce);
>>+	}
>>+
>>+	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>+}
>>+
>>+static void guc_context_update_stats(struct intel_context *ce)
>>+{
>>+	if (!intel_context_pin_if_active(ce)) {
>>+		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>>+		WRITE_ONCE(ce->stats.active, 0);
>>+		return;
>>+	}
>>+
>>+	__guc_context_update_clks(ce);
>>+	intel_context_unpin(ce);
>>+}
>>+
>>  static inline bool
>>  submission_disabled(struct intel_guc *guc)
>>  {
>>@@ -2723,6 +2780,7 @@ static void guc_context_unpin(struct intel_context *ce)
>>  {
>>  	struct intel_guc *guc = ce_to_guc(ce);
>>+	lrc_update_runtime(ce);
>>  	unpin_guc_id(guc, ce);
>>  	lrc_unpin(ce);
>>@@ -3344,6 +3402,7 @@ static void remove_from_context(struct i915_request *rq)
>>  }
>>  static const struct intel_context_ops guc_context_ops = {
>>+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>  	.alloc = guc_context_alloc,
>>  	.pre_pin = guc_context_pre_pin,
>>@@ -3360,6 +3419,8 @@ static const struct intel_context_ops guc_context_ops = {
>>  	.sched_disable = guc_context_sched_disable,
>>+	.update_stats = guc_context_update_stats,
>>+
>>  	.reset = lrc_reset,
>>  	.destroy = guc_context_destroy,
>>@@ -3593,6 +3654,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>>  }
>>  static const struct intel_context_ops virtual_guc_context_ops = {
>>+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>  	.alloc = guc_virtual_context_alloc,
>>  	.pre_pin = guc_virtual_context_pre_pin,
>>@@ -3608,6 +3670,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>>  	.exit = guc_virtual_context_exit,
>>  	.sched_disable = guc_context_sched_disable,
>>+	.update_stats = guc_context_update_stats,
>>  	.destroy = guc_context_destroy,
>>diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
>>index b09d1d386574..8d81119fff14 100644
>>--- a/drivers/gpu/drm/i915/i915_drm_client.c
>>+++ b/drivers/gpu/drm/i915/i915_drm_client.c
>>@@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>>  		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>>  	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>>-	/*
>>-	 * Temporarily skip showing client engine information with GuC submission till
>>-	 * fetching engine busyness is implemented in the GuC submission backend
>>-	 */
>>-	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
>>+	if (GRAPHICS_VER(i915) < 8)
>>  		return;
>>  	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
