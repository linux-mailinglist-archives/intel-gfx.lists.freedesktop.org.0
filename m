Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD86847CB54
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 03:22:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A87F010E17A;
	Wed, 22 Dec 2021 02:22:32 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A9D10E17A;
 Wed, 22 Dec 2021 02:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640139751; x=1671675751;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LwSRCnWn0Ci9PZoDa5ZZf+0Ze+JebHzDcqLh48WUtWM=;
 b=Nhf1fRqYML+5580fu/YbXCKklI7iJ0r32LADw2nBFm+iMJiKLjAmlJx7
 lMbSE6u51SFlp0NDFLWMkVFPw0icqml+qUAYWN32HYg5in6R8l6b11CUf
 /mquAR3hCJzXOsoU2fqNOIEYuaVGr5V+Qj7zLT1Cb6EODrZw++dxulqJv
 1pNCb470NcbnWKQ3ym/osGxOAXXvRwYNLdxBD6c4RD5DIRL/WgDK+832U
 XeoBSQsrccb9wT+2/DW3zyvZz9daHj3UYIZFigWvHaZhkQ9ekHdjSpgaP
 2mWNwnN2ZMsbqD0B+LjanZmwP1Q9l1GRBB7ce31MideIlx9ff8lS+3Ujb Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="221204999"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="221204999"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 18:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="756075952"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga006.fm.intel.com with ESMTP; 21 Dec 2021 18:22:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 21 Dec 2021 18:22:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 21 Dec 2021 18:22:30 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 21 Dec 2021 18:22:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hKujSTZ3j12aYEVeN9f4JPmzyc5aKZIWPld30xFzNMfC3YT3WuKL4aW8pouvqHM9KXvqxJWLUFKH+p6ztle+5cRACws23n0gSAwE1Qd8nKKa466Ey8bNBsxLNjLt6J8DMR8c1ygELYAMANHar0jVVLyjej8Ql15NUAsLJgVbGqF94CQTE9R5n+IohRcr6plt2EDJkM21PMK9SFPHKx7svQiB1L8qabcruO4gv2pRmeleQ6s0yl1h233RBoh03aBhUVEvtkYP+CM+Iv7bbaKqt40byaUCfPHfpTJOPPLOIAn9fAW/AAZnCht/h1yBOI3JnsLPddP7y3IWZIlrpyoNxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZTRtn7gu+761jELJyknnPM+U0+aGCjo7UZ5CZarAfek=;
 b=FI3SnrGhZUo9xC8Wp1dfqCWE8y0cQZeusq6ebQWDwuTqs4pltuEACwaCmg6p4G0T7YdOvjgY6adyPcpZVzkLIq1l9fEj1NiWMlHUqutzuiuaAmPhnH/u8/SY1m+BO8IqVOTkXJf8pJb/19qKq1iAwWXyJWYqbbNefJ7NIWt3YNtNiRhDKB0df7wcqATwEfsBkHqUg7V7nm0TIuoJUXLF1E4HentL9Mfers/ZWXS7S0i7F7LGpbZ6DOwurgJMP+YnFJipH1jHwm6YPyC3H2bTQ9Rc4HqVRjVixqw8teQBM8woB40jWoobQ9lnoXpft/thX22XtV2B2NqP/Qh1HWwrlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB3063.namprd11.prod.outlook.com (2603:10b6:a03:89::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.20; Wed, 22 Dec
 2021 02:22:25 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2ce1:2a7:cd07:81df]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::2ce1:2a7:cd07:81df%6]) with mapi id 15.20.4823.018; Wed, 22 Dec 2021
 02:22:24 +0000
Message-ID: <43afcf52-36b8-b400-539f-6e535b992ea5@intel.com>
Date: Tue, 21 Dec 2021 18:22:22 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.0
Content-Language: en-GB
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-9-John.C.Harrison@Intel.com>
 <YbruxWHUL7+Mrkze@zkempczy-mobl2>
 <dd455cdc-a667-b4c6-a354-d44aca4a74d9@intel.com>
 <YcDH1mQgoxOtWvAw@zkempczy-mobl2>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <YcDH1mQgoxOtWvAw@zkempczy-mobl2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR12CA0039.namprd12.prod.outlook.com
 (2603:10b6:301:2::25) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4bfd8979-a58c-4d1f-68d4-08d9c4f1e449
