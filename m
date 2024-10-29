Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6360D9B4B01
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 14:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0E810E656;
	Tue, 29 Oct 2024 13:36:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g3VvDniH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DED5D10E656
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 13:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730208971; x=1761744971;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yms8lTTE6/fSYlW173IyUmqPIXVhrwFTXH9fHvBk6qM=;
 b=g3VvDniHwnnp49l9cfP00IjXLgIC/UdGVqLTsYRPmAS8QSJKY1BcL7PZ
 i1sZbN2Ry9ERV729FFSXgLpfukvvpad0QWw1tTi7+4M9MjRxsqsm3Pbkj
 f3JESGyq9mpv6rPCWO98NhFYcjLlC/smvgWXYY5j7R61nD7vb/OhW3qlA
 9mmR0042I9KqMx1/VZMOlY9JBOtM9quYUVWFi0HUGLzmdK2awXoXiRBLK
 cbutfiWswJ7nlMmgXjzIsKrLsRQD/RSbdioIlqd6uTRummzGS41Yskwur
 SS1/W1V4VWd0d01mrMtk5Uion7/7nMupw7YQwwidtkanM0+VNVgrByM5q g==;
X-CSE-ConnectionGUID: gSNK6atgQeSq5yj3qw43ig==
X-CSE-MsgGUID: +1xFRLufQVKvJHGuACSmEg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29814032"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29814032"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 06:36:10 -0700
X-CSE-ConnectionGUID: 6YdOSNGIT3COic4HOAQVuw==
X-CSE-MsgGUID: Rn7B0IPqS9u+DSEkadvl7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81870541"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 06:36:11 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 06:36:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 06:36:10 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 06:36:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Grnjt0zjjBtHSwrEuajf2hrhY+8kJKsau3dAXezoFCnYjNU5i6Hu2ux/Tsq54bt7d791MxoVYgMMt+Jj7D4TZ+xblnUGUotBltUBLjtjUiXWlx65Tj0gMWrWTYnWSKbRgu0euTIbUHNB3zXR/9fMgOji8FITucg+aBKhybH09xPwaEfW3xtCVSVvks8v7Z6SCaVVcKVYUUpOcHxvb7aWmzft+zboOtM/o8rY+B4JiVbI5jum7Izgc5dH/nh/gtvYhKW/K711ypFIz0eGYZIX9yOuJoU4d2fyV2bPIgfuyEqDZyOoXejkTxxcUphIEyCOhMr62Ljl1HAOi8/Ka/fR8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OJ/rp7r8hbKKOrXCLrSNZEKAgEEpSJvkJaHWPnQe1fU=;
 b=c9llJ6+pO7GMnFUTON8trZKszn4PyoEhGdt8mQ9dLsSZhz3CZOfNCO4cpOphiSS2MO4V52jpLdeEVZEv7nNbv8/owuMaKOj8Nfb7R6i+s1LHxRWq4kx//I9aOCCzpPnvskUWMCZRTt3ZnWQIEa1vivtyHP6o+prEOV2vDZpp+sogtg7RLdI2XdQRZ98ne2Wrx90IgNk4vGCPZvWzcjJCo4htiqcszpRAEuQu7sIGNUIyrwdCIVb1Y98uJgzDmcNBgfSmh1k6JMjN20mBF1DpYnyAK6bW/T3Ewtq/qh+Nl/X0L15QHW8I3cc8OrLwT/RlgO0mvmMW0GflLXEu8dKDhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 SJ2PR11MB7503.namprd11.prod.outlook.com (2603:10b6:a03:4cb::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Tue, 29 Oct
 2024 13:36:06 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%6]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 13:36:06 +0000
Date: Tue, 29 Oct 2024 09:36:02 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, John Harrison
 <John.C.Harrison@intel.com>
Subject: Re: [PATCH] drm/i915/gsc: ARL-H and ARL-U need a newer GSC FW.
Message-ID: <ZyDkwilYgDTWwr2F@intel.com>
References: <20241028233132.149745-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241028233132.149745-1-daniele.ceraolospurio@intel.com>
X-ClientProxiedBy: MW4PR04CA0122.namprd04.prod.outlook.com
 (2603:10b6:303:84::7) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|SJ2PR11MB7503:EE_
