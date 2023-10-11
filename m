Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F067C5A8C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 19:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3030E10E00B;
	Wed, 11 Oct 2023 17:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA6C310E00B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 17:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697046746; x=1728582746;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kzScKFR4sBmebS4mtbhsYMQHgRhOF+XF99g/ywONsaA=;
 b=jBVZOkGfNYpz+voPF6Se/jnZxTeXFi4CwSZ18iinWuUQ0CLOu3fxxEsC
 l2IZmvbdB981s5fx/I2UqcX4CIuRrwTJzwCj5U1b3Z9dBt6O0mOpdWQUi
 DfqQF8Dt27GDmxWeVLIgn3k4ed/aIz8tCk2RDINPNdnJHmlwwzJWMHGk/
 7qJYYlXQzx3TTDvLciL7iazFEQtKfzgqdrB+iSC/1DEYU7Sn+rgMW/E/Q
 Axj6lffmJr+wJRqvS/SVkkMkdII8pG/k6uIQ9CX1NuT2PmVT+SXVx6+z6
 FGRjXdZ2puGfkczzLfSBBFxvvJ4Ee6TuYd4dkdqeMtKl0ZLX7LE/AilKP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="369794017"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="369794017"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 10:52:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="877779158"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="877779158"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 10:52:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 10:52:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 10:52:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 10:52:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 10:52:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oyd44lb0bv/DnBcOSHvfysi6n5F5amAArPAVklCly8pY0h7via2QPhJIUfoQpiJucmbGS4+JcR4BiCdJwbZ/tQ/IZ4e1YG0hD5/0HbzbO3Q9LLe6hyxA6Uu1GOoPaxD+nSYYNQ6uZ7vne+8/YDGcF2U/DphFEVLNTccsoOO74eIc+6wufuGXr7fy2F7Pw00zIXq67WcR+VhgYy0CWh3hmZhI4TObqXvWNzxr86vNAvwazopyd6gfwsKghBWqc0VFI1Lpj5RL8rPubbq1nKUuhL/bijaH9+Z5FUBlgowNQHqg9gthTCl+WD9eoyAxbKWzFmHGdgVihfiK4xDZtGMkrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vP5s2XFRqhgnkRAiKW3sENAhgsa+2g0BlC056MlsO+Y=;
 b=na0M8S7QdcvugLx/L1Tkn5sdLKtV4JkT7i6pAy18TJadV6YzQ7elM/t2DJuMlkKxWgBl7QZGFIZI1pnw229mr5a2arvQ5ChuxNqSFd9cyXAUY+vd6z/GXaJvVogktRPWISmE5MNjYrabjmz/BjmvBYh7tYE7P0nZBjnm297FxhGOsTCIjB3SQeDc/JQtlpyjTqknWH5YSfXzEfx262fwCNAQbqTTUikhQrF/xEwRui+LxMel2KMP1ob4jhfiiaC1Uj7HQIGTc/9Fsc9ewOTOyOcMSId2v1ycX2e+d5ow5DSEJF858hQowhQqBB1FVcwSlB76JBrYus3oaucQ9BEv/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DM4PR11MB5568.namprd11.prod.outlook.com (2603:10b6:5:388::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.44; Wed, 11 Oct
 2023 17:52:13 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 17:52:13 +0000
Message-ID: <71e34d55-4639-49f1-b358-a32aa0aceedf@intel.com>
Date: Wed, 11 Oct 2023 10:52:10 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-4-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231011000248.2181018-4-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0136.namprd04.prod.outlook.com
 (2603:10b6:303:84::21) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DM4PR11MB5568:EE_
X-MS-Office365-Filtering-Correlation-Id: c2197050-ea6b-4d4a-6247-08dbca82cc9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rxvoNV2DhMZ1WVGC1lfSb/43VEbDqVzm12u0UOLi2jZKsJFvzJX2mSke7iUq+lUM+FdvyqeVMh7aJs8r20Y7ihjJLvqvvyMBDzuiYhfPAYSSFrh+AB/G+NIxhpp9slWCBLK2WvynhyldOPkIqAQauIiToxmt//ftYzOEhYmSFEfyxP+W9DsIILroMi8WeAd3aHARSjBUMaCZAbzDyHz/lZMOsdqXJvXoq5N5LtApBiFz4VWwbE8PE/KfRYoOeb6rHEpeuXZ3wjeehPVFrSe9ad6xXIsJjSRYRkX9FtZDaYZ9E72abpMgzlOE1khyzmPfLlll3IgZw86RzfY8DhmxHTjgkiDixC8sjyeB9tZevBG1IZL06DPjm57sfznlT8pADSdGwA8fdnH049ng59vBhQOOo8jEeyA2gRuFLZHtJd4vEGwiuMfOmPSG6VCikmCHQ4P2odll2IsP9wRvJfGty5RdEhMtDMCop7UXHwnZExtm/x5Hi+HwuEH5WJy9FCVWm9lszbZjqyomRMmraLTj3AW/s5S/uP5pvsr8oTcYLCugXWnpKFqO0ThNEOtMlUxAaWmAaC3+dKwSYQdWgdYChQTB//nbW0dh+C/GNs0MXuRQKG9KH2AN7npVAH0wN5c3a0MLUykSYlxEmhsSDiOqRQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(39860400002)(366004)(346002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(26005)(66946007)(66556008)(66476007)(316002)(83380400001)(2616005)(5660300002)(478600001)(86362001)(31696002)(6506007)(53546011)(4326008)(8936002)(8676002)(82960400001)(6486002)(31686004)(2906002)(38100700002)(6512007)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODVSNW9mR2xUM1FTcWJmeityZmIyTXZDSlBLRzRCdUZCZ3dHamtzUjE2aENs?=
 =?utf-8?B?WVM0b1JPYjhTM0VqWWVKNGEvWFlmb3pMdW5wTHJGQmgvaFlERHFJbnUxeXlN?=
 =?utf-8?B?QlVhTERndXVpQ2IxWDlhOUVZdERWLzFpMXVpdElDLzBZVXFQUFJNeCtiSDBa?=
 =?utf-8?B?WDljeVR6OVZVZE91QllMUSs2cVZoUUxsaUJQVDZUZFVKa1d1OW9vRzNiS3Z1?=
 =?utf-8?B?OEU0TjF0Zzd4czBONzZkNXlzUE9CVzVTVnFqV3VzYzFRMzl3WUZCMS9KdGpw?=
 =?utf-8?B?ZHdWVUx3YU1mUzkvVEhTNW51T0N1cVhheENhNHk2cURRRndqOXhUNUYyY0Qx?=
 =?utf-8?B?eEtpUWp2TXBMNHVEVHBGcjJHY2pJaXhtRmV2QmZaM3h6TXVBV3hiSlJjVkJR?=
 =?utf-8?B?NHJ6aEcyM2JZd2M4OVE5MjFHdjZ2MXNYaGxscXJQdHU1blBPREViT1R2Q0lK?=
 =?utf-8?B?OFF5S1d3R1NJQWZQYmwrSm0yZFNCVktvQVlacGFGQ0daZ2Eyd2ZwY3Y3Nm50?=
 =?utf-8?B?ZTlxLzJ6NVFQZmVxNE4zUG16Q0ovVWhqRGdvOHpqTXhlbk12VVk1SmNrZ05W?=
 =?utf-8?B?QlZ3TXBFQy85OFhZU2F4eC95cmhScWlXL285RzQ0REdLSTZXUHl5eVRneG5C?=
 =?utf-8?B?bEJoY1BlWU5hMUlVY1VaRGlTR3ozSnV2NzgvM2xnSENOSjVPNloyVTlwU1pr?=
 =?utf-8?B?OUEvOHg0RytScklmODRuT2pQSER3UEhTZFBVc1VDVkZQdEVLY3o4SjBjV282?=
 =?utf-8?B?ZmZhVUxRcmtEQkYrK3BjSlRrRXNSbWV1TG1DblEwcWJtaVNJUVk5Tks4NzAw?=
 =?utf-8?B?VFdjY2dFMEFydHBFUGszRi80WHZSQmkvcGlReHV5NC93NXFod09lVU5qaTZu?=
 =?utf-8?B?TnJtUlJQNnZmNHBwWTEyc0hzSUhnNU9lOTBvdWV5RFlBN01YTUY1R3RkTWsr?=
 =?utf-8?B?andQZExQcWo5Q3FTNi9ucFNacDY5bTloRnAvRERjWTkxYUYzdkZTeWxDMmd1?=
 =?utf-8?B?QXY1Yk9uaWtxTitaUDJKZHp1ZFlxcDcwRitJeDBWbW9SZUdxUTJDZEpmbjM4?=
 =?utf-8?B?ek9oZVZHSTJubjhXMms0b3krZmJWTmlYQjYweU5aTXFrOERXSFRiVzY5NmFV?=
 =?utf-8?B?RCswejdlK2x3QjViR1NrRlJqWjR6N3F3aGhVekU0ZzZPcWRBMkZUNnpOOTZm?=
 =?utf-8?B?UlR1Tk83MkRSaWVYVE01NEFNUUx2dFN4U0Q4NklidDJkdkNHMkhKamxmSTZS?=
 =?utf-8?B?UXdUWnZtV1FCLzEwd2dhOVd2bERKUmR0N0JzaDVWd2lLaHJIUWdmbnc4Mjdr?=
 =?utf-8?B?dkQ4NXlPSGQzTnljd3cwZXZ1Nzk3TzhJVVpzYTd1dCtUdzdzVmF0WWphNVQx?=
 =?utf-8?B?TXQ2OTVnQXRkU0ptem5QNjJjTGE5Mm5XRWYzSFp2NGFmRHRjR2tNMGpQSStm?=
 =?utf-8?B?V1A0eVIwWGJnQXNGQWdwaWdBSVE1ZEo3OUJMT1NkZmY4VnJWMnFvYURhZ3NN?=
 =?utf-8?B?MFVrL2xIRS80QTdKM2FiZXMxb1lZNVdnYkZML0c2VjJYOTducW95cytHTlJ6?=
 =?utf-8?B?dEh1RzVJK01Tc0R0cUpSVFd6MzFTazExaHdBcGhYalhIZi9IVkx1WW56cHd0?=
 =?utf-8?B?biszaWZ5SmVaMWt6M09sZ3FmaFNQV2doVTdZM25DaDFWN3l1Um9FendIV1Q0?=
 =?utf-8?B?b3hTQWZpRnAvWUV0L0hPL2EvZUc4RDc1aVlKSjZ5WTRDR2dhTkhBYXVucmFZ?=
 =?utf-8?B?WmxPM3FRbHQ4Y2RNRUt2amhYMlpwa05CeTBiUjV5bm5TQ3ZzL054TmVaUWx1?=
 =?utf-8?B?bTZlUU85T0xkYTB5RFNuektiYjlDT2NQNUJRYVpLeDBtVjBhY1JxZmY5cW5v?=
 =?utf-8?B?YnJJZ2JJd2UwN1hXWVR3QVllaDZaL0sxdWcwSnpvQnRZeG1KekJkMTRqL09y?=
 =?utf-8?B?eW5IaUF5NldCS0pXUWNCTEsyekJzai84S3dZTFJxZHFwZ0xyT0JvUHhPNFpw?=
 =?utf-8?B?UnQrQitZN3lEaWprL3dvQnlrakxhc2w4UlVKRGd2eFVLbWJONnVUK0RlWVlW?=
 =?utf-8?B?RVRPUEZnRCt1M1NXd2dkQTdnVVlzY0xqUWpLdTE3eHN4T0VaRk5MYXVoeWs1?=
 =?utf-8?B?UEcyTXpPc3dIaTBHRkN4UzZVQU1pZHZtRS8wWlA1MDEvMzNBU1k2OXlFemVq?=
 =?utf-8?B?Unc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2197050-ea6b-4d4a-6247-08dbca82cc9e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 17:52:13.2330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 20rsiYJ0eh2LVzqH9NqG58FxsHrzIN1uhV0k1r73kUn+tOMuNvqkRlFo+H/Mu4wNW9MSE+5i3NwpKQZC6KseYvymrJ1l1pwJuVxmzIiBIHc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 3/7] drm/i915: Define and use GuC and
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

On 10/10/2023 17:02, Jonathan Cavitt wrote:
> From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
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
> The additional complexity incurred in this patch will be necessary for
> range-based tlb invalidations, which will be platformed in the future.
>
> Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
> Signed-off-by: Bruce Chang <yu.bruce.chang@intel.com>
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> CC: Andi Shyti <andi.shyti@linux.intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

