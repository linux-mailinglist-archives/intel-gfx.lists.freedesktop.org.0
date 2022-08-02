Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085DD5884CC
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 01:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B405B112E72;
	Tue,  2 Aug 2022 23:39:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CF210FEB9
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 23:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659483544; x=1691019544;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=s04ciDLFVrduOTlRxPrwyRBeXHw2dxHzDOtfrHD38pA=;
 b=fvotZ3GRDwU1mm24B5x/hARNEl0Pu77A6tuMV6TX9aERxKWYSxwNzt2U
 EalJDAcQtMupiiql5Xn/Ri5oI6QvUoXQPLWpD9IkjFWCAZ/hq54bi02J1
 HuXjHp9ilP0E1aiH/Oq1Q03AE6cOm9gTnmURj7GdvEPodhRamPpBXPlLl
 aii9LvanVcs6jsER2hqFafK73TEC/21sVfbYSj7Wj1i/mt3bnc7QcQcxE
 o5p9+U/Z5HBzzzDZOygIH1pmwY2ct+3fMBIPAyT0DuihlguXjfswbhuCL
 Cuab1bRMfjOpnhaBXY3EbsTjCLzr/qTA1jTW6m6tfvtU3sIdJC87ISrS2 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="269922986"
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; d="scan'208";a="269922986"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 16:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,212,1654585200"; d="scan'208";a="630916165"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 02 Aug 2022 16:38:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 16:38:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 16:38:49 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 16:38:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ErrC0J/gjjeI74k1mH5rZm1jE57yYb9bQd+cpW7PNGf3VeU0CGJq7RNYEDgdCUgf227uj3lrIo4DiKM+qaDqBGyb7sQc1hyT3Tn/m1yjJYD+UypoT7BsjTaN6gusPvzvfNui7/xXf3bWReYhRNwLhvFAe12cp8SVJ4RdibXR+uplbEybw7ATJZ/QR25wX79snrSDoSDC12H1m/XsnjeLGLC8vwGsr7dTgCqVpCcHS9+SHl3PDnLk2IMaZKoZsriaqamd11eFmWcs+PtSzUzSkZ1gpthNcE8fFVnQGUDdLGBBlE9S5m26jmL+D3pKTTKpUQrTGcbxsv41ksYM0xI02w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SKWstwAWt8yOwvV8hKJ0bi62L60pZTzj4yglVZL2+10=;
 b=CS6H/NQaKfGIby8z7otRlerTbbRdqIiBJk71lebqzF7dm01urYokNod4Adg2SE49nnEgYfyi1Eqe7UV92GS9OAh8r+Hcio/mz8A+UNNM2TY9PtrQXD49Z7yYPnfxTro/x9BiWqz7LhWoAvCVmFqC6bX+0bbIDrwbUAEw7eiOH2T6o0vQWUN50rzy+VFLRYo5V4rLIZ63w5oF6hetEkifknvnNFgyBVc1HjQsDY/pau5VC3PxKxTq9w+ON/+xhK9UuAbxkD8lP8gq29H8jpLXvKuDh765yK4KnPNPUEKM0Mp+A+kZLNApHxk5Chu9oS+cmRzWJ1ntnF5UyRnJ1c7AuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Tue, 2 Aug
 2022 23:38:47 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a%7]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 23:38:47 +0000
Date: Tue, 2 Aug 2022 16:38:45 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Yum1hZcmdWI00WZu@orsosgc001.jf.intel.com>
References: <20220616221347.27621-1-umesh.nerlige.ramappa@intel.com>
 <a0c37ef9-9cde-883e-306d-11f520e273ef@linux.intel.com>
 <YuDUyca6f26zv5SE@orsosgc001.jf.intel.com>
 <e09ba5f4-c7f7-68a6-1ccc-df5229952f89@linux.intel.com>
 <YugjMdjh9AFZfybF@orsosgc001.jf.intel.com>
 <2c5ac8d8-cedc-e7bc-58cd-de088a8b4355@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2c5ac8d8-cedc-e7bc-58cd-de088a8b4355@linux.intel.com>
