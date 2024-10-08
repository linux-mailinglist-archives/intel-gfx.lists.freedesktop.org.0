Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E919E995BC9
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 01:38:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 919D610E264;
	Tue,  8 Oct 2024 23:38:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j8RttUGU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8B510E264;
 Tue,  8 Oct 2024 23:38:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728430689; x=1759966689;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=r307WdzngAVPm2qUF03akYJuxy2xLbyQ9KIURq/6UFw=;
 b=j8RttUGU8cgjNrbvVJBZo9aM3N/5Tlgpx+73Yj9F9ZndqGJtPuGb22Jq
 2+w1ZvshQuYIMK90LQCpjDjQ8XaVOjj+LBbecQs7GLUQspoU0MtpfXnEV
 Sje/pPkwIvJ4wxW4XEoQKpDeM8niXRrXtXK7racIX+VA9pGJx7Pi8fhOJ
 kTv0PabsTzaxSoYJqcS7iQRunqlD8Dmt4eiuCUIeYw1T5ZIZp4VJhY2wg
 s+U1x0kkq2oZjkz5EKtsolBCzdA7wN/APAToM1OupERDsmAwXV8aLPWn6
 tWaQQ5MzHNIsRoFacqYTVr2I7DmoxMPIF5h+duVhvqK8tAyKwjv8dWhWv w==;
