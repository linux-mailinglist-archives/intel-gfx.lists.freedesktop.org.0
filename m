Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52761581FB4
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 08:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DEC294EFB;
	Wed, 27 Jul 2022 06:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C795094EFB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 06:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658901718; x=1690437718;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vCSnRH3fDFY598pkx39fLr1jsUOZgTfcmHauRkOz16U=;
 b=IZ9wTIfwY+6bA/scjj/2c3vW+qwW8osFnoqcmBcT5xugwihzy+oR7pFl
 DTKl16ilQ159Lmgatc3E4it/eluxdbi30x0GUkFGX0k+G/5IQeIWdBKMG
 HDb48EDME1pR2/c8iT2dP2mEg+brFHsbS5b2kZvCW9CT4PLw2noifFMc5
 lMLCTXjsAbnQ2w1m/XzFFoMJTNnSiZuAt5FRDgmt58uvIvpdyOFI/rSXs
 nfR7dz48tA2QWGe01C8RI1S2sogHgbcIlNWQTY587m51jgbx542nG0oZ0
 KCieatnSY3uCUjjmdo+Hl+vrKIeGYVqbb1gHBVwmC2D6QFf5k4oyBQ9bo A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="288914477"
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="288914477"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 23:01:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,195,1654585200"; d="scan'208";a="575834200"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 26 Jul 2022 23:01:50 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 23:01:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 23:01:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 23:01:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 23:01:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J8HayHozF+WGvcQr/aNO0gzaoFe7qGvO8VXXf7KHIMFkwoaFIhkXa/qdOjocKHGeP7ivhIhnPuMRJfSxmY/wGm77Zj1Fcf6aDPrXMFfxNdJP3QwWT8uHKW35WBXxE8O++BF9B1EwNu8/PTxGWlZx8st2c3zo+5Uf7ykZJT3vsSPNpPNazQp7AgmygTKyitBcdBnFjCR7r53SNkuHHaiPNHQJazEKWdKRWlCQEj1DsVKVfopLf5SBkyyKpoGkV7JWgLnZ6opN1chJCarqB7rdGQSwvd7tMf4pE9nS/s8cTOra1E+y83A8uVWZoDgfyDsDm+KJ14mUa/atO+Y0ja/nbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s5UZGeXeHp8v9eGDB4JidFEKwLgawwbPykc1woqD5SE=;
 b=TQ60Oxgn6QKoFp0BHwZufVZZOQmGEIuSwo8OZyZwbZ2skGRnmx5j6uYFELb5AINJk8V4KWkNFsVVvcmLcpgwJy/MYbS8HELodzXSEJDu+LbjjhPcGiR/2yVF0lqlGimXl6gRssbIM35H7TNAu0FbkBa1+OHNHT3ECNC0Iat5U3qtKOs79s9XYQCwS7vgadMCLajdTddDr+r0YTWp/Gwb4srmqxWXT+cYF/GLhyEdLSN8KrgtYcrAU7NC6aN7LoZuBkwC7e4MaH8ReuG73eyMaq/DKdobmEuxG6276MZJ825pwiSRAMUBmtCn/yJMb8z2A74A3aOSH6cU1rTUjiKx8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO6PR11MB5667.namprd11.prod.outlook.com (2603:10b6:5:35b::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Wed, 27 Jul 2022 06:01:47 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e7:b934:6a3e:59a%7]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 06:01:47 +0000
Date: Tue, 26 Jul 2022 23:01:45 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YuDUyca6f26zv5SE@orsosgc001.jf.intel.com>
References: <20220616221347.27621-1-umesh.nerlige.ramappa@intel.com>
 <a0c37ef9-9cde-883e-306d-11f520e273ef@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <a0c37ef9-9cde-883e-306d-11f520e273ef@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0207.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::32) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 94af10bd-da38-4a6c-a54b-08da6f957d77
