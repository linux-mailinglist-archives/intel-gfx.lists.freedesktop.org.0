Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E170B92ECE4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 18:37:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC5E510EAD8;
	Thu, 11 Jul 2024 16:37:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A/0qcChH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6BAC10EADB;
 Thu, 11 Jul 2024 16:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720715874; x=1752251874;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vsaMcp6Qrmw++3nJ94sGwbaoU+XPS4VObHl2Qt8Bh9s=;
 b=A/0qcChHSfMbYe/1lS7OKi/mdWRoImJI2o+tCYlOfRFKI+Bfff96nvjg
 NgKhziwcdUC8j6NvZ9FZtrUWG5hQubpROqnTuB8kGvuyYteEH3HhG0xVw
 IW37hlIoDWPaHbJM4/J4kPS4lXzWgzpNS9v/gcvBzqMvNtUU1xe+LOzMe
 NSrLXInmxtxiQ+83Fs1TA6pkf/gsZJRIOoAsj0PvOVzQa9ztaE+jU/oWT
 nH2ik11HcZBcGDGI5wL5+XTHVzXmMfd+EJc1IIajMcAGDXyXEP3/PulH3
 gKb3wRw7MuhWwQTFspUcrERix6oM54WyztEVvgsDzPuSytK4UK3VvEmY5 w==;
X-CSE-ConnectionGUID: MmOR+QqpQg2toA8c+9rlgQ==
X-CSE-MsgGUID: AifMmt8lRNaNFzQEa0yo/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="18261554"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="18261554"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 09:37:53 -0700
X-CSE-ConnectionGUID: /V6M6XoWRs2GYRFFAgI+RA==
X-CSE-MsgGUID: C09DAIs3SO+Jgby2BJrgRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="53564901"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 09:37:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 09:37:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 09:37:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 09:37:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 09:37:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iKdycJJE/6I0QZqqAMoehU1VlZTU4a/C6tv6+EyHcUzpuFIXxqRwwsp1nrPExBupfhb6KKBPc/jTu+hG6AZhSVYufDl81pj1qceyZAbunES1MGrZejxsxQ4YvQibRSba2QI6yMw/oxPm+aLAB9iCC0uuDHVin3okl76L5nYmDxh8dfHskz8IkEBknCzkUrn8YjMMWf3baGcmAyosBMk8yVNPq0euI6kK4bmdsRe7m9gpB39aE+nuFUW+hAoS4YFXSWC2w7kzwZffaKiPA1yrELIAgqx+1W1GEis1Ow2iHYiMR3zFHICxj5pU/piYcODxcoNDPFtDZDrXDx96Xf3DoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TG0jwa6njL5eAkxBrOLXXOQabD0MrwwEP8Vig/oOUOM=;
 b=CGHdmzvfyEVz6vld0AwbGa1Qsi5Omp+bCI8kqxnU0GZYSgLfqK2JuZNGv4v/pJWnxIhV6UcVm7Gnr1mb1L3kM5gR9tBLcz2ZQHJ+eaBrb768tq/tbOkPtWcrHd3EkEzxM3IPZNHSehnV6YBWESeSMiu1ECMgWtOFwPrH3ZSyOJi4UBvBzjT7oS6PESfPm4hQhXARbXcMSbWzdoGJcG0s6e/tME3HCDXlx7J4huc7IkCwNIOkQZTaqFeJ2qbl2avbtuhDkvPqFa1aBuBl6fqlc6pNgcdHaM3F/Bpfh1DjndSFUyxuU5VmDKfqBdj+LPjBYQZYI+t77S2npPyTHHEDcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM6PR11MB4530.namprd11.prod.outlook.com (2603:10b6:5:2a4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.22; Thu, 11 Jul
 2024 16:37:49 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%3]) with mapi id 15.20.7741.033; Thu, 11 Jul 2024
 16:37:49 +0000
Date: Thu, 11 Jul 2024 09:37:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <daniele.ceraolospurio@intel.com>,
 <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Message-ID: <20240711163741.GS2906448@mdroper-desk1.amr.corp.intel.com>
References: <20240711051339.3289552-1-uma.shankar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240711051339.3289552-1-uma.shankar@intel.com>
X-ClientProxiedBy: BYAPR11CA0042.namprd11.prod.outlook.com
 (2603:10b6:a03:80::19) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM6PR11MB4530:EE_
