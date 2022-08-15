Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B75594704
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 01:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 023F0D77CB;
	Mon, 15 Aug 2022 23:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555E9D77AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 23:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660607852; x=1692143852;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xoctMPdMo/r8Pqk4isANghnVwfLk85eDX2n6LBs7NHc=;
 b=Y/K4dMFXhJD2npAXcsjeHTp+ETWzbyh5FsxXfjoFtF4XuZXJIwhTcFwj
 wSYAjGbVLbyztU1hHtFkWzdKGRAgsNwEcxogXLm0JCy1WQ9NwPfU4QIyh
 t5/ADbErl4ETs0UOt6OUpK+9J+zE26D/DyqrRH7ipTEFROrvGCPT+E6iC
 UPT65XJHICEa4Ac7xOrGI9+TsZ81sBNSCkafQfe8JVrVQLKzCUFZxMMg7
 ggrPScVUbqB+1Fdwo3cC9oWAMT5jmauqOXJP/zzAsbR19iHxjl3yXVuIV
 P177k+fmJ9ifJQF5UWQiW14hWmuwN9o2R/Tr4CmW6sTxdS3kkS4zJ3jtb w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="318074295"
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="318074295"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 16:57:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,239,1654585200"; d="scan'208";a="603339811"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 15 Aug 2022 16:57:30 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 16:57:30 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 16:57:29 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 16:57:28 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 16:57:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ikuwkMwfWjnvZ1ukqbVsSKSC96hXOPc/LeAf3lq002KzSBgnc6I691wpYes09lavELjK419pn3/OnQ0k1+xeMVvqV5uh6wKyBbHGeY7bEBaaX3Bp7mirNt3wytgjQ5BjXW+bu2cSpR2yV/7AzY2o03q+dXFS0AVMO0o53ypw5lhDr25uFIfpAfhs3IjPFcrAK7TCrX2iHO7Sdo6oAzm4s+FwKNunzAwcCokdJG37MjJT5QSyWFop+Sta/gEdD/hZ1CFKcFL47KG1/u0IEuxWyXLtZMAkga4/Ppbw9c2jHled3Jm0bdVW1ONNGcoVuVr8/kRVcZVdgCl4YFaR4dzsNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TsoGa/OMgy9+AVfk15clD1qsDk5BQKTkNOGIDiLrf3w=;
 b=EC54Gad1ttJhQZ5fQfdxVS+YYr1yP4oqXOXCxStOSxgflzvGBec8u60UXPOQF8pefENSFElTTQLbif+/tqXzsJvUgnGb5pKznSH0IyCukYzFa7DBhLrPDaEJTONh89RXKzw74uZjqNr144F1cNysyzVdBAmbFVOhbd6bVMEnKQMyDhQvJZfQ4WoEsdwtbQU62yf2VhGPUQbzJrWW2MCtXTdyDZPPXMFVK4yhy83eBFqG2Nuww54Mlto7rG7lLbzKU/+B1wY3ANelaO5cVzUkDD/1GyvjiK+w2M5QZh/qY1/kZFax4zuKj5OLn8xsIrzmPr2eSPRswrdL3mzp0SaIvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BY5PR11MB4021.namprd11.prod.outlook.com (2603:10b6:a03:191::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.17; Mon, 15 Aug
 2022 23:57:26 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::4db8:1f01:f830:305e%5]) with mapi id 15.20.5504.028; Mon, 15 Aug 2022
 23:57:26 +0000
Message-ID: <131a60aa-9fe7-461f-1176-0ac2e0a4ead1@intel.com>
Date: Mon, 15 Aug 2022 16:57:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.12.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
 <20220815160134.1527085-3-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220815160134.1527085-3-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0P220CA0027.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::18) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44c3a045-46b2-4797-b8be-08da7f19e772
