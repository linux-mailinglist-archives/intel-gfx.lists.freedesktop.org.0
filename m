Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABB59DEC13
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 19:25:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922E210E565;
	Fri, 29 Nov 2024 18:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XfSotcto";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BCFB10E565;
 Fri, 29 Nov 2024 18:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732904730; x=1764440730;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bsAmLNvfFuvcE0pXZNeqPRYFqD0KfBedH0fkH8Vlycg=;
 b=XfSotctobOUrIZH3XCUPDFWpbAeBBCMZD8y4zYc7VmQMCmLydOm1nxp0
 xqIdocUzI6iOoa30rEqnsiP6xsKMfpCTkjrGSB79zeLImKYmQtwaYwDu1
 R9zUTv2gxh00g7dzsSf0wzyK61dk1aIFS3fPQamebBi10ZP53YYfrjxmf
 9N+6av05NHY6zSkT5CrAgkpfeo6hFIa69n/hJWjMsvH2UCS1Fr3QOAKWw
 2UarddKPiwweF+3UiGaNHEldT/rkc0z5UMScXU0rCb4+i7oW6L88u7vbb
 o0Vn3Cg6zhN/Ln7h/RkcjfU4ZR87lgp6VaEuiATb3Tt5CSw8gf3JfRTE9 w==;
