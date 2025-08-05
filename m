Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5B3B1BC77
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 00:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AB010E6E7;
	Tue,  5 Aug 2025 22:19:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YDr5f2dv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EDCB10E3A2;
 Tue,  5 Aug 2025 22:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754432371; x=1785968371;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+zXE1s9kGTjOSYVl2teO93mMhtZPzS+mwWTnHG+s9G4=;
 b=YDr5f2dvF8p74IyNp9kd2dj5H8k+iGC5vOnbPBudmVzIaGIUtfRNm9zA
 u0R2dCe5DHS7YhcD3oEYG6SELujYJx0K3lZhwTOjw8ShR5jsXtCT8Le6q
 Q9UnpHzwjaKWoshyBDGCkJRdkDsQ+kaogFGBayVlOVOVVq0IhEVSyROG0
 oJ4A+ZgSzM2hn1HlWXYBVYw6QncSDP1hY5AABLgCrFz7irxcycclLQJsi
 s+zh/OxP6KGJNZFS9Z1K2eAgSmm5h0QwLpCJmE/LDa4QmbULYThC6QHIX
 dHGIow/1WewuWu/uQtM4QsfeSjBdHxAeBqUymBbzCtbKxh0emhBJStO75 g==;
X-CSE-ConnectionGUID: 39a7NNmkTiGWdqRtXG+4Tw==
X-CSE-MsgGUID: dF96uQn4S9qe4xZcO6psvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="60572612"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="60572612"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:19:30 -0700
X-CSE-ConnectionGUID: QF+lPTDNS5WGPHtl0I/RDQ==
X-CSE-MsgGUID: HXn4ppa8QWC1b2T7vyEUwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="169876956"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:19:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:19:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 15:19:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:19:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R8crqKPIbd1lWPxuQnhV1iiY5jPtLnooT70nqYv95JsV/aFz9Sc6pko9DNxW8L4gcJH21prdiB3QX50Aqo0Cvgk3K1d92+hFibQkU6YEIda0RaFy4jiaIPtPOLR8Za/8eZYoJQXwFY0CeATwavqQxEXNAgr/DUY5vRni44Rg5XIq5i8SazURO475BidXqH0/2oF5V4Q0ClNZyB/bjK1I3nTAVd4QtkBtZongZdg88hPSvTp1lb1L3T/QgOeUF8O1x8f7eKmkBxTR/QmCe8rrYV/+gU8wY4CbX3b8qVKb7t+AlNZWGERUd9JXPNCfZ4x2erYnaJl2bUC4AkJ0Vsutqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RhFwBMcZ/0R+FxLFbcTxGsxChuKkoWhPrM20pH5Ioe4=;
 b=y8fkqYSra8WwbPIaWvANaE1KcGlgFgmA9G49JFbxFtCaNs9BXXYOsDSM3Jfs8e9S5QiOI25gbXh3j0OSPouzaE8xxr3nu447+Lj2rdVUf9Ns9coiXV/SA9oufE9Ntyh9+4pz1sTH7L/3PrD1hiwOqO8vziqJiYTiy9lLbsygK+x6QEjXHPHGEV9DA4zJGQHILemj4YwDwjgCCVHruY7QbiBoQafr3IuwH36d1FJYmrI95fRganMsQZcZlzrNcBvDKYcvWxS2FkDAsxf3GFyTfY7SADZ5wOEc18pf2bEMUlCp7bdHsoW8fTwxPJAbkr/DENIloIwzZfXazOfIBA2inw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW4PR11MB6810.namprd11.prod.outlook.com (2603:10b6:303:207::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.21; Tue, 5 Aug
 2025 22:18:46 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 22:18:46 +0000
Date: Tue, 5 Aug 2025 18:18:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/5] drm/i915/dram: add intel_mem_freq()
Message-ID: <aJKDQ7IODcSx9iDR@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
 <eeb7aa7e22e9b7eb68d958605650aeea1a6bbec4.1753971617.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <eeb7aa7e22e9b7eb68d958605650aeea1a6bbec4.1753971617.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0124.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::9) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW4PR11MB6810:EE_
