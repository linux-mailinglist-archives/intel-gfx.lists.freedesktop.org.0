Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F70F40682E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 10:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CABCF6E986;
	Fri, 10 Sep 2021 08:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DF716E985;
 Fri, 10 Sep 2021 08:10:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="306589256"
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="306589256"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2021 01:10:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,282,1624345200"; d="scan'208";a="432151039"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 10 Sep 2021 01:10:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 01:10:10 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 01:10:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 10 Sep 2021 01:10:10 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 10 Sep 2021 01:10:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8sC+kcG0qqASsJr8STOHaKipkOYksFOFhFY9ArSKeX0alGeAutY8bR1gZlWmppWRJrWsI008G5O6bPxaaxfeX8OQMsvZ7VxpIJAIjtx3amRpjVkMYP60Tt76qQjay3y5c+H+owU6HEZNLHIiOyoj+swhvLAqWiW5vmPpHLBaPlka295fjXfOlUPDGZBPdOt89ohA/vt23dl/hOWfC5Qb/F0KgWdc1oOu9UE+gAgocqVLFdNmAuEOG7FQl7fqv1hMKgvJvmpPIN6yd8Bp5ju9i4lR6XIKuAZbjsCr08QFyAN0rgVHMLnlznNpzFY7zvWASArYtQoSfxj+tX0iQOIwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=2zOX/hR9L779pQUvnfIkwwL1MgG7deVYi/mNEEnKFKw=;
 b=nb7vkTMvwcGXClvf1XIqvd0C2V1RsA1uAizacZikMmcbMdOc5wSsv0Cr5oCDT3GlDwFd5EEdlWf4wvq3BWn2aIkLTTaQUThvGCpWhxzF1DKVywzk6XbC7bA8ibHRSjI6rFS2AowqC0Tc8t03uY281X/zANRSTsihcE5Ek/b5y08jcmBwUn/uPTG48DJblP8jqCBc1XEVhAXhZFpsQTa5ld2UxjeZUcSZNHchsDrSF/qSekEb5VSN7El7s0Fl27PFHO8wh3/bFJzW7LXGHWIBCzBtJP9jpwihttt2fB0D+hj6wkGwdHyBb6CMTDGJ2kV5UCDGoISIj0mf6k4PHt7emg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2zOX/hR9L779pQUvnfIkwwL1MgG7deVYi/mNEEnKFKw=;
 b=MEJPeSEhCMjo7CGAW6RswnlJ8oouLdf0Wvc4XiVBBN/L73IHr/89pU9vEQVkOnRbEamecaWBaUYu6lQhpnUZvzmVrGGH40BQpeTIcojACvWBSta1kL1mXPBddV0hrvda9VSOmURLFMaUnYNX/SR2IXkmaeNHe5ATSsxGrHJlvPY=
Authentication-Results: jlekstrand.net; dkim=none (message not signed)
 header.d=none;jlekstrand.net; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR11MB1466.namprd11.prod.outlook.com (2603:10b6:4:9::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.16; Fri, 10 Sep 2021 08:10:08 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165%8]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 08:10:08 +0000
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, "Vetter, Daniel"
 <daniel.vetter@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Lionel Landwerlin
 <lionel.g.landwerlin@intel.com>, Jason Ekstrand <jason@jlekstrand.net>
References: <20210909122915.971652-1-daniele.ceraolospurio@intel.com>
 <20210909122915.971652-11-daniele.ceraolospurio@intel.com>
 <YTp3eXkQDcf7kuzI@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <04688cc0-9b6e-f38e-7ef4-793aedd1550e@intel.com>