X-MS-TrafficTypeDiagnostic: BY5PR11MB4021:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UnxGV+SVMZZAdNIH5fY2pIJyjb2lPBTA88D81ewOro8QMepS3IqZwQibu+tGHNzPiZrmjXuzwZthhhc8Zai1zMo7d3BhWKZ9qxo1GiR//+V8YoM5B9ylFIoAtlwsFcnKXd9fVcOF9rB6zc/bPFRGwe5X4gPfdu4Jb4ML+aZNUygtj6Rdfqyivv3itU81n5pA+aIgY1TT7QFgwYxVLtEu7pkdCgALD3PmaLdisQXdj8xOCTMghC+jiRJus5WF+PCxcQVVlsfjCbuB/86SfOYMGYtixEcpB/bFEDuPj9huDLRG++nhPKwa+U/iBqjoWskx46YC9/LjnyXQ6DOgNJY4RrAiwsw2XeHFzZGre4L2ORLPrbaCfkvmm0L6MFrLJV9pcdIVKma38O1QSfru0m+zbtAvWhtVTZBsC7Zetsg+V5LeHiJMkGWDsL61SUhEYZfempxIdpJm597B9VSbRjvDCNEQuCulTTb1zx2yqamVuaGbiifMXY58tACza0+DvmQy1Ru1itV5cKYSss9NER/Br8PzaYICaA2tR//FhunApTbnMCc52pHUyiCw9pAZHQkGfJAhSopI2G9YfJ5Mr7v/2bed3BlAX9yu9RM19zc85N/hZrxu1TrkGkpazTKiBotp8Swe7iyEwiL7cIgp/zINjyH+qAM9wjdmC32UEO11YEZKDHLGSprFP2qZfqFd/TKM4sALQsSReeiUaMnCpgbxP1qVFI1IoTTWSAYuuDmtoJx0dW2ykZtQSJ8APOmR84DGUIE7BsE+fVP2ssdOmuPhzvIvYPnBOLkX7uxrMTiTQSt90Zfd4w56+Qu1fiETAQT1XyR23zY1DyM3I1nNdbqFyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(39860400002)(376002)(346002)(136003)(366004)(30864003)(316002)(5660300002)(2906002)(82960400001)(86362001)(53546011)(41300700001)(6506007)(31696002)(38100700002)(6512007)(6486002)(478600001)(2616005)(186003)(26005)(83380400001)(8676002)(66946007)(66556008)(66476007)(31686004)(8936002)(36756003)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFJEQzFJQmxLV1dwWU5IQWZucWlGeGdlS09OTnJ4MHJHdTNnN3FIOWZCYVZS?=
 =?utf-8?B?N2E3V3p1L21YbldPem4ycjBPb1krUmMxMUVZenlGczNWSExTWUE5T1U4YUw0?=
 =?utf-8?B?bW9aaS9MR2svYUF6RW4yK0picXlZUmZxQUNwdCt0dHUxb2tCYTk4ZDliS01D?=
 =?utf-8?B?WWpGL3BCbnJKQ2tKeWlkVkZKS3VFaC9RS0xmTFU3M3licXRwSjYwQmpLUXNG?=
 =?utf-8?B?L1c1dC9QS0pmc3ljTy9CRDRUcDJIdFBYNTlMdDdJUWdVUWMzSzFCNmxUVVVy?=
 =?utf-8?B?dVdudkZ6TTVEcW9EWjArV3BtRThwSDJMMG9peVR6NWtqNkFOd0tRaVVNVDFn?=
 =?utf-8?B?NDd2LzZ1T0NQMWpxdWpVRXpOTEh5cFRlWTBtMHFEUmZwM2xqcTFyaXRxTXgy?=
 =?utf-8?B?cWpWUWErczM3RnJBVUpyL1pBcGIzOUpISnJuZFN1STBUd3VRMVBsUVRQL3ZZ?=
 =?utf-8?B?dGdNR0xnZlcraVRpditqNzZDbjQ5dEVDc1JBTEZjTUZOYnFPVEhEenNDeDhx?=
 =?utf-8?B?VTd0aWlLY3VKaC9xK2VPTkY5MWlzRmkwZDc4RTdYNFpyZkxXallCU1d2bzZ0?=
 =?utf-8?B?SG1PY25Zdlp2ekFHbGM4VWFDeGxlb2d0YWt3UUpPOWlIeGRENWhLU2d2QlQr?=
 =?utf-8?B?ejRhWkxJaTJrT0U0cnU1c3FYaVNzdWNxdHV4eGNWbVJhb3o3NXl3b1hJVlZY?=
 =?utf-8?B?emlQQXJ1Z0xIbmd0Q1ltZzVIdFVzTlR0OUk5dHFXYTFVckhrT3h0R0hNREpH?=
 =?utf-8?B?bkYyUG0wRHVXY0w0QVFtM09qVlJMNTBXSHNVVmdDc0MzNnhPNUx4eXR1S2FP?=
 =?utf-8?B?TkNYVlYxQ0xMM1dhSUVESENDYU0xY01pMm9lN1pkYkROSDhUNnovQXFJblIr?=
 =?utf-8?B?aWRmS2EyNFd2eFlRQ1ZYanBZc3FNbXZvY3FIK1hzK0FGZjdxazJ5MHJvTXMy?=
 =?utf-8?B?VDExVmZLYXJQaStwdzdQU2pyRWlWRk9nUjh2eXM4MnF5cUt3bGcrNU1XdGJr?=
 =?utf-8?B?aWJYTCthbExuS0lTRm9DejQrSXNYRlE0UTZ3VUx1QXlMWnZhQXduUHNrV0lV?=
 =?utf-8?B?VEpJK0tZdFEvQUxoYm9Oc3FqSk9QNGVzSlI1U29kTkVrT1NwdVJibXFpSkFX?=
 =?utf-8?B?VVFaLzZ4NzBsK2N5Z2NSc1U4UXdadkhkeGdvZnVTcGJDT0pTZHp3eTQvRG1n?=
 =?utf-8?B?aXNselVqK0h6S0dLcjhIT1BnWENTUm5jczRPd1UxQW56aGhhUFpJb2NhSDFH?=
 =?utf-8?B?OGVsa3JnNUFtWWJTUndWVjBYRWhxcjYzRFJhNzd6b3l2SjdiNkpENDQxaDlo?=
 =?utf-8?B?U3c0TEtGNTQyTGpzWG1ZUDhlRTFHZDJ5R0ZYRHppUjc5OGFDdjBTc2tVWXls?=
 =?utf-8?B?UkVGTnd2ejBKOWUvM1dXU00yZWoydmdPNldxQ1RmcUt6OGdLVHhxeFIvUlhU?=
 =?utf-8?B?dVVsRFplUDN5TSsvcnpCQUF4a0VvY3RuNmlzc0Q4M3VhUXJ2OEdWSXBaMzVU?=
 =?utf-8?B?d0YwbEgzVnVoSGtTU0FXZzRiYmppaWw2QW1VTXhUb2VFbksyMzhjb0I1NWxt?=
 =?utf-8?B?OENWRVBlNzRwNTliSVJnKzBxU2NPdURVcWFvdUhkajU0ellTZTRHamtteFln?=
 =?utf-8?B?UzRLbHlnN0ZYNDJQZzlBOVY4YXczZldiSTArZnRCRnlUWlNIMXAybEJrblVV?=
 =?utf-8?B?STk3NXdaR3VKN09odW42dTBiMTRyUHpYbFVINjQzSENxRExTdkcwYjIvbDd4?=
 =?utf-8?B?TGVBMTlKR25xMXdFc2prSUQxZmxSS2FoSzkxNCtqcUNmUFNrbjZZUHJRaTFV?=
 =?utf-8?B?QUEweFRkVHViTHVab0tFOWZNRGpqbGliK05XRkRUSC9iOHFhQnkrZUtlbm1i?=
 =?utf-8?B?K1dEZGowM1g4bTVSVy8ySlNYRjY4S0cvMFZyejJoYURRRWU5QjFSK1VaVDdm?=
 =?utf-8?B?c1l0TUlzWXJReXZyKzJId2plMVhEUVh1a0p2dExld0tnUG9KWU5wRzdZbk01?=
 =?utf-8?B?bXl2L2xoRXk1eUdhSno4MFJDM21Nc2FvSndKNjZHdXJNOW01bFVzL0tFTWFM?=
 =?utf-8?B?d2NuRG5Qa1JzQ1FLMWE1NnVmaTdZZzhBVVMzV3NqRFVodytHZU9BcDJnZnBy?=
 =?utf-8?B?cmtpYjc2RENla1VrMk1BVjhjUitzSFZrYXowd082andmZWU4MDdBbTBVczcr?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44c3a045-46b2-4797-b8be-08da7f19e772
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2022 23:57:26.2186 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UtLVQJ6tnGkUvXiPF2r0OIHbRl6poydpp8PqZdm6VU0maWaxDhHLoET2LtxWWOzubB43ylAjlf3W7Y2Qs13GcjaRiKkYjRUMjhXphRb81cw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4021
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 2/2] drm/i915/guc: Add delay to disable
 scheduling after pin count goes to zero
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

