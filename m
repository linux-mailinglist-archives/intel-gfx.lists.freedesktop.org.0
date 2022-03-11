Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D07634D5AC1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 06:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B3110E2BB;
	Fri, 11 Mar 2022 05:46:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69FA10E2BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 05:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646977579; x=1678513579;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oe2q3v4gEuql6KajsJImgFO7G0SkDzeKftxy5+SjLwg=;
 b=SZCc7dC0B7WxCLDpd9SKiARi+BEAfUu3p6gPyym42qHuZBCp+dNLG4Rk
 vvSmU/wzOU1I/z/sa4CvFE/3sc8n3f+4JrFWbeFJJaY+TtFgooiTVFDVe
 9kQDH3asoCmirEBiIMB+O3ZZzTtcrfOnbKEnl73sNsK6fB4WyNtb6A+7A
 CRAvOhH4cwyazVHjHff6Dwa3bLmhGpUAwo7FA+KOYG1UR/BJh1x/HId4f
 3q4gWsU/KwfXnngMPRJIQT8QLz2OYJCq4ItpFsa/0A3lnVTFeQkP9KVRj
 CgQx2RD2lO2gAAKOrqdfIfg4WrPfnXgm8M0vB1zHKTN+RYUH0tMhY7Ikf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="235456757"
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="235456757"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 21:46:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,172,1643702400"; d="scan'208";a="644825517"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 10 Mar 2022 21:46:18 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 21:46:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Thu, 10 Mar 2022 21:46:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Thu, 10 Mar 2022 21:46:18 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 10 Mar 2022 21:46:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=leGd6Pu+dCDmCjkOl9ZJqaa45I/5ygeHJwnri7vzFkXpE/L1uZ1059ks829diF4iRhUtgVsDIFkty+tqoYiIPv6fTFPWJyu0r/ir/rhuMy1BPyP/r/zpzDhclD1pSH7CWK4WLluFiRw3WQ6L9+C5cvHYfjF19gHjtyNEXt/xvk89tNNsFXuz20ZD73i3yYmzmsGxV5t3xe3uO2/XQ6rLjW7mNw8DzwNlwEVc2kNYz2hdBhjcmH0QrjjPdwWFdj0JEy7kHLTTPqFEqoTUj0256XLmI8/rBMZLgnM9cKIamcd+xg3f2PmvUOYE2L3Q9xxtp2iM5E0nRa4PHixZTUl5CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vey77WOdkGZ6eBc0DlKqNULgJIu+XS7w/alsJLPaYD4=;
 b=MLsR9H55GfvXn7NCuuKplGX6OHtsAOQDwCv6kP0Pc/ZQ8SlkV3uglTgcYuo1wsxDUj3NtUY8tDWTda7dt2N5trCtDsdod89wre91bSvzft0m45XRQgY5X7eYhvmxN0PxQOaIn/K+Lv372WHFofCMSb2y14xZVtjo+zwsfiRDZ9NKGDAozNgg6oGwqd8IOluT/h63ERFirznsLDAa6eOIOPK5oBBOPP4sA5+d8ehP80+DRKqzIPthscfUegBjNJogX5BIubSMWwgjQB0J1eKJkaEtvU4k1ARPPvNAXW+xPhxBYdaxLliG6DBnHct3dpkbGOZAPxyu+4OYBnkQD252zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1563.namprd11.prod.outlook.com (2603:10b6:4:5::13) by
 SA1PR11MB5873.namprd11.prod.outlook.com (2603:10b6:806:228::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Fri, 11 Mar
 2022 05:46:15 +0000
Received: from DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890]) by DM5PR11MB1563.namprd11.prod.outlook.com
 ([fe80::8559:2882:703d:3890%11]) with mapi id 15.20.5061.022; Fri, 11 Mar
 2022 05:46:15 +0000
