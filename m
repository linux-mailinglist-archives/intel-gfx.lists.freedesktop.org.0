Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CF48A70E8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A824A10F953;
	Tue, 16 Apr 2024 16:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AlCQAbrD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16DE810F8A4;
 Tue, 16 Apr 2024 16:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713283732; x=1744819732;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hKPcXDAoofjbqrX9V9OO7Ai2bzRC+GwYyuW3dj4MSsE=;
 b=AlCQAbrDlN10VFUYaNGrR6jIMdRgk/GYDjDSb4ld26UZ6qtewlYc6erh
 k85ZP9A+vc8HJ31BhkvkL52TnysfuG4hqZ2yUhVt6cdbd3DJYWoMzBP9E
 OP6AuRKXdQPcBA3iw2nd/FxOXGxklkax8gsvQuFAUkLnKBeAEUjp/b8Uf
 w3tRlk0x1bdQB4H3t0/VnHzPHbd2f++ArHS4Qkg5wG1H9qX9NTk67RnMz
 cgjOCZ0uT1X5eWFQHBhMlE5EwYh7Cru4XGNQuQsd0PTXzr7H8J0bz92G9
 dYIOiv6zRVj8VL2vFFWrq/Bjx3yW7Z3XBPUFuoQBMwHihhlkX7VdLxQ4z A==;
X-CSE-ConnectionGUID: wvM62msFSyKoqueHbTyySw==
X-CSE-MsgGUID: nrXN+PltQcea8WwSRlwtdw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19338016"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="19338016"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:08:52 -0700
X-CSE-ConnectionGUID: 3a8vmQh3Tr63AeP61EiW5Q==
X-CSE-MsgGUID: K2trlcrbSQ+UzzYsBtCQfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="45580803"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:08:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:08:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:08:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:08:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:08:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IttB5YjWzBjqXeQzTfiS/5M8w89pC6JGTilzU6gb7+4YlTo6F5/LP4YCOGrWv6x/7+kEy2YIT4uCFP4LEoKKRtxVYTs4d8jerrLtAil12Ut6DNCz/quADNhjMqNe4qZQN/rLnwbjeej4mTx3VhFpfkqtZa1zNMbWu78hMw+aqPqrRh+v11tCLoqEjFTxg4uc3sZSbe6HL2OIQlftrR+d4hRI65bGgB8AZI/imi/5mrdDB7VXuYQXwNPDdfDFrRPtqYTbG6IDqIb729FevGSF+IiVViMSsD29Hg/2zV+VD5SI1mQTEV+RXFF/lAZXfP1zgzAla0RD1wmRI30PKhcgwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hI1TDkKIYr37ZUQbocWuQBW45BJ69IvHjty4nQgw2Ak=;
 b=aKB2It4vmDqduFJ174b79n7UGRAnkHjPUPU5LHlqK1sYw205fWXsEkx5k00iKB+bKy/m25WU2Qy4y6bdfoB4v4+IDjQB6FvVhdDl9PBprCJsLA1GvzZrEW9S7CQVxWZZuFXoPvPvk5W0l9Nk3nWN2Aw6dknFHtiG/ckFtiJbPR7N/AopKG9VcDbbsiAnozwui2Z9JtkzSjO9cCuA3b/3S6jDW95xsAFPDLDLcn0D9dHNVRijZuDyLlA6Mc9L5LjS3KBmWtWYV0MSYQZpQYnunW/pDafsn1ZZsNQGTnQGXrstQLddypBtDWdrfdDCmeDZ7j9uBzVd/oczNfQWdntj1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by PH7PR11MB6401.namprd11.prod.outlook.com (2603:10b6:510:1fb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Tue, 16 Apr
 2024 16:08:47 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:08:47 +0000
Date: Tue, 16 Apr 2024 12:08:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 3/7] drm/i915: add generic __to_intel_display()
Message-ID: <Zh6ihzM4snUOmyMo@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
 <bb9e39dd03ce14da19ff25c9f1c149bce88238a2.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bb9e39dd03ce14da19ff25c9f1c149bce88238a2.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0003.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::16) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|PH7PR11MB6401:EE_