X-MS-Office365-Filtering-Correlation-Id: 78934b0a-5be4-4b4a-e5ab-08dca1c7ccf7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?AZeLn73KXnql+mqgwSTXXwlf2XHB3A/sUYeaBkpbOcI59qQTUl1UQ+EIbJ5c?=
 =?us-ascii?Q?rflbxTHiedh+e8Ox1/vNaBjKOs4AVv1+96p4k+esTetYeSsjChCw5Q/GvKwy?=
 =?us-ascii?Q?B8I24/1LRpIQLA1HqqfoICAizwU7rJP7LHgS+NmgaB1W0375XD+d5OT2AbiJ?=
 =?us-ascii?Q?zFZ1nHLjJdKVTaoaWp5CpBSG0EwK4RVy14gxh054qcTW3dSGE1fpHBQEJwaM?=
 =?us-ascii?Q?NH2tCJon9VUSMlYyx/XEqRaVsC8E6vei0fcfJhfgVAToLbY1e6XVTokjNyGB?=
 =?us-ascii?Q?y+RD4twCVLW8ygV/Gp79ID8Tnqx+UV8uOJ/PhrKmEvU6sYKCjpiLa1QtiOOi?=
 =?us-ascii?Q?U23zWkAYLtVcD1ip5OzQyjAHpdza63tqoIOI+UWx38x13YeGCrggdarZxuC1?=
 =?us-ascii?Q?zOlFeMhTztI1TtN8jcCVVMG47w4Fzy1ieM/anOD3jFnzSlVBYoF5c2/BXTNr?=
 =?us-ascii?Q?4GN3lqjWFfrAJkWLAhCCvTEfAvwtUuiksELCx7v/P1PyO0TrnxfSERCiD290?=
 =?us-ascii?Q?SdSWotNwkYXIIsDDZ48JHUBMJm14E49ZVdgpFe7T8A1HRP7fLM19Lj/lvpRd?=
 =?us-ascii?Q?QCbgsG66YWEvmqKfl+u9+1VRyz7t0lKTwGt/wA3wOWeVrSxwRPhZxOBvy/VQ?=
 =?us-ascii?Q?/KjeEpOFgH4XrEzk78Y5VWQjcmfXgd0R6kjFI1F8hAoDqkLXMGWDTrnzZoy5?=
 =?us-ascii?Q?0jDyTKIMdSZk8p1JSf9RHSwgTWKxMIQv4Ijyv5pXDGN2TQB2qeMccSOK2ZmF?=
 =?us-ascii?Q?iwHdQB2l51kznfTmYndBNRV6bs58lNTvb/7Sij5MXmWELGNlkZoT2pj8o2WO?=
 =?us-ascii?Q?QRBKTiEO4tujDCstEzRAQrPEyP03Uc4Ort7h0fMUYl06VvzEO568uKR2o+Is?=
 =?us-ascii?Q?iFSFDK1uenu/woDORrskUeAWhWDb5UV8U+EkGitIyI13qgCdWk0Ew9lgMZG4?=
 =?us-ascii?Q?zjbKofKjF+lG7ymMJixdX+Z/4zuS4qfXfpKqma2N4JUPYZv0gQASrjQCFn14?=
 =?us-ascii?Q?JkcZXlcGgeYCOHODaCynSUfrcgaoRNemFFq1yiuRV1zDLeoCIl4Ig6PeXQBt?=
 =?us-ascii?Q?rg2xgPeWXjpLwgjbUMoKSrqJO7tvX5YRzUi6V0u4SCo2+ClTRwPUnxGk/h4r?=
 =?us-ascii?Q?vetIwT+qZUyVaHy9EmNgxxnG2YDaJwaTTMVQEbfQgni4WXcihCp+an8tectQ?=
 =?us-ascii?Q?sjezW5ONafDAooQLw8eWV8g6njTTwumRSLYBm6foQOnks6u946+1lxj/15IO?=
 =?us-ascii?Q?rrBQIXxk93ZaX2iR9UDME6iR2XaoC9eI7TPsii37JJ/ueqZt6smZGRDmDhU3?=
 =?us-ascii?Q?h84=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mCOhwAOc5mAyIylpNVCT2MGZy1PbBQH2iOfdaTclCfDxqCvqbJNHtRrj4Mu+?=
 =?us-ascii?Q?fpX5LRISOZH86ZraZkjpRMP/bqsikHf+FCtGnyDGASoPry5NhsloLixBJwjq?=
 =?us-ascii?Q?/3hFcRi44dtAXQPVJcn/Ix83u/fcpz7fgmAA8M2ZFxYxJ9rnzKXc2cGGjX7T?=
 =?us-ascii?Q?gWD0r0BC1ncLm61kNm6hGJArCkzUuX0PFJS9c7LoCMUJEg0AFIi+c78YIPIQ?=
 =?us-ascii?Q?02h8Q4DUAUPWIH8jnzOMxDBvFT2SdJKpanFvA5RY6utlnqIqA9pUkQ4Bwq0O?=
 =?us-ascii?Q?PNx5RQfgxQUZwFJQk3mMLMTpvh2ewQT+RuunXJy5Nd03vF1BrSzboSfAwCwq?=
 =?us-ascii?Q?G/j/sLd0+e1r0mDA1nwARAOfWHWWlkt5h/Um2rKvQsDwwfzToolrgYr8P7f5?=
 =?us-ascii?Q?zy3QLaO7bowGF3PHQ5bvGpNgcbRFGknpapNi5miLxElHWGEOnHQfVqZ5WScA?=
 =?us-ascii?Q?+jFsvpZxcm0ZUN8hOnfikqdIPuEZOjJdFuAndQPaUYo9Yaf0s8h6Rc45iePP?=
 =?us-ascii?Q?z5raFYFeZo+n2GMYDt2KJozBtdNtbTiup2pvc9ABxf5wXxVgd2aaH9WUthVO?=
 =?us-ascii?Q?TIBqdYhNsUpowJ5Q9KgzKbUCKvtbxb3O9eEE4ewtpovJrwRAxNODKVXHY1nz?=
 =?us-ascii?Q?AR8GB8Z+fQSKx+kkaW94xN9ELoQ5tR1JamCrg9/aijSod2yjSPQJTthtnVAz?=
 =?us-ascii?Q?/Ti43xmoj6CbpeSYfnymXRt/P2zs6HqPj3FQmiCvVk9hkJXORyVcJ1TemfC+?=
 =?us-ascii?Q?byjlBPcMcGHHqYvTYSa9OrzdzjbHp5WHLxMIyLwMzA783pc4AvFEK02UHjgh?=
 =?us-ascii?Q?/RMw4BwfIKU/gUvo//TBBkiRKWcpnB8wyIUxN+2AmOhkLZoGdSEYcLKqodna?=
 =?us-ascii?Q?ZHdX2ekwWgs/bCffds4yTDu+tET9G8VJTfefP3O3svGfomlHLZuLBKO17AF0?=
 =?us-ascii?Q?YrT4IFJLI5nRODwv9dZsK8Lg4ScURzSACsSo1vTgfhSutHQnbE+29wqCUcBV?=
 =?us-ascii?Q?dS57znNA9qc+tXKtZ/Ym6XpdQbtIbXxfCD1xmcDnktvAATyPE+yfjl2oh8qw?=
 =?us-ascii?Q?XgxPzRWUjJ7J1LvSghDq4JHAmdTqBLfnej8vA8jVnC7lnr6SOIe/bK505etb?=
 =?us-ascii?Q?Hl+QCLB2ysG38NUFuDrY4pcnyhSINb1FQvgX9z+R/rT+hKjTLSdpj+qVHoxR?=
 =?us-ascii?Q?vK/JpUF8xPlRHcWCiXNiIXvgTLf6BUyknyVu3iN89TWGcjBEGdcl4uhMv1sz?=
 =?us-ascii?Q?RY77L0lqC1D3DNM3C9SEZnulHt+Rx+UIpzakrdezx9sTQpC0HsjPjbj9ctKe?=
 =?us-ascii?Q?8AbaryrJ+aLtXSoXa6pslm1ps+V/zF1ISSeENaljWK+9m5WnoMMA+Q19uh9g?=
 =?us-ascii?Q?1uChFuid3iCp0/N6qjgsiwfgjUqlaZ8jUChSNslahpRiddXsSaWmHgv6sV/O?=
 =?us-ascii?Q?4mtRMCtdFeZkf7QB13vGbWDE/x29WTy6NQzMHuFymBhflrzhehRxF7zZBfLq?=
 =?us-ascii?Q?0jwbUzMOEcsTdKuXG9Yy1iqmnXJv8mnSlj0kKTVLqNKCxDeQeeM6qv7XAct7?=
 =?us-ascii?Q?PSDoNjIAPMl4I1XT4Mm4qXNkZe1SCQQb5S1nYKNWGNcngVfXZo79ABGT77lY?=
 =?us-ascii?Q?wA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78934b0a-5be4-4b4a-e5ab-08dca1c7ccf7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 16:37:48.9973 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 23aEVUq8+x2A9I5qgJH0ekzVdD6N0cfRUrtTs8SZ9S6JJVfUty93seAkQfSIWol0JZtA2wMtsIkkqSdUXJawEPYCtLGravFIN0YdVpYwqp0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4530
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

