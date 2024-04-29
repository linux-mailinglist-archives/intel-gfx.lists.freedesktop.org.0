Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 231A08B5B2A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BB810E301;
	Mon, 29 Apr 2024 14:24:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCWwOh+j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A60410E301
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714400667; x=1745936667;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=226ahSu/fJY1XCeql9Fm4GPXSSYI1YFFZHPqZt4pO/w=;
 b=YCWwOh+jtPL9DERtP99r6lshcFYvmIuXThazvcH75GQ+vzqzcZuBct9B
 pvMaj8QC4cmDuUXQPKQDCGSakK/XAJdIRrbnR2BTZwdiX6cSf+aL1A8Ew
 kVGaSQdqecLE0iEuHHtFYyxDR7DgFFkM9LOBFueY9Ur4jlKy7ZXsToYEB
 nnhYvjybxZQYu0LC8H5TXJ4wv819to9aMAixSt7jwE1h2j34uWc+21dSm
 02nrvbXdd2WV3xHdCAGCPFRsJj54JXyFoN2wa98AVLWVwKZ4O8hBqpiRn
 lx62UOYGMmJKwDl9dhwKUnMSXJH2p+O64ka9CD2FfhDZ5Xz2WobmmCsYm Q==;
X-CSE-ConnectionGUID: 0hSVnTziR0Skkz0k7prv6w==
X-CSE-MsgGUID: hZ7vbwekSYKKZxxb6DdTgA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10226863"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="10226863"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:24:27 -0700
X-CSE-ConnectionGUID: st2mD0PSQd+1muFSFhEesg==
X-CSE-MsgGUID: Z7cHMPr0QieynKUKS1cOEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="57005708"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 07:24:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:24:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 07:24:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 07:24:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgKkVifCrQN172ImB/c9Aa8UygkYL7Fm27p0WzrjTL/mohg2Hwdni01Kvkr351GWcjWfM7QMIDM1Os9vgHwA6pGijLi8TAtrGJf6AVzTh35bIMX7J2CAzXjo6zqYUixHlOzU+ODxDdh/dHGHtjE2MqfsbP1u/ww/7ywCISzfwY/7w8/8rpzSa7IcZONz62rIETee23+Sp8zq8vhrcn/cBOu9FvVKAcEAWeO4olID2ct+hI9JBZbMIhyEz7bty6pMI80J7OefzkWGmSQ6GzbLLsJXH6o9WrIuGZMqeWghKGs3m6bMsFvI7GASfZ/W4nv9k72V57tP2xs7ClAgee9Wug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DEK9oL5gOUURrANPIL6I0KnVAw4CLkoR35ndBl01qk4=;
 b=B/4eh8rMnK0g3U2oFvb/m1MjrWPGuUJNRsbbNoyau9pFD15sNp4SmMgjzdoUOjIcr+szLKFzLr6s6vFEL4E+KKy4QbhctRnHbKN+zg/JhW8dkBjPN/LXC9a9gaWaV0s5aYoEkwLLRXMSISaoOictX42khH47HGWL9DJRUO9lCT5shep1BcsES7KHZEUeOtvNpEydtcQ0GFEpsR7JEpFUI2SU6G9NV45JodR0ouLVZkY/jgmLXRvzJRBU6cnSHlKQwUOPgc5aDcPKfAbCKODaslzkXPnWzzFa5WWUj5XoytJqqPSYBN6zpKg/jUTsXGHV9G3zwR8HEl2cNDp65h+iVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7407.namprd11.prod.outlook.com (2603:10b6:8:135::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 14:24:22 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 14:24:20 +0000
Date: Mon, 29 Apr 2024 10:24:16 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C02
Message-ID: <Zi-tkMDLRDD-Wiix@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
 <550d4e787445802236f0bf89e4d2f4f32cbd6d75.1714399071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <550d4e787445802236f0bf89e4d2f4f32cbd6d75.1714399071.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0205.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7407:EE_
X-MS-Office365-Filtering-Correlation-Id: 33cfea39-65b5-44bb-5562-08dc68580f6d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?H21RWqF7Zz+qsDzjvygCB1Jq62tfjVTCBjJeoOhHqrDlvUGQX8XCtnCpcezo?=
 =?us-ascii?Q?vjIIUQlh36aZeYEjilKwL3uowHpKDy6j/vai41+aqKKtZ4NN7TsYqj2kurkh?=
 =?us-ascii?Q?kMeJf7C3UrJReNJheb89Y+6huvOdgMa+F/LZi6cvfK0YkMJ1Z6mqZma2cGQ8?=
 =?us-ascii?Q?WMUFmqDJgcAgxSBYmuBS5Nx8pKan+uA4WR2XTosaBZ5bphD8QH0WK6myPWqw?=
 =?us-ascii?Q?Y66V3j3lLNE9OliMNxWtZfXKeGsi+4XmS73CdTXdOt0hv3BV7u6hNkJPIiEs?=
 =?us-ascii?Q?oe2VueTicAD0Z4BTgCaCVO04NiVreB5SC+wL8sJXa0PnKQmG5bfhA59OzFxq?=
 =?us-ascii?Q?8j5DZZ4lXxZNK2iA/O5aZvfU21Wuszr2JC1V9L8HTc/ItSR7OjElXKLgAXYQ?=
 =?us-ascii?Q?D9eWRvUj78Wdgx6dmTQX6cyo3vGmQMWaebilQXSxReq2ptmlBSY+1R+6YcnY?=
 =?us-ascii?Q?Y93WviyMbJDWYHNIQ+kiur5Xe1MXm408rWn8EJmN1f5Lp1NJJiPYjYTGsXIJ?=
 =?us-ascii?Q?xjzQlXaNWNBvwA5l+W/tY4lpttYZx2DzK6DJeqbjLEu+CWuWirn0b1CDwwnA?=
 =?us-ascii?Q?X9bS9Imv+NLUXGaGRQshWLoebi4Imw73dAnuEYEaKA0VqmYgiEfx+uKWJuGF?=
 =?us-ascii?Q?gYC+nvmkxZl6oVdfsYwNBy0eGQO3xv+pwXO/j0Q1oLfT/MObyNrSCDv0XCRN?=
 =?us-ascii?Q?J9l3O08rRBqdQhIvR5obZJRODZrCcTTTIIbUNFulwI4WZvOKaXPQesbu6beU?=
 =?us-ascii?Q?CywaGJR+L1TcNbBosgRf8Og+yTxAZ45a9KGMamQ9DIxyD2xxRhI7XIuvR8ID?=
 =?us-ascii?Q?a/ZhtmLBcjeN3HgHGx5PDVnZuYK4mNSGW78UkwSDai9TNW84+6Dzpj9BW2d5?=
 =?us-ascii?Q?qKtqSuiAw3HGZhAzLuMHi0sXkGSL0Mseh/Hy02swVKAzbX2ahOpb9xSQUt9y?=
 =?us-ascii?Q?y+RhxfdGJs0Y8PsJWV6WoGZrCiAjzY8pNG50iaa7WkpnRTBQFC5eKUympGmP?=
 =?us-ascii?Q?GkuNOuZnvfsFp0uULXhx6NVw3xmalV9zQnZrCjuZX03W6W/KJDk1v7/G/JQp?=
 =?us-ascii?Q?5F3ROwcDYnG5t3iWyw41/eFw+K+4K6JiCGtl4Mzr+Svpv1DA2dRWLFmyUG4c?=
 =?us-ascii?Q?QRn//y2BIkEEpU+uex4A88DrNYcHrVeBBiywIpIgie9yHTJX8v6X4HpTfVkH?=
 =?us-ascii?Q?vNiz5aP7iHVmyLC5OsDMYvi7r6Pt64Qqb8jT+GHsxq9N58aI0+JXkP8g1dmI?=
 =?us-ascii?Q?/x594FevDp8QUF+O678iA/HMnsc6huggNoQTrGzuAQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wTrup+OaZlQ8B6ngcR/EVjRRlPaVPufkc/bIBR/PhvP2RfO8ddfdRPpfB+z6?=
 =?us-ascii?Q?S7QF4g5W0kn+xzuMRtb7JEcySW+hE1zp0uwbVkhtf8kcRntQtZ544/IJZTRg?=
 =?us-ascii?Q?cfqAS8twwcQMf/xSvMBLR5fR3piLRsKUW39II1HAVNausWmSn/Dx5bNZ6IE/?=
 =?us-ascii?Q?xCKRuU+h16GX9DE7AC28j4HKTCrSxUHT4oRrO/meZw3wTQVeEHsoMnau/7AV?=
 =?us-ascii?Q?SEnD4VJ/blMNmlMWyuxk8n3qsXmAJ5wiTF1D4BudG0NCYdbMzsk05SrRucsr?=
 =?us-ascii?Q?LlWma+BZE9nlrPTK2xpPRMx3lllF1tmNUgimuUNqR5crEXhELbUGRz32GmXS?=
 =?us-ascii?Q?ZIHx1M75XE3A2Wu5r+IRiKj2KCAL98rSNqp8imvT14xPHzye58T1Eh1SrXuh?=
 =?us-ascii?Q?Kzsgt0xAnDajwPvHPF+RDVpXniUoAV7a73UF9HdsmGjriyLaw+gKSO5f2/AB?=
 =?us-ascii?Q?s/YAtFhz1eFMV3sDeLHgBcPYIyB/GLZUhtXnCcxoSVijzSj0QdLQj1vcUSaJ?=
 =?us-ascii?Q?AZRrgW9UvJ+1/ZkEvXwVhT56+wgvIfprFW7pLRZ4aWUvFZ0VCy8E6w0hCxI/?=
 =?us-ascii?Q?I/fBTvcyGJeLkT0L0SRiePW/pNDkJdILPEOmBpW1RryIF6G9Lb1TxgoLwOhW?=
 =?us-ascii?Q?55EnETnb6zagkDfdBf7g/FbYezjqi1YLKWh2j5xvNw8MUYpFSkhvDQnDXGt1?=
 =?us-ascii?Q?MsFXxM6bi1NxVOlgIEuvwOoroBff3rniBlWEmqP1+u5iYjJZe+Gfp1ZKVRq2?=
 =?us-ascii?Q?mVANAl7RuYXC5vcTWPnOq9lo3avNbGIKNu+9aAdpckxVnCNWJcfanP+RX/Ja?=
 =?us-ascii?Q?LaTjOuKW4MTe3caEvkQ5j7Bx2n4odEOT+32cMBrAEnTt9YYIJsc65LfNO/78?=
 =?us-ascii?Q?sUQwdzXygcPP1OhaFbmKlaGhX4cEXq/VnpA6r/zwsRM3x4ewmYb0Y3AWP3r9?=
 =?us-ascii?Q?4HwovPn2DqSHiXuA49qR3ton+PNe5RRC7ZBf8Z4mpb0pYZB/M1g/E+QaBC4K?=
 =?us-ascii?Q?Rd5mgyubAg6P3tMzAF573wTLKxVBkhYqcqkNcREPI0ei+9SJvtlcu9elM8Lp?=
 =?us-ascii?Q?jFvS9M31HdcN1ZZ5jot9w23oydMvgMwgxTg/EoEY6dArjBOs+Dok20nWnwb9?=
 =?us-ascii?Q?Huo2srPZqnX6CPW2MDn/Nppi6MiAvVFeMcQTx7Ay57fryjUuRT0HtK2slBgd?=
 =?us-ascii?Q?PcUOtwl2JZd7h1d+PD6QdCDW0GcU8myOTdh9oiSOFMmCzPVvcYeddoONfHIq?=
 =?us-ascii?Q?BhnAw4rkGImlcuHTLnMPATS717rZNAk4L4hvqLXBgx1+s80Z8NEiY3+o4lpv?=
 =?us-ascii?Q?D+ltGwUhvTPJ8eeadTXxu9LeuhWBx+xTV1BeVrXRdN+FubmGkJrOc1Rfzln+?=
 =?us-ascii?Q?+5qBrd21q4yZBVmwi+RA+xHVK0TlSpbt2ayCtXrdNDTnnYYs2R5roYkZrdNO?=
 =?us-ascii?Q?qHH3PYHlvUIMj4kHT7jyb4Q8rVNa19I4NoZp9OYh03D0U6qpmxKaO9FC6Yn4?=
 =?us-ascii?Q?eZ5qqQ9mxlATiIg82RQMpibR/aHENGFER0Tl2defqB5ym6XczMHVwICRSS2B?=
 =?us-ascii?Q?Z/KnaObKRgcZl9yTc72HD9sMOev0V3p7QEWm6cr4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33cfea39-65b5-44bb-5562-08dc68580f6d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 14:24:20.8329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JSIThIHaieNPrQGfQIwWTWjjvm0VlDtwHTWpT9OjZVqINyOMpZUXvjvd9XlUDntTzdHXZfktLZT4I5Qq4a1wYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7407
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

On Mon, Apr 29, 2024 at 05:02:17PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_WGC_C02 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index cdcf8e796335..f96d6af028b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -618,7 +618,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
>  
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C01_C00(dev_priv, pipe),
>  			  csc->coeff[1] << 16 | csc->coeff[0]);
> -	intel_de_write_fw(dev_priv, PIPE_WGC_C02(pipe),
> +	intel_de_write_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe),
>  			  csc->coeff[2]);
>  
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(pipe),
> @@ -643,7 +643,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
>  	csc->coeff[0] = tmp & 0xffff;
>  	csc->coeff[1] = tmp >> 16;
>  
> -	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C02(pipe));
> +	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe));
>  	csc->coeff[2] = tmp & 0xffff;
>  
>  	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C11_C10(pipe));
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 57438989f469..741c0b8592d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -257,7 +257,7 @@
>  #define _PIPE_A_WGC_C22		0x600C4 /* s2.10 */
>  
>  #define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
> -#define PIPE_WGC_C02(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
> +#define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
>  #define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
>  #define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
>  #define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
> -- 
> 2.39.2
> 