X-ClientProxiedBy: BY5PR13CA0028.namprd13.prod.outlook.com
 (2603:10b6:a03:180::41) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 451d34ca-7796-497d-0641-08da74e02544
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6204:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vZSqwLuQCZGnTiK1Ld2Pz0LN/79jbI8NgFLDiXGqJf7kiD4/HzIHbjajHc95IPDTpQzGuZNKgoa4yB6dCSi4gcBZzcJTY/ZNeMYqiUJ3kf+8NdpEwdSXAt2ohtWQy4avuNLiavR4zotB4NU5RpCj0xMRA69qqL2XSIP5SiP7AXYhLCxIeAAFlQ7QTPJoPimZLsq0g7FnVgci5KKgZleVwmCPYgX4o3SlcVgTLpJtiZTuOE2iSRA6wlBxYfOcoON4v/FNIvRcSVuF9JhakyKtb8eN8iSYhh49EDJ0MDnviB7EFbOBa4HVsaI4MO+NlYxR66kVVNaQunUmjsYn1F0OWQ9KaW+xzY+PPkJDalxHEXUjEBTxzb67ubrPRx2NlBt+JiiRSys0wVyJ2QcAhyQwLiSWLtNOxBqcNxa0jVR5mRG8BYj5T2c4W8djS+YPdaDvAEYv/F02zJsxVSxkJ3ZZD+qdXA4GrG+2ZyNd0E0WTe9kHt50fv7lPTgOHc3C+cip+mP1qlJt+BAVh/RZ3le/uOQsGYnsZxBXnVGhva6wbfQRem1JZm6FqgY//nsyDXJ8qxkyU/VeFRzuwR4GP7SSFueizzdW5/wFucprK5tFYQGjwF7OYH8aenRbnzBrL8yJWf1DWg0ioXGn1u/68g8OCWOhbeXArVKJwlYALS5lHpMqA1PbUvNtmghwev9hYKjIoAiIHNIP1EcIuxHOVKzNPj7IPU/k4PIbrRj3KMI8Sg1DYT4tMIksRzwv8XFnZixf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(39860400002)(136003)(376002)(2906002)(5660300002)(8936002)(4326008)(30864003)(316002)(6916009)(86362001)(6512007)(26005)(83380400001)(186003)(478600001)(6486002)(966005)(82960400001)(66946007)(41300700001)(8676002)(6506007)(66476007)(66556008)(38100700002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXZTd0tJbUh5dXZzVUhHUVkyNnhnYmFENGFWYVRXcnRscmt1dXFvekJzV2xS?=
 =?utf-8?B?RzZqM1E5QnI3b0dpVElqdHdIN1huOXptbDZ0ODUwVHZuY1IxM1FVWEM5OHl1?=
 =?utf-8?B?K2VhaVlGZ0c4cG1zb0lEdjlQd2sxN09VNUFWRW5jaEwxeFd4OXBnMmwyTzll?=
 =?utf-8?B?cnhzb3BiQzhhRS84VHl4R2R0OWxLc2FTTk9BQzV5K1dIcXh3ZW5qL2NHcG85?=
 =?utf-8?B?N3M5WkwyMUI2K1FNU1JoRDhac2lhTURCMmFMWkJydHkxUmxhbEZ5T0ZGaXVG?=
 =?utf-8?B?UTJKb28vTEMxajdyTjVic242UUk3Q2NlRm9XLzVuMHdkOTBUbGk1Nk9rZ1V5?=
 =?utf-8?B?UkpWWUxwQS9JeGNkV1Z0dndJcHhhZWN3SjFzRmhLb1kyY0N2cXNrL01WV3V4?=
 =?utf-8?B?Qm1UVExHdXVNcWtKNml5NTRXbTBvM1R6cVp1QS81OS9LVy9iS05GTEFkWGFC?=
 =?utf-8?B?YjVUdmlIUlo5YWhjZGtSTmZOT2lnT3JGeWxKMStpNGpPOVJwWC9jSnZ6UFQx?=
 =?utf-8?B?R1RxeFRTaXJkSmo0SXlUdUhpY3F0clcrbTV0eklrVGJYNWFWVUNMVDZSZEkz?=
 =?utf-8?B?UWppNkppaHRSRGpLOGlSWk9DR2dDZHJlK3VlVFBSRWMxWEVZcFhXalVXaVZH?=
 =?utf-8?B?c0M1T3U3b0FCQ3o5bkFMV1hMS2JrU2dzNnR5bWZ0RDVYdjhmUjl0bUhxNlBC?=
 =?utf-8?B?V1lOMldWUmZSdkdsNHI4REVlODFwWW5KQzlsWXJnSk44MDdubTJrNWlMT3RU?=
 =?utf-8?B?aUdQMmtTK0pyaHR5ZUFuRzNvdFJQZXdNRHJMMU96d2hONnZ5WmZtQ29FbTNz?=
 =?utf-8?B?bUU4amU0d3pjSmZ5cy9kSmhrcHNaV2tKbnJtcHlYVUYrR1VwYUtIa2hpK2ha?=
 =?utf-8?B?bDRTa3pJR0hDY1JCS2tRdDVmOGdCU2kvL1dPbk0wdDVBSysvdGJpamdlc0pw?=
 =?utf-8?B?ZU1ibzEzSHd1ZkdXVUFCMTFsQlk3RzN2QUtIVTFhY1BCVGtSOHQrYm5KK0NZ?=
 =?utf-8?B?NXluUWlYYkxENFh5RG1VQ2xPYmM2dGQ2VFBUdHlraUhxT0dHcUZYMEt2djFU?=
 =?utf-8?B?a0sxcHRTcFZOYTcySFpmcjFqUzlqUDZGU0ZmbCsvWmxuMEVoQ0RSL1h5Tk90?=
 =?utf-8?B?SmdUa2d4RHpKY1I3L0N0Mmo0ajgzVmtYVkRCYkFFVFF3MEN3MjlCUjBBOW1I?=
 =?utf-8?B?UDNiQW10T3U0dzhFdXlaRzFlZjNhVEtlWUgraWYvYld4SDE5Z3ZJUWtrblgr?=
 =?utf-8?B?OGMzaENKOGEzMGNpalY2K1h5MEJjZUI2bXdZWWVEZnR1TEpkalEwVW1JTVJS?=
 =?utf-8?B?YksyOWdkWHlBTk1mdmNiajBDYm5RcHRXRVV1MzhCVFhLV3QvMFlUK2V0UTFT?=
 =?utf-8?B?SFRuUDJpRllSN1MyUERnZmdsdk1EdjhlWmd4MnBpTnFQQjRxR25iUnA1OXFr?=
 =?utf-8?B?czlKSDNLMTFIeFpkeXl3cmQvZHJwSXhFRGFIZGp4eUEzSmRNMWpSeUl3RHlx?=
 =?utf-8?B?T1hCSWlsZi9JSUx2MWFzRGR3M0k1RVVmZkJpdHNBUXp0dnlmc3hOY2dkTVpr?=
 =?utf-8?B?ZFFueVdoaHNBZW5yTFZ1bjN3K0p5WDB4TU82cVZ6bGxPQ051c2JJRFRqSEVs?=
 =?utf-8?B?SGw1QTFWS21MM28zUE5WSVNOWDZFeWxBVnM0NWdlVkN2bzN5M3g1MCszUGho?=
 =?utf-8?B?YXpxd2RWVzJjamx5ZnU4UE5Ia1I0YkY0VTBtYkhmS1VsWGlaaGcyWkdOSE01?=
 =?utf-8?B?ZU8rMjJoaGl1ZnBkbTk1SENZZWZuUmYzdnVGYmp0bm1ZTkhuWmFQaGhmRzdH?=
 =?utf-8?B?Z1g2ekJEdzdoUEJicmZ3ZXpNUTkwTTFzeWk0ZG9Edmt3QXcxZ3B6MXRBZEtH?=
 =?utf-8?B?bjRsTFdHaUV5MFB0czNoLzFrUUxqRkpyMDRmWjR0TWgxYjByWHNWVVBRcVps?=
 =?utf-8?B?SXZpR1ZDSWNsVlJjNlB1Ny9zeWxsVEpnbGRjYWoxUjZyT3kyT3VVUitKOTZ6?=
 =?utf-8?B?UGpTck0vb1crcXFrZnh0elZDTFRvc3NHVW9vWHFCdEY1WEVOTGNSNmQ2bENB?=
 =?utf-8?B?Wk0rVndQQW1OZDcySCtjRU5xdUxER0Uvc0kzWnlIcWpJUzYzSlNQeTlNc2VC?=
 =?utf-8?B?VW1aUkFjenZDU2UyRjcxNzEzM2VwNEFsMlhWOEQ3eDlrRnJhU3F3TkE5WTc1?=
 =?utf-8?Q?PDStl77s8QA49AeZdpUWhIg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 451d34ca-7796-497d-0641-08da74e02544
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 23:38:47.7120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wYKVl7N7MOO30Tn+KVSv9BXc+7l2CN7xHjL2FpoKRcNw4Me/rd4Fh7KoH67mgI9KtCQeOfUBcjYImYdsYio2882EQDJrbsHZyVtoqC/fFfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6204
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

