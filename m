Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C527BDAEB
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:12:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F80F10E259;
	Mon,  9 Oct 2023 12:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D45C10E259
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 12:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696853571; x=1728389571;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=b57NIhnQDSeLWNtHDv3vP3ZJKXOF5De5S4a77loln8s=;
 b=h/5gZGom9IjsAnmu37Qsn1aSQ5nGX4Tyne3+T0d/n0GJYAx+QtiSBmD6
 s1NLAFC4Eb9fK8RxGKmNnWb3vVVJHuOTiI4V/bi9ys0keCdVl5+BglwCR
 TbL8DRKzEqHRzZEi0tfPPJC0d+CHi+z5inyLs68rIUbB8c0Rttux5zJo3
 ltSbtt+3oOTk8sB92dhvZ/cOiVlz9P+WOjV0i5fJhdjtVq+nkbp/4UQXI
 xCmIBBmrUn0Bg31E05Y9+nVYthezPC3RTdUFqYQ1bUDsP60u1GsSAY/wS
 cD7UMdYSpxFrgra0Yoa+48JTHD47eJyUpkNzZvav9B1+Pse6iuG+psqk5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="381391224"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; 
 d="scan'208,217";a="381391224"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 05:12:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="752999825"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; 
 d="scan'208,217";a="752999825"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 05:12:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 05:12:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 05:12:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 05:12:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 05:12:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DYM2DEc2jCS8Jcd8yYRPyGCTz2fZEjvHHIbhJFzb0x4t6QdQD4KeYyHcfVgA+E75YhvS4Q3BpjLmm2zG7xREFdK91DSjNWbRraHYLjxeaUDWJmLHg/44clxxWTE+afbBYfjiEm4oBSSXK93q106vPVDEnGKxDEYeDLwtZzQBu1PE8CNlaYUG/8FIvzpF2m15gys9Coj0tHe8wEByn8QpS49JplzoIh6SylOKuaJ1gx48MgG93dVRGhyc6P9NbKgq3VApU5nOpq4bIt9RBOGAbSDZC1Csa9INJTxXXIZ4v4AWIKiBT2VN7wXhp3grFgApeIxvNk3WFI8NTvVn7FzEQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yC8xSHApTIFlqLYzfnEL5dr39XFcEGxebvYVMMxpbNM=;
 b=ZfyjDGkmeKpqPHN2msWBReGeerixB/aU5R1G4tJnZKMhvnhKsd8Gt9tjC5DmBUfrJTQWU+m3ekkI3XpWlnIKaiCEGme8ak/rqJ4jJZw3Z5OZOBICFme/fFtsiumrb3rsqxQqKTwNXiIKvhfug2McwFL1cq8vdra5z6y98MvwlS4hVwe6a8YZ4NEZuKKcpMFZIMav9sYl2VHQGFVsq+KIdNlx/DcVzH6LnT4BbA2M+o5ASemzvEU+ijycDdCZgHvahpMTHmkDegi+IpekTPpjPmpon5Q+uSJvGku0m1HevSXpdDO/Cs3pqIJDzv+I/VWOhUL6QPhvsnYY8PnZRnCMjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by DS7PR11MB6296.namprd11.prod.outlook.com (2603:10b6:8:94::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.43; Mon, 9 Oct
 2023 12:12:10 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 12:12:10 +0000
Content-Type: multipart/alternative;
 boundary="------------wxSWGSaPODhYPTZtWZEFpwqK"
Message-ID: <cfd08985-8fe5-1601-6cf4-92a29a111f8e@intel.com>
Date: Mon, 9 Oct 2023 14:12:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
 <20231006182051.1599923-4-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231006182051.1599923-4-jonathan.cavitt@intel.com>
X-ClientProxiedBy: FR3P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a1::12) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|DS7PR11MB6296:EE_
X-MS-Office365-Filtering-Correlation-Id: c4c0a13b-1484-4c81-4e13-08dbc8c0f6d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sjZIBqarKIlBF/TG7YEMz/ci3yuHMUlvSpMPiZLZ9/hBpF0lEAclMtB2zDVs3A6GpTvYOOPr4m2rumajYvAGMCOL9rQy9ODr2D6pvprYDNZiOKsAv9M9+UdvbLcOIKrhR4ZS+6pGYBHuD/VPWcCbOXS2JhQ8iAGFQeaMrqaCyGeWuC2g3VyEbrTZDe7ZVdo2+69RLVp0OKVafqi3qKHLljuIdoMXSltF8NJTEtL52QVX1h4xpvM8p0HNUFGMJmzBh/5LXMBYWELy7iqnnZJZdJ05w+Lz0IdBopBV+0nmSPT8PR8yDf6H4tVdkGaXACh7rp2rqgmtDr7dgxeXOhXfuYhwPCKOKZ6GpmVF4vt60rxunaK6xNBB9SBbXxE2ZiyflUI9F5V6mdna80smhW1rXAC1dhtSZaWrW1OrnOB5O6aGOLo+rz/Fo3rxEbomeIjIZ4oivoh0YdfBUXt7x9/MZwayG7FpieJa1bdOnjRVcJmiiuOQM27vCwru/ywIDYuq8LjR4nVIzAOxVVeazVm6JrHvRnac+psgGzFK8JCOrLemFqUULlkIMZkaQmrpOXx/TEfNJuecOAFVEjQlhFHsIU/WpLJcpk2PYm5D8e/cEBHOGRuIwN7y4oyEx7IBySEp+qKELWavqsYQ2EvN1E7OfA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39860400002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(31696002)(38100700002)(86362001)(82960400001)(36756003)(31686004)(2906002)(6512007)(478600001)(966005)(30864003)(6486002)(8936002)(44832011)(41300700001)(4326008)(5660300002)(53546011)(6506007)(33964004)(8676002)(83380400001)(2616005)(6666004)(66556008)(66476007)(316002)(66946007)(26005)(166002)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bzBXMzRuNnhyaFlrLzg0Vmh1MXcySjNmYWlFUFNGNjd0VEFFYWRpRXJBRmI0?=
 =?utf-8?B?SEd1MkdqRjdqVVVpSE9OTE80VG1XOTNyTDdPQ3Z0RE94clB3YVF0enlFWHdB?=
 =?utf-8?B?TXdZeGJpTVBtNGhJbEtuQTJZclVaMFc3MGxOMG1WZEJwV2tRV2hlY2p0ZnNX?=
 =?utf-8?B?aWdpeUhpS1J2Nkw4M2dUNzFqUTRFYjMxYTZxeVBmQlBKQng2Q2pVbjlVbjkr?=
 =?utf-8?B?K1BsVXpicEJiNlN3M1I1MVlFU0NXSUhuVTB6eDMzRWhnN2JJV2RaOWx5dnM5?=
 =?utf-8?B?a2JuT3BlaHg5VU12a29jOTk0YnZJalV1OEVueG91d1JQN2REbVMrM1V3RjdP?=
 =?utf-8?B?dllqZ0c2WnFXWFpCZHhIeEhsWlZyM21NelY1Q2dNbktQZVc1WmlHUHVXL2FT?=
 =?utf-8?B?RFRFT1hQNVFXdDllNkJWRmVBYnJLSnh1N2ZPMjk2Z3RMWjBHVFhzYjhHbEtW?=
 =?utf-8?B?WlNQWFZsNVJibmZObStXSllDZGZORHB0Zi9zK1ZvVmtlUDFScWc3ZVRXNEtP?=
 =?utf-8?B?eFM3R3dGbWJIbmRSNHhIeG9FMzdFRHZDTlo2TmtqZDQyN0ljWGg0MUFUTHZN?=
 =?utf-8?B?YUJQOXFwRkNyTE10dWFYdDZ5WWJuZnV1c3hvZWFTaTBHK1FMYnM5OHBaQ2VC?=
 =?utf-8?B?ZVhEc1FZOEd2VEZpUENLOGt6Ylo3clZsQUIrRmJUOTE1UWYxczI3T3lkV3Jy?=
 =?utf-8?B?TTE3M3ZnOVJTU25GdkE0ZGZBQ2ppZTU1OHArLzVYUjMxRlRRaXFCdG5CTXJy?=
 =?utf-8?B?V21MTzdWdWhZN1VXRk15d09oMzdWc2JMNXRlNm1SamZNWmdDQkdub3JZQjdw?=
 =?utf-8?B?bXVUUmV4aDdZUmc5YUsrQUtMNlRXU3UxcTRUVkZRSk1OV2pNVzRZQmlwYXRy?=
 =?utf-8?B?b20vUFp3SzlHVHErbDh5VTQvdHVXVitMMjBSVkw1M0JwM0tZbUFqMG05VHZx?=
 =?utf-8?B?YXNnazQrT2dZbkNQaTNvalVQZlcxY1BTYjVMbVgzT0IvMWFCRVFKV2N6Zm9S?=
 =?utf-8?B?SDhuSXZVbU4wR0pMczU3RWdUVUExSGxUQkJFN2I0d3RnSkNjMTNlaW9qLzZG?=
 =?utf-8?B?UU5FWTJRVE5vZ250QzVsR2EwYVdwdG54Yjd2UnFmaHE3NTJIWHlEVEVMRkNG?=
 =?utf-8?B?SWxYbUhSYitqT1MwY2lEbytFZktETGFOSG1uM2MrYU93TngrQ1BSdVMyQjNj?=
 =?utf-8?B?UXZ5L2l0cWNwL2VjU2psam5yZnVCQndiSVRJczB0c05SS2VhUVJxNnZFTWJv?=
 =?utf-8?B?WnpFblhFYWUyeE1TNG1VTXdNMVFKOW5xQ1drOHYrbHMxck1KeDBra1Ura2Vq?=
 =?utf-8?B?V1gvYm5hU0hZdHlEVmlqM3YyNjBJZkIvNlI2SlUvODV6aDdBWHFNY3lUaUpX?=
 =?utf-8?B?blRvb2cwQVBnNFN3bEhKMm1CL202UWpxUUxZQkJSTG83dGttVkRQdHh4bmZt?=
 =?utf-8?B?ZW5uWlgrcHZDMHplOUVRejlaekdpVERrWTI0M24vZnYyZGtoQ0N3Yk1HMkg0?=
 =?utf-8?B?WVlQM0VBa1A3Z3pGWm1xU0daTUxERkxPUWZzSkpubThLbGVXdmRtNnpDOFhs?=
 =?utf-8?B?OXRwZHpGcHc0bVF3SjFvK2Z4NjRVWXQrK0kwSy9Tc0x1bTZlbDhCVmphODZy?=
 =?utf-8?B?UkdmVGExMHpLZW10K0JmNms2Sy9PbEtFN2gvc1E5WkVOenNDT0ltbnMwcGdB?=
 =?utf-8?B?T3RrT1RXR1cxNmdtUVdZbHRLUFkvMjlvN2xETURRQlJ1MndObTRoWXM5QU52?=
 =?utf-8?B?Ry9lNUNGS2ptUFB6UzVjSVVsdmM0TWZtUFR3WWJoeE00eExwM3RjTWE0bWRB?=
 =?utf-8?B?R2N1T3RGa2IrS0o0R0thd3QvU2dnVVE5RjZkL01hOXB5elY0ZnpZcCtqRElx?=
 =?utf-8?B?eTdjL29oZkJ5eDFGaHpSYmhUY1A5bklhSU5RVTg0L3k0aVI0Zm5ldWo5WlB6?=
 =?utf-8?B?ZU9VMlNBYlJBSW1zSnZPenkrVkF1M05hSlhtYzZIUDg0cG9xTGdFSVJQSFFn?=
 =?utf-8?B?NjI0OEZOTkduREdSazFicEE2MUFrMVZXNjJHeHE3UWw2cjlGRkZ6OEJ1UlVG?=
 =?utf-8?B?cFBMOFlTemdzTzFLNzlKdWZMQy8vaTQzMzhCbU92YVVadVVNcXlIcGp3ampM?=
 =?utf-8?Q?aK8LK2jqozlMuijupmp3zpEL1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c4c0a13b-1484-4c81-4e13-08dbc8c0f6d3
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 12:12:10.5449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UTR4AnDgYeKwdFuoJDGkbS0EHtGXeUA3jEzBHcQmRfVELH8qNWf/WxiZmvy+9LgAPBrdarum7cADDtlCnfjgLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6296
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 3/7] drm/i915: Define and use GuC and CTB
 TLB invalidation routines
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------wxSWGSaPODhYPTZtWZEFpwqK
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 10/6/2023 8:20 PM, Jonathan Cavitt wrote:
> From: Prathap Kumar Valsan<prathap.kumar.valsan@intel.com>
>
> The GuC firmware had defined the interface for Translation Look-Aside
> Buffer (TLB) invalidation.  We should use this interface when
> invalidating the engine and GuC TLBs.
> Add additional functionality to intel_gt_invalidate_tlb, invalidating
> the GuC TLBs and falling back to GT invalidation when the GuC is
> disabled.
> The invalidation is done by sending a request directly to the GuC
> tlb_lookup that invalidates the table.  The invalidation is submitted as
> a wait request and is performed in the CT event handler.  This means we
> cannot perform this TLB invalidation path if the CT is not enabled.
> If the request isn't fulfilled in two seconds, this would constitute
> an error in the invalidation as that would constitute either a lost
> request or a severe GuC overload.
>
> With this new invalidation routine, we can perform GuC-based GGTT
> invalidations.  GuC-based GGTT invalidation is incompatible with
> MMIO invalidation so we should not perform MMIO invalidation when
> GuC-based GGTT invalidation is expected.
>
> Purpose of xarray:
> The tlb_lookup table is allocated as an xarray because the set of
> pending TLB invalidations may have no upper bound.  The consequence of
> this is that all actions interfacing with this table need to use the
> xarray functions, such as xa_alloc_cyclic_irq for array insertion.
>
> Purpose of must_wait_woken:
> Our wait for the G2H ack for the completion of a TLB invalidation is
> mandatory; we must wait for the HW to confirm that the physical
> addresses are no longer accessible before we return those to the system.
>
> On switching to using the wait_woken() convenience routine, we
> introduced ourselves to an issue where wait_woken() may complete early
> under a kthread that is stopped. Since we send a TLB invalidation when
> we try to release pages from the shrinker, we can be called from any
> process; including kthreads.
>
> Using wait_woken() from any process context causes another issue. The
> use of is_kthread_should_stop() assumes that any task with PF_KTHREAD
> set was made by kthread_create() and has called set_kthread_struct().
> This is not true for the raw kernel_thread():
>
> BUG: kernel NULL pointer dereference, address: 0000000000000000
> [ 3089.759660] Call Trace:
> [ 3089.762110]  wait_woken+0x4f/0x80
> [ 3089.765496]  guc_send_invalidate_tlb+0x1fe/0x310 [i915]
> [ 3089.770725]  ? syscall_return_via_sysret+0xf/0x7f
> [ 3089.775426]  ? do_wait_intr_irq+0xb0/0xb0
> [ 3089.779430]  ? __switch_to_asm+0x40/0x70
> [ 3089.783349]  ? __switch_to_asm+0x34/0x70
> [ 3089.787273]  ? __switch_to+0x7a/0x3e0
> [ 3089.790930]  ? __switch_to_asm+0x34/0x70
> [ 3089.794883]  intel_guc_invalidate_tlb_full+0x92/0xa0 [i915]
> [ 3089.800487]  intel_invalidate_tlb_full+0x94/0x190 [i915]
> [ 3089.805824]  intel_invalidate_tlb_full_sync+0x1b/0x30 [i915]
> [ 3089.811508]  __i915_gem_object_unset_pages+0x138/0x150 [i915]
> [ 3089.817279]  __i915_gem_object_put_pages+0x25/0x90 [i915]
> [ 3089.822706]  i915_gem_shrink+0x532/0x7e0 [i915]
> [ 3089.827264]  i915_gem_shrinker_scan+0x3d/0xd0 [i915]
> [ 3089.832230]  do_shrink_slab+0x12c/0x2a0
> [ 3089.836065]  shrink_slab+0xad/0x2b0
> [ 3089.839550]  shrink_node+0xcc/0x410
> [ 3089.843035]  do_try_to_free_pages+0xc6/0x380
> [ 3089.847306]  try_to_free_pages+0xec/0x1c0
> [ 3089.851312]  __alloc_pages_slowpath+0x3ad/0xd10
> [ 3089.855845]  ? update_sd_lb_stats+0x636/0x710
> [ 3089.860204]  __alloc_pages_nodemask+0x2d5/0x310
> [ 3089.864737]  new_slab+0x265/0xa80
> [ 3089.868053]  ___slab_alloc+0y_to_free_pages+0xec/0x1c0
> [ 3089.871798]  ? copy_process+0x1e5/0x1a00
> [ 3089.875717]  ? load_balance+0x165/0xb20
> [ 3089.879555]  __slab_alloc+0x1c/0x30
> [ 3089.883047]  kmem_cache_alloc_node+0x9f/0x240
> [ 3089.887397]  ? copy_process+0x1e5/0x1a00
> [ 3089.891314]  copy_process+0x1e5/0x1a00
> [ 3089.895058]  ? __switch_to_asm+0x40/0x70
> [ 3089.879555]  __slab_alloc+0x1c/0x30
> [ 3089.883047]  kmem_cache_alloc_node+0x9f/0x240
> [ 3089.887397]  ? copy_process+0x1e5/0x1a00
> [ 3089.891314]  copy_process+0x1e5/0x1a00
> [ 3089.895058]  ? __switch_to_asm+0x40/0x70
> [ 3089.898977]  ? __switch_to_asm+0x34/0x70
> [ 3089.902903]  ? __switch_to_asm+0x40/0x70
> [ 3089.906828]  ? __switch_to_asm+0x34/0x70
> [ 3089.910745]  _do_fork+0x83/0x350
> [ 3089.913969]  ? __switch_to+0x7a/0x3e0
> [ 3089.917626]  ? __switch_to_asm+0x34/0x70
> [ 3089.921545]  kernel_thread+0x58/0x80
> [ 3089.925124]  ? kthread_park+0x80/0x80
> [ 3089.928788]  kthreadd+0x162/0x1b0
> [ 3089.932098]  ? kthread_create_on_cpu+0xa0/0xa0
> [ 3089.936538]  ret_from_fork+0x1f/0x40
>
> Signed-off-by: Prathap Kumar Valsan<prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang<yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson<chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa<umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt<jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty<aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang<fei.yang@intel.com>
> CC: Andi Shyti<andi.shyti@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  15 +-
>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 200 +++++++++++++++++-
>   7 files changed, 297 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 4d7d88b92632b..a1f7bdc602996 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
>   	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
>   }
>   
> +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
> +{
> +	struct intel_uncore *uncore = gt->uncore;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +}
> +
>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>   {
>   	struct drm_i915_private *i915 = ggtt->vm.i915;
> +	struct intel_gt *gt;
>   
> -	gen8_ggtt_invalidate(ggtt);
> -
> -	if (GRAPHICS_VER(i915) >= 12) {
> -		struct intel_gt *gt;
> +	if (!HAS_GUC_TLB_INVALIDATION(i915))
> +		gen8_ggtt_invalidate(ggtt);
>   
> -		list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
> +	list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
> +		if (HAS_GUC_TLB_INVALIDATION(i915) &&
> +		    intel_guc_is_ready(&gt->uc.guc)) {
> +			guc_ggtt_ct_invalidate(gt);
> +		} else if (GRAPHICS_VER(i915) >= 12) {
>   			intel_uncore_write_fw(gt->uncore,
>   					      GEN12_GUC_TLB_INV_CR,
>   					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
> -	} else {
> -		intel_uncore_write_fw(ggtt->vm.gt->uncore,
> -				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		} else {
> +			intel_uncore_write_fw(gt->uncore,
> +					      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
> +		}
>   	}
>   }
>   
> @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>   		ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>   	}
>   
> -	if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
> +	if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>   		ggtt->invalidate = guc_ggtt_invalidate;
>   	else
>   		ggtt->invalidate = gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
> index 139608c30d978..1278622b9554d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
> @@ -12,6 +12,7 @@
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
>   #include "intel_tlb.h"
> +#include "uc/intel_guc.h"
>   
>   /*
>    * HW architecture suggest typical invalidation time at 40us,
> @@ -131,11 +132,23 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
>   		return;
>   
>   	with_intel_gt_pm_if_awake(gt, wakeref) {
> +		struct intel_guc *guc = &gt->uc.guc;
> +
>   		mutex_lock(&gt->tlb.invalidate_lock);
>   		if (tlb_seqno_passed(gt, seqno))
>   			goto unlock;
>   
> -		mmio_invalidate_full(gt);
> +		if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
> +			/*
> +			 * Only perform GuC TLB invalidation if GuC is ready.
> +			 * If GuC is not ready, then there are no TLBs to
> +			 * invalidate.  Ergo, skip invalidation.
> +			 */
> +			if (intel_guc_is_ready(guc))
> +				intel_guc_invalidate_tlb_engines(guc);
> +		} else {
> +			mmio_invalidate_full(gt);
> +		}
>   
>   		write_seqcount_invalidate(&gt->tlb.seqno);
>   unlock:
> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> index f359bef046e0b..33f253410d0c8 100644
> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
> @@ -138,6 +138,8 @@ enum intel_guc_action {
>   	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>   	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>   	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
> +	INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>   	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>   	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>   	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>   
>   #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
>   
> +#define INTEL_GUC_TLB_INVAL_TYPE_MASK	REG_GENMASK(7, 0)
> +#define INTEL_GUC_TLB_INVAL_MODE_MASK	REG_GENMASK(11, 8)
> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
> +
> +enum intel_guc_tlb_invalidation_type {
> +	INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
> +	INTEL_GUC_TLB_INVAL_GUC = 0x3,
> +};
> +
> +/*
> + * 0: Heavy mode of Invalidation:
> + * The pipeline of the engine(s) for which the invalidation is targeted to is
> + * blocked, and all the in-flight transactions are guaranteed to be Globally
> + * Observed before completing the TLB invalidation
> + * 1: Lite mode of Invalidation:
> + * TLBs of the targeted engine(s) are immediately invalidated.
> + * In-flight transactions are NOT guaranteed to be Globally Observed before
> + * completing TLB invalidation.
> + * Light Invalidation Mode is to be used only when
> + * it can be guaranteed (by SW) that the address translations remain invariant
> + * for the in-flight transactions across the TLB invalidation. In other words,
> + * this mode can be used when the TLB invalidation is intended to clear out the
> + * stale cached translations that are no longer in use. Light Invalidation Mode
> + * is much faster than the Heavy Invalidation Mode, as it does not wait for the
> + * in-flight transactions to be GOd.
> + */
> +enum intel_guc_tlb_inval_mode {
> +	INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
> +	INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
> +};
> +
>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 6c392bad29c19..88deb43bbdc48 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -79,6 +79,18 @@ struct intel_guc {
>   	 */
>   	atomic_t outstanding_submission_g2h;
>   
> +	/** @tlb_lookup: xarray to store all pending TLB invalidation requests */
> +	struct xarray tlb_lookup;
> +
> +	/**
> +	 * @serial_slot: id to the initial waiter created in tlb_lookup,
> +	 * which is used only when failed to allocate new waiter.
> +	 */
> +	u32 serial_slot;
> +
> +	/** @next_seqno: the next id (sequence no.) to allocate. */
> +	u32 next_seqno;
> +
>   	/** @interrupts: pointers to GuC interrupt-managing functions. */
>   	struct {
>   		bool enabled;
> @@ -296,6 +308,11 @@ struct intel_guc {
>   #define MAKE_GUC_VER_STRUCT(ver)	MAKE_GUC_VER((ver).major, (ver).minor, (ver).patch)
>   #define GUC_SUBMIT_VER(guc)		MAKE_GUC_VER_STRUCT((guc)->submission_version)
>   
> +struct intel_guc_tlb_wait {
> +	struct wait_queue_head wq;
> +	bool busy;
> +};
> +
>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>   {
>   	return container_of(log, struct intel_guc, log);
> @@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct intel_guc *guc)
>   	return intel_uc_fw_is_supported(&guc->fw);
>   }
>   
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, u32 size,
> +				    u32 len, u32 seqno);
> +
>   static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>   {
>   	return intel_uc_fw_is_enabled(&guc->fw);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index 6e22af31513a5..e7ac8402245b7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1115,6 +1115,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
>   	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>   		ret = intel_guc_crash_process_msg(guc, action);
>   		break;
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
> +		ret = intel_guc_tlb_invalidation_done(guc, request->size, len, payload[0]);
> +		break;
>   	default:
>   		ret = -EOPNOTSUPP;
>   		break;
> @@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
>   	switch (action) {
>   	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>   	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
> +	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>   		g2h_release_space(ct, request->size);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index b4d56eccfb1f0..a7c9874e122a3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -22,6 +22,7 @@
>   /* Payload length only i.e. don't include G2H header length */
>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
>   #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
> +#define G2H_LEN_DW_INVALIDATE_TLB		1
>   
>   #define GUC_CONTEXT_DISABLE		0
>   #define GUC_CONTEXT_ENABLE		1
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2cce5ec1ff00d..0c5ccda1b3e87 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   
>   void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
>   {
> +	struct intel_guc_tlb_wait *wait;
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> +	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1826,6 +1828,18 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   
>   	/* GuC is blown away, drop all references to contexts */
>   	xa_destroy(&guc->context_lookup);
> +
> +	/*
> +	 * The full GT reset will have cleared the TLB caches and flushed the
> +	 * G2H message queue; we can release all the blocked waiters.
> +	 *
> +	 * This is safe to do unlocked because the xarray is not dependent
> +	 * on the GT reset, and there's a separate execution path for TLB
> +	 * invalidations on GT reset, and there's a large window of time
> +	 * between the GT reset and GuC becoming available.
> +	 */
> +	xa_for_each(&guc->tlb_lookup, i, wait)
> +		wake_up(&wait->wq);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> @@ -1948,6 +1962,50 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>   static void destroyed_worker_func(struct work_struct *w);
>   static void reset_fail_worker_func(struct work_struct *w);
>   
> +static int init_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	int err;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return 0;
> +
> +	xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
> +
> +	wait = kzalloc(sizeof(*wait), GFP_KERNEL);
> +	if (!wait)
> +		return -ENOMEM;
> +
> +	init_waitqueue_head(&wait->wq);
> +
> +	/* Preallocate a shared id for use under memory pressure. */
> +	err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, wait,
> +				  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
> +	/* Only error if out of memory, not when busy (list full)*/
> +	if (err == -ENOMEM) {
> +		kfree(wait);
> +		return err;
> +	}
> +
> +	return 0;
> +}
> +
> +static void fini_tlb_lookup(struct intel_guc *guc)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +
> +	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
> +		return;
> +
> +	wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +	if (wait) {
> +		guc_dbg(guc, "fini_tlb_lookup: Unexpected item in tlb_lookup\n");
> +		kfree(wait);
> +	}
> +
> +	xa_destroy(&guc->tlb_lookup);
> +}
> +
>   /*
>    * Set up the memory resources to be shared with the GuC (via the GGTT)
>    * at firmware loading time.
> @@ -1966,11 +2024,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   			return ret;
>   	}
>   
> +	ret = init_tlb_lookup(guc);
> +	if (ret)
> +		goto destroy_pool;
> +
>   	guc->submission_state.guc_ids_bitmap =
>   		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>   	if (!guc->submission_state.guc_ids_bitmap) {
>   		ret = -ENOMEM;
> -		goto destroy_pool;
> +		goto destroy_tlb;
>   	}
>   
>   	guc->timestamp.ping_delay = (POLL_TIME_CLKS / gt->clock_frequency + 1) * HZ;
> @@ -1979,9 +2041,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
>   
>   	return 0;
>   
> +destroy_tlb:
> +	fini_tlb_lookup(guc);
>   destroy_pool:
>   	guc_lrc_desc_pool_destroy_v69(guc);
> -
>   	return ret;
>   }
>   
> @@ -1994,6 +2057,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
>   	guc_lrc_desc_pool_destroy_v69(guc);
>   	i915_sched_engine_put(guc->sched_engine);
>   	bitmap_free(guc->submission_state.guc_ids_bitmap);
> +	fini_tlb_lookup(guc);
>   	guc->submission_initialized = false;
>   }
>   
> @@ -4624,6 +4688,138 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
>   	return ce;
>   }
>   
> +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 seqno)
> +{
> +	struct intel_guc_tlb_wait *wait;
> +	unsigned long flags;
> +
> +	xa_lock_irqsave(&guc->tlb_lookup, flags);
> +	wait = xa_load(&guc->tlb_lookup, seqno);
> +
> +	if (wait)
> +		wake_up(&wait->wq);
> +	else
> +		guc_dbg(guc,
> +			"Stale TLB invalidation response with seqno %d\n", seqno);
> +
> +	xa_unlock_irqrestore(&guc->tlb_lookup, flags);
> +}
> +
> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, u32 size, u32 len, u32 seqno)
> +{
> +	/* Check for underflow */
> +	if (unlikely(len < 1 || len > size))
> +		return -EPROTO;
> +
> +	wait_wake_outstanding_tlb_g2h(guc, seqno);
> +	return 0;
> +}
> +
> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
> +{
> +	/*
> +	 * This is equivalent to wait_woken() with the exception that
> +	 * we do not wake up early if the kthread task has been completed.
> +	 * As we are called from page reclaim in any task context,
> +	 * we may be invoked from stopped kthreads, but we *must*
> +	 * complete the wait from the HW .
> +	 *
> +	 * A second problem is that since we are called under reclaim
> +	 * and wait_woken() inspected the thread state, it makes an invalid
> +	 * assumption that all PF_KTHREAD tasks have set_kthread_struct()
> +	 * called upon them, and will trigger a GPF

As discussed internally, the GPF issue is resolved with 
https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/ 
<https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/>


>   in is_kthread_should_stop().
> +	 */
> +	do {
> +		set_current_state(TASK_UNINTERRUPTIBLE);
> +		if (wq_entry->flags & WQ_FLAG_WOKEN)
> +			break;
> +
> +		timeout = schedule_timeout(timeout);
> +	} while (timeout);
> +	__set_current_state(TASK_RUNNING);
> +
> +	/* See wait_woken() and woken_wake_function() */
> +	smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
> +
> +	return timeout;
> +}
> +
> +static int guc_send_invalidate_tlb(struct intel_guc *guc, enum intel_guc_tlb_inval_mode type)


2nd param should be intel_guc_tlb_invalidation_type not 
intel_guc_tlb_inval_mod.

Not sure why didn't CI complained.


Regards,

Nirmoy

> +{
> +	struct intel_guc_tlb_wait _wq, *wq = &_wq;
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
> +	int err;
> +	u32 seqno;
> +	u32 action[] = {
> +		INTEL_GUC_ACTION_TLB_INVALIDATION,
> +		0,
> +		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
> +			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
> +				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
> +			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
> +	};
> +	u32 size = ARRAY_SIZE(action);
> +
> +	init_waitqueue_head(&_wq.wq);
> +
> +	if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
> +				xa_limit_32b, &guc->next_seqno,
> +				GFP_ATOMIC | __GFP_NOWARN) < 0) {
> +		/* Under severe memory pressure? Serialise TLB allocations */
> +		xa_lock_irq(&guc->tlb_lookup);
> +		wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
> +		wait_event_lock_irq(wq->wq,
> +				    !READ_ONCE(wq->busy),
> +				    guc->tlb_lookup.xa_lock);
> +		/*
> +		 * Update wq->busy under lock to ensure only one waiter can
> +		 * issue the TLB invalidation command using the serial slot at a
> +		 * time. The condition is set to true before releasing the lock
> +		 * so that other caller continue to wait until woken up again.
> +		 */
> +		wq->busy = true;
> +		xa_unlock_irq(&guc->tlb_lookup);
> +
> +		seqno = guc->serial_slot;
> +	}
> +
> +	action[1] = seqno;
> +
> +	add_wait_queue(&wq->wq, &wait);
> +
> +	/*
> +	 * This is a critical reclaim path and thus we must loop here:
> +	 * We cannot block for anything that is on the GPU.
> +	 */
> +	err = intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDATE_TLB, true);
> +	if (err)
> +		goto out;
> +
> +	if (!must_wait_woken(&wait, intel_guc_ct_expected_delay(&guc->ct))) {
> +		guc_err(guc,
> +			"TLB invalidation response timed out for seqno %u\n", seqno);
> +		err = -ETIME;
> +	}
> +out:
> +	remove_wait_queue(&wq->wq, &wait);
> +	if (seqno != guc->serial_slot)
> +		xa_erase_irq(&guc->tlb_lookup, seqno);
> +
> +	return err;
> +}
> +
> +/* Full TLB invalidation */
> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
> +}
> +
> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
> +{
> +	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
> +}
> +
>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>   					  const u32 *msg,
>   					  u32 len)
--------------wxSWGSaPODhYPTZtWZEFpwqK
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 10/6/2023 8:20 PM, Jonathan Cavitt
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20231006182051.1599923-4-jonathan.cavitt@intel.com">
      <pre class="moz-quote-pre" wrap="">From: Prathap Kumar Valsan <a class="moz-txt-link-rfc2396E" href="mailto:prathap.kumar.valsan@intel.com">&lt;prathap.kumar.valsan@intel.com&gt;</a>