X-MS-TrafficTypeDiagnostic: CO6PR11MB5667:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hzk5i0TqP5PE5vU2uP1CKsMbSU0Bcuo+4qjNw/mtYcSVXfHfXE3JgdnnpDkCwzPCBuP/lSP++IZepi/buqxAKQvNZ65j2a3q3XoTI3UWuX7dxgvOVCbTM7V//PVpJT5IkHx93bfG9QPJP8gks9Rwf8YgVrnvEyceiDfnz8KO17zJT1dzo2uR57F3cLKZ4scqcYcLY3O8o/cK1ybAGxn9y7uPVe5MSBdLK/KsLZzmfvEr17LesJNh7XiQ7fPFEddqWAXFbUkZnSEGS4jMZj14MjyrNodAmnDds3pXd4fDffMd+cc5lAYhijZCyQY2SboRrWSlEQFK1fDvP/DXYWlRp1GSNhnDO6fbDQu9xLTsyhJoUR6Rd92ISbOP76wYADnQEyv4TDtLL+JJbk2yjohcyhOw43kIygr/ev8IkKfWcQA1iA1PSz1Z8O5oe7elGUewlvh3cYjy8e2MIHnhK56CubfTP6tlTXlotvXCyzJhRs0pOAFP1p+SIXp9y+vuZv2JEQ50IYOPgU70UwNTHFs0VyFRo0VoyzN0OZ/OghFiBGoxLQCxITCtFoVTFLpyo9EcgD+w8Usr51MCJ4hKaKsxN90j3TJheO7hlGNyLXhinlM2V7/FykGkp/MrSprn2nvanQ1uYGlbI0rpQbfgq2Zur7ax4br+02Qg+4CtbKTs0Mkt+GSMnNyYmRGEgvUiofgqfHGq1q7nIi4/AWMmJlpP3hcwrWIBz3cCGdyfbz7Mio5AQE30KAxXF0JB4djllb47
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(136003)(366004)(346002)(39860400002)(82960400001)(66946007)(8676002)(66556008)(8936002)(6486002)(4326008)(38100700002)(86362001)(966005)(478600001)(5660300002)(316002)(6916009)(83380400001)(186003)(6512007)(41300700001)(66476007)(2906002)(26005)(6506007)(30864003)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejZXdGdGNzI1NlVleXJjaW91ZXQvNFRrZ3pqV1l3UkljSFI1ayt6c3ljNUI5?=
 =?utf-8?B?L3lQKzBFbktCS1V0VG4vcmhoaHBTQytGUjR1UVVqZ3pJOVVFM3B0WmlBWklS?=
 =?utf-8?B?TWM4MjB0ZkR6UG9LWUx0S2NvaW5GSlNlT3hBdU00T3RGWU9uRGVIVitoTmoy?=
 =?utf-8?B?SFZtOFNZM0NBV211M0kzS3hZaEdwUzk2dEg0cFNlLzdyaGlsTmtYYllOeThj?=
 =?utf-8?B?SFdMZDZmaDBsK3VOOFgrSm1xeCtQOVg2ZjBQK1JzWE0zajl6TEJqbDNqMmZh?=
 =?utf-8?B?anBCcHBMQTZTRC9ucnphMW4xd05iQmtpeFk0Q2owZWdWaTVNdUpCZjNYTmU2?=
 =?utf-8?B?cVNxTVZYa2d2T2d3ZW9BcjQ1MHgxSTJac093dGZJMzFBWDU2c3VKbjVORVNB?=
 =?utf-8?B?TGlTR1NmZ01DaW1tZmVpNk5FL21idUN1MmF6SmtOZFY4YzQ5b0JRK1FhUU4z?=
 =?utf-8?B?NWgxRElGNmMweHE5Tkd2ZXZZV3VUNWI1NERmZEI0K0pEMEZxL3lmcS9xTmVl?=
 =?utf-8?B?T2xCSTJJNHpTRFliUk1QSTluQ2JyM292ZmZhSUozczkyaXRxUndJcDdGZHJl?=
 =?utf-8?B?QWl6cTdJYjFuUG53MU55aXpsKzlPVStLTmp1d2tEN1Z3QkFoZnZJcDRrVVpI?=
 =?utf-8?B?Ym1LUG1vYnBjU3M4Q21zWXBRYXlrOHgwK3IwdnlWK0c0SFlnakh0cmhNVis1?=
 =?utf-8?B?THpEVElaNzAvcUY4U1B0NjY3SjhCUVpWMHRQZXhCVVF4TTQ0LzFCd1Ewbitm?=
 =?utf-8?B?QytOSldBZjRkekVVZVJXYUFzZFFjYzlvKzZwTytGeTJyVGtxUVNEbUpVeUlN?=
 =?utf-8?B?WnhycTFGN3dSU2JCTE1Na1YyT3lkNTN3aEJENndvYm81UTJIYWRwWEpyd1RL?=
 =?utf-8?B?M2w5SGJmdVo1M29jQjFabmtXRU5KbDQ5WWljMnM3SXJsTm9wUjlwZm5lLzlV?=
 =?utf-8?B?eHZsQmRPMUF4UVFtdkJkWXZrL0s3b3plbHFyK1NWeTB4cDU3ZzJDM1BuYXVw?=
 =?utf-8?B?MFZ2dEdjUkN4NEtZWm5UOFozRjIyYmZ3ampMaXQydHZUcnFwQ09paWpqRHJD?=
 =?utf-8?B?aHlxSWlhY3FiellxZGVyRlVUdms5UFA5OE1TNmozL2d2bm8rSXdpRGcybzhP?=
 =?utf-8?B?YzQrdUh0SEJ2bjZPU01qMEwrSUhqMzl3R25YaTFMemI1M3J6ZTUzdERJejIv?=
 =?utf-8?B?b254UTVFTGJRNElJYWtOT0ZycWxLajcrQkhxbGtJT04xZy8rTnhKRnVleW9K?=
 =?utf-8?B?Ym4yTUZSTnJPbDBQMGZobWZCR2NpMFU2NjNFNzMzN1BZQWpuN1crMnRYY1gx?=
 =?utf-8?B?UkI0ZUFFazgydkpSanA4YUtyOTg4d3pVNXd2Y3F6UTJzWDkvM3NITjhKSWxB?=
 =?utf-8?B?M011dnZCQ2NhVmt3R20ycWFDN2dqR1I5VU1Wdjlja3E1Y3RNKzQwSDJRZEVm?=
 =?utf-8?B?aUs5K01jL3poZXphRlJoYTVYazhORzkwb3RzbGZicUM1aTc1am5aNFJSNE5H?=
 =?utf-8?B?RlB0OXNCQTJrMVVZaFpXUE93NXRjMVM0bklKcTV6di9pUlFBb1ROK0MzdWV1?=
 =?utf-8?B?T1lJckpZY0pOUWdhZkF5VVcvNE5meWM1SVJMYmxRc1BHb0xuRXBVWkpMR004?=
 =?utf-8?B?ZHlHbXZFZHpSdHo3VWFrUjZ3d0pFbkRVQlh1VW1mZjVHR0ltMjUwS0JKNlVi?=
 =?utf-8?B?OG5JTFBZQnJPaFpNT1dFMnhGOEg3TmtCUUtmSUVGdlBxR3JGTUVQdU92UzJ2?=
 =?utf-8?B?UnhVOWdSNS9XTW02WmNtUVdGVFRaNjR6czllblNBZUVRS09aTU0rOExpWXJF?=
 =?utf-8?B?eDR1OWVkV1pxdWRsU21HN1pDUlNyZkNEdEs4V21ndHJ0Q2ZJTXRCa0Evc29G?=
 =?utf-8?B?NzllZzkvRzEvZEJQNTZtQW9YVCs2SnhzUGthdll1T0lUc0NPN0hWcUxOUzZr?=
 =?utf-8?B?K0NmV0tQZTZlTEE1OUhMNTRLenBnR0RKbUxwYkx5Z3M1bkhZKzV4NlVEVTFJ?=
 =?utf-8?B?VE1vVU1saHBzamd5S1lsaGNlNGsxeDMvSU1ZV290NEVaSkN3Z3c4K2RLZFoz?=
 =?utf-8?B?VHFFYmtrWFg5NCtrbG5YWG1KbitkcCtCNzdLaGkwWG5VQjdlNGYyeW9zTXZu?=
 =?utf-8?B?Y3FJR0VJTk52cEtsNVF4c0tVN3JsS0VlQlBiTVNaNGluL3dxcDhXR0x6SVRG?=
 =?utf-8?Q?c7XHX40vNmbmwJjFag1EfSE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94af10bd-da38-4a6c-a54b-08da6f957d77
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2022 06:01:47.3868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZabKXWPy/DYqj+PwAGdDyEJdzTTDepC9VgJlhHk9w0xqdp2x+MamQEFd9drjApg0VNBq/TdYscAmsaoD9SOZKkR/siLqSsepgVPl014wm6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5667
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

