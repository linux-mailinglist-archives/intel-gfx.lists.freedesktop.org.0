Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 688A1953ABB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:15:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F64210E50F;
	Thu, 15 Aug 2024 19:15:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ko0ElNWj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BFA010E50E;
 Thu, 15 Aug 2024 19:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723749312; x=1755285312;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=G7dnTV2c9BqSFAU+a8nk0JlXgrBVOgyf4+pCrlrXXhs=;
 b=ko0ElNWjdxYpxduf/Li9ODHNrmKY4+NUDBXg7d8nGRRsS+GkFyYAmK4X
 2Fl6iDZVfDVIOXJdyVZoRLLOH2WfadKyxSf9gPjvebWWqsvKX972xuF+g
 q4pcGXltUJEMk2hrOaf1wjatpTwF4ljhRQWpfRrsdp9Zk7+SDIh9lrxY2
 d56QwryTKvTuV/rj3t6mrkpX3ypd1DXpqe3YbUK2Lo15ejstBCd16lgO1
 a9PRJIzp1NcdMc/qxlyDVgf8ExOxSEMMS18rp/vm35z/jtM/RrDGTg8av
 pnLuoVQSVcd2tgr9Tl+KBPmubxbu+wEqFEkcvq3e0ZhQ4mI6bnlrmN1Tu w==;
X-CSE-ConnectionGUID: cnfsPcc2SJ2jStDg4hLcAA==
X-CSE-MsgGUID: NDsjblkHS6OqvnOGSuxR1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="47432868"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="47432868"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:15:03 -0700
X-CSE-ConnectionGUID: aL02DjsjQ82b6g4Ij6ZuWQ==
X-CSE-MsgGUID: EpNU79uOT5uG5SbOF0hWMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="64125116"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:15:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:15:02 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:15:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:15:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:15:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eea0KWsmxNxjVjVlRdWcgx3PL7aLbKn6qf87yeeIrCERf4H8JcqZy4kzIY5FBIS//A/wBaugrXw2y8pfheMUb9S5pCSP0kjJB1y0CVZ5TYR3h6ZF0opcYjiykR4DczuV6ymbc/my3UI4T8qSzOKKxQQPHGCShfS9R1I3dr1AWarTAt+c4iRr8mf6+08nk8IZPMbSMwtiqcrzwZYlfPqCCszTDdasJVHTrvy1ziLUFQP23QoGMM0FPf9DLhybYoPrM2ol60Gns+PbOFRBWHI0R59uauedVEVp0+9z8uK+KImf5k4tZnwO8gYPW2fj/3rVJItO1979IvTBP+DMsM3U4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1B8JlC6xU8oFVAqEUqI81C5CBvHR94mLYJ86H2zjx2w=;
 b=vo3QAtBJuNswvfVzJnhlcUfUGKUZUdLReEeiYBnb9KsPv0I1UmX2nKb24sdhRw6tEanr1dyfwi/g0zFjlYeENsngj6DHlr+Yhf/+qGE90uHydMFKZLqIdCa9k9nq9pypM7d8myx0UuIwTye7877Xdm5aPnM5W8CucPNgQY/Bb59cbjNjE1Ava35luTjMvhr84OlHglwVXvajwLr/wLirm7TlmkHoE4yNTkeWhcYvIBqkTuvCq3s7VCQmdCnTOeaNkKEeMzw+6KAOwx8eCxK2Sb7rcVfANllcztX0YfoNKX/7+v1F+TGD8oE//FhqvUjdvS4Nl+YfaOCoUNnJDT/n/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6513.namprd11.prod.outlook.com (2603:10b6:208:3a3::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Thu, 15 Aug
 2024 19:15:00 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:15:00 +0000