The GuC firmware had defined the interface for Translation Look-Aside
Buffer (TLB) invalidation.  We should use this interface when
invalidating the engine and GuC TLBs.
Add additional functionality to intel_gt_invalidate_tlb, invalidating
the GuC TLBs and falling back to GT invalidation when the GuC is
disabled.
The invalidation is done by sending a request directly to the GuC
tlb_lookup that invalidates the table.  The invalidation is submitted as
a wait request and is performed in the CT event handler.  This means we
cannot perform this TLB invalidation path if the CT is not enabled.
If the request isn't fulfilled in two seconds, this would constitute
an error in the invalidation as that would constitute either a lost
request or a severe GuC overload.

With this new invalidation routine, we can perform GuC-based GGTT
invalidations.  GuC-based GGTT invalidation is incompatible with
MMIO invalidation so we should not perform MMIO invalidation when
GuC-based GGTT invalidation is expected.

Purpose of xarray:
The tlb_lookup table is allocated as an xarray because the set of
pending TLB invalidations may have no upper bound.  The consequence of
this is that all actions interfacing with this table need to use the
xarray functions, such as xa_alloc_cyclic_irq for array insertion.

Purpose of must_wait_woken:
Our wait for the G2H ack for the completion of a TLB invalidation is
mandatory; we must wait for the HW to confirm that the physical
addresses are no longer accessible before we return those to the system.

