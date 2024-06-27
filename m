Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D93FB91AD62
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 19:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD75510E259;
	Thu, 27 Jun 2024 17:06:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2ncUZPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2431510E259;
 Thu, 27 Jun 2024 17:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719508009; x=1751044009;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=S+QVMVtt0S3+re4uvaXX0mIx5g4kWds8ABuZIYpAKJI=;
 b=j2ncUZPRVibiZv4cPZXJd39DsMVw048EenRx/u/QytSIJovp3xVvZQKS
 mqOjFxPbv4OWHIc9IykdPJB/Up067mHMzgffEhtarWgVFE9BjuMw5MIo5
 6R+xYMpV2SgSgG5kCqZETFsJtBuHNUrTjY38ecEaf2sjaWArQnr2XCPmn
 INQWJB8uhC1XKByq5RO89sEbaz3Ujo53huunNJLjkRvSAVN7QpUHqxbWe
 OHxgnxm+AD/z+6enYGKmAhjDC6Avdl7TEO+PNUixnWY+1hdXwcINpu9zS
 1Xf6dkkEom7I0u79KMICEeIWgN3bNFJHgDitUuXLRek+ju+6Fd+AnQX5v w==;
X-CSE-ConnectionGUID: 1v80h97nTCeL/2p0kN5AYQ==
X-CSE-MsgGUID: g74Af8khTHaMy3jWKNX/wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="20418439"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="20418439"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 10:06:33 -0700
X-CSE-ConnectionGUID: Y44xW/hSSJOOwjTLohuWyA==
X-CSE-MsgGUID: ITPhedoRTeKynPhr6HN4BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="44858523"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 10:06:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 10:06:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 10:06:33 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 10:06:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BNxmi/Hi7/TdJ9+R4DQbERsxiMfqdYiFim8fURKSbzoLCYeRR901fuFp1Z3Omv/9OS75yajwyC5xUsJdALsS1AWYrHY3MfrwRdUgmYaSYTtWU4aIZCHZZQR/0awFHoyiYv4J9yRwDlmxmCQQLkl/rLKx2OySvvUvumAwndUQFMuay/6WimsvIbTouW5iP058qJ0Bq+Kuwc6C+gPw0KbwRMn4uWDEuXxNnAu8E8TfUExf4pQOa3GZ8+mBrTZF8rgIEp3rjPioKst9QvH1TomToV06wvKDhshpRJam6KCGC+FDdUIss4UMEQYUxFjA46e4UAI/9yknZV67zqU4kffqqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i2Tl7d0KZgzG3ar4e4k/uwApqgqI7DLNBzwTQEO6qc8=;
 b=l1NFuwx5oAnGZVAJtmMCNzxBZSkXQ9OxyuipiLBqhG/0/lFeGPGa8iiTvYGd1DRCm8qiDtiAWaVpkNUh4xu2rpvVfcYgKXT7PjmelHK71XjFD8ANVC/V6x9Xh8QN6eajBIRMssfZIGhpmn0s7IACdyW+hkMG0a8YF3Ripul8O4sqg8kc0QULVmBwHP+JMFRMzyt8sCrFUVTbC+PCsBhT4RaKEcek2XuvjcTP+lzVhr6jqwELkfIojMOthq/aRtVeGFovsGtanxvF+eEBTUuEa6hj8zdRvYP2I3uvbV+oIX+BZzvlwg2Atw+L5yRCG0ptXuRR5GF9hapBOuK+WyzxnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY5PR11MB6437.namprd11.prod.outlook.com (2603:10b6:930:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.34; Thu, 27 Jun
 2024 17:06:30 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7698.025; Thu, 27 Jun 2024
 17:06:30 +0000
Date: Thu, 27 Jun 2024 12:06:27 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>,
 <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH 5/6] drm/i915/display: add "is" member to struct
 intel_display
