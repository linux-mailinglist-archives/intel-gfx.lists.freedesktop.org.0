Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270D96D0DCB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 20:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAAA910EF7E;
	Thu, 30 Mar 2023 18:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89D110EF7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680201143; x=1711737143;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=okUu89tApC1QJBi0QDZFbAClIuOWQf4/PlXx8YUgcP4=;
 b=CnfU4qJhn7ngY02mJ9qkyftAWGM7NO61fIywql1jE/heUQGULv9n97e2
 e+l9pBV2kXhCvTntnjIB4NJO33lf4Vw5wO2fUY6sCNeSkkiB1U6+W8vZK
 cyj5VwmKQNFqWWnAMA7+JfF1GwkOYZCSmqOMnd2dVoLypc1QtzqGloztd
 hkwEHP8kLNpNKkKCrob7cioweHt8LynzOi+J5oFWN025CwX1ZJh8tKstR
 +1S+RTrfWtfYUmhZkKT/9d14KFhdAfaKJYmQ7FrAp7t9dJmyTWtYl2aA5
 eNxQYmN/rlVJssygJInK9ntrxunhkNx9V9fMYd5xjK5hR8OyXmFfsik5i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="329775433"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="329775433"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 11:32:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="749310863"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="749310863"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2023 11:32:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 11:32:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 11:32:07 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 11:32:07 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 11:32:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LwWanQyeqwSysajFtqcU0FJamnv//EHezH6rHOw/VHnc10CDtk36O9pSVFmf5hQEXLqnCpLntwuNyz6iichkHiTpKCUGsuKJQnf/0zEdDzDDP8VtAdmijtxnZ286fOUEfl90ayKFQAhFNzAqMkgVLmSANya59XOx/H2/kup8ISwhetQ0e+OvzpUU0O85lzl8nHUZL6833fTcWnEyRtotV9B/Ay6TB/JV0fJXnBeMuqq8cYNBcl5xGRXfzM1m0mHG1///WXcMf/5OHEX7F20E9jaISQDHGoxnplD/GjZjC+3YOsQfveGATaYjb0n38u6OwrB9fIjEHgqXScpYdF+VlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RN9R99ux3MDXHBkeXxfaUpvyGVH0HwqBwNYKF64YGfo=;
 b=Bng+WlpifT7ybR8Ecq7bd0cIrFEp3k6HH1KFdVhjPE67AVCJMzGlJ0Ey5QmiwBh928q+c72GKIsgwZdKwJC8kDf5rGDclfn2ReANaqTnjU5VHBonociqlPjNnRwM/apvFxmww7Incu5vc3alrzoP+xI81TIjPlrfrzdBdMKu6rS8yCS38nmdCP6KntB7LQGaUzRaXTFYs8QRqw1erkQGT0y9Vu9Ae4/FEbJCuPiXQHI1b7RggfUUWfRUJwi1L/rDQnU6GajSQhlzmH7LMiHSf6idtax8/2Ml/ppElda2FZSe0IyL0ouIeWZ8x5UomDjj6JxnyAVsbr7CTF8bExGbnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CH0PR11MB8215.namprd11.prod.outlook.com (2603:10b6:610:182::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.22; Thu, 30 Mar
 2023 18:32:04 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::110a:8742:df45:10ed%4]) with mapi id 15.20.6222.033; Thu, 30 Mar 2023
 18:32:04 +0000
Date: Thu, 30 Mar 2023 11:31:53 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZCXVmTQJi8ulgE8+@orsosgc001.jf.intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-10-umesh.nerlige.ramappa@intel.com>
 <6d3b06eb-d18e-de8f-cc2a-1e9e90a590b0@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <6d3b06eb-d18e-de8f-cc2a-1e9e90a590b0@linux.intel.com>