Message-ID: <a694e60c-4b3d-b608-c04d-748b4ad770bf@intel.com>
Date: Thu, 10 Mar 2022 21:46:12 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220311003140.508371-1-alan.previn.teres.alexis@intel.com>
 <20220311003140.508371-2-alan.previn.teres.alexis@intel.com>
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220311003140.508371-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0112.namprd07.prod.outlook.com
 (2603:10b6:510:4::27) To DM5PR11MB1563.namprd11.prod.outlook.com
 (2603:10b6:4:5::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bda18b1-9d49-496b-a05b-08da032274f8
X-MS-TrafficTypeDiagnostic: SA1PR11MB5873:EE_
X-Microsoft-Antispam-PRVS: <SA1PR11MB58739682CB23D2921D68279A8A0C9@SA1PR11MB5873.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rP3eDVLS49i7IVWvUvalL8xT+7iulZo6UR5IHt+s0Ujg04NJyDDvc8fySh9FssbzI0y9R2KqGLAMuSK/JmOkc9rZp0WPIGEc4VFrZkT+VmQHOxzan+e/05XVWRiCOONhzjYKrbYVzRk/VvkKEgKfgIVs6sSEZ26nK9PvBEgpnFWn0OJAonAHJifAxKfIbbxxVEdBreZLBDuDVGQzY9oO/u434rIq1F4Y88RM1oYdRPGhG6z9nSeiFQO2xfKG9ND2gpReaxjG/L4v52JhkGqP4RTVGUrn5jlT08XWG/YpZ2sehe8J1olP7kqmIGOSVgXsSBwNerNEtWmfVjwXBZH74zJI3jkKuTgdVccK2jkeKY1A3v0bAFr/rAZgbGpiV39xY88zVcmtYte+bwo2JUg6n55ctBZK8cLj+g6l6DZUeCqiDsE+yyEdOi3GnWh00DOOEeMHrciMJvGX/ZrNS8OaQJMHw1Z0mv5pmE6M/qn+ZyPcRIeD7cGEJ+FTTEZRGisLhPjpRGOIzf41LvYW9vZuZNHdRThkM2L2NGCiF17GFeS1j6NzeeKvskG0AjTZ38P8jIUx83IZbuGa4abNCQTHoLSL+8eNDFz3dJNWUA2sgcQWNyqpDnqc1xwbe+AIDCdGYK2viHlL2CvavqIWyP3Rzrplfjxs7rG+pfMfHrqfho5AJL3VkOPpVQz6mL73uy1KoXRP+qW5AJtVxQTTBJj2HBuXKpSDKRf3aq6rIfcsPCC4eDUL3XQ2uM0XmlVCpPnX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1563.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(107886003)(53546011)(36756003)(186003)(26005)(316002)(2616005)(6916009)(82960400001)(508600001)(6486002)(6506007)(6666004)(45080400002)(966005)(6512007)(38100700002)(31696002)(2906002)(4326008)(66946007)(8676002)(66476007)(66556008)(83380400001)(8936002)(31686004)(5660300002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTd0bGx6Y1kwejlZMlBBcThJZVc0UmRBVTRoUGQ4ZG1QdVhDM0RsTERSQXFW?=
 =?utf-8?B?NjNJaWlhS25wY2pBbDdxY0dhUXE1TEZoWnFEWUhwR1Z4WUI3ZitBaWxJNzBl?=
 =?utf-8?B?SXdwV2FCZzdEbzV1NU84N1pvZG1LQ0JXNW50L1ZFSmIya0NvbnBzTWNoVk12?=
 =?utf-8?B?aUtnNUpRK0RiK1VTc3Z5c1pVTmFlSnhrWVRjRUlKRVdHQ3VoNzhuZGpBeTZa?=
 =?utf-8?B?MzBjVzNaNGF2WEl6UDNiM0lYWEkvdWxLRXMxN1RYOFJPQS9zWDFnNFhJSzN4?=
 =?utf-8?B?Q2lOcmYrQWVoSGdrVFlXUEppUW9NS2ZWMjFEaFAvOXZTRTlpMS9IMEVoV2Nn?=
 =?utf-8?B?cnRFT0lDckNIVHplVVBCeEtDQUdKR0ZtRXVQemdVUXNwSHZWSzBMRlNQTyt2?=
 =?utf-8?B?cFdHTC9COXZrSmZOS29zMXRJRUdxUnBFajVGVDdNSXMvWW1nWVgxUHZ1Wjg3?=
 =?utf-8?B?VmZFRitXenRDaXcyclhBZExid0NlcjExWEN3Vk5IUzYvaGE5VFZrb0wzekNq?=
 =?utf-8?B?SFdFQ2ZTT0Z5MEw0aTVka2djVjRDY3Q5ZG9TcCtvSFFqTEVIRkNtbEJ5UXc0?=
 =?utf-8?B?TjlVc0lrN0J2RjZab0RCcnNCN3hHYVVOdjBIUVRvQmF2dVAvMGVsVnRLejZS?=
 =?utf-8?B?VGpCVDVud1d5NEowY1NuM1RvTmVKbEVDOTY5VVREUE84RTNYMlp2citQNFQ5?=
 =?utf-8?B?T0llYWlDZHhRdlVBdVpOZDhObkE1NHVDaTJkSzVKQjBUcldDa05uMkcvSmUv?=
 =?utf-8?B?eFlxbnkxNWhyanlXbDlhUmJoY2xLTTRRaUYydDVpakJSSTZsZWRYZm9nUFpH?=
 =?utf-8?B?NUw0cTlJbkhGZ21jRWYxbUJSbG4vNXBFM0hyMXJMNVR3Z3VWcE9nNWlmQnVD?=
 =?utf-8?B?UVdIL1A5QTVSaFp4VVBNenlBVUV0V0lvT3gyaytKbDgwVnhHTVVKazJLS3pz?=
 =?utf-8?B?eGt1bXo1OERtSmZGYW16R2N4dW5ZYktxQjZPY2pUSHFDRWJmWWR1QWZaRHJa?=
 =?utf-8?B?WEN6bFFQdG1pRXF0dHFuNDVYeGlNVGx5Rmk0SHJTLzZ3WjlwS05OSWd6NGJ3?=
 =?utf-8?B?WkU4UjNUK29YL0FJSzJ3cHFBQ3UrTkFhU2lXMjhZYTFJemQrVUJqUUdyN1Jm?=
 =?utf-8?B?TmJVZzVNVVpqWXh0UlI5aHFYOEhaYW9ISWVITlBsK0ZSUFA1TkVWSHhHeWo3?=
 =?utf-8?B?ajJZeDdSdE84VG1YSnVjaVRRSERlUWdJS1FtWmoyNmttb0pqYWNteU1ZN0Ex?=
 =?utf-8?B?K3IvNmluVjRjdlM2aU5iNDZVa3pPUWJ2T3FXMUpsWFgySXZPY2ZwTXNxck5v?=
 =?utf-8?B?d1dPUDVuSFdsRVRldzhkV2U3MlJvTTluWnp2Q0wvTk9FZ0ptYmkrTld6cXpw?=
 =?utf-8?B?U1lqRVNNdHNmTVhzUlN1UXJVRzlhZWNvOU1WVVczbFNKY2gySHJzQ2Zzekdy?=
 =?utf-8?B?V3hwY2lJMVdjV2czV3FLUjFTNDlyVmxIc1hra2dCUjNhcFNsVGR6d05UQTR4?=
 =?utf-8?B?MnkydThnWHlaemZWR0pGVjZZaDZvYkNoWjJ0MWIrOXF3Rldqb2N2RWlWVjdj?=
 =?utf-8?B?NCtWYUdUVzBqUC91dnczRWlxcW1LbytRMWNialNCUnUyOTVJUURaaFV2aHY1?=
 =?utf-8?B?RGRKNE1KQnpRa0N3clArazIrVVlHY3FNaXJNakFkenE3VkhNSm9hTEVFdnRk?=
 =?utf-8?B?c2xRRm8xT2FycUZMZVdJMVJoSjBCUWFNQnM0d0tYbW1vcGlyaVFLL1VycEJR?=
 =?utf-8?B?bHFHdE5nTEtKT2I1VklZYU9SUlZVMzAvYXJma3JYQUk0dHVNUFhHWEYxM0V1?=
 =?utf-8?B?ZVR2UjNPL1lDaXEvOTRnSTFnQVlYOStiMWlaU284c01pRks3WnM4U05VNjA1?=
 =?utf-8?B?SjJJalJkSGJIampZemFUWmJyWlZ1Ti8vVkt0ODF6eDE5VFhDYUNFQlZkMGZF?=
 =?utf-8?B?WE00SlRNai9RUFArbUJZZzJaZFp2UU9XNkZURElod2NTRVkyQlNvZHQ5Zjk5?=
 =?utf-8?Q?uO8Q/phIBWZlbQUlluYGKvS32ztux8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bda18b1-9d49-496b-a05b-08da032274f8
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1563.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2022 05:46:15.5225 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7x+DjbRlxfuNqayKfBjWV1D8YOI97Bkdu4cpEucnany9F+A9ZP/EQwnn0HrK17P++6A/54bx+mE7bkZSe+HZjSpYlz+eWWwRZNv6lst84bEUtb+sAnj4RPUE+5Q6lg3Q
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5873
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/reset: Fix error_state_read
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

Folks, rev'd to version 4 but patchworks generated a new series:

https://patchwork.freedesktop.org/series/101256/  (BAT passed and all).

John, hoping for an RVB on that newer URL and your help to merge if its 
good.

...alan


On 3/10/2022 4:31 PM, Alan Previn wrote:
> Fix our pointer offset usage in error_state_read
> when there is no i915_gpu_coredump but buf offset
> is non-zero.
>
> Fixes: 0e39037b3165 ("drm/i915: Cache the error string")
>
> This fixes a kernel page fault can happen when
> multiple tests are running concurrently in a loop
> and one is producing engine resets and consuming
> the i915 error_state dump while the other is
> forcing full GT resets. (takes a while to trigger).
>
> The dmesg call trace:
>
> [ 5590.803000] BUG: unable to handle page fault for address:
>                 ffffffffa0b0e000
> [ 5590.803009] #PF: supervisor read access in kernel mode
> [ 5590.803013] #PF: error_code(0x0000) - not-present page
> [ 5590.803016] PGD 5814067 P4D 5814067 PUD 5815063 PMD 109de4067
>                 PTE 0
> [ 5590.803022] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [ 5590.803026] CPU: 5 PID: 13656 Comm: i915_hangman Tainted: G U
>                      5.17.0-rc5-ups69-guc-err-capt-rev6+ #136
> [ 5590.803033] Hardware name: Intel Corporation Alder Lake Client
>                      Platform/AlderLake-M LP4x RVP, BIOS ADLPFWI1.R00.
>                      3031.A02.2201171222	01/17/2022
> [ 5590.803039] RIP: 0010:memcpy_erms+0x6/0x10
> [ 5590.803045] Code: fe ff ff cc eb 1e 0f 1f 00 48 89 f8 48 89 d1
>                       48 c1 e9 03 83 e2 07 f3 48 a5 89 d1 f3 a4 c3
>                       66 0f 1f 44 00 00 48 89 f8 48 89 d1 <f3> a4
>                       c3 0f 1f 80 00 00 00 00 48 89 f8 48 83 fa 20
>                       72 7e 40 38 fe
> [ 5590.803054] RSP: 0018:ffffc90003a8fdf0 EFLAGS: 00010282
> [ 5590.803057] RAX: ffff888107ee9000 RBX: ffff888108cb1a00
>                 RCX: 0000000000000f8f
> [ 5590.803061] RDX: 0000000000001000 RSI: ffffffffa0b0e000
>                 RDI: ffff888107ee9071
> [ 5590.803065] RBP: 0000000000000000 R08: 0000000000000001
>                 R09: 0000000000000001
> [ 5590.803069] R10: 0000000000000001 R11: 0000000000000002
>                 R12: 0000000000000019
> [ 5590.803073] R13: 0000000000174fff R14: 0000000000001000
>                 R15: ffff888107ee9000
> [ 5590.803077] FS: 00007f62a99bee80(0000) GS:ffff88849f880000(0000)
>                 knlGS:0000000000000000
> [ 5590.803082] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 5590.803085] CR2: ffffffffa0b0e000 CR3: 000000010a1a8004
>                 CR4: 0000000000770ee0
> [ 5590.803089] PKRU: 55555554
> [ 5590.803091] Call Trace:
> [ 5590.803093] <TASK>
> [ 5590.803096] error_state_read+0xa1/0xd0 [i915]
> [ 5590.803175] kernfs_fop_read_iter+0xb2/0x1b0
> [ 5590.803180] new_sync_read+0x116/0x1a0
> [ 5590.803185] vfs_read+0x114/0x1b0
> [ 5590.803189] ksys_read+0x63/0xe0
> [ 5590.803193] do_syscall_64+0x38/0xc0
> [ 5590.803197] entry_SYSCALL_64_after_hwframe+0x44/0xae
> [ 5590.803201] RIP: 0033:0x7f62aaea5912
> [ 5590.803204] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 5a b9 0c 00 e8 05
>                       19 02 00 0f 1f 44 00 00 f3 0f 1e fa 64 8b 04 25
>                       18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0 ff
>                       ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
> [ 5590.803213] RSP: 002b:00007fff5b659ae8 EFLAGS: 00000246
>                 ORIG_RAX: 0000000000000000
> [ 5590.803218] RAX: ffffffffffffffda RBX: 0000000000100000
>                 RCX: 00007f62aaea5912
> [ 5590.803221] RDX: 000000000008b000 RSI: 00007f62a8c4000f
>                 RDI: 0000000000000006
> [ 5590.803225] RBP: 00007f62a8bcb00f R08: 0000000000200010
>                 R09: 0000000000101000
> [ 5590.803229] R10: 0000000000000001 R11: 0000000000000246
>                 R12: 0000000000000006
> [ 5590.803233] R13: 0000000000075000 R14: 00007f62a8acb010
>                 R15: 0000000000200000
> [ 5590.803238] </TASK>
> [ 5590.803240] Modules linked in: i915 ttm drm_buddy drm_dp_helper
>                          drm_kms_helper syscopyarea sysfillrect sysimgblt
>                          fb_sys_fops prime_numbers nfnetlink br_netfilter
>                          overlay mei_pxp mei_hdcp x86_pkg_temp_thermal
>                          coretemp kvm_intel snd_hda_codec_hdmi snd_hda_intel
>                          snd_intel_dspcfg snd_hda_codec snd_hwdep
>                          snd_hda_core snd_pcm mei_me mei fuse ip_tables
>                          x_tables crct10dif_pclmul e1000e crc32_pclmul ptp
>                          i2c_i801 ghash_clmulni_intel i2c_smbus pps_core
>                          [last unloa ded: ttm]
> [ 5590.803277] CR2: ffffffffa0b0e000
> [ 5590.803280] ---[ end trace 0000000000000000 ]---
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_sysfs.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index a4d1759375b9..c40e51298066 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -432,7 +432,7 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
>   	struct device *kdev = kobj_to_dev(kobj);
>   	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
>   	struct i915_gpu_coredump *gpu;
> -	ssize_t ret;
> +	ssize_t ret = 0;
>   
>   	gpu = i915_first_error_state(i915);
>   	if (IS_ERR(gpu)) {
> @@ -444,8 +444,10 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
>   		const char *str = "No error state collected\n";
>   		size_t len = strlen(str);
>   
> -		ret = min_t(size_t, count, len - off);
> -		memcpy(buf, str + off, ret);
> +		if (off < len) {
> +			ret = min_t(size_t, count, len - off);
> +			memcpy(buf, str + off, ret);
> +		}
>   	}
>   
>   	return ret;
