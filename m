Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1640A90F625
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 20:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F241710ED7B;
	Wed, 19 Jun 2024 18:36:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OyrLR5Yk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BEFD10ED7B;
 Wed, 19 Jun 2024 18:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718822197; x=1750358197;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5xVRTbSKM/hXliif2VrOGJhHxJQGuALK3tnFQjO3q8M=;
 b=OyrLR5YkSdJYym3m3sDHv45KUYG+vhzrz+MpiKdfH/pTx4KYXacwju6i
 IPujW1G4MBo9DpTqiHkFMxGZVEQQR5FPndlpbUJpcTICVEyqD8XEwxH02
 1YiZDskvbCeP41lKYso/b3H8MatN9Sae9OsdNbzF/8C9KckYZuFMn5MFf
 28ck94XGsD6x7lymDL5hfWS3LxIvsbXadNjqPkJwZOTmBxPnLCaE4q6vh
 /qkMdhqsfVJzR0uVwlKl3jUaH4E/KNH30D2k4LG3tYZmZsCT3MuY71xUS
 L4/V3EuSmQjv1h5SnlBqsxYfDeM0adVb4Mfg+CQr65LS/+Zv6Lid7MyR7 w==;
X-CSE-ConnectionGUID: iwCAEfJ0QkqwStE5ZZ2Wog==
X-CSE-MsgGUID: EYywg1xzQsS3XxXD7kd/8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="19553803"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="19553803"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 11:36:37 -0700
X-CSE-ConnectionGUID: nOKqvK91RGStoQvNCZP6CQ==
X-CSE-MsgGUID: Dsu5ZQVtR4e2BYASXC4b7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="42123308"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 11:36:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:36:36 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 11:36:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 11:36:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dR6lLVxzB4vQWWTUUvrr5mu7zanjXl+lHBRXVR5FHsohHslflvbNzx6x59FBeJUz01QVgBiiq20avYqKMcp2AIYRD50M2Si4XcMka4ZtU2ujj0RILmrWL8Rc0rYbLA3I1os5gfbfYtTXBpmhNVHHXv4pdq0T3CWa5QsbjIyso5bKcrLcJskW1lLIS+rrYXKjwOhDmHoO1Uho19eo1Kb/GEgg6bX0syID9+SROZ04iBC9d5MqV8R4XyzTsopjPIXLMVAX/b+IrrvrSjyCn9Sv5iRGrZJncCiCJ2XcbicYrkl1WbqBlhM6JkciMmKpL0ZkFb8LxGRo4L90QLxLgQq+Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JnsKyQJvY5RLBtdzRrOS0a6o0cFdckTzXf8ifgPocPM=;
 b=XA3ud1npCLUeiadwGwULG2gN8n7M2LnhcgpPukd+2yKtuL4x31vxrxNkopSnyACad1TYwsGoz1cOun4q5BWPYfkQjjqJmz97O6GMWwlLB7tJY4gUP/nBWRxWArRfBwKWqRHnWr0zbyA+XPcAQ1hAtw09hao3vqJNUBQetmaTMc2lpABtXujxTQT6ng4sLBeqTgBYzEO8mXmVcz3gBl9SOFqGbbb9MMvsguTSbeHMjvcVaYTAqMMMbLdvuKipKC8oznwvU+3BsHR07QOEdYo+upzm2JXXqqCfVLVOEn3NzrkSnGZimZFzasS88YVfm4JhOO1nCSoezMANawqOI8ZcjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Wed, 19 Jun
 2024 18:36:29 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 18:36:29 +0000
Date: Wed, 19 Jun 2024 14:36:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 5/6] drm/i915/display: add "is" member to struct
 intel_display
