Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C469A92C409
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:47:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A14910E648;
	Tue,  9 Jul 2024 19:47:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FuZgC1bh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4808210E640;
 Tue,  9 Jul 2024 19:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554419; x=1752090419;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=AbMjwtRe1KuwHMsI/jj9pm3C708D0FoJ+a+FfAfZF88=;
 b=FuZgC1bha0ix8/SOGl3OccsKS7LxHbmMKazeO0Y0sK68qGvlRiEtnn0u
 jidqqyhblStnPvP6rfEeemxbyE+6Vef2OsqFTIYQnQtlMnU1OzJ/t+1Tj
 cPXYUBMkYXrC/ezpV7oLwBBFZom7Se4Lc6SAUvOoIlHzkVQ0IE9rnQ0Zt
 /D6D45pj4n7r7Rg8340z5CKvW3DNnPQANMxKV0rv7/W907BLVMcaEXaFn
 lMDq/kiTB/eSPvAEI/jAaug4caVYzsagK/v77rRH77noQjIVNk6QJ3kM4
 kcU5QeP75nB3MKZySLZpVWqiTwpxi0+hVV0xGvebs//+CqSdxB55UnI8m g==;
X-CSE-ConnectionGUID: 1M+j564HRhiVZvFSM48mvA==
X-CSE-MsgGUID: FMOoqdPIRXqseKu2OLr9vA==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17948275"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17948275"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:46:58 -0700
X-CSE-ConnectionGUID: hoU0xQdGSwOocx4wRGVaDw==
X-CSE-MsgGUID: SyV5dqRSQ0eSd7OGD33EiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="47963938"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:46:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:46:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:46:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:46:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJugH4TFPMl4DvGdLhFuCFnNzCJAQr6zADLl1367/YGmSVMRQmla9138OFKO+6zPagL7mx88hsGPV/DhkZB641945Iah5b9far67PCEgWlKcksrBYmuy1bjgYM0Pa4iTki3AT5R+488s3Dr3Z1fcAvPoUeRoKnR8Es0dyqjjwImGkZkNFB4YH4s+STfiY16RJPedIlse48E98609L+1BF4g8kLFfwUm5QFuiVdjMalvBISOYccZ2/zjatKBXR+/KaK2pA2evD1RDulV37lxXXoRiUxiKFW1owGamzourAbABmQqOOwFIz5lb45uOmDuSKMMIMKu2kuA5cgR9ZFHOCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0jENYINDyPLSe5+/UBERJJHBk3IKaD9+cafVZkrXmEE=;
 b=jx2/VOydyhY/ohYB58xwxLHV+5gjVTiutRQb/XrOUOExCne+oLtiLd55EcD3k5NuMBbxdOoh31xz/YL/YBwnQSB5kIOQWwhWRqBhUAuIukWh8Tp8bPUKtYYkalO6Jb8wvCbWBsVnGY2YIfCv4V5k4qxHiYvVmG9x39o6QTH5JThSzcTIfA5FG7fGFF04mMwnkuOZRkullb9cGZGYqD+3EyJlbmqblSa/elvwJcaRKAJ493Jw9E/1DOUmkgnAC4IQ3SU+tNssl2Faw71dLt9K2optL1GexRg7Id9EkfgCHo6BrcPc9XBRNoCPbj92tMtNc6GwlxmpAgvU6GejT/h3iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 CY5PR11MB6305.namprd11.prod.outlook.com (2603:10b6:930:23::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.36; Tue, 9 Jul 2024 19:46:41 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:46:40 +0000
Date: Tue, 9 Jul 2024 15:46:37 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 01/20] drm/i915/fbc: Extract intel_fbc_has_fences()
Message-ID: <Zo2TnYsLgOFWHIJm@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR13CA0194.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::19) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|CY5PR11MB6305:EE_
X-MS-Office365-Filtering-Correlation-Id: 9937d93a-75d5-4c68-f72f-08dca04fda46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?TlcSFzMRHBwpsn9jLoCof6AYqohNLEeqlwvEOyiXk0hrtX5U4gZL4i+6vX?=
 =?iso-8859-1?Q?KJkdruYXgB+VbH1jD96/TTYDCX0ztA1t7XhTFUsoeh2LmiitKkoRamnQ3V?=
 =?iso-8859-1?Q?T6Oy2h65we+u5KyS8McY70WA6j/O3IIbaCcsG8tkp+z4HYKEYVl5zqGXWQ?=
 =?iso-8859-1?Q?tSvnAN5qfkY8/dgUK+SkMs2e7RrBGxBNZ5lZv03oXbygQgBqOPgpVyML51?=
 =?iso-8859-1?Q?D2xV7A+t1TMQ7IRg/MbbryDIov6cJDkpv6ZQsfcvBlHL29qjKc1dnkIHS+?=
 =?iso-8859-1?Q?DnXiPEvduVwIRUgPY+pfd88wju+6eoiu8FFl+JUDzwvAJ//WvJzIq7TzYV?=
 =?iso-8859-1?Q?F0N9/Ph6NcAvw5clIq+DePpBn1rPFgBsaFBzIbYhcH/kueHkalaDnpCHZj?=
 =?iso-8859-1?Q?CF+B+Rzk7DL5gNyJv4P0TXEYPtDnZf6PkaFgb9BLnXkGfgM+4jYPQHRA2f?=
 =?iso-8859-1?Q?S3sNOUNh91kt/0am6S+pchZoXhLxVRCbCoPfBaRhYq1mrvfl6pYUQ+5qC8?=
 =?iso-8859-1?Q?OBUkwJhnHPUQVa3O5J3ioACRtsDRA+4K0EBNpTXYplUNcewSmFAcPyxoBn?=
 =?iso-8859-1?Q?u2iZCn5ktAf/VQHtE2WHHPACLuM78pWNIGZlT0ZXSvxa35OjzhxUxP88j3?=
 =?iso-8859-1?Q?7ijgmZOMiGz9oRKvY0L8A0tJ1Mj4RAfe53uYshLYcHMkcT4TQgiay+7nRp?=
 =?iso-8859-1?Q?ZL/C5VdEb7yer0o+xVYWX5EtNFj3RJisx8Mevs/GRXZsqN3j3nqm0eQBhZ?=
 =?iso-8859-1?Q?MmBIF+sHzOQq2G065PxnLYzL4eYo9m7NVR29tgppd7o93zz+ObFluFB8LG?=
 =?iso-8859-1?Q?gpj2T78REQk+VGLHn2oc2Dpxc5PfjHbwebH9yLmPUC99IclcHwD/GRDR9q?=
 =?iso-8859-1?Q?uygQKwtk8O3s6pMygTQuUYag9e63vXVAPdYWLsSUCHPxmLQ+b56983AWn0?=
 =?iso-8859-1?Q?i+ZGJj30Zmt3AgRCwsScLm7mPtuyws5D1+p9xfNEbQUdTcPayTjAruqL1G?=
 =?iso-8859-1?Q?4hxKlZDmVzEa8LtbfOjK0ZNkqDN+ceJ/j7F51O29R8lAYCCVj/C549FR0k?=
 =?iso-8859-1?Q?ZPpKXe1RriWdzVirXjmpT1QsTPsjl42zDnv4+pySCIshgYVGwSYaWUM3gB?=
 =?iso-8859-1?Q?xnFCvrYt6bP5P5b7P7qhQ+F+foY3JZUrEF72ituNqIjSsBql0EbvunnIyv?=
 =?iso-8859-1?Q?y3FQITOKUGOuU3XVUBGpInJo3m3qqf4rPYLhH2G4+yh57e+1OmdfZcaIcw?=
 =?iso-8859-1?Q?3nf2/lT+Ioy081JfPVif6IugB7WeySkYX3+RHgai3pZninW9YyV757aoGi?=
 =?iso-8859-1?Q?3Xn5rWI5XBU5joMQ9dX/Fvl/kx6UHpJPub32FToUIVPsHFELF+LR0KW8pt?=
 =?iso-8859-1?Q?7QwJJHlrsU4lNT1FZ23x7OYCSclG0JvQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?DERsS/FeeUL/6u7kFPrNIbwrH3PZR5/L+g1s1Lk74n+rNvpKexjq7OC0on?=
 =?iso-8859-1?Q?ZWIaQA9ocNgTEZcMQ+Sy2W4qnqosQMV6XLxGxBuDyCrIvYPnXQTO3cDv9N?=
 =?iso-8859-1?Q?OYSVnoOS0IXA3+fQlITiaRwkAA5amO40U3I29p5dmUBGtLYVSub2fiAXOE?=
 =?iso-8859-1?Q?S0/3qhdXyEqDctGg4mMxpU0FRAFvqn/zgaZxb/wPiBRY01WXnHSBRLZM2p?=
 =?iso-8859-1?Q?r2VMkX4J6bBB4YKTk5nd62T57GdcAIeKSU2puNntoM+L0O/gYrLomYqTyi?=
 =?iso-8859-1?Q?/06AsXo6pFwO8LZeEtl4HzGHnPTRYoABYeVG9MBx7DF2zoGD8H2bEHZne3?=
 =?iso-8859-1?Q?vwcKI5s5pkcBQjFpTZpwL8C5/OrjJeasHFK/40rbgc7TEaQCfUMbR//sp1?=
 =?iso-8859-1?Q?RuzHflIuAiporveaokRQ1UMpreUgQi0ZX2y/1FSpAg8yCcp8aEclwqFacF?=
 =?iso-8859-1?Q?9wWN45sQMLxAUVfrrmYEb8lU1Nu0eT8Vxgf25W6imuQixu3T9OoR7rUwQG?=
 =?iso-8859-1?Q?SRPkJmza0rPxFXxx3bronvTbQEb6DrxhjmH/EhGe0p7aVf4U0UM/sXainL?=
 =?iso-8859-1?Q?+vkhrdb/yDq10J8sVIt+CvQokvL28Agp5x5gtqDaHwMPzWnnsuNzkiJbzu?=
 =?iso-8859-1?Q?UBPpLBw5Q5f9CGRQ/I36WeeIxw3Cf2IhlxkWRzKBMIfJ5zWK2bkmZbDgpD?=
 =?iso-8859-1?Q?ugvWNRR44S877sKyIAwatOkAqiyfgeBNRMPfvg5LFbBTXdALfnysSVAclD?=
 =?iso-8859-1?Q?SN6N1CLsKwE0y1iXMofOBtKxf7ssaCkqU0qL5Z3M6u4AtiWIzCHVQImegk?=
 =?iso-8859-1?Q?TZYPAavapFiAI821QGp5wr/Z1BvXfs2PYMpQy7I5RInAr0tzri1/RyBsGJ?=
 =?iso-8859-1?Q?ByGpuf3nGPN8Wc902kAoiIcvq+l1tHRGa1Ej60wm6gEFEEUmFF83CmYl8g?=
 =?iso-8859-1?Q?gMPVC/gYlQdZNfgv9mTeze8xgb4qPENyrf06HJju3khbFyWLrZ4Gk6gEq7?=
 =?iso-8859-1?Q?2vyYtoGRZ/KMgYH3kE0+d25vWaRnCcsNr9Q+dHhOWwgHhs2AYatezJYXN/?=
 =?iso-8859-1?Q?boknAjq1s7Mbh3yMFt7uFIW+ta2qD/0yRbkAaii7BxwhYswZSsNe0T/5fw?=
 =?iso-8859-1?Q?g4KVOk3IgEr6wjeR4QijHWRx73RBZJxbwu/mXTCTUvvAoI/YgWBnwyQYZd?=
 =?iso-8859-1?Q?KDF7bafM46LY2GkNrf9SbpRhFelPfV2vCtQc6mB6XwedcZhLpZ6+Mmt1Lc?=
 =?iso-8859-1?Q?hcA3TSHhAOwf4pRiYpGRXhTNAldfh4ahMYiZp+QAvlIUObZIpv353SmeuA?=
 =?iso-8859-1?Q?3Qsymsb1Q8JwfBLtZ2MB2RK5k+W0+pRpBIJ5Ao9E0FCywOq9Ntd0Xdv0XA?=
 =?iso-8859-1?Q?R4nhHRPG0vR1TAKDDP+AulNCibkSdU3XCFH71VyIPTUKmVyiufkZl1H5Gd?=
 =?iso-8859-1?Q?meCqv54FTbVla5ypJQ15DsmJOrUFQGEU2M/PUaGwt1UZNZty01PrZtIL3y?=
 =?iso-8859-1?Q?x3YH3IkEPfYdbSDrZ8kV9NwiQLRowl66qXqidrEUp1Mtk2AqMHdOGTV81A?=
 =?iso-8859-1?Q?p5p85xk8j4rrfqbThUNV2lFTCzL2ERvd57KrK+rs06m9oqSRBGgHoER7Vk?=
 =?iso-8859-1?Q?S4riPdo5doSNKL0OyjQIDR+jTgB0m4SFwdb8sOyUgDQU4yay30Igk1Cw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9937d93a-75d5-4c68-f72f-08dca04fda46
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:46:40.9438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QDpSzypUrBYOocCY6wZTf7/gXefUfrITGK6SxN8lyEcN7Sy7dfPvxZrdQduZgBZYNpyfCSGu1QE8XoQPiC1bew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6305
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

