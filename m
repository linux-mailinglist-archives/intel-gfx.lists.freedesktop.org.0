Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A00387BEA62
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 21:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B8710E1A5;
	Mon,  9 Oct 2023 19:14:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6008F10E172
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 19:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696878853; x=1728414853;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CZMiFP4SJC4QY0cFsE0kgOPR855+RXgaFdkDjfToniQ=;
 b=iPbIBnwOjxHF3gtC3DIe7zVjGObZQ50b5DhNgsuqeLlBP9p34IJpDC15
 gHIZ0Gv6cIAxetw/sBpYCrS/UbPX64dAzNB6l9FiU1Kan1xW5IJZ/+Ryz
 l6h6cmWoQr6e2zFR/auSXDb8cFWe8b1TqsvvdxWq/lz70ZuND5FTXD4yo
 +KxFhLX4u2mrZ9bkQnnlTAcMErgTRnZHncU6Ms5aXR8kGsYUCBl0AOquL
 DAzSAWWrQ7qt5Hdmhj2iz3qqoJdNgGDUq+lAxW4ioDDiCwWh6tgldOh6z
 C1bhF2I4M6Df7zfhRrrGSi7E8NcTUGZ4/glRUKl33qipf2IY+bYwUOYQS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="383101195"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="383101195"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 12:14:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="756820339"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="756820339"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2023 12:14:12 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 12:14:12 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 9 Oct 2023 12:14:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 9 Oct 2023 12:14:11 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 9 Oct 2023 12:14:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eQm+ePlWbC/xaQkD/VhAdX3cUZ0xR2RDMch8cnRx84IhWdoukjYP9bS75WRJhd5clZLjq+DV6z4XXWORtqM0YQxOiDySauh9he9iFKOk5n5B/RJQNDcK87k9C9ZNCB4S2ljI+MElKEBCF25wKqUQuuRDaTMteIvQ2I55h6cfYi9WYBoNe11mDsSAyf3HkKhi+HmPvc5stmKeebkVWKVHOPEeJzUonR1M0Eag6ofgRGhsyd7TJI8ye/wxITXtW1PcyeMkw82p/dHoPyMocd8cGjoDDfovhPffPU2/z2HqwbVUO2au98LSRaTyWh+kMPXsAiOyHjmKzYV2nzoXeaC5dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9KGSlwUbtuDa+Ddb84gitQSAxSnERFo4m+A8CSZ34gc=;
 b=Z79rc51+L4etPC8v/YMOsEdqu9DdwIoA/PGP6BegzYQqbkGiHHcZ/WAupAPvdaWtWkunkQhKa4yyR2AAgTuXMZuuOYZzidDlvhIVjO0z/hF66XHor/oxfJU/VFuwkmX9nMdYQNovSvY+OMBf0IyCdVoiTH8w8gXHFgyAiVpbdK2mbPeY2Ml3TWDc1vUdcM9h5sJLiyj1vQmmOWrpWIaFptCjaYfRqn9HXZcH1fnC31Cj/sprmvSg4HPS66QLoJWBs/hNfCEYj0kiXkJPaYO2eyGTsJT0B9knLin/sZMUWOjrQ38hFHp14dyIZhMiKtMQycXvYnsGiOSLclvld8n/Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MW3PR11MB4570.namprd11.prod.outlook.com (2603:10b6:303:5f::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Mon, 9 Oct
 2023 19:14:09 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Mon, 9 Oct 2023
 19:14:09 +0000
Message-ID: <ad5e3e47-aa7a-4c96-8dac-42691390ce4e@intel.com>
Date: Mon, 9 Oct 2023 12:14:06 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
 <20231006182051.1599923-4-jonathan.cavitt@intel.com>
 <d6051b4f-dc0a-2df7-71ca-5bf9ec209d27@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <d6051b4f-dc0a-2df7-71ca-5bf9ec209d27@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0074.namprd03.prod.outlook.com
 (2603:10b6:303:b6::19) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|MW3PR11MB4570:EE_
X-MS-Office365-Filtering-Correlation-Id: 37f0fb7d-e2b4-4de1-44c5-08dbc8fbea05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +QYUwZ+A783IgZtaZTVosOZRXWMcENZ2ZDGkV8eKixRPVqynLHBImAY4ul1HpuEAUlroI1nrSOO3mSP+NUswKoJncqcxtyD+pNhQcNUWjXn7jPL33zXui+A8H64MDrityRoYO1CgORUUVPHbdh8vce2Q2eSjMjL6rtI0XLXmiP3QdXqzH7m0aGEUQNTaOTOV6dFveQeOsj89RfwYzpa4FWmse1qNDXw2iknk/74tbdgzAXOM/zbm3An3LXo4o/xwFmRJLzYCgpd67cCAQGS1O7AwOBSd8/SYotBRtqSnVitRfjkvHxNsWYKz1wB889ZyHdGJE/xZJEBazcTXrhEOEIGPrl9qiEtWLCEPM95ITl0gB0LNRkjd30G2DrxRBzt0px2N3rnB9eBHoxa4+2EKwWOjw7a/skqTMhRDFB8+nzzQzxOLrAS8vS5zf3TXWu/HIxiDaiG9q8YByvVCUvh1yjaS3nGhNz333eJEyZTvwH/Q9NHxB+B+i7ciQSG8pRQlgVi0zrBZORc7jfyKPYGenxfwunRfpaYJabA8/+W3eIeCOhi1HY4tSun0uaVq0znugN9x4G4nWWPoE2r5isToSc3nJG/WQVHUdek3zV3/QAVbn9DN24EwCb/RXcjwjj8C76DBWkV/EdK2DI4Xr66Rdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(346002)(396003)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(26005)(2616005)(53546011)(38100700002)(86362001)(36756003)(31696002)(82960400001)(83380400001)(8676002)(6506007)(2906002)(4326008)(30864003)(478600001)(8936002)(6666004)(6512007)(41300700001)(6486002)(316002)(5660300002)(66476007)(66556008)(110136005)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFVnYnhNZzZhamMvYzhjRmU0YlpBS2hCalVOcWtnendETm9HUTU3c3d4RFIz?=
 =?utf-8?B?L09QbmZjVHhuN3JDZjZjaWwwY2J0UUJDcTMwWW4wNXcyK05kWFBDbUtYSnlH?=
 =?utf-8?B?L1FxajNqYkNEREJ5cGJjbHB0V0lVZmJPL2xBenJUd0xjaStEbTZ0TWFHZFdV?=
 =?utf-8?B?QTJWc2E3eWxyZ3VxbUxaNDV6ZXh5QkVwMnphdE1wdldqL25lcjV3anFteURO?=
 =?utf-8?B?b05URHZ2NHlHQ1hyMHk5YU5HMExqSXZRQytmQXlPemkzdW51RmZwMU16R0Mr?=
 =?utf-8?B?RjdXWWpoQnFQRjJGOFBTb1Y2Skw0Sms2WlhjMHNqYkZNQTRPa2Z4R3ByZGx5?=
 =?utf-8?B?allUd3hIRkFrTnlpU3NYa3FIaHFMaW1OTDc0STF1em12MGJLWW1pRjBSaVVO?=
 =?utf-8?B?bjU0bDFRQ2xINFZ5QWljWGN1cDhYVDIwWkFYWU1mVnRJSDJwVVo5SDRGaHBx?=
 =?utf-8?B?dU1HOE1odmNSRnBIWHA0bEJiTXcyaEdJS2pZeWQ3aHk0djlObVRGbDRVMjBD?=
 =?utf-8?B?VXpOTVlHL2xWSW1NeEw0Skh3M2RIcHlJRjFxZlM5YUlwdjN4VzJ3enhYM28v?=
 =?utf-8?B?UFdVNW5YdjhveTRyUmtGQ1VBbkJMWEdFWWJrSGE5eDNaeEdGNDdETXFSdWlP?=
 =?utf-8?B?VjhDb0kyMHZRR1N1TmRtQmZtR1VQUUJIWFF5YUZoTjBWa3VBa1BqZnByVkxr?=
 =?utf-8?B?K1FBd010RXM3dWRpTXNtQTNJYS92OTVMMExScHlUaWdud3F2OXNZNGorYnVZ?=
 =?utf-8?B?V1Y0SHFkbVNaZ3E1SG1zY0JWQS9naS9FdFNYT0FSc0IxUDJVNzNWazlDV0ZI?=
 =?utf-8?B?UkMxbjhxMGhvNnpvMjlEaHpPb0Y4VUY0cGpyNVJkQmRmQ2xGU0s5ZEU3WWRG?=
 =?utf-8?B?Z0tmeFhheVRZb1lRVTdqaU5IcHlKNWVNNVBEaktWTU9Uc2cvTU5NM2VTcGEw?=
 =?utf-8?B?K1RpdzNib1RKSzYxcjZOTnFGTHdmeFR1dCtYelhQM1NreEwvb2FlZmdvVmth?=
 =?utf-8?B?Q0RmREJyNkhacDhsQnpiQWxWbjQxZUNMZllXZFR5L205Um1DejhNdlUydHV0?=
 =?utf-8?B?dE5RN1daaUkxbms5cWhBZ1lOMkpWaEFYd3Y4NGdRbFkxU2szZjE2SkEwdXk1?=
 =?utf-8?B?WGQ3VHNxZlhMekxSeUtsVlA1LzBBNFpDL1FFM2xVUndQSmFCMnY3bUVucm1T?=
 =?utf-8?B?eFAvWkZMdm9La0ZPNDJsLzdlYWx2ajJ0LzJ3ODBvY1BPdC91b0xORUpubE1n?=
 =?utf-8?B?V2xVeERiZDZTZERMekY4bmVubWFqVEtUTEFmTWNJUXVWQmprbWdpL05naC9D?=
 =?utf-8?B?RkJLQmY2K2VoaEhBNG81NzRYTW9OU2tTTnR2aEZzdWh0U243MGNxWk5JdXdE?=
 =?utf-8?B?L3htRTU1TUw0bi9LcWxjajRGMytEYXB5dTVrOEdicDdObUp5QmRRejZEL2RF?=
 =?utf-8?B?cjk3eklrOG4rT3JXSzlZVVc0V1RJZGQxcWhJWHR3WVRUSzhLSEY2RmJDV25J?=
 =?utf-8?B?MkplVUN0M3NkbTR2ODFrTEZqWmtJOVJGWTRoNE9KSE8vWGZmT09vcVJtUFpq?=
 =?utf-8?B?OEYvUGNEVThtQTljSDdsakh6Z2hSbGJ6LzRVUGpja2FteUVJMjJ4Z3EzbXVX?=
 =?utf-8?B?eXFqQ1NhTW5VMXFGOVpaRHlnVUtpeElrUnI3R2RTYUNPTE04c00wcUNyZjRK?=
 =?utf-8?B?QmxsTXVUT2kvd1ZraU1SMjN5RUZ5ekViLzFralNGMGZSYlBZdDJFTm1USUFx?=
 =?utf-8?B?TGU5V28yMXdFZyt3RFRMRzlHcjhIcGNkemp5cnBOcDNYV2UwZEF0KzJieHlJ?=
 =?utf-8?B?d0VSbXJUb2RHdFFVL1ovTFNmcFhYSEhCU2FUb2YvNk5GUkNxRGkrelVMb3Jm?=
 =?utf-8?B?MW9pVnlQdnZQdk1ObUx3U3V4aXF0U1dOb09UN3M2elFadEZyL29LdnQyckVz?=
 =?utf-8?B?ZytBbFhDNVk5c2xnOTVYVXY1VkwrUTNUZk5wUTZuWnYwMFBoY0VwbVZVaDhs?=
 =?utf-8?B?WjNyb2V5cVcyUkRCc2tOYS81MGJXc3h5ZU1xWlJtdGFNbTV0VUFRQlBEM3JE?=
 =?utf-8?B?eTdQWGhiTVVzVEQ5dVN0T3ZJU1B0ZTBSeVUzNk8yY1p5aUVVdXVIL1Q4RFMw?=
 =?utf-8?B?QzVpVHBZS3JTZEwrR0MyazJRamJiMjhVdk9uMjNndVdDakViMVVYWW13bDVK?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37f0fb7d-e2b4-4de1-44c5-08dbc8fbea05
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2023 19:14:09.2830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wC+ytYjs2U4GKaKJApH2g3bAuwgeWSTPHGXDP5hYq8bkYLMNzak/U/1GXYE1eUoiYjdmktyKtfiVYwmsqD1o8trXXodrQOG47qwtxsRfBAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4570
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/9/2023 01:56, Tvrtko Ursulin wrote:
> On 06/10/2023 19:20, Jonathan Cavitt wrote:
>> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>>
>> The GuC firmware had defined the interface for Translation Look-Aside
>> Buffer (TLB) invalidation.  We should use this interface when
>> invalidating the engine and GuC TLBs.
>> Add additional functionality to intel_gt_invalidate_tlb, invalidating
>> the GuC TLBs and falling back to GT invalidation when the GuC is
>> disabled.
>> The invalidation is done by sending a request directly to the GuC
>> tlb_lookup that invalidates the table.  The invalidation is submitted as
>> a wait request and is performed in the CT event handler.  This means we
>> cannot perform this TLB invalidation path if the CT is not enabled.
>> If the request isn't fulfilled in two seconds, this would constitute
>> an error in the invalidation as that would constitute either a lost
>> request or a severe GuC overload.
>>
>> With this new invalidation routine, we can perform GuC-based GGTT
>> invalidations.  GuC-based GGTT invalidation is incompatible with
>> MMIO invalidation so we should not perform MMIO invalidation when
>> GuC-based GGTT invalidation is expected.
>>
>> Purpose of xarray:
>> The tlb_lookup table is allocated as an xarray because the set of
>> pending TLB invalidations may have no upper bound.  The consequence of
>> this is that all actions interfacing with this table need to use the
>> xarray functions, such as xa_alloc_cyclic_irq for array insertion.
>>
>> Purpose of must_wait_woken:
>> Our wait for the G2H ack for the completion of a TLB invalidation is
>> mandatory; we must wait for the HW to confirm that the physical
>> addresses are no longer accessible before we return those to the system.
>>
>> On switching to using the wait_woken() convenience routine, we
>> introduced ourselves to an issue where wait_woken() may complete early
>> under a kthread that is stopped. Since we send a TLB invalidation when
>> we try to release pages from the shrinker, we can be called from any
>> process; including kthreads.
>>
>> Using wait_woken() from any process context causes another issue. The
>> use of is_kthread_should_stop() assumes that any task with PF_KTHREAD
>> set was made by kthread_create() and has called set_kthread_struct().
>> This is not true for the raw kernel_thread():
>
> This explanation misses the main point of my ask - which is to explain 
> why a simpler scheme isn't sufficient. Simpler scheme aka not needed 
> the xarray or any flavour of wait_token().
>
> In other words it is obvious we have to wait for the invalidation ack, 
> but not obvious why we need a complicated scheme.
The alternative being to simply serialise all TLB invalidation requests? 
Thus, no complex tracking required as there is only one in flight at a 
time? That seems inefficient and a potential performance impact if a 
bunch of invalidations are required back to back. But given that the 
current scheme is global invalidation only (no support for ranges / per 
page invalidation yet), is it possible to get multiple back-to-back 
requests?

>
>> BUG: kernel NULL pointer dereference, address: 0000000000000000
>> [ 3089.759660] Call Trace:
>> [ 3089.762110]  wait_woken+0x4f/0x80
>> [ 3089.765496]  guc_send_invalidate_tlb+0x1fe/0x310 [i915]
>> [ 3089.770725]  ? syscall_return_via_sysret+0xf/0x7f
>> [ 3089.775426]  ? do_wait_intr_irq+0xb0/0xb0
>> [ 3089.779430]  ? __switch_to_asm+0x40/0x70
>> [ 3089.783349]  ? __switch_to_asm+0x34/0x70
>> [ 3089.787273]  ? __switch_to+0x7a/0x3e0
>> [ 3089.790930]  ? __switch_to_asm+0x34/0x70
>> [ 3089.794883]  intel_guc_invalidate_tlb_full+0x92/0xa0 [i915]
>> [ 3089.800487]  intel_invalidate_tlb_full+0x94/0x190 [i915]
>> [ 3089.805824]  intel_invalidate_tlb_full_sync+0x1b/0x30 [i915]
>> [ 3089.811508]  __i915_gem_object_unset_pages+0x138/0x150 [i915]
>> [ 3089.817279]  __i915_gem_object_put_pages+0x25/0x90 [i915]
>> [ 3089.822706]  i915_gem_shrink+0x532/0x7e0 [i915]
>> [ 3089.827264]  i915_gem_shrinker_scan+0x3d/0xd0 [i915]
>> [ 3089.832230]  do_shrink_slab+0x12c/0x2a0
>> [ 3089.836065]  shrink_slab+0xad/0x2b0
>> [ 3089.839550]  shrink_node+0xcc/0x410
>> [ 3089.843035]  do_try_to_free_pages+0xc6/0x380
>> [ 3089.847306]  try_to_free_pages+0xec/0x1c0
>> [ 3089.851312]  __alloc_pages_slowpath+0x3ad/0xd10
>> [ 3089.855845]  ? update_sd_lb_stats+0x636/0x710
>> [ 3089.860204]  __alloc_pages_nodemask+0x2d5/0x310
>> [ 3089.864737]  new_slab+0x265/0xa80
>> [ 3089.868053]  ___slab_alloc+0y_to_free_pages+0xec/0x1c0
>> [ 3089.871798]  ? copy_process+0x1e5/0x1a00
>> [ 3089.875717]  ? load_balance+0x165/0xb20
>> [ 3089.879555]  __slab_alloc+0x1c/0x30
>> [ 3089.883047]  kmem_cache_alloc_node+0x9f/0x240
>> [ 3089.887397]  ? copy_process+0x1e5/0x1a00
>> [ 3089.891314]  copy_process+0x1e5/0x1a00
>> [ 3089.895058]  ? __switch_to_asm+0x40/0x70
>> [ 3089.879555]  __slab_alloc+0x1c/0x30
>> [ 3089.883047]  kmem_cache_alloc_node+0x9f/0x240
>> [ 3089.887397]  ? copy_process+0x1e5/0x1a00
>> [ 3089.891314]  copy_process+0x1e5/0x1a00
>> [ 3089.895058]  ? __switch_to_asm+0x40/0x70
>> [ 3089.898977]  ? __switch_to_asm+0x34/0x70
>> [ 3089.902903]  ? __switch_to_asm+0x40/0x70
>> [ 3089.906828]  ? __switch_to_asm+0x34/0x70
>> [ 3089.910745]  _do_fork+0x83/0x350
>> [ 3089.913969]  ? __switch_to+0x7a/0x3e0
>> [ 3089.917626]  ? __switch_to_asm+0x34/0x70
>> [ 3089.921545]  kernel_thread+0x58/0x80
>> [ 3089.925124]  ? kthread_park+0x80/0x80
>> [ 3089.928788]  kthreadd+0x162/0x1b0
>> [ 3089.932098]  ? kthread_create_on_cpu+0xa0/0xa0
>> [ 3089.936538]  ret_from_fork+0x1f/0x40
>>
>> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
>> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
>> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> Signed-off-by: Fei Yang <fei.yang@intel.com>
>> CC: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  34 ++-
>>   drivers/gpu/drm/i915/gt/intel_tlb.c           |  15 +-
>>   .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |  33 +++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  22 ++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |   4 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   1 +
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 200 +++++++++++++++++-
>>   7 files changed, 297 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 4d7d88b92632b..a1f7bdc602996 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -206,22 +206,38 @@ static void gen8_ggtt_invalidate(struct 
>> i915_ggtt *ggtt)
>>       intel_uncore_write_fw(uncore, GFX_FLSH_CNTL_GEN6, 
>> GFX_FLSH_CNTL_EN);
>>   }
>>   +static void guc_ggtt_ct_invalidate(struct intel_gt *gt)
>> +{
>> +    struct intel_uncore *uncore = gt->uncore;
>> +    intel_wakeref_t wakeref;
>> +
>> +    with_intel_runtime_pm_if_active(uncore->rpm, wakeref) {
>> +        struct intel_guc *guc = &gt->uc.guc;
>> +
>> +        intel_guc_invalidate_tlb_guc(guc);
>> +    }
>> +}
>> +
>>   static void guc_ggtt_invalidate(struct i915_ggtt *ggtt)
>>   {
>>       struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    struct intel_gt *gt;
>>   -    gen8_ggtt_invalidate(ggtt);
>> -
>> -    if (GRAPHICS_VER(i915) >= 12) {
>> -        struct intel_gt *gt;
>> +    if (!HAS_GUC_TLB_INVALIDATION(i915))
>> +        gen8_ggtt_invalidate(ggtt);
>>   -        list_for_each_entry(gt, &ggtt->gt_list, ggtt_link)
>> +    list_for_each_entry(gt, &ggtt->gt_list, ggtt_link) {
>> +        if (HAS_GUC_TLB_INVALIDATION(i915) &&
>> +            intel_guc_is_ready(&gt->uc.guc)) {
>> +            guc_ggtt_ct_invalidate(gt);
>> +        } else if (GRAPHICS_VER(i915) >= 12) {
>>               intel_uncore_write_fw(gt->uncore,
>>                             GEN12_GUC_TLB_INV_CR,
>>                             GEN12_GUC_TLB_INV_CR_INVALIDATE);
>> -    } else {
>> -        intel_uncore_write_fw(ggtt->vm.gt->uncore,
>> -                      GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> +        } else {
>> +            intel_uncore_write_fw(gt->uncore,
>> +                          GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> +        }
>>       }
>>   }
>>   @@ -1243,7 +1259,7 @@ static int gen8_gmch_probe(struct i915_ggtt 
>> *ggtt)
>>           ggtt->vm.raw_insert_page = gen8_ggtt_insert_page;
>>       }
>>   -    if (intel_uc_wants_guc(&ggtt->vm.gt->uc))
>> +    if (intel_uc_wants_guc_submission(&ggtt->vm.gt->uc))
>>           ggtt->invalidate = guc_ggtt_invalidate;
>>       else
>>           ggtt->invalidate = gen8_ggtt_invalidate;
>> diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c 
>> b/drivers/gpu/drm/i915/gt/intel_tlb.c
>> index 139608c30d978..1278622b9554d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_tlb.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
>> @@ -12,6 +12,7 @@
>>   #include "intel_gt_print.h"
>>   #include "intel_gt_regs.h"
>>   #include "intel_tlb.h"
>> +#include "uc/intel_guc.h"
>>     /*
>>    * HW architecture suggest typical invalidation time at 40us,
>> @@ -131,11 +132,23 @@ void intel_gt_invalidate_tlb_full(struct 
>> intel_gt *gt, u32 seqno)
>>           return;
>>         with_intel_gt_pm_if_awake(gt, wakeref) {
>> +        struct intel_guc *guc = &gt->uc.guc;
>> +
>>           mutex_lock(&gt->tlb.invalidate_lock);
>>           if (tlb_seqno_passed(gt, seqno))
>>               goto unlock;
>>   -        mmio_invalidate_full(gt);
>> +        if (HAS_GUC_TLB_INVALIDATION(gt->i915)) {
>> +            /*
>> +             * Only perform GuC TLB invalidation if GuC is ready.
>> +             * If GuC is not ready, then there are no TLBs to
>> +             * invalidate.  Ergo, skip invalidation.
>> +             */
>> +            if (intel_guc_is_ready(guc))
>> +                intel_guc_invalidate_tlb_engines(guc);
>
> What was the answer to John's question on why it is okay to just skip 
> and not maybe fall back to mmio?
>
>> +        } else {
>> +            mmio_invalidate_full(gt);
>> +        }
>>             write_seqcount_invalidate(&gt->tlb.seqno);
>>   unlock:
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h 
>> b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> index f359bef046e0b..33f253410d0c8 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> @@ -138,6 +138,8 @@ enum intel_guc_action {
>>       INTEL_GUC_ACTION_REGISTER_CONTEXT_MULTI_LRC = 0x4601,
>>       INTEL_GUC_ACTION_CLIENT_SOFT_RESET = 0x5507,
>>       INTEL_GUC_ACTION_SET_ENG_UTIL_BUFF = 0x550A,
>> +    INTEL_GUC_ACTION_TLB_INVALIDATION = 0x7000,
>> +    INTEL_GUC_ACTION_TLB_INVALIDATION_DONE = 0x7001,
>>       INTEL_GUC_ACTION_STATE_CAPTURE_NOTIFICATION = 0x8002,
>>       INTEL_GUC_ACTION_NOTIFY_FLUSH_LOG_BUFFER_TO_FILE = 0x8003,
>>       INTEL_GUC_ACTION_NOTIFY_CRASH_DUMP_POSTED = 0x8004,
>> @@ -181,4 +183,35 @@ enum intel_guc_state_capture_event_status {
>>     #define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK 0x000000FF
>>   +#define INTEL_GUC_TLB_INVAL_TYPE_MASK    REG_GENMASK(7, 0)
>> +#define INTEL_GUC_TLB_INVAL_MODE_MASK    REG_GENMASK(11, 8)
>> +#define INTEL_GUC_TLB_INVAL_FLUSH_CACHE REG_BIT(31)
>> +
>> +enum intel_guc_tlb_invalidation_type {
>> +    INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
>> +    INTEL_GUC_TLB_INVAL_GUC = 0x3,
>> +};
>> +
>> +/*
>> + * 0: Heavy mode of Invalidation:
>> + * The pipeline of the engine(s) for which the invalidation is 
>> targeted to is
>> + * blocked, and all the in-flight transactions are guaranteed to be 
>> Globally
>> + * Observed before completing the TLB invalidation
>> + * 1: Lite mode of Invalidation:
>> + * TLBs of the targeted engine(s) are immediately invalidated.
>> + * In-flight transactions are NOT guaranteed to be Globally Observed 
>> before
>> + * completing TLB invalidation.
>> + * Light Invalidation Mode is to be used only when
>> + * it can be guaranteed (by SW) that the address translations remain 
>> invariant
>> + * for the in-flight transactions across the TLB invalidation. In 
>> other words,
>> + * this mode can be used when the TLB invalidation is intended to 
>> clear out the
>> + * stale cached translations that are no longer in use. Light 
>> Invalidation Mode
>> + * is much faster than the Heavy Invalidation Mode, as it does not 
>> wait for the
>> + * in-flight transactions to be GOd.
>> + */
>> +enum intel_guc_tlb_inval_mode {
>> +    INTEL_GUC_TLB_INVAL_MODE_HEAVY = 0x0,
>> +    INTEL_GUC_TLB_INVAL_MODE_LITE = 0x1,
>> +};
>> +
>>   #endif /* _ABI_GUC_ACTIONS_ABI_H */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index 6c392bad29c19..88deb43bbdc48 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -79,6 +79,18 @@ struct intel_guc {
>>        */
>>       atomic_t outstanding_submission_g2h;
>>   +    /** @tlb_lookup: xarray to store all pending TLB invalidation 
>> requests */
>> +    struct xarray tlb_lookup;
>> +
>> +    /**
>> +     * @serial_slot: id to the initial waiter created in tlb_lookup,
>> +     * which is used only when failed to allocate new waiter.
>> +     */
>> +    u32 serial_slot;
>> +
>> +    /** @next_seqno: the next id (sequence no.) to allocate. */
>> +    u32 next_seqno;
>> +
>>       /** @interrupts: pointers to GuC interrupt-managing functions. */
>>       struct {
>>           bool enabled;
>> @@ -296,6 +308,11 @@ struct intel_guc {
>>   #define MAKE_GUC_VER_STRUCT(ver)    MAKE_GUC_VER((ver).major, 
>> (ver).minor, (ver).patch)
>>   #define GUC_SUBMIT_VER(guc) 
>> MAKE_GUC_VER_STRUCT((guc)->submission_version)
>>   +struct intel_guc_tlb_wait {
>> +    struct wait_queue_head wq;
>> +    bool busy;
>> +};
>> +
>>   static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>>   {
>>       return container_of(log, struct intel_guc, log);
>> @@ -418,6 +435,11 @@ static inline bool intel_guc_is_supported(struct 
>> intel_guc *guc)
>>       return intel_uc_fw_is_supported(&guc->fw);
>>   }
>>   +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
>> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, u32 size,
>> +                    u32 len, u32 seqno);
>> +
>>   static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>>   {
>>       return intel_uc_fw_is_enabled(&guc->fw);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index 6e22af31513a5..e7ac8402245b7 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -1115,6 +1115,9 @@ static int ct_process_request(struct 
>> intel_guc_ct *ct, struct ct_incoming_msg *r
>>       case INTEL_GUC_ACTION_NOTIFY_EXCEPTION:
>>           ret = intel_guc_crash_process_msg(guc, action);
>>           break;
>> +    case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>> +        ret = intel_guc_tlb_invalidation_done(guc, request->size, 
>> len, payload[0]);
This is still non-standard with respect to all other notification handlers.

The convention is to pass '(guc, payload, len)'. The only exception is 
the two exception notifications above which have no payload and share a 
common handler for two different actions. This is just a normal single 
action, with payload handler. So should match the convention of the others.

>> +        break;
>>       default:
>>           ret = -EOPNOTSUPP;
>>           break;
>> @@ -1186,6 +1189,7 @@ static int ct_handle_event(struct intel_guc_ct 
>> *ct, struct ct_incoming_msg *requ
>>       switch (action) {
>>       case INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE:
>>       case INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE:
>> +    case INTEL_GUC_ACTION_TLB_INVALIDATION_DONE:
>>           g2h_release_space(ct, request->size);
>>       }
>>   diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> index b4d56eccfb1f0..a7c9874e122a3 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>> @@ -22,6 +22,7 @@
>>   /* Payload length only i.e. don't include G2H header length */
>>   #define G2H_LEN_DW_SCHED_CONTEXT_MODE_SET    2
>>   #define G2H_LEN_DW_DEREGISTER_CONTEXT        1
>> +#define G2H_LEN_DW_INVALIDATE_TLB        1
>>     #define GUC_CONTEXT_DISABLE        0
>>   #define GUC_CONTEXT_ENABLE        1
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 2cce5ec1ff00d..0c5ccda1b3e87 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1798,9 +1798,11 @@ static void __guc_reset_context(struct 
>> intel_context *ce, intel_engine_mask_t st
>>     void intel_guc_submission_reset(struct intel_guc *guc, 
>> intel_engine_mask_t stalled)
>>   {
>> +    struct intel_guc_tlb_wait *wait;
>>       struct intel_context *ce;
>>       unsigned long index;
>>       unsigned long flags;
>> +    unsigned long i;
>>         if (unlikely(!guc_submission_initialized(guc))) {
>>           /* Reset called during driver load? GuC not yet 
>> initialised! */
>> @@ -1826,6 +1828,18 @@ void intel_guc_submission_reset(struct 
>> intel_guc *guc, intel_engine_mask_t stall
>>         /* GuC is blown away, drop all references to contexts */
>>       xa_destroy(&guc->context_lookup);
>> +
>> +    /*
>> +     * The full GT reset will have cleared the TLB caches and 
>> flushed the
>> +     * G2H message queue; we can release all the blocked waiters.
>> +     *
>> +     * This is safe to do unlocked because the xarray is not dependent
>> +     * on the GT reset, and there's a separate execution path for TLB
>> +     * invalidations on GT reset, and there's a large window of time
>> +     * between the GT reset and GuC becoming available.
>> +     */
>> +    xa_for_each(&guc->tlb_lookup, i, wait)
>> +        wake_up(&wait->wq);
>
> If you are confident there can be no failures to wake up someone, who 
> maybe just added themselves to the xarray (via put pages for 
> instance), while reset in ongoing. Or even removed themselves after 
> say timing out the wait and so freed their entry...
>
>>   }
>>     static void guc_cancel_context_requests(struct intel_context *ce)
>> @@ -1948,6 +1962,50 @@ void intel_guc_submission_reset_finish(struct 
>> intel_guc *guc)
>>   static void destroyed_worker_func(struct work_struct *w);
>>   static void reset_fail_worker_func(struct work_struct *w);
>>   +static int init_tlb_lookup(struct intel_guc *guc)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +    int err;
>> +
>> +    if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
>> +        return 0;
>> +
>> +    xa_init_flags(&guc->tlb_lookup, XA_FLAGS_ALLOC);
>> +
>> +    wait = kzalloc(sizeof(*wait), GFP_KERNEL);
>> +    if (!wait)
>> +        return -ENOMEM;
>> +
>> +    init_waitqueue_head(&wait->wq);
>> +
>> +    /* Preallocate a shared id for use under memory pressure. */
>> +    err = xa_alloc_cyclic_irq(&guc->tlb_lookup, &guc->serial_slot, 
>> wait,
>> +                  xa_limit_32b, &guc->next_seqno, GFP_KERNEL);
>> +    /* Only error if out of memory, not when busy (list full)*/
>> +    if (err == -ENOMEM) {
>> +        kfree(wait);
>> +        return err;
>> +    }
>
> I agreed with John here that only looking at ENOMEM reads odd and I 
> did not see that answered. Did I miss it?
>
> Otherwise, I _know_ it is not likely to get any other error having 
> *just* created a new xarray, but still, why not simply catch all? It 
> is not like the slot fallback code at runtime would handle 
> guc->serial_slot being empty?! It appears it would just explode in 
> guc_send_invalidate_tlb if it would hit it..
To be clear, if you are going to write an error handler that checks for 
one specific error and only that one error, i.e. it completely ignores 
any other error, then it needs a big clear comment as to exactly why it 
is safe and valid to ignore any and all other errors. Saying 'do not 
error out when busy' makes no sense for an an allocation function. This 
is not acquiring a resource. This is allocating a tracking structure. 
How can it be busy? How can it not be a fatal problem if a tracking 
structure failed to allocate due to being 'busy'?

And even if 'busy' is safe to ignore, the code is not explicitly 
checking for EBUSY and letting that through. What if the call were to 
return EINVAL, EINTR, EANYTHINGELSEATALL? If you have a known safe error 
case then you must explicitly check for that and fail on anything else. 
Not fail on one specific case and pass through anything else.

>
>> +
>> +    return 0;
>> +}
>> +
>> +static void fini_tlb_lookup(struct intel_guc *guc)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +
>> +    if (!HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915))
>> +        return;
>> +
>> +    wait = xa_load(&guc->tlb_lookup, guc->serial_slot);
>> +    if (wait) {
>> +        guc_dbg(guc, "fini_tlb_lookup: Unexpected item in 
>> tlb_lookup\n");
>
> Hm wait, why is this unexpected when init_tlb_lookup() pre-allocated 
> that entry? Who frees it? guc_send_invalidate_tlb() does not appear to.
The original version of this code was 'BUG_ON(wait->busy)';. Should the 
dbg print be conditional on wait->busy being set? And should it be an 
error not a debug print?

John.

>
>> +        kfree(wait);
>> +    }
>> +
>> +    xa_destroy(&guc->tlb_lookup);
>> +}
>> +
>>   /*
>>    * Set up the memory resources to be shared with the GuC (via the 
>> GGTT)
>>    * at firmware loading time.
>> @@ -1966,11 +2024,15 @@ int intel_guc_submission_init(struct 
>> intel_guc *guc)
>>               return ret;
>>       }
>>   +    ret = init_tlb_lookup(guc);
>> +    if (ret)
>> +        goto destroy_pool;
>> +
>>       guc->submission_state.guc_ids_bitmap =
>>           bitmap_zalloc(NUMBER_MULTI_LRC_GUC_ID(guc), GFP_KERNEL);
>>       if (!guc->submission_state.guc_ids_bitmap) {
>>           ret = -ENOMEM;
>> -        goto destroy_pool;
>> +        goto destroy_tlb;
>>       }
>>         guc->timestamp.ping_delay = (POLL_TIME_CLKS / 
>> gt->clock_frequency + 1) * HZ;
>> @@ -1979,9 +2041,10 @@ int intel_guc_submission_init(struct intel_guc 
>> *guc)
>>         return 0;
>>   +destroy_tlb:
>> +    fini_tlb_lookup(guc);
>>   destroy_pool:
>>       guc_lrc_desc_pool_destroy_v69(guc);
>> -
>>       return ret;
>>   }
>>   @@ -1994,6 +2057,7 @@ void intel_guc_submission_fini(struct 
>> intel_guc *guc)
>>       guc_lrc_desc_pool_destroy_v69(guc);
>>       i915_sched_engine_put(guc->sched_engine);
>>       bitmap_free(guc->submission_state.guc_ids_bitmap);
>> +    fini_tlb_lookup(guc);
>>       guc->submission_initialized = false;
>>   }
>>   @@ -4624,6 +4688,138 @@ g2h_context_lookup(struct intel_guc *guc, 
>> u32 ctx_id)
>>       return ce;
>>   }
>>   +static void wait_wake_outstanding_tlb_g2h(struct intel_guc *guc, 
>> u32 seqno)
>> +{
>> +    struct intel_guc_tlb_wait *wait;
>> +    unsigned long flags;
>> +
>> +    xa_lock_irqsave(&guc->tlb_lookup, flags);
>> +    wait = xa_load(&guc->tlb_lookup, seqno);
>> +
>> +    if (wait)
>> +        wake_up(&wait->wq);
>> +    else
>> +        guc_dbg(guc,
>> +            "Stale TLB invalidation response with seqno %d\n", seqno);
>> +
>> +    xa_unlock_irqrestore(&guc->tlb_lookup, flags);
>> +}
>> +
>> +int intel_guc_tlb_invalidation_done(struct intel_guc *guc, u32 size, 
>> u32 len, u32 seqno)
>> +{
>> +    /* Check for underflow */
>> +    if (unlikely(len < 1 || len > size))
>> +        return -EPROTO;
>
> These check are not valid for any message/action type 
> ct_process_request() can receive?
>
>> +
>> +    wait_wake_outstanding_tlb_g2h(guc, seqno);
>> +    return 0;
>> +}
>> +
>> +static long must_wait_woken(struct wait_queue_entry *wq_entry, long 
>> timeout)
>> +{
>> +    /*
>> +     * This is equivalent to wait_woken() with the exception that
>> +     * we do not wake up early if the kthread task has been completed.
>> +     * As we are called from page reclaim in any task context,
>> +     * we may be invoked from stopped kthreads, but we *must*
>> +     * complete the wait from the HW .
>> +     *
>> +     * A second problem is that since we are called under reclaim
>> +     * and wait_woken() inspected the thread state, it makes an invalid
>> +     * assumption that all PF_KTHREAD tasks have set_kthread_struct()
>> +     * called upon them, and will trigger a GPF in 
>> is_kthread_should_stop().
>> +     */
>> +    do {
>> +        set_current_state(TASK_UNINTERRUPTIBLE);
>> +        if (wq_entry->flags & WQ_FLAG_WOKEN)
>> +            break;
>> +
>> +        timeout = schedule_timeout(timeout);
>> +    } while (timeout);
>> +    __set_current_state(TASK_RUNNING);
>> +
>> +    /* See wait_woken() and woken_wake_function() */
>> +    smp_store_mb(wq_entry->flags, wq_entry->flags & ~WQ_FLAG_WOKEN);
>> +
>> +    return timeout;
>> +}
>> +
>> +static int guc_send_invalidate_tlb(struct intel_guc *guc, enum 
>> intel_guc_tlb_inval_mode type)
>> +{
>> +    struct intel_guc_tlb_wait _wq, *wq = &_wq;
>> +    DEFINE_WAIT_FUNC(wait, woken_wake_function);
>> +    int err;
>> +    u32 seqno;
>> +    u32 action[] = {
>> +        INTEL_GUC_ACTION_TLB_INVALIDATION,
>> +        0,
>> +        REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
>> +            REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
>> +                       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
>> +            INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
>> +    };
>> +    u32 size = ARRAY_SIZE(action);
>> +
>> +    init_waitqueue_head(&_wq.wq);
>> +
>> +    if (xa_alloc_cyclic_irq(&guc->tlb_lookup, &seqno, wq,
>> +                xa_limit_32b, &guc->next_seqno,
>> +                GFP_ATOMIC | __GFP_NOWARN) < 0) {
>> +        /* Under severe memory pressure? Serialise TLB allocations */
>> +        xa_lock_irq(&guc->tlb_lookup);
>> +        wq = xa_load(&guc->tlb_lookup, guc->serial_slot);
>> +        wait_event_lock_irq(wq->wq,
>> +                    !READ_ONCE(wq->busy),
>> +                    guc->tlb_lookup.xa_lock);
>> +        /*
>> +         * Update wq->busy under lock to ensure only one waiter can
>> +         * issue the TLB invalidation command using the serial slot 
>> at a
>> +         * time. The condition is set to true before releasing the lock
>> +         * so that other caller continue to wait until woken up again.
>> +         */
>> +        wq->busy = true;
>> +        xa_unlock_irq(&guc->tlb_lookup);
>> +
>> +        seqno = guc->serial_slot;
>> +    }
>> +
>> +    action[1] = seqno;
>> +
>> +    add_wait_queue(&wq->wq, &wait);
>> +
>> +    /*
>> +     * This is a critical reclaim path and thus we must loop here:
>> +     * We cannot block for anything that is on the GPU.
>> +     */
>> +    err = intel_guc_send_busy_loop(guc, action, size, 
>> G2H_LEN_DW_INVALIDATE_TLB, true);
>> +    if (err)
>> +        goto out;
>> +
>> +    if (!must_wait_woken(&wait, 
>> intel_guc_ct_expected_delay(&guc->ct))) {
>> +        guc_err(guc,
>> +            "TLB invalidation response timed out for seqno %u\n", 
>> seqno);
>> +        err = -ETIME;
>> +    }
>> +out:
>> +    remove_wait_queue(&wq->wq, &wait);
>> +    if (seqno != guc->serial_slot)
>> +        xa_erase_irq(&guc->tlb_lookup, seqno);
>> +
>> +    return err;
>> +}
>> +
>> +/* Full TLB invalidation */
>> +int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
>> +{
>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
>> +}
>> +
>> +/* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
>> +int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
>> +{
>> +    return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
>> +}
>> +
>>   int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
>>                         const u32 *msg,
>>                         u32 len)
>
> Regards,
>
> Tvrtko