Message-ID: <ZnMlKgX7Fd4Edtnf@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0026.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::39) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7874:EE_
X-MS-Office365-Filtering-Correlation-Id: 6da6102d-0a90-4fe3-98df-08dc908ebbb4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MGLwZm9qZXnSU4bjbA0fbH1Ppr9INsWzN4Z0cCnb71kizaqu1h9fVeq1qNfQ?=
 =?us-ascii?Q?Mcn+os4BG5SzSiq74rm4d0ok3chlMX43oMfUwOB6yeY5uwdUXutc5wHe2khE?=
 =?us-ascii?Q?9zjIvfnbviFvPyEIRKg+Yxv6ekqc/qVMd3pxHuhbuqrhW/41aX066KOOi46X?=
 =?us-ascii?Q?9/Boy5jN2DIMB4a1SFKiKAqbRmx3/hRE9cd76FGvGZ4ArLtcB5j1ERDYwpfp?=
 =?us-ascii?Q?6t16Cpp/PAGz7JKCMg7B0ZWBJnOY+sgfUyvfY2iIT0ngW5jWfZCCZNF6f/tU?=
 =?us-ascii?Q?G6m0WOwtHEihhEOIAKMohOwxmzT8xmbS0SVeVH9EHvH0sY4u3Xr0FGt7Q7pj?=
 =?us-ascii?Q?zF4rbrfa30AiHzKIsexRrBeh97qgjNflfSLDXBE7bm3SxsWlr08ISUD2+qu6?=
 =?us-ascii?Q?jLa89GW4Nr4vAj0905ourIHGNr/9LA4imT7qsVciAvvSjVWWTQYFUEK47dsq?=
 =?us-ascii?Q?PlXn6Iar14yE4hA7vel/S+PCS4tFGFnyqc8R9sqRY81p98ZLaygYdvjHmm0S?=
 =?us-ascii?Q?m0kBsuPXEdYdq4RS+uI8gTeBQFdDAEbEH2EYPYDSkhKiocjvbv7y7/RgG52I?=
 =?us-ascii?Q?lp1xDJEvFEZnOixJql21FCpHFvAzOybIAiUDdICLggJTYPYdmniiI9Buvt9S?=
 =?us-ascii?Q?LVl4Von7Nmj0C4dPno8+8qww3oguBObJXx5xt0l0Mg85/NbHQJIdllkj+M2p?=
 =?us-ascii?Q?ZfudrmwG9klXssItu6Izu0CxeVLfWnPJmQgFZA1VbbG14BASBY5IDk2fJXGB?=
 =?us-ascii?Q?AMfPi1GukJHKHIpnZY3kUPn/9SzyibZG3NhpRtzWCRF6wz4DSDfvBKu1VXEM?=
 =?us-ascii?Q?aaGEfwZvaF932wv5EEDZ8WDXPW43XapKLJu45z7wcJ2jrW10TxY6ELk+WfBp?=
 =?us-ascii?Q?eo7V66+tO+jXlVEqDXoTyiQKOVqq6/IdRNDAZpcVs6bhWjSj7QjbvfW9OVIk?=
 =?us-ascii?Q?l7ycrU4Y/JdD46WB4Pn1TCg2J3b6es2tE2t7bkXZuKqx/jzPepS9bN2MTphw?=
 =?us-ascii?Q?2/hDNU+beqUQ2p7Fgk+yK8sZJb5fM+kpXJH1rEQUTPsq4PzACxt8dIvBxrhc?=
 =?us-ascii?Q?Oto5XjGKLggBXuTIjPd0NrChDg/pjj0QMf4s/kJEhuaBsE6uUTq5cpVFMfMg?=
 =?us-ascii?Q?dJxwWvJoQgl6/S1J4UVM1Fi95SUHRYrrWPWygxBUWq69qXj/rSNnPJQ4KtHT?=
 =?us-ascii?Q?FFFISKuPFjmfEYtouK0BVWIJffNtTxKBcFEAPcSlWNefTE69er0V5x3slBlD?=
 =?us-ascii?Q?XUZ+gnao9SA5y0hPuVXLKaK7BeMJhpzxzdF3G2OjjU3u3TJ8pckziJPPYXpD?=
 =?us-ascii?Q?cW8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HrUWK87E+8fwFCfpOdVaiygb0Byb/gQ1Og6P2MoXnPL741OYswp0s8bfGmBd?=
 =?us-ascii?Q?CJTSARTUhoiIYBXBmPXP+2UGR4gG7WCY9Dm/93SGbzRyj9gsqH5JY+HEF2qN?=
 =?us-ascii?Q?yDxnX7ir/zRyjzuyP8JmB7WobiTKP0uLdtMHxbrS7N4cUuMZLgXWGnbnUGA6?=
 =?us-ascii?Q?krZ7AOVHqh2FK7iS7ZsUMsX/V7h+HZbFDTNRKcWaAobKcfgIzaqNO0G6I0Q/?=
 =?us-ascii?Q?ZMNhA2+grZ50TC/DPU0ZD0jy/9Nvsw0OOLdcyuWfcN5jY7ePMWTzq/FHgO2d?=
 =?us-ascii?Q?Aqrct81kCRBafdJO8MeqFE7T0/07jqKkKpYlXO5q6FVUrXV7WjFkLjt7BYbq?=
 =?us-ascii?Q?/Tm85jMux0ZlEkJDQftSferZOMGvyC2ehkK3DUj5XXF9B/gDdxggzygvjwx2?=
 =?us-ascii?Q?kj5wgWB6k/9/ORHZd0bMbXt6E958nn33FX7DrFWnzqgrcQ9EkJoUZYa2zzaP?=
 =?us-ascii?Q?4Dcng7Z0u6zrRD4Yng1Lgn5aAHlWcl2pjeDpNqxDe4uVCbxO1orqwlGY47rQ?=
 =?us-ascii?Q?rHjtPDxOIgDR1N1nNVir1MRX37qXbBrYzNnC1i71UhiHdiz2xsi3orUjTfK/?=
 =?us-ascii?Q?qEFOBub7DPTClPByJUKuKESQkH+fuDOA+pkAbFGO9JeIpS6mV1I9iXZctC5x?=
 =?us-ascii?Q?8fneAPAg7BCAVJJydCTtaATo12+0FVgd5Y5TWMqENbGb3u62RlVwXh4nKgOi?=
 =?us-ascii?Q?nN1eHgJylCgHPdr3N6b0BTme/nyoGso8dahAOXVSQL9C6q0sXAxSG5SOuiQJ?=
 =?us-ascii?Q?ZO4VtFrPwzeabB5zY912HSWlIUOoDgkszdCuzA0vTmgAcf7yOtFjlrHs/Jov?=
 =?us-ascii?Q?Ys4MhmiAOJH33aW/2N4omeRYN4KA1Z0Nuti1LoONhqCtS/WHoJb96eS4v2T3?=
 =?us-ascii?Q?iN1tpEz3WX7Kncoqu5IYhyHNLqhbrznc0E/VBOcOmAQMmE64TLAo5aKNUvUD?=
 =?us-ascii?Q?d63TLezWeK8LB2pZ64JEAexioQM7f1UqLQ6/5iIaetVkK++hBu3CwUqWk1Zl?=
 =?us-ascii?Q?QUtoguQ7PGD9rMpuxAEPgXnDrk5eB36dnILwFJ4RoOTDGQbXGizSjh4tTjTX?=
 =?us-ascii?Q?1T+AZANFM2RPVzk3mlLA5l3St+dXQS38qsXBSWO3AMi8Hj9V8yhcPG9ylJFa?=
 =?us-ascii?Q?F18wrVnLXptJE5DEbTKiSPE+BmstLFfCER8pXKysJnTcgHZbeNOTSsyPqLG3?=
 =?us-ascii?Q?vLNAURkurSrssKNZPPAnx3eYEkQ4n/jKPwMxkOwtAiff4DxR+iVN1K6yQkoP?=
 =?us-ascii?Q?qmEsq9mEA76jhpmCG8ApWhebHu29sumBLcU1lBAXfhOuP5uisMVRkqsdvxot?=
 =?us-ascii?Q?QqnAYoX9oeHNiHFmTSR4T4iwiMzQxS9NWSUap7BBRib9gsGQp7jrvz8/QrGz?=
 =?us-ascii?Q?1BzmoVch81eKC7/hMapFCXTs6c4kU6mkFOu+kWrfoYbhVEnQ4/kIMlzgejAJ?=
 =?us-ascii?Q?+Lhd0HGvEldoF3LIaNm0un+T2gOujjlVZ/1hcTtOviz5MOhFv6f3VhyFd2vc?=
 =?us-ascii?Q?LSgH5LwT5WhMaIIj3Qj7QVKiEC+3AJc3jt5KYCubYe0XiDv67cjj1U+QlPzP?=
 =?us-ascii?Q?7FGghnoJCADeSZO0Kz1/y0jb2lf1FeUpb83IBSugFZmNe3pdQ8KySBrjm0eP?=
 =?us-ascii?Q?+Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6da6102d-0a90-4fe3-98df-08dc908ebbb4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 18:36:29.0272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jpqKs7oo7DHeassrUeQqetw9Aos32K0hyuZWQztEnPOSs79TkNLYA1cAdB3HwxzsvGgcYB+YW9WGNxQVCojymw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
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