X-MS-Office365-Filtering-Correlation-Id: 00954dcf-2f39-4227-142d-08dc5e2f7f20
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J7N3URzv+6x9yQt1kgqNaMDA07Kk9noKDbAhypc8i/+PEHrfENA5t7hzcsIPDnZb9CU0BTZ2js3dBuudVI1A4p6xIWLvt6Xx6DBRfvCsQSv8K5ALXmQqRR6loK15QgLGW3AupM/2iHrNixyWbkaVOXq0/JlM0akod+pwjOfHd7VCKL91JaEJDn2axZNhH7wD6HM/KsZ2chMQgNG8eXzwAbyHu068wn8MmzRAEbqQJW/t04jIOkkcIlhxgKFBnrUrQPACvtdCShq6Y4XwAyQu0A16Cj4IDlYI3cL8cPn1amvefM0VH2G3GYw0BEnRwOutPpfFkZiezSEImxCh2Bjh9rcDNHEhqWT2oWxWbM7QtRPasmxEt6+3XG+2+Izpc/vM4fpeeAsZHAIlkYhy3+hfcGRorow+2kFyJlvdIPIXdpk1VMy9fWaAn8j26yZFbys8y6LumJfYtp50g6UdhMGlAzLcohYexXKg6zFj/mQRkTkyvhX2L6BbUDFuhLc2hHi63kHLGu53mW2aWt/g15xrGhTbzo78BHwFFfOMNc9q47xAZvsXwrMu7UrtN1Lfh3cqAUbeyn4VirmkwZ7LCvwbEBQrevFeVOkNTgpEKGqtt1oFyrbpuEKZ0MXmDJKSUZVhdPLNGliqrk6vcRLSil7AWYJ2mGzycCEKjh7d1Zz1eDE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CayhUhK7iBiBce2ml9dbUvUVp2cwSc/RZFULDjJ52sqqUtDx2/pJg2NAqz4x?=
 =?us-ascii?Q?41/pze0EN6sfBbli3N51kHoAufw2fDQDrtONwYBrCCJRwKHV3sApTPok23Jy?=
 =?us-ascii?Q?HF7JFgnLrp4CuEc6Zy+xaPVe1U+sQX+uoxz6UZA7L67wSPDA1eSZSU1sK1jA?=
 =?us-ascii?Q?cGQLbBAtq9Bl3xtI71pVMKICNmKPcVDNKGDiz+GvPjpdMRZoJHMyg1xLv1iV?=
 =?us-ascii?Q?2h8Ig4LqFHSy4FKE8+4I8ltRv6BTcrebqWs75fnxJbGBV8ilIsFiz0q1a8IP?=
 =?us-ascii?Q?pVyi0UAZRFZqaPFpaYWdkPEXfi21VvkcdoiRYa1E9RI5G8yjfhP8Vr20i03o?=
 =?us-ascii?Q?UQWoY3MA21Cuhkc/6uHnD4I784axdq75NYwLBqRQ1x0eYHEov/n4vUsMLPcb?=
 =?us-ascii?Q?UWDI94+yZoggGxqhpm/ePDueRpb7pqF3+NTQ6m1t7ISN65l0QULF/A1WmDPj?=
 =?us-ascii?Q?bbriFzLoPLhy1kF10e6pWoyB5gKLDYsfweRh0C8FkaXWJI5+1oU+RObKVokI?=
 =?us-ascii?Q?ktFWUSXdrd3WbLGW7F+/EYl6978Y2tlD3KFUyI7sr7WfoFrDn48F9Xn+yFtf?=
 =?us-ascii?Q?77nGV17l9ZJ9lD124v1M/PNFm8WtwBFpFoVjUadDstg+0C7n1ZB+0CZlDcVW?=
 =?us-ascii?Q?hzMXkUoCSw+0TCHMQr2MvEzd0kUyXTNBbxv8LKrtztizOzyGObGa68W8/0qj?=
 =?us-ascii?Q?xXk4mQPZl1/Rn3MaDLuf/XKV1imSIQEpc2sYubR+/L7ufV/tm42vebKyygMu?=
 =?us-ascii?Q?r2JG22340MWhbr4IEljLSKYXu91+UjY3T8NRKalFwNxb/yHfSFDl8duGhcWc?=
 =?us-ascii?Q?E6njnqLzp1wiv9AyJWW/VXgXfBgeitTi+cDg9AUS+9b+z2egjelMQF91GEBx?=
 =?us-ascii?Q?3JsOQGO3dcALbp/zthmsscJs5MCOkJZMS/KWOhUkImL1nvntA3jI7n0qaxYf?=
 =?us-ascii?Q?U3EqqNkBFontm+h77L7FnfsoszHpg8xzcobb8KWSYJ7IYtwfbocYMUWN6YPE?=
 =?us-ascii?Q?+8KjWsDDjOsBQU7lIf6KObu9P6ncz2Pl1IPnRVozawX8zh0De8J+ueMTJ+Ys?=
 =?us-ascii?Q?jyut96naTYdN6Jtt06XaH4h681J7+QpBb5+4dfGXp2HnHrBQTrhKU3Ivdhsz?=
 =?us-ascii?Q?J41M8SIFNJQ9OzcArNoJH9IutUyxlzDq8ttadJstc2J+mmuhQ2S8wPpDCQyV?=
 =?us-ascii?Q?yZBKzarP/qI8r5QdzHPds8tcB3beJxPMp4czmCJT/jgFHKtVoDTdrZZH+04I?=
 =?us-ascii?Q?VIgw7dKTo4ckcEq8v3iW/waF9KTTAnbecSXRojFquF8CgUddutg7bRM9xLTU?=
 =?us-ascii?Q?ZhfvibtCCwtEMSehDyLq9Ar1B4zq2AuEo+txRPLDIfPPWZzWcmjavdUETZ8q?=
 =?us-ascii?Q?+YpKP3QMT7QK3iQ+Sb6DH2cydkh6J7VVqmbXdouyiqpj/dazawwFkwduBAw5?=
 =?us-ascii?Q?k9/6X5awPOmEWZrYV5Rw594gAknPkcop75OtQ2lwhqKBRkeOWrqooxA571uJ?=
 =?us-ascii?Q?CY8BSYJXoKQeDrdQPp0F8ijN+i4H65H49K4M1GZQTNjO/vTI1PEWv5jO2BQF?=
 =?us-ascii?Q?tpZlbDXU3GpCv7KTIe41FKcU6lux3ty+ZllY9ogqfzTXJv8D/2xGyWXWW3Um?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00954dcf-2f39-4227-142d-08dc5e2f7f20
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:08:47.3696 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: leUgHBsWj23J9Bv0Xs8PFUtkrT1vZFQ0xCjpee54x9Za17s5YF5kocsPFsvx9Nnf4kRlpDWYW1FkG8KpREoNKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6401
X-OriginatorOrg: intel.com
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

On Tue, Apr 09, 2024 at 03:26:45PM +0300, Jani Nikula wrote:
> Add generic __to_intel_display() macro that accepts either struct
> drm_i915_private * or struct intel_display *. This is to be used for
> transitional stuff that eventually needs to be converted to use struct
> intel_display *, and therefore is not part of to_intel_display().

I hope this doesn't backfire and end up delaying the conversion
like the dev_priv -> i915...

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ee0d7d5f135d..4819f80942d3 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -357,6 +357,17 @@ struct drm_i915_private {
>  	 */
>  };
>  
> +/*
> + * Transitional macro to optionally convert struct drm_i915_private * to struct
> + * intel_display *, also accepting the latter.
> + */
> +#define __to_intel_display(p)						\
> +	_Generic(p,							\
> +		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
> +		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
> +		 const struct intel_display *: (p),			\
> +		 struct intel_display *: (p))
> +
>  static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  {
>  	return container_of(dev, struct drm_i915_private, drm);
> -- 
> 2.39.2
> 