X-MS-Office365-Filtering-Correlation-Id: bf2021cc-58b3-44bd-4e7c-08ddd46e0b6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tOzyaBFXrN2Yg9ivB/DX74kPT0VhwEsLFVLFDGM3EkNX2HSUzDtS0SiUUevy?=
 =?us-ascii?Q?Ebsvnq3Cb3PoONmFYTMcGwt9gaORXbWToWKM5H32AugSFxbsKD9Zch16NUXt?=
 =?us-ascii?Q?GGe+1G1owEO86VL43DBMtRXBshM1ofz4VymiPsj9ULIUFIYQ8q4N7PY5o4di?=
 =?us-ascii?Q?jmsL5eTUWEmETP8YDfByveG/PlLHSUUAZYkL+QjiRb1ZFULHoxmQMzhDprAV?=
 =?us-ascii?Q?fQ3at6xdaZYg9QtGtleboTn+AZ0XXPAdVhVce9vLTa8C+Up12KO1BNSsojDg?=
 =?us-ascii?Q?JsSTCy9o9vZ5wlxkaEtJ4ebcFJNAKFfEAk2w3GJ2xp/O/yiXI8OHFwyZQm1X?=
 =?us-ascii?Q?FzqeKzELqFRx/bQGVl/8kHQoAtiY47+sx+TVwuUcrU+wvcwIaBadtliar9i3?=
 =?us-ascii?Q?ixusLzuvqTpQwuo3FfTt3u7HE+Z9MHglugG4NS8ccIa5+QVDGU5uJnuwiXyp?=
 =?us-ascii?Q?B91RQmIeSNX7+fOBYbkq0DQsW9G954DE64sUy6Jp+YLvSDytvwg12t0pdTxl?=
 =?us-ascii?Q?/eG1iDg03F27BfXDrAnj0J41qKksVhw1Y0WkmZRW+lU9NjocxT2O4YVVwZd5?=
 =?us-ascii?Q?i8YoYLJBtyrxKfz4ATn+QbFX74X+BwLOE8YN+wKl5gHnXkKgXNGQSwFhcdnf?=
 =?us-ascii?Q?1cXNJQgkkEBI4FpQS2dQ2V+GIYcltuTUVHuTX97PbuG+uxqE+QHOxXzRQbFO?=
 =?us-ascii?Q?igXS8gzXdxQ4w5Kea6TR0QdwLwAj53b3ih0ubzAPZa/ksrgAd1GQ0TiKTxbV?=
 =?us-ascii?Q?A205aUuFt/vGYEPMzlYB2uUEQelqqv1GsM5YpauChiUlurz2V8qTN7WRsK3N?=
 =?us-ascii?Q?T3SlRqNY9DkE4ruGktzCIA9aD95nXtqzYtBwyvauD2sp4Ma8tky3rZup7Y21?=
 =?us-ascii?Q?xBvDigiBtAmx6s96Da6xd+Xlwjc+WTS27J4tmws88GceoCGf5imW2rEp7D5u?=
 =?us-ascii?Q?1IiAKUKRwAtZiid9UoiV9RsevX9B+gA9GvferxhYbTk9va0OJE2Xu0omYWZB?=
 =?us-ascii?Q?WITJ+mfumhsg/JN0qrJvgDuNdjIOhK3OCi4y7Wd65nt/1qjHWfTAiAvCJU9E?=
 =?us-ascii?Q?8AJCI0VxCS2G/WWpkhLbLNeQvj1xym65syFafdt/kfG7L6N8g8oKLC/pyuWk?=
 =?us-ascii?Q?NeLT62tK+vacuPdgq2k1jT2qVUH00TZ+VwsEYmSmVVejs0m6atb3kVfOjTmU?=
 =?us-ascii?Q?x8CziHmERGuhXu7EThTNS04lGzpvgKXDbHxErCq096/xSvA7rA0pRpvAeYSH?=
 =?us-ascii?Q?VNfpj+56EPjGgF3S2fdCXnEALVPyTM3M0hnD3NQ9v+AeBzd+RhbXbsw3yUgF?=
 =?us-ascii?Q?54B4kuEkAsM463xtF+ZriiIs0wBu/JZfQ+/3r86c3D3Ov43bsU84p52GpjBE?=
 =?us-ascii?Q?WpdULff9uhURs+xOOgGrbp7T0LBwknGOoekLvSTr6wQlet3zsCeg2TIKNEis?=
 =?us-ascii?Q?4029xMBbRQo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9KTb9bOMRs/BPHaFuBvm9scXbY+zYpdgIabw+TRqPqjrxdPEutfVfG52YiNq?=
 =?us-ascii?Q?ETLMpFdRlWwtJdzF5VZGwyUjAozKmaWyAGYI+A+t40g9LXgKEr9/unlO7SZJ?=
 =?us-ascii?Q?AzQSShzYNNGWmF+47xyNtocD3Hs6Xwn0Werqn0lExWwLWlYsg1sYkruit36r?=
 =?us-ascii?Q?jMwO9aQSsSawEhJ93RnmM7R2n1VP0YZbQ/yOoga9wJY13u7yutrEEFL471UK?=
 =?us-ascii?Q?r0udIfyze0OplSMBo1p6Mh1IbL2dlj+BWtgBDFI/tMCipVnoGppBmG2iWoKv?=
 =?us-ascii?Q?wchhenSVL6fyffBuSr6KnU2JTQEdb6qMAAzhSFNlfCpj8GIEiW4DukCG1Gjy?=
 =?us-ascii?Q?mTVfwOwPlOJNC8fh7BcrCAZHUzAXz36R8+8E9X1nS/fLKnlZXm8Y7clUITnA?=
 =?us-ascii?Q?P7C24MIMBh5wBHFyj5b2KEJSfa5F7QTxuS6VZid/5Bfs9vvxGcWPWbkbvUE8?=
 =?us-ascii?Q?V52PUID9kyayTV1oBzaknTNanSxZg1wiFg2ijhUtJ0kI5kFHBUkPno2+Jhzf?=
 =?us-ascii?Q?izopqgHVrnY7T+DKW8qBmol2YiZEf9mzpq9Dm/XQe0h384hfh4NKmxGHcjMs?=
 =?us-ascii?Q?EcVr/wCB/Yic1g5ArwG/Zudcb/hlb/QEP521p/GIpXd8043YTMNSoY/f/Uqx?=
 =?us-ascii?Q?qdZTk0worH8MGQIbRz9U5kbCNfWXyhabmECsMkhn/6EoaMrBioDZx6mxdJdN?=
 =?us-ascii?Q?UuQCOouPWbFQhYLjPrjOxbmrDR/agnUIUcMWElBMOfyPo0YTTqricHpp+abk?=
 =?us-ascii?Q?Ecvdgg12xE5QL6fNHgTKyIXGP0fAI6i/EHzrPPqh5UepyjBxTh7wHz52268M?=
 =?us-ascii?Q?Wwf8nQvDhfVkhNOPXSiEhvKqNW6hyIJSVhEaufyBd+D+76RgcTfy6memG3Iz?=
 =?us-ascii?Q?D1M5p89duszPSYTjTB7fzERGELu0/WakSPYi9wZXYGnFA/sv9p3IMQBf++g9?=
 =?us-ascii?Q?pDOvwJ8m7YJ87PRKxXiYDuosqgV7JBFvPrNOe6br5RKO0YTN/mSQNOwOTHmB?=
 =?us-ascii?Q?qzNfFjzBRw5p4vUzAk7n0qr9WBQl4yZ9L2B5YlXkWSpAbORrCBADla8OQZ8n?=
 =?us-ascii?Q?Y0fUDIWoAWdxGBA8G7Vt4EfK1uGRMyUn2IIRlAo+Owr6GQ98JL1ErMTf2x9P?=
 =?us-ascii?Q?71kjmES20WAxpSvZVrpXFG8tIW/jQdrdCDqN6bMDS45q/Rb14dhfddH2FHNa?=
 =?us-ascii?Q?1p01hqpzpo4b3sE2VCP5K06R9eG6w4Fk3vFJe1CgKxRwiHZ/A4rm0OIBFRHC?=
 =?us-ascii?Q?3JqrDU6KdsRRhr/EGLRHQtklZieQnn5nns5FhIRnoILO5OhT5pL9LRwMt+S2?=
 =?us-ascii?Q?TD1fmuQpDz0B+Pn3Qt95WZl4ixvlxR11U6KIGXcai3kZqZE62xzpAlM6tnCq?=
 =?us-ascii?Q?akD1kL2ofaJzt8xRxV5wj67hrVXYK+pgySByr1LsywQvHcLr5HBe8xOYh4Xu?=
 =?us-ascii?Q?LuNlIL+yL56cbgzZrGGcnUALINfqrAzRx+o0aIGP7dSWEn8Bu7ozhM3XBKbG?=
 =?us-ascii?Q?5JWYSMsMctN2x+Fum+7nheLAqfWDfQ9qnTXKHozmIs25lXeSfNwNl1ESdgeU?=
 =?us-ascii?Q?WI1j1SHVlEtL2EYDYpvySLx1g0i+Y4y+vkIkQyxM5Zi8Bo7/cp2zWHfTGLF1?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf2021cc-58b3-44bd-4e7c-08ddd46e0b6a
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 22:18:46.1962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +8KbB9dMNMIuN54txh2Xzcxfk8x3l2VntxLASnsqpEV1PjxSvaTahRo+HNFQ1RYsj7/kFSV5BpnojTC9a6Lp7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6810
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

