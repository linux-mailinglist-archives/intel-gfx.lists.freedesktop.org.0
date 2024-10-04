Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 496CE98FD6B
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 08:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFDC10E845;
	Fri,  4 Oct 2024 06:38:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aMZUVEI2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F9FF10E845;
 Fri,  4 Oct 2024 06:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728023920; x=1759559920;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HebdxJ5C+pWUxFxb6d8trU0fPbL7VR65RDjLVt5DAoM=;
 b=aMZUVEI2KDhAKk30Ynt5VlzQgC7AUUx1uEfDwcowqzMtkPk89gBlEpF6
 u3eDJSsvfzdl0iJC6t8HOSL1wVm1kXgAxeRnMac9Sjsnr7oKXhnXCN2Ar
 tEyzSnyRobnRNz0lmLgMsg31P6KEQrgkd2MwHxpkUzFwESi8J9J9PFSnP
 0cqv7H0FDosWrv9bT2W5dISC+qsScFNG1y76rZvsxr6WKaOARLRVEyy35
 xEfqAJwO+cBELNqpoHYZBonPYmsVY9eeVQCLULvePm+SNTHftjAB9TD/M
 eczS48icyf/K1VJDTVEHt1uJs5kENbW7yq4JnhN95VYvS26W8lW/riP4p A==;
X-CSE-ConnectionGUID: ZCRDX10eT6e66T4/uZncjw==
X-CSE-MsgGUID: NebclQDMRE+82gCUX7me+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27367328"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="27367328"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:38:40 -0700
X-CSE-ConnectionGUID: F/ckZJM+RK2ghVYezkeXPA==
X-CSE-MsgGUID: +Y6F9CShQ7iO0Vl13VraGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="112067373"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 23:38:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:38:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:38:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 23:38:39 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 23:38:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P4C33oKaj23od8vtP7KmA3fVvawiunEZ0ntTAv+JNg/zWkO998oISIUiPLUnxNLAK0Pl4OxCL7Hki20nDWXCx+KXclgH3VXh1RxkP2Ub38DyYp6M/t+gi+me2wY5ai+Ls+nPeF+qNQfJE6yUS7eMHInaLE+eaLmBvsGx7i5fOTITpP2yrDsAHFZkg20Rm7kZzeeM3qU1lzz7Qh8dkdtP44qH3UhXOoT05/iilfMKUOHV6tm/ad9arcmHXsZ160nlqrBSDvIUZdt6UqelQTCWWE2Q1LpfB7o1/3KoHX2zr5WczBwr8gv8w/B7ekg5KgVRwxSzo+Oh9pz2yeaMZSaQUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WBFjtPzgve1tuK60kfvI8dqercTr5QWItzo+bx05UgU=;
 b=svbL4JiM8kU0RRFbpZfLnMXxBLgwNywvR7uPbVzuF8WO3JTuHaT8zdn+h9KPiMGv+YBQEFUB1NwIsNaDNKzJx6ROy7+CtFlvrDakUJ7308x1lG12ZE7dDia5+ZQk7STIHavdq/OWmFqfDe3f9B/0r/iPkyT58H6e/GI4lhq91SL2BYXvirqKCvin3Pnjt6cXJdKDeiTNE/z7pfgAB2RcjJnqCoaqjcTSeN+Eoe8NE5IGPeLioBi0zYXloUQBk16Nt9frVEkGrYg/dXNDdjODX1+mbalx7mPBCGAq0K7869mFis9tM+FHMNChzQqpTXjqiSPw5OAcHjPrlhZHpyPQDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH0PR11MB5061.namprd11.prod.outlook.com (2603:10b6:510:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 06:38:32 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.8005.024; Fri, 4 Oct 2024
 06:38:32 +0000
Date: Fri, 4 Oct 2024 06:38:22 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 10/12] drm/xe: Make xe_ggtt_pt_ops private
Message-ID: <Zv+NXmNlAKlPaUcu@DUT025-TGLU.fm.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-11-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-11-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: BY3PR10CA0003.namprd10.prod.outlook.com
 (2603:10b6:a03:255::8) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH0PR11MB5061:EE_
