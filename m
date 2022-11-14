Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23540628D2A
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Nov 2022 00:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6523F10E10E;
	Mon, 14 Nov 2022 23:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB72B10E10E
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 23:07:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668467244; x=1700003244;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3e938iLinV/h+i1ucMcmJA7ke2rKuJf+sv14AMNZck0=;
 b=D37eG1L8DRNfZUzGfaosW1Lj1g5Sy/lgMdgs/Vq6m81TswX7k9g96SWV
 9kKZV8xKQ9tDtfVvhenHQspSEl0gwTKHHIoXE9FhCods4pVT4ZBbo69Jg
 8D4TEEZIWpbv/1GegT/06eOaKVpR2O4fRxQjNTf88SvCSYlYm0bhgmC79
 NONKlPgn2ovFjtO9JZtm9qDmTuZYxLyeDEvT6Omd501BMFdoWqRcWD4ko
 jQQlYF0UEHh4Wd/TfnqRySZsk4rHjTFPnFeiroPOTfausXO6J8YtSxN2K
 gAzelWL02DYuSE0ljM6ts9yO3LZ5JRgsNrgWxhU7j9/Btvh5X14e687jx w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="292503119"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="292503119"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 15:07:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="638690117"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="638690117"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 14 Nov 2022 15:07:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 15:07:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 15:07:23 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 15:07:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZRSEGed7qacRwyY7H8vrgDMRC6FleRx5xfzSEyE4NWpqEl8qqV0MLvb5bV9kqbzBeniCVz1rpMIUICqgCTF1O+uI3xsWVtMkU4IIi7nmt6N+XgGudqguSiHEkzX06DuOuA4Swb9s0D9cPBCNztFGFS7HFajO8jYEUZc1VYW+ACEBj45ASEtJtP7VopX9ktQGpBmVDGJml/XEoexdjaGxmRZVfP/VI1Wdl28JyVRBJfS4OdkpQIb89iWZ8D+ysgYDOpdvTL5+nvf7plHj4ynTIao3tEg6vJFy+2nRiAYi5+cEMInlfyY6hWAQV4Y4uze1nyHPFrndVWLizkWFEeSDTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mWLhLfIW0hk+qg1iZIkIc7W7eKBUYHepCt18izjPltQ=;
 b=MdcXZVNUFzZIYfC0KJOUNIbUk8O+kl42RYHhYIyD4kfKyxJnvfG72JWUA4a5IInjUb9QY0EEaEUR+aiBgv+rJtT+ZV2OvH70bKKu77iU5larwjZw8hy5x3vp5ks+y0vyyrTOSNw4C9tvYpk4AlB6lPMXdE4HusLOU3JfajC/taSqz/upHhBsqwABuMF+9VpwyD4S6OiE7I55BKneLu0XbZ3WVfYJLtrKpVl6mVc2IGoOFM/3cjcYYp5mxjmv+Uwns4FTtB0LSaIOo+jBmAQJKOSa6Xs8bHTuWm+plZzRnWVk+ZFg2KDSqVjHp9lrO7YCiKVqkq/yxbK+ttHPoUrLQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CO1PR11MB4785.namprd11.prod.outlook.com (2603:10b6:303:6f::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.17; Mon, 14 Nov 2022 23:07:18 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 23:07:18 +0000
Message-ID: <8abdc414-7720-717c-2730-33467826ae6a@intel.com>
Date: Mon, 14 Nov 2022 15:07:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221108045628.4187260-1-alan.previn.teres.alexis@intel.com>
 <20221108045628.4187260-2-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221108045628.4187260-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR13CA0029.namprd13.prod.outlook.com
 (2603:10b6:a03:180::42) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|CO1PR11MB4785:EE_
X-MS-Office365-Filtering-Correlation-Id: e35d6753-66c8-4ea4-ae44-08dac694fa57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6TJaDhqJE6LEBEDoQNVUMkE2FXOCAjj7K9rMm96xDAnhVpc6Vgbtr3wGeGyVBUnT9L0ko5P/j9+t/7mXC9WNORTIGlS7GbJLu/igM+GXxsv0tNK7bYxc6Mo6USORgrCEtb+RHSPf+gmoQg3bjUZiF/IjmlkfOgea4C2g6hTbjbN4dCo01SIaAtTl8DZmmpF7RilDGAqqO4oeygKETMgISZ6ZNfmKEBZ3ocNYQEoK3bAAZeidPAGtYdoLvSMZupV5YxTg7TGVsWcULLJyGlk6O5irFkAZ2hUr+TV/HDG2AZRnwPyVq3tmyRuKAt8C5kE3aqFrVYd3rGWgtAIe/RAuI3zkx3bRvIBcfXKvsXgjzPhoEK19GsFGhTqbLRH2AorvN7d+4zaC38rm0pA/wHJHocjcBkE2u5s83GShDfP4DRi5fUcCTD/5Qh+AgCqGxG3iroKJpTCyDVXqqgXjGDmsRtJdxS7IIXMvyw+izhycFDiKgaIU4l8XkSkkyA+H9sNc1GjfRKMLyUHbJZMtXEIVNf7iXMk2YDxbEg77YJ4k0PPwF3wGBLd3CFBPYuqEFe+SfoiYLoJ6vu838A+hC44HohXYymC124TmKLD+OWSuC7NmuW/F6FXBapXI4kiba5GpK0DEaaCmi22JQa/QA4FxVKhgmr+B/XKcvvAxz7oajcz4cwnL/gJcTKmSzcUq6pqIRiUMU1EhD8EvZ4yBl3DqX8y618vRiUZCZ9IckxGFw4HCyNqQ7YwaUc9rViRFKJ07D3ObKB1VXErAKj3UQ9lWBDqSIk8/aVbt8VLNY0daZws=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(136003)(396003)(39860400002)(366004)(451199015)(478600001)(6486002)(31686004)(186003)(8936002)(5660300002)(2616005)(36756003)(41300700001)(6506007)(2906002)(26005)(66476007)(53546011)(66556008)(316002)(66946007)(8676002)(6512007)(83380400001)(82960400001)(86362001)(31696002)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXh2UkpINitnS1FmMFp6NDF1blFCYmp2eDQvRFBzMXhYOENoTUhkbkNiRm0v?=
 =?utf-8?B?K0tUSVQwZXpPaEM1UTNHN2Z5OXlhSTV6UC9aUmlleVB0VEtjQnhIdEl3clJq?=
 =?utf-8?B?Zjh4cFowWHNDemx4SXF3WXRSa1pqU01vQWc2Skg5b05yMUhjYldiSVNUT1c5?=
 =?utf-8?B?Y25VTjlmM2dRdUR0UUN2RURhR0VWd0F4Tm5oQXZtT1ZBZUNGMzEzek1WUkFE?=
 =?utf-8?B?U0FWSCtUMGJid1g2RWJ0Q3ZRUWhIMXNtYjNnV09XZE1ZQjlEQ0YwYnJtbXhT?=
 =?utf-8?B?Rjk1MkNIZVVFZWtxOTFlVmhvVDhGTkJhL1V0R3RMODZMMk9HUUFVbjlSeE5r?=
 =?utf-8?B?QVBpem0yM2l3SVhBYlJYUWJkY25mY00xSExrcGpNeHc5ZVRIUTFOQW1MaFVI?=
 =?utf-8?B?RHcrdVQwVzZPMXVETlpuOHArMGJScGozY1kxaWV1VG1TQ0xJTGtBTFp2ZzY4?=
 =?utf-8?B?TU1nbGlxNHNUMTQweW10V1VmcXRUZUNJVWVhT1ZXTHdLZWphWEFiaW82TTlJ?=
 =?utf-8?B?K1FXSkN0OWFuVGRVdENhYlE2elZBdEUyYU9uQm9vMW82aW1tZVBCS2dGNWRE?=
 =?utf-8?B?NFFmdDZaN0o0NEtyS3gyaDNmMjJ4L21TNnVNWDJaNlpjK1hrOW55SmthR3Vs?=
 =?utf-8?B?RUZYa1ZQMEU0dE15U04xT3VhZXppMGZHUDZnZUF0MzB3TXhqTkFnQ0RVRUEx?=
 =?utf-8?B?dkM2M2ZYbnRjR2dvb2FyWE1ZQlpuREtBYkdwdnkwQUl5bFlYbGVmc1JtRlAr?=
 =?utf-8?B?eHV4VE5nVkVoY0NBZjY2RG8rSWpTTXZ0bzIwM1U0bXdYNXgyZ241WGNVWkhT?=
 =?utf-8?B?ZVUwS1FDbVZobURvYUkvQURyRThhb0JzN1QwY0lMejRaekdVdDJKc09pbjlo?=
 =?utf-8?B?OE5rOFo1S2g2Mi9YaUw0NW8rLzBkMC9lSHB1SmVDMkpMOGQvTytUQzJOdkZZ?=
 =?utf-8?B?UlJIQ3l0Mzh5Y01JYmJjTjROVXlYZTJ6OE9jQzJkalRPcXpCWTlOWEVjeVhO?=
 =?utf-8?B?THFUVlZhMDRMUkx4VTllL0hrdmNtL1R4ZzNVYkdOTTIvZ0lzb1BqTUNyUklT?=
 =?utf-8?B?L3RqczZ6cjhkRitpYS9CTnU0SzFiZm5LSjJYa1F2SDlwR3l2QTFlUVJsdEZW?=
 =?utf-8?B?Tk5jeUk4cGlFU1kvOEFlUVZtdklnODVwRGtCd3RadVQvK05oOXIwQUJFSFV0?=
 =?utf-8?B?N0ZHV0FOV2hqaENlNERxZkxxZXp6Q2ppSGRWNE5HL1JrbGdVVTE3dnQ2K244?=
 =?utf-8?B?NzBjakJmZit2SVBqWE1QdTJOSE5DblkzRFhLM1FzREZpQlkwa3FQSFd5eVEr?=
 =?utf-8?B?aTV0YUV0R3VIaDMwNHJRYTRxK0NkMkNUdzlGajhFaVc3bUU5YVlVZlNrczdl?=
 =?utf-8?B?TDZGY1FMaUsxemYzd2pVM2NVOGQ3YUMzTGFNdkJEQ2lHZlg3S2ZUTGNSNzZJ?=
 =?utf-8?B?SlFKZG9IZ0F4Lzc1azJtTzBLYmR5M1daZk1RdzZHeERJNWEwanRsdmpqR1Zo?=
 =?utf-8?B?ZGZCS0h6RjM0ZDl3S1F6cmpwMkpnRGJCTWM1V1hYZDdvTEZqeitMZnlsTmFY?=
 =?utf-8?B?SGY2d2hXK3owQnpnWDVheHRRNWNRbVZhK2FjeURIOWU0QWNNSzRXeTN2Rzlm?=
 =?utf-8?B?Nk1GTGgvcTNOVUJUWTdZQzNWdG8yMGRjNDJMWVpLMVRrMytyRWEzNXFRMTRq?=
 =?utf-8?B?QjBOWEE2MktRTG51WmN1L20raHJxb0NmZjBobHRlUVBwMEd1dEl5ZG5KUlZH?=
 =?utf-8?B?Vlpmblg5YStQekdROE5ha29IVkt1YWJ3ZnR4VDlQa1dldU1ndjV4R3VoamNU?=
 =?utf-8?B?UUpNenhEdEthTUEyMmFxRjFBWXVDSmZvaWlaalcrcFVGV09HU05iSmN3TGQx?=
 =?utf-8?B?bktHOGRJMDZRbkFvakswL3pJVGFENkxzSkdUdHdQRXlaU1U1NFFhTUtjUVo5?=
 =?utf-8?B?dkovN1d3VXVnUGZVa2JrRVZLK3lEMEZhNWtWZ2ZJVXRTQWVwdjhLNkJGanVN?=
 =?utf-8?B?eEhQMmRleG5MZzdzMkxZVkxtcHRmM3JBR1NHU3lhZmNnM1FKYWN0TE5mb2RH?=
 =?utf-8?B?ZU1lQzNNSDh2bFcvVGVHeDFGZzhIWm05QkZ2OXpyc1dqd2xPODFnd2dqSjR3?=
 =?utf-8?B?QzZMd051Q1J2c3VUV1JRYkN1Q085MUJ5enRGR1RvZ1pYM0l5S0JPcFNoWHRS?=
 =?utf-8?Q?Pm3et2pBxkPsG4Ub3NzP9sc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e35d6753-66c8-4ea4-ae44-08dac694fa57
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2022 23:07:18.6059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4GCDFf585MlLSgGq+V8xX6eyK+cpbQqF80GBdvR62jg1MwQyzj0IiSHtGUDYM4wvktwJxURUf6IMfiZ52uC4UZgbfYteVFvLmVrhZ/TU7mA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/1] drm/i915/pxp: Separate PXP FW
 interface structures for both v42 and 43
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