On Fri, Jul 05, 2024 at 05:52:35PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Pull the "do we have fences?" check into a single helper in the FBC
> code. Avoids having to call to outside the display code in multiple
> places for this.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 8488f82143a4..ba9820d4b78f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -229,6 +229,11 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
>  	return 0;
>  }
>  
> +static bool intel_fbc_has_fences(struct drm_i915_private *i915)
> +{
> +	return intel_gt_support_legacy_fencing(to_gt(i915));
> +}
> +
>  static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> @@ -620,7 +625,7 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
>  	else if (DISPLAY_VER(i915) == 9)
>  		skl_fbc_program_cfb_stride(fbc);
>  
> -	if (intel_gt_support_legacy_fencing(to_gt(i915)))
> +	if (intel_fbc_has_fences(i915))
>  		snb_fbc_program_fence(fbc);
>  
>  	/* wa_14019417088 Alternative WA*/
> @@ -1154,7 +1159,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  	fbc_state->fence_y_offset = intel_plane_fence_y_offset(plane_state);
>  
>  	drm_WARN_ON(&i915->drm, plane_state->flags & PLANE_HAS_FENCE &&
> -		    !intel_gt_support_legacy_fencing(to_gt(i915)));
> +		    !intel_fbc_has_fences(i915));
>  
>  	if (plane_state->flags & PLANE_HAS_FENCE)
>  		fbc_state->fence_id =  i915_vma_fence_id(plane_state->ggtt_vma);
> -- 
> 2.44.2
> 