X-MS-Office365-Filtering-Correlation-Id: d4004b27-4dda-4c7c-cde7-08dce43f2a2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+1f13XLegP/S0mPGhuCqjhaSa25lcG4tSAn9itjzvdi+2lvhx/fl9oTtn0OC?=
 =?us-ascii?Q?xjKGRh1Awk14hbcgXA8xhmxxEbJYE/VjmtdesJvCxZDVxU2H5wir/NU+Zvv1?=
 =?us-ascii?Q?QGYBiXBWnt44u41MYyLfiEmQTZ4yaDqXEbaB8BXpjBBbMjcNlVoLmnlJu8Rh?=
 =?us-ascii?Q?awQ1vlPE6BBurgEkIks3vkCxjDMzWrTK7qWrgMOu2hSEaFkdiVeZokDcgn+1?=
 =?us-ascii?Q?qugl93Ui54z/10UrMZIyJMIACi6ouuEKm5z0+F6JZxAKUyIJyjGTSaDhQpfe?=
 =?us-ascii?Q?b9drhAxw4aqCLNAws2ARbpnwetM3Iw4JB+M0Drqqi7hz7mTD46mnU/0gy30l?=
 =?us-ascii?Q?cseTBnvcB7VhlfTmFkXQMp17sR55jbiHULkdW8UvQgrknF/MIpVVE/vQc4Bw?=
 =?us-ascii?Q?QyzorXvI2eOnBvpyFWpAhdxN1DUrWef4V7zTRH6j7Jzc9IDMxdmCz8+FB6br?=
 =?us-ascii?Q?/Qz1rmaEs+k7DQI0PaqXMFL8S59hPdFlhsOQX2yTmenOiNm4sQ2cSpLqMmFh?=
 =?us-ascii?Q?REKVRHByCHfGwlsjWN54PPHvnhoWUak41+EN8MdryHLFjntGCyaLXVCNFs9J?=
 =?us-ascii?Q?5z7lPrUcZmvduQtMVpftmWAYMlJe0ev+rkxIgo2zY4uGI6eRFeAGfgdCl3pw?=
 =?us-ascii?Q?3+Ie/oK5ip7ddLZOYPGrSefzzryJR7ZWU6rgvvA36dJ0B2OUT774ivgGhViJ?=
 =?us-ascii?Q?bclW0QFUvOZLvybcZz/84i1eYBLtXFed8wPY2SKvm837vqrJmwfXS/6LXJIl?=
 =?us-ascii?Q?O7GoZVi3yXnuSY7U9irlCNbr4847nI7ty+2gUWXXYs2eX5MqvzVwRNy1WpKg?=
 =?us-ascii?Q?JtHwEWMTnkhWf+JQBLapoQIxne6KmATNXA7NfIclBk5o1qznCxKKCJbwDTRa?=
 =?us-ascii?Q?jk78xWozf3k0H03a5wEWYssYY/05+IXQGc8RnEOd0dVNaiyAqMnMHBmX6DrY?=
 =?us-ascii?Q?dOb8+o/FAx3sZgoX6MBliHLA+FF7IcCsBVr7V5P6/D5QInz0l+rWyFNDoksv?=
 =?us-ascii?Q?zabtxeftW624Cxs6mKUJqEa6pRDtGoFDmlqVDzwjbEHZGaQvt2EPhTAOwcDw?=
 =?us-ascii?Q?R4G9wSP4g0LhwYzTEdV6OlAlYLVg5ZHlui9PeKh7fDVlPRuQAZDldI8ekY3e?=
 =?us-ascii?Q?TtapxgtKVqnihv7ZRV+J/eMW9jSaN0FtNfy7sYokXf6a0HajH0PWuAxyDURf?=
 =?us-ascii?Q?7Wm0D+NEG2VknLjTvMyiyfZLTgzPW7T5a1nVrYe/V9OrTKx2CAU7H/AbswwB?=
 =?us-ascii?Q?3gifk5pLSOlp5XMIv14rmV78gWLlnB4RNE7ijPrWDQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h3cZdBpG9OzyVH11F9rm38own5i4DiBT/g/t2oiXEFOz4Y67AnPpzSHAJhq1?=
 =?us-ascii?Q?FFYp/wJ5OEYbboWykXLziDSY/BPG+0qgNCJFI+vtMZnsnIlTqBkqAYDAp8YH?=
 =?us-ascii?Q?aYVTpMAfe+9955rUt0Ni0qNy1bUpHJvjSLvRGnHu3wuRDi+kYWVIISUctrJ/?=
 =?us-ascii?Q?XGQWwmJLBNB3NBZQ+wa3KCjQY/zUEuNSAEFsnX7+eiIeWHdg13osY6Bvo1wM?=
 =?us-ascii?Q?uo/eSGFbW4Y0wbIEQ1uVeeXjG034vdYjikKukQ1zkA6EiNhaoT2GrgARxIP8?=
 =?us-ascii?Q?v6CadKBVdeBsL4fWJYvnCnBSQTxlKudsxE6C5GWFf/uvGgcO1hQuiEi6RpD/?=
 =?us-ascii?Q?L5uf8WYAO1OTscvJV6WEVOeQGuwgapu7pSfM6z7tbmJ3a5I6PfGjHhaLOxiE?=
 =?us-ascii?Q?eL66z+1uaKreVDb+ht95bSwCOZsmQKLijOU+qcXBqH63LklV5Cv2IJ0DnWhm?=
 =?us-ascii?Q?pETrpxa5wf4VjutCOjzxvyme3Qom6UsiqYNLe1/pHIEvTgB0pl4kSmNcd3Uu?=
 =?us-ascii?Q?RvkdKfk01/22eTFChF2HHslTjfFTz8jAMNZ4YYYCBObAjG+CEp39YBh6YbS5?=
 =?us-ascii?Q?U6tD8x+Pwsih8JHmP6XgU7iWtcXpAgQ8VPsvSfbFLC0xY68y7b/9oqUWN4M3?=
 =?us-ascii?Q?Xt17Zxn81L9oMAqUAG/Q0Y/OqSAfGjIKNy8oVgmJh0tXUpD4LJ79yIcM7mJ+?=
 =?us-ascii?Q?JVhobSdsZJ1J2bSqZr+5IqEwE+dUtapPJJGiSB3fbHOROjG9cRlLvzCvfFXM?=
 =?us-ascii?Q?cE3eQJplaBFnVv1v2modA4wuXBKhrzAvTRddikW9xK+SBv3oJSHnzt2nDgTf?=
 =?us-ascii?Q?arAERwgbYENWjwI0vMLsCSJLMnQFsm7BpPVhpvEzsK6XJq1LBB5qOJC/1pP3?=
 =?us-ascii?Q?B2YDp7WWFR2U+cATDIoJy+V97bsPR2SnsugyaorEOnq2399x9PBCKzfazR5k?=
 =?us-ascii?Q?V8y4cacm6PcIccDAGpm8mFy+3ofN/CdNVWVDlqaFVlcBJ0zwf47G2fDpzHFe?=
 =?us-ascii?Q?XSrVfnv79p1qpxuhvpRLbdyCWLzp5A/FUt9g7Voi6JZHTATGaseWS7KkwuEl?=
 =?us-ascii?Q?aqT4M/wI9CrvO89byJEAssOHVjGyiaBidQ5G5byEzrOq6zQxuNvYcwMUHw29?=
 =?us-ascii?Q?XZ42xaPTvbipMn6mNMxzu4KTM17lq6bELaznewWHAZ7q3Bl5zBGC9TXSzHss?=
 =?us-ascii?Q?8C2byh4nVf++pIGCrXwm5NR3Jef+bUyB11wEAxNlpsNEVI/ijz2aFccyQjb1?=
 =?us-ascii?Q?OkF3oKZ0Y8nyjwWBAubgEzQhwU3HnWvAnsrETgK013i+lcxDjj3PYjEEf7ih?=
 =?us-ascii?Q?zp4saqky2JFC7tY8VAKf+MrJMQnNaUZgAmI/HSzEoLVVIKrIfaJ7OuigTVHl?=
 =?us-ascii?Q?RYjbS2rNZfMoQLAr9GVWZNyTvfyPqbmGgJAi9uw3ryj9leAzYCIrKamRkKLA?=
 =?us-ascii?Q?KmfobQVagRnD64rPIcVWPsdGDSdMiFA4sL++k/9oKKTuMgIaFNqtmnM0Xocl?=
 =?us-ascii?Q?tAcluIG+4tQ7q8Rt57W/cGQ3Beu+5tlCMu6K/QK9svJtCbikECQxXj/erxC6?=
 =?us-ascii?Q?WPQtyf7ImODNDqJ5GLFaADlsnRnn2GVdw7LSQnn3CRGNYfLJXxQcXGwwDeLi?=
 =?us-ascii?Q?vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4004b27-4dda-4c7c-cde7-08dce43f2a2a
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 06:38:32.2112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3p0DIf8UdI3OvMAAlRpaP7DVWdVb7/MLNcbSRK3TEhLen9iB1MPmQ8cZ2JLZQmE8CMB/XYW2MToHesnqh1t7UA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5061
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

