Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217137C8E1E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 22:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA17F10E034;
	Fri, 13 Oct 2023 20:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55E6A10E034
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 20:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697227547; x=1728763547;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IGph3iVNVQniybeen3+rzG5vyyvjGxfiWbbj9XPpups=;
 b=Lrr+9gEjonEY6n2W95AWCt5tPZ9ftQh3mhXS0f03KMf0CPl98UbxqPp3
 YyDIxD2ARGXqckCv0wLMrbkV8vsalA/eo7cOvDd9mGdWpw0sOp0qHoVXD
 PNJR4o4UvZQiXEDKDLV9SeyldWtCxx3sck46Lvdx8uDWfuTQEQettrrJc
 BMnluSE4DIeueMMp7Zqf/+Oy6SK2vfakAi8YWs7tbsT0QcyL7S0xviftJ
 cNnTSASwsHfV+xpETr3FiV/PHH3Vw1ej8VoZb2HluSCUdQn5LXt/6j9KJ
 qQqBa3h0y8nfX1BxHYNGoYLrqmKSzXwfhE2rryvyOMua8f1PmSLH1PGuF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="388106478"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="388106478"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 13:05:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="731481771"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="731481771"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 13:05:46 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 13:05:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 13:05:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 13:05:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=as/RKsfUR3NR29NC/dJjGo4avyl7w6fr2RJr/uzyuMKl3DglQkVUXQJV2mvP1LpbyLvm9REz3JP/Ucv+toUmaPXZSYMYR9jWu2spIVLHByZfrflgnXLmjYySvwLycv3RZpMCNmFsbzlSmsvgrC7XLZiLG0mFaGoZxBme9paZlDp6HBA1IOtURvETJglQrJI726EUuDTMh4kH0+Xpariq0GRnhr4Fb/F8asvffdt4PEjsCckOmsvSwrNfC1VhHKrQfhaU2cGV3EaQ91MCOwFRDMIg5AvgQuQXRG+LmTQBq/YlVmZ78cpJhLI3EVKIcDuNb1xSqHxjAXy4+N5pgO9Ktw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MbCe6sFqr7jKgENPFTjafN1YMsgny5QMD59Gl/GSlpE=;
 b=IBmwKWML7/Fd5kfW6qZawvZ4YlMmbdZlIU/+QyscpMwVCjm3Paz5SU7wVcC3xQjzldflH1CaSCJXXWJh1O6EEMM96uHDn2RA+FPzoJPQQksRHn3ewQ+d+JGczkpstpDP0h6Yy1hN2d+ry0LYLv9VHpcrObKy7ioxQH8n/ksvBpVv9vZ53vpbdk8q1wDFlb2kB54QflDMk5bLiDYvhrqE7+z++Ed7AKE+flQmKCVeohUhZNrzp0r06lR1XnZ3MPi/0w0NvTk7b6H5PoXXBu/SgXCn7lIgDt+IT7SoTzNWcdREbgIzt+4AJq+b6L7QndQkCHaeZXAZlXgh7VNR8CCN7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CY8PR11MB7106.namprd11.prod.outlook.com (2603:10b6:930:52::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.37; Fri, 13 Oct
 2023 20:05:44 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 20:05:44 +0000
Message-ID: <dccf5736-96e6-4356-bfbf-cb882436fa73@intel.com>
Date: Fri, 13 Oct 2023 13:05:41 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231013175218.2664309-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0097.namprd03.prod.outlook.com
 (2603:10b6:303:b7::12) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CY8PR11MB7106:EE_
X-MS-Office365-Filtering-Correlation-Id: 14f67758-afda-4f4e-e949-08dbcc27c81f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PSZQ+YRrtArl0Gemh01f1cBqBNqZeHZT8MlgSXs1vmT1In7WBFh5llqnhHzudSIcved0ADyPrRY0WzpWWZespzZOHAdSJI5IQr3BsNowxebE3Vl85px0KPsFSxRx43ije5MPFeJN9JJUl2GvXKLUjv1kFmJwmydR+RiSn+pzUmF0GvT+9GeGK80ncQ/m5KSMJLtuUZdK+bn2dL8sl3YWsCfvo+QSoyFBax/QLMdV2OiRZpaNmii66emf6NNsG40fMKgmw7p0DWS9nl+RGT4/NkH05BxnaCcIJM30KbCbeRfZOR0TT6doGZHDwqCSx+937QLm6EDMlGFzEtAL4gm4Nwb+vYdfcRpAsl1ja5SK63OpemTux65gLrO1erpgkvJWHpvw9uqw9dNuLLORdLW3LALdwLElf+qAUmmnX52S80l+BkC0Kmr8inf7DG9khSJXrfFmY1j98zaZkdj2LG4/2vJDRHEXDS0dG1CkpjUEz1nxt/UxBPYCS9Cze/BM4izG0Or7r80Kd44s/MpDZ84I4Xoy6zwEVL52AD9IwsWKYrT+g3EB1GUS4QV9iqDGA3k9rMzQUUhPxVdUKVBzagJRQXfmnE/r6mIxgZZDpDuMETEUIQ6dfhVVK+T6vBjuzxmf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(396003)(366004)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(6512007)(53546011)(2616005)(6506007)(41300700001)(316002)(478600001)(2906002)(8676002)(66556008)(6486002)(26005)(66946007)(83380400001)(5660300002)(966005)(4326008)(8936002)(31696002)(82960400001)(36756003)(66476007)(38100700002)(86362001)(6666004)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXJiczQ1eUFCczFHeURHbzFQaUpsNFRvbG5xNmlFWkcvYkVrQnhjMHZVb3Vw?=
 =?utf-8?B?YVIveEc5a2VDRGJGdjZDV1JidXJWZ0pCQ0lleDBNcE9OZFhJL2w4SGhEVmN6?=
 =?utf-8?B?cUpSTXJIdVNHOG5TajF6VWZVakNtajBlbXB4Wlk2aElEQzVnNkFrVmt4Y214?=
 =?utf-8?B?RjJjVjlTbHplZkVFZnNLL0ZlSlRQelluMDRCdkpkS25oNFdoRkIyZWgvK1NT?=
 =?utf-8?B?SjhrZHkySEJEekI0aGdEZGRkdWl5MHlETURPUUlXd3ZXeElvYXl3RDB6Znh2?=
 =?utf-8?B?dGJRN3RyUWdyWWl4OEMrOFh4eFdZYmlUTHUvQVZiRC9iQWxEVEJvSllXcmVk?=
 =?utf-8?B?QU1XaXdHcy9BOFAxc2hwOXZsVWlKUWVWZnpFZDc3UFNMVW0wTnkrSHNJYXFI?=
 =?utf-8?B?eE1ZZWVmU2hackZFN1c0eU5tSklaZC9kUVdmVUdZc1NCTHVDVktMSHJmYWlJ?=
 =?utf-8?B?blUxOWVwL1o5ZmluN0hRck1KWTN4ajhkYVhuUm9mcXlFc0kyWFNjUTZRZDF1?=
 =?utf-8?B?SFJFaEhWMTE2ZElHeUxxRmVKdkpFVW5KNFpyMFpzang1eFJCMTE2bDIvdENQ?=
 =?utf-8?B?Y244bHg0L3dNQkwvTGhJOFJxTDdnRnEvL3A3U2lNWmZHOVdFUVl4Y1JJMldk?=
 =?utf-8?B?NkJsMWxQQUlxNDcvVTBlN256emU5NWhtb1gwNHAyaXBvTVNwdkpkM3F4M1lZ?=
 =?utf-8?B?QUIzcHhlVDlQNHp6UXBjamdmb2xIa2t2UVh4Z2VMaE96TzMySTBUTkIySlhx?=
 =?utf-8?B?M251K09QODJ5VmdwTEIrRUVxUDVFTmt4TGxEdUt0OHR3VWZ1UmY4U0RsWUxh?=
 =?utf-8?B?NFh5WkdXUEtNM0xkQmgvT3d6NmhXOEUzZ1VZYzVEajRScklKUjVJU1ZlNUFE?=
 =?utf-8?B?Vm1aejlXRGhCTHYvK3ZpNjJ3cTdPK0xHQ0p3M3JKZENMN05OdUMxRSs1Q3pR?=
 =?utf-8?B?WHhrMHBlYmk4N0hLeGlHNjJTY3ZaV2NxZS9ZWWJGMFZsa05xL2RMZ2lBQXRV?=
 =?utf-8?B?am5tbzYzT3NVdkJVWEp5NkJoOGNiT3JLbnJoUFd1eTFFejNIVDVnYnlYQWZO?=
 =?utf-8?B?dXUyQ1lQUHpHUVBqT25YWTZWRE5xMjltVEZQUUs0SzU2MjBUTHdxN3NYQTl1?=
 =?utf-8?B?aHRSRmY2M1VFREFyTkRmUFI2aWYvQ0FERW04YlQrNGc4L0Rsclc4dU9UQXdk?=
 =?utf-8?B?YnA1QlRvQUhhV0ZHam1sZTdFVXB2bXkwZEZ2SXVYRzQwd3c2elJQNHpSUk5i?=
 =?utf-8?B?c0U2TFdEU3FwbExmTSs2NzE4a3ZhMmZFRGFZdEZxVXhDRmdLSWIvaFF6eDVs?=
 =?utf-8?B?YWlQaC9hZjFNUTc0SkVHOVh0NklRZUloM0JqNDY2WTE2MFJsbTM3L0E3Vlp3?=
 =?utf-8?B?LzhRSFVLMVM3Yjhxd09BblpLZ1hnb0NORXF5dkpqZGtEOFpiNFV1SldQYnhU?=
 =?utf-8?B?QXZ1QVlRYmpoK3dIM3FTeGc0azNrbVlZeFRqM1dkQ1hNQ01rbFNjU0xOUy9m?=
 =?utf-8?B?VlpvOEhwdWlnenRmY3dCWWlhaHZrcFc5RysxVjhoSGNuWXRONkwxRXpYc2xW?=
 =?utf-8?B?d25haU1sY1ZzSy94b1Z4cWVNWVhSUnVVaktCdGdwWjhDVUlDclpZNHFPSkN3?=
 =?utf-8?B?bW5iejBXWGw2cG9hNHNnYXhDOUcxTm1FMnhYQVR0YW50Y3VvUlAzbkUrY2do?=
 =?utf-8?B?Q2d5UDRSRzZnOGV6UUl6dUUzQkJXMmZURVB2NWpUQTg4UHJYMTl1dVBlTEF2?=
 =?utf-8?B?VWd0bm94akkrVUlMWUdibWkwUFlWd3VqUDhvMDY1WkptL2ZpenU3dUI4SlpM?=
 =?utf-8?B?UnBuNDJXQjRiWUMra1dyRmx3eE5iUjROUng1NC91UnZMdFU4U3JxeXFUVWZr?=
 =?utf-8?B?SkluNHhMMEVOM29nRy9vbXEzMlErVjRhNmpsT01Vc2U2NEF0eWVtV2pmWFg4?=
 =?utf-8?B?eEI5eXNDcWp1R253RjlSQ3ZxN2hyNTBDSEVUcW1zL21pazhUbWNVOG9jdm5P?=
 =?utf-8?B?ek9vcnNnNkUzN3E3c2k4WXFiK08zSldzL3RVcU1Jbm0rZXA4Y0kwVXdoNzJv?=
 =?utf-8?B?MjdRaTFYa0tWS2JjMWw3dkw2Q25jL0w2WXg1VjYvNDlCaURRcGg3NHk1dEYw?=
 =?utf-8?B?YVJrL0xSYXZNcnlWV2hJL2w5OFAwTzMwR25FOVhoZkZodlVIVktnVjA1a0dX?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14f67758-afda-4f4e-e949-08dbcc27c81f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 20:05:43.7659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O40+rBmio2ZYk3F2Mxb6YYlniYs45dvsc9AGVGg6Jh6wEswc4JF55GmCtwwbe4rP7gHiDdibL5ljHPc7eRNSQ5Yt4kgNuGRSqKXVGoo48VA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7106
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v14 0/7] drm/i915: Define and use GuC and
 CTB TLB invalidation routines
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 10/13/2023 10:52, Jonathan Cavitt wrote:
> Implement GuC-based TLB invalidations and use them on MTL.
>
> Some complexity in the implementation was introduced early on
> and will be required for range-based TLB invalidations.
> RFC: https://patchwork.freedesktop.org/series/124922/
>
> v2:
> - Add missing supporting patches.
>
> v3:
> - Split suspend/resume changes and multi-gt support into separate
>    patches.
> - Only perform GuC TLB invalidation functions when supported.
> - Move intel_guc_is_enabled check function to usage location.
> - Address comments.
>
> v4:
> - Change conditions for GuC-based tlb invalidation support
>    to a pci tag that's only active for MTL.
> - Address some FIXMEs and formatting issues.
> - Move suspend/resume changes to helper functions in intel_gt.h
> - Improve comment for ct_handle_event change.
> - Use cleaner if-else conditions.
> - Address comments.
>
> v5:
> - Reintroduce missing change to selftest msleep duration
> - Move suspend/resume loops from intel_gt.h to intel_tlb.c,
>    making them no longer static inlines.
> - Remove superfluous blocking and error checks.
> - Move ct_handle_event exception to general case in
>    ct_process_request.
> - Explain usage of xa_alloc_cyclic_irq.
> - Modify explanation of purpose of
>    OUTSTANDING_GUC_TIMEOUT_PERIOD macro.
> - Explain purpose of performing tlb invalidation twice in
>    intel_gt_tlb_resume_all.
>
> v6:
> - Add this cover letter.
> - Fix explanation of purpose of
>    OUTSTANDING_GUC_TIMEOUT_PERIOD macro again.
> - s/pci tags/pci flags
> - Enable GuC TLB Invalidations separately from adding the
>    flags to do so.
>
> v7:
> - Eliminate pci terminology from patches.
> - Order new device info flag correctly.
> - Run gen8_ggtt_invalidate in more cases, specifically when
>    GuC-based TLB invalidation is not supported.
> - Use intel_uncore_write_fw instead of intel_uncore_write
>    during guc_ggtt_invalidate.
> - Remove duplicate request message clear in ct_process_request.
> - Remove faulty tag from series.
>
> v8:
> - Simplify cover letter contents.
> - Fix miscellaneous formatting and typos.
> - Reorder device info flags and defines.
> - Reword commit message.
> - Rename TLB invalidation enums and functions.
> - Add comments explaining confusing points.
> - Add helper function getting expected delay of CT buffer.
> - Simplify intel_guc_tlb_invalidation_done by passing computed
>    values.
> - Remove helper functions for tlb suspend and resume.
> - Move tlb suspend and resume paths to uc.
> - Split suspend/resume and wedged into two patches.
> - Clarify purpose of sleep change in tlb selftest.
>
> v9:
> - Explain complexity of GuC TLB invalidations as required for
>    range-based TLB invalidations, which will be platformed later.
> - Fix CHECKPATCH issues.
> - Explain intel_guc_is_ready tlb invalidation skip in
>    intel_gt_invalidate_tlb_full.
> - Reword comment for unlocked xa_for_each loop in
>    intel_guc_submission_reset.
> - Report all errors in init_tlb_lookup.
> - Remove debug message from fini_tlb_lookup.
> - Use standardized interface for
>    intel_guc_tlb_invalidation_done
> - Remove spurious changes.
> - Move wake_up_all_tlb_invalidate on wedge to correct patch.
>
> v10:
> - Add lock to tlb_lookup on guc submission reset.
> - Add comment about why timeout increased from 10 ms to 20 ms
>    by default in gt_tlb selftest.
> - Remove spurious changes.
>
> v11:
> - Update CT size delay helper to be clearer.
> - Reorder some function declarations.
> - Clarify some comments.
> - Produce error message if attempting to free a busy wait
>    during fini_tlb_lookup.
> - Revert default sleep back to 10 ms.
> - Link to RFC.
>
> v12:
> - Add helper for checking if GuC TLB invalidation is
>    supported and guc is ready.
> - Prevent suspend/resume actions involving GuC TLB
>    invalidations if guc is not ready.
> - Add path for INTEL_GUC_ACTION_TLB_INVALIDATION_DONE
>    to immediately process in ct_process_request after
>    it is submitted to ct_handle_event.
>
> v13:
> - Readd error check in intel_guc_tlb_invalidation_done
>    for invalid length.
> - Remove intel_guc_is_ready requirement from
>    wake_up_all_tlb_invalidate.
> - Align patches 3 and 4 by adding a check for GuC
>    TLB invalidation support to the former that was
>    added in the latter.
>
> v14:
> - Readd intel_guc_is_ready requirement to
>    wake_up_all_tlb_invalidate.
Can you please use 're-add'. It took me some time to realise this wasn't 
a typo for 'read' or 'ready'.

> - Move wake_up_all_tlb_invalidate from
>    intel_guc_submission_reset to the end of
>    __uc_hw_init.
I can see that this change was done. But why? What was the problem with 
the previous version? How does this move fix it? Because an init 
specific function is not the correct place for reset specific code.

John.