Date: Thu, 15 Aug 2024 15:14:57 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/7] drm/i915/alpm: convert to struct intel_display
Message-ID: <Zr5TsY4D7dYYgwMP@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-4-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-4-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0259.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6513:EE_
X-MS-Office365-Filtering-Correlation-Id: c6662426-859a-4429-dc04-08dcbd5e8e9e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PH5lCebcM4NKuSA+T0x5bMB6FGNdraW/UaSzTjEiR8J6oaSw9wjg3y2/iCLV?=
 =?us-ascii?Q?4vAIShVjAt+7JXElZ7q7dKnpDIiYzdx4tEGUgtqUZJtxrzBRgIjs2vN0C4ED?=
 =?us-ascii?Q?3NsHL/uqBxOjnb9nipuXX0YMqPaEA9gS1wcRYlGHxA+GL5Uh7YTd2f3NrhGO?=
 =?us-ascii?Q?dXHx+LnJDobQfPbkeurSRhEdWiwqvvXE27qoVdCJCJU+s5i2I+jVkkGbF1gq?=
 =?us-ascii?Q?3J2aRTvSQ5VrEteJ628s0cBLl+F4hYiuHuHnAz2dIBQ7er4vy9L39/6f5aSd?=
 =?us-ascii?Q?GzFoqp8MY4dliT3EergQCvQ89TBpPQYsyEPgCDW6OfA7C2nV9gKkexQQL+Mt?=
 =?us-ascii?Q?vz380bC1aVLvvMb+WUxve4VUuINVhRT9X0cI6SJkHNCLPpxbHpFLjaw3emLh?=
 =?us-ascii?Q?6t1/+gspC+UJBNZCqdFIeE5nfBdJtkTybAKEz7in8bPvVJNm5E5LlJG92r7y?=
 =?us-ascii?Q?tFYLFX3FqFkNmME8y7/zp4nDUXQS/bFD+jPx/z3TFOXO41iEl7UGpAHMuF3V?=
 =?us-ascii?Q?9ZdncFmw71PSif6IkSac6VFJeQvfJ84j9hJGNg9Vr2dWdKuNf/WsorFBGZMe?=
 =?us-ascii?Q?Fk8xnAMqKAxhBj+CWeVJtFOw2gncfgrc9vzrygIQwWEI2shuViaz/K10Q5fN?=
 =?us-ascii?Q?eXysuP3Q3v7u6qYWmiGk2b69GVF86qqsZIjgviLGcpxY5fWSpe1AbKSGPcdO?=
 =?us-ascii?Q?rTyUWreadrnsSX2ssdme2bo/Of7PQQW9fdXGRKIHNpEwVnVhM1xyxh3b0UIR?=
 =?us-ascii?Q?XEGEY11AKpDnMTt7Bs6XJ7gHtk09QzqCzLE9X6dN2h9JmcjhaCJA5FFoANMf?=
 =?us-ascii?Q?3b20AWTM3mQ9fLh33aMFVfEskD6b8FJ79VXA23e7f6wLoJ0JwHKnGxS5hShL?=
 =?us-ascii?Q?KhVuNrXtfUy1/6Gl14/WVvJsYgFferaMACFt4TKYn7zqgpOBHAYKXuKxxkG2?=
 =?us-ascii?Q?zbHSQfQtl7Oiz0W45zirc8XSGXEh1X3zqq5KFlTLgy2D8/xFRUJC1KVDR1XC?=
 =?us-ascii?Q?Ado8BpMWmxunb46Ik76KoiVHgnKk5QnCiZ8vA+LmbcPS6zApTeBqEaQywa/5?=
 =?us-ascii?Q?+jmFVrXzaCDJ5nxImBDqDWvhKZTUQtghrb8Pgq4SFuXs7l9measfCgljIscp?=
 =?us-ascii?Q?oG8Zk3GY3TfOCUsUQmlhyGLO76SDruzsU9LoOGulBCY6wub4BraAedV+Iksl?=
 =?us-ascii?Q?AngxQhnrdyxcbVYPygUJRhZuINQnl4WeoNUFdLdhVywCB29EvLp1x8gSmvEC?=
 =?us-ascii?Q?LrnfHrQQjeoiGpJaLU3QSPKcebhWniiCWlI2sFMeWRKZhWDOC/EqM5nghGDD?=
 =?us-ascii?Q?vs+X6UTwatPdCHUjIGmgGYxDlYBLuel355KTKJ2LH5D9hQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ohA+sqrvs0c4sHzHMBt7YuURfDdLFKCtsmZajmrc6dCCXqqyfaOmZ8HKY7NO?=
 =?us-ascii?Q?zUd8ppgRkz+VdTuR0VYyks/MsXbA1omj9683JnOS1b889d6l0vqOwV1TYjYg?=
 =?us-ascii?Q?qUG4ZFWW41OpVn4KnajqNFo3sDcek67zf2rAqvrGYtIqVSMjGKqT8NE78MYH?=
 =?us-ascii?Q?iz8Gb0YqxcUdXwErThaZ9iCZQjjh0ujWOX6IZteepXlwt14S/zZ3KrgDvI1U?=
 =?us-ascii?Q?sHjHXqXQxmprhGMQflP6QkVV2Ebf9Pq02YRqbkzY2RBD11a4tmGIJFUpPjjg?=
 =?us-ascii?Q?QVx8et3fJpgosgD0NEGYldTjUbpTXY/ZKMIABSnUZhcfBh9n1jLVENl2SPif?=
 =?us-ascii?Q?oxn41H1zjE+yX790QI4T1IjKgyULXHEXPE5gt0AxpdDiSIAUNN03yezfJnK/?=
 =?us-ascii?Q?My9EIzPKNffhyAFnTzYCwvqhpuPHxCo/xNQS4QpttOXuQlcW1nQ/6puUL1so?=
 =?us-ascii?Q?MwVxXmDJYsdzJ6/buLPyno14D9qaQiQe5ff4MAFtXab1wguAHYfsSKnwd9AQ?=
 =?us-ascii?Q?E0fkasN8BKdc7dDmvOcJm/8rfoe5WB8K+/AF+XTwjnXJd4IZzOofH1TbKkAv?=
 =?us-ascii?Q?t1SzlKxOyY2U8TWfKOGJWwpSqkWF1xtBi/z8Q2yd+S7fbGZoEew6WPGzvAAN?=
 =?us-ascii?Q?rdMfbjctvPnaaOU4nxPpOhlRUhPMcBM4XdzpHFdByiP8IXafbOa/6DgWE1/F?=
 =?us-ascii?Q?H+wqDrzCUD37QnJ+qUfJYRZYuJOR86S5nTfW6a77gCbJP3ycGVZJS6yeYXeF?=
 =?us-ascii?Q?CN/3oEbskUdIumw6KQGKcP0sww/KCil+Vu522EJRUXaZWKNVYZtnsNDY5G2E?=
 =?us-ascii?Q?Aq4nGnm0N7mrsPOFhY8PCLeV9rfsGDIk+LVzhjT0oQy4Nuv/pc1Vf4yh7FSE?=
 =?us-ascii?Q?kYlasPRohbe1BGEwMX5ZwDNyXAzI+tuSrkMy6iOsFQFekLnqRMawCY57pdu1?=
 =?us-ascii?Q?cYjUBsueFV/PElzHCWzsog73/CjtbmQ+8cziqRfKp2KIRrzCzTpa0x4xUg69?=
 =?us-ascii?Q?jKSeOrJ8O2xS98N7ix1ehs3EpdXCpnhk6+SeXZ+SczLZx9GznHqsE12PMXBJ?=
 =?us-ascii?Q?1/H+X0HjPWmgSMI6XJJEep/JgOLTndMHDkYVRo/2wISyoOtLgMXJ+UYX2YuQ?=
 =?us-ascii?Q?zbNhshTcZK9ZJGgQ003FyzjNKlYsfWMUNKnOoTiQvL/cVTtTg86oetJL30IO?=
 =?us-ascii?Q?gxUSz9A6HhUIINmazvzYBTx/XIBFEftsJXXcVYnyzCrSjMChvBWlcxq4JRZr?=
 =?us-ascii?Q?iZJRhs26leMiGYTGhIdOZ+jdpMD3rSewfvdxgWUYPSJApR7KzOrnFDtpLWOi?=
 =?us-ascii?Q?twxI4pKd2Fs7ZuV/eAtxbYa7lxgTwZvzKaJvpseTJTzKJBKq0hEwr0OLkuYi?=
 =?us-ascii?Q?j41KHCadH5VfOTX6GfafZp7kViVR6zcH67OBhKDGnFR02nBfJgRZTlxeGjQA?=
 =?us-ascii?Q?npsw/++bAVm5u7PI4S8XB7GXZKttQfRHin8enwpOXqW0GGj+j96hAUv2xoBT?=
 =?us-ascii?Q?0X3dUIK5YqoIXRZoEmit7HkfoDBALb8uQkTiZgKZzWjj8ztDDXldhXqDLMhB?=
 =?us-ascii?Q?DWbe7OGIKKN/GcCqnLRbT46f4/08EEju2vjuuHsb?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c6662426-859a-4429-dc04-08dcbd5e8e9e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:15:00.0089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /QUsExyDOxPHEu+k8lCJ9tB04kw7JmkPOCb4SlQQlLTjPnFa9Me5yTl+RjOUy4rOx0m4cuiTVsCFHLG+p1Xnwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6513
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

