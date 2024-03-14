Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B6A87C25E
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 19:04:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4ED10E2AE;
	Thu, 14 Mar 2024 18:04:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iluweDHf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCDB10F51F;
 Thu, 14 Mar 2024 18:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710439455; x=1741975455;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g37wYEFgd3WZtyeKTVjyfyuYTM1GnhkQaXan6ih7/6o=;
 b=iluweDHfnNc/FHLIzBkOdeQv2jMH2tK/1V2Lhgwa+8TJur4wCKHLo3Xn
 2cNwMMg8MfRCF9DmFshv6cAVbkB7fD8/douVI0EZrt5mLW5BYvtgi/8vU
 mEWuzLrS41iHdO51aWFUVFNw9CQ8i68Na6MjFba42Vfxb20HGguYlL79s
 sl5NNLtQdd09r5d6xh+ZSafCPfV3obGNPIhtp2rgNlFZzK5qQxntZuRec
 1A4D5ljPbX+jgAUU0ggKifCfJkuDGJ4udCQSapRRLYODhrJYbE24ednFg
 MztvU6NVy30HIUOsafU2Y43bknm1PBhF3B6i1VGLh5iqk94+o6feAgZDk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5149084"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="5149084"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 11:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="12280330"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 11:04:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 11:04:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 11:04:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 11:04:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uq3BV5OFQFL5Bt9VgUKRPuFFuuEZrbpEnWxJgw1x1SKOKlZtLTcNyiiS87mfQcYWFiPcWHjpfkiaVEpYnHBQ0Z6w7qJxxlssumxVUYAqneUDrUCL7a0zmBKbUbkpnuPsIA0ofQn6+OoA9fX3auqmSO+QPQ+On/bmbjZRZepkGOPn0u4m0cDPVcMCEtFUJ9QBKGr0JbpeT2tXMLAUe36ZZaeT58dFqkBsgnvGknopRLR1sW7s0o/qDv3HMI8tPatZlxvhGxlgGD9bINdtYc7K10YFGIhbMdEBi3PZsuxXYYyIZuq6cjadLHyVgYLvNoe7Fd7fRex+GicA75KE/dt4XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w3mo9xQI7A2Q0yvMVE3nziLU1+m/zYRIuHfD2mgDgzw=;
 b=b6z0ak9IN8iNUpsdqAySpOOXR2NwNNbHYxPFrlLt48+FWcwQfOlqasPmu/REzcFDVMXaIMcvsuThxwb3tDb0pZYUucl7TdjansmG70pj6FbPUopT5PZ6LfvTiPWFSJr5UY6uYD2bO7lTaGD7EqAVVauj5CGgCpzG592RQK3A7LVqboXetewX8P46p7q7Y1T5xGwEJhYMpaR8sqRNzmwrLjlNaHnDyAV6iXstehzcaru5+mpLxdmh60Rludd0c+Mg48stTAk0K2ERsyh29ac4dRD3eYVywVZiSsmKHdpj4nD7OyB1kn9KlxZ2WwZ+X1u8Gn2gDdkZGgPXJEt+0nWvBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8)
 by PH7PR11MB6377.namprd11.prod.outlook.com (2603:10b6:510:1fb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Thu, 14 Mar
 2024 18:04:08 +0000
Received: from CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::35b3:d12c:df86:fe22]) by CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::35b3:d12c:df86:fe22%7]) with mapi id 15.20.7386.015; Thu, 14 Mar 2024
 18:04:08 +0000
Date: Thu, 14 Mar 2024 19:04:02 +0100
From: Francois Dugast <francois.dugast@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/11] drm/xe: Introduce intel_runtime_pm_get_noresume at
 compat-i915-headers for display
Message-ID: <ZfM8EnZZOFpnPCMl@fdugast-desk.home>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
 <20240314141021.161009-2-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240314141021.161009-2-rodrigo.vivi@intel.com>