On Tue, Jun 18, 2024 at 05:22:55PM +0300, Jani Nikula wrote:
> Facilitate using display->is.HASWELL etc. for identifying platforms and
> subplatforms. Merge platform and subplatform members together.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 +++
>  .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 7715fc329057..35bea92893af 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -286,6 +286,9 @@ struct intel_display {
>  	/* drm device backpointer */
>  	struct drm_device *drm;
>  
> +	/* Platform identification */
> +	struct intel_display_is is;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 0c275d85bd30..954caea38005 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	return NULL;
>  }
>  
> +static void mem_or(void *_dst, const void *_src, size_t size)
> +{
> +	const u8 *src = _src;
> +	u8 *dst = _dst;
> +	size_t i;
> +
> +	for (i = 0; i < size; i++)
> +		dst[i] |= src[i];

I confess that here I got a bit lost. But I believe it is just a matter of
adding a few comments in the code or perhaps adjusting function names...

If my coffee is working well still, what we are doing here is ensuring that:

is.HASWELL returns true regardless the subplatform this is coming from...
like is.HASWELL_ULT or is.HASWELL_ULX.

But since you are only doing dst |= src and not doing src |= dst and also
not calling this function for different subplatforms, then individually
is.HASWELL_ULT is false for ULX platform and vice-versa.

Perhaps the name 'merge' is not a good one?

> +}
> +
> +static void merge_display_is(struct intel_display_is *dst,
> +			     const struct intel_display_is *src)
> +{
> +	mem_or(dst, src, sizeof(*dst));

and/or perhaps we don't need this extra indirection here?

> +}
> +
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
> @@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  
>  	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
>  	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
> +	display->is = desc->is;
>  
>  	subdesc = find_subplatform_desc(pdev, desc);
>  	if (subdesc) {
>  		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
> +		merge_display_is(&display->is, &subdesc->is);
>  	}
>  
>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
> -- 
> 2.39.2
> 
