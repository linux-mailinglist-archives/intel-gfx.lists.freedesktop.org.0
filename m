Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C836A9B123B
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2024 00:01:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B36710EB8E;
	Fri, 25 Oct 2024 22:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IjIYN3fW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18EB010EB8E;
 Fri, 25 Oct 2024 22:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729893698; x=1761429698;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WEtkS+JdKDff+kOg+c6MeanfqczPJ2EQG3KraCryZNM=;
 b=IjIYN3fWmpvK+tbvAK2GYxMpqwmMF8J87T74cfEaco5fVLyGpw+iMWjG
 rzkz8g56pE3tT+Zw6XaH7AV5E9nTTxFT8w6Bv+laErO5sthuGCpGIczSC
 v6uVo/ACbEKx/w+Wstowtj8rv7LWwP589YH9kFsbfm7Xl4pJCTmNsqmp1
 AFpBJjxZPnERMvFIE/2F8TLlDrW1zkJNALyC7D4xiGFP+k1m3WMt6M7IR
 0/YjL1Y+7gu+5gtbJUuZYR/eAdbSY6KO8XBZDn3viOoLbTg5TM1RWfxQM
 nUmZIvr2SRTO/igBXU+qpCVotBp3IBMhNOW4FsrJrTf8bxoOxny2H+1u8 A==;