On Thu, Jul 31, 2025 at 05:21:22PM +0300, Jani Nikula wrote:
> Add a more generic intel_mem_freq() function instead of platform
> specific ones. Expose it for future use outside of intel_dram.c.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 17 ++++++++++++-----
>  drivers/gpu/drm/i915/soc/intel_dram.h |  1 +
>  2 files changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 6be3618d4885..193e7f71a356 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -135,16 +135,23 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> -static void detect_mem_freq(struct drm_i915_private *i915)
> +unsigned int intel_mem_freq(struct drm_i915_private *i915)
>  {
>  	if (IS_PINEVIEW(i915))
> -		i915->mem_freq = pnv_mem_freq(i915);
> +		return pnv_mem_freq(i915);
>  	else if (GRAPHICS_VER(i915) == 5)
> -		i915->mem_freq = ilk_mem_freq(i915);
> +		return ilk_mem_freq(i915);
>  	else if (IS_CHERRYVIEW(i915))
> -		i915->mem_freq = chv_mem_freq(i915);
> +		return chv_mem_freq(i915);
>  	else if (IS_VALLEYVIEW(i915))
> -		i915->mem_freq = vlv_mem_freq(i915);
> +		return vlv_mem_freq(i915);
> +	else
> +		return 0;
> +}
> +
> +static void detect_mem_freq(struct drm_i915_private *i915)
> +{
> +	i915->mem_freq = intel_mem_freq(i915);
>  
>  	if (IS_PINEVIEW(i915))
>  		i915->is_ddr3 = pnv_is_ddr3(i915);
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> index 09a7a581d949..5ba75e279e84 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -34,6 +34,7 @@ struct dram_info {
>  void intel_dram_edram_detect(struct drm_i915_private *i915);
>  int intel_dram_detect(struct drm_i915_private *i915);
>  unsigned int intel_fsb_freq(struct drm_i915_private *i915);
> +unsigned int intel_mem_freq(struct drm_i915_private *i915);
>  const struct dram_info *intel_dram_info(struct drm_device *drm);
>  
>  #endif /* __INTEL_DRAM_H__ */
> -- 
> 2.39.5
> 
