Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 383FE9C9132
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 18:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5BD910E36A;
	Thu, 14 Nov 2024 17:57:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kFuR9WnY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F047210E36A;
 Thu, 14 Nov 2024 17:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731607031; x=1763143031;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B1WxePP7LQtWFwl1sK/adsM6ASAhcEHKI9ga5eZSI3g=;
 b=kFuR9WnY7fFsm5q+mhgdtN7ttUqCyoViJVljZNwBuoJBhaPkG68v8qfW
 EeMuCW6uG80hiiunYFolA9vbe/0JbATuEjrV2PVGW3MAL8bdw/qalJGIa
 Q4ManeFLAC2O/dV9Du7EdJJjBiTga/H5+wloOThvMhb3Kqz/9t8zR6z6+
 hR85ObydqeLIXFxprWbluqo1JiV3kgWG+EaRu8X+Gh2VlgH1aX20U8UnB
 URsEcdU6eyv32hYolZ3nF8bDan/9L4kI9ptKbqSHVF3RFBSiZS/gN4lWB
 g2Y1aM8wDI/hORoukSX4+jB3tlHXSVr+UggLNCIiVIgRnPkrIkLYSllLi w==;
X-CSE-ConnectionGUID: zjVlsD0HR5K747TnkSHZ/Q==
X-CSE-MsgGUID: k4rJNn60THysEGqbuVHDCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="42687642"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="42687642"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 09:57:10 -0800
X-CSE-ConnectionGUID: ubmgpD/TRpCUXJKqygx+pw==
X-CSE-MsgGUID: QPTiTUdRRz6PC/0iv4w1rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88696359"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 09:57:11 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 09:57:10 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 09:57:10 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 09:57:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CHkH+9j6SfGaN53CnDCvSb2JR+TpbsyaJuhz0mS5ScOt7t+9uHvU3JWf8j2FYdlKWXuyObujwClT/LY4+a27oRJ2wS0Tm3bWMw4VS86ReSffZeLwjy3vYDx98XtbMWRpp/63h4gXV9hTb+PqNZV3h1zuHQvIRmyWvzJxql+xw2m9HMgVLFm5c9TpaPiBA+xDClkF2kkr0UD93GSQW/roxwZzLDAM1BgL78fZwNnF/tF124hhDqhBzb/wRuvBLno3szLmAP2dkR9IwDdr8xjAorr1dbJ9w5HT/rJoDwIdLSZk0A0TfuwoYD9rVaqAlu37tWdXucXkGvoFODFBQmM8DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qBT4Z3VLbyczS3ZA8uRoHZCHZrdtBITFHTr/qZ6rLhU=;
 b=kPX7FAzc0mtK2a0lNUK8bENfn2Fe3tmt3oDzejzdwutPXCLq0/M9jJfMd+zmyqJC+OfpB4430UXXgv+REULXa+jlUREPQ51cr31/1brA6Z0GufmACBPqoRG9TZV/aVkm+vvVEan2NYoigr72e/hGEz6gVyJpDLfbeVB1drK2vYQVlkwOTLI5LxEQX6KbrlcQK7RZXpWqnUmTYcXpCMMttwj9T8A9HuqHKYX3VsGg9A0cDW+FscJSipapjEoU89ur4JkqjuUXdGWpU/F7ev6wSqmTMqwmArKDV5axiQ5irAQO9uHmJb/feTgnXCjmfE86Xzf7Yk+qLY56zPyRi66m1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB8136.namprd11.prod.outlook.com (2603:10b6:8:159::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 17:57:04 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 17:57:03 +0000
Date: Thu, 14 Nov 2024 12:57:00 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/i915/irq: emphasize display_irqs_enabled is only
 about VLV/CHV
Message-ID: <ZzY57OkvPYMVqYkS@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
 <3540e31869bbb68abd6cae88375d214d3aa1f5e5.1731347547.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3540e31869bbb68abd6cae88375d214d3aa1f5e5.1731347547.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0150.namprd04.prod.outlook.com
 (2603:10b6:303:84::35) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB8136:EE_
X-MS-Office365-Filtering-Correlation-Id: abb09565-116f-4c64-0dd3-08dd04d5beef
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sijZMjr2N+zZIzZlWskmTwLzNtnkIYwkocKZoUF14IsTjCN3ZLQZoQGQ0xSt?=
 =?us-ascii?Q?bQUW45/TQe6UPuxs9hMzL2hPPKNMuMq6TSI9NlPdnna2AYnicMdQy33YjvjK?=
 =?us-ascii?Q?MpXBKswoenMgonpVE56tZWkIYIg/egPD42wv/Pj//GteVMOmuR4loU4pZSUJ?=
 =?us-ascii?Q?vmF1pk8tSztIOlSt3PFGEGjDjCHv35Kmppy0lONA1J3txAy+I5bj9HLrZqWg?=
 =?us-ascii?Q?HMLyCg5xxu2lvYz4v8AAucvytnApVUk0aLlFWi/yjX8omrkOsqdRhEQm+ugR?=
 =?us-ascii?Q?0YaG5JT1lbPbZ6gLZMAI+gulFInZ9P8VgwxN0NaUi1mv7088Q3KUkW3qPPVk?=
 =?us-ascii?Q?/yzZCsXpkdp6J27JHIn/xqMi/+OVcZ0sDD94u/OT0r+K3ifQ8QYAHxnKT2Pj?=
 =?us-ascii?Q?Iqyjmzjs+7xk0FhAd9xN5vmMx6mld1miE3022021cbD7n8DaNMG26JUV9o89?=
 =?us-ascii?Q?Dl9ngDhWrZhAGm1pVVsZKdCasC04Cy87LtV94XfMASpwOSZoSGbrkY9gSQOI?=
 =?us-ascii?Q?lFdT4L49CHkXCWHlOwV9Qoqj7fMIhB5ql0D1nf2F4KtQ9BrbSfypm0aMvspr?=
 =?us-ascii?Q?m6i2nvo5b7IZ1S3aobTqeY3pQguQR3ZjQ5So76K7VlZ5/vL7swmuWJehdMdr?=
 =?us-ascii?Q?v/yBZNtzKFSMaQ1lUS2r+DaG+G5+WLnB9dbrKH7TFgjpoUTnBm+KXbId3/jh?=
 =?us-ascii?Q?on9UV1CQ4Q4tcNbfm/dpnZ7wTWqCNJ0Bp7Zfxi8fw3C4uaScJW4wb1mIxPi1?=
 =?us-ascii?Q?TfQv29kijKAjNFDCgAEgifOak1fBcWt/xA/vXqMTsKuBzroZPzLD6DOzEsRC?=
 =?us-ascii?Q?cKlBj5k/V9OnsObSSG4gSaVhzVsdwbhcvZUrPD+EgLZiuBxeKnRVQqn9buq6?=
 =?us-ascii?Q?sYhKKxAzXrSMubaWTM7jYnyrRgfg/T+6EtdHoceAhS1j5QzwOezOy/cxrp2x?=
 =?us-ascii?Q?kaIzqv3wlzQzyKMV2iPZl1obGsvQ3mHXbk4UbJ0GEc0dHm5KuANc+tE+o2fl?=
 =?us-ascii?Q?xxRjen9pS8urHk/dHYFibyv0lVgOUz2y7bT+MZNk8mztSvXLaTEKvGf5I32r?=
 =?us-ascii?Q?shwlJUeBEVjx3iMvuPn1g3wR038rWo6cxXbxgFfMalCsfCf11B1/17h8Ce1z?=
 =?us-ascii?Q?zmmwN204vMQrDudjS4UurLSr+tW3N9Eb5nhs2r+hRbpBHMtXW7xSxpT2YPxI?=
 =?us-ascii?Q?WfNX0t4RfQJQ9Ih+ZBN0rbLlDV5zaWNWETmv34NYpUy5cTJeX07VNrDkTUjY?=
 =?us-ascii?Q?2x6Tc6IKnT4SCYRCl9VyKYOxoKutJ/cVRw92K3py4nArT/9bptb9r1PJs4fg?=
 =?us-ascii?Q?037HKZUCsHt9tFQUwn0ev78z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QFI3RIgSTAL1o8Mi/qF29dLD8c1UQVkNTsEjkHxhGXOcNYESKrE2azXMgwuA?=
 =?us-ascii?Q?39dHtnBSemjqCoK5ipoq/gQf5dgL1QUk6Agpqs7UA9VGf0y5AE4itINDEeDh?=
 =?us-ascii?Q?XOHsrUyMT70pkf//ntXWH76TUZUpfSN26YJZqvpo0LhkmkbFNwRm4A/1ExiA?=
 =?us-ascii?Q?iUJz0MVEnqlZns+tVg8GRcH/1sis8ijXmm768/zT/Abft1WzxP+NYvatINq6?=
 =?us-ascii?Q?2wr5M74mFrN5VoOELsotSLEbCcidtLfycnGA/p0I2Vud5fjz7N+Mq9y77kvh?=
 =?us-ascii?Q?+qsvtG+OgqYXPWojWurNhW2imsDyo1MDF5djGzgqrbaoOZWbKXGtVl99v/Bg?=
 =?us-ascii?Q?k7+Lu6rSCMBfQRhv7F79VeQAbNWjzhbIa3UUEeRr3KfUF6Iszc2KD6HK8gma?=
 =?us-ascii?Q?lPzU90Q/DH3HFh0kkSH4Ptu0n9xKNnE8fSzj5SmeqwkIvcqcqK0U+B2AcjyZ?=
 =?us-ascii?Q?u+2+PU8849A2pmNLBmBRgRUQNb39jOLYJ6TbZVuviozOTZ8nmeIaL818Xzl2?=
 =?us-ascii?Q?oYEXuZk9lJYoyR4yJUqv4l17tlnw9sxUIwb5NRTMmc8Ee6/mNdOftFu6Mhl/?=
 =?us-ascii?Q?NaZaFSLe6s9D23o5BQTFn4DxHggusKDnXL1y2Xgh2URcOubZMEwT7HNssiFo?=
 =?us-ascii?Q?n85yNskF80mXcdtCi5GRi5OrgPWyaQZDuSHcRZ1vDQ+Hdj8QzqoDjKQEv+tN?=
 =?us-ascii?Q?1ZESkp6N8YUEbDHnUOiltLGzbKnqSjPpn741RDTrmaWC+LxYcgCAOueE6i6F?=
 =?us-ascii?Q?6PMGu1PzbJfW76BgNBLqdP+aEH+uL978Wr9wIXPPW91xc+yNxN/2dUa2JAjL?=
 =?us-ascii?Q?DfLDFYdZttKIyfjqDJbyE6Br8Rucxg7A4x73Wal9+MhnQQD4KhdDrptDmkKI?=
 =?us-ascii?Q?O8ewz+dd2fT5yPNx9DHcYxaxbY4geqexMnlPfyEl+6tS5NDAJWH8Qi8bftnI?=
 =?us-ascii?Q?CMmGdUMpV0coBe3r0ClejDG3uXJe9/7EWzMDyKHIiRmRl/Dp3CqHntWJuKJP?=
 =?us-ascii?Q?gD5Nqjxi1L2CLig02i8l97mATpp8zQC6+k5IELg0kT4PWw72NgwUK/qbMrYR?=
 =?us-ascii?Q?oYm/B5lrJF2hZlS5kbxRvHGkAMucFR309qN2Ft27HxgQIlEAB+Dzf7lk6wMQ?=
 =?us-ascii?Q?76Okf5HNe4XAEA6FpguSzQyUOfzSlwp0gNXsPqXRbDV3RfKz/ZHGC+mBM4oE?=
 =?us-ascii?Q?UVZ2pYPhSMMvbJ7yTGgpeQVtwXzFwBWYiGPC+w+9kP3PIkgX0BNdyEJwcjRf?=
 =?us-ascii?Q?2xjDIVyj0QzEEixPNNviq3tZYk0sS5gBIvOmvxTPsIhaOmRRRtEnxU/636TA?=
 =?us-ascii?Q?PWPohcyXutEXRqZZC1tXbU9W6uF64telkb8EbP1sCgghZTCVT/2TurLMnjie?=
 =?us-ascii?Q?zk8n9dzmCQUA+fnswcreH0r+K2te1kBlnf5b1/NNSXnXZWlxAz/jwcN/b67b?=
 =?us-ascii?Q?OWTXHNjAwNxnMwVy8OIMmtte5/ImDACmQhmnvUMeU0D+lkJQUxVxdtAMco32?=
 =?us-ascii?Q?jW0BtNXRFcauBW3qoR04SxbWdQqTu4r8kXikQVGf29NnlfT5iErWuz3nTRLl?=
 =?us-ascii?Q?B6aVTs3MCwB0+qrjaIYPw8yVPGv7RB0XadCvSYHtAm49wMRgDgNmIUVN3gQg?=
 =?us-ascii?Q?yQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abb09565-116f-4c64-0dd3-08dd04d5beef
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 17:57:03.8563 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YRJ7rPCWwNCLt+dHwUcdXQUrBi5B0dqCGU3r/IIbi1zbpIcHc2mllh4A9pfuFRNXEKNg6L5W1Q1VUWohmxm7dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8136
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

On Mon, Nov 11, 2024 at 07:53:34PM +0200, Jani Nikula wrote:
> Rename display_irqs_enabled to vlv_display_irqs_enabled, to emphasize
> it's really only about VLV/CHV. Only access it when running on VLV/CHV.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  9 ++++++-
>  .../gpu/drm/i915/display/intel_display_irq.c  | 26 ++++++-------------
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  |  6 ++++-
>  3 files changed, 21 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 45b7c6900adc..5ad66df1a85e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -453,7 +453,14 @@ struct intel_display {
>  	} ips;
>  
>  	struct {
> -		bool display_irqs_enabled;
> +		/*
> +		 * Most platforms treat the display irq block as an always-on
> +		 * power domain. vlv/chv can disable it at runtime and need
> +		 * special care to avoid writing any of the display block
> +		 * registers outside of the power domain. We defer setting up
> +		 * the display irqs in this case to the runtime pm.
> +		 */
> +		bool vlv_display_irqs_enabled;
>  
>  		/* For i915gm/i945gm vblank irq workaround */
>  		u8 vblank_enabled;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index d5458b0d976b..50c1ca062b80 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -434,7 +434,8 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
>  
>  	spin_lock(&dev_priv->irq_lock);
>  
> -	if (!dev_priv->display.irq.display_irqs_enabled) {
> +	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> +	    !dev_priv->display.irq.vlv_display_irqs_enabled) {
>  		spin_unlock(&dev_priv->irq_lock);
>  		return;
>  	}
> @@ -1499,7 +1500,7 @@ static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  
>  void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  {
> -	if (dev_priv->display.irq.display_irqs_enabled)
> +	if (dev_priv->display.irq.vlv_display_irqs_enabled)
>  		_vlv_display_irq_reset(dev_priv);
>  }
>  
> @@ -1522,7 +1523,7 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>  	u32 enable_mask;
>  	enum pipe pipe;
>  
> -	if (!dev_priv->display.irq.display_irqs_enabled)
> +	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
>  		return;
>  
>  	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
> @@ -1697,10 +1698,10 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>  {
>  	lockdep_assert_held(&dev_priv->irq_lock);
>  
> -	if (dev_priv->display.irq.display_irqs_enabled)
> +	if (dev_priv->display.irq.vlv_display_irqs_enabled)
>  		return;
>  
> -	dev_priv->display.irq.display_irqs_enabled = true;
> +	dev_priv->display.irq.vlv_display_irqs_enabled = true;
>  
>  	if (intel_irqs_enabled(dev_priv)) {
>  		_vlv_display_irq_reset(dev_priv);
> @@ -1712,10 +1713,10 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
>  {
>  	lockdep_assert_held(&dev_priv->irq_lock);
>  
> -	if (!dev_priv->display.irq.display_irqs_enabled)
> +	if (!dev_priv->display.irq.vlv_display_irqs_enabled)
>  		return;
>  
> -	dev_priv->display.irq.display_irqs_enabled = false;
> +	dev_priv->display.irq.vlv_display_irqs_enabled = false;
>  
>  	if (intel_irqs_enabled(dev_priv))
>  		_vlv_display_irq_reset(dev_priv);
> @@ -1911,17 +1912,6 @@ void intel_display_irq_init(struct drm_i915_private *i915)
>  {
>  	i915->drm.vblank_disable_immediate = true;
>  
> -	/*
> -	 * Most platforms treat the display irq block as an always-on power
> -	 * domain. vlv/chv can disable it at runtime and need special care to
> -	 * avoid writing any of the display block registers outside of the power
> -	 * domain. We defer setting up the display irqs in this case to the
> -	 * runtime pm.
> -	 */
> -	i915->display.irq.display_irqs_enabled = true;
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> -		i915->display.irq.display_irqs_enabled = false;
> -
>  	intel_hotplug_irq_init(i915);
>  
>  	INIT_WORK(&i915->display.irq.vblank_dc_work,
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index cb64c6f0ad1b..476ac88087e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -1457,7 +1457,11 @@ void intel_hpd_enable_detection(struct intel_encoder *encoder)
>  
>  void intel_hpd_irq_setup(struct drm_i915_private *i915)
>  {
> -	if (i915->display.irq.display_irqs_enabled && i915->display.funcs.hotplug)
> +	if ((IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) &&

I like the overal change, but it is not just a 'Rename' as the commit message
tells if we are changing conditions.

> +	    !i915->display.irq.vlv_display_irqs_enabled)
> +		return;
> +
> +	if (i915->display.funcs.hotplug)
>  		i915->display.funcs.hotplug->hpd_irq_setup(i915);
>  }
>  
> -- 
> 2.39.5
> 