On Thu, Oct 03, 2024 at 05:44:19PM +0200, Maarten Lankhorst wrote:
> The only user outside xe_ggtt.c is fb pinning, which makes sense as
> all the operations it performs can be considered part of GGTT.
> 
> We could move this to xe_ggtt.c, but lets keep it inside display for
> now.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 22 ++++++++++++----------
>  drivers/gpu/drm/xe/xe_ggtt.c           | 24 ++++++++++++++++++++++++
>  drivers/gpu/drm/xe/xe_ggtt.h           |  2 ++
>  drivers/gpu/drm/xe/xe_ggtt_types.h     | 13 ++-----------
>  4 files changed, 40 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index bddd526b33297..0ae5d917f20fe 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -20,6 +20,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
>  {
>  	struct xe_device *xe = xe_bo_device(bo);
>  	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
> +	xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
>  	u32 column, row;
>  
>  	/* TODO: Maybe rewrite so we can traverse the bo addresses sequentially,
> @@ -30,8 +31,8 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
>  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>  
>  		for (row = 0; row < height; row++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> -							      xe->pat.idx[XE_CACHE_NONE]);
> +			u64 pte = pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +						xe->pat.idx[XE_CACHE_NONE]);
>  
>  			iosys_map_wr(map, *dpt_ofs, u64, pte);
>  			*dpt_ofs += 8;
> @@ -53,8 +54,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
>  {
>  	struct xe_device *xe = xe_bo_device(bo);
>  	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
> -	u64 (*pte_encode_bo)(struct xe_bo *bo, u64 bo_offset, u16 pat_index)
> -		= ggtt->pt_ops->pte_encode_bo;
> +	xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
>  	u32 column, row;
>  
>  	for (row = 0; row < height; row++) {
> @@ -120,11 +120,12 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
>  		return PTR_ERR(dpt);
>  
>  	if (view->type == I915_GTT_VIEW_NORMAL) {
> +		xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
>  		u32 x;
>  
>  		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * XE_PAGE_SIZE,
> -							      xe->pat.idx[XE_CACHE_NONE]);
> +			u64 pte = pte_encode_bo(bo, x * XE_PAGE_SIZE,
> +						xe->pat.idx[XE_CACHE_NONE]);
>  
>  			iosys_map_wr(&dpt->vmap, x * 8, u64, pte);
>  		}
> @@ -163,14 +164,15 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
>  		   u32 width, u32 height, u32 src_stride, u32 dst_stride)
>  {
>  	struct xe_device *xe = xe_bo_device(bo);
> +	xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
>  	u32 column, row;
>  
>  	for (column = 0; column < width; column++) {
>  		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>  
>  		for (row = 0; row < height; row++) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> -							      xe->pat.idx[XE_CACHE_NONE]);
> +			u64 pte = pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
> +						xe->pat.idx[XE_CACHE_NONE]);
>  
>  			xe_ggtt_write_pte(ggtt, *ggtt_ofs, pte);
>  			*ggtt_ofs += XE_PAGE_SIZE;
> @@ -209,6 +211,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  		vma->node = bo->ggtt_node;
>  	} else if (view->type == I915_GTT_VIEW_NORMAL) {
>  		u32 x, size = bo->ttm.base.size;
> +		xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
>  
>  		vma->node = xe_ggtt_node_init(ggtt);
>  		if (IS_ERR(vma->node)) {
> @@ -223,8 +226,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  		}
>  
>  		for (x = 0; x < size; x += XE_PAGE_SIZE) {
> -			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x,
> -							      xe->pat.idx[XE_CACHE_NONE]);
> +			u64 pte = pte_encode_bo(bo, x, xe->pat.idx[XE_CACHE_NONE]);
>  
>  			xe_ggtt_write_pte(ggtt, vma->node->base.start + x, pte);
>  		}
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 6945fbfc555ce..db6a761398064 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -63,6 +63,18 @@
>   * give us the correct placement for free.
>   */
>  
> +/**
> + * struct xe_ggtt_pt_ops - GGTT Page table operations
> + * Which can vary from platform to platform.
> + */
> +struct xe_ggtt_pt_ops {
> +	/** @pte_encode_bo: Encode PTE address for a given BO */
> +	xe_ggtt_pte_encode_bo_fn pte_encode_bo;
> +	/** @ggtt_set_pte: Directly write into GGTT's PTE */
> +	void (*ggtt_set_pte)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
> +};
> +
> +
>  static u64 xelp_ggtt_pte_encode_bo(struct xe_bo *bo, u64 bo_offset,
>  				   u16 pat_index)
>  {
> @@ -880,3 +892,15 @@ void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte)
>  {
>  	return ggtt->pt_ops->ggtt_set_pte(ggtt, offset, pte);
>  }
> +
> +/**
> + * xe_ggtt_write_pte - Write a PTE to the GGTT
> + * @ggtt: &xe_ggtt
> + * @offset: the offset for which the mapping should be written.
> + *
> + * Used by display for DPT and GGTT paths to enccode BO's.
> + */
> +xe_ggtt_pte_encode_bo_fn xe_ggtt_get_encode_pte_bo_fn(struct xe_ggtt *ggtt)
> +{
> +	return ggtt->pt_ops->pte_encode_bo;
> +}
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
> index f83e5af0400e9..0c63cfa083c03 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt.h
> @@ -48,6 +48,8 @@ void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
>  #endif
>  
>  u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset);
> +
> +xe_ggtt_pte_encode_bo_fn xe_ggtt_get_encode_pte_bo_fn(struct xe_ggtt *ggtt);
>  void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte);
>  
>  #endif
> diff --git a/drivers/gpu/drm/xe/xe_ggtt_types.h b/drivers/gpu/drm/xe/xe_ggtt_types.h
> index cb02b7994a9ac..c142ff59c4504 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt_types.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt_types.h
> @@ -13,6 +13,8 @@
>  struct xe_bo;
>  struct xe_gt;
>  
> +typedef u64 (*xe_ggtt_pte_encode_bo_fn)(struct xe_bo *bo, u64 bo_offset, u16 pat_index);
> +
>  /**
>   * struct xe_ggtt - Main GGTT struct
>   *
> @@ -69,15 +71,4 @@ struct xe_ggtt_node {
>  	bool invalidate_on_remove;
>  };
>  
> -/**
> - * struct xe_ggtt_pt_ops - GGTT Page table operations
> - * Which can vary from platform to platform.
> - */
> -struct xe_ggtt_pt_ops {
> -	/** @pte_encode_bo: Encode PTE address for a given BO */
> -	u64 (*pte_encode_bo)(struct xe_bo *bo, u64 bo_offset, u16 pat_index);
> -	/** @ggtt_set_pte: Directly write into GGTT's PTE */
> -	void (*ggtt_set_pte)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
> -};
> -
>  #endif
> -- 
> 2.45.2
> 