Date: Fri, 10 Sep 2021 01:10:02 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <YTp3eXkQDcf7kuzI@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: DU2PR04CA0015.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::20) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.56] (2.236.112.29) by
 DU2PR04CA0015.eurprd04.prod.outlook.com (2603:10a6:10:3b::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.15 via Frontend Transport; Fri, 10 Sep 2021 08:10:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3ae3e53-1a54-47f0-3879-08d97432676d
X-MS-TrafficTypeDiagnostic: DM5PR11MB1466:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR11MB14666FFD87B745C75DB3EF7EF4D69@DM5PR11MB1466.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B2CdaSavSG+/SK+bHu+dRqQpiS7GDNdMUgrimg0FvhehQ7000ygBVMMxBUGVEwWmaVjCJdukWEIqqn7hmKAKriowc+SVZ8MzblwwgPOM5h0kjrXe5FDitsAiVYPTnRlf0DV7JBwcPzLrd/pcouUzO0Td0NaWodXpKsQr4qNT7uSsvuyKm2l2/aqe7BhhVKYwcH9YPwizFNzlD3ucWNevrgJrFqPx8bEtuKmz7TDek5FbjcdIaYMSxew1djVGMcOINm9HIpmgZdTb7u5OAaku2AQOoprqfaJT5sidaSILue2yAUZtVCcCetbCuy9xEHrRX0+4zr3VVCoktGU0ONbGNVL7kvbs8oiQ5HbPwJsdhxoNsefO2DYm0D1xk0oWrbiAGE0CMJx7TdJJFKwuVVS0zcm2kKwTP55lAluwGA/ua6BU3ZvdPkK+yasbjMrah4P2VszqNRsq0mHncz6EClCXosuuzZyf7borySApHoC7M2g2V1lm9dP1PufYkR9GlyUxgbSloBydqPrAAdXFsmqWzZOk9MBQyfwTHcDDbAxOFixfLgpn1DDuraOZxujdm0xzMUaJrJX29DqMiAYIJvm/r9yEMVrx6Cy98mvYkZNFf6ynXA8zjq3InVAvTS64X7lWQHNtxkVQKhT1oq1Gs/pQ8AgDrqDEfQRYOYIkm+IfrKOlwJJR3VJmxEOHIp84/E7L0WGP0GAJCm5gHQmNNswUTVyvRVt2Baw8OfIyKOctMjE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(39860400002)(396003)(366004)(66946007)(4326008)(53546011)(8676002)(6636002)(8936002)(186003)(31686004)(36756003)(30864003)(5660300002)(2906002)(38100700002)(26005)(478600001)(16576012)(54906003)(110136005)(66476007)(66556008)(316002)(31696002)(83380400001)(86362001)(6666004)(2616005)(6486002)(956004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1k2RXJZM1lnTjAzYndMYTBEZlp0d1VNS2x6N3NJZGhQZFVVWngwZWUwR1Yr?=
 =?utf-8?B?cG5XOSt5ZGs4YTB3elpwVXFvR2grYW8zeFNibm1sSnBybmNsSGszQTFSWGF4?=
 =?utf-8?B?SE5mQWhsOW1tajN5bWwxY09WRXpaQXN1Z3ZyakZWMVc4VkpHQkhXY3dRdHZM?=
 =?utf-8?B?T0JrWWIwWlN2YTZiT2lkc2FYSVhGbUtrRzhXK1hTSVcrT1JTSk44eDhLbGY4?=
 =?utf-8?B?RmlRV1dEWi9xa3EvSC94Ynh0QWExZXdjRWVnNGNObkNUY0lrNTZWWlVxTDZ0?=
 =?utf-8?B?dHlwdHhoSjIwR2ttSEQ5WXdQTWs2N3J6b0hJUHVrOVJBRjYwcFhvQkd3N0Zi?=
 =?utf-8?B?OWVRMjl3dC8zbUlNdVZWMnNpRzJUcFRMamZxd1hLVlpTY0hvdmRjTHAyUFFv?=
 =?utf-8?B?ZFJMdzNsZHc1R01EMm5YM3VLcFNIK2I2V2JQWWNqMmxhZFFTRUcwdzF1U2dl?=
 =?utf-8?B?cTUrKzltRy8yejBCWUpGaFdSODBWNXNsUWpBWUJqcGZNNm1jb3N2ZlY2WGZR?=
 =?utf-8?B?RVF5VVF2WUZqTDJhejN3cnBCYUVTUFJQSXZjSEdDRDFVN3VSM294SXpJaGli?=
 =?utf-8?B?cW4rKzI4KytPbXAzdzhEeVVjbzI4VnJFUDhjYnhuWGo5ekRLZjlxVFpGM1Bi?=
 =?utf-8?B?Z1E0Qy9JRlI3S28vWUhnL01scnl0dzNZVUp6ZHY4UmR1NlVIdnptZ2FyWjVn?=
 =?utf-8?B?NUdjVzRiTjYrN25LRTNhT2tyWDJ2L2MrR1VUZDlvd2FFWW91T3B6QjJRa0Jy?=
 =?utf-8?B?d25tMkliVUhwYlpFRDJWQzdhQ2JqOE1zVllGZlRrdC9kTjI0T25ic3ErZHds?=
 =?utf-8?B?WWlJUU9nSVhaWEsvbWxteEZWZmtuZkZmK3M2djE1SzhjRFRnYTIxYkhhQ1A5?=
 =?utf-8?B?TmVUdVd0S1RORmd3eVM4NVE3TE9zVHAzVVYxK0h1aFJUZHZLaU12bG4xNzNC?=
 =?utf-8?B?bGx2ckNkaXBNTHNjVkE2SXBEMHVLeFIwNzVuN3hUanlxcC8wVVVPYjB0Q3ZH?=
 =?utf-8?B?MmpwZmc0dGtkMnRDU2FmM0ZoVTNnUWJRbm9kZnc5STZxbE1XTGFlQ2RjS3hs?=
 =?utf-8?B?NVBSSjRubTgvSEFIbW16ZzBuN2VUcHVCcW45czZzWDRqWmpLSFl5TmZHbDUz?=
 =?utf-8?B?dnZCeTA3N2x1UDRFMzZlUDJKM2hRSHo3K29uc1I5NDV5RHpmcWhRSHBoTlhE?=
 =?utf-8?B?WVY3SXpac2ZVZzdITC9iYURjK1FsZVlpMitjUWpRZnpBODZiYmZZVWRmNzZL?=
 =?utf-8?B?YitqV042Vkd1UG54M1hvNEJKc1NNOS9DZlgzV2Y4Tm1VNDg5Zmp3eHNqRDZp?=
 =?utf-8?B?djBFVzU1bFN0UkowbkNlVE14VnZMT3dMdVNFdXRST0VUVDd4d3JqRmc0WldX?=
 =?utf-8?B?dUNDZGdPczhoOFE1V3V1UGJRSHhNaVBmbTVPM2FoaU1PYlZxUkRLQ2tnSnZV?=
 =?utf-8?B?ZnFoMEdQYXVPdEpWdW9OMGRGazZQWEk4RFdiT1kweEhSbUlyeXh3cmxVZXcv?=
 =?utf-8?B?NnBkcFU1dzkvc3BoWkl4MDlBdWg4Rmxwa3Z1bkwzZ2VsV1Y2VXB3a1I1UkhW?=
 =?utf-8?B?akR4bkQzSnUwNlRGNVFWak9DM1dmdjcwSEx4NGNXeE10ZzR6VWZGUFRwYVVh?=
 =?utf-8?B?enZ3Q3F4d05HNHltMVZVcmllNWlGV1Y5UXdhbDR1ZU8xck5lU3h0WUpNUVZs?=
 =?utf-8?B?S2d4bDBSZVJINVNkQllpdi80b1FIZXJrYnl0V212cHJ0ZWF4dGhHbkNMclgx?=
 =?utf-8?Q?/Axs+j7Bc8GvynzvMMnXusfyFFDE8XS2rw2/VHE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3ae3e53-1a54-47f0-3879-08d97432676d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 08:10:08.4144 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hRfCR/kmZ5soT8VGcX2Z4Tbz9ZPrQr5fT5UWKtYSo75EnUNrpHqxWO8R/czbl4fBS8iZ8zYjCH0z3O110hX5nJUwv0qIfE3ZqKe+09KhNKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1466
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 10/17] drm/i915/pxp: interfaces for using
 protected objects
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



On 9/9/2021 2:07 PM, Rodrigo Vivi wrote:
> On Thu, Sep 09, 2021 at 05:29:08AM -0700, Daniele Ceraolo Spurio wrote:
>> This api allow user mode to create protected buffers and to mark
>> contexts as making use of such objects. Only when using contexts
>> marked in such a way is the execution guaranteed to work as expected.
>>
>> Contexts can only be marked as using protected content at creation time
>> (i.e. the parameter is immutable) and they must be both bannable and not
>> recoverable. Given that the protected session gets invalidated on
>> suspend, contexts created this way hold a runtime pm wakeref until
>> they're either destroyed or invalidated.
>>
>> All protected objects and contexts will be considered invalid when the
>> PXP session is destroyed and all new submissions using them will be
>> rejected. All intel contexts within the invalidated gem contexts will be
>> marked banned. Userspace can detect that an invalidation has occurred via
>> the RESET_STATS ioctl, where we report it the same way as a ban due to a
>> hang.
>>
>> v5: squash patches, rebase on proto_ctx, update kerneldoc
>>
>> v6: rebase on obj create_ext changes
>>
>> v7: Use session counter to check if an object it valid, hold wakeref in
>>      context, don't add a new flag to RESET_STATS (Daniel)
>>
>> v8: don't increase guilty count for contexts banned during pxp
>>      invalidation (Rodrigo)
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Signed-off-by: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>> Cc: Daniel Vetter <daniel.vetter@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.c   | 98 ++++++++++++++++---
>>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |  6 ++
>>   .../gpu/drm/i915/gem/i915_gem_context_types.h | 28 ++++++
>>   drivers/gpu/drm/i915/gem/i915_gem_create.c    | 72 ++++++++++----
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 18 ++++
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |  1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  6 ++
>>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  8 ++
>>   .../gpu/drm/i915/gem/selftests/mock_context.c |  4 +-
>>   drivers/gpu/drm/i915/pxp/intel_pxp.c          | 77 +++++++++++++++
>>   drivers/gpu/drm/i915/pxp/intel_pxp.h          | 12 +++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_session.c  |  6 ++
>>   drivers/gpu/drm/i915/pxp/intel_pxp_types.h    |  9 ++
>>   include/uapi/drm/i915_drm.h                   | 52 +++++++++-
>>   14 files changed, 362 insertions(+), 35 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index c2ab0e22db0a..8d2d4dbdab7c 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -77,6 +77,8 @@
>>   #include "gt/intel_gpu_commands.h"
>>   #include "gt/intel_ring.h"
>>   
>> +#include "pxp/intel_pxp.h"
>> +
>>   #include "i915_gem_context.h"
>>   #include "i915_trace.h"
>>   #include "i915_user_extensions.h"
>> @@ -186,10 +188,13 @@ static int validate_priority(struct drm_i915_private *i915,
>>   	return 0;
>>   }
>>   
>> -static void proto_context_close(struct i915_gem_proto_context *pc)
>> +static void proto_context_close(struct drm_i915_private *i915,
>> +				struct i915_gem_proto_context *pc)
>>   {
>>   	int i;
>>   
>> +	if (pc->pxp_wakeref)
>> +		intel_runtime_pm_put(&i915->runtime_pm, pc->pxp_wakeref);
> now that you do this we can remove the intel_pxp_invalidate from the runtime_suspend.

ok

>
>>   	if (pc->vm)
>>   		i915_vm_put(pc->vm);
>>   	if (pc->user_engines) {
>> @@ -241,6 +246,33 @@ static int proto_context_set_persistence(struct drm_i915_private *i915,
>>   	return 0;
>>   }
>>   
>> +static int proto_context_set_protected(struct drm_i915_private *i915,
>> +				       struct i915_gem_proto_context *pc,
>> +				       bool protected)
>> +{
>> +	int ret = 0;
>> +
>> +	if (!intel_pxp_is_enabled(&i915->gt.pxp)) {
>> +		ret = -ENODEV;
>> +	} else if (!protected) {
>> +		pc->uses_protected_content = false;
>> +	} else if ((pc->user_flags & BIT(UCONTEXT_RECOVERABLE)) ||
>> +		   !(pc->user_flags & BIT(UCONTEXT_BANNABLE))) {
>> +		ret = -EPERM;
>> +	} else {
>> +		pc->uses_protected_content = true;
>> +
>> +		/*
>> +		 * protected context usage requires the PXP session to be up,
>> +		 * which in turn requires the device to be active.
>> +		 */
>> +		pc->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> +		ret = intel_pxp_wait_for_arb_start(&i915->gt.pxp);
>> +	}
>> +
>> +	return ret;
>> +}
>> +
>>   static struct i915_gem_proto_context *
>>   proto_context_create(struct drm_i915_private *i915, unsigned int flags)
>>   {
>> @@ -269,7 +301,7 @@ proto_context_create(struct drm_i915_private *i915, unsigned int flags)
>>   	return pc;
>>   
>>   proto_close:
>> -	proto_context_close(pc);
>> +	proto_context_close(i915, pc);
>>   	return err;
>>   }
>>   
>> @@ -693,6 +725,8 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
>>   			ret = -EPERM;
>>   		else if (args->value)
>>   			pc->user_flags |= BIT(UCONTEXT_BANNABLE);
>> +		else if (pc->uses_protected_content)
>> +			ret = -EPERM;
>>   		else
>>   			pc->user_flags &= ~BIT(UCONTEXT_BANNABLE);
>>   		break;
>> @@ -700,10 +734,12 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
>>   	case I915_CONTEXT_PARAM_RECOVERABLE:
>>   		if (args->size)
>>   			ret = -EINVAL;
>> -		else if (args->value)
>> -			pc->user_flags |= BIT(UCONTEXT_RECOVERABLE);
>> -		else
>> +		else if (!args->value)
>>   			pc->user_flags &= ~BIT(UCONTEXT_RECOVERABLE);
>> +		else if (pc->uses_protected_content)
>> +			ret = -EPERM;
>> +		else
>> +			pc->user_flags |= BIT(UCONTEXT_RECOVERABLE);
>>   		break;
>>   
>>   	case I915_CONTEXT_PARAM_PRIORITY:
>> @@ -731,6 +767,11 @@ static int set_proto_ctx_param(struct drm_i915_file_private *fpriv,
>>   						    args->value);
>>   		break;
>>   
>> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> +		ret = proto_context_set_protected(fpriv->dev_priv, pc,
>> +						  args->value);
>> +		break;
>> +
>>   	case I915_CONTEXT_PARAM_NO_ZEROMAP:
>>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>>   	case I915_CONTEXT_PARAM_RINGSIZE:
>> @@ -1189,6 +1230,9 @@ static void context_close(struct i915_gem_context *ctx)
>>   		i915_vm_close(vm);
>>   	}
>>   
>> +	if (ctx->pxp_wakeref)
>> +		intel_runtime_pm_put(&ctx->i915->runtime_pm, ctx->pxp_wakeref);
>> +
>>   	ctx->file_priv = ERR_PTR(-EBADF);
>>   
>>   	/*
>> @@ -1338,6 +1382,11 @@ i915_gem_create_context(struct drm_i915_private *i915,
>>   			goto err_engines;
>>   	}
>>   
>> +	if (pc->uses_protected_content) {
>> +		ctx->pxp_wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>> +		ctx->uses_protected_content = true;
>> +	}
>> +
>>   	trace_i915_context_create(ctx);
>>   
>>   	return ctx;
>> @@ -1409,7 +1458,7 @@ int i915_gem_context_open(struct drm_i915_private *i915,
>>   	}
>>   
>>   	ctx = i915_gem_create_context(i915, pc);
>> -	proto_context_close(pc);
>> +	proto_context_close(i915, pc);
>>   	if (IS_ERR(ctx)) {
>>   		err = PTR_ERR(ctx);
>>   		goto err;
>> @@ -1436,7 +1485,7 @@ void i915_gem_context_close(struct drm_file *file)
>>   	unsigned long idx;
>>   
>>   	xa_for_each(&file_priv->proto_context_xa, idx, pc)
>> -		proto_context_close(pc);
>> +		proto_context_close(file_priv->dev_priv, pc);
>>   	xa_destroy(&file_priv->proto_context_xa);
>>   	mutex_destroy(&file_priv->proto_context_lock);
>>   
>> @@ -1731,6 +1780,18 @@ static int set_priority(struct i915_gem_context *ctx,
>>   	return 0;
>>   }
>>   
>> +static int get_protected(struct i915_gem_context *ctx,
>> +			 struct drm_i915_gem_context_param *args)
>> +{
>> +	if (!intel_pxp_is_enabled(&ctx->i915->gt.pxp))
>> +		return -ENODEV;
>> +
>> +	args->size = 0;
>> +	args->value = i915_gem_context_uses_protected_content(ctx);
>> +
>> +	return 0;
>> +}
>> +
>>   static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   			struct i915_gem_context *ctx,
>>   			struct drm_i915_gem_context_param *args)
>> @@ -1754,6 +1815,8 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   			ret = -EPERM;
>>   		else if (args->value)
>>   			i915_gem_context_set_bannable(ctx);
>> +		else if (i915_gem_context_uses_protected_content(ctx))
>> +			ret = -EPERM; /* can't clear this for protected contexts */
>>   		else
>>   			i915_gem_context_clear_bannable(ctx);
>>   		break;
>> @@ -1761,10 +1824,12 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   	case I915_CONTEXT_PARAM_RECOVERABLE:
>>   		if (args->size)
>>   			ret = -EINVAL;
>> -		else if (args->value)
>> -			i915_gem_context_set_recoverable(ctx);
>> -		else
>> +		else if (!args->value)
>>   			i915_gem_context_clear_recoverable(ctx);
>> +		else if (i915_gem_context_uses_protected_content(ctx))
>> +			ret = -EPERM; /* can't set this for protected contexts */
>> +		else
>> +			i915_gem_context_set_recoverable(ctx);
>>   		break;
>>   
>>   	case I915_CONTEXT_PARAM_PRIORITY:
>> @@ -1779,6 +1844,7 @@ static int ctx_setparam(struct drm_i915_file_private *fpriv,
>>   		ret = set_persistence(ctx, args);
>>   		break;
>>   
>> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>>   	case I915_CONTEXT_PARAM_NO_ZEROMAP:
>>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>>   	case I915_CONTEXT_PARAM_RINGSIZE:
>> @@ -1857,7 +1923,7 @@ finalize_create_context_locked(struct drm_i915_file_private *file_priv,
>>   
>>   	old = xa_erase(&file_priv->proto_context_xa, id);
>>   	GEM_BUG_ON(old != pc);
>> -	proto_context_close(pc);
>> +	proto_context_close(file_priv->dev_priv, pc);
>>   
>>   	/* One for the xarray and one for the caller */
>>   	return i915_gem_context_get(ctx);
>> @@ -1943,7 +2009,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>>   			goto err_pc;
>>   		}
>>   
>> -		proto_context_close(ext_data.pc);
>> +		proto_context_close(i915, ext_data.pc);
>>   		gem_context_register(ctx, ext_data.fpriv, id);
>>   	} else {
>>   		ret = proto_context_register(ext_data.fpriv, ext_data.pc, &id);
>> @@ -1957,7 +2023,7 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>>   	return 0;
>>   
>>   err_pc:
>> -	proto_context_close(ext_data.pc);
>> +	proto_context_close(i915, ext_data.pc);
>>   	return ret;
>>   }
>>   
>> @@ -1988,7 +2054,7 @@ int i915_gem_context_destroy_ioctl(struct drm_device *dev, void *data,
>>   	GEM_WARN_ON(ctx && pc);
>>   
>>   	if (pc)
>> -		proto_context_close(pc);
>> +		proto_context_close(file_priv->dev_priv, pc);
>>   
>>   	if (ctx)
>>   		context_close(ctx);
>> @@ -2106,6 +2172,10 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>>   		args->value = i915_gem_context_is_persistent(ctx);
>>   		break;
>>   
>> +	case I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> +		ret = get_protected(ctx, args);
>> +		break;
>> +
>>   	case I915_CONTEXT_PARAM_NO_ZEROMAP:
>>   	case I915_CONTEXT_PARAM_BAN_PERIOD:
>>   	case I915_CONTEXT_PARAM_ENGINES:
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> index d3279086a5e7..babfecb17ad1 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
>> @@ -108,6 +108,12 @@ i915_gem_context_clear_user_engines(struct i915_gem_context *ctx)
>>   	clear_bit(CONTEXT_USER_ENGINES, &ctx->flags);
>>   }
>>   
>> +static inline bool
>> +i915_gem_context_uses_protected_content(const struct i915_gem_context *ctx)
>> +{
>> +	return ctx->uses_protected_content;
>> +}
>> +
>>   /* i915_gem_context.c */
>>   void i915_gem_init__contexts(struct drm_i915_private *i915);
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> index c4617e4d9fa9..a627b09c4680 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
>> @@ -198,6 +198,12 @@ struct i915_gem_proto_context {
>>   
>>   	/** @single_timeline: See See &i915_gem_context.syncobj */
>>   	bool single_timeline;
>> +
>> +	/** @uses_protected_content: See &i915_gem_context.uses_protected_content */
>> +	bool uses_protected_content;
>> +
>> +	/** @pxp_wakeref: See &i915_gem_context.pxp_wakeref */
>> +	intel_wakeref_t pxp_wakeref;
>>   };
>>   
>>   /**
>> @@ -321,6 +327,28 @@ struct i915_gem_context {
>>   #define CONTEXT_CLOSED			0
>>   #define CONTEXT_USER_ENGINES		1
>>   
>> +	/**
>> +	 * @uses_protected_content: context uses PXP-encrypted objects.
>> +	 *
>> +	 * This flag can only be set at ctx creation time and it's immutable for
>> +	 * the lifetime of the context. See I915_CONTEXT_PARAM_PROTECTED_CONTENT
>> +	 * in uapi/drm/i915_drm.h for more info on setting restrictions and
>> +	 * expected behaviour of marked contexts.
>> +	 */
>> +	bool uses_protected_content;
>> +
>> +	/**
>> +	 * @pxp_wakeref: wakeref to keep the device awake when PXP is in use
>> +	 *
>> +	 * PXP sessions are invalidated when the device is suspended, which in
>> +	 * turns invalidates all contexts and objects using it. To keep the
>> +	 * flow simple, we keep the device awake when contexts using PXP objects
>> +	 * are in use. It is expected that the userspace application only uses
>> +	 * PXP when the display is on, so taking a wakeref here shouldn't worsen
>> +	 * our power metrics.
>> +	 */
>> +	intel_wakeref_t pxp_wakeref;
>> +
>>   	/** @mutex: guards everything that isn't engines or handles_vma */
>>   	struct mutex mutex;
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> index 1d341b8c47c0..8955d6abcef1 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
>> @@ -6,6 +6,7 @@
>>   #include "gem/i915_gem_ioctls.h"
>>   #include "gem/i915_gem_lmem.h"
>>   #include "gem/i915_gem_region.h"
>> +#include "pxp/intel_pxp.h"
>>   
>>   #include "i915_drv.h"
>>   #include "i915_trace.h"
>> @@ -82,21 +83,11 @@ static int i915_gem_publish(struct drm_i915_gem_object *obj,
>>   	return 0;
>>   }
>>   
>> -/**
>> - * Creates a new object using the same path as DRM_I915_GEM_CREATE_EXT
>> - * @i915: i915 private
>> - * @size: size of the buffer, in bytes
>> - * @placements: possible placement regions, in priority order
>> - * @n_placements: number of possible placement regions
>> - *
>> - * This function is exposed primarily for selftests and does very little
>> - * error checking.  It is assumed that the set of placement regions has
>> - * already been verified to be valid.
>> - */
>> -struct drm_i915_gem_object *
>> -__i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>> -			      struct intel_memory_region **placements,
>> -			      unsigned int n_placements)
>> +static struct drm_i915_gem_object *
>> +__i915_gem_object_create_user_ext(struct drm_i915_private *i915, u64 size,
>> +				  struct intel_memory_region **placements,
>> +				  unsigned int n_placements,
>> +				  unsigned int ext_flags)
>>   {
>>   	struct intel_memory_region *mr = placements[0];
>>   	struct drm_i915_gem_object *obj;
>> @@ -135,6 +126,9 @@ __i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>>   
>>   	GEM_BUG_ON(size != obj->base.size);
>>   
>> +	/* Add any flag set by create_ext options */
>> +	obj->flags |= ext_flags;
>> +
>>   	trace_i915_gem_object_create(obj);
>>   	return obj;
>>   
>> @@ -145,6 +139,26 @@ __i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>>   	return ERR_PTR(ret);
>>   }
>>   
>> +/**
>> + * Creates a new object using the same path as DRM_I915_GEM_CREATE_EXT
>> + * @i915: i915 private
>> + * @size: size of the buffer, in bytes
>> + * @placements: possible placement regions, in priority order
>> + * @n_placements: number of possible placement regions
>> + *
>> + * This function is exposed primarily for selftests and does very little
>> + * error checking.  It is assumed that the set of placement regions has
>> + * already been verified to be valid.
>> + */
>> +struct drm_i915_gem_object *
>> +__i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
>> +			      struct intel_memory_region **placements,
>> +			      unsigned int n_placements)
>> +{
>> +	return __i915_gem_object_create_user_ext(i915, size, placements,
>> +						 n_placements, 0);
>> +}
>> +
>>   int
>>   i915_gem_dumb_create(struct drm_file *file,
>>   		     struct drm_device *dev,
>> @@ -224,6 +238,7 @@ struct create_ext {
>>   	struct drm_i915_private *i915;
>>   	struct intel_memory_region *placements[INTEL_REGION_UNKNOWN];
>>   	unsigned int n_placements;
>> +	unsigned long flags;
>>   };
>>   
>>   static void repr_placements(char *buf, size_t size,
>> @@ -353,8 +368,28 @@ static int ext_set_placements(struct i915_user_extension __user *base,
>>   	return set_placements(&ext, data);
>>   }
>>   
>> +static int ext_set_protected(struct i915_user_extension __user *base, void *data)
>> +{
>> +	struct drm_i915_gem_create_ext_protected_content ext;
>> +	struct create_ext *ext_data = data;
>> +
>> +	if (copy_from_user(&ext, base, sizeof(ext)))
>> +		return -EFAULT;
>> +
>> +	if (ext.flags)
>> +		return -EINVAL;
>> +
>> +	if (!intel_pxp_is_enabled(&ext_data->i915->gt.pxp))
>> +		return -ENODEV;
>> +
>> +	ext_data->flags |= I915_BO_PROTECTED;
>> +
>> +	return 0;
>> +}
>> +
>>   static const i915_user_extension_fn create_extensions[] = {
>>   	[I915_GEM_CREATE_EXT_MEMORY_REGIONS] = ext_set_placements,
>> +	[I915_GEM_CREATE_EXT_PROTECTED_CONTENT] = ext_set_protected,
>>   };
>>   
>>   /**
>> @@ -389,9 +424,10 @@ i915_gem_create_ext_ioctl(struct drm_device *dev, void *data,
>>   		ext_data.n_placements = 1;
>>   	}
>>   
>> -	obj = __i915_gem_object_create_user(i915, args->size,
>> -					    ext_data.placements,
>> -					    ext_data.n_placements);
>> +	obj = __i915_gem_object_create_user_ext(i915, args->size,
>> +						ext_data.placements,
>> +						ext_data.n_placements,
>> +						ext_data.flags);
>>   	if (IS_ERR(obj))
>>   		return PTR_ERR(obj);
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index 2f2434b52317..d129a9f951da 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -21,6 +21,8 @@
>>   #include "gt/intel_gt_pm.h"
>>   #include "gt/intel_ring.h"
>>   
>> +#include "pxp/intel_pxp.h"
>> +
>>   #include "i915_drv.h"
>>   #include "i915_gem_clflush.h"
>>   #include "i915_gem_context.h"
>> @@ -821,6 +823,22 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>>   		if (unlikely(!obj))
>>   			return ERR_PTR(-ENOENT);
>>   
>> +		/*
>> +		 * If the user has opted-in for protected-object tracking, make
>> +		 * sure the object encryption can be used.
>> +		 * We only need to do this when the object is first used with
>> +		 * this context, because the context itself will be banned when
>> +		 * the protected objects become invalid.
>> +		 */
>> +		if (i915_gem_context_uses_protected_content(eb->gem_context) &&
>> +		    i915_gem_object_is_protected(obj)) {
>> +			err = intel_pxp_key_check(&vm->gt->pxp, obj);
>> +			if (err) {
>> +				i915_gem_object_put(obj);
>> +				return ERR_PTR(err);
>> +			}
>> +		}
>> +
>>   		vma = i915_vma_instance(obj, vm, NULL);
>>   		if (IS_ERR(vma)) {
>>   			i915_gem_object_put(obj);
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index 6fb9afb65034..e85f2d9fddee 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -25,6 +25,7 @@
>>   #include <linux/sched/mm.h>
>>   
>>   #include "display/intel_frontbuffer.h"
>> +#include "pxp/intel_pxp.h"
>>   #include "i915_drv.h"
>>   #include "i915_gem_clflush.h"
>>   #include "i915_gem_context.h"
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index 48112b9d76df..ed171daf49a7 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -269,6 +269,12 @@ i915_gem_object_clear_tiling_quirk(struct drm_i915_gem_object *obj)
>>   	clear_bit(I915_TILING_QUIRK_BIT, &obj->flags);
>>   }
>>   
>> +static inline bool
>> +i915_gem_object_is_protected(const struct drm_i915_gem_object *obj)
>> +{
>> +	return obj->flags & I915_BO_PROTECTED;
>> +}
>> +
>>   static inline bool
>>   i915_gem_object_type_has(const struct drm_i915_gem_object *obj,
>>   			 unsigned long flags)
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> index 2471f36aaff3..7d7e9c77f199 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>> @@ -298,6 +298,7 @@ struct drm_i915_gem_object {
>>   			     I915_BO_ALLOC_USER)
>>   #define I915_BO_READONLY         BIT(4)
>>   #define I915_TILING_QUIRK_BIT    5 /* unknown swizzling; do not release! */
>> +#define I915_BO_PROTECTED        BIT(6)
>>   
>>   	/**
>>   	 * @mem_flags - Mutable placement-related flags
>> @@ -537,6 +538,13 @@ struct drm_i915_gem_object {
>>   		bool created:1;
>>   	} ttm;
>>   
>> +	/*
>> +	 * Record which PXP key instance this object was created against (if
>> +	 * any), so we can use it to determine if the encryption is valid by
>> +	 * comparing against the current key instance.
>> +	 */
>> +	u32 pxp_key_instance;
>> +
>>   	/** Record of address bit 17 of each page at last unbind. */
>>   	unsigned long *bit_17;
>>   
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
>> index 067d68a6fe4c..c0a8ef368044 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
>> @@ -88,7 +88,7 @@ live_context(struct drm_i915_private *i915, struct file *file)
>>   		return ERR_CAST(pc);
>>   
>>   	ctx = i915_gem_create_context(i915, pc);
>> -	proto_context_close(pc);
>> +	proto_context_close(i915, pc);
>>   	if (IS_ERR(ctx))
>>   		return ctx;
>>   
>> @@ -163,7 +163,7 @@ kernel_context(struct drm_i915_private *i915,
>>   	}
>>   
>>   	ctx = i915_gem_create_context(i915, pc);
>> -	proto_context_close(pc);
>> +	proto_context_close(i915, pc);
>>   	if (IS_ERR(ctx))
>>   		return ctx;
>>   
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> index b0c7edc10cc3..08fd440a4622 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> @@ -7,6 +7,7 @@
>>   #include "intel_pxp_irq.h"
>>   #include "intel_pxp_session.h"
>>   #include "intel_pxp_tee.h"
>> +#include "gem/i915_gem_context.h"
>>   #include "gt/intel_context.h"
>>   #include "i915_drv.h"
>>   
>> @@ -166,3 +167,79 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp)
>>   
>>   	intel_pxp_irq_disable(pxp);
>>   }
>> +
>> +int intel_pxp_key_check(struct intel_pxp *pxp, struct drm_i915_gem_object *obj)
>> +{
>> +	if (!intel_pxp_is_active(pxp))
>> +		return -ENODEV;
>> +
>> +	if (!i915_gem_object_is_protected(obj))
>> +		return -EINVAL;
>> +
>> +	GEM_BUG_ON(!pxp->key_instance);
>> +
>> +	/*
>> +	 * If this is the first time we're using this object, it's not
>> +	 * encrypted yet; it will be encrypted with the current key, so mark it
>> +	 * as such. If the object is already encrypted, check instead if the
>> +	 * used key is still valid.
>> +	 */
>> +	if (!obj->pxp_key_instance)
>> +		obj->pxp_key_instance = pxp->key_instance;
>> +	else if (obj->pxp_key_instance != pxp->key_instance)
>> +		return -ENOEXEC;
>> +
>> +	return 0;
>> +}
>> +
>> +void intel_pxp_invalidate(struct intel_pxp *pxp)
>> +{
>> +	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
>> +	struct i915_gem_context *ctx, *cn;
>> +
>> +	/* ban all contexts marked as protected */
>> +	spin_lock_irq(&i915->gem.contexts.lock);
>> +	list_for_each_entry_safe(ctx, cn, &i915->gem.contexts.list, link) {
>> +		struct i915_gem_engines_iter it;
>> +		struct intel_context *ce;
>> +
>> +		if (!kref_get_unless_zero(&ctx->ref))
>> +			continue;
>> +
>> +		if (likely(!i915_gem_context_uses_protected_content(ctx))) {
>> +			i915_gem_context_put(ctx);
>> +			continue;
>> +		}
>> +
>> +		spin_unlock_irq(&i915->gem.contexts.lock);
>> +
>> +		/*
>> +		 * By the time we get here, the HW keys are already long gone,
>> +		 * so any batch using them that's already on the engines is very
>> +		 * likely a lost cause (and it has probably already hung the
>> +		 * engine). Therefore, we skip attempting to pull the running
>> +		 * context out of the HW and we prioritize bringing the session
>> +		 * back as soon as possible.
>> +		 */
> Not necessarily. If that was true we wouldn't even need to call the
> intel_context_ban because hang would probably take care for us.
>
> But...
>
> you have 2 paths:
> "1". irq teardown where this is true
> "2". suspend where this is done before we actually lose the keys.
>
>> +		for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it)
>> +			intel_context_ban(ce, NULL);
> Before this patch we only ban context from 2 paths:
> a. context_close
> b. request_reset
>
> in both cases it will be okay because it is guaranteed that we would have
> quiesced (or hang and declared guilty).
>
> With this new introduction here, if we are talking about case "2" (suspend)
> it is okay because we also quiesce the requests first.
>
> However in the case "1" (teardown) case we have a possible race.
>
> If we are already at i915_gem_do_execbuffer right after eb_relocate_parse
> when we get the teardown interrupt we won't identify that the context was
> banned and it will be sent for execution.
>
> Well, that might cause some corruption or hang. And then it would get
> banned anyway.
>
> So, in the way that our keys are lost there's really no way to avoid
> this, but what we have in place is a very good mitigation. In especial
> for the suspend path.
>
> So, at this point I have 1 request and 1 question:
>
> Request: Could you please replace above's comment with something
> more on these lines:
>
> /*
>   * By the time we get here we are either going to suspend with quiesced
>   * execution or the HW keys are already long gone and in this case it is
>   * worthless to attempt to close the context and wait for its execution.
>   * It will hang the GPU if it has not already. So, as a fast mitigation,
>   * we can ban the context as quick as we can. That might race with the
>   * execbuffer, but currently this is the best that can be done.
>   */

sure

>
>
>> +		i915_gem_context_unlock_engines(ctx);
>> +
>> +		/*
>> +		 * The context has been killed,
> not actually... it has been banned, but not killed....

I'll s/killed/banned .

> I was wondering if we should we consider kill_context() here as well?
> But that seems a big hammer on the engines as well, so not sure if
> that is good. but I was wondering about the fences. Do you know if
> we might need to take care of the fences?
>
> At minimal we adjust the comment, but please look at the fences thing
> in the kill_context.

The kill_context logic is to make sure we're fine after the context is 
destroyed. Even if we're banning everything here, the context is still 
around so we're safe. We could change the logic to do a more thorough 
clean-up immediately here, but that would slow the invalidation logic 
and it's IMO not worth it when we don't gain anything from a functional POV.

>
>> no need to keep the wakeref.
>> +		 * This is safe from races because the only other place this
>> +		 * is touched is context_close and we're holding a ctx ref
>> +		 */
> I disagree. This might race with the context_close.
> Could we call context_close() here?

Context_close is called when userspace release its ref on the context. 
We could modify it to be callable from other situations, but I don't see 
the benefit.

>
> or grab the mutex_lock(&ctx->mutex); ?

I'll move the wakeref release from context_close() to context_release(), 
which is guaranteed not to race (because of the refcount), so we can 
skip the lock.

Daniele

>
>
>> +		if (ctx->pxp_wakeref) {
>> +			intel_runtime_pm_put(&i915->runtime_pm,
>> +					     ctx->pxp_wakeref);
>> +			ctx->pxp_wakeref = 0;
>> +		}
>> +
>> +		spin_lock_irq(&i915->gem.contexts.lock);
>> +		list_safe_reset_next(ctx, cn, link);
>> +		i915_gem_context_put(ctx);
>> +	}
>> +	spin_unlock_irq(&i915->gem.contexts.lock);
>> +}
>> +
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> index 8f1e86caa53f..f942bdd2af0c 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
>> @@ -9,6 +9,8 @@
>>   #include "gt/intel_gt_types.h"
>>   #include "intel_pxp_types.h"
>>   
>> +struct drm_i915_gem_object;
>> +
>>   static inline struct intel_gt *pxp_to_gt(const struct intel_pxp *pxp)
>>   {
>>   	return container_of(pxp, struct intel_gt, pxp);
>> @@ -33,6 +35,10 @@ void intel_pxp_fini_hw(struct intel_pxp *pxp);
>>   
>>   void intel_pxp_mark_termination_in_progress(struct intel_pxp *pxp);
>>   int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp);
>> +
>> +int intel_pxp_key_check(struct intel_pxp *pxp, struct drm_i915_gem_object *obj);
>> +
>> +void intel_pxp_invalidate(struct intel_pxp *pxp);
>>   #else
>>   static inline void intel_pxp_init(struct intel_pxp *pxp)
>>   {
>> @@ -46,6 +52,12 @@ static inline int intel_pxp_wait_for_arb_start(struct intel_pxp *pxp)
>>   {
>>   	return -ENODEV;
>>   }
>> +
>> +static inline int intel_pxp_key_check(struct intel_pxp *pxp,
>> +				      struct drm_i915_gem_object *obj)
>> +{
>> +	return -ENODEV;
>> +}
>>   #endif
>>   
>>   #endif /* __INTEL_PXP_H__ */
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> index 67c30e534d50..c6a5e4197e40 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> @@ -72,6 +72,9 @@ static int pxp_create_arb_session(struct intel_pxp *pxp)
>>   		return ret;
>>   	}
>>   
>> +	if (!++pxp->key_instance)
>> +		++pxp->key_instance;
>> +
>>   	pxp->arb_is_valid = true;
>>   
>>   	return 0;
>> @@ -85,6 +88,9 @@ static int pxp_terminate_arb_session_and_global(struct intel_pxp *pxp)
>>   	/* must mark termination in progress calling this function */
>>   	GEM_WARN_ON(pxp->arb_is_valid);
>>   
>> +	/* invalidate protected objects */
>> +	intel_pxp_invalidate(pxp);
>> +
>>   	/* terminate the hw sessions */
>>   	ret = intel_pxp_terminate_session(pxp, ARB_SESSION);
>>   	if (ret) {
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> index 5a170e43c959..c394ab2e452b 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_types.h
>> @@ -7,7 +7,9 @@
>>   #define __INTEL_PXP_TYPES_H__
>>   
>>   #include <linux/completion.h>
>> +#include <linux/list.h>
>>   #include <linux/mutex.h>
>> +#include <linux/spinlock.h>
>>   #include <linux/types.h>
>>   #include <linux/workqueue.h>
>>   
>> @@ -27,6 +29,13 @@ struct intel_pxp {
>>   	 */
>>   	bool arb_is_valid;
>>   
>> +	/*
>> +	 * Keep track of which key instance we're on, so we can use it to
>> +	 * determine if an object was created using the current key or a
>> +	 * previous one.
>> +	 */
>> +	u32 key_instance;
>> +
>>   	struct mutex tee_mutex; /* protects the tee channel binding */
>>   
>>   	/*
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index 920e9e852e5a..df680286dd7e 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -1846,12 +1846,33 @@ struct drm_i915_gem_context_param {
>>    * attempted to use it, never re-use this context param number.
>>    */
>>   #define I915_CONTEXT_PARAM_RINGSIZE	0xc
>> +
>> +/*
>> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT:
>> + *
>> + * Mark that the context makes use of protected content, which will result
>> + * in the context being invalidated when the protected content session is.
>> + * Given that the protected content session is killed on suspend, the device
>> + * is kept awake for the lifetime of a protected context, so the user should
>> + * make sure to dispose of them once done.
>> + * This flag can only be set at context creation time and, when set to true,
>> + * must be preceded by an explicit setting of I915_CONTEXT_PARAM_RECOVERABLE
>> + * to false. This flag can't be set to true in conjunction with setting the
>> + * I915_CONTEXT_PARAM_BANNABLE flag to false.
>> + *
>> + * In addition to the normal failure cases, setting this flag during context
>> + * creation can result in the following errors:
>> + *
>> + * -ENODEV: feature not available
>> + * -EPERM: trying to mark a recoverable or not bannable context as protected
>> + */
>> +#define I915_CONTEXT_PARAM_PROTECTED_CONTENT    0xd
>>   /* Must be kept compact -- no holes and well documented */
>>   
>>   	__u64 value;
>>   };
>>   
>> -/*
>> +/**
>>    * Context SSEU programming
>>    *
>>    * It may be necessary for either functional or performance reason to configure
>> @@ -2979,8 +3000,12 @@ struct drm_i915_gem_create_ext {
>>   	 *
>>   	 * For I915_GEM_CREATE_EXT_MEMORY_REGIONS usage see
>>   	 * struct drm_i915_gem_create_ext_memory_regions.
>> +	 *
>> +	 * For I915_GEM_CREATE_EXT_PROTECTED_CONTENT usage see
>> +	 * struct drm_i915_gem_create_ext_protected_content.
>>   	 */
>>   #define I915_GEM_CREATE_EXT_MEMORY_REGIONS 0
>> +#define I915_GEM_CREATE_EXT_PROTECTED_CONTENT 1
>>   	__u64 extensions;
>>   };
>>   
>> @@ -3038,6 +3063,31 @@ struct drm_i915_gem_create_ext_memory_regions {
>>   	__u64 regions;
>>   };
>>   
>> +/**
>> + * struct drm_i915_gem_create_ext_protected_content - The
>> + * I915_OBJECT_PARAM_PROTECTED_CONTENT extension.
>> + *
>> + * If this extension is provided, buffer contents are expected to be protected
>> + * by PXP encryption and require decryption for scan out and processing. This
>> + * is only possible on platforms that have PXP enabled, on all other scenarios
>> + * using this extension will cause the ioctl to fail and return -ENODEV. The
>> + * flags parameter is reserved for future expansion and must currently be set
>> + * to zero.
>> + *
>> + * The buffer contents are considered invalid after a PXP session teardown.
>> + *
>> + * The encryption is guaranteed to be processed correctly only if the object
>> + * is submitted with a context created using the
>> + * I915_CONTEXT_PARAM_PROTECTED_CONTENT flag. This will also enable extra checks
>> + * at submission time on the validity of the objects involved.
>> + */
>> +struct drm_i915_gem_create_ext_protected_content {
>> +	/** @base: Extension link. See struct i915_user_extension. */
>> +	struct i915_user_extension base;
>> +	/** @flags: reserved for future usage, currently MBZ */
>> +	__u32 flags;
>> +};
>> +
>>   /* ID of the protected content session managed by i915 when PXP is active */
>>   #define I915_PROTECTED_CONTENT_DEFAULT_SESSION 0xf
>>   
>> -- 
>> 2.25.1
>>