On switching to using the wait_woken() convenience routine, we
introduced ourselves to an issue where wait_woken() may complete early
under a kthread that is stopped. Since we send a TLB invalidation when
we try to release pages from the shrinker, we can be called from any
process; including kthreads.

Using wait_woken() from any process context causes another issue. The
use of is_kthread_should_stop() assumes that any task with PF_KTHREAD
set was made by kthread_create() and has called set_kthread_struct().
This is not true for the raw kernel_thread():

BUG: kernel NULL pointer dereference, address: 0000000000000000
[ 3089.759660] Call Trace:
[ 3089.762110]  wait_woken+0x4f/0x80
[ 3089.765496]  guc_send_invalidate_tlb+0x1fe/0x310 [i915]
[ 3089.770725]  ? syscall_return_via_sysret+0xf/0x7f
[ 3089.775426]  ? do_wait_intr_irq+0xb0/0xb0
[ 3089.779430]  ? __switch_to_asm+0x40/0x70
[ 3089.783349]  ? __switch_to_asm+0x34/0x70
[ 3089.787273]  ? __switch_to+0x7a/0x3e0
[ 3089.790930]  ? __switch_to_asm+0x34/0x70
[ 3089.794883]  intel_guc_invalidate_tlb_full+0x92/0xa0 [i915]
[ 3089.800487]  intel_invalidate_tlb_full+0x94/0x190 [i915]
[ 3089.805824]  intel_invalidate_tlb_full_sync+0x1b/0x30 [i915]
[ 3089.811508]  __i915_gem_object_unset_pages+0x138/0x150 [i915]
[ 3089.817279]  __i915_gem_object_put_pages+0x25/0x90 [i915]
[ 3089.822706]  i915_gem_shrink+0x532/0x7e0 [i915]
[ 3089.827264]  i915_gem_shrinker_scan+0x3d/0xd0 [i915]
[ 3089.832230]  do_shrink_slab+0x12c/0x2a0
[ 3089.836065]  shrink_slab+0xad/0x2b0
[ 3089.839550]  shrink_node+0xcc/0x410
[ 3089.843035]  do_try_to_free_pages+0xc6/0x380
[ 3089.847306]  try_to_free_pages+0xec/0x1c0
[ 3089.851312]  __alloc_pages_slowpath+0x3ad/0xd10
[ 3089.855845]  ? update_sd_lb_stats+0x636/0x710
[ 3089.860204]  __alloc_pages_nodemask+0x2d5/0x310
[ 3089.864737]  new_slab+0x265/0xa80
[ 3089.868053]  ___slab_alloc+0y_to_free_pages+0xec/0x1c0
[ 3089.871798]  ? copy_process+0x1e5/0x1a00
[ 3089.875717]  ? load_balance+0x165/0xb20
[ 3089.879555]  __slab_alloc+0x1c/0x30
[ 3089.883047]  kmem_cache_alloc_node+0x9f/0x240
[ 3089.887397]  ? copy_process+0x1e5/0x1a00
[ 3089.891314]  copy_process+0x1e5/0x1a00
[ 3089.895058]  ? __switch_to_asm+0x40/0x70
[ 3089.879555]  __slab_alloc+0x1c/0x30
[ 3089.883047]  kmem_cache_alloc_node+0x9f/0x240
[ 3089.887397]  ? copy_process+0x1e5/0x1a00
[ 3089.891314]  copy_process+0x1e5/0x1a00
[ 3089.895058]  ? __switch_to_asm+0x40/0x70
[ 3089.898977]  ? __switch_to_asm+0x34/0x70
[ 3089.902903]  ? __switch_to_asm+0x40/0x70
[ 3089.906828]  ? __switch_to_asm+0x34/0x70
[ 3089.910745]  _do_fork+0x83/0x350
[ 3089.913969]  ? __switch_to+0x7a/0x3e0
[ 3089.917626]  ? __switch_to_asm+0x34/0x70
[ 3089.921545]  kernel_thread+0x58/0x80
[ 3089.925124]  ? kthread_park+0x80/0x80
[ 3089.928788]  kthreadd+0x162/0x1b0
[ 3089.932098]  ? kthread_create_on_cpu+0xa0/0xa0
[ 3089.936538]  ret_from_fork+0x1f/0x40