X-CSE-ConnectionGUID: m1xoC3kFQtujwT8wh18CCA==
X-CSE-MsgGUID: xKBmPo3xQwOopTcJEzpHyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29751787"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29751787"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 15:01:37 -0700
X-CSE-ConnectionGUID: WDNB0DITS9mN1OwNy3Rgsg==
X-CSE-MsgGUID: 5pY8S+jBQeqJwCXzJ4wcxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,233,1725346800"; d="scan'208";a="81193514"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 15:01:37 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 15:01:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 15:01:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 15:01:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qWgwfiwCBYRmAcSX+ZlYCKOLWAOOsvSoSQW6eczRzXBi/s0bjhpVlDD0F0frjJ2WaYBpADBtHMaPHllB/K3Cs7mWfp8FTq/YQD0zZmdDM/grKSGCMzu8h2D+MRv3HqcbIvNhfjVUqfeR/jjOzGxSGLSNouTjSoJBVVYE309ZpmXd2faLF5Jwn+EYX3CsQL8XmA23+AKlu/Os2wK/FJiQRoVgELbC0Zpm0Yr6+T6HCajezqLLXEQUCOm/Ak8SNhgxI2Z6MX59RGQ9jpPGYxhszfrH8sm+6J/TidPYGPg74TRkVtC1VLd9H17K1OJkf2a7rlPNQ8fFLUcfgSyZU3M2jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+CsctorFlI74jej+MxOE9W4AwDEePPxoKQFkw3sPb+8=;
 b=oAAB/grtgGJtr7fH6ywywxDUHZ4M3q82NoKzOsWuzp/kVL/zZtzo/WUirZAZMz2+qkiBe9CoTR0eMC14P5GCKVRt2Pj4aDNPx5JDXpwTSgix3xp0loAiKG3c5Bt24yTM+K0LEfPNxVNVkqWh4qshf9cRrG35u/WeIA6MEybAEW4vbdjY/BdtuHWniuKLyZhHRjzB/qESCpWeAAihDhILLfLN1CFIYfOug/slOFLdE+FpDN4nI62z5OPd/QEh9j/tJHOfYM84ZvGRczsByFRZ6xZCpjyHxC476IAlVtlk2lNMf6ug4Hx9UnkvX5RNxoIlny/OjAVtZ9B7rXUiN4Zs2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BN9PR11MB5260.namprd11.prod.outlook.com (2603:10b6:408:135::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 22:01:27 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 22:01:26 +0000
Date: Fri, 25 Oct 2024 15:01:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 3/5] drm/i915/psr: Increase psr size limits for Xe2
Message-ID: <20241025220123.GU5725@mdroper-desk1.amr.corp.intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241025060136.9884-4-suraj.kandpal@intel.com>
X-ClientProxiedBy: BY1P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BN9PR11MB5260:EE_
X-MS-Office365-Filtering-Correlation-Id: 0eeadfbe-69c2-4ced-3a89-08dcf540929f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9ayk6/P/LHL2tuwJMblBnG4h/+LNFBaM2hFm5dpbB6tXmD+c2CcBFjou1ik7?=
 =?us-ascii?Q?4OL8AhiRfLvGWV3k9baPdTdhxxSGB4HBBGuL+crIMu2LWh58Pgqrg1se5m/9?=
 =?us-ascii?Q?vdxhse9kYAK+Ojq4rOuNrMVBjTxOLInf2dhDhfNF28D55dlwbMJpxJEpS7HZ?=
 =?us-ascii?Q?gqs5NHoNxX0SdvoCR4PhQvinhHif/OPJjlvoB4Po8QVFMu7rQ7ugsvHIz+1+?=
 =?us-ascii?Q?B7eeqpUXI+6r1pYFi1dNjLJRgQhYf/stQMMA51Ni0lm/tJCcQIwk3Xa6AI6/?=
 =?us-ascii?Q?s/M/W4TWESl4KMOUiVcE9c8n2SpmFbrJZckY3+82g1XhNE/On8Hd+1G85r5Q?=
 =?us-ascii?Q?75U7IraXuqqKaNP90w6gt7gzWN53f2XJcMc+fkc6uX+Mo1rczz/Nviw2OsCK?=
 =?us-ascii?Q?yc5DdnR7Gbwvh9uFh0yRPQJOApR3r3GJv7cYuQ+m+qbDvowi/1Q1iatKSciB?=
 =?us-ascii?Q?cnNUBkvLtzmbUf7698jTNPHMAL8aV1+0KoTqEVtroet3dVP4tlMEx8S9Ymgt?=
 =?us-ascii?Q?6Qaba0rVv4tPH693lr1s+a07CuWPmmBPJDQ5M9V9ggYaQXJQH6GFpc2uom2+?=
 =?us-ascii?Q?6qjR5zpk79Bm1xqCWrn+aKUYwF1nQ+0DlBXz5s464rCEXXga74k3Ydn+Oj35?=
 =?us-ascii?Q?1TLgaIR6JH/UOnLJtpBb/OluOje0YuTa6uIGY3cIHa+X3OnJVyt3mdQDoFgL?=
 =?us-ascii?Q?EkwK3+SbdZDHr6S9hFqmDBEFTB2RM/3RtxNY5XhUFiPf7GiZmapdsYkKHmqm?=
 =?us-ascii?Q?BXh1+V/A67mssAEomaZNU4a3JD47Q+zDdZsh643t7DW9eX7J9g7G0yLl0OjU?=
 =?us-ascii?Q?SHPtF3Ng0PbD0R5HFgihxGXZlPqwiCnaiN4HijiMjogjobcm5AgaUrvuxqYo?=
 =?us-ascii?Q?ibnmwIr+WJ3AQ+mStTschlwVUdy6PzoKLPp7IzNckH1R1IOMgFWIclU4DMFU?=
 =?us-ascii?Q?7i7OvvQWAPwjpnsqJTDnH7UcCCq0kvku+NJwRlHTyhszHsOFhuibfGwxU2b6?=
 =?us-ascii?Q?adih+QbLsH0dXQtP1itP2hon9+uf/3bT8SNTs9s5tmXF7KU+u0Kt4naRMa29?=
 =?us-ascii?Q?X3lHGJpOH/ibuoebfN1hOWFYDYUTTkkyRB/+YK/EdacC9Szf+uWPCrnpDcy5?=
 =?us-ascii?Q?TpF60YmBOk4eKRMi/BJqhEGO0LNTPKfoAEAGpe3b6muW77K9i4eGSZh0XO7k?=
 =?us-ascii?Q?pUUffM/H9qDHc9IkMtbEefT/VYAQfMbmotnUSs9QFd/PxIqYxSza0JoERrnL?=
 =?us-ascii?Q?TA+yZdyCNuA1UzK3sfdkZHwZQFzSXJL7a8rr/1rCcfn6TsOn05Fy4c+FlELU?=
 =?us-ascii?Q?GOT5/bXPyN0E1ux1M7ndHB8I?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?objV6tC80tgOSppRLRkcUPKoNOrwoIp6G1zwM69v5ntJx/cVNH8GScRoikfC?=
 =?us-ascii?Q?NCxZdTjmgZl82mJjEzG7VbZ8dUOmT6mfnWuc5jvig/RP/h5EUaeU5avul3hO?=
 =?us-ascii?Q?yKvaXtqoIp7rgCUaETnM/QG5Isbocf4PFw0CKHYF/2VRfWUpPN9l9bin5j9d?=
 =?us-ascii?Q?jECaMkCgWvzUQWgjcRxtUr1TfqFbzYDgYSC9il9LO6ucRsJ0NHeHn8aRHJYX?=
 =?us-ascii?Q?tWbxCE+RQ9GpgQLPkPLdvkCYowy5aErrGYKW9V6hWAcIrzj0NVFmWWP1JBvh?=
 =?us-ascii?Q?yJKzJf8NdKyqJhFpCP+EltgH6332CpOEMGZiUbYR9NInPaHTD4rLb8l6xG0+?=
 =?us-ascii?Q?ZsbqaTlpwALcXzKRuLaPjEpjnHgOz7wUxkFimddGzGDqc9E8qodgz2HyXMJi?=
 =?us-ascii?Q?KV3wG6mdpDFzSWF36AyEPww30O2dKv4WDIQZ6zA2S3G0ynml9H3ykwEr7XwR?=
 =?us-ascii?Q?m2QmaoCwbMlfbKkBxo3w5bh8d4dsN2240qYKmv8+oMXj40ckpYJqDCxMnBTs?=
 =?us-ascii?Q?4MH0Gt5/VgDvIswwBXZd1ZFjLWFZe7uR3FDA6SrXmwdjSin1VIm0Rk5zKFZ4?=
 =?us-ascii?Q?vCNvPAKerYeSZkrp/1lL1jSlZ8U36nl9BlPZtKLXYsufwce3ek+933V+RTOb?=
 =?us-ascii?Q?M7d5hx1rzbsjVCUP7YZHaz+BzwiNrlndy1jrBZsuKv08ohXAy1tEeokLKPTW?=
 =?us-ascii?Q?etjgSr5iq11WfSYNQJ57ffmOLcZy6dZGgBucQh/jaiOVrC/EqC+zvmFmCqb6?=
 =?us-ascii?Q?Z6dCYzUx8WsUPgyk0985IsYA0kuinOnDbw79PL2v3ff0kc3vXf2Ucs4dN0H2?=
 =?us-ascii?Q?R3fBSqZxaKE0h7EowThOYqNnTHJXKDUcguuVliSsZ0qVXzCUzOjm0Q9wSmv4?=
 =?us-ascii?Q?ExBbxPVXQqTjlP79AB/eNUgaH6s11rAmCS5SICurtvGr/Yi/hGEAu/10LelG?=
 =?us-ascii?Q?kDJc0UzGQrSHg61MFgpbXdOVi2C7irNu5hKOVuKdrlseo/uuYztJ6Qrug/h9?=
 =?us-ascii?Q?6x0kxkxRRjsCTSJpjrsMUYRQ5lzI+r+VrYgZFTKFzF/tvHjjI78ApoO/Tv5l?=
 =?us-ascii?Q?LG0DRHU3Zdce99axmnbyIFEnKp+JqZgUXkLXzj9cw2CDYeBNE2khNjnXoaP2?=
 =?us-ascii?Q?tnygArX+x1HEyl/0P0HDH82oK44OeWvPhIuy8sy8WdiYPoZGh7JmkM2Zt3nS?=
 =?us-ascii?Q?fFc8ll3oxWEQfLtB4QXMtQVNwlxirSNDg2UiSeJ6pfDqvl2fLiqsU9Tdbavn?=
 =?us-ascii?Q?RSysUSm+C5rXqO2D2td0RdXHGYu2LlwZQN5s3xjFkrhGwtFp9ns1DDqSODrL?=
 =?us-ascii?Q?ZIV3jd/AwIKxgSP9pWrpoymj7Jn76xeFofe91ryreEBdfaUUCefwYqCaRIKE?=
 =?us-ascii?Q?qapN0B9mPa/6Kt2skPuxbHWxluI6axE3Je12MlPsX9fZAqaygEoI4bLkkLXp?=
 =?us-ascii?Q?URUjAYZ2X8sT6JyHvYY7KVHO6NSeMiUPItBuCYVmR54h5/1RbiMFcHFec5mp?=
 =?us-ascii?Q?PuNmnhPTYhy5/Mvcan/0o6/22jpCY7jOx+Xfnag9sB4h7mf5soqU66pZY8aj?=
 =?us-ascii?Q?nmcyBVD28pRXeCKuzq6cYeTVGO1ERtEw2pkpe6pAnFkowkTFG/P2080/H5sI?=
 =?us-ascii?Q?fQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0eeadfbe-69c2-4ced-3a89-08dcf540929f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 22:01:26.7638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u69DV/A5UpwsO5zOonUlr+9Gw1SFIXsQj9vpkYrZZ/2OKkQt47wqQ5PW/lbquM+mfguuT98OjT/iA/Y3J8dDXnaHTQTK3Zu364Op7WFpBO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5260
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

On Fri, Oct 25, 2024 at 11:31:34AM +0530, Suraj Kandpal wrote:
> Increase the psr max_h limit to 4096.

Commit message doesn't match code (this should probably say max_v
instead of max_h).

Since PSR2 size is supported up to the maximum pipe size now (for both
Xe2 and Xe3) would it be simpler to just make the check on psr_max_{h,v}
conditional to pre-Xe2?  Then if we don't have any truly PSR-specific
limits, we don't need to keep duplicating the pipe limits in two places
going forward.


Matt

> 
> Bspec: 69885, 68858
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4176163ec19a..c22386a31a63 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1453,7 +1453,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	if (DISPLAY_VER(display) >= 12) {
> +	if (DISPLAY_VER(display) >= 20) {
> +		psr_max_h = 5120;
> +		psr_max_v = 4096;
> +		max_bpp = 30;
> +	} else if (DISPLAY_VER(display) >= 12) {
>  		psr_max_h = 5120;
>  		psr_max_v = 3200;
>  		max_bpp = 30;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