X-MS-Office365-Filtering-Correlation-Id: d58faed2-f133-4d24-9b53-08dcf81ea3ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Almy19yCBMqrYH47SEfHJX99Hg9QCADtGy+JG/aRLQ75DivUFst2TU8OOwb3?=
 =?us-ascii?Q?noBFmLbm58C/OQ/iCRtgs4JsbBNVNae8o0VPztOX+SZc1WS4vCD215Vxv5KX?=
 =?us-ascii?Q?CgMj2zal6UZY9kzWFE5INYkWIzLFURjAdV43w2cVXAf7hsjlQqVu2YV2DSk4?=
 =?us-ascii?Q?xL3BTo6fstq1vJAxrV5Nx0+VyI6dgtZujcClh66Xh6mwV/kkSrgGEMsnNttq?=
 =?us-ascii?Q?CERjNxz2CM5eSX0wN1EqncZFaMDzkWLvx6WxaqAP/EZAx7vFgZTBVZeXbmb8?=
 =?us-ascii?Q?Opc6/+lmzHaRIimwfqd8QTkHtqFfeWXy4yTaFJpq4LBhF8RYoT/oYG9KYYha?=
 =?us-ascii?Q?E7/E/ZvKvYXBU/Nqbsu67M6MZZ/QEWFCTZAUXMlJBfMCHkp5aTU1vet/Rry1?=
 =?us-ascii?Q?kyqoK9LrgatwpPXBbpKAM3cSf+x5OLhsED8879JRsaHmjvk0JmB0qLtUbHGd?=
 =?us-ascii?Q?2vlEyH7l1/6h99cKi/a92ApjFVGuHrXLeiFyBDlqv+TyqI8WtBkGZsB/9F6o?=
 =?us-ascii?Q?X6KhHiCAHqzDJXnQoRfwxBhR63nUcleYA29ezQzXciYlvmkAYgENpsspyYlx?=
 =?us-ascii?Q?b+gB6mDFZYsLWoPDJjtRA4q7BBITFfeByb5ZhezPSuJ/Drot2mEGjWLytAs9?=
 =?us-ascii?Q?qyk2E/dkk2act0X04sUTrevIpC6jdRG+IUgItcjKMZkAqqs6G6mhZEHXlKjd?=
 =?us-ascii?Q?5BSeE4ndL5t9r7CCFYcAQGgFlpw0gjsiFll9ooT6pdPe/uhzVQuHpWQdc0SQ?=
 =?us-ascii?Q?EGaLHAz3O8wZV2o1j+hNkgh/Alnf2dcA1ozJqxQ6/uei6gZAuqtIxK/I3/2c?=
 =?us-ascii?Q?N7oywT4N7qNNL5gVPeNyflyJB6NvMDOINLlLlgktpPJ8BVQ1L/KCPwNoK07v?=
 =?us-ascii?Q?qWMKaQd1bGx7paTljIn3d6RvDY3joXW29kCOgmXsHEvmk8UdrAGux9AcXCj/?=
 =?us-ascii?Q?jP1uujxRAVx4iQSo3gGXVOLGJx9A4aQ9a2WjtcwjazLKcy27ln3t6l/qsTVb?=
 =?us-ascii?Q?u1K2VoY3wO4Nz/RUG+5/hvspQ74sPP2cXO2a5m1OT9GGEBqMpdRdWVAagSIq?=
 =?us-ascii?Q?2tU+uvPjZ4xTvnpXHntuUI9PkSHkLUjxKQ29nui/cGVBinyMqd4N5EzaAsTr?=
 =?us-ascii?Q?5Z4Dm306xdro/qG0mjpNoT1bRsfBug0MmlRn1jNGz67ASyzisgeyemmDo2AZ?=
 =?us-ascii?Q?TB65pA0vrS0ASSFkM0w6RYR3KWPKcSU5EjiTDBGfRybeifGo0bM0HQJNpWaa?=
 =?us-ascii?Q?e8nXCaa82lcOe5T4jGm6sY39ctkmm7rCNz8rPDf1NO8870yaxiM7yglSa6S6?=
 =?us-ascii?Q?S0c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xPCN7bzN4mVKJC41RO4FqMtFComTGjBBS1PEGlGhR7Qs+kFtX69DLWkSj9T4?=
 =?us-ascii?Q?RbnuPU+Ofu5jcqI6MAUZDFPlHNE6RtdvpHBAHmsAyqy9GZJiFz9AxphZG1pj?=
 =?us-ascii?Q?iT4y/zgjwlQBxZ/Kzs9fV7hJmySvxW5wpiOmGL+Gu4/8DZXpzIVoy61fNBJ/?=
 =?us-ascii?Q?I/mArCsjwPe/wn+86PzbjXO/y+z7fXiOQcOxrByFLb3y8D46/3N9iCRQ7DQB?=
 =?us-ascii?Q?vSp4cPQffuZO2Aka0t9GDDMOV7hqzrCvdyoCn8/40ivciXHV4AHQ7hDEDlNO?=
 =?us-ascii?Q?JTXNIWYZrKuoloKFFWxuxfZs3dEEOtmY+ddW0ZMrZ15xMFR2cYvyFZ33ZSzj?=
 =?us-ascii?Q?ZEU3XkA9ddD2ixsAa4gBQd3yPB3UKnEyT05L6jh0N/wOT+Gesi3w9Ta0DeOu?=
 =?us-ascii?Q?yXRLTt8WiqEzeqEJXRdZE3ANhfjRhmbGblmF64zgqATxZKjCJvUTOXY4P9e1?=
 =?us-ascii?Q?+sCP16a4VacBIDVZXPFamO9wyfworEmZNntKM1kguFM8zjo+h/EwJ50a8m8P?=
 =?us-ascii?Q?KofeJlOrRFgueUm++Jr/lc8TKLYckzlFsGg88HJnIU8UPZ1Z6H23X71nm/+S?=
 =?us-ascii?Q?OyNiecdIeCqGzF28wxe5vhDFD0syNmojkyhRJqHjgdeBU0LKGH+Buxq7Qe6B?=
 =?us-ascii?Q?Ci8pgax0fTS6f84FFJ05nfpWADuPzhgiPRIyoVh/9pJNz9c2vTftJ5K5Nj4p?=
 =?us-ascii?Q?YgLlZMedLXXJ6tm2ZvdprVTvmA3XSy4hSkijEz7fpFUn07qR2Mdfx17QBVlV?=
 =?us-ascii?Q?OOv1xMpPRjLsyb+IspUXNKm21bE8QRS+wpGgshcqq2jpDVvVOotHl1ovcp3s?=
 =?us-ascii?Q?weVqxtgmi64bn73KHZ9txQ9Wnkv4RWQ5DNrb0Ck2FDspTow4wz1GHzp+zeYg?=
 =?us-ascii?Q?4ChGYL0yzSEYdnLoRNoVD/2qTLgJ2TroFR9ZFq/qjzo6+uLPOOosmyJexYIm?=
 =?us-ascii?Q?biteChBNb1VWB99uHHg8GnFtrQ7GvCj7VdGUvrffU42YgiC7ZomGHsAM9wSa?=
 =?us-ascii?Q?SDkXgqJacnap25axn6vbBAkJ/k6mE4ynCgGAZB5VQ7Uv7SHgj/bAwX/wbHb+?=
 =?us-ascii?Q?Nh5O+HhCmxrLNUv0AnCFOP/+oCgUC/Jsjd1PMUaaZ2wyN1JNCif7cd3qvX5G?=
 =?us-ascii?Q?SLnVsy9TMYEdjzTcdt1Ejz7WL2XT+GkchtQ5GcRqa9cicgSeGwr7b1V6sXme?=
 =?us-ascii?Q?StHxbt7HaoI3ihUR0lJhR4kBEYEjsa6lrMTlgHNoJ0zzrlt05BBiFrPmyUc7?=
 =?us-ascii?Q?8czVVLj0zKNfLoAec4d0kJWavDAZLGNDpm0JuReQNiOlAFJb0wGsL24vKWgE?=
 =?us-ascii?Q?YuCsz6M+dJDSgtyWsFZfog6wPpaBffpsLJSYHIpgvtiaXWEbpsUZ1busWdQL?=
 =?us-ascii?Q?qDKQ6LMll5G5CseEXFOiAC+IYE4Qdsi+olLFm0YgeF3guppEphdkX0S7S1VP?=
 =?us-ascii?Q?R2g2+GXoCPmqg87pq9oY34VBZaxJLJs5nkslo6tVSYcKOg2phd8YMswwhhYj?=
 =?us-ascii?Q?D3Vp6DwwiLhDdjIxciMR10nQH3Fh8VUrWB1ZXnek8G73bqmJ8ERlDI/+KNd3?=
 =?us-ascii?Q?VzIp2doyT2sEG2tSfP4t7LnSPs1ge4J7cahq1LPB1cc+N6XityO3sniLk7fG?=
 =?us-ascii?Q?Iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d58faed2-f133-4d24-9b53-08dcf81ea3ab
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 13:36:06.2568 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EvgONrlQW38tGLCQptqcOXxtfjYo3CWgp3pBzUU7HN6W79t/+6xKMcmOIf/AuxRR3mYRpxkkZAYQWME+Im8aRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7503
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