Organization: Intel Corporation
X-ClientProxiedBy: ZR0P278CA0115.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::12) To CY8PR11MB7828.namprd11.prod.outlook.com
 (2603:10b6:930:78::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7828:EE_|PH7PR11MB6377:EE_
X-MS-Office365-Filtering-Correlation-Id: 88dd983e-1752-42fd-18c5-08dc445124f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jXaYa+W9x7K6ic3UM1eImf73LprfQ9DfdW1Ab0cJrfEYPoXgEbdR0+c0yzhRaipcg6Mlq1EKoPi/VRF9U4wyEbjGP6j4rjW1q54fzerbbbmC65M6wxBtqSnwCUF4HyFPzM5UHep+e3Gy07meF5QYGtmfJX0vDcY/ELbNClsDoOVsAbB7flM/z7t/kL3PC3+VjrKOwa0sqoIq/seeQ0zORcdpcMCceB+2WeLa0iDQ/PknyiEZWSaEcCY0e1Kos8A1rphCoCLqeZO5h0KPaoVoTI8Uznd7z9oawSkC7j+pTqBIRssBr+jfSgYnbGHDyE731au1hnunFRvpjGhWWZJgHA3K8wGl6BSjVOuejClGjJK6HYE0Pts6Y5Q5gEIbKUGc4gD/5KijeE/n4tCwzWrETn/CnY8LXByNsZMYI/bF5RO6+jt16XSeYh+L8Jx7H0jOWgSgoQrM+cVqSqgBwoLVd1PbyyWqhHUSYT/U1wu8D22VO9ecUvdChpJWZKpwyohDlyQQnPlfpNk0noOg0gq++i3mHXqRa2vTSgh+96UsPCcxzVjXPCiy3OOS7vKNTpZFxEzMhW8p4aCdCSDd/ff4lF/hRNWFTde6jJsBRKvzgEhlDiUHO4tUhUvdAOsy3C4cq3UkDa/5dRibmCEAmnykF65y5qoI+gJmRTnrD41OIS0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7828.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J1AEGIwG30+1Yga3CG4hvVzUElIavPBSfsEhWZ5p3IqHGcmC+mg29KhFhSSS?=
 =?us-ascii?Q?HjFpyKfutYx0k7MNCafNkOWWmkA2oxMe6qqyX7e45Bs7yTp4egBZCJF0ZXHp?=
 =?us-ascii?Q?W7K8kQ9jFAM8IG6T4I9ZoK/UOzl0g7BZDMrEj0xR/i12Bgk2/qJ0nQt6P94E?=
 =?us-ascii?Q?K0ZhyOC2SzwguHgqfrbG27aP2OQueUqjcKB0AFxD31ixq81U6YroHc417+Fz?=
 =?us-ascii?Q?7pRiJ8q4dhWahnkOzI0J1gYjv3GveUtaXCFYpunX/hTmqkwrpll5W6QhXIRV?=
 =?us-ascii?Q?3bBhkk9Da4KD9thNTrElnWyheJNmXsiBaXb95kBDh84QU2TEAg2C67iR1sp9?=
 =?us-ascii?Q?QmL5SBBbEup4udUCaugPTB67U9S0iM/HHf+u5usWSgsLpKVUHPyVo51+S4Jz?=
 =?us-ascii?Q?5TH5AI4qXn3zPF/eICVmyalvQPdb7r/6BGdYhmEyVehGuhJo7H6tBYEm+Ptx?=
 =?us-ascii?Q?Hsm7rWUrcurvgO0bdhzFkb/UwMKW0kRZjccq0S5LkVi4LaW5HpKHmrBiLI7q?=
 =?us-ascii?Q?NSxOzyLrLBq02eWUCQWAtA8sVlvJewTthoNauveLrrEQ0+zKjKi8RObrywbX?=
 =?us-ascii?Q?pR+Zf2ZQQtAP8oEztjioLDWeSw5qpjHTl1Wo2mY1HrSaIxTq61G62rJxDGVi?=
 =?us-ascii?Q?SpmCZallKGlhMIrrzwibuQORZ6tYCIPosSIJqDQCgHu1yrsiwCsofwe/g6o1?=
 =?us-ascii?Q?pw5rgWbSoE22Mfdn+ot5b1qnOGEmxlaUSkwnupp2Bt/0wKtyPibCYZUJ/5UO?=
 =?us-ascii?Q?XG+RwisIM/kjcjFCkPIc+8ckBlxj7UXfoTSS2cLh4yiZ4DmYMcHIiDA/uL5I?=
 =?us-ascii?Q?B2lqFsLbzYiWLFOS1I6cDj+3QQO2aeJw6TkhsLXeHCyDMPvsWiAU61Yiivv3?=
 =?us-ascii?Q?kXo7Y5HJSEVF6UtlFO7GONAxxLC/qA+wdE3HEEXua6spKkKYZINfw8OS9MSK?=
 =?us-ascii?Q?diTcBdQqxlOPwV0lNrOvREljwsxTHE9ZeNsbWnrGlYM7aQF+++uoyys8Xkq2?=
 =?us-ascii?Q?GYN2ZKo0TCkjHFky+tNich1zqP+y1HF6mC22312xxNNpjs2ePXfOPTyOHcZd?=
 =?us-ascii?Q?7nUGKPBILSyJwZckNil6FU3QnM+ArKkGr8xDVCiCvL0jlAL0SrpPbRzFjbis?=
 =?us-ascii?Q?O1NpbNDRtP7tfWpYYgljxKkEysiqrODT9QDKG1HqrcoH+L5bn+BXofXDCUdA?=
 =?us-ascii?Q?oHUbUwY+gPoitHAHV3tZ6AddXA20GTgERdMMKtcV+lIuVUQ48I02pnKEJFuH?=
 =?us-ascii?Q?M/uRDD0i97zy3JUlXN68OZX+X/x6lQpyY58HAVenaM4EMa38LWBwtk3GGGpL?=
 =?us-ascii?Q?fErHihq4SAarOD9p3tE4npuOIES0HmhDxD18x//VbTZdCb5TpsbJAtxDwr7F?=
 =?us-ascii?Q?JnWYC5Q5Gpo9uE0XSstTFt/f4vlEgTVQzN/Fq26aA2pmi5JjS9tkrd6F+97r?=
 =?us-ascii?Q?Br5Aoq4H4NjjuVXSX89eDRRriZOtoNYB97Ucb0AO9dbce2qQXImiY9nsYHTs?=
 =?us-ascii?Q?G3fHD6ttoR2Zek6Ri7OlWRMeIXWVplzwpSlYOuEPeueosSXZWZRYqz40h0bb?=
 =?us-ascii?Q?wZfDLJuElSKf+8qIJyQyC9dqjb2stMidEvdmFgiHF0Iha9HnUQedjulahVkV?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88dd983e-1752-42fd-18c5-08dc445124f5
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 18:04:08.3910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gt4l1/4BgBC4H2f+1J/BKCO2aSEBbi4W+NmG4H4VgbcgXGmk4o/JKGmISCbRc3m4tO7Q3ZLDCtqCcYptjd5UuHWvhmwu9JAhdOJEvwhLeA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6377
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

Hi,

On Thu, Mar 14, 2024 at 10:10:12AM -0400, Rodrigo Vivi wrote:
> The i915-display will start using the intel_runtime_pm_noresume.
> So we need to add the compat header before it.

Or "So we need to add it to the compat header before"?

> 
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index fef969112b1d..ecaaef3df4bf 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -176,6 +176,14 @@ static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_p
>  	return xe_pm_runtime_get_if_in_use(xe);
>  }
>  
> +static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
> +{
> +	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> +
> +	xe_pm_runtime_get_noresume(xe);
> +	return true;
> +}
> +

LGTM but wondering if this and the next patch in the series should be
combined in order to have at least one use of this new definition.

Either way:
Reviewed-by: Francois Dugast <francois.dugast@intel.com>

Francois

>  static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
>  {
>  	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
> -- 
> 2.44.0
> 
