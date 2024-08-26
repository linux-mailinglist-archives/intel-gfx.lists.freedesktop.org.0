Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D110A95F736
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 18:54:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1A910E25F;
	Mon, 26 Aug 2024 16:54:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UlZuDihv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A67510E25F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 16:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724691289; x=1756227289;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=K4f4ivFsByutK7Qqc3fYebM71dTNyEedw3ZWi1Sj2Q8=;
 b=UlZuDihvP/9TGmmKhGpUbvB6gweerd7i+AeBk+J5MBxF+L0Tvo3j4Wvm
 bpkKMYwOVv+Wdx+SiwW8zffI+MGV9B9UDJAjvQ5Sw//mIBsaHW3x3bw3h
 HKrVtMvFqBMEYpi19/F/AJ5JEGS74WfCVvT3neVPe1OIdWFOEipISLe7U
 FEf/9klrgli1MxhMXHdxAi+R7tsFbRcX5cef3rAaKIUTnysFBZ+t05zxv
 3Fb1bgTq0vWNpYsBK+SodATuCZxjylpH2GmYj035F7T/k+/YC6oQjONuQ
 cmskpyEEr0zrce8w8Zr+TVAjrAk0un+WxBArMDX/+le14H9PH0XkhNBvr A==;
X-CSE-ConnectionGUID: HnrkAXfuRQeoNyATem8VQw==
X-CSE-MsgGUID: 2YHq8sz6RH6lYoqmM2epAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="22996920"
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="22996920"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 09:54:44 -0700
X-CSE-ConnectionGUID: PlmaFtsTTWiRYEDLGvXU2w==
X-CSE-MsgGUID: O8Txbu7cRzyWc+tpH1cv0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,178,1719903600"; d="scan'208";a="62737705"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 09:54:45 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 09:54:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 09:54:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 09:54:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BDBK2U7k8fXQmWM3gyQ9rOJXC4RWMJtDWIF8brffLbzMOrNIqU/0TuGHxaxXJEdShuX7Dv6T3/xSoNrb8PWGSi8qwrjor7PZ5n8WqRgwio8/Sif7dBMNykEslmtDCyGEq/0xGGlUXSBJpe5Q12HmHVhV4llRmj8BRys3GALtOf5uY92yE4X+Ute5iJM8Rs51TjZ5GHnkNYrARdxyDevt3PwoeE0lm3Dv1iKin5+yvgyC2C5WHy4jGkRGjdOGmcGghLbbcG6rUD0O439HLemLliUbEPj9fnRlUiGsqf+RBnAiDhXBtasrJJ3qpdVmGLWLP96KGyFGCZO6AeQMxrqfMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lAvK9egGEjyyc2fCfXec7MQVQazfxBeEk5ILGsCDZ5A=;
 b=PrOg+e/WBUhFSC9i5NmIQwRdm0n3jA4Vhopyl99n+9knuY2aCE0AfmZM8mhQOlGBbDruLvFhMWCHVnLURh2nNmnumvo7ZQm+3v3lGBxv7VKA37Vf1EeJDUDTLqmPGg2aH6AOPniMY0y5ERgHHYfQXnWUEQJ79B1MMSMlXQGryYcx6/rX4ue4PpdzLeitTzYD19JBdUG6UpbsZZ9uXTwgEjJgyDtlmdAx0+K6GUM0vO3mtvzjZ3WTCgtkkUNhWGb82lRJbyYpxZX743CWRuxFDUn+G3nMOltSpfh9gxvebV9u8Sz95e5OdQFf8ifPIiDXyawWoLbuAikpndTukcNwaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB8058.namprd11.prod.outlook.com (2603:10b6:510:24d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Mon, 26 Aug
 2024 16:54:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7897.021; Mon, 26 Aug 2024
 16:54:33 +0000
Date: Mon, 26 Aug 2024 09:54:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [v2] drm/i915/gt: Whitelist COMMON_SLICE_CHICKEN1 for UMD access.
Message-ID: <20240826165430.GM5774@mdroper-desk1.amr.corp.intel.com>
References: <20240823101009.2093667-1-dnyaneshwar.bhadane@intel.com>
 <20240825121156.2498810-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240825121156.2498810-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: SJ0PR13CA0041.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB8058:EE_
X-MS-Office365-Filtering-Correlation-Id: 044738a2-68b7-466d-2ce0-08dcc5efc2ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WUp6n1eFCi50DaFfsVv1k3Gn2Zi0eeezuAgFbl96GUVpi03P5/eQCsjTvh40?=
 =?us-ascii?Q?nqYDuwMu4MqU/Waro0/foKMuFmjp+Qj2rvHZ1bEhjQ1WqjF35p1f7TlX73oc?=
 =?us-ascii?Q?+CqRw+Hx8hxQkceOt+HAdGABngJhVey7vLD92ZR+yN0k8OxOrAf9n7wvqyj9?=
 =?us-ascii?Q?cYcLnyuHb4pJJJJKRn8bDrw/OJQAkrfyqmwY85Ci/6Z0Wz6SW7IaBZXaO0xG?=
 =?us-ascii?Q?eE+Ipi8NKpTq65hhRN1DFt7gZAPx4IpA+GNfkUGw3EgbJLIEPNkkQ7zCPzt4?=
 =?us-ascii?Q?U52wQnwcmnbl5ipAVrG42UG+fCaZBBvfjesKh8D0jVq+QMjX62olt2xHxdkP?=
 =?us-ascii?Q?DEk9A5TO7qhey3gjjMayi2qzQi05tNSiWY6KFcFe3aaWDLTNrqiqNevXrLjR?=
 =?us-ascii?Q?2uvTYctD4fvekf1jGYRX+ruo83rKAO1rKaMvThCQclvd7AKPAI2twTs1eWwk?=
 =?us-ascii?Q?KWNgiG/TqKxq5KUHzABiXz0yid0DY82bKiRo4p2ls57/oxztt7+QtFlqp0qM?=
 =?us-ascii?Q?0e9rej5BhTFB6ku4KfD9/7Fc6sD+uDDRBURATiEd/Ck4Y/LurTxZSZlxlWP5?=
 =?us-ascii?Q?R0yVZaY41l31vrDRZ2VZYOkmZA+l7YnPv12lY1jnsR2g/iYsfDa3xQ0aifue?=
 =?us-ascii?Q?ONY8+Yee17z3InVYWqew5917w8Ib/jbefhfMJZDv52JggvniyeO+OhZXiGB1?=
 =?us-ascii?Q?qd5jcSR9SAycOy9RtWk/zlVTNcBsmAp9hmo6Wo5UwDuC35EYE2aXinnOwj8i?=
 =?us-ascii?Q?fM/6nafwU7N8qK9VgZ2CTAKe9W/VOkI3isT8RiXeblAa5JPpREwWARQBp9C2?=
 =?us-ascii?Q?9BA/mYc4XvWAJ1GMdmn322ItTnfDSvanDHmmBSSJ/OhvKXhe1JATp3hWCpIF?=
 =?us-ascii?Q?7neLgc00TbrbVGzyYkEOflAYJJlYBCp7Kca3gJH+O4hjzZlRxi7YhqqnXaFJ?=
 =?us-ascii?Q?hiLybAKMTSs3/8LhToT7k8KlF+enNG7jApXcP+oyDug+9UwA5cdWRp5kt3sm?=
 =?us-ascii?Q?3xGYuq/G+RU1GuxOfNb6mK9c1NAN7eX3/j2tamKpNH147nRIu5Q7msdLT95S?=
 =?us-ascii?Q?2NgDtP+ysIN5aoC2trbO6iRKXQnW7nnS2jAOSBprvw9T3d1wGYQw6CvEJaoG?=
 =?us-ascii?Q?rE5+/J1IjEFY7sDVDhtxlcCTUZrTMmv96u73CIGJ7TcpeHC5OmXpWeBjCB1q?=
 =?us-ascii?Q?ZkkWlLHB91NVEuYfTgrN5Uu05O78WvRT+AGTJPkLfr/WdtzBnxwuoTgc9a27?=
 =?us-ascii?Q?R+3eDKZWrosqAUK88J6AGPOuGh2D4xBSZlQYyrBc6//2wieAb9f8lm6dJEm1?=
 =?us-ascii?Q?yHitIIIjnToqZmI9l3NlZD/kY1Jw67n0flTKQXRzezO/JQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GB1JtQvBe3uMYd4XzpndI+XPw0soxrrjb+ZlRkiXlVFf76OQnx8NfvSpoRPY?=
 =?us-ascii?Q?/DKF5rPHWBpawrLmh8vsrWFira84w688+smbUBaz+YrEmsWU6cX9qKNDQYuN?=
 =?us-ascii?Q?VN+//2OPVppuyCp1ijYf87B7CeH3R9S5DvWwWgVEjQVt9l0GFhQe6/Y4sGDm?=
 =?us-ascii?Q?D0O9Tw8Ju0bwf6Ds5eaPX4SyJkZxZQTJqo44BS1jKxWDuKecaSpn1EAS/PyC?=
 =?us-ascii?Q?GKTEHWqjgpbd1JfDZ9hcr7k5sw7s20Srndw5jNdxE8qTSwF7uuunk8WKTa8j?=
 =?us-ascii?Q?44gpGUsNnwnbaCoODFN17hcA5mbBWWpf3Cb4wLZlQRtN9Ezm1mdXIc+o9xWD?=
 =?us-ascii?Q?2tbKZOH2iiLoXJ8Gaw/Y+fes9UiQU5lDUBMLxXFSNKPjMpE+FibtOKdWiyvj?=
 =?us-ascii?Q?lvzhWsbIYKdh19tjZITiZxo6QbX3CcfOLMfottHrfvnhXRc/h9/eC0tl9cPE?=
 =?us-ascii?Q?tWK347524P31AlGUS1ojw776Hm/sKBSG5fdbgW/vW60m8Z6AOKsf5S8AYTdW?=
 =?us-ascii?Q?6JK4/JpV34QnEJXxE7dZLkUnwEAQemqmHWPrjUVonCnin5Bh3ukiN4or/ElA?=
 =?us-ascii?Q?JZE89TVgJ97IlhSVh4G2j7NE8Oo5pDRCSS/VtPlD28RW168LEAYTYDwild+X?=
 =?us-ascii?Q?X6ndCrf+azRZY4ORkqdEeLGXZwejZDdxYwabtgv/xjWwga/yeFWGSdvVJK99?=
 =?us-ascii?Q?W4Fz4T8EIVZdIPaw04D3BFN8YBM0Vqp9xSeO71PAjxyFtvalQ+dXLAXb6ojo?=
 =?us-ascii?Q?jdREV8A7hb5mpgSqn6IbZZznlCXKH1Rwt/WEOfEzW4xMGoNTcnSVhWYRMEjy?=
 =?us-ascii?Q?CqbjcaE+Kyfpals07SnRpXs5kncfLrKuW3WN+Z0e2wIMbkv5SMamarCh/Y6h?=
 =?us-ascii?Q?0E2NUGRyNcvkg4rFz+Uto2Soo1uJE/fzcnNrORhIdsu3tXfb9tanUscqonHi?=
 =?us-ascii?Q?o4AkN8bGCBmEDS949sqd/4XS0qLcDtBEGiP8oWjpcQz4KSNxv9y9TpzkOto6?=
 =?us-ascii?Q?rUbBejnBJdlpE8PGD9Tcl75fZCdVF7jHhg2ezmWddnMAT6xhK8sSb1+u0H8/?=
 =?us-ascii?Q?J6pk9aJPwX9T+Xv92uYWWSEDHejaTt7+my6ZhbxN/VfEN0r8nZIw5GUF/gru?=
 =?us-ascii?Q?odeadwGTYDEg27Tcjn0nmmghvmCHgW4AQak13hQokjENlf/jLeg8MDho277N?=
 =?us-ascii?Q?WlPYbCmEBWeTWv4xmc6vusV+slIjggTdlTt1rivyBeSvActC11y57sL6vsL0?=
 =?us-ascii?Q?sVLbRAr1VQTJpWP+PRrWkFBqP1AErgoGzaSg4IgxoAonn8qAaUq2Cqcg9Ma+?=
 =?us-ascii?Q?37sFSa7XTJH7oSTjNug1nR62UiP2tRwsXxgHBC/WNfzTL1jEUPvj3xWK2SaI?=
 =?us-ascii?Q?Ifo+pfUHFmehhoT8vqLTpT87Eoe2V4xa70cQgnerQHum0+98TQn5L8ZkS4w2?=
 =?us-ascii?Q?hFbpwCCyIYqBWa6Uh7iKp5QGGXM64zPoqy6sKsZU/pEmHsqf8aWNPq95/WUQ?=
 =?us-ascii?Q?bV6eZN3Sp+975ttN41RNvBcdKX1gwjN0TZcgkiJEMpf3X4HKWa0sEs38S+SH?=
 =?us-ascii?Q?hL3kA8bpL+lYM8jIvfFbQI9G8shfie7Ekp39ZqL+5rIBwGa9jMZc2I2h4+Wp?=
 =?us-ascii?Q?9Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 044738a2-68b7-466d-2ce0-08dcc5efc2ba
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2024 16:54:33.5969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7ib+cq/cV0g1x9eBZ7Q6o2I/FI/na4PWXqiluCmdsv1QcKRE7ec3Hr8EO72gK4Dwm2htccJzSyEVX94zkSwHq68eqYT98rMzwp/TwC1yV9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8058
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

On Sun, Aug 25, 2024 at 05:41:56PM +0530, Dnyaneshwar Bhadane wrote:
> As part of the recommended tuning setting, whitelist COMMON_SLICE_CHICKEN1
> for MTL/ARL and DG2.
> 
> The UMD will selectively enable or disable specific bits of the
> register based on the type of workload and its requirements.
> 
> v2: Remove the KMD par of enabling specific bits(Matt R)
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index bfe6d8fc820f..6aefbbcdd269 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2072,7 +2072,7 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
>  	case RENDER_CLASS:
>  		/* Required by recommended tuning setting (not a workaround) */
>  		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> -
> +		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
>  		break;
>  	default:
>  		break;
> @@ -2087,7 +2087,7 @@ static void xelpg_whitelist_build(struct intel_engine_cs *engine)
>  	case RENDER_CLASS:
>  		/* Required by recommended tuning setting (not a workaround) */
>  		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> -
> +		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
>  		break;
>  	default:
>  		break;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