On 11/7/2022 8:56 PM, Alan Previn wrote:
> Previously, we only used PXP FW interface version-42 structures for
> PXP arbitration session on ADL/TGL products and version-43 for HuC
> authentication on DG2. That worked fine despite not differentiating such
> versioning of the PXP firmware interaction structures. This was okay
> back then because the only commands used via version 42 was not
> used via version 43 and vice versa.
>
> With MTL, we'll need both these versions side by side for the same
> commands (PXP-session) with the older platform feature support. That
> said, let's create separate files to define the structures and definitions
> for both version-42 and 43 of PXP FW interfaces.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 28 +++++++++
>   .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 26 +++++++++
>   .../i915/pxp/intel_pxp_cmd_interface_cmn.h    | 35 ++++++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 10 ++--
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 12 ++--
>   .../drm/i915/pxp/intel_pxp_tee_interface.h    | 57 -------------------
>   6 files changed, 100 insertions(+), 68 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
>   delete mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> new file mode 100644
> index 000000000000..739f9072fa5f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_FW_INTERFACE_42_H__
> +#define __INTEL_PXP_FW_INTERFACE_42_H__
> +
> +#include <linux/types.h>
> +#include "intel_pxp_cmd_interface_cmn.h"
> +
> +/* PXP-Opcode for Init Session */
> +#define PXP42_CMDID_INIT_SESSION 0x1e
> +
> +/* PXP-Input-Packet: Init Session (Arb-Session) */
> +struct pxp42_create_arb_in {
> +	struct pxp_cmd_header header;
> +	u32 protection_mode;
> +#define PXP42_ARB_SESSION_MODE_HEAVY 0x2
> +	u32 session_id;
> +} __packed;
> +
> +/* PXP-Output-Packet: Init Session */
> +struct pxp42_create_arb_out {
> +	struct pxp_cmd_header header;
> +} __packed;
> +
> +#endif /* __INTEL_PXP_FW_INTERFACE_42_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
> new file mode 100644
> index 000000000000..ad67e3f49c20
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2022, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_FW_INTERFACE_43_H__
> +#define __INTEL_PXP_FW_INTERFACE_43_H__
> +
> +#include <linux/types.h>
> +#include "intel_pxp_cmd_interface_cmn.h"
> +
> +/* PXP-Cmd-Op definitions */
> +#define PXP43_CMDID_START_HUC_AUTH 0x0000003A
> +
> +/* PXP-Input-Packet: HUC-Authentication */
> +struct pxp43_start_huc_auth_in {
> +	struct pxp_cmd_header header;
> +	__le64 huc_base_address;
> +} __packed;
> +
> +/* PXP-Output-Packet: HUC-Authentication */
> +struct pxp43_start_huc_auth_out {
> +	struct pxp_cmd_header header;
> +} __packed;
> +
> +#endif /* __INTEL_PXP_FW_INTERFACE_43_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> new file mode 100644
> index 000000000000..c2f23394f9b8
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> @@ -0,0 +1,35 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2022, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_FW_INTERFACE_CMN_H__
> +#define __INTEL_PXP_FW_INTERFACE_CMN_H__
> +
> +#include <linux/types.h>
> +
> +#define PXP_APIVER(x, y) (((x) & 0xFFFF) << 16 | ((y) & 0xFFFF))
> +
> +/*
> + * there are a lot of status codes for PXP, but we only define the cross-API
> + * common ones that we actually can handle in the kernel driver. Other failure
> + * codes should be printed to error msg for debug.
> + */
> +enum pxp_status {
> +	PXP_STATUS_SUCCESS = 0x0,
> +	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
> +};
> +
> +/* Common PXP FW message header */
> +struct pxp_cmd_header {
> +	u32 api_version;
> +	u32 command_id;
> +	union {
> +		u32 status; /* out */
> +		u32 stream_id; /* in */
> +	};
> +	/* Length of the message (excluding the header) */
> +	u32 buffer_len;
> +} __packed;
> +
> +#endif /* __INTEL_PXP_FW_INTERFACE_CMN_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> index 7ec36d94e758..ed27e3524afc 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> @@ -13,14 +13,14 @@
>   #include "intel_pxp_huc.h"
>   #include "intel_pxp_tee.h"
>   #include "intel_pxp_types.h"
> -#include "intel_pxp_tee_interface.h"
> +#include "intel_pxp_cmd_interface_43.h"
>   
>   int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
>   {
>   	struct intel_gt *gt = pxp_to_gt(pxp);
>   	struct intel_huc *huc = &gt->uc.huc;
> -	struct pxp_tee_start_huc_auth_in huc_in = {0};
> -	struct pxp_tee_start_huc_auth_out huc_out = {0};
> +	struct pxp43_start_huc_auth_in huc_in = {0};
> +	struct pxp43_start_huc_auth_out huc_out = {0};
>   	dma_addr_t huc_phys_addr;
>   	u8 client_id = 0;
>   	u8 fence_id = 0;
> @@ -32,8 +32,8 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
>   	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
>   
>   	/* write the PXP message into the lmem (the sg list) */
> -	huc_in.header.api_version = PXP_TEE_43_APIVER;
> -	huc_in.header.command_id  = PXP_TEE_43_START_HUC_AUTH;
> +	huc_in.header.api_version = PXP_APIVER(4, 3);
> +	huc_in.header.command_id  = PXP43_CMDID_START_HUC_AUTH;
>   	huc_in.header.status      = 0;
>   	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
>   	huc_in.huc_base_address   = huc_phys_addr;
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 052fd2f9a583..b0c9170b1395 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -14,7 +14,7 @@
>   #include "intel_pxp.h"
>   #include "intel_pxp_session.h"
>   #include "intel_pxp_tee.h"
> -#include "intel_pxp_tee_interface.h"
> +#include "intel_pxp_cmd_interface_42.h"
>   #include "intel_pxp_huc.h"
>   
>   static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
> @@ -286,14 +286,14 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
>   					 int arb_session_id)
>   {
>   	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> -	struct pxp_tee_create_arb_in msg_in = {0};
> -	struct pxp_tee_create_arb_out msg_out = {0};
> +	struct pxp42_create_arb_in msg_in = {0};
> +	struct pxp42_create_arb_out msg_out = {0};
>   	int ret;
>   
> -	msg_in.header.api_version = PXP_TEE_APIVER;
> -	msg_in.header.command_id = PXP_TEE_ARB_CMDID;
> +	msg_in.header.api_version = PXP_APIVER(4, 2);
> +	msg_in.header.command_id = PXP42_CMDID_INIT_SESSION;
>   	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
> -	msg_in.protection_mode = PXP_TEE_ARB_PROTECTION_MODE;
> +	msg_in.protection_mode = PXP42_ARB_SESSION_MODE_HEAVY;
>   	msg_in.session_id = arb_session_id;
>   
>   	ret = intel_pxp_tee_io_message(pxp,
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
> deleted file mode 100644
> index 7edc1760f142..000000000000
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
> +++ /dev/null
> @@ -1,57 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright(c) 2020-2022, Intel Corporation. All rights reserved.
> - */
> -
> -#ifndef __INTEL_PXP_TEE_INTERFACE_H__
> -#define __INTEL_PXP_TEE_INTERFACE_H__
> -
> -#include <linux/types.h>
> -
> -#define PXP_TEE_APIVER 0x40002
> -#define PXP_TEE_43_APIVER 0x00040003
> -#define PXP_TEE_ARB_CMDID 0x1e
> -#define PXP_TEE_ARB_PROTECTION_MODE 0x2
> -#define PXP_TEE_43_START_HUC_AUTH   0x0000003A
> -
> -/*
> - * there are a lot of status codes for PXP, but we only define the ones we
> - * actually can handle in the driver. other failure codes will be printed to
> - * error msg for debug.
> - */
> -enum pxp_status {
> -	PXP_STATUS_SUCCESS = 0x0,
> -	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
> -};
> -
> -/* PXP TEE message header */
> -struct pxp_tee_cmd_header {
> -	u32 api_version;
> -	u32 command_id;
> -	u32 status;
> -	/* Length of the message (excluding the header) */
> -	u32 buffer_len;
> -} __packed;
> -
> -/* PXP TEE message input to create a arbitrary session */
> -struct pxp_tee_create_arb_in {
> -	struct pxp_tee_cmd_header header;
> -	u32 protection_mode;
> -	u32 session_id;
> -} __packed;
> -
> -/* PXP TEE message output to create a arbitrary session */
> -struct pxp_tee_create_arb_out {
> -	struct pxp_tee_cmd_header header;
> -} __packed;
> -
> -struct pxp_tee_start_huc_auth_in {
> -	struct pxp_tee_cmd_header header;
> -	__le64                    huc_base_address;
> -};
> -
> -struct pxp_tee_start_huc_auth_out {
> -	struct pxp_tee_cmd_header header;
> -};
> -
> -#endif /* __INTEL_PXP_TEE_INTERFACE_H__ */

