Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 548D58D617C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8288F10E340;
	Fri, 31 May 2024 12:13:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hDyQPLNY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E5610E340
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 12:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157620; x=1748693620;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=EmkoNnKxCnXoHdxlNYEXWEVGdvl5HKc+1npWVMshy+E=;
 b=hDyQPLNYJVso+I72qHrXHM3Pb4lA2AOpLeaLAVVHnc/CSBnk9kfXVyos
 pMbt0pzFpxBXjTJGdMg4NelqIiQbVP8eg4BsRbQd6JTOu2aqmPEz9vlSS
 7LVD7Xp19K/WT938ETNInWeYYvyVw/hdXrLWX9zuzm2d0LvjgvgzeFvYI
 N9KTHAReJ2KM7CGQSlYjWInvhTxgcWopwuV9dxZbG1PURQRnlDx//SzMu
 R6aZgxslwHwGRGFhsdfX5HNewJTKglepG6+nthFNaqI50UGuzGpiWgTpW
 n1pqDTUZX9QB8ZlPtafbv6S1q3ZW8NTJz/LL29GYM+ba5wpatS+Z6IVKs A==;
X-CSE-ConnectionGUID: w9lB6DmJTPCo5gOvKEKjtw==
X-CSE-MsgGUID: VmazU78OT/CTlctc8+VqRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="13890931"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="13890931"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:13:39 -0700
X-CSE-ConnectionGUID: As1oiNZUR6W6kpOeywFmKQ==
X-CSE-MsgGUID: P22xYLm8TXa+YxqzU/xRkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36734511"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 05:13:39 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:13:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 05:13:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 05:13:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fa3kdh40HHGOLnHYz39yYrvAkrWPh06MvRe8Lko+75wDVvaqsKbeTtdof1QtRhb87VcmW1SKVC4RyF74K7jLlaLZBkDq1rUImzflPRFPpFIdwlioJqa3ZOP9rPDXFvJHR+ESqXCAmKIEulbDSSNb/qNGapWbzmZKKpYsjvVZrGVOYAQDl5+XEeHMBDpzRKZGIrkhLcas6w9ipuK6m5TlAdHeLb1RKl5R0kafMkp57ihi6HpWQcJXz7flvJCqd3xU3W+2QPhIB/k/U8ywCBWc4fjG3N0g6JWWa3KiLGYCrPtIkVHeX7YnQ3UVV7hrc6TYfCAAxwMmGSSKtNLcTAmf2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y3XdlEVroG5r6TdeQBAAh29XYWOtiOK2PXFqG5WOZic=;
 b=n3Yy+J/6epvocaV8RM4WFoQXZu81g4OrMsP9NJ7JwmIRATRrnqkhT8O5v5XrRrsBdxN1v209fNZ9KoWqzWv8LKOR26zHfMQAfQDKGZJ7D49KsYHnZbragSFs+/dag7iRVtXV5kdzkGR/6vtzN6EHc6kStRYwDd7p4DWQ4cT8e1ZxgqbU/lz0Wzqe5b948OX8aDigsRyh5Uv1Oi0/eaJJyc9coEdWqOEmA0P8iYXND/mLXsMq+rjC5zCYseeqNerxao8UiCqK6WYl68g6892Q7QClf+Qo9btynIanXhMbsihuphWIXZksBikQHxoCBzvuOIFfD6u+1x/Pemsve8Olyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 31 May
 2024 12:13:36 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 12:13:36 +0000