On 8/15/2022 09:01, Alan Previn wrote:
> From: Matthew Brost <matthew.brost@intel.com>
>
> Add a delay, configurable via debugs (default 34ms), to disable
debugs -> debugfs

> scheduling of a context after the pin count goes to zero. Disable
> scheduling is a somewhat costly operation so the idea is that a delay
costly operation as it requires synchronising with the GuC. So the idea

> allows the user to resubmit something before doing this operation.
> This delay is only done if the context isn't closed and less than 3/4
less than a given threshold (default is 3/4) of the guc_ids

> of total guc_ids are in use.
>
> As temporary WA disable this feature for the selftests. Selftests are
> very timing sensitive and any change in timing can cause failure. A
> follow up patch will fixup the selftests to understand this delay.
>
> Alan Previn: Matt Brost first introduced this series back in Oct 2021.
> However no real world workload with measured performance impact was
> available to prove the intended results. Today, this series is being
> republished in response to a real world workload that benefited greatly
> from it along with measured performance improvement.
>
> Workload description: 36 containers were created on a DG2 device where
> each container was performing a combination of 720p 3d game rendering
> and 30fps video encoding. The workload density was configured in way
in a way

> that guaranteed each container to ALWAYS be able to render and
> encode no less than 30fps with a predefined maximum render + encode
> latency time. That means that the totality of all 36 containers and its
and their

