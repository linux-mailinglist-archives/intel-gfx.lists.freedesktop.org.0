Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D14367D5FA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 21:12:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0472910E031;
	Thu, 26 Jan 2023 20:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D7910E031
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jan 2023 20:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674763936; x=1706299936;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=BcrdaS+gfxuwd69/25sVzSBAfmHjJy+tMy0FqxZyjNA=;
 b=BEbVgSxccYMQTUiH+pMP0QFbrn/xjEGKq25KIATNdqUrtSQCgKHuT7us
 F5PbwcSwAH2EssjGkeo/obPtOXIa/PZezU6FfrOeyP86QuQTPZlcwfEva
 zZlPBxqtqDGU8ffl2uC7ZLwxsuLgO7XP8zLMmxQMpsUb7tbB2BBt19F6e
 sjgyhJeeUGi/RCGtr/x5CgA7BqwBamuV3+sRu3a92QTQJT1uuXJZuynDn
 AMz72Vr/+a8aDm3W5ZRrB8gAOb+HF5TqGzZq3mYk2kaJ/kDrmjGXsWPA7
 A263xMCmYIP4wT/8L9zSSvvnXpZ8Wrb5A7s1q0vuwdVtLUz9lprcGE7Hj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="306583747"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="306583747"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 12:12:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="786974192"
X-IronPort-AV: E=Sophos;i="5.97,249,1669104000"; d="scan'208";a="786974192"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 26 Jan 2023 12:12:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 26 Jan 2023 12:12:15 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 26 Jan 2023 12:12:15 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 26 Jan 2023 12:12:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IuhljT4NbAidTCayIzIiKE0ajsssSnsgKjqTcyQxuCzDNMH3YoKxC3Gkt71u4ijd5nEVnxnbsR4OUbyNmnp/ZfhLbaK/eK1WlijM1paGw/XSOpc+mrdJ05Po/tvrf/TdSdGulvr/Kf7OiRjqJgaR5yK+0mYbSHYqtds7Jq32L7KuxMSSYslJjn8e8HiYp4SIzVxGKZCc/bPjUNEOh2iOYjI2eH/6JcXLbP3v+GWrvMhbAjjpzbWdAmdjsQ47al5IghfhIPC2JWIjqTE7lLPk7GD2HPRGhwdioZkS7nQvLpdiWvlfG9Igre0ANEdajDkRFFA57+QfCEm+g57TnJ5cWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WMYYg5LkQLSCyLNgepoWQNpAR2dSRMk+o/Fkq0auhL0=;
 b=OuGZpr/6YzQrIFpkAII0Hp0C9ncPL0mz1vQ4QCx525RY5guLIhrE672Z2N3yo5NhFUFaY0H1kvFkXSU1DgKf3Kv3QId6DGXFedzC71ALNi+NUlDhO2cEQA8/YEwHjNp2Vsx1i7dRpJNqGiN6zhDZTqJk+dGE7mZVprlFThV6Ulziju8Mvvi8M70+UsshAK7kPBTqI6opdY7IWNU17C4AweRdTJ+2TsNJnDADQ5IKHrlX+deQ5xXMn8MRlZF2obgJy8Oxlu62GEwUW3dY03J5/NN0mCJnY1W/t9XQ3EXis4C3IuRyUynRgA9fEBNNFVejLRZ+qrJu1IZ2/eGuB5Fslw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA2PR11MB4777.namprd11.prod.outlook.com (2603:10b6:806:115::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Thu, 26 Jan
 2023 20:12:13 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::8b33:564a:21a2:cc8f%7]) with mapi id 15.20.6043.021; Thu, 26 Jan 2023
 20:12:13 +0000
Date: Thu, 26 Jan 2023 12:12:10 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y9LemhuhXAxowKU8@orsosgc001>
References: <20230124231111.1786429-1-umesh.nerlige.ramappa@intel.com>
 <167463063362.5513.7703985139136520095@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <167463063362.5513.7703985139136520095@emeril.freedesktop.org>