Message-ID: <uulo5ybhcvxbj7orgtovxahieyogz2iw7csn42rcnwsifkdfqr@zxjryherobpp>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <450b5883a7783d0967c3da8ce853af0c2da8082f.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0038.namprd04.prod.outlook.com
 (2603:10b6:303:6a::13) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY5PR11MB6437:EE_
X-MS-Office365-Filtering-Correlation-Id: dc48bbcc-ebf4-46f2-06a3-08dc96cb7d74
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|27256017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?u8lkRN2rksPzM0mm9JrTqFz3SBTAJlExGbX19rq2QG/Q6VU1HhVmJCkEREO/?=
 =?us-ascii?Q?6fZ/KbIrIrcDVe13w/VXYuaY9zGRoMnWAq445/Hyz1uS3Qb6EDi41n7WqtE+?=
 =?us-ascii?Q?yv0MgE51wWlf+N3ll96oNJvtDfOEQzd0zh8Fjf7WpRz6CNS6w8OrCqUbZBl1?=
 =?us-ascii?Q?9H12YICoPKfzE0k8YqndLt8lWmY9KQw7Ha4dY+xnSzEZhdn01fUtvmnNNkEW?=
 =?us-ascii?Q?ljDCy/MWahwOQDewo70R9Nqiv43MCS1L6IFMvlye9NX+sf7N3RhGozS9d05a?=
 =?us-ascii?Q?kLeSZuwSOrmAFuROCSK1TV9fkWT9WrfummAU8RH9clwO3yeSXzB5LIakNAPF?=
 =?us-ascii?Q?v5CVLUSmckLs7EtFl/4vUpMyZmiZ1muzqUNJNJtk1ejx0tb/09VAoJKr3Xjs?=
 =?us-ascii?Q?m/7t0+b6jJXNS0q3mG3KH264kq8gxGYcYmIU1gqVVL6N/mLwMTZc8bHNHTp0?=
 =?us-ascii?Q?oX+qCAyXnJCiZtCCdcd6vIseHCCKFksIy0iRmoF7yFsTcl0Yaj9HwGRXnXm+?=
 =?us-ascii?Q?XrOJV3PqHB1av5mDnjQpi5QQY/QjXLPL67FLP5+Ft5BaaFbXhk2PravXct0X?=
 =?us-ascii?Q?KRLqgCgqlWbVeBIjXGI9DQsPCJ6pLhqICbhQMVYGmXenN9xgUyFiTC2ZN6Ji?=
 =?us-ascii?Q?D3HjgezSDLR9p9oPzW6KqDIBeVr4AkASnFq9nCzsRffdvZIZBsu+6Odp4rOy?=
 =?us-ascii?Q?aCyojSyL0iO+0qqxvWhuYbGBwOQ4tO8x6BsSzaWhILbF0SyXAl7knP7ct32L?=
 =?us-ascii?Q?JiO0dHjaAcph8H2bCb9w/7TwodvoDlyKHaVOJ1J4AVJPR+hwcrOQk9aeQUAw?=
 =?us-ascii?Q?kAbB3Tui70O6aN8mNQCuLDI5V9MJcKMvRhQ3JA5qIT+oV11r44sHMB+g9LQX?=
 =?us-ascii?Q?Bq3dF87r4eDUPjzPUgOXnTBEAC1WO7k41OCuw9u86XLGqAG2GQusxtd20CFb?=
 =?us-ascii?Q?Yn6ztb7k5KPYzlNlHjK6CE2pdMHB9z0ZO4miB+uN2iRFUfpOkXcyoxWcaLLN?=
 =?us-ascii?Q?K9cDUy5WIxEHVDZsLtDHNDWRqO4K162zssRG2WAEiknlMOASudQlpLAfAfDm?=
 =?us-ascii?Q?93AhkDJkHiPlFaWd6Eh0WSB2njP19dzQb73+jeuLRv8hySXtJIekacNY5pvy?=
 =?us-ascii?Q?6tHUvAvZNJYEqggsp953/dN8W6aZ3ogPQZi5sFyLzGsZGJHApL5/vNPbZus1?=
 =?us-ascii?Q?NtaTFdp1I3Y6aW++arTaqsdVbvb5C8MQyOKAeQpwpmTVMz4K9u9lwGU4VEto?=
 =?us-ascii?Q?lLHM+pZci0Wu9rZLNcfuoQJN/yym50QkC+yZiQCcjctq8r6oKp0rDeeIvcLq?=
 =?us-ascii?Q?NlJg+QIg6UOvtOi3DXslGNuxKEw5Ymo8t40lKmxek1krvpg2tnKjEldU+ezu?=
 =?us-ascii?Q?88Fx84vE9iWnVON2NRLiHSkKHHdUo3IMXMhzGXdK7eGaEnFaCQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XEdddv4thm+OvJWXwmK0/bz3DWaogFbr1UiA+ADNN6U/vVj9ny6LDiCWbiG0?=
 =?us-ascii?Q?Q/RXlgN/86rFdywL0k25sLwl7Od+jXOc0Q2MsRloqybjWSWjbrtcYXVZvoug?=
 =?us-ascii?Q?0skN7F/HvxmnUQOxkT2DJhubFvGZZ0LMKBzH+F/Ehk/jQLnD4a+XUcQqE0KV?=
 =?us-ascii?Q?F4nCbhqah3GY6rm6EDdUpENwFtKJYI+IcjYl5MzFtGbj1YF47rNYjVusXlwg?=
 =?us-ascii?Q?GwFbpYBKAY2K30w/jEW2n6nwFAciKPR2yY5RVlB58rr+DO8ltIpmjK1/ssF+?=
 =?us-ascii?Q?UX2hSnTDXAttZ9srdZK+WjM07pWMNEWXg3Bh5ofhzkQO5LEHzIQerFj9tFNg?=
 =?us-ascii?Q?PG9qjSzPZXJRnEbzXzFpm3B6VQfUKj3Zcik8YL+//y7eR7PSXZwovBc/lhP2?=
 =?us-ascii?Q?jShIFWELTLEew4WwH4Ge4jCxyUaC/pwfWRRTmeLk2AVDPgV2NHrhQ9IWU7KC?=
 =?us-ascii?Q?AsI+SqUWWCO0rK1wGY8riglpD3H6bKvt8kqjOy149/0Y5hdzqOjcqNMvxQNk?=
 =?us-ascii?Q?dbMDPtQT1dymCQJhsrqg6R8chUC3y+y88yda9CW/Cr5NecATtuSQDq3LfWcY?=
 =?us-ascii?Q?eMVxepFZn3XEEC/JeCwR7KQPC78ofp+u7t406qQrKoqn2C6FkFxfcrWwQrwg?=
 =?us-ascii?Q?L3pdhHEL1t/MDnJri+l33zpPdWTs1ZmaJphfpCQ/+xcRYR7a6jFuE+I1BWOn?=
 =?us-ascii?Q?JdweO1CbhulRg6B9UihC+lgrVCcgcZDiwoUbTb9O1u4yk6m/Exu1a+tzShna?=
 =?us-ascii?Q?2GjifbS/lrNhKV2TITiOyF/CcFT9usAyZ1tgHKMg7hPsRXJm/ngxcpqAeRZX?=
 =?us-ascii?Q?T+RywHrubYzWX7/1jm9Bmo8Xm51ENfCGnCnEbGYNAgSOLG3CyDWxKE7ylZtu?=
 =?us-ascii?Q?MDoJcDm/mkdYRbl6LONQxofWD4PWGQAD25d3yXRUkDDELnZhcoI/UXzLryed?=
 =?us-ascii?Q?6+mZSKHZ8L6H7pQj9kuAwAOBhGmneOWgLqzz4G89NdY6HnVw7a4jrdv8HdyV?=
 =?us-ascii?Q?A6+mgZN6kP6R95FbHmTh8EcurAYfZop37apix4rmKHP+OSjJxOibc8xI91H9?=
 =?us-ascii?Q?7dq3vNwO1VpQ+up7WW5IjLpR/WXEU1qRgKBCRtJyuhRb9FMu+A/x/g7+NeJd?=
 =?us-ascii?Q?eOhLvD8Yw0ZB2NAf9JS6qe1BNdT8gT+ZenplejdxPTuqMD5yWRfCxztSthcc?=
 =?us-ascii?Q?N87gVP3Kvjm+n2kdct4ZQMEIhgnbn2hKyw+sD5wkIN5Xr3VwUQiJGkmNoJWG?=
 =?us-ascii?Q?BzFiEojQWPXwSdUjcnTjWoY889OVGeRAq+UdhYnZqxX1h1pFqESaXNqhWO75?=
 =?us-ascii?Q?+OcCavZbkQ5jAbVmrC+8o4ae+veRhr2V8rXncvFlkDoVrChAJ7r2X1izsKTN?=
 =?us-ascii?Q?hnmR6jWhE6JGAziwJ2ZI1oSd0wIATJO0+6vY6ip6hflOHo0wZLRlbtuG/lx0?=
 =?us-ascii?Q?bMr00L5khkoOVguNRI6ILf3LAcY0oGbZY44ktL5qxWtJJ4XpwmLPvKMtTNC/?=
 =?us-ascii?Q?YDy+W5wQiQhTRaV1k9qbHyohFvQ1Vlmm4Pb/N/FhH9pH6VYp8TMYU1YrGrWW?=
 =?us-ascii?Q?5GkZ/sLKTZKNeOnDwEHqH7CmNipoIckEzRHWYrHlV0ksfIA5s822aARl2n0H?=
 =?us-ascii?Q?Rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc48bbcc-ebf4-46f2-06a3-08dc96cb7d74
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 17:06:30.8813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XKwK/0ZmrQuSQJo4Vp3ziSF0DFEsDpczwYFf7XHfmuehATef6C8S3QDMmyfDOuAKi8gse4s3jKfz0+CQdsJyUS25Yf+nPRdzzRjVc0SIR+I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6437
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