Date: Fri, 31 May 2024 08:13:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 0/4] drm/i915/dsb: A bit of polish
Message-ID: <Zlm-7BPAWNN7fkvb@intel.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8319:EE_
X-MS-Office365-Filtering-Correlation-Id: c863d5d8-8548-4e66-3960-08dc816b190d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?TYsBeoMsN/3zQNOJNxutY7NwTcE07UfIU6kGUuOJXYzBjb9GEh0uCarjXr?=
 =?iso-8859-1?Q?9FLj3K1XZUHRJL4I266ZJwq2aBPKRnKjboMGW3HTP450K+2gdPOsNfLPad?=
 =?iso-8859-1?Q?jtJB6ecwuw1HdWcC9NBf31gmdfj++hVmR1jkgUF/T5qeGg23WyHeAhHgER?=
 =?iso-8859-1?Q?e5NN8tQOxQEnkf7hqd63YN3v/wppVHkrOm4WoJA+l5CHl27OZwZN/5i9up?=
 =?iso-8859-1?Q?IxdHoKGp7paBOq2sDaqwslHHJeKlaMSX4yOwQs0AKGLI+lDsvge4GL5oQu?=
 =?iso-8859-1?Q?SlCxWOU3uzvBzvocxTUToFPBrjoP7gT37ecK7OZKpGYjb3AnfnpUuen/Db?=
 =?iso-8859-1?Q?5gdtfzBM/CFJJ1kgOcnNqzt4IBTi9u+HrSurg/4iIWUpyFOYviHkSjWrTN?=
 =?iso-8859-1?Q?dnolDoaDA17EJoKMfxw6N5OyPhuuVXVwqaZNfNhVWfiQJgTtho7BEwK4RP?=
 =?iso-8859-1?Q?1UcsWmdqhwZEF0HTOhpWWJd8m/azX5y1c/xpudw30Rp8qgFKD1sLJe/X2l?=
 =?iso-8859-1?Q?TnLHijmLg66cVLtxqxIblgb1GkCjc8KKa0ziNEBD/0xvtK6SLs/I+NeRzX?=
 =?iso-8859-1?Q?933aXrK8G/ljNOSki8RjZGSnOYoSpQ1r1wFurnvXKjB7PylaKCfPQNCWln?=
 =?iso-8859-1?Q?uCZLTGC20V3TrK6LrbwhbyBhmRJA8MKWmVpmQNwMvUPs44J/KCV9+turHd?=
 =?iso-8859-1?Q?3ZSHEzABCgtSB8FajtOoOnVqbCqXoKE4GalFOsIQFkII4o3L1S2W8FMb5R?=
 =?iso-8859-1?Q?+ZCGTQvvlIDFZrd4h96voeTszEcY4u0I27MxRK89Z7+wjaP0X1Kuhi6XxG?=
 =?iso-8859-1?Q?xZQaeKF8KtOdjDET0J/0YUqV4Mi3CIpvy1n7z92WVhi1gwWIbSk65+bT4N?=
 =?iso-8859-1?Q?XvcPVROy7kmDjWwUDgdw8XJvou+ku9NH7WP+NsmCyQD3SGCRHnbVvYtF6F?=
 =?iso-8859-1?Q?d8u1eTq/UVQFu6dyR+GRDcDnO0OLqisZnOesyeFj89Tud23xl5XbfCvV3/?=
 =?iso-8859-1?Q?LJ8Z0E+iPQNGZwDkCfUBUOiMsATBnIVfGch5IZAfjIyzTZ4CX97scFvM7H?=
 =?iso-8859-1?Q?y3zsOff8Z6X/9rHK2+QZhS7LX9G7NulML82VV3RPWA6h0qi4dK4uZW+A+f?=
 =?iso-8859-1?Q?1mP9sV87ZUNdzB7f8SVYkSpehkxd652d9fmFSuKydCVu+rhP05glzusHMr?=
 =?iso-8859-1?Q?pGX1KoJY+14GJSV9qnwoM+RROTOGS2grp5+SgFa45MajU1WhKRe5bmrsfT?=
 =?iso-8859-1?Q?FeySl/TzZbE/UU0UBQZblQR9eqrU2MKuqeID9jiepRwwHtTNmNkvYTOXt4?=
 =?iso-8859-1?Q?8gA5Ay7I4pRyPfm+A+BHnTfj9g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?QiLVrFWC0hPB4PFIuzokD7e6k1ecVKLKzhb/vPBX3UA61ycKBQf/uOAnT5?=
 =?iso-8859-1?Q?A9Pyaf9sERRSK9Zz6vwzsW23gtQRyyc/9hj2Iy+DH2Q34MyyG0ouo+OhSr?=
 =?iso-8859-1?Q?UVaiEsPc4L0Zm0jhi3x4r38BiBssxqm6uOzFUG+rd3C4D0DRVFDfP55rn5?=
 =?iso-8859-1?Q?Ec4D8pWAaruz4avTqzZOBGFNOH/tCTw6A4XPFm3j9g8ZbmlfOQGzJfQtoG?=
 =?iso-8859-1?Q?u+ge0Kue4MCwfDOZIaYjVsvWGUBTCQ1ceb0C9WedfyYOrg4AaFy8d6nCeH?=
 =?iso-8859-1?Q?yTAHtHqCY8j23qsImT7mD9rreL2tSSr1nAWoNaYMWcOMsj7GH6saDlyMpT?=
 =?iso-8859-1?Q?amzINsv34kzlgkCUu0xm9jYcJgZ4FnDXOKjZbEv3Y3iGEsZUG9CwWxLpj4?=
 =?iso-8859-1?Q?j1OtpNLgRppJA5FXe6Ow42MxJc9o8KtfDxrDNba8b7TYR16U64tfi4JD/B?=
 =?iso-8859-1?Q?ldSLBg/Gl+kIPPR55DrTx2jUOGpHmaQ6SJ56FHkWiwKKmuYQ2dg8NNIANm?=
 =?iso-8859-1?Q?fYjQG2oovj+vTjndy7DweLJqvrob2TYy0Cc1Y/mDcP5VTAZkWTvabFIUYi?=
 =?iso-8859-1?Q?BmkzlWdX4h0bBGsEgtxQhbSorQsmgNx+KTmy6W7lHwyb1bEz0mgHw5GDW7?=
 =?iso-8859-1?Q?9R8/EqTPWkU69MhaghnjZxHXbFU6QaPRHm99lYVMsmW39IwaDLMQm4Sd5o?=
 =?iso-8859-1?Q?TKgBy31TYezzeuwV4Ca7T0AvTKsLBmb/wUTVccXSFjjJuUkJZvGMvLB/4I?=
 =?iso-8859-1?Q?9WE6OWIXeUyB7U5zCarbT3zWgtHc4kcM+WVP35HLUZUcj5RiRJoYHQNcqB?=
 =?iso-8859-1?Q?NnnNWXw+2kMRbzJV8Mcr2hLyDFMCah2SUGtjjDDgHey9lRmDzyhZlfRR3W?=
 =?iso-8859-1?Q?1k/fe/QOZn3T1kRn7To+lQfMcnOg5L9auxyFUY6U0L7/D8/hrku01lJy0K?=
 =?iso-8859-1?Q?moDmi7rnlV3R0ZiTK4z1in+rgDpY2hHWVxYPT6Tt7thrIB+fsE29oK3qRj?=
 =?iso-8859-1?Q?S1GhEq6s4JH9/S+4J21tqXcEmOcnSZ98CEUlh7Ph5HvOAyMp/xkykfG9kC?=
 =?iso-8859-1?Q?BAje6lOGQKMXC5zUiUnfnbPn3VxBc7l+mmXKXaoFuCC3ZmO4TvI7q7IaGx?=
 =?iso-8859-1?Q?AXqiTM9kmqOTgw5iv/aH/UIw3O1n3Buipx70hlixPEbV8B76pM2AasFAW8?=
 =?iso-8859-1?Q?9lf1jXh4GJYRobKR/KoeHZVVWCNdYWQ4yxiiyQ2R+k0aK6MkhG/4iueZ/D?=
 =?iso-8859-1?Q?wiRbf5U231iK57DLxnGhyn2hqclUw1uhV00LMMD9vDGUng1qU6hkROTMYM?=
 =?iso-8859-1?Q?Cor2mDRU9tJIID4my/QRvpXM8yKQ9gAN7C4PKFV3vunDyIqPf7VubGLb7K?=
 =?iso-8859-1?Q?hI12eRROi139rnhL6zLxoXdmUX5ikoyLvbbX301xIfVXt/KkrjWYSZLRbb?=
 =?iso-8859-1?Q?3oiMivX3vw2DfWvWCJz05oN4ydTby8LF6U6qJLOP+1QLw58wyFLnoL5IWF?=
 =?iso-8859-1?Q?Otes+ALZ5A59LGV9qJCXyys4/w+zmx+IkDA47XXOrvuuXT5NupguO6WDJY?=
 =?iso-8859-1?Q?NUC6laPqInD3C8sOyjPw5Yxbhm/N14RiwxurBSu9qwuXin2+IMvP+9RMeF?=
 =?iso-8859-1?Q?bRFlU1+YOM7/1DdMU9BWK3mPIrDDsi/jws?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c863d5d8-8548-4e66-3960-08dc816b190d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 12:13:36.2436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /tka+dTkDSirtTTqFUezF8zKqcC9Lcka5xs+4TTH6dWJ+SkGyWE5tv1BqD8Pejd4zvoJ31VXcoejjLmKC94b2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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

On Fri, May 31, 2024 at 02:40:57PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Apply a bit of polish to the DSB interface.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
for the series

> 
> Ville Syrjälä (4):
>   drm/i915/dsb: Polish the DSB ID enum
>   drm/i915/dsb: Move DSB ID definition to the header
>   drm/i915/dsb: Pass DSB engine ID to intel_dsb_prepare()
>   drm/i915/dsb: Use intel_color_uses_dsb()
> 
>  drivers/gpu/drm/i915/display/intel_color.c  |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsb.c    | 20 +++++++-------------
>  drivers/gpu/drm/i915/display/intel_dsb.h    |  9 +++++++++
>  drivers/gpu/drm/i915/display/intel_vblank.c |  4 +++-
>  4 files changed, 20 insertions(+), 15 deletions(-)
> 
> -- 
> 2.44.1
> 