X-CSE-ConnectionGUID: 8kYJ3mijTU67WF5n8XRcnw==
X-CSE-MsgGUID: KmuOxQf2QiGKOVx4FUOjEw==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="33272537"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="33272537"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 10:25:29 -0800
X-CSE-ConnectionGUID: +D0GwhuqToiFMr9iD/SWag==
X-CSE-MsgGUID: EdUJoE9YStquZ0o7lsUSCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="93016789"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 10:25:29 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 10:25:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 10:25:29 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 10:25:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AKPXHK7WLORuBK1d5iEFL0WOlJne7pi06vbxE00Hip6PWUEWy4FNs1aHMDbP1r0a2g+GwspVTHdMMMCrg61Ppf8B0Jjn4BjqIFAyzf2QIx1g4nz4LfJBV1NQp6AheZn9FmEoSUmOw4bakH1ZsZvyIlfgMt61KiCzXcSTn4bFeAOsr4DqbuLwdoLCWFhvCXlo/QG2C2wxetZKWWa3Atvhc1YRXUsM3g/qUTRbRUvxO4X5u/UE9NpmqFQ8SfzlNViMpgYh1vIeW2wLwZgb5+w0YRaw70g/96fuz1kXklarrSLcyAgpx4JI4Hmp5nCW9/G5mEw2KlD3lOO3JRHMYThQ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=psWr1881v/hCjNakfSIEtq0DXNMCQTqjjVr+QMs5QPo=;
 b=VBVzyCMATJnkMiHwxE115+dU+l3TS8whzRE2ZEQ5F/r2ws9sQk68z4TDKGob47Nhk4re5ldTTHdueOnplzlYfPxg7LqLwvwuU0QiQ7d0+mjpwu9wvWOwDmjo/jP+t7EmW1S6V3ZEHNAB2l9qj7WEQkCTtazOVHYuLMq/hEr3X1Zb9v4L60IX+NvXpXl4+mzskfyKnTPIanq1c3bGJ7zFdtznoQYKXVHiDlb0teXF5NxJz607uMasurpXZau5ys4WzltmaD4gFwjQxf4xdPHQKTZOiy4olBb9SU59xP7ocuBw+USrdhu0wk7q0JV+P7Nz7ffxlzbO+l5PKRvYZuWfWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 SJ0PR11MB6813.namprd11.prod.outlook.com (2603:10b6:a03:47f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.14; Fri, 29 Nov 2024 18:25:21 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 18:25:21 +0000
Date: Fri, 29 Nov 2024 13:25:14 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915/dmc_wl: Extract
 intel_dmc_wl_flush_release_work()
Message-ID: <Z0oHCjw8ElDRLLai@intel.com>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
 <20241129164010.29887-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241129164010.29887-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: MW4PR04CA0232.namprd04.prod.outlook.com
 (2603:10b6:303:87::27) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|SJ0PR11MB6813:EE_
X-MS-Office365-Filtering-Correlation-Id: db0c132b-4807-49be-beeb-08dd10a32eff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XyBSzvfrDJ4Qq6vRqBUrnKqSQrY925H9ExSHKucskorDVFHR5JXrB8/6EFs1?=
 =?us-ascii?Q?fDdJqHih37bLR6ZnyUn5+UUsh4dkc+g5PwZkpXguwPeCL4oYOb5YQmQfAk+7?=
 =?us-ascii?Q?OCx6lH4nmUJsqQHPf1pnV6bq80/PLbKdwKbKmcklQlx1TnsGdcTZaFa2cNS9?=
 =?us-ascii?Q?RkLrmTEoqKL+Hw8JbiWcY9PedAZ6G1WbCpRcHOfPUzFFpUQ0XVEehOVviLd/?=
 =?us-ascii?Q?PZaJXnrUDIIcahB5XL8zC9iMu6g4Wi//g6JPTL1f+DSFaAq1y5HKoL6CRBG/?=
 =?us-ascii?Q?XdmtTcpwjhUO2H5+wH8ncqt5ifCGYkkX+R1TAL0yQ6BlrmX+sAEyYetKqju4?=
 =?us-ascii?Q?mE6d9mOr00LPKWKUfFa2O7gJUQ/cg1n01PzewnfmU2Tndbnj+Ka8Kdj6MIDd?=
 =?us-ascii?Q?3NEVnI7DGmxt66curxyvjTlYtqfFR2louo7zEnvl+i9mPt+KgiYnpMQT6CWs?=
 =?us-ascii?Q?6AJgzN9GdDJ9NLrP2T3qMcExkmiXg7HESvcLlroL+eAeDzM8scw5TX5tRova?=
 =?us-ascii?Q?dU0LeW2w1NDY32xCKGgi3jmtWwIF9l82RJ42FPv95BrdhhjUVa47VQUpjmju?=
 =?us-ascii?Q?u889CL5VyYsFUGY6uB+krimGI+DFnyPv2lZGelQCQWQWzZvukDYK9InDFnyW?=
 =?us-ascii?Q?O9D/QUBr6tnZt+TV8HQXbAcx4cWtMN9ZDXIujwQMsp5Zgb4cMmUaf+IsYbuS?=
 =?us-ascii?Q?5JZ300f+T0yGCkWJcxzT59FvaU8LAzNtyOKsFr6U4tKvY55TfT5VHB+jzzg/?=
 =?us-ascii?Q?aQ1YAFxOPq0MJFq4JxUJAmUAgQUopiJycQ/BuPkj7FqHMpWHzbiLvdvXI51n?=
 =?us-ascii?Q?76pyJJxROiF+bVrCYO5f7a6lTW+MCt++jPbVlqqK4SPGgXt/lcD5aMhM32AN?=
 =?us-ascii?Q?tPKvcrYQbZiYcUqeJ7ahvVBflZyBHMxAGB8ef2YCiHlvDBRWBdSe1VyLxPX1?=
 =?us-ascii?Q?FJZRD70zjjbA3AxcD79gBJTzFfwIrRQAMOncpkQyc8smhELdeYSglz0fBp5e?=
 =?us-ascii?Q?TOoS256T82kjP6HZCysJ9JCo+xTddqTesXzZzXyHGXdYlp+sG/l7r/TqTMy7?=
 =?us-ascii?Q?zbqmDi7O02eu/3t+Hpo84qejp0s9AkEAM/jo953GP8aMIZeIAsH25yuiLGkk?=
 =?us-ascii?Q?2gJbuRS3qK3LcycfAdDnC1Kcuz6APNlSrZJpT2iO7yfwJ2mSL58zpzMopWEw?=
 =?us-ascii?Q?LaBCraDM46X/yX/4hRw066j6gpNHuIyUNqj0EJJonIV6g5NEE0cDuHyM+pqg?=
 =?us-ascii?Q?Zp78kFpvtiDMj+4gNOOiLkcsjhwIhMU9Fg7ohBQrQGJZzE6/sVNfvCIamcPS?=
 =?us-ascii?Q?JX1x7N1BQ2lGrUUfsnjDmvOxhtaYdFKn8A1ZvSZAI2uNBw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UgAjyXgz+GPPw0rppZ7B4u8RDZC+90nZT+zMJB7ThvKa856YR1E5kAZrf0/6?=
 =?us-ascii?Q?s7kz5dWrkFbERTreb0Z2Snk4GkoZUfcaxX6oo+MJHqWA8JjBCM8ERMMGUhH3?=
 =?us-ascii?Q?32tUSEGDRMWERBnQWe+o2/5kHO5M45d3vgsMEhp8e234Ur5qDHLGeJn9uLwe?=
 =?us-ascii?Q?gLDrJNgyoFwdfKNEhnN6jthYswXuUTvIbKEClnNEKMTqDCJknX+waTV4Zkwy?=
 =?us-ascii?Q?lDAsqN/YhuQEhHF0bqksmbBfiAfyxHtXxtYODmmtJBkoFfMKqEccmZO7hBbV?=
 =?us-ascii?Q?MaNwHVyenHHfHaUjOGhaJJ5sTIs6Mza1IeNU9I5oUGINRuqvdxgJkteLfl87?=
 =?us-ascii?Q?RO57bxcPi2IiL396TuLvXxYxcJRL0B3JF+kaS7PCZEiUeB8dNliRKjVsgts8?=
 =?us-ascii?Q?96ffeVOnbOhHpXVnLT7K1wvavMcdwItoMBHpkAPLcobSdgw38aVPw1J9LE/7?=
 =?us-ascii?Q?4/Nqn4Sq9LZJHgmmjF6GgP6p0hVIHyrKMaFzxZA7LrR0a17tUKSwrZPPE+5s?=
 =?us-ascii?Q?CngGC51lnaxvVD1p7qz5elTacg/YHAgSmDM+0odd2FFfL8VcN6LuthVZx16E?=
 =?us-ascii?Q?0GYLGLN9QGKT+b/sXq3tITMWbLI6oa6k+wd0m1+jfDsEkRKXRCnHo2XCyDwF?=
 =?us-ascii?Q?/p/qBKiespl0r1QXI7d2C5Vca3lY6mq/qBULw8isTsjyJPvIMnjCSy/x/agh?=
 =?us-ascii?Q?XDDmZ3o7sh2YrFGLCH42OL82y4N6N9wi07ufXzYWOV5+fdFcNjVzdASvdz/R?=
 =?us-ascii?Q?SzuJ+vGiTqSe6XWoz3POydJ0s2/PvdSWTY5ahbvEb9uhfaciwERjN/b7Gqi0?=
 =?us-ascii?Q?Cv4HdNJc2Z9ld0xzHiN9+4iLERh5z16hYac6VB1e3zVSEFqXrW4Xu5NJ1Ir1?=
 =?us-ascii?Q?N7G4rVTgiau1xPcTzAjie/rer4nUZTbdVc+opNU93zsol5GmCKu8OMO4us0C?=
 =?us-ascii?Q?8i/gLM3+N+zobah7plwuBzkxxvu88ebQqlLcz7Qx3ZiO1yZkZQ4KcQ+1rXN2?=
 =?us-ascii?Q?+FoFKfcqx8Cvd6KDw+P+WVbnaez1T06BJPi/owpeaugaEGEIBMPF8tJ1QRzR?=
 =?us-ascii?Q?rREY8sZGZHj1aNmfBIN5xQFu8CcjlbzUQOdGvjuO+yU+Y0x6+QbLjMQbN1mh?=
 =?us-ascii?Q?MQ/tgIouxdIF8VYirvKtxr6Dx4qj1gzIl4DkxnXTpyMdxp77+do7lNO1/CGp?=
 =?us-ascii?Q?FklBvuR/1beFUpmgnfXQb7MsKBpltYICcjki/jj8sShAN69iw0HlaPThYdRM?=
 =?us-ascii?Q?DG3kvMH6qnJLJKIjryYnM/TJjdXymKga4Hhgq4HhZjSBXOZpTj0I4My3kME4?=
 =?us-ascii?Q?iWB+iq5BVNOtVWOZ5W/3ogrQhqZtp7SVNgv4r1vLJHrq1XDsk1HTMp16OOws?=
 =?us-ascii?Q?9B2vLSEZD2IxkPaF0bsgFcXOuINRQaQYbK6hMuGmYkxgikOKn2z42qY+z53i?=
 =?us-ascii?Q?awwkVc6dO3B3MU/XKloj7G/HaId6mdz+t6TesTTK/sMmA0T6CEEe9zvGnbq0?=
 =?us-ascii?Q?SJ1p2KoZn0slossKOkYDErU+EY1BYp+5XYQukkRoPlh8WxL+le/niaAuCp0Z?=
 =?us-ascii?Q?jDfB1FGIhaZVjndJo+t+QtdJxQMcB/RE1O5XmyLhw8pVRAnY8VB8sio4pd2D?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db0c132b-4807-49be-beeb-08dd10a32eff
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2024 18:25:21.7619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h6isI0JuhsLMc2A394kJe+DsgLrH7QzsbyaDdjjxUOOWjdB08x7Ato3taReuLidmrGv2LSyi9eW8mx/xG+9esA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6813
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

On Fri, Nov 29, 2024 at 01:37:54PM -0300, Gustavo Sousa wrote:
> We will need to flush the release work from outside in an upcoming
> change. Let's put that into a public interface and call it
> intel_dmc_wl_flush_release_work().
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 +++++++++++-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.h |  1 +
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 853d75610489..09075830c12f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -349,7 +349,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
>  	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
> -	flush_delayed_work(&wl->work);
> +	intel_dmc_wl_flush_release_work(display);
>  
>  	spin_lock_irqsave(&wl->lock, flags);
>  
> @@ -377,6 +377,16 @@ void intel_dmc_wl_disable(struct intel_display *display)
>  	spin_unlock_irqrestore(&wl->lock, flags);
>  }
>  
> +void intel_dmc_wl_flush_release_work(struct intel_display *display)
> +{
> +	struct intel_dmc_wl *wl = &display->wl;
> +
> +	if (!__intel_dmc_wl_supported(display))
> +		return;
> +
> +	flush_delayed_work(&wl->work);
> +}
> +
>  void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  {
>  	struct intel_dmc_wl *wl = &display->wl;
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> index 147eeb4d8432..5488fbdf29b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -32,6 +32,7 @@ struct intel_dmc_wl {
>  void intel_dmc_wl_init(struct intel_display *display);
>  void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state);
>  void intel_dmc_wl_disable(struct intel_display *display);
> +void intel_dmc_wl_flush_release_work(struct intel_display *display);
>  void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
>  void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
>  void intel_dmc_wl_get_noreg(struct intel_display *display);
> -- 
> 2.47.0
> 