X-MS-TrafficTypeDiagnostic: BYAPR11MB3063:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BYAPR11MB3063D6E024FAE6BF57C9820DBD7D9@BYAPR11MB3063.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ymOsd5zmcKgl7W4YC+oxIQcMdnsNEXTtsl7QoR3BxrMxdledUhjyRf+zCE/0jbIyGo/YGgzKkHgqePQiKyktzTWtA8+skbMBwcEWoXeeUlm7i+tp3cpKfzJ/R4fqY0okJT7ubtPAM36deHe7v38k6qCjm1Wa391SrokW9SFx/Ma9bSFm+XVu9WQ0r9WNLJhMoTH2twnPXRnp3b/Gb0FIBTHTtwnZhPfAVLsDiER9qdu1ddqf1FyHVCg6MM/0qw6kEN62QNnh5ctaatPdu23M8Ir0LehMKSPP1nxkQiF6jjRKG8r+DGaExY3otRsBA+EycmgOBOa8o2q2poz67Q63spsz7OQqo7SXquOzjKuPFhKixVnLt1qZB/Qc2ZI5xSQg9CLIH88one+t+yaCgk83dMT8q7OTF9XPjyOHK+YfbgOld8KrJyTx1d1ekFb0GrWfU64Rnwoip3mZ2R/MJjsL1KiFZH9soU7JHHLyLaY+o6coCPu4hXPgGhCsmpOxywxz33Ves5boFXgNl3g+GojVHqI2WESrL/LZwDdr30AK/Sh7FlTEzMQx5qcl6KJb4+252iIvooWw3ry1EIepu0QiC0IcQBvfghT13LDmLK/3q1u3DqH/D3pRM28N/Sa3C+OwaVFnJoEhHf9Dxk3sqZyQrJVcvcMwNKG/6DoNRlxs1PzJFBviRWmP7Wn95dN4tEPOfa0bLRglgwtKAGwxeLDU56Z03pzexnVcLcK7kDzjV14pg0bLnqLrWHrFTDZ+JRz4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66574015)(316002)(26005)(37006003)(450100002)(66556008)(6486002)(508600001)(4326008)(86362001)(66946007)(66476007)(36756003)(2906002)(30864003)(31696002)(6512007)(31686004)(186003)(2616005)(966005)(53546011)(8676002)(5660300002)(38100700002)(82960400001)(8936002)(83380400001)(6862004)(6636002)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkpNVW1TUmtBK01zbGRqSXh5b2w4RkliSG04SElEYVoxTnlsUFZ5VWRTaGQ0?=
 =?utf-8?B?bzRySTYrMFRhTjQzZDZsWDF2bk4zTjNVUUhOMUF4UVZiTjNkMExJN3pxd1Yx?=
 =?utf-8?B?RlduY2R5TGFPN285Q25tSFArcHNJOUltUXBMSTB2VGRJeTVtbTB0QVJrOTNx?=
 =?utf-8?B?bHRPK3ErdFVBZjhpVzRHUVBHNUQ5L21aeGJwTDEzTFlCZXFFQlpjdGJyZ05H?=
 =?utf-8?B?eXBHcDNTZ3dpNnloTVkrb0V1RzlmazNlTFN3dnZUSHk3eE1HcTgrcUVRc2Ez?=
 =?utf-8?B?Njl2dFhlQS9yTVBHMWlwYmoxRDF5SUZ4OW9VbjhNbytQZWREbDdZZzNMbDJs?=
 =?utf-8?B?dVQydXhMYmJOSnU0Rk9odWFHdlZzdGk3ejVmM3l4NHphbEk5azNEdjRNbkJj?=
 =?utf-8?B?Q1RncVBOTlNob1BTd0szeDhDODhVWHlUNlZEUTNTcHpJcDV4cDNiY1FwbUVx?=
 =?utf-8?B?MmNXajc0Y2FTaHIwdFJwSVNwQ0ZUVWozNVVoVFY0b0svek5DcS9OWFRUTkdm?=
 =?utf-8?B?RWR3aXIvRzhDYXZBKzl5RFFqSFNEL1pjWHowSWxMSVB2QmRTTXd6WVhON1BY?=
 =?utf-8?B?R0JzdnByNmlvNU9uRmdQTWV3Yk9Jb2x2c2g3Q1pqU3o4bTB4UXVqdDBmTXFR?=
 =?utf-8?B?dVR6WTJLK3Jhei9KSnZqelpOblNXeUVVQUlhRmRpem9QdU5aYjhoVjQ2Q0h5?=
 =?utf-8?B?V01wZXltc3c1M3Jzbm5tT2pRcHZxd2ltMlplQ09VOEF1cVVJUnd5MS93L0FG?=
 =?utf-8?B?a1o3V1JPOW5HWkFsV0lRL2N3VytzSmFKRXp5R2NpMnBjeDczaVIyc3I2Z1JG?=
 =?utf-8?B?aHl5U3JMMitmSjI1bk4wZE52TDhwUnltTVZXbEhvMHhCbk0zbElJT0pOcXpK?=
 =?utf-8?B?MlZrV3RUSmMxSGlZWlJGbU5KS3MwbFE4dm9KN1NlaDMxZXltOGF4dnFrbmtw?=
 =?utf-8?B?SXdkOHlETkQ5OStzV0NjYUJzUWowbGhyQkpwTVFocDNEcXVFeXlJVW5TQ3BP?=
 =?utf-8?B?bm1XamRlTEVoZHRCMmFQZ3d2czdLT3pFeVZGZ25SN3FmTWVwTEV6OEMzS0hR?=
 =?utf-8?B?TGJncUJUOWczMUlxTTdCQmhvYU1yUEFuK25Oak9HMmtrZlQyQ1RWWHdpUHJC?=
 =?utf-8?B?VitWaFc4UkIvV1hZUGNSRUJtby9EUk9zbjBEak5RTkJPLzBmekYrcURrb0Uy?=
 =?utf-8?B?cVhOa1BPemdGQTFNYkZUVndIWldQaTRFcVJJTm9JSC9MS1J5RXI2WnpqcU0x?=
 =?utf-8?B?K0VFUXFqSXVXVGJNeFdEU1NhR1ptTE90bGtDT1cwZDBGbjRYdWZ0VnN2ekFr?=
 =?utf-8?B?VEM2bFA4ampiU0toTnZ0M2g0YW1lcm1mT0cvbkdhNmtZWmx4REdNMHBmRnM5?=
 =?utf-8?B?TE5IQmJ6RDlWUjVqNHZlOGZSc0FIZFFPa3VoZkxUNjhEcitFVG1RMzQ1bVYw?=
 =?utf-8?B?WHE4SmY2aVZucmY2RWVYWXRmNGlFaVA0cUFDS1l4NkE4SWRCQnJVYjBvd0wx?=
 =?utf-8?B?akMrOS9KRzdmRmVjSjU3aWtuOHRySzdOWU5vcmFxWjN1VzBSNjlZM2ZQQlF1?=
 =?utf-8?B?WS9xaUhzbU9YN0xNZzI5dVA4bkNreEk2MzRLTkxsaGF0b3dFUlE0ZTJZZ0x5?=
 =?utf-8?B?SGFONWFFbDVIbHNIa2g3SXRPbE5mc2VZYUsyTzJ6ckliZTZFTVAyRTViQitO?=
 =?utf-8?B?YWFTb1hxZnZmT0pPalgvMW9nYnBpOUxtSUZvN0RwQ2laVnpHREcyRFhYVkZm?=
 =?utf-8?B?ZlZIY3FvRzFZVkR5dFkyQ3F3ZGxzSXdKOEZ3STU1UHc1WG43M3p2M0hUYmdt?=
 =?utf-8?B?LzBSY0xNcjFZR0JuMHhpTmh2K0JyeGRmZVlIaFdwZ2VuT3VscEtXeTh6QkNi?=
 =?utf-8?B?SnRCS0lXRmQ4TFZrWm5GQVc2cTljVXdXNGxoR2xDSWIzcVJQeFo3VHVVSE1i?=
 =?utf-8?B?cVFhTVpxVlpFVk44Qng3THl5c082N2lxTU1udHBid1hadEpHL2tBWlB2UWlo?=
 =?utf-8?B?UGhLM1FtSGNXbHNBbm1zSTF5N0U0SWtLUVEwamd3ejZVMnhjVVU2TFE5MWRO?=
 =?utf-8?B?a3BhN2NvejNUa2M1eStBbVRqZnRSSUhYTkhXc2hDeUxwM2t2cXdIZ0VZNlV0?=
 =?utf-8?B?M0JYbkRFaDZiTUZwNWRrV0RSdnI5Q1FCcWllZHZ6NXBWOGM2eTlQNlFLcHNU?=
 =?utf-8?B?SHUzYVAxSlBnSytOTHRnMXEvTmxZdWpMVWJlRVBKRVV5NFdQTnlUeHBLdFhQ?=
 =?utf-8?Q?iX2lqAfSyzYNNndc06u4Yz2UvuuL+kzOHWJ6rDFHIY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bfd8979-a58c-4d1f-68d4-08d9c4f1e449
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2021 02:22:24.7533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VvCI/XLSM9hU8K5c0tJrMJCTC9t7gI5ZZF0QFVpqUKSwL2fT+VC+ZsbzOepiThSyPY+3wg+9QH8ZPm3NhGNdoJLodJr4sPX0dOVrnY+3HB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 08/11] lib/store: Refactor
 common store code into helper function
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/20/2021 10:13, Zbigniew Kempczyński wrote:
> On Thu, Dec 16, 2021 at 02:40:21PM -0800, John Harrison wrote:
>> On 12/15/2021 23:46, Zbigniew Kempczyński wrote:
>>> On Mon, Dec 13, 2021 at 03:29:11PM -0800, John.C.Harrison@Intel.com wrote:
>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>
>>>> A lot of tests use almost identical code for creating a batch buffer
>>>> which does a single write to memory. This patch collects two such
>>>> instances into a common helper function. Unfortunately, the other
>>>> instances are all subtly different enough to make it not so trivial to
>>>> try to use the helper. It could be done but it is unclear if it is
>>>> worth the effort at this point. This patch proves the concept, if
>>>> people like it enough then it can be extended.
>>>>
>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>> ---
>>>>    lib/igt_store.c             | 114 ++++++++++++++++++++++++++++++++++++
>>>>    lib/igt_store.h             |  30 ++++++++++
>>>>    lib/meson.build             |   1 +
>>>>    tests/i915/gem_exec_fence.c |  77 ++----------------------
>>>>    tests/i915/i915_hangman.c   |  61 +------------------
>>>>    5 files changed, 152 insertions(+), 131 deletions(-)
>>>>    create mode 100644 lib/igt_store.c
>>>>    create mode 100644 lib/igt_store.h
>>>>
>>>> diff --git a/lib/igt_store.c b/lib/igt_store.c
>>>> new file mode 100644
>>>> index 000000000..6d9869b58
>>>> --- /dev/null
>>>> +++ b/lib/igt_store.c
>>>> @@ -0,0 +1,114 @@
>>>> +/*
>>>> + * Copyright © 2020 Intel Corporation
>>>> + *
>>>> + * Permission is hereby granted, free of charge, to any person obtaining a
>>>> + * copy of this software and associated documentation files (the "Software"),
>>>> + * to deal in the Software without restriction, including without limitation
>>>> + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>>>> + * and/or sell copies of the Software, and to permit persons to whom the
>>>> + * Software is furnished to do so, subject to the following conditions:
>>>> + *
>>>> + * The above copyright notice and this permission notice (including the next
>>>> + * paragraph) shall be included in all copies or substantial portions of the
>>>> + * Software.
>>>> + *
>>>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>>>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>>>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>>>> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>>>> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>>>> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>>>> + * IN THE SOFTWARE.
>>>> + *
>>>> + */
>>> Use SPDX. I like idea of extracting this.
>>>
>>>> +
>>>> +#include "i915/gem_create.h"
>>>> +#include "igt_core.h"
>>>> +#include "drmtest.h"
>>>> +#include "igt_store.h"
>>>> +#include "intel_chipset.h"
>>>> +#include "intel_reg.h"
>>>> +#include "ioctl_wrappers.h"
>>>> +#include "lib/intel_allocator.h"
>>>> +
>>>> +/**
>>>> + * SECTION:igt_store_word
>>>> + * @short_description: Library for writing a value to memory
>>>> + * @title: StoreWord
>>>> + * @include: igt.h
>>>> + *
>>>> + * A lot of igt testcases need some mechanism for writing a value to memory
>>>> + * as a test that a batch buffer has executed.
>>>> + *
>>>> + * NB: Requires master for STORE_DWORD on gen4/5.
>>>> + */
>>>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>> +		    const struct intel_execution_engine2 *e,
>>>> +		    int fence, uint32_t target_handle,
>>>> +		    uint64_t target_offset, uint32_t target_value)
>>>> +{
>>>> +	const int SCRATCH = 0;
>>>> +	const int BATCH = 1;
>>>> +	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>>>> +	struct drm_i915_gem_exec_object2 obj[2];
>>>> +	struct drm_i915_gem_relocation_entry reloc;
>>>> +	struct drm_i915_gem_execbuffer2 execbuf;
>>>> +	uint32_t batch[16], delta;
>>>> +	uint64_t bb_offset;
>>>> +	int i;
>>>> +
>>>> +	memset(&execbuf, 0, sizeof(execbuf));
>>>> +	execbuf.buffers_ptr = to_user_pointer(obj);
>>>> +	execbuf.buffer_count = ARRAY_SIZE(obj);
>>>> +	execbuf.flags = e->flags;
>>>> +	execbuf.rsvd1 = ctx->id;
>>>> +	if (fence != -1) {
>>>> +		execbuf.flags |= I915_EXEC_FENCE_IN;
>>>> +		execbuf.rsvd2 = fence;
>>>> +	}
>>>> +	if (gen < 6)
>>>> +		execbuf.flags |= I915_EXEC_SECURE;
>>>> +
>>>> +	memset(obj, 0, sizeof(obj));
>>>> +	obj[SCRATCH].handle = target_handle;
>>>> +
>>>> +	obj[BATCH].handle = gem_create(fd, 4096);
>>>> +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>> +	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>>>> +	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>>>> +	memset(&reloc, 0, sizeof(reloc));
>>>> +
>>>> +	i = 0;
>>>> +	delta = sizeof(uint32_t) * target_value;	/* why value not offset??? */
>>> I guess I know why there's problem here. target_offset is address in vm
>>> passed by the caller. This is regarding to some limitations of allocator
>>> infrastructure - for "reloc" pseudo-allocator you would get new offset
>>> (internally it returns offset and then add size for new "allocation").
>>> With this we don't need to wait for rebind offset for new execbuf.
>>> With "simple" allocator put will release offset so new allocation will
>>> reuse same offset. Ashutosh proposed how to join both functionalities
>>> (stepping as with reloc, stateful like in simple) but I got no time to
>>> code this.
>>>
>>> Regarding issue here, target_offset passed from the caller is to avoid
>>> rebind if get_offset() would be called for "reloc" allocator.
>>> So there's not real value offset within bo. I would add separate
>>> value_offset (shift) to allow caller to put place where it wants to
>>> write the value.
>> If you understand what is going on here and how to improve it then feel free
>> to either send me an updated version or post an extra patch after this is
>> merged. I don't get how any of the new reloc (or anti-reloc?) code is meant
>> to work. These patches were all written as part of the GuC support a long
>> time ago - before there was any such thing as an AHND (what does that stand
>> for?) or intel_ctx_t. All I'm doing in this patch is moving the existing
>> code to a helper and trying to make it generic enough to be used by another
>> test. And right now, the two tests are passing on both GuC and execlist
>> platforms for me. So the code can't be all that broken.
> I've added some missing parts to your code:
>
> https://patchwork.freedesktop.org/series/98242/
>
> If you think something is missing please add or fix.
>
> Previously value was used both for value and offset within bo
> used for example in gem_exec_fence@basic-await. I think adding
> separate arg for offset for value within bo makes this code
> more universal.
I don't follow. The purpose of the offset is the to say where the value 
is written within the buffer. As in 'target_offset' is 'offset into 
target buffer to write value'. You have added a 'value_offset' which 
surely would be defined as 'the offset at which to write the value in 
the target buffer'. I.e. exactly the same thing. What is the intention 
behind having two separate offset variables?

John.


>
> NB: ahnd is short version of allocator_handle
>
> --
> Zbigniew
>
>>
>>>
>>>> +	if (!ahnd) {
>>>> +		reloc.target_handle = obj[SCRATCH].handle;
>>>> +		reloc.presumed_offset = -1;
>>>> +		reloc.offset = sizeof(uint32_t) * (i + 1);
>>>> +		reloc.delta = delta;
>>>> +		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>> +		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>> +	} else {
>>>> +		obj[SCRATCH].offset = target_offset;
>>>> +		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>>>> +		obj[BATCH].offset = bb_offset;
>>>> +		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>>>> +	}
>>>> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>> +	if (gen >= 8) {
>>>> +		batch[++i] = target_offset + delta;
>>>> +		batch[++i] = target_offset >> 32;
>>> Probably I've added this in previous code, for being safe I would
>>> add (target_offset + delta) >> 32 for avoid risk passing invalid higher
>>> offset part on 32b boundary.
>> Pretty sure we don't have any addresses larger than 32 bits yet, but yes,
>> delta should be added in.
>>
>> Thanks,
>> John.
>>
>>>> +	} else if (gen >= 4) {
>>>> +		batch[++i] = 0;
>>>> +		batch[++i] = delta;
>>>> +		reloc.offset += sizeof(uint32_t);
>>>> +	} else {
>>>> +		batch[i]--;
>>>> +		batch[++i] = delta;
>>>> +	}
>>>> +	batch[++i] = target_value;
>>>> +	batch[++i] = MI_BATCH_BUFFER_END;
>>>> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>> +	gem_execbuf(fd, &execbuf);
>>>> +	gem_close(fd, obj[BATCH].handle);
>>>> +	put_offset(ahnd, obj[BATCH].handle);
>>>> +}
>>>> diff --git a/lib/igt_store.h b/lib/igt_store.h
>>>> new file mode 100644
>>>> index 000000000..4d5979e07
>>>> --- /dev/null
>>>> +++ b/lib/igt_store.h
>>>> @@ -0,0 +1,30 @@
>>>> +/*
>>>> + * Copyright © 2020 Intel Corporation
>>>> + *
>>>> + * Permission is hereby granted, free of charge, to any person obtaining a
>>>> + * copy of this software and associated documentation files (the "Software"),
>>>> + * to deal in the Software without restriction, including without limitation
>>>> + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>>>> + * and/or sell copies of the Software, and to permit persons to whom the
>>>> + * Software is furnished to do so, subject to the following conditions:
>>>> + *
>>>> + * The above copyright notice and this permission notice (including the next
>>>> + * paragraph) shall be included in all copies or substantial portions of the
>>>> + * Software.
>>>> + *
>>>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>>>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>>>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>>>> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>>>> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>>>> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>>>> + * IN THE SOFTWARE.
>>>> + *
>>>> + */
>>> Use SPDX and 2021.
>>>
>>> --
>>> Zbigniew
>>>
>>>> +
>>>> +#include "igt_gt.h"
>>>> +
>>>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>> +		    const struct intel_execution_engine2 *e,
>>>> +		    int fence, uint32_t target_handle,
>>>> +		    uint64_t target_offset, uint32_t target_value);
>>>> diff --git a/lib/meson.build b/lib/meson.build
>>>> index b9568a71b..3e43316d1 100644
>>>> --- a/lib/meson.build
>>>> +++ b/lib/meson.build
>>>> @@ -72,6 +72,7 @@ lib_sources = [
>>>>    	'igt_map.c',
>>>>    	'igt_pm.c',
>>>>    	'igt_dummyload.c',
>>>> +	'igt_store.c',
>>>>    	'uwildmat/uwildmat.c',
>>>>    	'igt_kmod.c',
>>>>    	'igt_panfrost.c',
>>>> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
>>>> index 9a6336ce9..c4091a454 100644
>>>> --- a/tests/i915/gem_exec_fence.c
>>>> +++ b/tests/i915/gem_exec_fence.c
>>>> @@ -28,6 +28,7 @@
>>>>    #include "i915/gem.h"
>>>>    #include "i915/gem_create.h"
>>>>    #include "igt.h"
>>>> +#include "igt_store.h"
>>>>    #include "igt_syncobj.h"
>>>>    #include "igt_sysfs.h"
>>>>    #include "igt_vgem.h"
>>>> @@ -57,74 +58,6 @@ struct sync_merge_data {
>>>>    #define   MI_SEMAPHORE_SAD_EQ_SDD       (4 << 12)
>>>>    #define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
>>>> -static void store(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>> -		  const struct intel_execution_engine2 *e,
>>>> -		  int fence, uint32_t target, uint64_t target_offset,
>>>> -		  unsigned offset_value)
>>>> -{
>>>> -	const int SCRATCH = 0;
>>>> -	const int BATCH = 1;
>>>> -	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>>>> -	struct drm_i915_gem_exec_object2 obj[2];
>>>> -	struct drm_i915_gem_relocation_entry reloc;
>>>> -	struct drm_i915_gem_execbuffer2 execbuf;
>>>> -	uint32_t batch[16], delta;
>>>> -	uint64_t bb_offset;
>>>> -	int i;
>>>> -
>>>> -	memset(&execbuf, 0, sizeof(execbuf));
>>>> -	execbuf.buffers_ptr = to_user_pointer(obj);
>>>> -	execbuf.buffer_count = 2;
>>>> -	execbuf.flags = e->flags | I915_EXEC_FENCE_IN;
>>>> -	execbuf.rsvd1 = ctx->id;
>>>> -	execbuf.rsvd2 = fence;
>>>> -	if (gen < 6)
>>>> -		execbuf.flags |= I915_EXEC_SECURE;
>>>> -
>>>> -	memset(obj, 0, sizeof(obj));
>>>> -	obj[SCRATCH].handle = target;
>>>> -
>>>> -	obj[BATCH].handle = gem_create(fd, 4096);
>>>> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>> -	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>>>> -	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>>>> -	memset(&reloc, 0, sizeof(reloc));
>>>> -
>>>> -	i = 0;
>>>> -	delta = sizeof(uint32_t) * offset_value;
>>>> -	if (!ahnd) {
>>>> -		reloc.target_handle = obj[SCRATCH].handle;
>>>> -		reloc.presumed_offset = -1;
>>>> -		reloc.offset = sizeof(uint32_t) * (i + 1);
>>>> -		reloc.delta = delta;
>>>> -		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>> -		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>> -	} else {
>>>> -		obj[SCRATCH].offset = target_offset;
>>>> -		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>>>> -		obj[BATCH].offset = bb_offset;
>>>> -		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>>>> -	}
>>>> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>> -	if (gen >= 8) {
>>>> -		batch[++i] = target_offset + delta;
>>>> -		batch[++i] = target_offset >> 32;
>>>> -	} else if (gen >= 4) {
>>>> -		batch[++i] = 0;
>>>> -		batch[++i] = delta;
>>>> -		reloc.offset += sizeof(uint32_t);
>>>> -	} else {
>>>> -		batch[i]--;
>>>> -		batch[++i] = delta;
>>>> -	}
>>>> -	batch[++i] = offset_value;
>>>> -	batch[++i] = MI_BATCH_BUFFER_END;
>>>> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>> -	gem_execbuf(fd, &execbuf);
>>>> -	gem_close(fd, obj[BATCH].handle);
>>>> -	put_offset(ahnd, obj[BATCH].handle);
>>>> -}
>>>> -
>>>>    static bool fence_busy(int fence)
>>>>    {
>>>>    	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
>>>> @@ -400,13 +333,13 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>>>>    			continue;
>>>>    		if (flags & NONBLOCK) {
>>>> -			store(fd, ahnd, ctx, e2, spin->out_fence,
>>>> -			      scratch, scratch_offset, i);
>>>> +			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>>>> +				       scratch, scratch_offset, i);
>>>>    		} else {
>>>>    			igt_fork(child, 1) {
>>>>    				ahnd = get_reloc_ahnd(fd, ctx->id);
>>>> -				store(fd, ahnd, ctx, e2, spin->out_fence,
>>>> -				      scratch, scratch_offset, i);
>>>> +				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>>>> +					       scratch, scratch_offset, i);
>>>>    				put_ahnd(ahnd);
>>>>    			}
>>>>    		}
>>>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>>>> index 20653b479..4cb9b8b85 100644
>>>> --- a/tests/i915/i915_hangman.c
>>>> +++ b/tests/i915/i915_hangman.c
>>>> @@ -36,6 +36,7 @@
>>>>    #include "i915/gem.h"
>>>>    #include "i915/gem_create.h"
>>>>    #include "igt.h"
>>>> +#include "igt_store.h"
>>>>    #include "igt_sysfs.h"
>>>>    #include "igt_debugfs.h"
>>>>    #include "sw_sync.h"
>>>> @@ -51,64 +52,6 @@ static int sysfs = -1;
>>>>    IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
>>>> -/* Requires master for STORE_DWORD on gen4/5 */
>>>> -static void store(int fd, const struct intel_execution_engine2 *e,
>>>> -		  int fence, uint32_t target, unsigned offset_value)
>>>> -{
>>>> -	const int SCRATCH = 0;
>>>> -	const int BATCH = 1;
>>>> -	const int gen = intel_gen(intel_get_drm_devid(fd));
>>>> -	struct drm_i915_gem_exec_object2 obj[2];
>>>> -	struct drm_i915_gem_relocation_entry reloc;
>>>> -	struct drm_i915_gem_execbuffer2 execbuf;
>>>> -	uint32_t batch[16];
>>>> -	int i;
>>>> -
>>>> -	memset(&execbuf, 0, sizeof(execbuf));
>>>> -	execbuf.buffers_ptr = to_user_pointer(obj);
>>>> -	execbuf.buffer_count = ARRAY_SIZE(obj);
>>>> -	execbuf.flags = e->flags;
>>>> -	if (fence != -1) {
>>>> -		execbuf.flags |= I915_EXEC_FENCE_IN;
>>>> -		execbuf.rsvd2 = fence;
>>>> -	}
>>>> -	if (gen < 6)
>>>> -		execbuf.flags |= I915_EXEC_SECURE;
>>>> -
>>>> -	memset(obj, 0, sizeof(obj));
>>>> -	obj[SCRATCH].handle = target;
>>>> -
>>>> -	obj[BATCH].handle = gem_create(fd, 4096);
>>>> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>> -	obj[BATCH].relocation_count = 1;
>>>> -	memset(&reloc, 0, sizeof(reloc));
>>>> -
>>>> -	i = 0;
>>>> -	reloc.target_handle = obj[SCRATCH].handle;
>>>> -	reloc.presumed_offset = -1;
>>>> -	reloc.offset = sizeof(uint32_t) * (i + 1);
>>>> -	reloc.delta = sizeof(uint32_t) * offset_value;
>>>> -	reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>> -	reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>> -	if (gen >= 8) {
>>>> -		batch[++i] = reloc.delta;
>>>> -		batch[++i] = 0;
>>>> -	} else if (gen >= 4) {
>>>> -		batch[++i] = 0;
>>>> -		batch[++i] = reloc.delta;
>>>> -		reloc.offset += sizeof(uint32_t);
>>>> -	} else {
>>>> -		batch[i]--;
>>>> -		batch[++i] = reloc.delta;
>>>> -	}
>>>> -	batch[++i] = offset_value;
>>>> -	batch[++i] = MI_BATCH_BUFFER_END;
>>>> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>> -	gem_execbuf(fd, &execbuf);
>>>> -	gem_close(fd, obj[BATCH].handle);
>>>> -}
>>>> -
>>>>    static void check_alive(void)
>>>>    {
>>>>    	const struct intel_execution_engine2 *engine;
>>>> @@ -138,7 +81,7 @@ static void check_alive(void)
>>>>    			continue;
>>>>    		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
>>>> -		store(fd, engine, -1, scratch, i + OFFSET_ALIVE);
>>>> +		igt_store_word(fd, ahnd, ctx, engine, -1, scratch, i + OFFSET_ALIVE, i + OFFSET_ALIVE);
>>>>    		i++;
>>>>    	}
>>>> -- 
>>>> 2.25.1
>>>>