X-ClientProxiedBy: MW4P222CA0027.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::32) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA2PR11MB4777:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d80a2f5-7c4b-4a3a-dada-08daffd99c96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OUvIt6roQlT3SUxqowKiJ76WmhcXClkyUyYFaE/tNFH9Rn7rlLdxSKm4ajZKRK3FPka61RZyVVEDmO77QEAieHztfkxXt3I/Bib4e5bhgqavyrWPuLBRMavm/FIRPVDwufq6if9k8TpdNqN6emxh12Sp0MwkwfWSB59d2XHiWY63C0qDAPYD+WOV9VkxwMlxPQpkS/3en22GmHUo3k/rkJgQAXs1DgEIaDrmI88f0QAmJB/8es3xwo1xoVj808QKZdBS5avgDksJUg519nBlJQLVuJkwlKG/Ap7o9Tk65LkcLc6gQ9jEB6ycgR/rDZbihpO3Xad0oREcS272WwDzrPeVrh64SPcANS66k5PFFMpFQE8vXKkjark8RSvyJauNip9E2OLmDaxcrUEf4vbeY5HqcDqg0DNb2SwNUD/5xrdwuTCUPpW0pwGV9vJzxWUTQQQajmifr8/KIrZUFKmJWMpww4jjaQ508JF34ujgYVREcrEDB3oFi3QbYOZI29ZcKNZFi3WOX9RgEyfgDjaSoPoxtIBOp0NC8VaJFstIGQQCuoQ7I3S91pk8jNmwwIiCzX47AwtbI1GNC433isYcaX1QLrncwgZ3Q+eSMtY/PQsaf7NO9nabAYAhe7deugaWtX6VWMzB7pDI/1FtZLAuLvLL47SY7jiZRSlzUIS0gc0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199018)(6486002)(478600001)(9686003)(186003)(26005)(6512007)(966005)(33716001)(83380400001)(41300700001)(38100700002)(82960400001)(66556008)(6506007)(316002)(86362001)(5660300002)(8936002)(66946007)(6916009)(66476007)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T29qdXFsenpVRHU1RjJJY3lhYXdselBGeVo5aGE1bVFjZFgvbjNBcGQwVzBR?=
 =?utf-8?B?UmtxczcwYjhsY1B6SFljSzJNUCtxYzF5RHo3VlpMUmxLbDlMUHo2by8yRnFh?=
 =?utf-8?B?Y3J5aVJnNXhIYkE3Q21qL2Z1RnVYeWxveUxqbHNKL1ZPQ0tJYnl6T1FQQlVQ?=
 =?utf-8?B?RnFlR1VFU1djNGsrZGJGWnFrTEovR3RCU1o0cFpoR2JXc0FJZFF4WHRpUmI2?=
 =?utf-8?B?TnVpQmtXUWVaTHcyalVYU3I5WTIwdjBDa1AxUncxRVVxTE9lUHpyaDBjdGVi?=
 =?utf-8?B?eWwyTGtUc3FIMHRTMGovMVkyWVJqQ3dwSmdtOXlqckZEWkUxWjdNNDUwbEtO?=
 =?utf-8?B?Y1V4d3Y0Q3JSQnZtZGJZWVNHOGJKZ056ZC9ZWkhRdzFHUTd5OXlqZ0p5NG4w?=
 =?utf-8?B?UE5mY0hKSUJvZnlzSXplNTJRMFBMMFBoQVRJdmNNRkR1MXM2OFljQng5M3Ew?=
 =?utf-8?B?VW1pVkVTa2hUWWtrTjgrU1dpVWozK0Njc3l3UERvcFFkeklmSjZDc0VPYUVy?=
 =?utf-8?B?TlY2ZytPUFZJSVhqK3lTL2hHLzFCQzIwMllLWGNsWWQzQmZRUDhsSCthVVFt?=
 =?utf-8?B?U3NSVkVubnlxbzI0eW5HUUl4VFZKNDBsY3RWekQrcGJkTmFCWnRiMStOMWlE?=
 =?utf-8?B?QklvYmpheFdZZVhGS2RDOTN1RWZ4OXR3OG0yZjQ2cVdjVVRSWm52KzI1R2dN?=
 =?utf-8?B?cXVDRlhBMHJTUzJmUCtkd0R5Mk9kZ1RaODJFbVhacTFSRXdObitBdGxCeTdy?=
 =?utf-8?B?N0pKM0JkUzBEZGlIVkhQYzZpcUNscjlUaXdFZkFpbC96dFBpQUFqMU1HMGRU?=
 =?utf-8?B?TUZnb0NqYVU1WDY3RzBxcW1kOHZVRlNHSjF5VGhrVGlmN2d0MzVMU1dkSURB?=
 =?utf-8?B?NnRFNjBLbDhtRDZvR0JLVG53UURuL1NTNlJFL1dPRkRCWnRJcUR3aXUyL2da?=
 =?utf-8?B?QUlUaVRoYjUyVWJRYmJlajhLWXM1NkdVWFEwV25BRDhmWnp5eHdLVFRWcFEr?=
 =?utf-8?B?bTh0dEZCY2t3ZmRNZUllUXhZNHlMV1VWSHFlWWZNckNjcGFneW0yMDBHOFJN?=
 =?utf-8?B?Z1VoMEJtWlFVNlJEeG5Qb0JQSFZSVFZidmxPcit0OXo0eXIyWEpTTmFma3pI?=
 =?utf-8?B?SlRsM3RjUElKRUo0b0J0a1UzeU9HcUprT1hLMjBtUWFxVFpwOGZhT0ZYQ3Ey?=
 =?utf-8?B?Mk16Wm1MY2ZEallSakswajR3c0JmOXR2NC9DRmxRKzlXcW5ZOUt1ZWxLUFpP?=
 =?utf-8?B?VVErM3d1ZUV3K3duUkpKSzk0bitDZVpUZDI5R2ZYYU9TajNBRE0rc0krUmRo?=
 =?utf-8?B?UjUwMjMyTE04SjN5QllFem00ajNJNmZMWVFVRnpXaXk3QWFFNTBOQzJGOUxK?=
 =?utf-8?B?bDAwSUl5MVR4cXc2L1VMNjZ3MGZkd1RFa3NsZ2JvYmdpSTRleWl5bUJqNC9K?=
 =?utf-8?B?T2NKK1RTUlNicmp0VlUxYU9kT3ZMQ3RyVldlK1dFMlBZTm9lMHRaR1VhN2JM?=
 =?utf-8?B?c1k4TzhLWTc4dFl1a3FyMHJlQXNzaXpIUFNleGNyZEtaZ0JYaDNiL3g2T3Bx?=
 =?utf-8?B?YVRoemdKVEx6RmxPZXBZNVlBUlJ2QVlRMGFIZWZqeVdhVDlOOERPUmJpNzly?=
 =?utf-8?B?d3Z4cXdrZ3AraitDcDdGa25mQnNqZGZHa29vUURQNzNDR1NDRFN2cm5aNlpv?=
 =?utf-8?B?K3ZObE0yVnB1SG54d0pocHZ3MGZwZ2l5dkxYZlR4am5uRTd2OFBmZ2twMEVK?=
 =?utf-8?B?MTBXeTRhMnZmb1UzT1hFMnlWdGZmRlkwRk0weU5UVlRuZWdpTXpKZzYvYWJ4?=
 =?utf-8?B?VFpEbGVjZ0gybWJMOFIvYzhwOFJ6MVdjTHRTV0pMdUxWS1NnMVhuZE5HdWFP?=
 =?utf-8?B?S1prSEhJbDdMUG9WcE9TTDkzUW5idEQrQW5tVWQraGNLcEozSmxEdDNNR2Ev?=
 =?utf-8?B?anUwK3pOYzB0NURha05IQlZjemUyck1pUWoxS0xGNjF0NW55T0gwQTcxM29w?=
 =?utf-8?B?cnZrOW5pM0l1NlgzWmpMNEROejlkUFZhYnBHYjdsMEdnSVBRVlZYdUp5Mm1Q?=
 =?utf-8?B?bEFjVDAwM0l6eGFUWlVvcDIrZVZMcjA2cXhGYm4yWjhUU25pV2REelNKcVYz?=
 =?utf-8?B?NjJHa1VrVER5eVhkNVI1b1VzZmpGZ2RrR3RCS1RVbzdZV0dJSXJ1emJDb3Rq?=
 =?utf-8?Q?WSch4sGZBckItxmj33mQBwI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d80a2f5-7c4b-4a3a-dada-08daffd99c96
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2023 20:12:12.9277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uG8Zkv1CtFAvZLHh1zLvwiI1acMp2/6ijJaQX+qdTGxOKrJ53mnAwUQ8+eWEGizc1o5ch/E/bRoMeIbvWkqTrdG1TelJ0UtATk5ivv9FXEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4777
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Wa=5F22011802037=3A_don=27t_complain_about_missing?=
 =?utf-8?q?_regs_on_MTL?=
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

On Wed, Jan 25, 2023 at 07:10:33AM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/mtl: Wa_22011802037: don't complain about missing regs on MTL
>URL:     [1]https://patchwork.freedesktop.org/series/113293/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113293v1/index.html
>
>     CI Bug Log - changes from CI_DRM_12630_full -> Patchwork_113293v1_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_113293v1_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_113293v1_full, please notify your bug team to
>   allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>   External URL:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113293v1/index.html
>
>Participating hosts (13 -> 11)
>
>   Missing (2): pig-skl-6260u pig-kbl-iris
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_113293v1_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>
>          * shard-glk: [3]PASS -> [4]FAIL

Unrelated, since this patch is just dropping an error message, without 
any changes to code logic.

Umesh

>
>Known issues
