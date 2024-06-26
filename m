Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B087491864B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 17:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB72B10E927;
	Wed, 26 Jun 2024 15:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bcJjahXy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A41E110E927;
 Wed, 26 Jun 2024 15:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719417242; x=1750953242;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RUOmFGOIuJmh+t964QwWq7o/934IZWrEWQF79/XogGE=;
 b=bcJjahXyoPHIFC2wQMf87q11nuchTeUhbSkgtCrXYtbZj4w8nj/yd9p4
 AmGVXn1jvegE+ReQ8N2m3n2U/yiOtfEiVN9lkYH9GzFXzWKNncxzc50ot
 tj44mmllYF7ZInHxHH14LVCdZzEAHGLvA6DzOvVUn8LaqeLDXhVQ40oVL
 a48Ft8nEXstjRpxQgM0J0caCA//WLpXSeQ+LEup4zH3YxgYXi71wj34hZ
 Hsq7iSkA0UI0lKIdC/q+WDzn0S9+6/waF68LTF14eQ3Fmhj83rdV91m63
 NCTTwA+cI70cpyl4UITTSK7pwXDuLb85R5nA41PB2bDdKwLnuAoVThHBA Q==;
X-CSE-ConnectionGUID: sUxXgbXLTQigZsMmTL5VPQ==
X-CSE-MsgGUID: +dk9UgEGS7yyDiPaJfwpNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="34031327"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="34031327"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:54:01 -0700
X-CSE-ConnectionGUID: mPN9v2Q8T3axza50ect/CQ==
X-CSE-MsgGUID: 9fpq9oGASvqmPLzpSPthyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="43857794"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 08:54:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 08:54:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 08:54:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 08:54:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 08:53:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=klIaIvxDKwmnjVEPEk2P3JrzPXoIFIQPdghujbxSHgteSK4U27w28tT37PhduVVLcX8XwTT17fQNJi21OSbOYuOcbI+CYEJ10Q/Kux2Z9xFxypxZSMF3fM0YSn4/4q31yCzsWcYtF3+Vz/SQQPV98WBWihNy5GfO/IhZJUyTEK8Hv135kHsaMxNaV9Kuen4V8QVqiQTijrp8qlFke82XtbrOdpehdCfhlCOHPfw/v3MevkwSjbYhFsn1S/uIQzOtPn/kjx2PuphcQMPhOQ/j3r/z6mX1TueUIR6B7TW+9lUkaTdT7xomK49ukwCPjnKgHY+6CSJCBDTET3DqfEtBSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3NNV6AMkkcrzaZFz7w8vR1YEBVCDkma6vveJ65LbeoA=;
 b=kQekdVbqztbCvxsUqLhGkNesJkENsBV0rZ72IoGHe2lroe24Li0NUwRVmwzaLRRyDWSdEnUkrHlPhZDsbnIJOaDnz3WwGQKv2g6KvPj44kWs9iOPedNqlgzT4tOgGRhJh9ggAHJJATctCH1awK8gha1V+0hLkJtRWP0HVptys8VWjEtXa+eXDrSghDbqy9JI3o15+MXcFOeYrWn8JdVDw0hH5SlWTJS9B5PvYpuGeTDx/5ruZjc/VEWOW2nbp9p9qh8bgMdT2/5nRDp3QVS67yWCMokb7uRP+jC1MrTnCgYDyFsj1sDZFmNOnD6CRBTYZF5/fLIF2Nyu1TS84RXUWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN6PR11MB8101.namprd11.prod.outlook.com (2603:10b6:208:46e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.34; Wed, 26 Jun
 2024 15:53:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 15:53:54 +0000
Date: Wed, 26 Jun 2024 11:53:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
CC: <intel-xe@lists.freedesktop.org>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Lucas
 De Marchi" <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <Znw5jj7YROnoWD9j@intel.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240619143127.110045-4-matthew.auld@intel.com>
X-ClientProxiedBy: BYAPR07CA0067.namprd07.prod.outlook.com
 (2603:10b6:a03:60::44) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN6PR11MB8101:EE_
X-MS-Office365-Filtering-Correlation-Id: 8e82a987-5690-4a28-1a3e-08dc95f82e76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|366014|1800799022|376012;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?VRHNViKewzIPp79ce8lEHHDGetMKqHATBmGALMFhEIcmG2YT4kSFei81kL?=
 =?iso-8859-1?Q?vYRaM/imcUIbSpFCK7ZQtCQJ6sZorN4gOlDyiwE7uNVFWTsLegbNYK1xZ6?=
 =?iso-8859-1?Q?zpg6j+kWstrfVUQGadDpWe5dFoK5lillqSpz8RMY4GA3bWs6I9DpVgAxer?=
 =?iso-8859-1?Q?EWUfQ97GjSo8ZTvXKTNwq420N6RIi4GDIjGhFb6qnI82eOP6ya2yHjxQ6T?=
 =?iso-8859-1?Q?0yKk6YsV0JWxuZ4olpwh7/spEMzlhbmuIViTa4WmIckn1ft0rIph3SPCHM?=
 =?iso-8859-1?Q?vMFIrwBX7sGZpts5kcIYVLMtMIw5nela27/+RbOmgRl7g2xUSCMFKyJllQ?=
 =?iso-8859-1?Q?HPGi/PvnTKRYp3BMPxL78YWIdS91o2KuUYt/AtD+gNnE2/K85VzQnyLtA4?=
 =?iso-8859-1?Q?071LrekoWNayOrQ+k78BlK9bO7a8VmXfAsLT01L+98VStJJcvtNa3c0v/f?=
 =?iso-8859-1?Q?b/6kS5yY5nx/uMublww7jSc1fG3KYm60Eq7v4jZzGNsJiaWhIcIpFyBJ0h?=
 =?iso-8859-1?Q?qvmc56frxhdMWLvHzRZulvbUDPsT3ykwOHWq+H2KgA0RG+VOeM42ExiDfQ?=
 =?iso-8859-1?Q?oSy98AXBgzf7VFvCcRSg+pOjbIVQYwNdCv/h9gMTRAc501gn2Txg2Mzv2x?=
 =?iso-8859-1?Q?XD8HSIAUNyywWXopFlE1rNg9I6M0RjHmmL7mKF/lfFcP3QvzW2va8HVWU5?=
 =?iso-8859-1?Q?l/i8Hd2lORZcc5XJb6Khiqp8sBSOzw6Cm4KWJvrZQ+DwvU8TkUiWhPQ5bn?=
 =?iso-8859-1?Q?JaMJtGjSjoqY4tC/xz6u4d3jIhyZecjvjhXkoR82faqgS2CZrvFUDavrft?=
 =?iso-8859-1?Q?qI+2AtUcQioYZ3OzlNMxYLaq6w66qhm7vuEAs0Y2dBZkLJxaAhYjgaH/rl?=
 =?iso-8859-1?Q?08RygLjO5NWrGavEUNxhTuDiFgo30IjyfrOycso+tPR8ixfqMeP+9tjLRg?=
 =?iso-8859-1?Q?xeKYkaedxUKUes97006kZ13lWUKGRH/tuLxJWAY3Oxw8Fj4FKh8I+F2TnC?=
 =?iso-8859-1?Q?cI82I2D42lkaf/Res/jV/zQPZXjia2K72+GiYrNf7eq8S/OvZeXEJjzwRs?=
 =?iso-8859-1?Q?Uid52yn9mFCLeR4Z1yH4DzlMBeC1geHuCspqPTzGmAwdS/Cp4iH4EnihXm?=
 =?iso-8859-1?Q?qkbRr50N2QhLnBl4cIGC8rkqCrWbttFlxchcnIsE+0Ds9o1hwnQLnUPCGQ?=
 =?iso-8859-1?Q?CpJAZLdT1w/PB9IWKV0fFzg2Tsro3D/BNzCO2Pq9Z2Qej23qrxAy1qWNGa?=
 =?iso-8859-1?Q?7hbzmtcrGPqQ6oiWxsp8f7z5gd8JqPfZvpifWz0kAU7kkUjy520GOl2cjJ?=
 =?iso-8859-1?Q?7FhmjPf02vk4SLy+tKfCZhcn21y/G9yML4OViwWgIDB1WautpQR4U6xXza?=
 =?iso-8859-1?Q?qOhpf8W3Exx93viRDr1QWzVddYYPyfXA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(366014)(1800799022)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9Sm6wVsfCNul3h1+SkXlMNU06MurEGiBURCXdm5iXrN/rrc2axmaxemrnR?=
 =?iso-8859-1?Q?hkNGz8I/8KYqp2kvoV2a9TfJvqZCUT9hzZ1PaDQGDDoPe1+jgUzAtFa7gh?=
 =?iso-8859-1?Q?JM6uTFQ0tjng/+SwNAcR4GwmOzcuJrAEOlMXa68AnjEHUvUA16KxhGIVI0?=
 =?iso-8859-1?Q?cGeuo1a1Wbfa981wU5j62E5v2K837rNGlcOZbVOCduWWxW7cmBmESIu5Vh?=
 =?iso-8859-1?Q?6O8sJsXu1dsTnJnVl91E9rsYnNubg6aghPZ452inEsdeFEsuY3VoVWFMfc?=
 =?iso-8859-1?Q?1voGGviWOsT7wzn0O3yPYjjYdl1tHqpwn09ASaPsFY1N5a802nQ5jy1Zo0?=
 =?iso-8859-1?Q?vNeCWJtcyHcceQ4hDmEg+lffEDgHsWK3sW74/eMj6GslsoK6AKyO2XUISo?=
 =?iso-8859-1?Q?2yuYnHvvUHYXHHIHzUk7DgE0yBuqKrWP7IdNxFKr/iM8aZIgr7FSmbwmFl?=
 =?iso-8859-1?Q?mz9zeKEAqgowxGd7/9dkKwEvoXt/2BZYkA/JHPzpoi+vW910EG7ylXptEf?=
 =?iso-8859-1?Q?OlEofGPdKf8kYuWqDAA5szOGTvmhtXDTaPuBJpKSmyh3Q3TpZbj2DYRS0G?=
 =?iso-8859-1?Q?RKfOCu9EYz/WArDKhU/V6E/v3GdECqa1tqfTCqk7GskjHRMB8ou3E0FPnH?=
 =?iso-8859-1?Q?+XOvHW5Cn7Ynq6U3dJVh9CYSOvzIRnzX45KtxunVovsO5tX/KhARytbFkW?=
 =?iso-8859-1?Q?W+ikVW7BhkF9zG82MQEVmu3bgIz3c90rrq28AfyBfkqjpZq8Kc3JW/56qM?=
 =?iso-8859-1?Q?22/zVLWxUsewQ8A69IcKaEbexNXPRHWqEqBqgt8l5NRZpG3tqQOt3Mw8C5?=
 =?iso-8859-1?Q?ZrBlC1FEVYCepS/hOXCwIBrg/nHX9dPBvNNh1r7wLaVhAwV3nxwnILu+XT?=
 =?iso-8859-1?Q?jqIdNY3kucbWCAdC1i6/xGje8aYMJ3oM9de8MueNNanpcyFMcmia8Hs9MM?=
 =?iso-8859-1?Q?zNRG1Ul7t6P8jjvQSKQAPQHD0QMUh0hzjXDCAcVuh91dNaaBn6aKNTz7KU?=
 =?iso-8859-1?Q?9icRhunr6YhYXBJbI+1CV+LgmVMQqJDR+T91YfBNz020ZfD3avdNcsR57p?=
 =?iso-8859-1?Q?z4PxpemBKYf23AXUtuTTQfeo0BYnHIyYDLfoSLsupJH+Ps/nZG3TWMi78r?=
 =?iso-8859-1?Q?rlpUQLxQRTmZ/ClqWg/cL40+FDlvZq50OTpP9kEaJsAs64vLzmE3yjSHIO?=
 =?iso-8859-1?Q?Kr85zi+HKuw1uUHWiDuy3ttiLAXDMHX6uuJP2AOM3XociZXB0nJihBxZYM?=
 =?iso-8859-1?Q?RliGLCIFIQDYHj5PpobrWB5Z3hodi0/p9BdrHfkpiZb8aAupToABSt2qjs?=
 =?iso-8859-1?Q?ufk+Gkgp+gq9iExrzS/KAcW9gARmX9D45X8McFZoWieCEiR0aocFaVGTZL?=
 =?iso-8859-1?Q?xHRzgQlqV+BvSpwGs0uO7jkGRGpG9+NiZDCeLptZTRnB4mubXG/BP26rlB?=
 =?iso-8859-1?Q?5OxqeY6db1PRpLRKXdkHKlZQzWw6tj1EsQWJuwGYOFwKdqbOjz/PhyiFH/?=
 =?iso-8859-1?Q?5QI+kdwCN6Xjs5KJc435w+Chq7cqggZvpYJqkripLQxgMmWZWL4d+B2ALN?=
 =?iso-8859-1?Q?qPRzi6CPSwx+eVxArOPqpO5U16Eo/4NUDJcSsvRgafUevn7x1xO+7xIojx?=
 =?iso-8859-1?Q?dDASXCP1gAYvqYS0Li9P6lLHemYHmpg4Si?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e82a987-5690-4a28-1a3e-08dc95f82e76
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 15:53:54.6404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DnCBlj9DKi8xaAlRIi4rOBHxyvB5A7fYRcxs1xBozNidwO0y5eHVD1g0qspsGPfK+kGmZzjDf4r2fw7eMFJzdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8101
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

On Wed, Jun 19, 2024 at 03:31:27PM +0100, Matthew Auld wrote:
> On BMG-G21 we need to disable fbc due to complications around the WA.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> ---
>  drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
>  drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
>  drivers/gpu/drm/xe/Makefile                     |  4 +++-
>  drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
>  4 files changed, 33 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> index 63201d09852c..be644ab6ae00 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> @@ -6,8 +6,16 @@
>  #ifndef __INTEL_DISPLAY_WA_H__
>  #define __INTEL_DISPLAY_WA_H__
>  
> +#include <linux/types.h>
> +
>  struct drm_i915_private;
>  
>  void intel_display_wa_apply(struct drm_i915_private *i915);
>  
> +#ifdef I915
> +static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
> +#else
> +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
> +#endif

please avoid the ifdef I915 in new patches as we are trying to get away from that
in favor of a clean separation.

> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 67116c9f1464..8488f82143a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -56,6 +56,7 @@
>  #include "intel_display_device.h"
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
> +#include "intel_display_wa.h"
>  #include "intel_fbc.h"
>  #include "intel_fbc_regs.h"
>  #include "intel_frontbuffer.h"
> @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> +	if (intel_display_needs_wa_16023588340(i915)) {
> +		plane_state->no_fbc_reason = "Wa_16023588340";
> +		return 0;
> +	}
> +
>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
>  	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
>  		plane_state->no_fbc_reason = "VT-d enabled";
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 0e16e5029081..f7521fd5db4c 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -34,7 +34,8 @@ uses_generated_oob := \
>  	$(obj)/xe_ring_ops.o \
>  	$(obj)/xe_vm.o \
>  	$(obj)/xe_wa.o \
> -	$(obj)/xe_ttm_stolen_mgr.o
> +	$(obj)/xe_ttm_stolen_mgr.o \
> +	$(obj)/display/xe_display_wa.o \
>  
>  $(uses_generated_oob): $(generated_oob)
>  
> @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	display/xe_display.o \
>  	display/xe_display_misc.o \
>  	display/xe_display_rps.o \
> +	display/xe_display_wa.o \
>  	display/xe_dsb_buffer.o \
>  	display/xe_fb_pin.o \
>  	display/xe_hdcp_gsc.o \
> diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
> new file mode 100644
> index 000000000000..68e3d1959ad6
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#include "intel_display_wa.h"
> +
> +#include "xe_device.h"
> +#include "xe_wa.h"
> +
> +#include <generated/xe_wa_oob.h>
> +
> +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
> +{
> +	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
> +}
> -- 
> 2.45.1
> 
