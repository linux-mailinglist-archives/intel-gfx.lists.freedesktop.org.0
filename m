Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0BB9B0968
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:12:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 541B510EB18;
	Fri, 25 Oct 2024 16:12:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bJntGTaF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8054610EB18;
 Fri, 25 Oct 2024 16:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872746; x=1761408746;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dbjq02d0qhTVWY4CDu5ViUnuauHyudzQjCCD04AxmGw=;
 b=bJntGTaFy70WCHyh/nswqLFbap0qp3J1Qmd00OvhNQ9/59FApaQlYXQI
 wSj13Nrv2kPK9X5CmFP3q812Mou45pdxUUQfGUVPaQL6VIrgcIpcx0uLP
 w247QUa2NVBCsZldRro5qp5Woc8ewa0S+i+NrNC3nfpPwjct1rkC5ATJX
 t5KJ0IymI2vA0/i49Pw/mH6eh1f3ar2MkeBunNVw74jPDIZIS06cMAkE3
 8iH0EBJdHCXRhmUxN3AVvqtQ780Lz3rEgjRxRrcp4FIm89c2tfyGWNm7E
 TegYr5S4oDuTKpTPkHldj9ngjyxdK0buVLbt/FUDBqLNdc1qVOelX01PJ Q==;
X-CSE-ConnectionGUID: 2F2To9XJS/WyTVEeXtvzqQ==
X-CSE-MsgGUID: soPhFgT4QAeNczO/wR9yZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40652075"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40652075"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:12:24 -0700
X-CSE-ConnectionGUID: KLs5EIl+QkuG8u7DMC8YYw==
X-CSE-MsgGUID: mPa3FDuXTEuT2rp058N/Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="84909046"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 09:12:24 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 09:12:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 09:12:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 09:12:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ueWtJ7nEiQs/h5K1RmUcSVhJrtN5/wb2QQW2ndio95e4ejxcrACjo5AWKSCOyOqpOBw3nmvKIMyqd81wrUnyczpwaGk/r34rc9icrRVrWZx5qsbQNmw0/DxhQSUocJswOUHJq7zEaMGnL5iQ2tNr6ce5gF6YI0BbgA8A2+HH7xr5LyMexS+jS2YCSHAwwDBTC8WDksLWLbBCxQD+7attLu9gOetg44S2Mx0JRm82U4riH9f2CR4Pmyoy2QHnslJ+yZgaIoqUOd9ARGe0vx69x1ta4+8jq5yX0yrKYYdLxICtfeGQNOT9KuP85/xF2ynFbiv5Af00UhJx07TQE0ELNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BFyLyr8Za+fF4EONPb7Hy6np7nK07Kw5tpgs0RZgktw=;
 b=pzFKcofN9+1THAEagQ/5HkEC/gwMbYENTOto05JN3tksg/NsS/l02hLYyCAN34IS547AbedR+UWKEP/TgFefx3X+efJqnvkz3QuRDWlxZBSsdzOZ3osBM3H2ubXj6hUMtZ0aRysdPysPzgjUf8fQrha3wJO3UnPF+GICjPi2H2WC3UVrgL9ygocshc6ejc8ooBY0p9m+jfcSA+c+99hhRsT0IX/ydmn4q24hBHvU94wgrSdZqpGqtKU2QGa4cecw9aiUoCqMPjl5hGuBXND9g/g/dvq4P8zpAXecl1gz0FUkqYQvKJkvVzt3Ywn+ZSWNQxSdVQza1Ax4HUEjbfqfag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB7030.namprd11.prod.outlook.com (2603:10b6:303:22f::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 16:12:20 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 16:12:19 +0000
Date: Fri, 25 Oct 2024 09:12:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <daniele.ceraolospurio@intel.com>
Subject: Re: [PATCH] drm/xe/hdcp: Fix gsc structure check in fw check status
Message-ID: <20241025161215.GP5725@mdroper-desk1.amr.corp.intel.com>
References: <20241022072920.102033-1-suraj.kandpal@intel.com>
 <20241025160834.8785-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241025160834.8785-1-suraj.kandpal@intel.com>
X-ClientProxiedBy: BY5PR03CA0016.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB7030:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c86e70b-7bb8-425b-1a6d-08dcf50fcd29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UkI2rkSE/3Rb84AP92cFef23flfrUPpzCc5YAyJyxcCVEk3oIBdn8OuQ9KbW?=
 =?us-ascii?Q?GQlq5TkcFUwqCs7kjF2Kigub9ZO3c/Y1+fOy8cDuIF3B9KNIowj6sS5A0qvL?=
 =?us-ascii?Q?xYAnO8IJP1i+72+zfeZdn8/Z/KIoTci1B36T+d/vBpp9TCj3F+TT6A5aHlMC?=
 =?us-ascii?Q?5YSylHD8vwZog3HZq4sVIsE5GmZS8k+7/MPOujnlVZpEEQsheSMF6P8XLeQl?=
 =?us-ascii?Q?HZSTVDRHdAb1Ip+N2FPNkjCaEi1AosL6EZeOyF4LiUOHD+WxR02rjUNEY49g?=
 =?us-ascii?Q?x9SEGOXNv/ixNr4n6dRoy6C6AvNvzUFkBitpNeiHJOH2X5MbkgFloTu9Sklr?=
 =?us-ascii?Q?Xj5+AFpFadGvx1Ewq7EDWoZYkF1K1dK9ZVN3dk/mk+IuF5dENlv9zdgdpyUg?=
 =?us-ascii?Q?MThARyrWLGVY3KkDZuoR8n1gkK4p1kPmJzVkUa40zDyn8Efo91R6ndg1Thp0?=
 =?us-ascii?Q?H5KJ5mfTjgB82MSDSrJ6bBRBk+5mLksMISicGYHMNQSWLuGc1ULHaBY/QQMu?=
 =?us-ascii?Q?eIBFFltZUhaW3H9yvaNN+LJ4H+IYOn+4krgRxY5ayaCYzTh+41Wn2zjf2r8I?=
 =?us-ascii?Q?sIfbH0/Ce6dZtv9v4lcyJirrtDTpKu/6WEO5axq3cyMrNZbM0kwFK68mSZHg?=
 =?us-ascii?Q?fyt2sTaQLUgHzQlWaO7J9N7ox2eZsH4TSuhYWhnaunAumD0XFbVdZS7eFc4U?=
 =?us-ascii?Q?McoAFA+XMeJkW6ELbomuq6aWzOaXqw401UO5HhOsqwXPgvu54DLRZZbhTsoA?=
 =?us-ascii?Q?d7J+9ayaZgFIyfoB6CgQG4gn5isrqMwCnqzIf1meuR2sHtvNz50RY6c7NE7X?=
 =?us-ascii?Q?bCKhdwma5+WST3kpXEzaAkPLLm+wtkKjRY46/OHl4wmGEQssQ98Z89Zvxv9o?=
 =?us-ascii?Q?+hXLG/HyPbRuknRqyy9ndcnA/X7mYUdccPg7ImxCgId3LZvaI+RN0mQuaolm?=
 =?us-ascii?Q?QA4wYb+LVZO6Gw9Xgi60zA1bEmh8pKgUXz+4GWy8x5+y3q9bNd3omW78GiIg?=
 =?us-ascii?Q?hZV2qGUUloMoWMVQoOugW6POCV9kmjovhIaUZmH64g9iUnzHdlN8dqDEi2+M?=
 =?us-ascii?Q?lDYVWN8SREZBfgH8/vczZ+ISBowIK/vtfMOX/xuaIYDU537RU00TqdGq/v6T?=
 =?us-ascii?Q?txlR3vZl54ea7jhvCfnL0YgtpLgeFi07B3yUwqatrU/2Mq6GqLPbDU4okI0O?=
 =?us-ascii?Q?DIDi4R6KPs7I+peTtQXJuZZr9Qe/4DkMncwdoTFS1g4ILv76K8yaf6yzDQlE?=
 =?us-ascii?Q?knBV0eLgcDF99pOnp8KQyxW7IadL6mi8lellHG8eQijwW+zRvu2IRXcinEuL?=
 =?us-ascii?Q?Iz/3GC99BHtxaBIw4Y01E11v?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1mZuynFNyA1yuuz4Q4fWTXvXs5asQU8pN1XeHP3NV3K4+t4jsYYWkYQ0elvL?=
 =?us-ascii?Q?5ie4w5hDxbps/GSaAamFimOBaXQxLjDrpBCZbyqBZ8Cv5BxNmao66Hyth5KR?=
 =?us-ascii?Q?kiB7iRe4C6LBrOa5CEnGcxgNExIFIydCl0SAeZpR3oaT6lLoy8XLDErcWSKc?=
 =?us-ascii?Q?xTa1lOZ/dSXVfdDZcRjUAC/2IZQhwFs7NNWT8NJToMURTzkos3nKxl4MztDp?=
 =?us-ascii?Q?qyasz1k+T2tRgpd+gs6yhoU5TTX1L8FVGLVbP0Gz6ykDP/r0EslJbRGsiLLl?=
 =?us-ascii?Q?KnKprTyOZUweVvHjtF2PpkA0D/xmorO2kTvmPpIfw5CTihw0gyQRE6p59M3K?=
 =?us-ascii?Q?iNHLRCvD1l+WEZpGKZzb4NBHU9I3COy+Ji7AsDQoC+Ow5iyWMPdspWdEkHBj?=
 =?us-ascii?Q?RjkBKwijD/j7lFIp43ZuAvHNSuh5Dq+DOIySuVkCQlxY37ZW00PSI3FF728L?=
 =?us-ascii?Q?XwRoMU57l7SLd001WVEqJxhWWjYF7vPJKBgNmnlUfKa45QDDcV9BuEnvDXsY?=
 =?us-ascii?Q?nkPva8RpYUJ0+VvW8B6Nr7fszEs/cJ6qZYmO3Xx+U53le2+UJHK9KnQfLPhg?=
 =?us-ascii?Q?Kf8bys8F+h8lmdwYuiV5tn4bJIYs1taL3dnVgFankHhF/GmztoWEOe54vWWs?=
 =?us-ascii?Q?a2K4Jtx8EdAUeNv6ZYBh4upH0TdY6FtqLB6eqClkvJdJstPHbanbRAnniJf/?=
 =?us-ascii?Q?CmDU52cqnFKt1pN1kZZ4OPkzBpy1tcWmzq+wQ6+HruT98J0/K0eZfnFsp2NN?=
 =?us-ascii?Q?nzr3g5aQQMT1bQDRfpnVhRrRy0nhvFxF9VkN4TwBTSWDi+7vwBfBQVAPy75j?=
 =?us-ascii?Q?R9hoDAMyTcyuXQYk4DHHoe+zESDokhYnAhL8ZmdLAKb9WYI32hNdhxqflCum?=
 =?us-ascii?Q?J8nFew0CAfJnIOMR/NNaWtEkUE9MOR4SYFXfz4Hya7MzlBcmvEmTZeJFGnD7?=
 =?us-ascii?Q?Nh7Q86UaQVCTTXWHQaNPcAy7yRqltCoP0SZEZ8+u2o+TiTlVCwg0ciK87fxr?=
 =?us-ascii?Q?B6yNDcU4fNbLBA5ramyAu13I/jHR2gGjvtWquZilv36BOiEiqJUeU3edERfg?=
 =?us-ascii?Q?qnM3QssqXjX86iEd7K7ejnR4vzSZwypfJr3UGZg0hIYmKsVUdkJggapyShaQ?=
 =?us-ascii?Q?QlLDbpOG7Q2P7ireu5zW+aLnwtYsTYNycvFpicqBIN6jzi0Ss6bzBrxBXHuJ?=
 =?us-ascii?Q?4Pp8VAuSt7sto5G/UEPpa/55gjZTSbeR2cy2C+gU3+ObQR+L99bGL3+9NUdu?=
 =?us-ascii?Q?77cZBYQzv9JKT3UI6j36DqkoWS/IUdLLD3u81nGI2UI7FxCCpHjrBvLNgEXe?=
 =?us-ascii?Q?Qpum+ott/9v45EwJU14F+qe0iG+dJw9Uj06bhNF/qmdqUU8uPlnZCckWVGwt?=
 =?us-ascii?Q?nUhGJolpUEnRiZ0uS0YAjHQ/PH0TvHhQFy6Stnk15BNyQQaJkH/wvfvinr70?=
 =?us-ascii?Q?VbcCAgKoJoPMlBBao2wbNR358Uuyii69A4fTcQK2ztOrpa6B95Ag/w8TbtPq?=
 =?us-ascii?Q?6UWXy3ZZtFiHAh2F0bjfTzgcNjAO4Qzq644lySxf4bAvBUyq86C9L5xBTfhN?=
 =?us-ascii?Q?yuAaOIHR68QazPAiszbGsHP2+Mijub9xfIsqu8XJ0qO/XRDHHuB7o/P+Y8oQ?=
 =?us-ascii?Q?Cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c86e70b-7bb8-425b-1a6d-08dcf50fcd29
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 16:12:19.7826 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sX+zfTZcuiHIN+RXkynRwbMOveza/qmTOqr/C9zM6WYcc1wpO548zi4ZrA+ri7GzNZbd1jteLSYuiOGeyBorBY5nI6FvDEctB88WCpuf41k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7030
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

On Fri, Oct 25, 2024 at 09:38:35PM +0530, Suraj Kandpal wrote:
> Fix the condition for gsc structure validity in
> gsc_cs_status_check(). It needs to be an OR and not an AND
> condition
> 
> Fixes: b4224f6bae38 ("drm/xe/hdcp: Check GSC structure validity")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 6d34b55d72bb..7c02323e9531 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -44,7 +44,7 @@ bool intel_hdcp_gsc_check_status(struct intel_display *display)
>  	bool ret = true;
>  	unsigned int fw_ref;
>  
> -	if (!gsc && !xe_uc_fw_is_enabled(&gsc->fw)) {
> +	if (!gsc || !xe_uc_fw_is_enabled(&gsc->fw)) {
>  		drm_dbg_kms(&xe->drm,
>  			    "GSC Components not ready for HDCP2.x\n");
>  		return false;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