On Tue, Aug 02, 2022 at 09:41:38AM +0100, Tvrtko Ursulin wrote:
>
>On 01/08/2022 20:02, Umesh Nerlige Ramappa wrote:
>>On Wed, Jul 27, 2022 at 09:48:18AM +0100, Tvrtko Ursulin wrote:
>>>
>>>On 27/07/2022 07:01, Umesh Nerlige Ramappa wrote:
>>>>On Fri, Jun 17, 2022 at 09:00:06AM +0100, Tvrtko Ursulin wrote:
>>>>>
>>>>>On 16/06/2022 23:13, Nerlige Ramappa, Umesh wrote:
>>>>>>From: John Harrison <John.C.Harrison@Intel.com>
>>>>>>
>>>>>>GuC provides engine_id and last_switch_in ticks for an 
>>>>>>active context in
>>>>>>the pphwsp. The context image provides a 32 bit total ticks 
>>>>>>which is the
>>>>>>accumulated by the context (a.k.a. context[CTX_TIMESTAMP]). This
>>>>>>information is used to calculate the context busyness as follows:
>>>>>>
>>>>>>If the engine_id is valid, then busyness is the sum of 
>>>>>>accumulated total
>>>>>>ticks and active ticks. Active ticks is calculated with 
>>>>>>current gt time
>>>>>>as reference.
>>>>>>
>>>>>>If engine_id is invalid, busyness is equal to accumulated total ticks.
>>>>>>
>>>>>>Since KMD (CPU) retrieves busyness data from 2 sources - GPU 
>>>>>>and GuC, a
>>>>>>potential race was highlighted in an earlier review that can lead to
>>>>>>double accounting of busyness. While the solution to this is a wip,
>>>>>>busyness is still usable for platforms running GuC submission.
>>>>>>
>>>>>>v2: (Tvrtko)
>>>>>>- Use COPS_RUNTIME_ACTIVE_TOTAL
>>>>>>- Add code comment for the race
>>>>>>- Undo local variables initializations
>>>>>>
>>>>>>v3:
>>>>>>- Add support for virtual engines based on
>>>>>>  https://patchwork.freedesktop.org/series/105227/
>>>>>>
>>>>>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>>>---
>>>>>> drivers/gpu/drm/i915/gt/intel_context.c       | 12 +++-
>>>>>> drivers/gpu/drm/i915/gt/intel_context.h       |  6 +-
>>>>>> drivers/gpu/drm/i915/gt/intel_context_types.h |  6 ++
>>>>>> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 ++
>>>>>> .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 65 
>>>>>>++++++++++++++++++-
>>>>>> drivers/gpu/drm/i915/i915_drm_client.c        |  6 +-
>>>>>> 6 files changed, 89 insertions(+), 11 deletions(-)
>>>>>>
>>>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.c 
>>>>>>b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>index 4070cb5711d8..4a84146710e0 100644
>>>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.c
>>>>>>@@ -576,16 +576,24 @@ void 
>>>>>>intel_context_bind_parent_child(struct intel_context 
>>>>>>*parent,
>>>>>>     child->parallel.parent = parent;
>>>>>> }
>>>>>>-u64 intel_context_get_total_runtime_ns(const struct 
>>>>>>intel_context *ce)
>>>>>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>>>>> {
>>>>>>     u64 total, active;
>>>>>>+    if (ce->ops->update_stats)
>>>>>>+        ce->ops->update_stats(ce);
>>>>>>+
>>>>>>     total = ce->stats.runtime.total;
>>>>>>     if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>>>>>         total *= ce->engine->gt->clock_period_ns;
>>>>>>     active = READ_ONCE(ce->stats.active);
>>>>>>-    if (active)
>>>>>>+    /*
>>>>>>+     * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, 
>>>>>>the backend
>>>>>>+     * already provides the total active time of the 
>>>>>>context, so skip this
>>>>>>+     * calculation when this flag is set.
>>>>>>+     */
>>>>>>+    if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>>>>>         active = intel_context_clock() - active;
>>>>>>     return total + active;
>>>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context.h 
>>>>>>b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>index b7d3214d2cdd..5fc7c19ab29b 100644
>>>>>>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>>>>>@@ -56,7 +56,7 @@ static inline bool 
>>>>>>intel_context_is_parent(struct intel_context *ce)
>>>>>>     return !!ce->parallel.number_children;
>>>>>> }
>>>>>>-static inline bool intel_context_is_pinned(struct intel_context *ce);
>>>>>>+static inline bool intel_context_is_pinned(const struct 
>>>>>>intel_context *ce);
>>>>>> static inline struct intel_context *
>>>>>> intel_context_to_parent(struct intel_context *ce)
>>>>>>@@ -116,7 +116,7 @@ static inline int 
>>>>>>intel_context_lock_pinned(struct intel_context *ce)
>>>>>>  * Returns: true if the context is currently pinned for use 
>>>>>>by the GPU.
>>>>>>  */
>>>>>> static inline bool
>>>>>>-intel_context_is_pinned(struct intel_context *ce)
>>>>>>+intel_context_is_pinned(const struct intel_context *ce)
>>>>>> {
>>>>>>     return atomic_read(&ce->pin_count);
>>>>>> }
>>>>>>@@ -351,7 +351,7 @@ intel_context_clear_nopreempt(struct 
>>>>>>intel_context *ce)
>>>>>>     clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>>>>> }
>>>>>>-u64 intel_context_get_total_runtime_ns(const struct 
>>>>>>intel_context *ce);
>>>>>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>>>>> u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>>>>> static inline u64 intel_context_clock(void)
>>>>>>diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h 
>>>>>>b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>index 09f82545789f..797bb4242c18 100644
>>>>>>--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>>>>>@@ -38,6 +38,9 @@ struct intel_context_ops {
>>>>>> #define COPS_RUNTIME_CYCLES_BIT 1
>>>>>> #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>>>>>+#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>>>>>>+#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>>>>>>+
>>>>>>     int (*alloc)(struct intel_context *ce);
>>>>>>     void (*ban)(struct intel_context *ce, struct i915_request *rq);
>>>>>>@@ -55,6 +58,8 @@ struct intel_context_ops {
>>>>>>     void (*sched_disable)(struct intel_context *ce);
>>>>>>+    void (*update_stats)(struct intel_context *ce);
>>>>>>+
>>>>>>     void (*reset)(struct intel_context *ce);
>>>>>>     void (*destroy)(struct kref *kref);
>>>>>>@@ -146,6 +151,7 @@ struct intel_context {
>>>>>>             struct ewma_runtime avg;
>>>>>>             u64 total;
>>>>>>             u32 last;
>>>>>>+            u64 start_gt_clk;
>>>>>>             I915_SELFTEST_DECLARE(u32 num_underflow);
>>>>>>             I915_SELFTEST_DECLARE(u32 max_underflow);
>>>>>>         } runtime;
>>>>>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>>>>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>index b3c9a9327f76..6231ad03e4eb 100644
>>>>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>>>>>@@ -196,6 +196,11 @@ static inline u8 
>>>>>>guc_class_to_engine_class(u8 guc_class)
>>>>>>     return guc_class_engine_class_map[guc_class];
>>>>>> }
>>>>>>+/* Per context engine usage stats: */
>>>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO    (0x500 / sizeof(u32))
>>>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI 
>>>>>>(PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO + 1)
>>>>>>+#define PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID 
>>>>>>(PPHWSP_GUC_CONTEXT_USAGE_STAMP_HI + 1)
>>>>>>+
>>>>>> /* Work item for submitting workloads into work queue of GuC. */
>>>>>> struct guc_wq_item {
>>>>>>     u32 header;
>>>>>>diff --git 
>>>>>>a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>>>b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>index 5a1dfacf24ea..cbf3cbb983ce 100644
>>>>>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>>>@@ -378,7 +378,7 @@ static inline void 
>>>>>>set_context_guc_id_invalid(struct intel_context *ce)
>>>>>>     ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
>>>>>> }
>>>>>>-static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
>>>>>>+static inline struct intel_guc *ce_to_guc(const struct 
>>>>>>intel_context *ce)
>>>>>> {
>>>>>>     return &ce->engine->gt->uc.guc;
>>>>>> }
>>>>>>@@ -1323,13 +1323,16 @@ static void 
>>>>>>__update_guc_busyness_stats(struct intel_guc *guc)
>>>>>>     spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>>> }
>>>>>>+static void __guc_context_update_clks(struct intel_context *ce);
>>>>>> static void guc_timestamp_ping(struct work_struct *wrk)
>>>>>> {
>>>>>>     struct intel_guc *guc = container_of(wrk, typeof(*guc),
>>>>>>                          timestamp.work.work);
>>>>>>     struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>>>>>>     struct intel_gt *gt = guc_to_gt(guc);
>>>>>>+    struct intel_context *ce;
>>>>>>     intel_wakeref_t wakeref;
>>>>>>+    unsigned long index;
>>>>>>     int srcu, ret;
>>>>>>     /*
>>>>>>@@ -1343,6 +1346,10 @@ static void guc_timestamp_ping(struct 
>>>>>>work_struct *wrk)
>>>>>>     with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>>>>>         __update_guc_busyness_stats(guc);
>>>>>>+    /* adjust context stats for overflow */
>>>>>>+    xa_for_each(&guc->context_lookup, index, ce)
>>>>>>+        __guc_context_update_clks(ce);
>>>>>>+
>>>>>>     intel_gt_reset_unlock(gt, srcu);
>>>>>>     mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>>>>>@@ -1405,6 +1412,56 @@ void intel_guc_busyness_unpark(struct 
>>>>>>intel_gt *gt)
>>>>>>              guc->timestamp.ping_delay);
>>>>>> }
>>>>>>+static void __guc_context_update_clks(struct intel_context *ce)
>>>>>>+{
>>>>>>+    struct intel_guc *guc = ce_to_guc(ce);
>>>>>>+    struct intel_gt *gt = ce->engine->gt;
>>>>>>+    u32 *pphwsp, last_switch, engine_id;
>>>>>>+    u64 start_gt_clk, active;
>>>>>>+    unsigned long flags;
>>>>>>+    ktime_t unused;
>>>>>>+
>>>>>>+    spin_lock_irqsave(&guc->timestamp.lock, flags);
>>>>>>+
>>>>>>+    /*
>>>>>>+     * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when 
>>>>>>context is switched
>>>>>>+     * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>>>>>>+     * relies on GuC and GPU for busyness calculations. Due 
>>>>>>to this, A
>>>>>>+     * potential race was highlighted in an earlier review 
>>>>>>that can lead to
>>>>>>+     * double accounting of busyness. While the solution to 
>>>>>>this is a wip,
>>>>>>+     * busyness is still usable for platforms running GuC submission.
>>>>>>+     */
>>>>>>+    pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>>>>>>+    last_switch = 
>>>>>>READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>>>>>>+    engine_id = 
>>>>>>READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>>>>>>+
>>>>>>+    guc_update_pm_timestamp(guc, &unused);
>>>>>>+
>>>>>>+    if (engine_id != 0xffffffff && last_switch) {
>>>>>>+        start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>>>>>>+        __extend_last_switch(guc, &start_gt_clk, last_switch);
>>>>>>+        active = intel_gt_clock_interval_to_ns(gt, 
>>>>>>guc->timestamp.gt_stamp - start_gt_clk);
>>>>>>+        WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>>>>>>+        WRITE_ONCE(ce->stats.active, active);
>>>>>>+    } else {
>>>>>>+        lrc_update_runtime(ce);
>>>>>>+    }
>>>>>>+
>>>>>>+    spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>>>>>+}
>>>>>>+
>>>>>>+static void guc_context_update_stats(struct intel_context *ce)
>>>>>>+{
>>>>>>+    if (!intel_context_pin_if_active(ce)) {
>>>>>>+        WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>>>>>>+        WRITE_ONCE(ce->stats.active, 0);
>>>>>>+        return;
>>>>>>+    }
>>>>>>+
>>>>>>+    __guc_context_update_clks(ce);
>>>>>>+    intel_context_unpin(ce);
>>>>>>+}
>>>>>>+
>>>>>> static inline bool
>>>>>> submission_disabled(struct intel_guc *guc)
>>>>>> {
>>>>>>@@ -2585,6 +2642,7 @@ static void guc_context_unpin(struct 
>>>>>>intel_context *ce)
>>>>>> {
>>>>>>     struct intel_guc *guc = ce_to_guc(ce);
>>>>>>+    lrc_update_runtime(ce);
>>>>>>     unpin_guc_id(guc, ce);
>>>>>>     lrc_unpin(ce);
>>>>>>@@ -3183,6 +3241,7 @@ static void remove_from_context(struct 
>>>>>>i915_request *rq)
>>>>>> }
>>>>>> static const struct intel_context_ops guc_context_ops = {
>>>>>>+    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>>     .alloc = guc_context_alloc,
>>>>>>     .pre_pin = guc_context_pre_pin,
>>>>>>@@ -3199,6 +3258,8 @@ static const struct intel_context_ops 
>>>>>>guc_context_ops = {
>>>>>>     .sched_disable = guc_context_sched_disable,
>>>>>>+    .update_stats = guc_context_update_stats,
>>>>>>+
>>>>>>     .reset = lrc_reset,
>>>>>>     .destroy = guc_context_destroy,
>>>>>>@@ -3432,6 +3493,7 @@ static int 
>>>>>>guc_virtual_context_alloc(struct intel_context *ce)
>>>>>> }
>>>>>> static const struct intel_context_ops virtual_guc_context_ops = {
>>>>>>+    .flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>>>>>     .alloc = guc_virtual_context_alloc,
>>>>>>     .pre_pin = guc_virtual_context_pre_pin,
>>>>>>@@ -3447,6 +3509,7 @@ static const struct intel_context_ops 
>>>>>>virtual_guc_context_ops = {
>>>>>>     .exit = guc_virtual_context_exit,
>>>>>>     .sched_disable = guc_context_sched_disable,
>>>>>>+    .update_stats = guc_context_update_stats,
>>>>>
>>>>>There are also virtual_parent_context_ops and 
>>>>>virtual_child_context_ops - which means more test coverage is 
>>>>>needed..
>>>>
>>>>Trying to come back to this... The 
>>>>virtual_parent_context_ops/virtual_child_context_ops are used 
>>>>for parallel engines. GuC would only update the pphwsp of the 
>>>>parent context with the last_switched_in_time.
>>>>
>>>>In general, how should I report the busyness for a parallel engine?
>>>>
>>>>I would think it is busyness reported by parent context 
>>>>multiplied by width.
>>>
>>>That could a reasonable approximation but I can't say for certain. 
>>>Depends on the GuC scheduler implementation a bit. Like is 
>>>anything preventing child contexts from finishing their useful 
>>>work ahead of the parent context, or they are always strictly 
>>>scheduled as one entity and child engines are blocked from taking 
>>>other workloads until the parent is scheduled out?
>>
>>Correct, if a child finishes the work before parent/siblings for 
>>some reason, it cannot take up other work until all siblings are 
>>done.
>
>The only problem is that I guess one day that assumption might break 
>and we will "never" now. If you have some spare time it would be best 
>to add an IGT to verify this assumption, or at least put that work as 
>TODO in the backlog?

I added some tests to IGT for parallel engine, but something is missing 
in the way I am submitting the batches to the parallel engine. I see 
some hangs, haven't had a chance to debug that. Will try to get to it 
and then post the updated i915 patches.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
