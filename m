Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D230B76C52B
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 08:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E06910E499;
	Wed,  2 Aug 2023 06:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2901410E051
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 06:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690956783; x=1722492783;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PrWeVJAo3a4IC0PacGfeWxWi0AWRhquE2L9ZT3usf1M=;
 b=Df/2apcMMEEGcYQMVdvZpJCuObFBRWt7F7p32smdNNBiiDFw8G00FECV
 Mwwimw9/Z024B/FrIKoOnr4PUY8Y78hKs7rreNLI8Panb9zYUNDxQ2gEf
 ZyJ0CJbn+DIqKKEOtSIw4xgP3HhVFaBRs5pkMKprRM5gJEcZUCkIRfx3m
 CtHeHcfkmMA2UD1Obm9ccvDi+bo8rJO7gN4MUHAbvESylBaWBRpaI9EFy
 fqhDl3Rq+/RI6g+ucT8vde7E/efzlPsULE+vWeVSF2baDoEPlY0EH2F4F
 1ngLq/3o4Y7jMP0rL7RT/3Ny6JD9pNrWn09v1H8S7ZcLbSsjQK8LQrmDU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="349090763"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="349090763"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 23:12:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="794461646"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="794461646"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 01 Aug 2023 23:12:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 1 Aug 2023 23:12:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 1 Aug 2023 23:12:56 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 1 Aug 2023 23:12:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lY+MuZb26l3SzvJ8p2tFHLzy5AkzLvPjz4VdYa4Sa4a/Qw9jyyNr4UZgWGRY9D0ERSzcXFVpHQzSA8ZdGNYFlJ9gqED/LHjXkK5p/aTvJYQcrIZMpymE7Ki5yqZArGLz4jOuTSRlgc0hmnxK4IdsECRPttV4R2q7R01giIEO5yQFCHiRLDuKid0eHSYvLu+kzDh8tBgrQ/rIJkAJCVtoWeccpvRsiStfV+13Kmu/rsuC4PRsShGVFx0abrSJSGiQwlrzUULaC8dZLxCA8aHlcdMkORzl+0NkVVchJLMbeb/yLKc7rY81gt8R8yf2frYuy/9cdNq+dF6X35usZHRccQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FE808cD6RzaImbFfI8zxy8zDjGm2rwA53tkOf0k3vf4=;
 b=KRfHuiFwtQLPFPG2tSJwHhgyyFMfuWfFn9Ft7woJDwmAcuKfzOeT1xh6z8+ZHyxffl4wHqLHDysy9OxrkxO99MsBzE/lpXRWqknyDxvt3vnzYH2T26HhPCw88vlCM7IcMBOJBj/x5w77/HqTMbLCcU/NHOLWlLfaW7unbKdXkMj5a0rVDdL69jcmYjrrNcJp8VqWZTWL/UlTmxPaeyxw3rABzys6mluSK6xpDUAXC5EwXt+RNsEGbS8Gzzl6aV+dMOkMhdlWjq3D2QNMUSiK7o0SCGodnfaysU/AW1xIQDcBKrRJzDDmukI1Eq5P9KnRjCXMXSuvrSprnA9+z4akXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4841.namprd11.prod.outlook.com (2603:10b6:806:113::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 06:12:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 06:12:54 +0000
Message-ID: <7c05cc65-2fec-59de-c3b3-c99ff182cd1d@intel.com>
Date: Wed, 2 Aug 2023 11:42:44 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230720080715.3063267-1-suraj.kandpal@intel.com>
 <20230720080715.3063267-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230720080715.3063267-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4841:EE_
X-MS-Office365-Filtering-Correlation-Id: 2623c736-a0b0-4256-892e-08db931f825c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jQmh3ek5UJdCyYH9/QXxltBX7Xtgi4HVK9fxEbWNfbc4d+l0+otxIa8tqlsjHcnpMu4p11yeNktA33uGBW7g/p4R9Z22PMXY6k/cxQlbr2J83nPpL7tRE7kVrW6pX3wHmn015YlbUFEIli2oy4WUB5qOFhy0fdRpW6/aXTLkdiYSF1Lo5uYZrEOgPfb6TJcKNiMBuO57zSWQO2M3q4luYDC4gHxhvzExJOwouTSCubLgaVI+7L/kUGQ58bWj7zW9XyGhJUBVfbOLDhU5eEn5NG9RopLK+uVvpHtQIiMwsz51/l5XMLFr5+BbHiA1Ni4/SDqiTqt2lI0NL17LfQAsl35vx/xrYqzgUcpnnL11FVgxKJq8DFXHS4FwUnB4go22wk0Pn8aOrCKRV00G8vm220pN8YRfhw+SDWLLh0Lh5EyLYx2m9msht1A3d3G6G38n1EA3kmDV/YhwJ/03b/RZsH5XA9gXZTJu3B59xSfuH4sKd/eS0ynAbxsZjEKlA0RkMkXFC/zksWx5qg930cUOYLNkmyYPBi97Z5xmh8rSUHLiiiDUFyyO5dYI/xPzZ54SS1XKwj3WO4YUyBWXiiQO0DUH92WBWHtiJOev2tzSanb6di6DjmMkxEC1iPSfZmf0DKmp2B+7NSKqLcf9E6zdtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(366004)(136003)(396003)(346002)(451199021)(186003)(2616005)(6512007)(36756003)(316002)(86362001)(478600001)(31696002)(38100700002)(66946007)(66556008)(66476007)(6666004)(6486002)(4326008)(82960400001)(55236004)(53546011)(6506007)(41300700001)(26005)(8676002)(30864003)(8936002)(5660300002)(83380400001)(31686004)(2906002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnZJZlhyaEVmTzVpbUlhcCs1eDRqRkxiTEs2d3Vkd0xJV2pnTUovOUZiWlFk?=
 =?utf-8?B?V0VIZ1dsYzZQQ2xZK3NSbzNCODROSXdjdXlUenkvTVY2WjJyTFhxYmF1NUZl?=
 =?utf-8?B?QTA5WXE0TTZ5YSszdUZnaEp4MWN3NGhFLzRic0l5N0tuQXRSQmlmaDdUNkpt?=
 =?utf-8?B?TTkrdy9RWDNwdUIyUlhTK3BnYTN5T0dWa2cvakRDTS9LKytveHJ4Z1pNb0ds?=
 =?utf-8?B?UjE2aFFmV3BBVnNSRXdtd2pFbS9yVml4bnNTeFRSUFNNeHZQeVh4UzNLMzJV?=
 =?utf-8?B?cTJ3QndQbzgrd0RYelY5TEhyQjcxVGlLSms4dXRwTnhuTWI3bXQxTytlbERq?=
 =?utf-8?B?M2RBcTZhRlU3SVJRbE1EMTZYeENBODh1TjFKNG5BYjlyUUFkZ1BjTWlyWnYv?=
 =?utf-8?B?WXljRGtKMWgrTUF2anJMOGQvSHczZ3BKNFdaZFBaUzN1R2hqWm5PdVFFbE05?=
 =?utf-8?B?ZUUzM1JTTDI1a0htTlIxZHdlQ2Myd2NCK1huNXp0Vk1ORGNXd1lJeXRxNHZ4?=
 =?utf-8?B?cjhzcWYrR3VJdm1CeXA1Q2MyUGhZeStZTlJ5aXNiOVVlb00zNSs1VXZYNUZr?=
 =?utf-8?B?TlRoaXhDSkVEMkhDazRiMkZUdEkwTjh2YzIzYlFDdGgyUFVCZ3FaSEVvSG1C?=
 =?utf-8?B?RHVoem11b3dJSFM2OFNJa2FYQTEraUZ5SEptbVFPdmdZUjJLNzFGNTMrWVUw?=
 =?utf-8?B?dUJNT2RaN21tQ3ViU1lJYUhpNXp3QU52SWRvZ1d1eW1adHQray8wR1pnazdm?=
 =?utf-8?B?d3U0Mk40cENxQXN0QXVXQ3BnSTB3aE54UlRDOHBHZlhVY2hBU1NCNS9wMWVw?=
 =?utf-8?B?blZMOWd0b2MyZEN6dWgxZUt1SkVuRlRWRkt6K1U1Q2Y5TytxcUlmV3BiV1A3?=
 =?utf-8?B?T0w4dFA1aHVqNU1lcHZnNG1NWFJ4aHltblNnZjJDc056OUlxZjFucUdrYmx2?=
 =?utf-8?B?bENLaTE2VDBsVDg2V1ZMOC9pcEFKNnNHTld2cjRqY3pGYnQ2bnZKM2kraTFU?=
 =?utf-8?B?cW9iTGJpMUErb1Z4S2JCSGFhMXRZTjFpNWZET0p3QTdyVXI0TVZ3Z2FCbWRP?=
 =?utf-8?B?UUpRNTJ6bmFWbFBlZXhLTkR0TGt5WG5TMWg1L3YvcTkwRDdtTWdqb3BqSTgw?=
 =?utf-8?B?YzhsQStoNTFFYVBacW9rU1dIMUE1MjhlSGVQSzdEQmxVdjkxbmt4RysybytI?=
 =?utf-8?B?NGg0d0hSeDZmem41bU5Ca2s4a2l4NVJrV1pVOGx4UFNwZ3hYY295WUhpS1ky?=
 =?utf-8?B?V3l1b3BYSVdRZHJaKzc4WVgrRjlNbDBzRUptdmFYbzlWcFFkczhReStlOU5F?=
 =?utf-8?B?MGlEK2tQVjlQZW4zVGVOM2g3UFA4QktCejg3dmN1dGwwRlRnenpTaHNiRUF4?=
 =?utf-8?B?Rmt1aUhYbkR3M2ludXlma0o2dkxqcER4aTJJRW00WFRrd2tDTVMxUkg0TS9T?=
 =?utf-8?B?c0tlUS9DamhuWDlIN0hBeUhPaC9ONEE4YlgxT2RRT0V1czRVU0lZUzg4alMy?=
 =?utf-8?B?UU4yVG10bWJkaTlwNGREaVVrOVhYOU9oU1hHK2N4SzR3NFRJZlNldnU3a0lj?=
 =?utf-8?B?eGFueDNELzdmc2VGRzRXeU9qUUxHcXRlWTJkYnBlUXl1MiszeTBBUVZyWFlG?=
 =?utf-8?B?aXBSMnFlajYzZTlkVmJBUDZ2M01qUEhuTGlORE1aVmxJbFptT3M2MlZaL1FX?=
 =?utf-8?B?YVU4SlpWMGY2a3BGYXZVbHJCMEdZWE12YWFpVkdleHVsR01qdEVjbE4xR29q?=
 =?utf-8?B?RUl5TUlOM0FVOE9zVzVZUW1EL0ljOG9sQktZTUcrS1czU3RaTGtFRWhaV3h2?=
 =?utf-8?B?WHAvQ1lCVW1nTnZLRWovMnZxUVcwR21hZGd2MGV2NEdjQzFGRFpzdS8vZGVY?=
 =?utf-8?B?d0E0a2tXRjhFWWFZTU0xdHpjdFJBVFF4aFpPN1JSb3hDLzVuU3Qzd1plRzF6?=
 =?utf-8?B?cXozOFRWc3RGd0tGNXB1VlFGM1EvV25ndnI2bUtWY3k0Q0I1b2U1ak1zdW1G?=
 =?utf-8?B?SEo1aUxCY2JZdWFHUkM3V0NPWURwbzJnaGpkY2VpdDh0a0tXL3FsSjVyVFBk?=
 =?utf-8?B?VDdadW5tbWNIMmpHZ3FzcXphMHFvZWw0SHM0enZ0aEJxb0VSbDdZYndSdVNl?=
 =?utf-8?B?aGdiQVlLQjYvQjFvSUFzdDhVbUwvT1E5c0hlTFJXb2FVVnVlUnN5Y0ZZVTcv?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2623c736-a0b0-4256-892e-08db931f825c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2023 06:12:54.7260 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V+pYSnHYtOZaUlQkZCKykm7ps/AOSQ8mosIct+GpmRnBoTngolu4kE8BRLvohOa5tBhvTQUSLCtST/f1Z5lUfLsmR0L60X+RN3SMazJoUQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4841
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/7] drm/i915/vdsc: Refactor dsc register
 field macro
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 7/20/2023 1:37 PM, Suraj Kandpal wrote:
> This patch refactors dsc register related macros that prepares
> the values to be written in the register. The current bit shifting
> looks bad and going forward will not serve our purpose to readout
> dsc register field values the change was suggested by Jani Nikula.
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    | 98 +++++++++++++------
>   1 file changed, 70 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index b71f00b5c761..785ede31116e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -57,7 +57,8 @@
>   #define MTL_DSC1_PICTURE_PARAMETER_SET_17(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PB, \
>   							   _MTL_DSC1_PICTURE_PARAMETER_SET_17_PC)
> -#define DSC_SL_BPG_OFFSET(offset)		((offset) << 27)
> +#define DSC_SL_BPG_OFFSET_MASK			REG_GENMASK(31, 27)
> +#define DSC_SL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_SL_BPG_OFFSET_MASK, offset)
>   
>   #define _MTL_DSC0_PICTURE_PARAMETER_SET_18_PB	0x782B8
>   #define _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB	0x783B8
> @@ -69,8 +70,10 @@
>   #define MTL_DSC1_PICTURE_PARAMETER_SET_18(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PB, \
>   							   _MTL_DSC1_PICTURE_PARAMETER_SET_18_PC)
> -#define DSC_NSL_BPG_OFFSET(offset)		((offset) << 16)
> -#define DSC_SL_OFFSET_ADJ(offset)		((offset) << 0)
> +#define DSC_NSL_BPG_OFFSET_MASK			REG_GENMASK(31, 16)
> +#define DSC_SL_OFFSET_ADJ_MASK			REG_GENMASK(15, 0)
> +#define DSC_NSL_BPG_OFFSET(offset)		REG_FIELD_PREP(DSC_NSL_BPG_OFFSET_MASK, offset)
> +#define DSC_SL_OFFSET_ADJ(offset)		REG_FIELD_PREP(DSC_SL_OFFSET_ADJ_MASK, offset)
>   
>   /* Icelake Display Stream Compression Registers */
>   #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
> @@ -123,8 +126,10 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PB, \
>   					    _ICL_DSC1_PICTURE_PARAMETER_SET_2_PC)
> -#define  DSC_PIC_WIDTH(pic_width)	((pic_width) << 16)
> -#define  DSC_PIC_HEIGHT(pic_height)	((pic_height) << 0)
> +#define  DSC_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
> +#define  DSC_PIC_HEIGHT_MASK		REG_GENMASK(15, 0)
> +#define  DSC_PIC_WIDTH(pic_width)	REG_FIELD_PREP(DSC_PIC_WIDTH_MASK, pic_width)
> +#define  DSC_PIC_HEIGHT(pic_height)	REG_FIELD_PREP(DSC_PIC_HEIGHT_MASK, pic_height)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_3		_MMIO(0x6B20C)
>   #define DSCC_PICTURE_PARAMETER_SET_3		_MMIO(0x6BA0C)
> @@ -138,8 +143,10 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_3_PC)
> -#define  DSC_SLICE_WIDTH(slice_width)   ((slice_width) << 16)
> -#define  DSC_SLICE_HEIGHT(slice_height) ((slice_height) << 0)
> +#define  DSC_SLICE_WIDTH_MASK			REG_GENMASK(31, 16)
> +#define  DSC_SLICE_HEIGHT_MASK			REG_GENMASK(15, 0)
> +#define  DSC_SLICE_WIDTH(slice_width)		REG_FIELD_PREP(DSC_SLICE_WIDTH_MASK, slice_width)
> +#define  DSC_SLICE_HEIGHT(slice_height)		REG_FIELD_PREP(DSC_SLICE_HEIGHT_MASK, slice_height)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_4		_MMIO(0x6B210)
>   #define DSCC_PICTURE_PARAMETER_SET_4		_MMIO(0x6BA10)
> @@ -153,8 +160,12 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_4_PC)
> -#define  DSC_INITIAL_DEC_DELAY(dec_delay)       ((dec_delay) << 16)
> -#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     ((xmit_delay) << 0)
> +#define  DSC_INITIAL_DEC_DELAY_MASK		REG_GENMASK(31, 16)
> +#define  DSC_INITIAL_XMIT_DELAY_MASK		REG_GENMASK(9, 0)
> +#define  DSC_INITIAL_DEC_DELAY(dec_delay)       REG_FIELD_PREP(DSC_INITIAL_DEC_DELAY_MASK, \
> +							       dec_delay)
> +#define  DSC_INITIAL_XMIT_DELAY(xmit_delay)     REG_FIELD_PREP(DSC_INITIAL_XMIT_DELAY_MASK, \
> +							       xmit_delay)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_5		_MMIO(0x6B214)
>   #define DSCC_PICTURE_PARAMETER_SET_5		_MMIO(0x6BA14)
> @@ -168,8 +179,10 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_5_PC)
> -#define  DSC_SCALE_DEC_INT(scale_dec)	((scale_dec) << 16)
> -#define  DSC_SCALE_INC_INT(scale_inc)		((scale_inc) << 0)
> +#define  DSC_SCALE_DEC_INT_MASK			REG_GENMASK(27, 16)
> +#define  DSC_SCALE_INC_INT_MASK			REG_GENMASK(15, 0)
> +#define  DSC_SCALE_DEC_INT(scale_dec)		REG_FIELD_PREP(DSC_SCALE_DEC_INT_MASK, scale_dec)
> +#define  DSC_SCALE_INC_INT(scale_inc)		REG_FIELD_PREP(DSC_SCALE_INC_INT_MASK, scale_inc)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_6		_MMIO(0x6B218)
>   #define DSCC_PICTURE_PARAMETER_SET_6		_MMIO(0x6BA18)
> @@ -183,10 +196,16 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_6_PC)
> -#define  DSC_FLATNESS_MAX_QP(max_qp)		((max_qp) << 24)
> -#define  DSC_FLATNESS_MIN_QP(min_qp)		((min_qp) << 16)
> -#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	((offset) << 8)
> -#define  DSC_INITIAL_SCALE_VALUE(value)		((value) << 0)
> +#define  DSC_FLATNESS_MAX_QP_MASK		REG_GENMASK(28, 24)
> +#define  DSC_FLATNESS_MIN_QP_MASK		REG_GENMASK(20, 16)
> +#define  DSC_FIRST_LINE_BPG_OFFSET_MASK		REG_GENMASK(12, 8)
> +#define  DSC_INITIAL_SCALE_VALUE_MASK		REG_GENMASK(5, 0)
> +#define  DSC_FLATNESS_MAX_QP(max_qp)		REG_FIELD_PREP(DSC_FLATNESS_MAX_QP_MASK, max_qp)
> +#define  DSC_FLATNESS_MIN_QP(min_qp)		REG_FIELD_PREP(DSC_FLATNESS_MIN_QP_MASK, min_qp)
> +#define  DSC_FIRST_LINE_BPG_OFFSET(offset)	REG_FIELD_PREP(DSC_FIRST_LINE_BPG_OFFSET_MASK, \
> +							       offset)
> +#define  DSC_INITIAL_SCALE_VALUE(value)		REG_FIELD_PREP(DSC_INITIAL_SCALE_VALUE_MASK, \
> +							       value)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_7		_MMIO(0x6B21C)
>   #define DSCC_PICTURE_PARAMETER_SET_7		_MMIO(0x6BA1C)
> @@ -200,8 +219,11 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PB, \
>   							    _ICL_DSC1_PICTURE_PARAMETER_SET_7_PC)
> -#define  DSC_NFL_BPG_OFFSET(bpg_offset)		((bpg_offset) << 16)
> -#define  DSC_SLICE_BPG_OFFSET(bpg_offset)	((bpg_offset) << 0)
> +#define  DSC_NFL_BPG_OFFSET_MASK		REG_GENMASK(31, 16)
> +#define  DSC_SLICE_BPG_OFFSET_MASK		REG_GENMASK(15, 0)
> +#define  DSC_NFL_BPG_OFFSET(bpg_offset)		REG_FIELD_PREP(DSC_NFL_BPG_OFFSET_MASK, bpg_offset)
> +#define  DSC_SLICE_BPG_OFFSET(bpg_offset)	REG_FIELD_PREP(DSC_SLICE_BPG_OFFSET_MASK, \
> +							       bpg_offset)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_8		_MMIO(0x6B220)
>   #define DSCC_PICTURE_PARAMETER_SET_8		_MMIO(0x6BA20)
> @@ -215,8 +237,12 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_8_PC)
> -#define  DSC_INITIAL_OFFSET(initial_offset)		((initial_offset) << 16)
> -#define  DSC_FINAL_OFFSET(final_offset)			((final_offset) << 0)
> +#define  DSC_INITIAL_OFFSET_MASK		REG_GENMASK(31, 16)
> +#define  DSC_FINAL_OFFSET_MASK			REG_GENMASK(15, 0)
> +#define  DSC_INITIAL_OFFSET(initial_offset)	REG_FIELD_PREP(DSC_INITIAL_OFFSET_MASK, \
> +							       initial_offset)
> +#define  DSC_FINAL_OFFSET(final_offset)		REG_FIELD_PREP(DSC_FINAL_OFFSET_MASK, \
> +							       final_offset)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_9		_MMIO(0x6B224)
>   #define DSCC_PICTURE_PARAMETER_SET_9		_MMIO(0x6BA24)
> @@ -230,8 +256,12 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_9_PC)
> -#define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	((rc_edge_fact) << 16)
> -#define  DSC_RC_MODEL_SIZE(rc_model_size)	((rc_model_size) << 0)
> +#define  DSC_RC_EDGE_FACTOR_MASK		REG_GENMASK(19, 16)
> +#define  DSC_RC_MODEL_SIZE_MASK			REG_GENMASK(15, 0)
> +#define  DSC_RC_EDGE_FACTOR(rc_edge_fact)	REG_FIELD_PREP(DSC_RC_EDGE_FACTOR_MASK, \
> +							       rc_edge_fact)
> +#define  DSC_RC_MODEL_SIZE(rc_model_size)	REG_FIELD_PREP(DSC_RC_MODEL_SIZE_MASK, \
> +							       rc_model_size)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_10		_MMIO(0x6B228)
>   #define DSCC_PICTURE_PARAMETER_SET_10		_MMIO(0x6BA28)
> @@ -245,10 +275,16 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_10_PC)
> -#define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)		((rc_tgt_off_low) << 20)
> -#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	((rc_tgt_off_high) << 16)
> -#define  DSC_RC_QUANT_INC_LIMIT1(lim)			((lim) << 8)
> -#define  DSC_RC_QUANT_INC_LIMIT0(lim)			((lim) << 0)
> +#define  DSC_RC_TGT_OFF_LOW_MASK			REG_GENMASK(23, 20)
> +#define  DSC_RC_TGT_OFF_HIGH_MASK			REG_GENMASK(19, 16)
> +#define  DSC_RC_QUANT_INC_LIMIT1_MASK			REG_GENMASK(12, 8)
> +#define  DSC_RC_QUANT_INC_LIMIT0_MASK			REG_GENMASK(4, 0)
> +#define  DSC_RC_TARGET_OFF_LOW(rc_tgt_off_low)		REG_FIELD_PREP(DSC_RC_TGT_OFF_LOW_MASK, \
> +								       rc_tgt_off_low)
> +#define  DSC_RC_TARGET_OFF_HIGH(rc_tgt_off_high)	REG_FIELD_PREP(DSC_RC_TGT_OFF_HIGH_MASK, \
> +								       rc_tgt_off_high)
> +#define  DSC_RC_QUANT_INC_LIMIT1(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT1_MASK, lim)
> +#define  DSC_RC_QUANT_INC_LIMIT0(lim)		REG_FIELD_PREP(DSC_RC_QUANT_INC_LIMIT0_MASK, lim)
>   
>   #define DSCA_PICTURE_PARAMETER_SET_11		_MMIO(0x6B22C)
>   #define DSCC_PICTURE_PARAMETER_SET_11		_MMIO(0x6BA2C)
> @@ -327,9 +363,15 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_16_PC)
> -#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	((slice_row_per_frame) << 20)
> -#define  DSC_SLICE_PER_LINE(slice_per_line)		((slice_per_line) << 16)
> -#define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		((slice_chunk_size) << 0)
> +#define  DSC_SLICE_ROW_PR_FRME_MASK			REG_GENMASK(31, 20)
> +#define  DSC_SLICE_PER_LINE_MASK			REG_GENMASK(18, 16)
> +#define  DSC_SLICE_CHUNK_SIZE_MASK			REG_GENMASK(15, 0)
> +#define  DSC_SLICE_ROW_PER_FRAME(slice_row_per_frame)	REG_FIELD_PREP(DSC_SLICE_ROW_PR_FRME_MASK, \
> +								       slice_row_per_frame)
> +#define  DSC_SLICE_PER_LINE(slice_per_line)		REG_FIELD_PREP(DSC_SLICE_PER_LINE_MASK, \
> +								       slice_per_line)
> +#define  DSC_SLICE_CHUNK_SIZE(slice_chunk_size)		REG_FIELD_PREP(DSC_SLICE_CHUNK_SIZE_MASK, \
> +								       slice_chunk_size)
>   
>   /* Icelake Rate Control Buffer Threshold Registers */
>   #define DSCA_RC_BUF_THRESH_0			_MMIO(0x6B230)
