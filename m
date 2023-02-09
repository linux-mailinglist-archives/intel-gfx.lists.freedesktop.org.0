Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 281FE68FC40
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 01:56:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED6010E8CE;
	Thu,  9 Feb 2023 00:56:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 105E510E8CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 00:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675904214; x=1707440214;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GLHrkvf3j+sv22NIbAD5JgQAsgnWp9LqjQVb+FFl2ds=;
 b=dpolhQFud8/JyPGDsL+IpfF+d2b6kICEn29bM/ev2z6/gPInnuraf8LO
 Mcce0WWPy5z+gAEpFPsNNk/lIbr7u3w7v+/7dK8wEks1HjWHUTwTtDUcB
 N0+w5cCNFa5tcX99zkaZdN50Nxa+HnnVE7Qhc8Rbtj3AlaXgx/82bLl6S
 7UHJaPsnH5uI7s5oG6Mi1otckfle2Cp1LQhr60WNHIq3x3uxmfc/L44V7
 ndv4aBvouv8Hi97AG+ZC8bq5GrMg0+mN6WkJ5qEmIgQwtbVFZKW1AavWU
 e7HV5pWtaA1Wim58geS7Cndjg1Ux6Mk+dQF/qd5GVTEVA1ang/IovWijw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="357375743"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="357375743"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 16:56:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="645070421"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="645070421"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 08 Feb 2023 16:56:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 8 Feb 2023 16:56:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 8 Feb 2023 16:56:52 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 8 Feb 2023 16:56:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGBgk2MEgOaCimd7babe47vvd38jLdi8es0fHsX8R/yOcDh7deosOYI5GLtKBWiUqFaZK1N4kz9sXM4ywwGaUgkhN0fVJqDQFaX61xFGhS7Cb6Vdfw1YEATb1Ek951sNIcDax4tZFXweKideHgInv59Yj+kfFPnH6ZIabeMYhhFJMB733NSAHMVqzcpBnIvAjYdC0V4jXmDNiicVKgxg5hjomfc2i1hnkIHpAwnEqnUSckUKnMsZbj+AE78Fp6jr92DS9FZqzyTDD6JdxsH9LKq9ypgduGJNaJ1K0uW2MOJfSfoZI0LDmemPKK2TID4eWHIwKbLMkkjaEuGyQX/IdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHVyNXfatI/riOTkJjhwPMW++/BZMLVSb4EF0v2eDMY=;
 b=dlQF22fRSRmiC5lXVzrIv6U3fEXuAoREGnvc71id7DLTN9AIW39lFaJZ3FrfZSJp+ZQkxKVU04jnFlKHxtnM1zkjFRDVPBHwfHcFaXLVVgPMqjvz5pTzZjRs2OuwbjvSvgNzS+w+5FgO5QXwr5uE1Gd1kIN+ymP+DT3PWAC7NBxmWpr+vWX+Q0/AEQIniyZzRSviKJNSNtMAj1ZbHDNa5PTPAeupyWvK5UdKNOFWH6veBQEM0db2Eix3fK1DQ7kLrFHJpuQY2UME+yQP+8fyx3pXh4kkcdowOB/SgBzkGJljcYUX2kM6BmGxPE0i3y8bzcp/RCkampVMtxn1av59aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ0PR11MB5816.namprd11.prod.outlook.com (2603:10b6:a03:427::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Thu, 9 Feb
 2023 00:56:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%6]) with mapi id 15.20.6086.017; Thu, 9 Feb 2023
 00:56:49 +0000
Date: Wed, 8 Feb 2023 16:56:38 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230209005638.7x2epal6etncaw4w@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20230206165410.3056073-1-lucas.demarchi@intel.com>
 <167571386943.27492.10730325104114115012@emeril.freedesktop.org>
 <20230207190555.2zrcey4vnj2ctjw4@ldmartin-desk2.lan>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230207190555.2zrcey4vnj2ctjw4@ldmartin-desk2.lan>