X-ClientProxiedBy: SJ0P220CA0001.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::7) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CH0PR11MB8215:EE_
X-MS-Office365-Filtering-Correlation-Id: 31d87590-065f-4773-4754-08db314d0f3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CtO8pyAekn5ldNwhNhnnMC6lViQCgBYM1VYuZCFGo7v8UIdaNfBRhJM1VxD74cr5FuNFg/LBiOSTh7U4GT7gWlsONQb/ud7Sd8asGuO6sdNvsSP88+tdNzVi5D6aesIuYveyu2jgCSe2D1xtJxfTKm8ms82hTwTxsoe6jG5oGUcp9xTyrdXO2eTlr8MMOWBlQkJ2V8ZtJrQL8jr1YGCNWND0XrtJp5krF/GSRqjOy8u7VqGnzr0GT8RlVJj7n/s/3+3p2Jx1GW5F2abmjRcvqdzsNplZnwD1seHjxflHc69kkxBHvcdKC4awezuOJbR3S2G1XotDe9nmZrycaVAZEX1k61zJpjO0q/d5h8LJp0NDk/WbeeJpiVbH0pT4xpbgozKQNhj6EPKEEAAnb+29JiIimXPnflj3qMB65JpF5/9EbGWNxKRDl+U4M/qH/8IT0bh2lVlP+3tU7fETaA31UXDJdLafH0EgpwxiO3QskEA5xQ7s6Q060q9F7fdfOqZTTT/UV9r0bdM2oCEP9Dz/nOugpOCtogSLlrsLIqYiuE1SexRBd6EmbV0jOI+xHudu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(366004)(39860400002)(376002)(451199021)(66899021)(6916009)(38100700002)(4326008)(30864003)(5660300002)(8936002)(86362001)(82960400001)(8676002)(66946007)(66556008)(41300700001)(66476007)(6486002)(83380400001)(26005)(2906002)(6506007)(6666004)(6512007)(186003)(316002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NG9DS3Q1Snl0b2grTVh4aG9Pb2pzQWxmWW9BQlNBSVFEZ1NKd1UzOWJUUGt6?=
 =?utf-8?B?N01LRVE1QmZwS3U5QkNyYTJmamdRMTdQRTJSWHlpSDkrV3Y2N0daYnViN0dz?=
 =?utf-8?B?N1h5d1QvT0VDbklFQ1NzUEJsY0xRTTUvZVFzVWxlL2cvTlNvOU9QYXNSRXNv?=
 =?utf-8?B?NER1alUyRDYrSmJLREVMaFlJd0hZdlZlQzVQMmdpOUVQRnZxaVQ0Sloxb25s?=
 =?utf-8?B?cU9HekF4TnRFQnhTcDRkcHdOampKNHdmeTNHWkpVK3pNV2lEQVhxZ3dHbUJi?=
 =?utf-8?B?eFdsQUZRZ1AzV3pNRkxWTVlTY1FNV24yZUxuNm9jWWlQUlRTSndRR1E3RCtI?=
 =?utf-8?B?WE9zUk52UHhFVWtWc1kvZ3pzOVVaTUl0Y2V4QlUrMUhiUjVCSWMvUmhxUDds?=
 =?utf-8?B?a3d4WWxoSmFlYng4ODBqVWtSZFFPNTB4TW42ZHR2cUVsclIwbnZXcUMwYmpU?=
 =?utf-8?B?bEQ2QkFsWXFOQkUyYUtsTE84ZFNrUFlZMDRKQVljWDBwMlFPalFYNHJsVEIw?=
 =?utf-8?B?ZnZnQkJtdTdNZ1ZtdVBhNlRrNzgzWnNTWUhsYzY4enpieVhaQ3QvMzN3aU5o?=
 =?utf-8?B?cklYYUdFbEZkVW9paTMrNThFcXhDd21IN2JIZnhpcFJQZWsvaHBkMUFiZ1Jt?=
 =?utf-8?B?TmtkNEovekxXWm5oR3NtV3lLcDRVZDJPSGNEeFdMb2lseGw3ckl1VUdWdm9h?=
 =?utf-8?B?TmhjZ3gxTGNORWlDU3VVcFQ3bFZLWXAxMGFURndmV3ZUNFIrSkR4elBLZTFN?=
 =?utf-8?B?akhoYkp4TDFMSlV6Tk9wc0tMV29TTzZiaENPOFNBQlpVaEUxRHRjRGRXOU5p?=
 =?utf-8?B?azF1ODJ5bWp2YnRGZkIzT240TmNhUFJSR0Vyb3RwVVU2eGJLeDNVZDRjeVQ3?=
 =?utf-8?B?UTBMaHQ4RWZyWER2WU51NmFYUUxNUll6RUk0enc5T3hsR0dkZ1l4Nnh6aDhI?=
 =?utf-8?B?UHJSa1F2SUJUc0lvYjVZQm5OUlVSaTh0NUQvMENLSUM4cGhrQVlhNlJhTnpl?=
 =?utf-8?B?VUthVDh0d2F6RjJMNCthbW9vOTJ2K2FnQmNmdmRTN3ptQ2NCUlJ0K1dsUVpN?=
 =?utf-8?B?dVF5RHpJQ0pWRHlvbjQ5ei8wQ1I2RVBsS3hLRDErUXJhYzdaM0tZcFVaT2s0?=
 =?utf-8?B?cm5TbEs5NTJhUWFPdm92bWdwNE1GWlgrb2JhQ3VQbHVIZDlmZXVobitjRWNn?=
 =?utf-8?B?cFNBYXRUU2dpUnhJOTFmYnFERnJiQ1ZEbkJvRWNYMmFZYXlpTXp5ZmFIUFRk?=
 =?utf-8?B?OGdKdHdLV1FmQ05kQnZjdUlqTnlWQnFmaS9ibFpDRkwxWDhuQkRSTCtYVGpB?=
 =?utf-8?B?R25Vcml1YjE3dHlCQjlCb1NKb1lRWHFQWmxNRHN2NTdtU0xXa0s5bHpPTUtt?=
 =?utf-8?B?U3VoVE9nMTlPenJzSitIY250NytEUzBRTS9IWGJYWWNOUmcyQTVkRWdwMDA2?=
 =?utf-8?B?OGRyWXlLM3JOb3Vnc09BWlRZd0lkaGV3MGxQZi9yTkxGemJ4MHN4eUFsMkEy?=
 =?utf-8?B?Tk8wOVdGMXVjamt2VzdkNWwvd3FaWWZNRTVFRHdZekc5cE5NOG1ZM0Qza2t1?=
 =?utf-8?B?Y0xYR1pBNk5UMUVWRXRjT0tKN3BXU3o3UnlvSzdTamFCTlR3aVlFSlBPWjBm?=
 =?utf-8?B?cDlRZmI4MzF3L0NneWl3MFlpVmw1eStTQTZoNmlsQllFL2I3QU1ESFVuaThU?=
 =?utf-8?B?dkQ4QTh6MjBmZUtrcERCZWJ6elRPakZ1Y2djQnJhUzVIVlBpc2ZIRFlZMUFU?=
 =?utf-8?B?STIvTTVWZlJNYkV0VGh0dXVQb281QkI4NzJaVC9MYWNJY05uR0ltNWs1bVdy?=
 =?utf-8?B?OG1vdDVDNDRJc1JuUkk0bEs3eWtEdysrakF0VFNTTlBGSjNjemVGdWlaaGx5?=
 =?utf-8?B?T201VThvQXdxZEp6aTFxbDVEOTVqbnhpNzd0aFBpRTdMUXRFcUpoaUZCZTg3?=
 =?utf-8?B?NXBuV0lxdU9qSW9xMHdDRytEOGFZV2NIVHRYcVUxc1UweVFRZUMrd0Y0a3Bo?=
 =?utf-8?B?akZqTHIraStSLzdjQU5ON0tSY3hlZUJCNjNBcHZQTVZGa20xWDZxcWY1QlRP?=
 =?utf-8?B?SUtiSVNTams5eDBFUHZRRm95TVJ6Y0ZsNGVnNzFmWkdjU0xxVjJRU2JGVUxI?=
 =?utf-8?B?U1IyK2d5cVdpQkxGb0NweTdmSXVuTjFRMmJvSFJQdWNWZlU5N0luemdEMGhT?=
 =?utf-8?Q?bw+MsGuTGoMXEPHNmNCYPFI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d87590-065f-4773-4754-08db314d0f3d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2023 18:32:04.3821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q2scSeuH0jGohmKdXRN9yZfi11n/rpLlO9WJCqTra+Bka+i/exw0w35xy9fymARQFP6GBm1bOvf5obotFrxd4ikQsBKjJwnPwfwAUf197FA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8215
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/pmu: Enable legacy PMU events
 for MTL
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

+ Joonas for comments on this

On Thu, Mar 30, 2023 at 02:38:03PM +0100, Tvrtko Ursulin wrote:
>
>On 30/03/2023 01:41, Umesh Nerlige Ramappa wrote:
>>MTL introduces separate GTs for render and media. This complicates the
>>definition of frequency and rc6 counters for the GPU as a whole since
>>each GT has an independent counter. The best way to support this change
>>is to deprecate the GPU-specific counters and create GT-specific
>>counters, however that just breaks ABI. Since perf tools and scripts may
>>be decentralized with probably many users, it's hard to deprecate the
>>legacy counters and have all the users on board with that.
>>
>>Re-introduce the legacy counters and support them as min/max of
>>GT-specific counters as necessary to ensure backwards compatibility.
>>
>>I915_PMU_ACTUAL_FREQUENCY - will show max of GT-specific counters
>>I915_PMU_REQUESTED_FREQUENCY - will show max of GT-specific counters
>>I915_PMU_INTERRUPTS - no changes since it is GPU specific on all platforms
>>I915_PMU_RC6_RESIDENCY - will show min of GT-specific counters
>>I915_PMU_SOFTWARE_GT_AWAKE_TIME - will show max of GT-specific counters
>
>IMO max/min games are _very_ low value and probably just confusing.

By value, do you mean ROI or actually that the values would be 
incorrect?

>
>I am not convinced we need to burden the kernel with this. New 
>platform, new counters.. userspace can just deal with it.

I agree and would prefer to drop this patch. There are some counter 
arguments, I have added Joonas here for comments.

1) an app/script hard-coded with the legacy events would be used on a 
new platform and fail and we should maintain backwards compatibility.