On Tue, Aug 13, 2024 at 07:41:20PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_alpm.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

(twice here actually, but replied to the wrong one :P)

> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 54 +++++++++++------------
>  1 file changed, 27 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index f4f05a859379..82ee778b2efe 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -139,7 +139,7 @@ static int
>  _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
>  				  const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	int aux_less_wake_time, aux_less_wake_lines, silence_period,
>  		lfps_half_cycle;
>  
> @@ -158,7 +158,7 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
>  	    lfps_half_cycle > PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK)
>  		return false;
>  
> -	if (i915->display.params.psr_safest_params)
> +	if (display->params.psr_safest_params)
>  		aux_less_wake_lines = ALPM_CTL_AUX_LESS_WAKE_TIME_MASK;
>  
>  	intel_dp->alpm_parameters.aux_less_wake_lines = aux_less_wake_lines;
> @@ -171,10 +171,10 @@ _lnl_compute_aux_less_alpm_params(struct intel_dp *intel_dp,
>  static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  				     const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	int check_entry_lines;
>  
> -	if (DISPLAY_VER(i915) < 20)
> +	if (DISPLAY_VER(display) < 20)
>  		return true;
>  
>  	/* ALPM Entry Check = 2 + CEILING( 5us /tline ) */
> @@ -187,7 +187,7 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  	if (!_lnl_compute_aux_less_alpm_params(intel_dp, crtc_state))
>  		return false;
>  
> -	if (i915->display.params.psr_safest_params)
> +	if (display->params.psr_safest_params)
>  		check_entry_lines = 15;
>  
>  	intel_dp->alpm_parameters.check_entry_lines = check_entry_lines;
> @@ -212,9 +212,9 @@ static int tgl_io_buffer_wake_time(void)
>  
>  static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	if (DISPLAY_VER(i915) >= 12)
> +	if (DISPLAY_VER(display) >= 12)
>  		return tgl_io_buffer_wake_time();
>  	else
>  		return skl_io_buffer_wake_time();
> @@ -223,7 +223,7 @@ static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
>  bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
>  	int tfw_exit_latency = 20; /* eDP spec */
>  	int phy_wake = 4;	   /* eDP spec */
> @@ -236,9 +236,9 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  	fast_wake_time = precharge + preamble + phy_wake +
>  		tfw_exit_latency;
>  
> -	if (DISPLAY_VER(i915) >= 20)
> +	if (DISPLAY_VER(display) >= 20)
>  		max_wake_lines = 68;
> -	else if (DISPLAY_VER(i915) >= 12)
> +	else if (DISPLAY_VER(display) >= 12)
>  		max_wake_lines = 12;
>  	else
>  		max_wake_lines = 8;
> @@ -255,7 +255,7 @@ bool intel_alpm_compute_params(struct intel_dp *intel_dp,
>  	if (!_lnl_compute_alpm_params(intel_dp, crtc_state))
>  		return false;
>  
> -	if (i915->display.params.psr_safest_params)
> +	if (display->params.psr_safest_params)
>  		io_wake_lines = fast_wake_lines = max_wake_lines;
>  
>  	/* According to Bspec lower limit should be set as 7 lines. */
> @@ -269,7 +269,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  				    struct intel_crtc_state *crtc_state,
>  				    struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int waketime_in_lines, first_sdp_position;
>  	int context_latency, guardband;
> @@ -277,7 +277,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  	if (!intel_dp_is_edp(intel_dp))
>  		return;
>  
> -	if (DISPLAY_VER(i915) < 20)
> +	if (DISPLAY_VER(display) < 20)
>  		return;
>  
>  	if (!intel_dp->as_sdp_supported)
> @@ -309,13 +309,13 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> +	struct intel_display *display = to_intel_display(intel_dp);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum port port = dp_to_dig_port(intel_dp)->base.port;
>  	u32 alpm_ctl;
>  
> -	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.sel_update_enabled &&
> -					   !intel_dp_is_edp(intel_dp)))
> +	if (DISPLAY_VER(display) < 20 ||
> +	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
>  		return;
>  
>  	/*
> @@ -329,16 +329,16 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
>  			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
>  
> -		intel_de_write(dev_priv,
> -			       PORT_ALPM_CTL(dev_priv, port),
> +		intel_de_write(display,
> +			       PORT_ALPM_CTL(display, port),
>  			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
>  			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
>  			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
>  			       PORT_ALPM_CTL_SILENCE_PERIOD(
>  				       intel_dp->alpm_parameters.silence_period_sym_clocks));
>  
> -		intel_de_write(dev_priv,
> -			       PORT_ALPM_LFPS_CTL(dev_priv, port),
> +		intel_de_write(display,
> +			       PORT_ALPM_LFPS_CTL(display, port),
>  			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
>  			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
>  				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
> @@ -356,7 +356,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>  
>  	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(intel_dp->alpm_parameters.check_entry_lines);
>  
> -	intel_de_write(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder), alpm_ctl);
> +	intel_de_write(display, ALPM_CTL(display, cpu_transcoder), alpm_ctl);
>  }
>  
>  void intel_alpm_configure(struct intel_dp *intel_dp,
> @@ -368,14 +368,14 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
>  static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
>  {
>  	struct intel_connector *connector = m->private;
> -	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct drm_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	enum transcoder cpu_transcoder;
>  	u32 alpm_ctl;
>  	int ret;
>  
> -	ret = drm_modeset_lock_single_interruptible(&dev_priv->drm.mode_config.connection_mutex);
> +	ret = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
>  	if (ret)
>  		return ret;
>  
> @@ -387,14 +387,14 @@ static int i915_edp_lobf_info_show(struct seq_file *m, void *data)
>  
>  	crtc_state = to_intel_crtc_state(crtc->state);
>  	cpu_transcoder = crtc_state->cpu_transcoder;
> -	alpm_ctl = intel_de_read(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder));
> +	alpm_ctl = intel_de_read(display, ALPM_CTL(display, cpu_transcoder));
>  	seq_printf(m, "LOBF status: %s\n", str_enabled_disabled(alpm_ctl & ALPM_CTL_LOBF_ENABLE));
>  	seq_printf(m, "Aux-wake alpm status: %s\n",
>  		   str_enabled_disabled(!(alpm_ctl & ALPM_CTL_ALPM_AUX_LESS_ENABLE)));
>  	seq_printf(m, "Aux-less alpm status: %s\n",
>  		   str_enabled_disabled(alpm_ctl & ALPM_CTL_ALPM_AUX_LESS_ENABLE));
>  out:
> -	drm_modeset_unlock(&dev_priv->drm.mode_config.connection_mutex);
> +	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
>  
>  	return ret;
>  }
> @@ -403,10 +403,10 @@ DEFINE_SHOW_ATTRIBUTE(i915_edp_lobf_info);
>  
>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct dentry *root = connector->base.debugfs_entry;
>  
> -	if (DISPLAY_VER(i915) < 20 ||
> +	if (DISPLAY_VER(display) < 20 ||
>  	    connector->base.connector_type != DRM_MODE_CONNECTOR_eDP)
>  		return;
>  
> -- 
> 2.39.2
> 