On Thu, Jul 11, 2024 at 10:43:39AM +0530, Uma Shankar wrote:
> As per recommendation in the workarounds:
> WA_14021987551, Wa_16023588340:

The first one here isn't a valid workaround lineage number, just a
per-platform ticket number.  I think you meant Wa_22019338487, which is
the lineage number that can be used to track the applicability of the
workaround across all potentially relevant platform(s).

> 
> There is an issue with accessing Stolen memory pages due a
> hardware limitation. Limit the usage of stolen memory for
> fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and

From a quick skim of these workarounds I don't see a clear indication
that we need to avoid using stolen FB's?  I thought these workarounds
were already being implemented separately (and aside from disabling FBC,
most of the necessary changes are on the GT side to adjust frequencies
and change caching behavior of LMEMBAR accesses).  I.e.,

 - Wa_16023588340: https://patchwork.freedesktop.org/series/135699/
 - Wa_22019338487: https://patchwork.freedesktop.org/series/135460/

One other nitpick:  we've been trying to avoid using "+" as shorthand
for "and beyond" lately since some of our IP names contain literal +'s
in their name (e.g., Xe_LPD+, Xe_LPM+, etc.).  We don't want confusion
about whether "LNL+" refers to "LNL and beyond" (as you mean here) or
some other platform that's distinct from LNL.