Signed-off-by: Prathap Kumar Valsan <a class="moz-txt-link-rfc2396E" href="mailto:prathap.kumar.valsan@intel.com">&lt;prathap.kumar.valsan@intel.com&gt;</a>
Signed-off-by: Bruce Chang <a class="moz-txt-link-rfc2396E" href="mailto:yu.bruce.chang@intel.com">&lt;yu.bruce.chang@intel.com&gt;</a>
Signed-off-by: Chris Wilson <a class="moz-txt-link-rfc2396E" href="mailto:chris.p.wilson@intel.com">&lt;chris.p.wilson@intel.com&gt;</a>
Signed-off-by: Umesh Nerlige Ramappa <a class="moz-txt-link-rfc2396E" href="mailto:umesh.nerlige.ramappa@intel.com">&lt;umesh.nerlige.ramappa@intel.com&gt;</a>
Signed-off-by: Jonathan Cavitt <a class="moz-txt-link-rfc2396E" href="mailto:jonathan.cavitt@intel.com">&lt;jonathan.cavitt@intel.com&gt;</a>
Signed-off-by: Aravind Iddamsetty <a class="moz-txt-link-rfc2396E" href="mailto:aravind.iddamsetty@intel.com">&lt;aravind.iddamsetty@intel.com&gt;</a>
Signed-off-by: Fei Yang <a class="moz-txt-link-rfc2396E" href="mailto:fei.yang@intel.com">&lt;fei.yang@intel.com&gt;</a>
CC: Andi Shyti <a class="moz-txt-link-rfc2396E" href="mailto:andi.shyti@linux.intel.com">&lt;andi.shyti@linux.intel.com&gt;</a>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
 drivers/gpu/drm/i915/gt/intel_tlb.c           |  15 +-
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 200 +++++++++++++++++-
 7 files changed, 297 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 4d7d88b92632b..a1f7bdc602996 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct i915_ggtt *ggtt)
 	intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, GFX_FLSH_CNTL_EN);
 }
 