2) the sysfs attributes for rc6/frequency have already adopted an 
aggregate vs gt0/gt1 approach to address that and pmu should have a 
similar solution (or rather, PMU and the sysfs approaches should match 
based on whatever is the approach)

Regards,
Umesh

>
>In intel_gpu_top we can do the smarts in maybe default aggregated view 
>(piggy back/extend on engines aggregation via command line '-p' or '1' 
>at runtime). But then it's not min/max but probably normalized by 
>number of gts.
>
>Regards,
>
>Tvrtko
>
>>
>>Note:
>>- For deeper debugging of performance issues, tools must be upgraded to
>>   read the GT-specific counters.
>>- This patch deserves to be separate from the other PMU features so that
>>   it can be easily dropped if legacy events are ever deprecated.
>>- Internal implementation relies on creating an extra entry in the
>>   arrays used for GT specific counters. Index 0 is empty.
>>   Index 1 through N are mapped to GTs 0 through N - 1.
>>- User interface will use GT numbers indexed from 0 to specify the GT of
>>   interest.
>>
>>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>---
>>  drivers/gpu/drm/i915/i915_pmu.c | 134 +++++++++++++++++++++++++++-----
>>  drivers/gpu/drm/i915/i915_pmu.h |   2 +-
>>  include/uapi/drm/i915_drm.h     |  14 ++--
>>  3 files changed, 125 insertions(+), 25 deletions(-)
>>
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>>index 9bd9605d2662..0dc7711c3b4b 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.c
>>+++ b/drivers/gpu/drm/i915/i915_pmu.c
>>@@ -221,7 +221,7 @@ add_sample_mult(struct i915_pmu *pmu, unsigned int gt_id, int sample, u32 val,
>>  static u64 get_rc6(struct intel_gt *gt)
>>  {
>>  	struct drm_i915_private *i915 = gt->i915;
>>-	const unsigned int gt_id = gt->info.id;
>>+	const unsigned int gt_id = gt->info.id + 1;
>>  	struct i915_pmu *pmu = &i915->pmu;
>>  	unsigned long flags;
>>  	bool awake = false;
>>@@ -267,24 +267,26 @@ static void init_rc6(struct i915_pmu *pmu)
>>  	for_each_gt(gt, i915, i) {
>>  		intel_wakeref_t wakeref;
>>+		const unsigned int gt_id = i + 1;
>>  		with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
>>  			u64 val = __get_rc6(gt);
>>-			store_sample(pmu, i, __I915_SAMPLE_RC6, val);
>>-			store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
>>+			store_sample(pmu, gt_id, __I915_SAMPLE_RC6, val);
>>+			store_sample(pmu, gt_id, __I915_SAMPLE_RC6_LAST_REPORTED,
>>  				     val);
>>-			pmu->sleep_last[i] = ktime_get_raw();
>>+			pmu->sleep_last[gt_id] = ktime_get_raw();
>>  		}
>>  	}
>>  }
>>  static void park_rc6(struct intel_gt *gt)
>>  {
>>+	const unsigned int gt_id = gt->info.id + 1;
>>  	struct i915_pmu *pmu = &gt->i915->pmu;
>>-	store_sample(pmu, gt->info.id, __I915_SAMPLE_RC6, __get_rc6(gt));
>>-	pmu->sleep_last[gt->info.id] = ktime_get_raw();
>>+	store_sample(pmu, gt_id, __I915_SAMPLE_RC6, __get_rc6(gt));
>>+	pmu->sleep_last[gt_id] = ktime_get_raw();
>>  }
>>  static void __i915_pmu_maybe_start_timer(struct i915_pmu *pmu)
>>@@ -436,18 +438,18 @@ static void
>>  frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>  {
>>  	struct drm_i915_private *i915 = gt->i915;
>>-	const unsigned int gt_id = gt->info.id;
>>+	const unsigned int gt_id = gt->info.id + 1;
>>  	struct i915_pmu *pmu = &i915->pmu;
>>  	struct intel_rps *rps = &gt->rps;
>>-	if (!frequency_sampling_enabled(pmu, gt_id))
>>+	if (!frequency_sampling_enabled(pmu, gt->info.id))
>>  		return;
>>  	/* Report 0/0 (actual/requested) frequency while parked. */
>>  	if (!intel_gt_pm_get_if_awake(gt))
>>  		return;
>>-	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt_id))) {
>>+	if (pmu->enable & config_mask(__I915_PMU_ACTUAL_FREQUENCY(gt->info.id))) {
>>  		u32 val;
>>  		/*
>>@@ -467,7 +469,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
>>  				val, period_ns / 1000);
>>  	}
>>-	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt_id))) {
>>+	if (pmu->enable & config_mask(__I915_PMU_REQUESTED_FREQUENCY(gt->info.id))) {
>>  		add_sample_mult(pmu, gt_id, __I915_SAMPLE_FREQ_REQ,
>>  				intel_rps_get_requested_frequency(rps),
>>  				period_ns / 1000);
>>@@ -545,14 +547,15 @@ engine_event_status(struct intel_engine_cs *engine,
>>  static int
>>  config_status(struct drm_i915_private *i915, u64 config)
>>  {
>>-	struct intel_gt *gt = to_gt(i915);
>>-
>>  	unsigned int gt_id = config_gt_id(config);
>>-	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
>>+	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 2 : 1;
>>+	struct intel_gt *gt;
>>  	if (gt_id > max_gt_id)
>>  		return -ENOENT;
>>+	gt = !gt_id ? to_gt(i915) : i915->gt[gt_id - 1];
>>+
>>  	switch (config_counter(config)) {
>>  	case I915_PMU_ACTUAL_FREQUENCY:
>>  		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>>@@ -673,23 +676,58 @@ static u64 __i915_pmu_event_read_other(struct perf_event *event)
>>  	const unsigned int gt_id = config_gt_id(event->attr.config);
>>  	const u64 config = config_counter(event->attr.config);
>>  	struct i915_pmu *pmu = &i915->pmu;
>>+	struct intel_gt *gt;
>>  	u64 val = 0;
>>+	int i;
>>  	switch (config) {
>>  	case I915_PMU_ACTUAL_FREQUENCY:
>>-		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
>>+		if (gt_id)
>>+			return read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_ACT);
>>+
>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>+			return read_sample_us(pmu, 1, __I915_SAMPLE_FREQ_ACT);
>>+
>>+		for_each_gt(gt, i915, i)
>>+			val = max(val, read_sample_us(pmu, i + 1, __I915_SAMPLE_FREQ_ACT));
>>+
>>  		break;
>>  	case I915_PMU_REQUESTED_FREQUENCY:
>>-		val = read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
>>+		if (gt_id)
>>+			return read_sample_us(pmu, gt_id, __I915_SAMPLE_FREQ_REQ);
>>+
>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>+			return read_sample_us(pmu, 1, __I915_SAMPLE_FREQ_REQ);
>>+
>>+		for_each_gt(gt, i915, i)
>>+			val = max(val, read_sample_us(pmu, i + 1, __I915_SAMPLE_FREQ_REQ));
>>+
>>  		break;
>>  	case I915_PMU_INTERRUPTS:
>>  		val = READ_ONCE(pmu->irq_count);
>>  		break;
>>  	case I915_PMU_RC6_RESIDENCY:
>>-		val = get_rc6(i915->gt[gt_id]);
>>+		if (gt_id)
>>+			return get_rc6(i915->gt[gt_id - 1]);
>>+
>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>+			return get_rc6(i915->gt[0]);
>>+
>>+		val = U64_MAX;
>>+		for_each_gt(gt, i915, i)
>>+			val = min(val, get_rc6(gt));
>>+
>>  		break;
>>  	case I915_PMU_SOFTWARE_GT_AWAKE_TIME:
>>-		val = ktime_to_ns(intel_gt_get_awake_time(to_gt(i915)));
>>+		if (gt_id)
>>+			return ktime_to_ns(intel_gt_get_awake_time(i915->gt[gt_id - 1]));
>>+
>>+		if (!HAS_EXTRA_GT_LIST(i915))
>>+			return ktime_to_ns(intel_gt_get_awake_time(i915->gt[0]));
>>+
>>+		val = 0;
>>+		for_each_gt(gt, i915, i)
>>+			val = max((s64)val, ktime_to_ns(intel_gt_get_awake_time(gt)));
>>  		break;
>>  	}
>>@@ -728,11 +766,14 @@ static void i915_pmu_event_read(struct perf_event *event)
>>  static void i915_pmu_enable(struct perf_event *event)
>>  {
>>+	const unsigned int gt_id = config_gt_id(event->attr.config);
>>  	struct drm_i915_private *i915 =
>>  		container_of(event->pmu, typeof(*i915), pmu.base);
>>  	struct i915_pmu *pmu = &i915->pmu;
>>+	struct intel_gt *gt;
>>  	unsigned long flags;
>>  	unsigned int bit;
>>+	u64 i;
>>  	bit = event_bit(event);
>>  	if (bit == -1)
>>@@ -745,12 +786,42 @@ static void i915_pmu_enable(struct perf_event *event)
>>  	 * the event reference counter.
>>  	 */
>>  	BUILD_BUG_ON(ARRAY_SIZE(pmu->enable_count) != I915_PMU_MASK_BITS);
>>+	BUILD_BUG_ON(BITS_PER_TYPE(pmu->enable) < I915_PMU_MASK_BITS);
>>  	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>  	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>>  	pmu->enable |= BIT_ULL(bit);
>>  	pmu->enable_count[bit]++;
>>+	/*
>>+	 * The arrays that i915_pmu maintains are now indexed as
>>+	 *
>>+	 * 0 - aggregate events (a.k.a !gt_id)
>>+	 * 1 - gt0
>>+	 * 2 - gt1
>>+	 *
>>+	 * The same logic applies to event_bit masks. The first set of mask are
>>+	 * for aggregate, followed by gt0 and gt1 masks. The idea here is to
>>+	 * enable the event on all gts if the aggregate event bit is set. This
>>+	 * applies only to the non-engine-events.
>>+	 */
>>+	if (!gt_id && !is_engine_event(event)) {
>>+		for_each_gt(gt, i915, i) {
>>+			u64 counter = config_counter(event->attr.config);
>>+			u64 config = ((i + 1) << __I915_PMU_GT_SHIFT) | counter;
>>+			unsigned int bit = config_bit(config);
>>+
>>+			if (bit == -1)
>>+				continue;
>>+
>>+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>+			GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>>+
>>+			pmu->enable |= BIT_ULL(bit);
>>+			pmu->enable_count[bit]++;
>>+		}
>>+	}
>>+
>>  	/*
>>  	 * Start the sampling timer if needed and not already enabled.
>>  	 */
>>@@ -793,6 +864,7 @@ static void i915_pmu_enable(struct perf_event *event)
>>  static void i915_pmu_disable(struct perf_event *event)
>>  {
>>+	const unsigned int gt_id = config_gt_id(event->attr.config);
>>  	struct drm_i915_private *i915 =
>>  		container_of(event->pmu, typeof(*i915), pmu.base);
>>  	unsigned int bit = event_bit(event);
>>@@ -822,6 +894,26 @@ static void i915_pmu_disable(struct perf_event *event)
>>  		 */
>>  		if (--engine->pmu.enable_count[sample] == 0)
>>  			engine->pmu.enable &= ~BIT(sample);
>>+	} else if (!gt_id) {
>>+		struct intel_gt *gt;
>>+		u64 i;
>>+
>>+		for_each_gt(gt, i915, i) {
>>+			u64 counter = config_counter(event->attr.config);
>>+			u64 config = ((i + 1) << __I915_PMU_GT_SHIFT) | counter;
>>+			unsigned int bit = config_bit(config);
>>+
>>+			if (bit == -1)
>>+				continue;
>>+
>>+			GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>+			GEM_BUG_ON(pmu->enable_count[bit] == 0);
>>+
>>+			if (--pmu->enable_count[bit] == 0) {
>>+				pmu->enable &= ~BIT_ULL(bit);
>>+				pmu->timer_enabled &= pmu_needs_timer(pmu, true);
>>+			}
>>+		}
>>  	}
>>  	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>@@ -1002,7 +1094,11 @@ create_event_attributes(struct i915_pmu *pmu)
>>  		const char *name;
>>  		const char *unit;
>>  	} global_events[] = {
>>+		__event(0, "actual-frequency", "M"),
>>+		__event(1, "requested-frequency", "M"),
>>  		__event(2, "interrupts", NULL),
>>+		__event(3, "rc6-residency", "ns"),
>>+		__event(4, "software-gt-awake-time", "ns"),
>>  	};
>>  	static const struct {
>>  		enum drm_i915_pmu_engine_sample sample;
>>@@ -1024,7 +1120,7 @@ create_event_attributes(struct i915_pmu *pmu)
>>  	/* per gt counters */
>>  	for_each_gt(gt, i915, j) {
>>  		for (i = 0; i < ARRAY_SIZE(events); i++) {
>>-			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>+			u64 config = ___I915_PMU_OTHER(j + 1, events[i].counter);
>>  			if (!config_status(i915, config))
>>  				count++;
>>@@ -1070,7 +1166,7 @@ create_event_attributes(struct i915_pmu *pmu)
>>  	/* per gt counters */
>>  	for_each_gt(gt, i915, j) {
>>  		for (i = 0; i < ARRAY_SIZE(events); i++) {
>>-			u64 config = ___I915_PMU_OTHER(j, events[i].counter);
>>+			u64 config = ___I915_PMU_OTHER(j + 1, events[i].counter);
>>  			char *str;
>>  			if (config_status(i915, config))
>>diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>>index a708e44a227e..a4cc1eb218fc 100644
>>--- a/drivers/gpu/drm/i915/i915_pmu.h
>>+++ b/drivers/gpu/drm/i915/i915_pmu.h
>>@@ -38,7 +38,7 @@ enum {
>>  	__I915_NUM_PMU_SAMPLERS
>>  };
>>-#define I915_PMU_MAX_GTS (4) /* FIXME */
>>+#define I915_PMU_MAX_GTS (4 + 1) /* FIXME */
>>  /**
>>   * How many different events we track in the global PMU mask.
>>diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>>index bbab7f3dbeb4..18794c30027f 100644
>>--- a/include/uapi/drm/i915_drm.h
>>+++ b/include/uapi/drm/i915_drm.h
>>@@ -290,6 +290,7 @@ enum drm_i915_pmu_engine_sample {
>>  	(((__u64)__I915_PMU_ENGINE(0xff, 0xff, 0xf) + 1 + (x)) | \
>>  	((__u64)(gt) << __I915_PMU_GT_SHIFT))
>>+/* Aggregate from all gts */
>>  #define __I915_PMU_OTHER(x) ___I915_PMU_OTHER(0, x)
>>  #define I915_PMU_ACTUAL_FREQUENCY	__I915_PMU_OTHER(0)
>>@@ -300,11 +301,14 @@ enum drm_i915_pmu_engine_sample {
>>  #define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
>>-#define __I915_PMU_ACTUAL_FREQUENCY(gt)		___I915_PMU_OTHER(gt, 0)
>>-#define __I915_PMU_REQUESTED_FREQUENCY(gt)	___I915_PMU_OTHER(gt, 1)
>>-#define __I915_PMU_INTERRUPTS(gt)		___I915_PMU_OTHER(gt, 2)
>>-#define __I915_PMU_RC6_RESIDENCY(gt)		___I915_PMU_OTHER(gt, 3)
>>-#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	___I915_PMU_OTHER(gt, 4)
>>+/* GT specific counters */
>>+#define ____I915_PMU_OTHER(gt, x) ___I915_PMU_OTHER(((gt) + 1), x)
>>+
>>+#define __I915_PMU_ACTUAL_FREQUENCY(gt)		____I915_PMU_OTHER(gt, 0)
>>+#define __I915_PMU_REQUESTED_FREQUENCY(gt)	____I915_PMU_OTHER(gt, 1)
>>+#define __I915_PMU_INTERRUPTS(gt)		____I915_PMU_OTHER(gt, 2)
>>+#define __I915_PMU_RC6_RESIDENCY(gt)		____I915_PMU_OTHER(gt, 3)
>>+#define __I915_PMU_SOFTWARE_GT_AWAKE_TIME(gt)	____I915_PMU_OTHER(gt, 4)
>>  /* Each region is a minimum of 16k, and there are at most 255 of them.
>>   */