But in general we usually don't treat workarounds as "forever" logic
unless they get written into the spec as new "official" programming.  It
looks like these workarounds apply to LNL/BMG today, but we shouldn't
assume in advance that they'll automatically apply to platforms n+1,
n+2, etc. as well.

If we're making a concious decision to apply workaround programming to
more platforms than it's technically needed on (e.g., in cases where a
workaround doesn't have any negative impact, but applying it
unconditionally simplifies the driver logic), that should be called out
specifically in the commit message and comments to make it clear it
isn't a mistake.  But I don't think that's the case here, since
otherwise we wouldn't be bothering with the DISPLAY_VER < 20 condition
either.


Matt

> assign the same from system memory.
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
>  2 files changed, 19 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> index 816ad13821a8..8fda8745ce0a 100644
> --- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
> @@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  	size = PAGE_ALIGN(size);
>  	obj = ERR_PTR(-ENODEV);
>  
> -	if (!IS_DGFX(xe)) {
> +	/*
> +	 * WA_14021987551, Wa_16023588340:
> +	 * There is an issue with accessing Stolen memory pages
> +	 * due a hardware limitation. Limit the usage of stolen
> +	 * memory for fbdev for LNL+. Don't use BIOS FB from
> +	 * stolen on LNL+ and assign the same from system memory
> +	 */
> +	if (!IS_DGFX(xe) && (DISPLAY_VER(xe) < 20)) {
>  		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
>  					   NULL, size,
>  					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
> @@ -48,6 +55,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
>  		else
>  			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
>  	}
> +
>  	if (IS_ERR(obj)) {
>  		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
>  					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index 5eccd6abb3ef..80dd6b64c921 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -104,6 +104,16 @@ initial_plane_bo(struct xe_device *xe,
>  		phys_base = base;
>  		flags |= XE_BO_FLAG_STOLEN;
>  
> +		/*
> +		 * WA_14021987551, Wa_16023588340:
> +		 * There is an issue with accessing Stolen memory pages
> +		 * due a hardware limitation. Limit the usage of stolen
> +		 * memory for fbdev for LNL+. Don't use BIOS FB from
> +		 * stolen on LNL+ and assign the same from system memory
> +		 */
> +		if (DISPLAY_VER(xe) >= 20)
> +			return NULL;
> +
>  		/*
>  		 * If the FB is too big, just don't use it since fbdev is not very
>  		 * important and we should probably use that space with FBC or other
> -- 
> 2.42.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