On Tue, Jun 18, 2024 at 05:22:55PM GMT, Jani Nikula wrote:
>Facilitate using display->is.HASWELL etc. for identifying platforms and
>subplatforms. Merge platform and subplatform members together.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_core.h |  3 +++
> .../drm/i915/display/intel_display_device.c   | 19 +++++++++++++++++++
> 2 files changed, 22 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index 7715fc329057..35bea92893af 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -286,6 +286,9 @@ struct intel_display {
> 	/* drm device backpointer */
> 	struct drm_device *drm;
>
>+	/* Platform identification */
>+	struct intel_display_is is;
>+
> 	/* Display functions */
> 	struct {
> 		/* Top level crtc-ish functions */
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
>index 0c275d85bd30..954caea38005 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -1269,8 +1269,25 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
> 	return NULL;
> }
>
>+static void mem_or(void *_dst, const void *_src, size_t size)

why are we not using linux/bitmap.h that has support for bitfields with
multiple words and instead rolling our own?

Lucas De Marchi

>+{
>+	const u8 *src = _src;
>+	u8 *dst = _dst;
>+	size_t i;
>+
>+	for (i = 0; i < size; i++)
>+		dst[i] |= src[i];
>+}
>+
>+static void merge_display_is(struct intel_display_is *dst,
>+			     const struct intel_display_is *src)
>+{
>+	mem_or(dst, src, sizeof(*dst));
>+}
>+
> void intel_display_device_probe(struct drm_i915_private *i915)
> {
>+	struct intel_display *display = &i915->display;
> 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> 	const struct intel_display_device_info *info;
> 	struct intel_display_ip_ver ip_ver = {};
>@@ -1308,11 +1325,13 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>
> 	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
> 	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
>+	display->is = desc->is;
>
> 	subdesc = find_subplatform_desc(pdev, desc);
> 	if (subdesc) {
> 		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
> 		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
>+		merge_display_is(&display->is, &subdesc->is);
> 	}
>
> 	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
>-- 
>2.39.2
>