+static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
+{
+	struct intel_uncore *uncore = gt-&gt;uncore;
+	intel_wakeref_t wakeref;
+
+	with_intel_runtime_pm_if_active(uncore-&gt;rpm, wakeref) {
+		struct intel_guc *guc = &amp;gt-&gt;uc.guc;
+
+		intel_guc_invalidate_tlb_guc(guc);
+	}
+}
+
 static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
 {
 	struct drm_i915_private *i915 = ggtt-&gt;vm.i915;
+	struct intel_gt *gt;
 
-	gen8_ggtt_invalidate(ggtt);
-
-	if (GRAPHICS_VER(i915) &gt;= 12) {
-		struct intel_gt *gt;
+	if (!HAS_GUC_TLB_INVALIDATION(i915))
+		gen8_ggtt_invalidate(ggtt);
 
-		list_for_each_entry(gt, &amp;ggtt-&gt;gt_list, ggtt_link)
+	list_for_each_entry(gt, &amp;ggtt-&gt;gt_list, ggtt_link) {
+		if (HAS_GUC_TLB_INVALIDATION(i915) &amp;&amp;
+		    intel_guc_is_ready(&amp;gt-&gt;uc.guc)) {
+			guc_ggtt_ct_invalidate(gt);
+		} else if (GRAPHICS_VER(i915) &gt;= 12) {
 			intel_uncore_write_fw(gt-&gt;uncore,
 					      GEN12_GUC_TLB_INV_CR,
 					      GEN12_GUC_TLB_INV_CR_INVALIDATE);
-	} else {
-		intel_uncore_write_fw(ggtt-&gt;vm.gt-&gt;uncore,
-				      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
+		} else {
+			intel_uncore_write_fw(gt-&gt;uncore,
+					      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
+		}
 	}
 }
 
@@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
 		ggtt-&gt;vm.raw_insert_page = gen8_ggtt_insert_page;
 	}
 
-	if (intel_uc_wants_guc(&amp;ggtt-&gt;vm.gt-&gt;uc))
+	if (intel_uc_wants_guc_submission(&amp;ggtt-&gt;vm.gt-&gt;uc))
 		ggtt-&gt;invalidate = guc_ggtt_invalidate;
 	else
 		ggtt-&gt;invalidate = gen8_ggtt_invalidate;
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
index 139608c30d978..1278622b9554d 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.c
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
@@ -12,6 +12,7 @@
 #include &quot;intel_gt_print.h&quot;
 #include &quot;intel_gt_regs.h&quot;
 #include &quot;intel_tlb.h&quot;
+#include &quot;uc/intel_guc.h&quot;
 
 /*
  * HW architecture suggest typical invalidation time at 40us,
@@ -131,11 +132,23 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
 		return;
 
 	with_intel_gt_pm_if_awake(gt, wakeref) {
+		struct intel_guc *guc = &amp;gt-&gt;uc.guc;
+
 		mutex_lock(&amp;gt-&gt;tlb.invalidate_lock);
 		if (tlb_seqno_passed(gt, seqno))
 			goto unlock;
 
-		mmio_invalidate_full(gt);
+		if (HAS_GUC_TLB_INVALIDATION(gt-&gt;i915)) {
+			/*
+			 * Only perform GuC TLB invalidation if GuC is ready.
+			 * If GuC is not ready, then there are no TLBs to
+			 * invalidate.  Ergo, skip invalidation.
+			 */
+			if (intel_guc_is_ready(guc))
+				intel_guc_invalidate_tlb_engines(guc);
+		} else {
+			mmio_invalidate_full(gt);
+		}
 
 		write_seqcount_invalidate(&amp;gt-&gt;tlb.seqno);
 unlock:
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index f359bef046e0b..33f253410d0c8 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -138,6 +138,8 @@ enum intel_guc_action {
 	INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
 	INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
 	INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
+	INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
+	INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
 	INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
 	INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
 	INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
@@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
 
 #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
 
+#define INTEL_GUC_TLB_INVAL_TYPE_MASK	REG_GENMASK(7, 0)
+#define INTEL_GUC_TLB_INVAL_MODE_MASK	REG_GENMASK(11, 8)
+#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
+
+enum intel_guc_tlb_invalidation_type {
+	INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
+	INTEL_GUC_TLB_INVAL_GUC = 0x3,
+};
+
+/*
+ * 0: Heavy mode of Invalidation:
+ * The pipeline of the engine(s) for which the invalidation is targeted to is
+ * blocked, and all the in-flight transactions are guaranteed to be Globally
+ * Observed before completing the TLB invalidation
+ * 1: Lite mode of Invalidation:
+ * TLBs of the targeted engine(s) are immediately invalidated.
+ * In-flight transactions are NOT guaranteed to be Globally Observed before
+ * completing TLB invalidation.
+ * Light Invalidation Mode is to be used only when
+ * it can be guaranteed (by SW) that the address translations remain invariant
+ * for the in-flight transactions across the TLB invalidation. In other words,
+ * this mode can be used when the TLB invalidation is intended to clear out the
+ * stale cached translations that are no longer in use. Light Invalidation Mode
+ * is much faster than the Heavy Invalidation Mode, as it does not wait for the
+ * in-flight transactions to be GOd.
+ */
+enum intel_guc_tlb_inval_mode {
+	INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
+	INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
+};
+
 #endif /* _ABI_GUC_ACTIONS_ABI_H */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 6c392bad29c19..88deb43bbdc48 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -79,6 +79,18 @@ struct intel_guc {
 	 */
 	atomic_t outstanding_submission_g2h;
 
+	/** @tlb_lookup: xarray to store all pending TLB invalidation requests */
+	struct xarray tlb_lookup;
+
+	/**
+	 * @serial_slot: id to the initial waiter created in tlb_lookup,
+	 * which is used only when failed to allocate new waiter.
+	 */
+	u32 serial_slot;
+
+	/** @next_seqno: the next id (sequence no.) to allocate. */
+	u32 next_seqno;
+
 	/** @interrupts: pointers to GuC interrupt-managing functions. */
 	struct {
 		bool enabled;
@@ -296,6 +308,11 @@ struct intel_guc {
 #define MAKE_GUC_VER_STRUCT(ver)	MAKE_GUC_VER((ver).major, (ver).minor, (ver).patch)
 #define GUC_SUBMIT_VER(guc)		MAKE_GUC_VER_STRUCT((guc)-&gt;submission_version)
 
+struct intel_guc_tlb_wait {
+	struct wait_queue_head wq;
+	bool busy;
+};
+
 static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
 {
 	return container_of(log, struct intel_guc, log);
@@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct intel_guc *guc)
 	return intel_uc_fw_is_supported(&amp;guc-&gt;fw);
 }
 
+int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
+int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
+int intel_guc_tlb_invalidation_done(struct intel_guc *guc, u32 size,
+				    u32 len, u32 seqno);
+
 static inline bool intel_guc_is_wanted(struct intel_guc *guc)
 {
 	return intel_uc_fw_is_enabled(&amp;guc-&gt;fw);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
index 6e22af31513a5..e7ac8402245b7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
@@ -1115,6 +1115,9 @@ static int ct_process_request(struct intel_guc_ct *ct, struct ct_incoming_msg *r
 	case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
 		ret = intel_guc_crash_process_msg(guc, action);
 		break;
+	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
+		ret = intel_guc_tlb_invalidation_done(guc, request-&gt;size, len, payload[0]);
+		break;
 	default:
 		ret = -EOPNOTSUPP;
 		break;
@@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct *ct, struct ct_incoming_msg *requ
 	switch (action) {
 	case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
 	case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
+	case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
 		g2h_release_space(ct, request-&gt;size);
 	}
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index b4d56eccfb1f0..a7c9874e122a3 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -22,6 +22,7 @@
 /* Payload length only i.e. don't include G2H header length */
 #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET	2
 #define G2H_LEN_DW_DEREGISTER_CONTEXT		1
+#define G2H_LEN_DW_INVALIDATE_TLB		1
 
 #define GUC_CONTEXT_DISABLE		0
 #define GUC_CONTEXT_ENABLE		1
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 2cce5ec1ff00d..0c5ccda1b3e87 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
 
 void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
 {
+	struct intel_guc_tlb_wait *wait;
 	struct intel_context *ce;
 	unsigned long index;
 	unsigned long flags;
+	unsigned long i;
 
 	if (unlikely(!guc_submission_initialized(guc))) {
 		/* Reset called during driver load? GuC not yet initialised! */
@@ -1826,6 +1828,18 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
 
 	/* GuC is blown away, drop all references to contexts */
 	xa_destroy(&amp;guc-&gt;context_lookup);
+
+	/*
+	 * The full GT reset will have cleared the TLB caches and flushed the
+	 * G2H message queue; we can release all the blocked waiters.
+	 *
+	 * This is safe to do unlocked because the xarray is not dependent
+	 * on the GT reset, and there's a separate execution path for TLB
+	 * invalidations on GT reset, and there's a large window of time
+	 * between the GT reset and GuC becoming available.
+	 */
+	xa_for_each(&amp;guc-&gt;tlb_lookup, i, wait)
+		wake_up(&amp;wait-&gt;wq);
 }
 
 static void guc_cancel_context_requests(struct intel_context *ce)
@@ -1948,6 +1962,50 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
 static void destroyed_worker_func(struct work_struct *w);
 static void reset_fail_worker_func(struct work_struct *w);
 
+static int init_tlb_lookup(struct intel_guc *guc)
+{
+	struct intel_guc_tlb_wait *wait;
+	int err;
+
+	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)-&gt;i915))
+		return 0;
+
+	xa_init_flags(&amp;guc-&gt;tlb_lookup, XA_FLAGS_ALLOC);
+
+	wait = kzalloc(sizeof(*wait), GFP_KERNEL);
+	if (!wait)
+		return -ENOMEM;
+
+	init_waitqueue_head(&amp;wait-&gt;wq);
+
+	/* Preallocate a shared id for use under memory pressure. */
+	err = xa_alloc_cyclic_irq(&amp;guc-&gt;tlb_lookup, &amp;guc-&gt;serial_slot, wait,
+				  xa_limit_32b, &amp;guc-&gt;next_seqno, GFP_KERNEL);
+	/* Only error if out of memory, not when busy (list full)*/
+	if (err == -ENOMEM) {
+		kfree(wait);
+		return err;
+	}
+
+	return 0;
+}
+
+static void fini_tlb_lookup(struct intel_guc *guc)
+{
+	struct intel_guc_tlb_wait *wait;
+
+	if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)-&gt;i915))
+		return;
+
+	wait = xa_load(&amp;guc-&gt;tlb_lookup, guc-&gt;serial_slot);
+	if (wait) {
+		guc_dbg(guc, &quot;fini_tlb_lookup: Unexpected item in tlb_lookup\n&quot;);
+		kfree(wait);
+	}
+
+	xa_destroy(&amp;guc-&gt;tlb_lookup);
+}
+
 /*
  * Set up the memory resources to be shared with the GuC (via the GGTT)
  * at firmware loading time.
@@ -1966,11 +2024,15 @@ int intel_guc_submission_init(struct intel_guc *guc)
 			return ret;
 	}
 
+	ret = init_tlb_lookup(guc);
+	if (ret)
+		goto destroy_pool;
+
 	guc-&gt;submission_state.guc_ids_bitmap =
 		bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
 	if (!guc-&gt;submission_state.guc_ids_bitmap) {
 		ret = -ENOMEM;
-		goto destroy_pool;
+		goto destroy_tlb;
 	}
 
 	guc-&gt;timestamp.ping_delay = (POLL_TIME_CLKS / gt-&gt;clock_frequency + 1) * HZ;
@@ -1979,9 +2041,10 @@ int intel_guc_submission_init(struct intel_guc *guc)
 
 	return 0;
 
+destroy_tlb:
+	fini_tlb_lookup(guc);
 destroy_pool:
 	guc_lrc_desc_pool_destroy_v69(guc);
-
 	return ret;
 }
 
@@ -1994,6 +2057,7 @@ void intel_guc_submission_fini(struct intel_guc *guc)
 	guc_lrc_desc_pool_destroy_v69(guc);
 	i915_sched_engine_put(guc-&gt;sched_engine);
 	bitmap_free(guc-&gt;submission_state.guc_ids_bitmap);
+	fini_tlb_lookup(guc);
 	guc-&gt;submission_initialized = false;
 }
 
@@ -4624,6 +4688,138 @@ g2h_context_lookup(struct intel_guc *guc, u32 ctx_id)
 	return ce;
 }
 
+static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, u32 seqno)
+{
+	struct intel_guc_tlb_wait *wait;
+	unsigned long flags;
+
+	xa_lock_irqsave(&amp;guc-&gt;tlb_lookup, flags);
+	wait = xa_load(&amp;guc-&gt;tlb_lookup, seqno);
+
+	if (wait)
+		wake_up(&amp;wait-&gt;wq);
+	else
+		guc_dbg(guc,
+			&quot;Stale TLB invalidation response with seqno %d\n&quot;, seqno);
+
+	xa_unlock_irqrestore(&amp;guc-&gt;tlb_lookup, flags);
+}
+
+int intel_guc_tlb_invalidation_done(struct intel_guc *guc, u32 size, u32 len, u32 seqno)
+{
+	/* Check for underflow */
+	if (unlikely(len &lt; 1 || len &gt; size))
+		return -EPROTO;
+
+	wait_wake_outstanding_tlb_g2h(guc, seqno);
+	return 0;
+}
+
+static long must_wait_woken(struct wait_queue_entry *wq_entry, long timeout)
+{
+	/*
+	 * This is equivalent to wait_woken() with the exception that
+	 * we do not wake up early if the kthread task has been completed.
+	 * As we are called from page reclaim in any task context,
+	 * we may be invoked from stopped kthreads, but we *must*
+	 * complete the wait from the HW .
+	 *
+	 * A second problem is that since we are called under reclaim
+	 * and wait_woken() inspected the thread state, it makes an invalid
+	 * assumption that all PF_KTHREAD tasks have set_kthread_struct()
+	 * called upon them, and will trigger a GPF</pre>
    </blockquote>
    <p>As discussed internally, the GPF issue is resolved with <span><span class="ui-provider bjs bjt bcg bju bjv bjw bjx bjy bjz bka bkb
          bkc bkd bke bkf bkg bkh bki bkj bkk bkl bkm bkn bko bkp bkq
          bkr bks bkt bku bkv bkw bkx bky bkz" dir="ltr"> <a aria-label="Link
            https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/" title="https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/" href="https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/" rel="noreferrer noopener" target="_blank" class="fui-Link
            ___10kug0w f3rmtva f1ewtqcl fyind8e f1k6fduh f1w7gpdv
            fk6fouc fjoy568 figsok6 f1hu3pq6 f11qmguv f19f4twv f1tyq0we
            f1g0x7ka fhxju0i f1qch9an f1cnd47f fqv5qza f1vmzxwi f1o700av
            f13mvf36 f1cmlufx f9n3di6 f1ids18y f1tx3yz7 f1deo86v
            f1eh06m1 f1iescvh fhgqx19 f1olyrje f1p93eir f1nev41a
            f1h8hb77 f1lqvz6u f10aw75t fsle3fq f17ae5zn
            moz-txt-link-freetext" style="overflow-wrap: break-word;">https://lore.kernel.org/all/20230602212350.535358-1-jstultz@google.com/</a>&nbsp;
          <br>
        </span></span></p>
    <p><span><span class="ui-provider bjs bjt bcg bju bjv bjw bjx bjy
          bjz bka bkb bkc bkd bke bkf bkg bkh bki bkj bkk bkl bkm bkn
          bko bkp bkq bkr bks bkt bku bkv bkw bkx bky bkz" dir="ltr"><br>
        </span></span></p>
    <p><span><span class="ui-provider bjs bjt bcg bju bjv bjw bjx bjy
          bjz bka bkb bkc bkd bke bkf bkg bkh bki bkj bkk bkl bkm bkn
          bko bkp bkq bkr bks bkt bku bkv bkw bkx bky bkz" dir="ltr"></span></span></p>
    <blockquote type="cite" cite="mid:20231006182051.1599923-4-jonathan.cavitt@intel.com">
      <pre class="moz-quote-pre" wrap=""> in is_kthread_should_stop().
+	 */
+	do {
+		set_current_state(TASK_UNINTERRUPTIBLE);
+		if (wq_entry-&gt;flags &amp; WQ_FLAG_WOKEN)
+			break;
+
+		timeout = schedule_timeout(timeout);
+	} while (timeout);
+	__set_current_state(TASK_RUNNING);
+
+	/* See wait_woken() and woken_wake_function() */
+	smp_store_mb(wq_entry-&gt;flags, wq_entry-&gt;flags &amp; ~WQ_FLAG_WOKEN);
+
+	return timeout;
+}
+
+static int guc_send_invalidate_tlb(struct intel_guc *guc, enum intel_guc_tlb_inval_mode type)</pre>
    </blockquote>
    <p><br>
    </p>
    <p>2nd param should be intel_guc_tlb_invalidation_type not
      intel_guc_tlb_inval_mod. <br>
    </p>
    <p>Not sure why didn't CI complained.</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Nirmoy<br>
    </p>
    <blockquote type="cite" cite="mid:20231006182051.1599923-4-jonathan.cavitt@intel.com">
      <pre class="moz-quote-pre" wrap="">