X-CSE-ConnectionGUID: nUs/FDxHTfOPSfywpXaQQw==
X-CSE-MsgGUID: l2brTuicQb2J/vQLphkm3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27171852"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="27171852"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 16:38:09 -0700
X-CSE-ConnectionGUID: H+96MTQFSUaSdFoPrJXlGQ==
X-CSE-MsgGUID: YeyEUXq6Qvu1BHq7IJA/Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="80020518"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Oct 2024 16:38:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 8 Oct 2024 16:38:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 8 Oct 2024 16:38:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 8 Oct 2024 16:37:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iLsEachqynO7s8ljN/CpzTmjx6U6+sHKf/7F89rRAENGVKwA3GLyRB6/WK2zkIAPRTz1Faa1eaFm8lBRZbvqUNwA4Rg3GLHAVgONu4uu044s54z0L8+8ylpflf8BUJ6uMbJxrIxO1+OIVc/zvmEZzqlFlATECxTteNUX0ND7pzU7oj4RpHFFbdR0BxNnJJO6hyVtDEzvSoS6UKXHlWk77Pu32F107JXWpBEp1ayYGUDGG8bhTS5Jo9jmoBDg5ld3SXBNxvgiP0KACCfBosz1CFPURcJzU7QksvXJoCahshaYRwOQtz7pCWxKIBQagNZhwJPOtJ3TnrfC7bFhlQgsSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZzahxeE4mITODFxGrzKpsNFTOViJen4H3mG3s4eVgk=;
 b=rgFGukYDRRHXp3QU86efKDNLCUgoRbCic/6IZn8nGyIm2lUivp84vf1P6UNR+YJUYbp0U0Zl6qUnJ4UK9fHRDng8Ud93ohvRXJeuc0Y6TMqJgndR1xOQwkA3uhAhv+yHo4jRWQN5WxOXrvfu7P0wE08Vws7+q+s+q+Z9ys3MH9OorpRKSN+NE5i2lG3eifbruPVS0RQkZ7jp693FzrQy8aR13EKq8jNyW2ab7Ss741yjvts9qpd50r1HJ4OKGIBLmx4HySyEuff6X1x6oxsMBIm6XrnYmcIYtxQi+CfLg5rggjrWgkxYDlJ+pHi7UYN1xA7VDLxC7KzXPqn8Kpuz5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7630.namprd11.prod.outlook.com (2603:10b6:8:149::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Tue, 8 Oct
 2024 23:37:30 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8026.020; Tue, 8 Oct 2024
 23:37:30 +0000
Date: Tue, 8 Oct 2024 16:37:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Suraj Kandpal" <suraj.kandpal@intel.com>
Subject: Re: [PATCH 06/10] drm/i915/xe3lpd: Add macro to choose
 HDCP_LINE_REKEY bit
Message-ID: <20241008233727.GO4891@mdroper-desk1.amr.corp.intel.com>
References: <20241008223741.82790-1-matthew.s.atwood@intel.com>
 <20241008223741.82790-7-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241008223741.82790-7-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0282.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::17) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7630:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b89bb54-456b-41b8-68ac-08dce7f22d02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SVn6CZO0U1WQZKhZbKUtS1MqUJRGuNdiFtbR0ZU5N623/qRWz0bw6g9YBH86?=
 =?us-ascii?Q?YbntlFZEJDiDESJ4H5JiHvEQ77EXg+vkFaItvvLMaKET5/n5rbwfRny+N+dO?=
 =?us-ascii?Q?SgYQ+R3SwHdNW5EdelQfI2Y9ujJcdZTM2JitU4XucvcKw7SQvajLHPEOCxUE?=
 =?us-ascii?Q?oa9+OWgLVh4/qEU4/3mzTMImklola1heSVxh4tKeaAtdMrl/UDMML5jVpJnE?=
 =?us-ascii?Q?Zp0um+xAeVPiTMG7mUVECH8PSKTRR0UITAuMUqm3yuWS7DkR3gCE5xoAtYui?=
 =?us-ascii?Q?oX2+JH79/Z13lJHcliRS+4nwfrezUG6UlkdSKJiCmFdjG18Nl3nMR11MQHwF?=
 =?us-ascii?Q?0AgIqS1eMV2ZtN9ndowb6JF32Iz4bzXPp3uXp5bq+VZ/32+inDg3/9hL0S93?=
 =?us-ascii?Q?M9xpS/tRAOGfkDvWxtb1FZoGNvnRjmeOr3M3B30CVUPXRiGnha4w9uXkIjA/?=
 =?us-ascii?Q?fGOkM/ORji8D8hibLcHNKf1aQaaAFvwBJRa7/EdwVxDL3fiQPuW1xIH0283k?=
 =?us-ascii?Q?M1zsiyMK0hmGJM4t2NsTdndgqiSyljFSQZWSqLgV/TUXreThMqWL65lrAHYn?=
 =?us-ascii?Q?E/zEKi8UOcfWC8jdn5xXDdxLItbgfTbLXNexYbz/7vddp/EFZ1GXrV/qpk1L?=
 =?us-ascii?Q?QDJ/S59glePJUD7CHU9Wxx75gRRb3zPDN07H4LErNWhgrRbgV+Dpzy9IsatJ?=
 =?us-ascii?Q?nih92KeVoz3vYU98BbBiHWkEjqMwbWx7oaSFmOLTxKwxc81O3E8glnyYDNCy?=
 =?us-ascii?Q?HsGJb7wwo1vpoWsswVyZy6/+TVNfOCJjDgIP7v2qcLB+e17t2hMRu3t/Pgjm?=
 =?us-ascii?Q?MCSpiJI8GobY8emg2o1mrpqvbZidSHdU7X4FetmlleC8ITak77bJYlpuhy/a?=
 =?us-ascii?Q?7r45ulxPV42zD2EkO7RgwLW/yTKGpWCVfCSf+voRPvyXGb1RWusKPLglci+C?=
 =?us-ascii?Q?hzjfjt9qmaugIidIaP0kuGfP6hqmAcTfwLy2kzQrmXkrnk1o5UTa0oLFGt16?=
 =?us-ascii?Q?zB1Bvc3u8y4DoEcLEi4nkPQOxJPS0rIc1lrH5zY7t19WxGXW9eofe+TwxAoV?=
 =?us-ascii?Q?KEvNkNvJOepAB9sHzJSHqGwTRlUUnz8norWIlTOP2dkV9xNP2uW4kQy/Hqip?=
 =?us-ascii?Q?+IEgLzg4plnxQSojrzVONjstLTTFcBnajX/67p/mQEixz0aF6JGww+E9nxr4?=
 =?us-ascii?Q?m9Tp+VMNb0O+lILk02b4tHA4Uh/qk8LbpcvLXfNJKD0tVqai9LlP6dLd4YZ4?=
 =?us-ascii?Q?MkWRhd6uxOAr6dNoJITPvVqqTnRJFvh4fDKt1gBIIw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/fTZM6owyKY2vTEgpRIDhl9g+27VGjs/wdrJCd08wR1wz9uOB4LOvr9hIDbg?=
 =?us-ascii?Q?+t/7BYe6adiSE4nE71m7kDxP2lPhGsqwDQWdWQ21RAuN0+wOQMixdJDctyXp?=
 =?us-ascii?Q?7Ib5dwBe/RPXNaeWhmVuRNhiUlbGW3TuBrc1gOjkPETv0HhEpYTRPkgPAOgT?=
 =?us-ascii?Q?n6fgo5HGPxMn2YL/A90uXXYiMA5ESPp7gFNyodx652ShUaqqi5yEvSkXXJcG?=
 =?us-ascii?Q?iTsRCe3yJDvspRifgMADFc7Xu4QYB2Pj4O/IMRKsvYQSncGWBkOH6Amt+xZh?=
 =?us-ascii?Q?S1Ygbr6HPZK43VJDVWNzROfc4Blqf/HG9wBGsYaDHs2tQwr3FymG396H+Zc2?=
 =?us-ascii?Q?ZdyJkVo+lnGqc5zwLwozQl4RUQVNLQLybM1+j2L1NO3Ro9mhrMdZ00PTmZ1b?=
 =?us-ascii?Q?dthl66qjG4SmaSh6z6StJLvTKO25lXCv/2vlSjJuLqoaQPJ3KV5HG9OBqT85?=
 =?us-ascii?Q?TExaKCpLJfQvz5I4kJdVQ6sS55QJSa1tC0cTLPjK/8LUDyCP6aoze2F+F7zl?=
 =?us-ascii?Q?j/7g1XWymfLDNTBcFnFUNJAobZPwBKLra3IDON+LhdUwKhlS2Bb/MmUolJMY?=
 =?us-ascii?Q?keuPUbThLfuikridH2VzAugxFLYcPPHTECkZl2D6jJbbhMorZLiJ09Ag2e5C?=
 =?us-ascii?Q?UTI/pq5eNntvJ5RgzPPfxdN2ooqkJ8oiAu85tXo2+/6+8+lgYjcbJWvh+6J3?=
 =?us-ascii?Q?fbt4MBzS1/VUI+rxKC4F0MuLbVD29AS/EH4tFnqSOY4Q5RIy9kMGqlXi0kYB?=
 =?us-ascii?Q?e45EkBAo1JaLesc2yXPx+DuI+42gdbUdj+RlJbFANXmSr4h3MMoBu1IkwfSj?=
 =?us-ascii?Q?OIObHstqKwUdGSaMZzhdJyOKs5JTDhEf6O3LlupPkswiJBrYbOR9H9yEa+HL?=
 =?us-ascii?Q?lZZgOUoXUpM++da3rObpEf7T9U8Te9lCUZHHOF6c8jOFmPR8p4wsVsquB2MB?=
 =?us-ascii?Q?49nPhs3mK7ZKwZSDdnleuYPGtHQPXE/xivLvQUfEKiBX0zV5X2laooVV3eae?=
 =?us-ascii?Q?0tCCRkBAnLlY0A/FZ/+dA8dxSPcsPQgJ2w2GWxxLEFoCCOWK/qTb2Drm3+xn?=
 =?us-ascii?Q?oEWABDwLxKRI31i816Pgs4FVU4balz+URVqdzfG5+x9A31uf8WHd+0UZ1gN+?=
 =?us-ascii?Q?D+xbZd/D6IwZPc7D4PeT21srjx2NWNaLzc8y5lD772zep//Yg9rQmN1DUCCc?=
 =?us-ascii?Q?okq7WLVYgNepTpgryNLaFUZqj3WTABd99SSvcUZHWO61SWtDi6NoIF72RFpd?=
 =?us-ascii?Q?DNJG29Q8rgy1MuDf0eFVJiaf8An4Ev4/5h0zWRVSTHQwVvtmF1GyasTif1sZ?=
 =?us-ascii?Q?5+Qz+JwPRGMEuRDrOe/E6XdDYkYjtJwPLW7hUcFVRadURBsgahWRgQT2hOs2?=
 =?us-ascii?Q?p6itI+iB51N1g21dJltmdgAAx5iyDYQO/lkUFS7US4eHnKcScUtvgWg7NZEG?=
 =?us-ascii?Q?86QbvdMdcr7E5ohe7q1xc4y3PzLoLtvaNrwaclOugSS+vpKMpf593D1PEyET?=
 =?us-ascii?Q?MewwGg90ybLkswky6GBPGjXYKk+VwEeRvM7jw3uzhpWikO9+djPVnBuxn8Ce?=
 =?us-ascii?Q?lekBdG5DZv3zKB74YAvz8+zrlmCQwMM/YlJ4KGOaeZZHXR/cyiBvKaVTtCBF?=
 =?us-ascii?Q?LQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b89bb54-456b-41b8-68ac-08dce7f22d02
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2024 23:37:30.4255 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qMfbyM/cSYfNYy7kxvWCWSR7ubWQylJcJmjiau+8y6RuXG4810Bc7H24Tp5npHgfsGsijPolCIqKURrQCFQYvUXzqTv07crTLcOlA0AFHGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7630
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

