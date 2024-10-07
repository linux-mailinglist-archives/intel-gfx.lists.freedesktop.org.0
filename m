Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D669937B7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:54:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B2A10E41A;
	Mon,  7 Oct 2024 19:54:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U8YSGRqg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0AFF10E275;
 Mon,  7 Oct 2024 19:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330861; x=1759866861;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=O8xtiWm3lefbdYmAmYLXBoYJ+NxszrC9xEwKEGSLswA=;
 b=U8YSGRqgWJ/8FCjXJXyZZSbgYptCyq0GAL+rB4o1fn9x5GS1JAjBUJfE
 skyaYDBFrj0uxhtEsmdP3yj6mEpaWM5lxa6Stb4yAhJeICFRovOo/LQTl
 1xbueIUEZYTu3vtLyjJQOvXbDiEHcGRR3p1RuVcj4bEZDqg4w0OFJY2/7
 s2TwU5piNQmh0P7R5jJUa2uwi+9Ba/3sMdypG2kB2i/G4880hbS9D6212
 7k1mEadATFco3OpztTtyCQIIQKbvbV+B8gpE8y7qbm/hLtB+LeZbhyYyR
 eC6EsHZBp2KaP6QWvjinPJJwyaqNUJbuLYc9lWnaApB+/Mj7npqGZaoGQ Q==;
X-CSE-ConnectionGUID: vG81uWvIT1ydBddu+VNy3Q==
X-CSE-MsgGUID: gbs7dOidSlCq0i755DyxNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38099336"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38099336"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:54:21 -0700
X-CSE-ConnectionGUID: asQ6EZDgQ0yoEphtx3tdjQ==
X-CSE-MsgGUID: graTIX0ESpCHdoHJyUGApg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="98912076"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:54:21 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:54:20 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:54:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:54:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:54:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:54:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KeEPPpclaNFNoVZ29QjidwgZIBNEYA090UL7ywmnlsfDcyhFmdZ87TgRG6xReB2+SdBwfzE7XG5R9o94nAibxtPl90FglR8M79wBTmt8xzvvDgW2d0xqKLyVZFzOPFN4iMshpq7YfyXWHgA3frOSrAGDhN7PYBw51cpz/yXyIQ92D2MWxJu3JI232GejGIE8qLZmtznYsjSCtp9YxmyAK/vZw/9tQj3OXA6WdeelUBZyo4bldmR26B4g+g/BbnrdmdWLg7Sogj9C54hxN+Moq0/JRiWjtqcQtKzXtloF8CMbv09bOW5w2aJbml0GJbUQh0UCueijLKLVXzYCs483uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CCdPUwtatpUP2tpydIVXi7ofK90fMHjM9daHjgnTDTE=;
 b=VNXZr1U4jZNni/fv9nNCklC/jk6v+S/OUc40GocXgel+CA7eaCwEneLL/HtQ4pjoKWW8Wyti1cPIrdOIwnd0UEjcZFr1SRMMmNSKfPWfAWzVoDbEoi1lPbBUvc2XGsxhasay/LhT/fLvJa4WaQ52M1YD/doRmCu6566/i9CSe+9fdal4pEaovC43Fss8V+BAed4gYP73JgX8a9A/zK9GzuAeXwBKymT1fO/qy1Vu+kcz6VZevlbzESm3pphFwSaDWDGTdny0nPEKpLZ412k1BD5HQPw8CpieSZPt4ZtNS6lAnTmXOEZn1mDDXFFXMhJ7dYYo3kPUv1qn6AWg+zXjQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH0PR11MB5235.namprd11.prod.outlook.com (2603:10b6:610:e2::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:54:16 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:54:16 +0000
Date: Mon, 7 Oct 2024 15:54:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 06/15] drm/i915/display: add display platforms
 structure with platform members
