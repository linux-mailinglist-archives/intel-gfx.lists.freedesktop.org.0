Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC524D3EE3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 02:45:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4ED010E343;
	Thu, 10 Mar 2022 01:45:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E36710E30D
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 01:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646876717; x=1678412717;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=l/HJTqkauBNwwB6AstGV6pEmVQ1fqQzTrf/nAiY3Zuw=;
 b=HP58EeMYoZ0qO6zUJc/YkOmcoALcvIvgyxilR7TM5d6HAna6f4ovO6jz
 7/vjrRmR7UVLzveWjGlgP+8ZHfGtq6T8HeOEjW954eQqppQ7pqBT5a/ig
 QLmJ8je0xbMRGR/oT3cjyo+10JUAMnKU1CLixKnLJ5sPk1QluTt+qjVYU
 Hw4zru2rc6y7nhp+Q4xGOrwXx+FujRVOCcwy3cmCiDZnLWzzbOjrUn9bF
 Wl+kmz7RQDtlKj+I3RrqEiPrCiWet1Q5kNmAQqghtaNGP1kmqWSPYXOrZ
 Ye5CfKAlTB/tEhn14h7XLVO7gZuCqsabkLkvNFjLnzBzHnn37t5jgqPtN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255322498"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="255322498"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 17:45:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="510715333"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 09 Mar 2022 17:45:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 17:45:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 17:45:16 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 17:45:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g0MwQMCzChu8kSsvj6gtLPCGHNxGfug7bOv/qL+Y4nwF1CgBt7Mu08IP/kpZyGdvP+B1V2RuchaeUMI0PQVFefxMKfw6J9CoFBjA/Wvf+lVLWNPRDmNDJLr8IwGQchHIIPd2MtTYF5cu3b8fuErd73xC312O6rt59miIAkjR76t+vL3gl3Ef2qpOoa/pa5XPGUDMIR6OMrM05uVO4EV1JegqXE29M7ZiD+B5tVodbcRuiK5yYLsN1oK9Hzwypn1C4ZDqxgJxey9SoZqYTxBBfGybLi6dI1E3jjOcVMSrkqr6uDt29T6sZP/f8nAuj07eP3c2tWYvU+dMAXEkLvLtOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xvcwwVW4qCPfAyIt+ktvo+JqrB6WnHGexkGLZ1Gt2mk=;
 b=YShIQVtMQHDfFA/jJZCu6CxyOlz2bg+RUc/LXGfOmPIJNwW9KPL7OKWdFEbLgyuAAA0/24mdYkm7m3h93UyWB5ehVSNIBxuSjrJCCIFrnb5+zyfRosm9ieyCjTTOCV5ZBVgzBa6kaiwUn/dsf6zzPMo/jx6j+Dl58x2pryDHSja2qXGCLFc1iENHl3yJncjQmjRzWwJyG8fIcl2uGh6Ej9U0AZVRVzgG4Rt4B+zAhqasWC4EQ4LxqPGVL9B92rGpIh6m1WUVaCJPMLCTS9hxxQptKDCld+gVgwBatYoaBUkYn5oFNgPi6EVCT3aLh1OBlCkA0qbpoXO8E28FP9Rlig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB1556.namprd11.prod.outlook.com (2603:10b6:405:d::19)
 by DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Thu, 10 Mar
 2022 01:45:14 +0000
Received: from BN6PR11MB1556.namprd11.prod.outlook.com
 ([fe80::e1d6:f777:da67:c835]) by BN6PR11MB1556.namprd11.prod.outlook.com
 ([fe80::e1d6:f777:da67:c835%10]) with mapi id 15.20.5061.021; Thu, 10 Mar
 2022 01:45:14 +0000