+{
+	struct intel_guc_tlb_wait _wq, *wq = &amp;_wq;
+	DEFINE_WAIT_FUNC(wait, woken_wake_function);
+	int err;
+	u32 seqno;
+	u32 action[] = {
+		INTEL_GUC_ACTION_TLB_INVALIDATION,
+		0,
+		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
+			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
+				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
+			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
+	};
+	u32 size = ARRAY_SIZE(action);
+
+	init_waitqueue_head(&amp;_wq.wq);
+
+	if (xa_alloc_cyclic_irq(&amp;guc-&gt;tlb_lookup, &amp;seqno, wq,
+				xa_limit_32b, &amp;guc-&gt;next_seqno,
+				GFP_ATOMIC | __GFP_NOWARN) &lt; 0) {
+		/* Under severe memory pressure? Serialise TLB allocations */
+		xa_lock_irq(&amp;guc-&gt;tlb_lookup);
+		wq = xa_load(&amp;guc-&gt;tlb_lookup, guc-&gt;serial_slot);
+		wait_event_lock_irq(wq-&gt;wq,
+				    !READ_ONCE(wq-&gt;busy),
+				    guc-&gt;tlb_lookup.xa_lock);
+		/*
+		 * Update wq-&gt;busy under lock to ensure only one waiter can
+		 * issue the TLB invalidation command using the serial slot at a
+		 * time. The condition is set to true before releasing the lock
+		 * so that other caller continue to wait until woken up again.
+		 */
+		wq-&gt;busy = true;
+		xa_unlock_irq(&amp;guc-&gt;tlb_lookup);
+
+		seqno = guc-&gt;serial_slot;
+	}
+
+	action[1] = seqno;
+
+	add_wait_queue(&amp;wq-&gt;wq, &amp;wait);
+
+	/*
+	 * This is a critical reclaim path and thus we must loop here:
+	 * We cannot block for anything that is on the GPU.
+	 */
+	err = intel_guc_send_busy_loop(guc, action, size, G2H_LEN_DW_INVALIDATE_TLB, true);
+	if (err)
+		goto out;
+
+	if (!must_wait_woken(&amp;wait, intel_guc_ct_expected_delay(&amp;guc-&gt;ct))) {
+		guc_err(guc,
+			&quot;TLB invalidation response timed out for seqno %u\n&quot;, seqno);
+		err = -ETIME;
+	}
+out:
+	remove_wait_queue(&amp;wq-&gt;wq, &amp;wait);
+	if (seqno != guc-&gt;serial_slot)
+		xa_erase_irq(&amp;guc-&gt;tlb_lookup, seqno);
+
+	return err;
+}
+
+/* Full TLB invalidation */
+int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
+{
+	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
+}
+
+/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
+int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
+{
+	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
+}
+
 int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
 					  const u32 *msg,
 					  u32 len)
</pre>
    </blockquote>
  </body>
</html>

--------------wxSWGSaPODhYPTZtWZEFpwqK--