X-ClientProxiedBy: SJ0PR13CA0222.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::17) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ0PR11MB5816:EE_
X-MS-Office365-Filtering-Correlation-Id: eb0db57e-94ea-476e-96a1-08db0a388649
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d3d6hGDbMEuXJ6+UOpwsopfWTaVLlN78EELuxmb52XePJxdgNCwThh+KrgIuZ1QZb9EXkTyLLVQK9JS4mDIvEbQ54MQGLRK83S1t6pPqoqn+KQrPX2w1JZr/I84i8RWiiajQM+EPgSF3eG+im5hGHajS6SGiO0dsWG7O0SsNzqISKbxRCzgX2v2/Kfwj1k3XSJvuXCxA54dNlNK+8GnJPZBZrRAEDZeEYVS56BFsU9bK1dSIya9rjPJiv39hLUIsB/H8wpZVuw1mOY5s6nbhImCXjgoPratGaIkbOSGClAWtjoenHVbVqihxjbZXvrB5XcoEKO1m3FPyskWgVi1x1VvzlOQDDTHcHiRYgbOsDmvWwe91uyWwAjGLutVVsxL+0Dx3M1zD5R3nCK8zf3kUh77KnXt57cfiMwwjf/VANjE6L6Xc+Oh2je71fLstfY+Yxm5UGxD8CAjd98adGPAdwTT8/wT3jJWmkqOlpE/uzf/K7KYmTaze6RCnnQl/SKtlMjPP1BmhlT3jYEhwgkRjli6Dh1mvaN78O3qM/Dkz9a7OG7IRuvhBCILB/+6PvozVczXvh7ZQghMn7+T7mYE0FTaQO0lJ1xHdP8Bm7Ru1t31OoOcUgc0we2sko3FpJgF5CylIRG8sjBRFPrNawQUebyX57dqQcm5fWwy0yYz8UJw4ABGLAv3G06XynVOP8kIA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(396003)(39860400002)(346002)(366004)(451199018)(316002)(83380400001)(107886003)(6666004)(36756003)(2906002)(478600001)(9686003)(26005)(186003)(6512007)(5660300002)(8936002)(66946007)(66556008)(6506007)(1076003)(66476007)(966005)(6486002)(82960400001)(86362001)(38100700002)(41300700001)(4326008)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jJWEx/VLdIPTRjJ3Z62btrkniLspo92KGyK2jP8371aCClGUSAyWO9syQTQQ?=
 =?us-ascii?Q?8w6swGWg+NGWDxnsOHwwlmh3YqRgyVN2NmLLGPzH4tE5R6yfX7JnWAoi7dFd?=
 =?us-ascii?Q?96Nx1KUVQCQZWuauQHQIe1YNI24zz+7HssUvwBfXmGvAraFFMaFl1nRvuFuC?=
 =?us-ascii?Q?qIDHbYI0w3WXTYCC6Ev+2cZAyGERFBqPARYzC495QzSzcCRg1ULSh2tixmF7?=
 =?us-ascii?Q?ut+m6+9eBT8Y7LS2jChASYlBFZKo5hPldwCPq9cvmZedw7xLdpoxyUilmWLt?=
 =?us-ascii?Q?Pm9Ya/zDDSc0h2vw4W0j44CdQou2dKd2S0PrSQIzgfwOTgez1R2eFKC5in6l?=
 =?us-ascii?Q?38fNYOt8XpS1gIzd92merhsk+NKf+oiw/QAUq0suipxE2cjaExxMNfv3Jjmh?=
 =?us-ascii?Q?snp/2hPZioXBwG9zsX57WjExAORmS673BB1hhSke7Vrjs+uUO/KZ/lPDQYGb?=
 =?us-ascii?Q?nkoAP9spEoxT7dxwLMdwppg8NrMZpn+u2QV8Syrtm3Ylw5RnfzYDGd6IthEM?=
 =?us-ascii?Q?LJQnYEDjvLO/EMrSYD6+pKassMFGvDCc5iAkNNW8pxc/spZsNfHXfw9i9vlK?=
 =?us-ascii?Q?rSpHAgKK2gEGnf4wDr9ylf/eRcUGX1+oyHTSwmvZ5KkSpMJASiiP+qHFLUtW?=
 =?us-ascii?Q?uWziSuq6zRpUIX5vm9mHHJMWQD94DViEtbLfwqsxRPYsT2KFZRJDg2ii1Fp4?=
 =?us-ascii?Q?XSjRSts4iA1AnGPYVrKwkQ3KYYOSNC4n1UR5gJsJ9YZQLK43wRGvx+mgBRXr?=
 =?us-ascii?Q?gmIiV4cuR/9Ao7AHhNqpO792ibC88nhnCZNshcZ8PfWZoUVgSEigjUhnDSwE?=
 =?us-ascii?Q?yTZzLq0P6L/lUC32d5lh3GJjAIpuukZzP2IpSmp5P4GEmf83z9o96B27ASEv?=
 =?us-ascii?Q?6H84GdJH0JnFGnC2VAZvuWhKpl7mopiWcEssFTHZdqDFbDg96R7mCwaLDb/U?=
 =?us-ascii?Q?D1+YnLJsvqmixW8sKr9tyhbwLVCrDObVMc3x8r1K9cUpZwfsckc8MDZIS1Dk?=
 =?us-ascii?Q?BMxsjEjnw4h4gh9PF3xlmJsiYzWijc655t6tmlcN0qXJVMEur/M3UA/QQL1k?=
 =?us-ascii?Q?KA68MzbpdgL8bnrPawZCJAVYMiNzuRSqfEDLKXo1y8jJO70k9C3MYHfXWQSu?=
 =?us-ascii?Q?UwibyKNgL+ChVvJC4p8EY9ckz/nMUE21lHbKjdI2gi4XNSmpp04Nv7W1p1bQ?=
 =?us-ascii?Q?KOjg2Wu8b99SuNj82KNIhl5NArsjVGxQk9ZbouOkZWb47sSRUMzJUr/ZiH7D?=
 =?us-ascii?Q?RWv+2ziZb1o2VEVOGBBZryoIqvM74pyKCjZifojN+ZqyuRUVAvEPJt7vS/yI?=
 =?us-ascii?Q?JuNNyWCBj4nVBFfqjtnckODv316zkd1IOLsnGbQKTEtsvQZanjBbHNurocSG?=
 =?us-ascii?Q?CCLn3sHAxDZk9lJtuUlzoJObRXP8PqVA5IoBYpL6Cw3r+1W2x6FF7IDpxBj0?=
 =?us-ascii?Q?GZ2tv926+ekXNeKkjRZA/wKhgdrxhXQDCgI915ZMqJCrPKcbd0IzgtzBHV3M?=
 =?us-ascii?Q?EiIieQRhevOwnLuW2pmtexlkmTfYxtXC9L8WCjycjKNfB+Ak0VFoFQka6gJ/?=
 =?us-ascii?Q?RzrjdCKGk6i5yAHyDxDkT1ZwVVzrFZVc4XlEdixwZF9NR9V82VOMr9qg4kI1?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb0db57e-94ea-476e-96a1-08db0a388649
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2023 00:56:49.2816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z73J0qoVjk8AZI19vjCynxRDDQZrCoOcZ1AF5YQOyiySlKfx5/pddz4rNiuoMDA3j911J3zjVCRgbdzatHHaWbmAyVfMB5SX1C9DrXcYCRo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5816
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgIHNl?=
 =?utf-8?q?ries_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Fix_GEN8=5FMISCCP?=
 =?utf-8?q?CTL?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 07, 2023 at 11:05:55AM -0800, Lucas De Marchi wrote:
>On Mon, Feb 06, 2023 at 08:04:29PM +0000, Patchwork wrote:
>>== Series Details ==
>>
>>Series: series starting with [v2,1/2] drm/i915: Fix GEN8_MISCCPCTL
>>URL   : https://patchwork.freedesktop.org/series/113713/
>>State : failure
>>
>>== Summary ==
>>
>>CI Bug Log - changes from CI_DRM_12704 -> Patchwork_113713v1
>>====================================================
>>
>>Summary
>>-------
>>
>> **FAILURE**
>>
>> Serious unknown changes coming with Patchwork_113713v1 absolutely need to be
>> verified manually.
>>
>> If you think the reported changes have nothing to do with the changes
>> introduced in Patchwork_113713v1, please notify your bug team to allow them
>> to document this new failure mode, which will reduce false positives in CI.
>>
>> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html
>>
>>Participating hosts (36 -> 34)
>>------------------------------
>>
>> Missing    (2): bat-atsm-1 fi-snb-2520m
>>
>>Possible new issues
>>-------------------
>>
>> Here are the unknown changes that may have been introduced in Patchwork_113713v1:
>>
>>### IGT changes ###
>>
>>#### Possible regressions ####
>>
>> * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
>>   - fi-elk-e7500:       [PASS][1] -> [FAIL][2]
>>  [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
>>  [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
>
>unrelated fail. There were no changes between v1 and v2 except for the
>commit message in the first patch. v1 got full pass:
>https://patchwork.freedesktop.org/series/113626/


used these results as "it's safe enough to push" and applied.

Lucas De Marchi

>
>Also, looking at https://intel-gfx-ci.01.org/tree/drm-tip/bat-all.html?testfilter=basic-flip-vs-modeset
>It looks like this machine changed from DP to HDMI starting in
>CI_DRM_12708?
>
>Lucas De Marchi
>
>
>>
>>
>>Known issues
>>------------
>>
>> Here are the changes found in Patchwork_113713v1 that come from known issues:
>>
>>### IGT changes ###
>>
>>#### Issues hit ####
>>
>> * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>>   - bat-dg1-5:          NOTRUN -> [SKIP][3] ([i915#7828])
>>  [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>>
>>
>>#### Possible fixes ####
>>
>> * igt@i915_selftest@live@hangcheck:
>>   - bat-dg1-5:          [ABORT][4] ([i915#4983]) -> [PASS][5]
>>  [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>>  [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>>
>> * igt@i915_selftest@live@slpc:
>>   - {bat-rpls-1}:       [DMESG-FAIL][6] ([i915#6367]) -> [PASS][7]
>>  [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/bat-rpls-1/igt@i915_selftest@live@slpc.html
>>  [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
>>
>> * igt@kms_busy@basic@modeset:
>>   - fi-elk-e7500:       [FAIL][8] -> [PASS][9]
>>  [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12704/fi-elk-e7500/igt@kms_busy@basic@modeset.html
>>  [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/fi-elk-e7500/igt@kms_busy@basic@modeset.html
>>
>>
>> {name}: This element is suppressed. This means it is ignored when computing
>>         the status of the difference (SUCCESS, WARNING, or FAILURE).
>>
>> [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>> [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
>> [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>> [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
>> [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
>> [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>>
>>
>>Build changes
>>-------------
>>
>> * Linux: CI_DRM_12704 -> Patchwork_113713v1
>>
>> CI-20190529: 20190529
>> CI_DRM_12704: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux
>> IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>> Patchwork_113713v1: 0f138ae07efe477bd51695d63b03394050bb6e07 @ git://anongit.freedesktop.org/gfx-ci/linux
>>
>>
>>### Linux commits
>>
>>204afd36a3d7 drm/i915: Remove unused/wrong INF_UNIT_LEVEL_CLKGATE
>>80322c878d54 drm/i915: Fix GEN8_MISCCPCTL
>>
>>== Logs ==
>>
>>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113713v1/index.html