Message-ID: <e9d4aabd-2677-25f5-dc6c-c8421b5d03f6@intel.com>
Date: Wed, 9 Mar 2022 17:45:11 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220226062732.747531-1-alan.previn.teres.alexis@intel.com>
 <20220226062732.747531-2-alan.previn.teres.alexis@intel.com>
 <c4976a17-1254-c893-6501-e6fa6620a855@intel.com>
 <dc58f444-12f6-6a33-1be7-f0fa004d4b93@intel.com>
 <07d59aa2-2d3c-c9b6-f4c1-359e623934b8@intel.com>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <07d59aa2-2d3c-c9b6-f4c1-359e623934b8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0017.namprd07.prod.outlook.com
 (2603:10b6:510:5::22) To BN6PR11MB1556.namprd11.prod.outlook.com
 (2603:10b6:405:d::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae51d07d-b8e2-4835-e22a-08da02379f0a
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_
X-Microsoft-Antispam-PRVS: <DM4PR11MB5341C5DCA6020889EC5E36D98A0B9@DM4PR11MB5341.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Let4kVSGlyxx8JWj0hDsN9gbggg/UtzbjJnNpSzUrw3/5uSUo4/9kAWGgLZLc64lJj1rAXzIGwUOcQH6rwcybC8vDk0bpORZNWXdMr5gyipwJJmyGzvbOQxY/Dv1nUcZM3A7plWucALXBErzVy5iT0s6dC1BgyaiBX1t8IGMWfJ3EvMfbho3wWZ7vgse57uzX4UpRXIAqE4tPVsomDguJ2e5WGxs1OjY7DuslP6OM0bTYW53/Wdwo0jDjRj706p6gWTYrsfcCiNiezI64zt6B8bxwHy9WyH6S339hL1xA9DNzbrGzGOpn42aB0SbghnPTRrRx6nP9pXShFCruFZlxKBlUBneiZsAEQHW+9NLAUwDJV6cSdnlysXRXLAb46ob2LDNDKwp5LQc8QExdV6dVOUG40BafFKgpJtsSYihIsHXRIYiwsB8iYUaIfZnPEAg7RcsRl4SHx0dUug0ZAnz0pMSjCVBpKNJcVO6VQ/LnRFgNUijZbMdpfCx5yllW6bDxUWb+G9ZEoiIgeFJgsH3Eq0IZdrQSjT5459ZMbrDNlxMzpr1HoX8RLI7/vn5bwDzo+gECPXRICu1OU+NMPFrMWXPSTwrVD2cjCqiHY0IAvW/ijND/P3xgduMu0+j+S7151yYkbXyvKbzUJ2wJGnywfrGxoYsAa8/qOGp3kS3O2EQnimjxmuuXshN1sKpR+ayeQcctmV9ly3XaW4ea6tQS38/VXo1APjjGp1BRP7UD3s=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(8676002)(38100700002)(2906002)(53546011)(66556008)(66946007)(82960400001)(66476007)(8936002)(5660300002)(31696002)(6486002)(86362001)(508600001)(316002)(6506007)(186003)(36756003)(6512007)(31686004)(83380400001)(26005)(2616005)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0dJZzAycnlqaGc5endDM05xOUlOZ2taU2ZoWjBZVGhDc1VqS2pTalZXeWpP?=
 =?utf-8?B?V3dTaFRZejJ3WmJxa1h6L1RrQWFlN2J6UjVaazdXTVk1a1VSYXR5N3hyNmto?=
 =?utf-8?B?L0t1NTRTWVFEai8wRDFRM3ZCdVZZVkRNK0VoOERRQ2t6TjZRVzF1THY2VmJJ?=
 =?utf-8?B?ZThJc2tZTGR5MEp3NHcxWGlzcGZmcXJRb1l5Nyt5UUNxWUFvRWdxRnJuVXZX?=
 =?utf-8?B?amorUk93OHRiVVdHMU9Id25hL1R5RzlkTUo1YmhWd0pkTU5BSW5iYVYrdW5D?=
 =?utf-8?B?dXRZYk5YUEcvT2lkcml5RUd3cjZKYVh0R2pLVTcyR2VXRGc2YnFwSTNLSkRv?=
 =?utf-8?B?R0RkMHgwRnBKaEMrSzRpbkhMd1B0VUMvbHUvS2x5VFFwM0FBWk04WTNXRmk5?=
 =?utf-8?B?QVk5aEdEdTdiVUk3ek9aMzBpT0xIUU5aM09HV05nV0t4N3lhUnZNckNaYmdS?=
 =?utf-8?B?U0o5Y0NJRDV5S2drTWVDaGF2ekg3VS9CR2x5UkNNUkFxa09FQlhUSFlWOFl6?=
 =?utf-8?B?SFh3T2ZJQjNqcWRKZlV5SlFVVGh4b09kQWVXVW5uYlJFbGRmU0NqY0hPcTls?=
 =?utf-8?B?Vlg2MVNjbVR5SHp5c1kxejM4SXcxakFaenBtc3liVFUxY0VEdzNDSzRhcURm?=
 =?utf-8?B?MWRRV3Q3Z1BydENsR2E5OE00TFlvWGhHYUhFK0FLUG50bW5ITm52RjBqV24r?=
 =?utf-8?B?S3pMMFV0TndMRHNmZW9qc2hiRG9PbnBqWmhCNWY5THEwUHVZOEp3bHYyR1E2?=
 =?utf-8?B?ekh0YkpYZ2ExMUx1MnUxd2dIQ29TVWlzck0zUE9LbGNiUFRncGlReW9HTFd6?=
 =?utf-8?B?dTVJczVQclZva2RCbHdvQ2NSNXgrbFNNTXZORlNTQm96SEVwdjViVjVmNFVk?=
 =?utf-8?B?c3orWWlzQUxFT1FqcmJBVzRjcjZxaFRPNjFLMFFSMjNzMzk5Z0Fxa0pFSDNz?=
 =?utf-8?B?c1pkbmRBV3Q4RUEzT0xDc2ZDVW16dzc4ZDNuSXEwM3p2UC9RTUhXRHdlSy9R?=
 =?utf-8?B?bnhCMTNvbUlZeURjY2ZEeUN3aEk2UHNiWkR0UzdBTjJ2RS8wemp1YTk0WVdS?=
 =?utf-8?B?REtPdVJzQ3JqWEErLzZZVWFySE5pbU54MCtrRU5FWU4xQ3RBenJyclliNHRh?=
 =?utf-8?B?NGdFOTRtbXNEbHZmbU5QelFBV3g2NUxsSEJyeU9CVXFTMVZoT0MrVnFXb1dI?=
 =?utf-8?B?VWF5U2tGVEZTM0hPQnJtc2hoZDZ5NTVua0puLzZhbWptYjNKSVBXNlBvS3pH?=
 =?utf-8?B?VmlvV016cFoyNFRWY2FINURBdlY2Y0Y1SnptbkdnU2VlZmpYTUZpaGg1NmhU?=
 =?utf-8?B?SWxNTFZ2cTZVSFJrN1NxbEcvZStNTUxWNklwUkRnc2hjWmh4bHFabGxVdEVu?=
 =?utf-8?B?Uko0VEpCNE9GVmhucTRPV1Jqb29GK0VYVXc1Ky84WTNzblorQWRUUGF6cnJr?=
 =?utf-8?B?T09hdVhXK2FkSzVSQTlxdkRjZXdkYTZJcFByRmVEN0p0anMxREc5b3p2Umdu?=
 =?utf-8?B?MUxMeThSM21mQXo4Qk5BNVZpR2RqaXJEeWNsWm8vSkVNTnVvYTZzc3JYbHRT?=
 =?utf-8?B?bzN5Tm9nTzVxeERSOXZzWFhhL1o2SDFVM3JKYitocmh0em91bGM1TEkzRmF1?=
 =?utf-8?B?WUdsM2pEWjVjeGxaUXo5ekVtUTFsYm8wZ2twWnVWS0FFTytNWnlrVlI0bHpr?=
 =?utf-8?B?Rkw0b0hwWEoxN2JWSUJaT0lQVjU0MzIyN2hxZlVSaHo3TjBCSWQ3K0pVYW9o?=
 =?utf-8?B?bm1QQkJKVGwyV05CWTF3VnFVOEFCTU5NejBwdGRacDNMY0ZDVkFhMkM4cWQ1?=
 =?utf-8?B?Y2lMem5NclpIOUZCdjJZa0Vscm5lYTdiaU1oQ1FEd0lUNk1vVFJoNzMrWjBV?=
 =?utf-8?B?bS9tNzZSQ2p2S1NiYlltdVgwYmIydW9VMnRzYTZzajFwWEpDRlYxQmJhRlZo?=
 =?utf-8?B?WjRBcUlWTG9LdjV6TWFoZEIrSUxBQVRJUGtWUzBJWERidWNFT1VzdUo0ZDdB?=
 =?utf-8?B?U0VRTkRWL2J2WTlCRERMTGhDYTl3UU5OMlFCTmNhMHNZRDl5cnIzR24wTUxN?=
 =?utf-8?B?Y3NiZCtjb252UURNdFBMNnF2aEZJZFBWem05ODJGSks3S3FHblAzNTN6RDdU?=
 =?utf-8?B?MFBqWVpOS1VMdGFLMTBXMTRlYi9OWFlyNHVrMTRIQncrSlhyMlhTbzR0RjJX?=
 =?utf-8?B?L3dtM3JUUjNPTk1iQmVYMHl4UWVWUU9ubm9PZHkyUUZmcEc1ZXdiODBqeFJO?=
 =?utf-8?B?aEhpaWZTLzNYME56TjZ5dm5HRTNWQitzbGR1bDl5NG81TmE5ZGJOcGRHMFpV?=
 =?utf-8?B?TlpWRWhjcEF2R25FTFZ4QlJMc3ZJdU9CaHl2OGxuT3VSM29IVVVvZz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae51d07d-b8e2-4835-e22a-08da02379f0a
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2022 01:45:14.3447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3Ti+aGwfmkoSKRVi187ZDO+CjSxjVSBSNx+hG1snwDVZ8zoVKcTQOfyafnpZYB884ExBC87LzRp6/RWn8VVwOwObVyKLooDZu7ATkDt128eQ5paIJRNyeACUzzjd+pa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5341
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/reset: Fix error_state_read
 ptr + offset use
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


On 3/9/2022 5:18 PM, John Harrison wrote:
> On 3/8/2022 11:47, Teres Alexis, Alan Previn wrote:
>> On 3/1/2022 1:37 PM, John Harrison wrote:
>>> On 2/25/2022 22:27, Alan Previn wrote:
>>>> ...
>>>> This fixes a kernel page fault can happen when
>>>> multiple tests are running concurrently in a loop
>>>> and one is producing engine resets and consuming
>>>> the i915 error_state dump while the other is
>>>> forcing full GT resets. (takes a while to trigger).
>>> Does need a fixes tag given that it is fixing a bug in an earlier 
>>> patch. Especially when it is a kernel BUG.
>>> E.g.:
>>> 13:23> dim fixes 0e39037b31655
>>> Fixes: 0e39037b3165 ("drm/i915: Cache the error string")
>>>
>> okay, will add that.
>>
>> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c 
>> b/drivers/gpu/drm/i915/i915_sysfs.c
>>>> index a4d1759375b9..c40e51298066 100644
>>>> --- a/drivers/gpu/drm/i915/i915_sysfs.c
>>>> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
>>>> @@ -432,7 +432,7 @@ static ssize_t error_state_read(struct file 
>>>> *filp, struct kobject *kobj,
>>>>       struct device *kdev = kobj_to_dev(kobj);
>>>>       struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
>>>>       struct i915_gpu_coredump *gpu;
>>>> -    ssize_t ret;
>>>> +    ssize_t ret = 0;
>>>>         gpu = i915_first_error_state(i915);
>>>>       if (IS_ERR(gpu)) {
>>>> @@ -444,8 +444,10 @@ static ssize_t error_state_read(struct file 
>>>> *filp, struct kobject *kobj,
>>>>           const char *str = "No error state collected\n";
>>>>           size_t len = strlen(str);
>>>>   -        ret = min_t(size_t, count, len - off);
>>>> -        memcpy(buf, str + off, ret);
>>>> +        if (off < len) {
>>>> +            ret = min_t(size_t, count, len - off);
>>>> +            memcpy(buf, str + off, ret);
>>>> +        }
>>> So the problem is that the error dump disappeared while it was being 
>>> read? That seems like it cause more problems than just this 
>>> out-of-range access. E.g. what if the dump was freed and a new one 
>>> created? The entity doing the partial reads would end up with half 
>>> of one dump and half of the next.
>>>
>>> I think we should at least add a FIXME comment to the code that fast 
>>> recycling dumps could cause inconsistent sysfs reads.
>>>
>>> I guess you could do something like add a unique id to the gpu 
>>> coredump structure. Then, when a partial sysfs read occurs starting 
>>> at zero (i.e. a new read), take a note of the id somewhere (e.g. 
>>> inside the i915 structure). When the next non-zero read comes in, 
>>> compare the save id with the current coredump's id and return an 
>>> error if there is a mis-match.
>>>
>>> Not sure if this would be viewed as an important enough problem to 
>>> be worth fixing. I'd be happy with just a FIXME comment for now.
>> For now I shall add a FIXME additional checks might impact IGT's that 
>> currently dump and check the error state. I would assume with that 
>> additional check in kernel, we would need to return a specific error 
>> value like -ENODATA or -ENOLINK and handle it accordingly in the igt.
> If an an extra check against returning invalid data affects an 
> existing IGT then that IGT is already broken. The check would to 
> prevent userland reading the first half of one capture and then 
> getting the second half of a completely different one. If that is 
> already happening then the returned data is meaningless gibberish and 
> even if the IGT says it is passing, it really isn't.
>
>
>>>
>>> I would also change the test to be 'if (off)' rather than 'if (off < 
>>> len)'. Technically, the user could have read the first 10 bytes of a 
>>> coredump and then gets "tate collected\n" as the remainder, for 
>>> example. If we ensure that 'off' is zero then we know that this is a 
>>> fresh read from scratch.
>>>
>>> John.
>>>
>> I'm a little confused, did u mean: in the case we dont have a 
>> gpu-state to report, and then the user offset is zero (i.e. "if 
>> (!off)" ) then we copy the string vs if we dont have a gpu-state to 
>> report and the user-offset is non-zero, then we return an error (like 
>> the -ENOLINK?). If thats what you meant, then it does mean we are 
>> assuming that (in the case we dont have a gpu-state) the user will 
>> never come in with a first-time-read where the user's buffer size of 
>> less than the string length and be expected continue to read the rest 
>> of the string-length. This i guess is okay since even 6 chars are 
>> enough to say "No err". :)
> Sorry, yes. That was meant to say 'if (!off)'.
>
> Hmm, I guess technically the user could be issuing single byte reads. 
> User's can be evil.
>
> Okay. Maybe just add a FIXME about needing to check for 
> changed/missing/new error state since last read if the offset is 
> non-zero and otherwise leave it as is.
>
> John.
>
Sounds good - will do. Apologies on the tardiness with the responses.
>
>>>>       }
>>>>         return ret;
>>>
>
