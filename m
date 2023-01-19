Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D741867454E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 22:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005F210E272;
	Thu, 19 Jan 2023 21:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580DA10E26F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 21:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674165424; x=1705701424;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pvm6tivhlxMYfUGinSnoMM2hb3A3dgne60Mot3MXgio=;
 b=ZVw0k6kJzpegNX7FaD8IIGFflhMRh6dmEbqxxehKfx1nCdZUcwQTYGTa
 8lMvOEV0ckQ3RkX7lyn/aEI/NeXIwVlb66X8pHu/WKCqKHFFxOkz/TBOK
 j9o8fvuFLtn1OPGPXe60Dt//lfp/ZkXPYeJmQ8PaDfphqtfRjQ5whaPe8
 4h3om94EpJk6XWNTR5z7/6FLohV0bqmQrYxq8mVj1AYcNurUjKGO06Sw7
 6HAruUX6QvxybVcYp+dpV61Qi+PlSGpuM6pOdslMd7FXFpQKojDVrmYMp
 ZqS/UG9mGz690occtlIcTRVeVws0JoSJwfatGY28ElRjaoYYz5k51O6l1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="326715041"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="326715041"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 13:57:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="662270746"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="662270746"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jan 2023 13:57:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 13:57:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 13:57:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 13:57:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kQgn2zYozcu0d1dc6fvoC9VG0p0WBPm2/GRGWgjgnwSGUUf7xKqHQCxylDRNnFa9WikhC15RAE1moFxL3oDUjwIaxMUcujo969oHJSCY04Ti6AhyyKZ/Q+UsJ0EIa8qgOUcjeoGk739CUVEHF2UJtCV9+8rQgBL3cqxMzmnhB2Te5Jmc7/5FIkUfXlQ3JBxhu4+1m9j9QyH8AkakDbzyZgOPTXCa2gCbCN+gaEBKZ+DBaf0WLuj1OKJGrqCayk/oDyOG/Nux6oUI8BPFI3x7heJB2HTRGMrBXtpLvVobglRFrZfqJvVcUoWdNjcWWf6n5Ohst3NVRUg8OMSGn8/knw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CzG3UrZK2VgguIjpQAR+LOIfRkscXJC7agvypKvjQg0=;
 b=UhA4LR2/dHfC8aP6kYTDb7R7ueXO9ujpLmYqICQDYWE/ZxCBy+2QCv/2Fqh3QTeJ9k1SE9rDO4Aomhbl81/FCmuc1RIlbMnBLopXUwbSfbSnqUZKvkEw5QZv63XcueErPw54zYUcbXy652FzPmBs2tYKIH06Ey0uZejIBwvOMZCWEnnnoffo8GtPlNXbnXfeRtmAECyXTDGyYGotXVbE4ja9A3ULnNBuF45s0ob5KLsI42sDfkoL0SSrB1/TXp/cEO8tp7yLYC4tsRnjGBZe5vmn1498AqyyOxiGNkL4SyP2gHKY5ILeVnk3jSUsSLs2oI1enaz5PSDNnUZd8Bc+4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5419.namprd11.prod.outlook.com (2603:10b6:408:100::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Thu, 19 Jan
 2023 21:57:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Thu, 19 Jan 2023
 21:57:01 +0000
Date: Thu, 19 Jan 2023 16:56:57 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y8m8qT+UIVtWWCTh@intel.com>
References: <20230118155249.41551-1-gustavo.sousa@intel.com>
 <20230118155249.41551-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118155249.41551-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0184.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5419:EE_
X-MS-Office365-Filtering-Correlation-Id: f92d973b-02b7-4fc3-7931-08dafa6817c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n/VelbbWUAtkx36q57xP0mdhv0Hz5BFhmyWr7oDAsU6XjPDtZy2vGWr4t1aHktO16E4aG0sTgZFMq4ihuzLD3ZdZSeyAYM7koV9/KnQ/BcNv8M79le4LUlTWAb9mrbMUUSDtn3JBHzlBf6bsLGzXme9VCrEHX7GF4aaWeU0ittrMnNN2x1eKXSyfp4Wc0m5iB/tJWHCS7rnwUWPX2wF4sxBCGI+z98GRWMI1BCz11HnvB1R7V56A10QDPPtoUF9hHfC1Y3Te6D2GQLnxKkKD/xGnFQcAyw7mk7Az9YR8MEvQG/sP/ZCZ5QimFBGO7jcCqxovG0YOpIq/lgr93rDvwzMkoc4JVYeC/j+J12ZP0A5iBUNXRgo14zkEzl7weZSEgvzvsmRmbBexG5xYdDk/QML8pRSm1tB/NEbGb2vYRQRYySD6+ZCGhBkaA8ITzG3S0aYCLsG07VLy1DVHc9kDcr7ksLWSx/FU7VwHOJNiMRStWpePRV69imvjXaH3VeDmeHXviAKcNRhbimfcZz3vE1555F6NYyefxvT832MFsuO3y0rukWTsWkyESbeegyuns++mwTs5bnQ+f1ZTv8vLCP6PXLmT9ufolBsqhsfO3ZnM0BV4FgdojO2M/kHCU1TJ0uARiWz+/zp4e5z1WrHJIuqFT7F7AWCMn7r3AzIMn1FQTDtGW4FU+GPD8I3Z9r1P
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199015)(82960400001)(66946007)(38100700002)(66556008)(44832011)(6862004)(8936002)(5660300002)(2906002)(66476007)(4326008)(41300700001)(8676002)(2616005)(186003)(83380400001)(26005)(6512007)(6636002)(6666004)(478600001)(316002)(36756003)(37006003)(6486002)(6506007)(86362001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FRr2StABxbvazcNa7Sl3k5/873jlbjGXgCWVFZHclhREJKKTaFBXqp5cvGRG?=
 =?us-ascii?Q?L8ZEp/7VL4MzSVa0Die+dK+qUSrbAsS3hntSotEZdS6OWwSR+jXKvbtyKGRQ?=
 =?us-ascii?Q?LrLWi7bLr51p9u4g1bNL5+xNpGd/T9vIX3UKBd4lsTfyLjIUYrAVtoogNcDC?=
 =?us-ascii?Q?4pnEXHLtdCldkh2vbU7/E+SsXhQiTkLS0c74RW8kFGlEVi/L4qqlRIIF6Gcd?=
 =?us-ascii?Q?Qwn+e7/2/NCOeY0H4Q/M0YTbZ3LIa+y8RxsrZiPlsPdTfaLfer6L9SjUhLj8?=
 =?us-ascii?Q?eJnEdN3tZ3Twstv1N+zrEmuYiFfEPnSnH62uYJkMVhdL8biNWwNu206uoNzw?=
 =?us-ascii?Q?pROvdhILMpZJniPJOucYwV5/hrkNx89DWxFOg4FBDNoTwnOhiyhgK883QAiQ?=
 =?us-ascii?Q?XwarL3beI4u75Q2vGau1M7zthJqVfO74nEyeml/6/L8z2zbirNekc1MQFvhF?=
 =?us-ascii?Q?An8BAIrYPMWLmIW1P+3irBf/lq7/gkAIleDkQcChzK5r4mCd9bQHs9Q8xFO0?=
 =?us-ascii?Q?DPWCSU/GmwNlVeD0JyhHblJEnIrYHKgRBGTRMTB0fXZLgYn+IJadnaWivz9n?=
 =?us-ascii?Q?dlTbw7PWTpgvNyZ3jgB/7k2tTkYUwOLZPjtoSkvSED41aClyULTRkXPn5dBe?=
 =?us-ascii?Q?WsZXf5zBEoFOYTqMNMvd3+yx+0nM027m7PsmJquxIzSzer9vLb9sg3wqvWbB?=
 =?us-ascii?Q?tdy0e4cXCVV6oipS/ihjYepnwJhfd2EzAmxZE+kpdsdkaIs6bGD9lOaEVFnZ?=
 =?us-ascii?Q?Tt3oiKNYC7jQQ3kzc2qOA3FB/+z4bnKfYPWjr5puwpiPZyVRwEbbiKOGnjxr?=
 =?us-ascii?Q?R755IM7rYVYQOI6Uc7c2wuNu9i8xQCduEimXGY+i/nwFHAuDUe1nrov0E5yC?=
 =?us-ascii?Q?OULfYWIl5Ro8hp1jekTHL//TZ4sPvVmFf9Vi0RczfZO+lFh+XUOPFr8jolMH?=
 =?us-ascii?Q?TxzQmYR+QTG92IZqEB5YGl7LxyQCL0a8+//dzG3FzanCDb5SpRg76d0qmUvA?=
 =?us-ascii?Q?V6ghfoqqOtFt1FOO8C9UjjDNehb+KZ15rPvq2uHADmR2kY52jtk+D30ji11L?=
 =?us-ascii?Q?78+cVWsIXQDEf4JB/e3MdY0wg7vNpl496hUy+/2uOoOXFn9Mf+KNVNNUxj+7?=
 =?us-ascii?Q?q5CAC56NOSj15Y1RtjX4MVyQ7Cg1MfdOv4Ie/0IR1pQPBUfe6OWujkaCaIA8?=
 =?us-ascii?Q?7bCr9ON9R2UZaQohdLEfWGScV08OkgwskjNtHzScBmvdzu23Cbt/d9QoujZb?=
 =?us-ascii?Q?YGKjdKcMoGx5YEoZaojlYbipgzisKAFR+EV9rqL751kWcL4ZPWG2Z9/roKPw?=
 =?us-ascii?Q?Xax7l/+60hlOWNU+eU6ThvYMdQpVHGHXFAhQEOYhrVlW3+ln6MlHxLsrHpRN?=
 =?us-ascii?Q?0Elgu+8q2muQ/rro6wVXGJ7JwMgQympjvRjdtMbqcWkh70PqfGPBcxsm44vY?=
 =?us-ascii?Q?WJl9N4nEbwmn5HeQsVJOOgzqU5skFZjIooOn0xmBSi/2uR9FRL/ASPdIYMHT?=
 =?us-ascii?Q?LAJ55nCTBjDd8RYkaTZmhQ7iu8Hj4SmEOfJalpPP53tj7UGMCfqc7cwyAJqm?=
 =?us-ascii?Q?ygYn+aWE+75Cu6gJTMQK+Y4MiRIIv1Yg8Zx9ZnrQVKr83i4h8bH0JgXDVy0f?=
 =?us-ascii?Q?Nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f92d973b-02b7-4fc3-7931-08dafa6817c6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 21:57:01.1582 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DyHZRdooU6/JsubNiwdwq2iJnCrox/96PMQ95+sxiu2ZH2ogP0nXMdCik32qKg7KQWfXah3oqcBvTG7YtN1LTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5419
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/doc: Document where to
 implement register workarounds
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 18, 2023 at 12:52:48PM -0300, Gustavo Sousa wrote:
> Extend the existing documentation in gt/intel_workarounds.c to make it
> clear which functions register workarounds should be implemented in
> according to their types.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Thank you

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 6dacd0dc5c2c..ef6065ce8267 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -30,6 +30,9 @@
>   *   creation to have a "primed golden context", i.e. a context image that
>   *   already contains the changes needed to all the registers.
>   *
> + *   Context workarounds should be implemented in the *_ctx_workarounds_init()
> + *   variants respective to the targeted platforms.
> + *
>   * - Engine workarounds: the list of these WAs is applied whenever the specific
>   *   engine is reset. It's also possible that a set of engine classes share a
>   *   common power domain and they are reset together. This happens on some
> @@ -42,15 +45,28 @@
>   *   saves/restores their values before/after the reset takes place. See
>   *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
>   *
> + *   Workarounds for registers specific to RCS and CCS should be implemented in
> + *   rcs_engine_wa_init() and ccs_engine_wa_init(), respectively; those for
> + *   registers belonging to BCS, VCS or VECS should be implemented in
> + *   xcs_engine_wa_init(). Workarounds for registers not belonging to a specific
> + *   engine's MMIO range but that are part of of the common RCS/CCS reset domain
> + *   should be implemented in general_render_compute_wa_init().
> + *
>   * - GT workarounds: the list of these WAs is applied whenever these registers
>   *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
>   *
> + *   GT workarounds should be implemented in the *_gt_workarounds_init()
> + *   variants respective to the targeted platforms.
> + *
>   * - Register whitelist: some workarounds need to be implemented in userspace,
>   *   but need to touch privileged registers. The whitelist in the kernel
>   *   instructs the hardware to allow the access to happen. From the kernel side,
>   *   this is just a special case of a MMIO workaround (as we write the list of
>   *   these to/be-whitelisted registers to some special HW registers).
>   *
> + *   Register whitelisting should be done in the *_whitelist_build() variants
> + *   respective to the targeted platforms.
> + *
>   * - Workaround batchbuffers: buffers that get executed automatically by the
>   *   hardware on every HW context restore. These buffers are created and
>   *   programmed in the default context so the hardware always go through those
> -- 
> 2.39.0
> 