On Fri, Jun 17, 2022 at 09:00:06AM +0100, Tvrtko Ursulin wrote:
>
>On 16/06/2022 23:13, Nerlige Ramappa, Umesh wrote:
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
>>v2: (Tvrtko)
>>- Use COPS_RUNTIME_ACTIVE_TOTAL
>>- Add code comment for the race
>>- Undo local variables initializations
>>
>>v3:
>>- Add support for virtual engines based on
>>   https://patchwork.freedesktop.org/series/105227/
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
>>index 4070cb5711d8..4a84146710e0 100644
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
>>index b7d3214d2cdd..5fc7c19ab29b 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_context.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_context.h
>>@@ -56,7 +56,7 @@ static inline bool intel_context_is_parent(struct intel_context *ce)
>>  	return !!ce->parallel.number_children;
>>  }
>>-static inline bool intel_context_is_pinned(struct intel_context *ce);
>>+static inline bool intel_context_is_pinned(const struct intel_context *ce);
>>  static inline struct intel_context *
>>  intel_context_to_parent(struct intel_context *ce)
>>@@ -116,7 +116,7 @@ static inline int intel_context_lock_pinned(struct intel_context *ce)
>>   * Returns: true if the context is currently pinned for use by the GPU.
>>   */
>>  static inline bool
>>-intel_context_is_pinned(struct intel_context *ce)
>>+intel_context_is_pinned(const struct intel_context *ce)
>>  {
>>  	return atomic_read(&ce->pin_count);
>>  }
>>@@ -351,7 +351,7 @@ intel_context_clear_nopreempt(struct intel_context *ce)
>>  	clear_bit(CONTEXT_NOPREEMPT, &ce->flags);
>>  }
>>-u64 intel_context_get_total_runtime_ns(const struct intel_context *ce);
>>+u64 intel_context_get_total_runtime_ns(struct intel_context *ce);
>>  u64 intel_context_get_avg_runtime_ns(struct intel_context *ce);
>>  static inline u64 intel_context_clock(void)
>>diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>index 09f82545789f..797bb4242c18 100644
>>--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>>+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>>@@ -38,6 +38,9 @@ struct intel_context_ops {
>>  #define COPS_RUNTIME_CYCLES_BIT 1
>>  #define COPS_RUNTIME_CYCLES BIT(COPS_RUNTIME_CYCLES_BIT)
>>+#define COPS_RUNTIME_ACTIVE_TOTAL_BIT 2
>>+#define COPS_RUNTIME_ACTIVE_TOTAL BIT(COPS_RUNTIME_ACTIVE_TOTAL_BIT)
>>+
>>  	int (*alloc)(struct intel_context *ce);
>>  	void (*ban)(struct intel_context *ce, struct i915_request *rq);
>>@@ -55,6 +58,8 @@ struct intel_context_ops {
>>  	void (*sched_disable)(struct intel_context *ce);
>>+	void (*update_stats)(struct intel_context *ce);
>>+
>>  	void (*reset)(struct intel_context *ce);
>>  	void (*destroy)(struct kref *kref);
>>@@ -146,6 +151,7 @@ struct intel_context {
>>  			struct ewma_runtime avg;
>>  			u64 total;
>>  			u32 last;
>>+			u64 start_gt_clk;
>>  			I915_SELFTEST_DECLARE(u32 num_underflow);
>>  			I915_SELFTEST_DECLARE(u32 max_underflow);
>>  		} runtime;
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>>index b3c9a9327f76..6231ad03e4eb 100644
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
>>index 5a1dfacf24ea..cbf3cbb983ce 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>@@ -378,7 +378,7 @@ static inline void set_context_guc_id_invalid(struct intel_context *ce)
>>  	ce->guc_id.id = GUC_INVALID_CONTEXT_ID;
>>  }
>>-static inline struct intel_guc *ce_to_guc(struct intel_context *ce)
>>+static inline struct intel_guc *ce_to_guc(const struct intel_context *ce)
>>  {
>>  	return &ce->engine->gt->uc.guc;
>>  }
>>@@ -1323,13 +1323,16 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
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
>>@@ -1343,6 +1346,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>>  	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>  		__update_guc_busyness_stats(guc);
>>+	/* adjust context stats for overflow */
>>+	xa_for_each(&guc->context_lookup, index, ce)
>>+		__guc_context_update_clks(ce);
>>+
>>  	intel_gt_reset_unlock(gt, srcu);
>>  	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>>@@ -1405,6 +1412,56 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
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
>>@@ -2585,6 +2642,7 @@ static void guc_context_unpin(struct intel_context *ce)
>>  {
>>  	struct intel_guc *guc = ce_to_guc(ce);
>>+	lrc_update_runtime(ce);
>>  	unpin_guc_id(guc, ce);
>>  	lrc_unpin(ce);
>>@@ -3183,6 +3241,7 @@ static void remove_from_context(struct i915_request *rq)
>>  }
>>  static const struct intel_context_ops guc_context_ops = {
>>+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>  	.alloc = guc_context_alloc,
>>  	.pre_pin = guc_context_pre_pin,
>>@@ -3199,6 +3258,8 @@ static const struct intel_context_ops guc_context_ops = {
>>  	.sched_disable = guc_context_sched_disable,
>>+	.update_stats = guc_context_update_stats,
>>+
>>  	.reset = lrc_reset,
>>  	.destroy = guc_context_destroy,
>>@@ -3432,6 +3493,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>>  }
>>  static const struct intel_context_ops virtual_guc_context_ops = {
>>+	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>  	.alloc = guc_virtual_context_alloc,
>>  	.pre_pin = guc_virtual_context_pre_pin,
>>@@ -3447,6 +3509,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>>  	.exit = guc_virtual_context_exit,
>>  	.sched_disable = guc_context_sched_disable,
>>+	.update_stats = guc_context_update_stats,
>
>There are also virtual_parent_context_ops and 
>virtual_child_context_ops - which means more test coverage is needed..

Trying to come back to this... The 
virtual_parent_context_ops/virtual_child_context_ops are used for 
parallel engines. GuC would only update the pphwsp of the parent context 
with the last_switched_in_time.

In general, how should I report the busyness for a parallel engine?

I would think it is busyness reported by parent context multiplied by 
width.

Thanks,
Umesh

>
>Regards,
>
>Tvrtko
>
>>  	.destroy = guc_context_destroy,
>>diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
>>index 18d38cb59923..118db6f03f15 100644
>>--- a/drivers/gpu/drm/i915/i915_drm_client.c
>>+++ b/drivers/gpu/drm/i915/i915_drm_client.c
>>@@ -146,11 +146,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
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