On Tue, Oct 08, 2024 at 03:37:37PM -0700, Matt Atwood wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> DISPLAY_VER() >= 30 has the HDCP_LINE_REKEY bit redefined from
> bit 12 to bit 14. Create a macro to choose the correct bit based

Typo?  The actual bit moved to 15, not 14.

> on DISPLAY_VER().
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
>  drivers/gpu/drm/i915/i915_reg.h           | 2 +-
>  2 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..e9b0414590ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -47,10 +47,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
>  				     0, HDCP_LINE_REKEY_DISABLE);
>  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
> -			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
> +			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER) ||
> +			 DISPLAY_VER(display) >= 30)

Is this correct?  The programming here is to account for Wa_16021352814
which applies to MTL, LNL, and BMG (but gives different direction for
different steppings of each platform).  The workaround does not apply to
PTL, so is there something else in the spec indicating that we need to
disable the rekeying?

Also, the commit message doesn't say anything about this change, only
about the disable bit switching spots in the register.


Matt

>  			intel_de_rmw(display,
>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> -				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display));
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d30459f8d1cb..da65500cd0c8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3832,7 +3832,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
>  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
>  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> -#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE(display)	(DISPLAY_VER(display) >= 30 ? REG_BIT(15) : REG_BIT(12))
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK	REG_GENMASK(11, 10)
>  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
>  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK, trans)
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