> workloads were not saturating the utilized hw engines to its max
"not saturating the hardware to its max" or "not saturating the engines 
to their max"

> (in order to maintain just enough headrooom to meet the min fps and
> max latencies of incoming container submissions).
>
> Problem statement: It was observed that the CPU utilization of the CPU
> core that was pinned to i915 soft IRQ work was experiencing severe load.
Lots of repetition. Would be better as just:
It was observed that the CPU core processing the i915 soft IRQ work was 
experiencing severe load.

> Using tracelogs and an instrumentation patch to count specific i915 IRQ
> events, it was confirmed that the majority of the CPU cycles were caused
> by the gen11_other_irq_handler() -> guc_irq_handler() code path. The vast
> majority of the cycles was determined to be processing a specific G2H
> IRQ: i.e. INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE. These IRQs are sent
> by GuC in response to i915 KMD sending H2G requests:
> INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_SET. Those H2G request are sent
requests

> whenever a context is idle so that we can unpin the context from GuC.
a context goes idle

> The high CPU utilization % symptom was limiting density scaling.
>
> Root Cause Analysis: Because the incoming execution buffers were spread
> across 36 different containers (each with multiple contexts) but the
> system in totality was NOT saturated to the max, it was assumed that each
> context was constantly idling between submissions. This was causing
> a thrashing of unpinning contexts from GuC at one moment, followed quickly
> by repinning them due to incoming workload the very next moment. These
> event-pairs were being triggered across multiple contexts per container,
> across all containers at the rate of > 30 times per sec per context.
>
> Metrics: When running this workload without this patch, we measured an
> average of ~69K INTEL_GUC_ACTION_SCHED_CONTEXT_MODE_DONE events every 10
> seconds or ~10 million times over ~25+ mins. With this patch, the count
> reduced to ~480 every 10 seconds or about ~28K over ~10 mins. The
> improvement observed is ~99% for the average counts per 10 seconds.
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_context.c   |   2 +-
>   drivers/gpu/drm/i915/gt/intel_context.h       |   9 ++
>   drivers/gpu/drm/i915/gt/intel_context_types.h |   7 +
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  18 +++
>   .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    |  57 +++++++
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 150 +++++++++++++++---
>   drivers/gpu/drm/i915/i915_selftest.h          |   2 +
>   drivers/gpu/drm/i915/i915_trace.h             |  10 ++
>   8 files changed, 229 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index dabdfe09f5e5..df7fd1b019ec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1454,7 +1454,7 @@ static void engines_idle_release(struct i915_gem_context *ctx,
>   		int err;
>   
>   		/* serialises with execbuf */
> -		set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> +		intel_context_close(ce);
>   		if (!intel_context_pin_if_active(ce))
>   			continue;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> index 8e2d70630c49..7cc4bb9ad042 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> @@ -276,6 +276,15 @@ static inline bool intel_context_is_barrier(const struct intel_context *ce)
>   	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
>   }
>   
> +static inline void intel_context_close(struct intel_context *ce)
> +{
> +	set_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> +
> +	trace_intel_context_close(ce);
Doesn't the v1 commit message update say that this trace has been 
dropped? Or was it dropped from somewhere else? IMHO, it looks plausible 
here.

> +	if (ce->ops->close)
> +		ce->ops->close(ce);
> +}
> +
>   static inline bool intel_context_is_closed(const struct intel_context *ce)
>   {
>   	return test_bit(CONTEXT_CLOSED_BIT, &ce->flags);
> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> index 04eacae1aca5..86ac84e2edb9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> @@ -43,6 +43,8 @@ struct intel_context_ops {
>   	void (*revoke)(struct intel_context *ce, struct i915_request *rq,
>   		       unsigned int preempt_timeout_ms);
>   
> +	void (*close)(struct intel_context *ce);
> +
>   	int (*pre_pin)(struct intel_context *ce, struct i915_gem_ww_ctx *ww, void **vaddr);
>   	int (*pin)(struct intel_context *ce, void *vaddr);
>   	void (*unpin)(struct intel_context *ce);
> @@ -208,6 +210,11 @@ struct intel_context {
>   		 * each priority bucket
>   		 */
>   		u32 prio_count[GUC_CLIENT_PRIORITY_NUM];
> +		/**
> +		 * @sched_disable_delay: worker to disable scheduling on this
> +		 * context
> +		 */
> +		struct delayed_work sched_disable_delay;
>   	} guc_state;
>   
>   	struct {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index a7acffbf15d1..2f534baf6f45 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -112,6 +112,10 @@ struct intel_guc {
>   		 * refs
>   		 */
>   		struct list_head guc_id_list;
> +		/**
> +		 * @guc_ids_in_use: Number single-lrc guc_ids in use
> +		 */
> +		u16 guc_ids_in_use;
>   		/**
>   		 * @destroyed_contexts: list of contexts waiting to be destroyed
>   		 * (deregistered with the GuC)
> @@ -132,6 +136,18 @@ struct intel_guc {
>   		 * @reset_fail_mask: mask of engines that failed to reset
>   		 */
>   		intel_engine_mask_t reset_fail_mask;
> +#define SCHED_DISABLE_DELAY_MS	34
This magic number seems like it should have some kind of explanation 
comment.

Also, given that it is only used (and only intended to be used) by the 
init code in intel_guc_sbmissions.c, it seems wrong to put it in a 
header file. Including it here implies that random other bits of the 
driver are expected to use it.


> +		/**
> +		 * @sched_disable_delay_ms: schedule disable delay, in ms, for
> +		 * contexts
> +		 */
> +		u64 sched_disable_delay_ms;
> +		/**
> +		 * @sched_disable_gucid_threshold: threshold of min remaining available
> +		 * guc_ids before we start bypassing the schedule disable delay
> +		 */
> +		int sched_disable_gucid_threshold;
> +
Extra blank line.

>   	} submission_state;
>   
>   	/**
> @@ -464,4 +480,6 @@ void intel_guc_load_status(struct intel_guc *guc, struct drm_printer *p);
>   
>   void intel_guc_write_barrier(struct intel_guc *guc);
>   
> +int intel_guc_get_sched_disable_gucid_threshold_max(struct intel_guc *guc);
> +
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> index 25f09a420561..c0e2fe46050f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> @@ -71,12 +71,69 @@ static bool intel_eval_slpc_support(void *data)
>   	return intel_guc_slpc_is_used(guc);
>   }
>   
> +static int guc_sched_disable_delay_ms_get(void *data, u64 *val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	*val = guc->submission_state.sched_disable_delay_ms;
> +
> +	return 0;
> +}
> +
> +static int guc_sched_disable_delay_ms_set(void *data, u64 val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	guc->submission_state.sched_disable_delay_ms = val;
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_delay_ms_fops,
> +			guc_sched_disable_delay_ms_get,
> +			guc_sched_disable_delay_ms_set, "%lld\n");
> +
> +static int guc_sched_disable_gucid_threshold_get(void *data, u64 *val)
> +{
> +	struct intel_guc *guc = data;
> +
Why no check on submission_is_used here?

> +	*val = guc->submission_state.sched_disable_gucid_threshold;
> +	return 0;
> +}
> +
> +static int guc_sched_disable_gucid_threshold_set(void *data, u64 val)
> +{
> +	struct intel_guc *guc = data;
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	if (val > intel_guc_get_sched_disable_gucid_threshold_max(guc))
> +		guc->submission_state.sched_disable_gucid_threshold =
> +			intel_guc_get_sched_disable_gucid_threshold_max(guc);
> +	else
> +		guc->submission_state.sched_disable_gucid_threshold = val;
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
> +			guc_sched_disable_gucid_threshold_get,
> +			guc_sched_disable_gucid_threshold_set, "%lld\n");
> +
>   void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
>   {
>   	static const struct intel_gt_debugfs_file files[] = {
>   		{ "guc_info", &guc_info_fops, NULL },
>   		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
>   		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
> +		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
> +		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
> +		   NULL },
>   	};
>   
>   	if (!intel_guc_is_supported(guc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 0d17da77e787..30612a6e3a27 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -65,7 +65,14 @@
>    * corresponding G2H returns indicating the scheduling disable operation has
>    * completed it is safe to unpin the context. While a disable is in flight it
>    * isn't safe to resubmit the context so a fence is used to stall all future
> - * requests of that context until the G2H is returned.
> + * requests of that context until the G2H is returned. Because this interaction
> + * with the GuC takes a non-zero amount of time / GuC cycles we delay the
I would drop the '/ GuC cycles'. Even if the GuC was instantaneous with 
its processing, there is still the non-zero round trip time of H2G/G2H. 
So just saying 'non-zero time' is sufficient - where that time is being 
spent doesn't really matter.

> + * disabling of scheduling after the pin count goes to zero by a configurable
> + * period of time (default 34 ms, see SCHED_DISABLE_DELAY_MS). The thought is
> + * this gives the user a window of time to resubmit something on the context
> + * before doing a somewhat costly operation. This delay is only done if it
'doing this costly operation'. 'only done if the context isn't closed'

> + * isn't closed and the guc_id usage is less than a threshold (default 3/4,
> + * (see intel_guc_get_sched_disable_gucid_threshold_default()).
The function name is incorrect.

>    *
>    * Context deregistration:
>    * Before a context can be destroyed or if we steal its guc_id we must
> @@ -1989,6 +1996,9 @@ static int new_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	if (unlikely(ret < 0))
>   		return ret;
>   
> +	if (!intel_context_is_parent(ce))
> +		++guc->submission_state.guc_ids_in_use;
> +
>   	ce->guc_id.id = ret;
>   	return 0;
>   }
> @@ -1998,14 +2008,16 @@ static void __release_guc_id(struct intel_guc *guc, struct intel_context *ce)
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
>   	if (!context_guc_id_invalid(ce)) {
> -		if (intel_context_is_parent(ce))
> +		if (intel_context_is_parent(ce)) {
>   			bitmap_release_region(guc->submission_state.guc_ids_bitmap,
>   					      ce->guc_id.id,
>   					      order_base_2(ce->parallel.number_children
>   							   + 1));
> -		else
> +		} else {
> +			--guc->submission_state.guc_ids_in_use;
>   			ida_simple_remove(&guc->submission_state.guc_ids,
>   					  ce->guc_id.id);
> +		}
>   		clr_ctx_id_mapping(guc, ce->guc_id.id);
>   		set_context_guc_id_invalid(ce);
>   	}
> @@ -2993,41 +3005,98 @@ guc_context_revoke(struct intel_context *ce, struct i915_request *rq,
>   	}
>   }
>   
> -static void guc_context_sched_disable(struct intel_context *ce)
> +static void guc_context_sched_disable(struct intel_context *ce);
> +
> +static void do_sched_disable(struct intel_guc *guc, struct intel_context *ce,
> +			     unsigned long flags)
> +	__releases(ce->guc_state.lock)
>   {
> -	struct intel_guc *guc = ce_to_guc(ce);
> -	unsigned long flags;
>   	struct intel_runtime_pm *runtime_pm = &ce->engine->gt->i915->runtime_pm;
>   	intel_wakeref_t wakeref;
> -	u16 guc_id;
>   
> +	lockdep_assert_held(&ce->guc_state.lock);
> +
> +	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +
> +	with_intel_runtime_pm(runtime_pm, wakeref)
> +		guc_context_sched_disable(ce);
> +}
> +
> +static bool bypass_sched_disable(struct intel_guc *guc,
> +				 struct intel_context *ce)
> +{
> +	lockdep_assert_held(&ce->guc_state.lock);
>   	GEM_BUG_ON(intel_context_is_child(ce));
>   
> +	if (submission_disabled(guc) || context_guc_id_invalid(ce) ||
> +	    !ctx_id_mapped(guc, ce->guc_id.id)) {
> +		clr_context_enabled(ce);
> +		return true;
> +	}
> +
> +	return !context_enabled(ce);
> +}
> +
> +static void __delay_sched_disable(struct work_struct *wrk)
> +{
> +	struct intel_context *ce =
> +		container_of(wrk, typeof(*ce), guc_state.sched_disable_delay.work);
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	unsigned long flags;
> +
>   	spin_lock_irqsave(&ce->guc_state.lock, flags);
>   
> -	/*
> -	 * We have to check if the context has been disabled by another thread,
> -	 * check if submssion has been disabled to seal a race with reset and
> -	 * finally check if any more requests have been committed to the
> -	 * context ensursing that a request doesn't slip through the
> -	 * 'context_pending_disable' fence.
> -	 */
> -	if (unlikely(!context_enabled(ce) || submission_disabled(guc) ||
> -		     context_has_committed_requests(ce))) {
> -		clr_context_enabled(ce);
> +	if (bypass_sched_disable(guc, ce)) {
>   		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> -		goto unpin;
> +		intel_context_sched_disable_unpin(ce);
> +	} else {
> +		do_sched_disable(guc, ce, flags);
>   	}
> -	guc_id = prep_context_pending_disable(ce);
> +}
>   
> -	spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +static bool guc_id_pressure(struct intel_guc *guc, struct intel_context *ce)
> +{
> +	/*
> +	 * parent contexts are perma-pinned, if we are unpinning do schedule
> +	 * disable immediately.
> +	 */
> +	if (intel_context_is_parent(ce))
> +		return true;
>   
> -	with_intel_runtime_pm(runtime_pm, wakeref)
> -		__guc_context_sched_disable(guc, ce, guc_id);
> +	/*
> +	 * If we are beyond the threshold for avail guc_ids, do schedule disable immediately.
> +	 */
> +	return guc->submission_state.guc_ids_in_use >
> +		guc->submission_state.sched_disable_gucid_threshold;
> +}
> +
> +static void guc_context_sched_disable(struct intel_context *ce)
> +{
> +	struct intel_guc *guc = ce_to_guc(ce);
> +	u64 delay = guc->submission_state.sched_disable_delay_ms;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&ce->guc_state.lock, flags);
> +
> +	if (bypass_sched_disable(guc, ce)) {
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +		intel_context_sched_disable_unpin(ce);
> +	} else if (!intel_context_is_closed(ce) && !guc_id_pressure(guc, ce) &&
> +		   delay) {
> +		spin_unlock_irqrestore(&ce->guc_state.lock, flags);
> +		mod_delayed_work(system_unbound_wq,
> +				 &ce->guc_state.sched_disable_delay,
> +				 msecs_to_jiffies(delay));
> +	} else {
> +		do_sched_disable(guc, ce, flags);
> +	}
> +}
>   
> -	return;
> -unpin:
> -	intel_context_sched_disable_unpin(ce);
> +static void guc_context_close(struct intel_context *ce)
> +{
> +	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
> +	    cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> +		__delay_sched_disable(&ce->guc_state.sched_disable_delay.work);
>   }
>   
>   static inline void guc_lrc_desc_unpin(struct intel_context *ce)
> @@ -3346,6 +3415,8 @@ static void remove_from_context(struct i915_request *rq)
>   static const struct intel_context_ops guc_context_ops = {
>   	.alloc = guc_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_context_pin,
>   	.unpin = guc_context_unpin,
> @@ -3428,6 +3499,10 @@ static void guc_context_init(struct intel_context *ce)
>   	rcu_read_unlock();
>   
>   	ce->guc_state.prio = map_i915_prio_to_guc_prio(prio);
> +
> +	INIT_DELAYED_WORK(&ce->guc_state.sched_disable_delay,
> +			  __delay_sched_disable);
> +
>   	set_bit(CONTEXT_GUC_INIT, &ce->flags);
>   }
>   
> @@ -3465,6 +3540,9 @@ static int guc_request_alloc(struct i915_request *rq)
>   	if (unlikely(!test_bit(CONTEXT_GUC_INIT, &ce->flags)))
>   		guc_context_init(ce);
>   
> +	if (cancel_delayed_work(&ce->guc_state.sched_disable_delay))
> +		intel_context_sched_disable_unpin(ce);
> +
>   	/*
>   	 * Call pin_guc_id here rather than in the pinning step as with
>   	 * dma_resv, contexts can be repeatedly pinned / unpinned trashing the
> @@ -3595,6 +3673,8 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>   static const struct intel_context_ops virtual_guc_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_virtual_context_pre_pin,
>   	.pin = guc_virtual_context_pin,
>   	.unpin = guc_virtual_context_unpin,
> @@ -3684,6 +3764,8 @@ static void guc_child_context_destroy(struct kref *kref)
>   static const struct intel_context_ops virtual_parent_context_ops = {
>   	.alloc = guc_virtual_context_alloc,
>   
> +	.close = guc_context_close,
> +
>   	.pre_pin = guc_context_pre_pin,
>   	.pin = guc_parent_context_pin,
>   	.unpin = guc_parent_context_unpin,
> @@ -4207,6 +4289,21 @@ static bool __guc_submission_selected(struct intel_guc *guc)
>   	return i915->params.enable_guc & ENABLE_GUC_SUBMISSION;
>   }
>   
> +static int __guc_get_non_lrc_num_guc_ids(struct intel_guc *guc)
> +{
> +	return guc->submission_state.num_guc_ids - NUMBER_MULTI_LRC_GUC_ID(guc);
> +}
> +
> +static int __guc_get_sched_disable_gucid_threshold_default(struct intel_guc *guc)
> +{
> +	return (__guc_get_non_lrc_num_guc_ids(guc) / 4 * 3);
Should do the multiply first. The calculation is more likely to lose 
important precision than overflow. E.g. 15/4*3 -> 9 but 15*3/4 -> 11.

Also, why make this a function? Shouldn't it just be a #define as per 
NUMBER_MULTI_LRC_GUC_ID, SCHED_DISABLE_DELAY_MS, etc.?

> +}
> +
> +int intel_guc_get_sched_disable_gucid_threshold_max(struct intel_guc *guc)
> +{
> +	return __guc_get_non_lrc_num_guc_ids(guc);
> +}
> +
>   void intel_guc_submission_init_early(struct intel_guc *guc)
>   {
>   	xa_init_flags(&guc->context_lookup, XA_FLAGS_LOCK_IRQ);
> @@ -4223,7 +4320,10 @@ void intel_guc_submission_init_early(struct intel_guc *guc)
>   	spin_lock_init(&guc->timestamp.lock);
>   	INIT_DELAYED_WORK(&guc->timestamp.work, guc_timestamp_ping);
>   
> +	guc->submission_state.sched_disable_delay_ms = SCHED_DISABLE_DELAY_MS;
>   	guc->submission_state.num_guc_ids = GUC_MAX_CONTEXT_ID;
> +	guc->submission_state.sched_disable_gucid_threshold =
> +		__guc_get_sched_disable_gucid_threshold_default(guc);
>   	guc->submission_supported = __guc_submission_supported(guc);
>   	guc->submission_selected = __guc_submission_selected(guc);
>   }
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
> index f54de0499be7..bdf3e22c0a34 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -92,12 +92,14 @@ int __i915_subtests(const char *caller,
>   			T, ARRAY_SIZE(T), data)
>   #define i915_live_subtests(T, data) ({ \
>   	typecheck(struct drm_i915_private *, data); \
> +	(data)->gt[0]->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__i915_live_setup, __i915_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \
>   })
>   #define intel_gt_live_subtests(T, data) ({ \
>   	typecheck(struct intel_gt *, data); \
> +	(data)->uc.guc.submission_state.sched_disable_delay_ms = 0; \
>   	__i915_subtests(__func__, \
>   			__intel_gt_live_setup, __intel_gt_live_teardown, \
>   			T, ARRAY_SIZE(T), data); \
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i915_trace.h
> index 37b5c9e9d260..1b85c671935c 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -430,6 +430,11 @@ DEFINE_EVENT(intel_context, intel_context_reset,
>   	     TP_ARGS(ce)
>   );
>   
> +DEFINE_EVENT(intel_context, intel_context_close,
> +	     TP_PROTO(struct intel_context *ce),
> +	     TP_ARGS(ce)
> +);
> +
>   DEFINE_EVENT(intel_context, intel_context_ban,
>   	     TP_PROTO(struct intel_context *ce),
>   	     TP_ARGS(ce)
> @@ -532,6 +537,11 @@ trace_intel_context_reset(struct intel_context *ce)
>   {
>   }
>   
> +static inline void
> +trace_intel_context_close(struct intel_context *ce)
> +{
> +}
> +
More trace stuff despite the claim the trace was dropped?

John.

>   static inline void
>   trace_intel_context_ban(struct intel_context *ce)
>   {