On Mon, Oct 28, 2024 at 04:31:32PM -0700, Daniele Ceraolo Spurio wrote:
> All MTL and ARL SKUs share the same GSC FW, but the newer platforms are
> only supported in newer blobs. In particular, ARL-S is supported
> starting from 102.0.10.1878 (which is already the minimum required
> version for ARL in the code), while ARL-H and ARL-U are supported from
> 102.1.15.1926. Therefore, the driver needs to check which specific ARL
> subplatform its running on when verifying that the GSC FW is new enough
> for it.
> 
> Fixes: 2955ae8186c8 ("drm/i915: ARL requires a newer GSC firmware")
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 50 +++++++++++++++--------
>  drivers/gpu/drm/i915/i915_drv.h           |  8 +++-
>  drivers/gpu/drm/i915/intel_device_info.c  | 24 ++++++++---
>  drivers/gpu/drm/i915/intel_device_info.h  |  4 +-
>  include/drm/intel/i915_pciids.h           | 15 +++++--
>  5 files changed, 72 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> index 551b0d7974ff..5dc0ccd07636 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
> @@ -80,6 +80,7 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, s
>  	const struct intel_gsc_cpd_header_v2 *cpd_header = NULL;
>  	const struct intel_gsc_cpd_entry *cpd_entry = NULL;
>  	const struct intel_gsc_manifest_header *manifest;
> +	struct intel_uc_fw_ver min_ver = { 0 };
>  	size_t min_size = sizeof(*layout);
>  	int i;
>  
> @@ -212,33 +213,46 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw *gsc_fw, const void *data, s
>  		}
>  	}
>  
> -	if (IS_ARROWLAKE(gt->i915)) {
> +	/*
> +	 * ARL SKUs require newer firmwares, but the blob is actually common
> +	 * across all MTL and ARL SKUs, so we need to do an explicit version check
> +	 * here rather than using a separate table entry. If a too old version
> +	 * is found, then just don't use GSC rather than aborting the driver load.
> +	 * Note that the major number in the GSC FW version is used to indicate
> +	 * the platform, so we expect it to always be 102 for MTL/ARL binaries.
> +	 */
> +	if (IS_ARROWLAKE_S(gt->i915))
> +		min_ver = (struct intel_uc_fw_ver){ 102, 0, 10, 1878 };
> +	else if (IS_ARROWLAKE_H(gt->i915) || IS_ARROWLAKE_U(gt->i915))
> +		min_ver = (struct intel_uc_fw_ver){ 102, 1, 15, 1926 };

I haven't verified the version number specifically, for that I trust you to double check.

We need this patch. Please help me to remember to propagate to stable branches once this reaches
Linus tree.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +
> +	if (IS_METEORLAKE(gt->i915) && gsc->release.major != 102) {
> +		gt_info(gt, "Invalid GSC firmware for MTL/ARL, got %d.%d.%d.%d but need 102.x.x.x",
> +			gsc->release.major, gsc->release.minor,
> +			gsc->release.patch, gsc->release.build);
> +			return -EINVAL;
> +	}
> +
> +	if (min_ver.major) {
>  		bool too_old = false;
>  
> -		/*
> -		 * ARL requires a newer firmware than MTL did (102.0.10.1878) but the
> -		 * firmware is actually common. So, need to do an explicit version check
> -		 * here rather than using a separate table entry. And if the older
> -		 * MTL-only version is found, then just don't use GSC rather than aborting
> -		 * the driver load.
> -		 */
> -		if (gsc->release.major < 102) {
> +		if (gsc->release.minor < min_ver.minor) {
>  			too_old = true;
> -		} else if (gsc->release.major == 102) {
> -			if (gsc->release.minor == 0) {
> -				if (gsc->release.patch < 10) {
> +		} else if (gsc->release.minor == min_ver.minor) {
> +			if (gsc->release.patch < min_ver.patch) {
> +				too_old = true;
> +			} else if (gsc->release.patch == min_ver.patch) {
> +				if (gsc->release.build < min_ver.build)
>  					too_old = true;
> -				} else if (gsc->release.patch == 10) {
> -					if (gsc->release.build < 1878)
> -						too_old = true;
> -				}
>  			}
>  		}
>  
>  		if (too_old) {
> -			gt_info(gt, "GSC firmware too old for ARL, got %d.%d.%d.%d but need at least 102.0.10.1878",
> +			gt_info(gt, "GSC firmware too old for ARL, got %d.%d.%d.%d but need at least %d.%d.%d.%d",
>  				gsc->release.major, gsc->release.minor,
> -				gsc->release.patch, gsc->release.build);
> +				gsc->release.patch, gsc->release.build,
> +				min_ver.major, min_ver.minor,
> +				min_ver.patch, min_ver.build);
>  			return -EINVAL;
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a66e5bb078cf..b1f2183aa156 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -539,8 +539,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_LUNARLAKE(i915) (0 && i915)
>  #define IS_BATTLEMAGE(i915)  (0 && i915)
>  
> -#define IS_ARROWLAKE(i915) \
> -	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
> +#define IS_ARROWLAKE_H(i915) \
> +	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
> +#define IS_ARROWLAKE_U(i915) \
> +	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_U)
> +#define IS_ARROWLAKE_S(i915) \
> +	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_S)
>  #define IS_DG2_G10(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
>  #define IS_DG2_G11(i915) \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 3c47c625993e..467999249b9a 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -200,8 +200,16 @@ static const u16 subplatform_g12_ids[] = {
>  	INTEL_DG2_G12_IDS(ID),
>  };
>  
> -static const u16 subplatform_arl_ids[] = {
> -	INTEL_ARL_IDS(ID),
> +static const u16 subplatform_arl_h_ids[] = {
> +	INTEL_ARL_H_IDS(ID),
> +};
> +
> +static const u16 subplatform_arl_u_ids[] = {
> +	INTEL_ARL_U_IDS(ID),
> +};
> +
> +static const u16 subplatform_arl_s_ids[] = {
> +	INTEL_ARL_S_IDS(ID),
>  };
>  
>  static bool find_devid(u16 id, const u16 *p, unsigned int num)
> @@ -261,9 +269,15 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_g12_ids,
>  			      ARRAY_SIZE(subplatform_g12_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_G12);
> -	} else if (find_devid(devid, subplatform_arl_ids,
> -			      ARRAY_SIZE(subplatform_arl_ids))) {
> -		mask = BIT(INTEL_SUBPLATFORM_ARL);
> +	} else if (find_devid(devid, subplatform_arl_h_ids,
> +			      ARRAY_SIZE(subplatform_arl_h_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_ARL_H);
> +	} else if (find_devid(devid, subplatform_arl_u_ids,
> +			      ARRAY_SIZE(subplatform_arl_u_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_ARL_U);
> +	} else if (find_devid(devid, subplatform_arl_s_ids,
> +			      ARRAY_SIZE(subplatform_arl_s_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_ARL_S);
>  	}
>  
>  	GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 4f4aa4ff9963..ef84eea9ba0b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -128,7 +128,9 @@ enum intel_platform {
>  #define INTEL_SUBPLATFORM_RPLU  2
>  
>  /* MTL */
> -#define INTEL_SUBPLATFORM_ARL	0
> +#define INTEL_SUBPLATFORM_ARL_H	0
> +#define INTEL_SUBPLATFORM_ARL_U	1
> +#define INTEL_SUBPLATFORM_ARL_S	2
>  
>  enum intel_ppgtt_type {
>  	INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pciids.h
> index 6b92f8c3731b..ae64e8ec1adc 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -765,13 +765,22 @@
>  	INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
>  
>  /* ARL */
> -#define INTEL_ARL_IDS(MACRO__, ...) \
> -	MACRO__(0x7D41, ## __VA_ARGS__), \
> +#define INTEL_ARL_H_IDS(MACRO__, ...) \
>  	MACRO__(0x7D51, ## __VA_ARGS__), \
> +	MACRO__(0x7DD1, ## __VA_ARGS__)
> +
> +#define INTEL_ARL_U_IDS(MACRO__, ...) \
> +	MACRO__(0x7D41, ## __VA_ARGS__) \
> +
> +#define INTEL_ARL_S_IDS(MACRO__, ...) \
>  	MACRO__(0x7D67, ## __VA_ARGS__), \
> -	MACRO__(0x7DD1, ## __VA_ARGS__), \
>  	MACRO__(0xB640, ## __VA_ARGS__)
>  
> +#define INTEL_ARL_IDS(MACRO__, ...) \
> +	INTEL_ARL_H_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_ARL_U_IDS(MACRO__, ## __VA_ARGS__), \
> +	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
> +
>  /* MTL */
>  #define INTEL_MTL_IDS(MACRO__, ...) \
>  	MACRO__(0x7D40, ## __VA_ARGS__), \
> -- 
> 2.43.0
> 