Message-ID: <ZwQ8ZVuhUNiUHPyp@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
 <d824d6675f7f8b5da7de6c28fa83fed6b990c59b.1727699233.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d824d6675f7f8b5da7de6c28fa83fed6b990c59b.1727699233.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR2101CA0011.namprd21.prod.outlook.com
 (2603:10b6:302:1::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH0PR11MB5235:EE_
X-MS-Office365-Filtering-Correlation-Id: b8ac1c15-ef6a-4b02-1715-08dce709d345
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+YwykN6FcjDDJZPamKxWxNNjxrARP/eHJer9PORFjX12OdWTQZmZNZrIA4Kb?=
 =?us-ascii?Q?XXsKnn9+4U9ZSoNIaGHyBkGxVkywVpbJ7k90TlKrJH9jSbaQXiMf3DKFja0r?=
 =?us-ascii?Q?Qs7/X/fhL0f2453n+m/oy/KAAm+X3md70pFhyVmY2WqCLtoc4dZjSk9z32ca?=
 =?us-ascii?Q?TcXY2Uv0tK9ChqYbbvp1ObpQzSL/BZO1K3G8UsmTOn8mPHPOCJEvdfH+KaBs?=
 =?us-ascii?Q?kwJkkgz7qQoif+e4WEaNUs09Iqn7N/P9vQTgRPYTwRAtTaqER02qLXMXcjrE?=
 =?us-ascii?Q?sq6eGIlel43AkmCaqw5+Dza2bRhcr6IZ3hctTbAmOFbOofLzOYYvL4uJkJAa?=
 =?us-ascii?Q?OO8EeLoZKUAE5wK8XWZoaZClJIOWR/GZR5UzdxT+z6cIZhJOlcFm/r9TmrQ7?=
 =?us-ascii?Q?L+9ehK1rNarG7NKkOWYwASOdrlSNWgDEb+hiPMODAU6Rz93DHrLnuk50Sdv3?=
 =?us-ascii?Q?JZiz0593YBFYioZ0FZT/qHSCBPg1HIxS9kc6zKg3u6YJ6Q8fb5vynpiwmQnk?=
 =?us-ascii?Q?0cKJfl1Ky2V9cSatUDKCiZ6IW5cirkOW+fVmQAl4HmzD3sY3TqNzlH8KgoV+?=
 =?us-ascii?Q?UQq5acHB2ijBEvfhXPRW3//20z+hR3xKpd/248mF5+yc+Inri9P0bJ3THhK4?=
 =?us-ascii?Q?GKKZYpSu0ePvwkgXEvA+R7JkctVtp2mPtOL/cBVptvMhnGkWwf0FINFCuDYW?=
 =?us-ascii?Q?c3blEjzfz5+6zRKO4Wl3VKeX+ou5SaLJfOQbXlsB8ag86WICirwrezf0NIqV?=
 =?us-ascii?Q?DZ7xGAjsfDck8utZnMwIgRapF4SJFGxDD0BmyBJ6uzM8RG5xD9l01cdfadbx?=
 =?us-ascii?Q?CnWBYNCf2PBJX+xwKKBIjiQNYOZgyHIZJ+Ood/xfs03AbUCDCg7RDQZJ9sBT?=
 =?us-ascii?Q?yOUdwm3byJI9GRhVWc365TaHCwYDnMexhW+jioOLKY5/08tsbvNWOlaYAJ74?=
 =?us-ascii?Q?rnKcQOdLfcPzjNKfktYPaWDTSLHm4AEWYHTg5Q20BgE/rGNyVWDVOQBmTKUS?=
 =?us-ascii?Q?rKg/aPOh3g37Fu0NmfJEbF/opv3h9HiXJcg1i2CfFc5BBZuL+U3SVLdsBlNO?=
 =?us-ascii?Q?0NMbGLTdEWquT3JJsh5vzQTLZL9YZCq5jtcshvK+mBwWqeq4r2bjvtCt6uje?=
 =?us-ascii?Q?NHwh4DNpWKBTOYye2R673YihS+vxLRSml3GUKIqiJl2sJnbEvYT3mUUFcqDr?=
 =?us-ascii?Q?TJYdcwn9lBl/n/nUW+TBhiY8+RbtDckn1EVaBJmoWQbbBS90//zA65qUeGPU?=
 =?us-ascii?Q?XCMVm3xgBuB/BxyBlzRIJIeYoylDbBgADKWrcoMXcA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HlX4DuBMx+AQUglEloO6YkI/ZQai4Zri2YYl71SBay3+UK6ixTq9fS+qI4O9?=
 =?us-ascii?Q?x73yQou4/0hNbdPcrtZ1UOpWguT+VC8m9bSLCx/KT6RXEhRUkBTF/ujAFa0E?=
 =?us-ascii?Q?xjTUgeUOGWLg+L8RTwaJYe5dLrvp0ADXa2GDfch0C7qSDSPwqK6rF8QmbvEG?=
 =?us-ascii?Q?lzBXVb0bQG7QNlqL8HQM5bppweij/hu/Rbx8IGDjD3y9YpWwPkhQw+eKBuYV?=
 =?us-ascii?Q?+GKydsR3+qRayU8rKcCruSRKVTm6563W/5FsZEMEXJODL0ZmkmdgLrsrgdew?=
 =?us-ascii?Q?ux6Uk63bxRNMv1h7Irny4GS7HBEicuDIlEDASB7WLmPN7MDs+VXPGblm5Z3a?=
 =?us-ascii?Q?+Qgq+PaRLhHA8SzDrAELdHdyaKdXKskYqyxtW5n6ZJAGXU2rFkrnQ0bchIui?=
 =?us-ascii?Q?RDM+cSQZ9u9A/xxdVY6tT5y2nprg6bHOyyFdXQ7eZysmWucggzCwSxxOnUn0?=
 =?us-ascii?Q?2Zw4grNchaVnkoM/DQQ4rAoksFX1fiKOe08JY1jKwun79zYvnX0zmCU2Y2aQ?=
 =?us-ascii?Q?/FYl50gaIqlNC6UQ/8vJ56frXgcmSNglP8PXTDeY3Kx1IvrOi4Hf5af18Pi5?=
 =?us-ascii?Q?usOVrQFzVNhhfQDZy57M7LqILhzUjlxTFYYgXVfXWqODj6KE1xCHkI4QGxkz?=
 =?us-ascii?Q?fgT5/LdfdyOeZIhqg8l5GD3on11NGQMFq8J4bZiw8lvce39n7lcHN8YRXfhN?=
 =?us-ascii?Q?0dOQ6W1+jUU8SxQp4CBvJUCEsy1QAzc77YdzN7FdnXBedX5sT7zCU7hraj4C?=
 =?us-ascii?Q?84zVSAvX3ZbNSuMZSpL38w5W+rO0xvXvufDUgL8M/V/RICf0jbRZwUaG/eMk?=
 =?us-ascii?Q?/9/f4kY0nmvs1bKRw4ZFqyRSxQ9c70zrKJTb24OJIHBzzD8oat/EUXVfJNlw?=
 =?us-ascii?Q?orUcANb/IEFGFeQ75njSbQ0IdRyiR9Ea5r6VEf/fRn39G7DWsdod4/hn+7os?=
 =?us-ascii?Q?jrLcO6KPUA2v6skgpXGY8X4cNsp73CY6gWz5VoWmNM97y4vUP7yeK7go3uhu?=
 =?us-ascii?Q?AhcLmqraZ0583CMKI8ZS0EZa8ZoaMaqV+SL7lr8w/Lnf3xnvDrv9LzAa9olC?=
 =?us-ascii?Q?iZ3e9AyqDYNo9dkfJv9PQaO3btdN8at8Q0J8Oi+gBIYgp1JDekCJDuH4kGwu?=
 =?us-ascii?Q?mRG+FpDEWxHm/yQy2k5CJmT7WkuPUSF8U4Ed9+SkCg+cQuDrWhPlKKK0NNmJ?=
 =?us-ascii?Q?Bc9RzfGlKan5UXYxdePVth8HBBINxaHOrS0YctHgijlCNs1llIVDtT2Ih47a?=
 =?us-ascii?Q?J14AtAgOvSz3lxdXSh+xqKXT8liaxYUpzOOZiDzcaM2lN9xSjjfxfBiHnToF?=
 =?us-ascii?Q?MJ0jTSaeMADJ1Rl8OeW4l3dUoNecaBsinV/eJrz9x4AfKlsOYa97mDc65p9w?=
 =?us-ascii?Q?U+3mmC6027a5RYZ6F2zkz/HG1FfuZ2/nnuVW3mubTDUzA+khOqBpO8UuLX5D?=
 =?us-ascii?Q?VXZ4Hxq+N3TD/zNMKD3dQATVRm6+EymmaDNJugn+B2Bv/HNjI8K3YQEd/L6O?=
 =?us-ascii?Q?kO5zYjmgV6EjCzi8NMmVkzvJetez4wJOl8VuxXPujUV4hy/WbMAJL0OuCoxb?=
 =?us-ascii?Q?+TDMJrq34P9538znJ9c+kMoubbhku1U9+jIa0C17lkhXpaf0mpuctcdXNn9B?=
 =?us-ascii?Q?iA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8ac1c15-ef6a-4b02-1715-08dce709d345
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 19:54:16.6913 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QXU8K4f/kIeESOkW3WpXrlgcnGUqb93sIxWLB1FJ2KuSi6tVYTwo1kLA2kLnaCdX+xqTuEIaoC8ZdTbAo2yDyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5235
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

On Mon, Sep 30, 2024 at 03:31:07PM +0300, Jani Nikula wrote:
> Add a structure with a bitfield member for each platform and
> subplatform, and initialize them in platform and subplatform descs.
> 
> The structure also contains a bitmap in a union for easier manipulation
> of the bits.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   |  4 ++++
>  .../drm/i915/display/intel_display_device.h   | 19 +++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b2610217f5c5..258660b49eba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -31,6 +31,7 @@ struct stepping_desc {
>  	.step_info.size = ARRAY_SIZE(_map)
>  
>  struct subplatform_desc {
> +	struct intel_display_platforms platforms;
>  	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
> @@ -38,10 +39,12 @@ struct subplatform_desc {
>  };
>  
>  #define SUBPLATFORM(_platform, _subplatform)				\
> +	.platforms._platform##_##_subplatform = 1,			\
>  	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>  	.name = #_subplatform
>  
>  struct platform_desc {
> +	struct intel_display_platforms platforms;
>  	enum intel_display_platform platform;
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
> @@ -50,6 +53,7 @@ struct platform_desc {
>  };
>  
>  #define PLATFORM(_platform)			 \
> +	.platforms._platform = 1,		 \
>  	.platform = (INTEL_DISPLAY_##_platform), \
>  	.name = #_platform
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index c4208c34cc31..f166d4698949 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_DISPLAY_DEVICE_H__
>  #define __INTEL_DISPLAY_DEVICE_H__
>  
> +#include <linux/bitops.h>
>  #include <linux/types.h>
>  
>  #include "intel_display_conversion.h"
> @@ -104,6 +105,24 @@ enum intel_display_platform {
>  
>  #undef __ENUM
>  
> +#define __MEMBER(name) unsigned long name:1;
> +#define __COUNT(x) 1 +
> +
> +#define __NUM_PLATFORMS (INTEL_DISPLAY_PLATFORMS(__COUNT) 0)
> +
> +struct intel_display_platforms {
> +	union {
> +		struct {
> +			INTEL_DISPLAY_PLATFORMS(__MEMBER);
> +		};
> +		DECLARE_BITMAP(bitmap, __NUM_PLATFORMS);
> +	};
> +};
> +
> +#undef __MEMBER
> +#undef __COUNT

why do we need the count here?
I'm afraid I didn't fully followed this macro...

> +#undef __NUM_PLATFORMS
> +
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> -- 
> 2.39.5
> 
