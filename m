Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B919A0DDE
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 17:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1105710E737;
	Wed, 16 Oct 2024 15:17:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i0rpUMFE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B720510E72F;
 Wed, 16 Oct 2024 15:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729091833; x=1760627833;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EofulnENmXTN7ZPTtipjh5SKXKxABsB+C+/ubiOa8uE=;
 b=i0rpUMFEEC9Hcbp0ZM3G46vExLN1g+UJLou2C0MLD45i610Usff44wWR
 JgnnqDFrETU3MJ+/rXwqhfd0jRPlLwarbMBBOd8F51hLkqqMt9j4Ko3EM
 KpxJRD1GUEYI77eFcG7i1d8UfUaG6bK3B5Ep92blB08clLwYqQei4t4Sb
 y8qimvrUOl4txFgtrtxpO2Wyh3zaqCnItcrcUT5OriRhed0pA+3jlkata
 I7qb8ws24/GISvwn6y3vJwNLhXws3cQOHLiNHVkgUnuw7Vfty6crM/fK8
 dRPWQlKSmU/s9wWmGfCOjwq2LItkGW9F3uml6kadN2LIILZpZO1Jo8k+6 g==;
X-CSE-ConnectionGUID: 1YBobagkRpO4cjcmrBlOGA==
X-CSE-MsgGUID: xCswJV0tSA67MCS3W1c0nA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28695169"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28695169"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2024 08:17:11 -0700
X-CSE-ConnectionGUID: 9erjm4daTyOvk6uFV52l6A==
X-CSE-MsgGUID: R/Yk6FgHSwy5AucgLBaXOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,208,1725346800"; d="scan'208";a="82798544"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Oct 2024 08:17:11 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 08:17:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 16 Oct 2024 08:17:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 16 Oct 2024 08:17:10 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 16 Oct 2024 08:17:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XIF0aMDwBYK/P8MDX59JyBmnOx6G86gyv4SevJHrLDwehhVLG1wz67cKeMv0KEoqVbH2Gpy1KDB6M1mm0FIj0XKryR6k6SmEyVs5+J4ZbYp5i42gAERYDUTRevcBP6MMo3qwA/LyKE9WTqCN22hnlS8b6EHMgxb882PXvw2aBhyt+jPNX5b0ec5AQyTBo+pPpDBg0mmUFc0vqqv74CtGbpqyky+3+4sj5aj2hzXhvv0W3JcRsMvwqEd3d7qhFI9uVEeQv2cF4laBrr0QhuJbgal58I/dSu6oRmNw03CCblMN6YtGHqrfw8VqXa2xzhE8tq8B6hKX4cwXOaHA/ihg9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1S5OggeBah9HeZL2oHUsHPLH7XUo1fNdUCR+zDLDZSE=;
 b=LZP55tG6OoRFE6g8Rt9L4zSELNtEys1Yw6d0kbTAsg/2vfMcT/SfRxxvJvIUHQusIz2oJpB3LGUjhy98APigByT3v9SAukHy87CIinj9jRMPaOw4kEZ42tw4gabBQrht84qWeKoc3hZPHlWur20ZsmvOJipuuMpDCyPxcKSsdnxbGE0QvMeOi0fvr7BACiqCrKrD3kSpSlqrNzOkiurf7iBCgoGn/bqscQqWM1UpvegGVA7+EoZwtPOv7H/+9kKoEy7V88er4q1qNOPRV2Q5IIg9W2hcK91qHuCOmAOI9uKnB5wDFZOqbaA/9SGbt48UPTZ9i7zjja3B/GpQKk0kkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7787.namprd11.prod.outlook.com (2603:10b6:8:de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Wed, 16 Oct
 2024 15:17:06 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.016; Wed, 16 Oct 2024
 15:17:06 +0000
Date: Wed, 16 Oct 2024 08:17:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>
Subject: Re: [PATCH v3 2/7] drm/i915/xe3lpd: Add cdclk changes
Message-ID: <20241016151701.GX4891@mdroper-desk1.amr.corp.intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
 <20241015231124.23982-3-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241015231124.23982-3-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR11CA0060.namprd11.prod.outlook.com
 (2603:10b6:a03:80::37) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7787:EE_
X-MS-Office365-Filtering-Correlation-Id: 0fc02c6f-0d51-4378-1179-08dcedf59853
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lbXCWBg9RSglV0FSx9IEXMR1Lr0dqfEdd6AryYYMThlICVMgepynRS2LUJKj?=
 =?us-ascii?Q?YvSUarxIkooF7jMGt8YAGsDQSuJv+zpYPjm93OXokC1MslZEHkwHS9oD3H7M?=
 =?us-ascii?Q?9pV5VRgUA5wc5lnmiRZ3pVCbc53KoUq3ATnTw9VKIeIGo9fCoQm0VJTn0S5k?=
 =?us-ascii?Q?MxN9UMgDjMXcsX8vDtlwnPasKnL1ZIjJz3EQn75YjUECrKzdg+6tdYpwM5Je?=
 =?us-ascii?Q?BxqWIL0NqpbNTCVXD+jzo96diMQj7k9P/dkFSUh3EXPnQSWeMrxK4kI3IkGL?=
 =?us-ascii?Q?gMCZxa83MFPpbC1ziBySieqyHOKwrpbck8N+durgB0yUq6OK1jzZa2w7T9Hx?=
 =?us-ascii?Q?E2oJ5VNwoo3kMJ7BSmnIYbk8IU1jD0xVwwviXKprhUBvck/fA4ZhZWAVngsa?=
 =?us-ascii?Q?o/h6L/7sK0Dss31pBtiNGxFJ8+g4EJIB9ZwdgNfqRBmSH4K0sKQ06Q06v2sC?=
 =?us-ascii?Q?4SkFiXRHM4aDcU1HSwkkdDkOnDEqFpvtfYpB441tzj7zOiL/QqttILqDT3ne?=
 =?us-ascii?Q?rUhbUkOg5qLnH0rf15xgbVz8A5OaDukxp4I00hxjUKj4SP2Wk0cMlncHTdyj?=
 =?us-ascii?Q?Ohhum50k3MS1YD8NL8FhZ8HrmSG3aavAM2KCeeAaKIAjsfwh6oiz1i5iBbjv?=
 =?us-ascii?Q?Pg4huKCLE83DzrgmDTSLpqTWMxD3TGR2LGaVkXOzXAvM/42u/w/MhAeocAOs?=
 =?us-ascii?Q?sEUJY6Huaiz71kLSBDXfslI6OJCENPL0DmBcxV/yWZDeNkci8X0K2en5Cu6Y?=
 =?us-ascii?Q?CzwWdQZ2vuBCNrEOUFk2BeMinSI65sER3nY9gRsbWd13Ij5HkEbFrTcDdrLJ?=
 =?us-ascii?Q?haajwIer8KnDsG64lixfmGCcV+C+uKX1BFrRePOLTzVAX7xFGxY0Upx+TEqK?=
 =?us-ascii?Q?qxz/R650JixjvOsAOm8lFhcILs4kAS6OYS0LKGYfF4Itu5HrnoEgpgN4Q0tS?=
 =?us-ascii?Q?/PjWAywzpIqZaNDkk10SET+IrDsPcoqn59GF0+4ZfvTwb3XVKLxt9cjpqH68?=
 =?us-ascii?Q?BJy+tEJwy19188QvKKdy6ohk1NEl9sEcqr6wgtIGoExP4Pnco5AAHRGWFdUe?=
 =?us-ascii?Q?8BaMrs+chMdpH6H4EnnvYt38rxr2BPCwy5Tudf4YEK3zKG2d6oEvip/wmc2v?=
 =?us-ascii?Q?U5HcdLO4WUUry1PBPLhIRqB9HO5CiAu702z/01cZjj5FDWvp24wqtP6YKZaX?=
 =?us-ascii?Q?QA/CD8gSEM/ss3K1PFdluvzf4xL69Ku4cMgz9RPDGbwtCfvBYVywEZlESfO9?=
 =?us-ascii?Q?HDcDyU1ewQB7tORa56xqpd4kdwfo19fmD86iCUDXBg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V1rFNhUbi4zDiSYvV1dH/p2BvHxa8PbzoF71ppRfLQd1+v8Tsx3AHlUMDR2D?=
 =?us-ascii?Q?ywx536h/IoN7zpWr6tyfA8WqMYRTTiXteY0QpgtsgzA6V35z6dMi29+TNe1q?=
 =?us-ascii?Q?Lg0gqpqK9WNsjyU/Y599WLzRN0Jeoa6UUK4S4Rw71sW+g0BTLI8wukVHf7Qy?=
 =?us-ascii?Q?RWMKSPoSgMwlg4i2i4yG3RphDJ1QlztLF082VV3ji42dMB7ytBXQE/GAZp7H?=
 =?us-ascii?Q?9OGSkDHqsTg2MLKemN5gCFbV564Lp6Xep+8bXOzNBZt6czArXoycB7gk16DA?=
 =?us-ascii?Q?rDsfUnaLtYFbR1kQV1JglszRFXO6UCg8KFDDevhmSIzmdy+WanUIR8o/TEJk?=
 =?us-ascii?Q?tr9sDGX6vhwprjZ9RrCzGGrqiTcWWz+njaJAPpNYGqB+jk7D6rXRt0p7ksoE?=
 =?us-ascii?Q?29jda9zgDfKuHvVRCzr4+UhlCAeHH/1QJoUm2nNgDOfOcvilOCqVXBtK6b1F?=
 =?us-ascii?Q?FnSXipjkzz37le4mUnOur/EBBYpBitokUmcYKsXFaQYKO/L/VhmZ/FZTSio7?=
 =?us-ascii?Q?mxwHT4sf9BoYkjnjF2b0zxWmA1qYP+T/UizRy7sgUqseE962GeGpgOqipiC2?=
 =?us-ascii?Q?5KG5JPvDNbGO/2UKcv0LbHKSX9tCIfF5kt5h2Cs8h8N5RgOXrf4xAu3FrbqZ?=
 =?us-ascii?Q?PAp2jpB1JqUVrcVrPU4RaQzyaCYQS/jvHSAs4wd6aF3H/VoQ/+Er1JV1AFWu?=
 =?us-ascii?Q?Uhpl/SFZaqcMtosc183xN1hdpbx+JdldGeQVm9/4+eBWnwY6VblZHAQarprO?=
 =?us-ascii?Q?5YX/KK4cDxRqK5kltcjtPEfBPNBpaa28ybNqArhVz1m4xkiiSL3AQmPBeCgu?=
 =?us-ascii?Q?zKbg3NKb0wBvbSyIErSU6eqIYlIS5dTZF5KYu69q/F4ELX+YNRDn78Ab3fTs?=
 =?us-ascii?Q?lez5lWX1VOB1/WMFLu+NF+KjRkKpANGdpSj6iuv/XT8vHrNCSjcLt2tWUFas?=
 =?us-ascii?Q?sIEIMFeR/hWOPBcW2efvrZ/U5tC8CoID9rHY+f8T7tCqYaqPz+qWEQ7yLC9/?=
 =?us-ascii?Q?pMvnMjiBCibAg85yLMgLR+0pqVPudNWC7rcL9X4ArKay3yv1QsH1cYanTVC6?=
 =?us-ascii?Q?TudVAF0IZbWGzFe5yGImm6EDOeuGwJNhbdqHxrF12hbHkKMbocGai4biuBWX?=
 =?us-ascii?Q?tPDtm1ughSpPnJVxypA/XIBGAMqmenGaq672wecUoGvmM4DcDSzRyEWZSHmY?=
 =?us-ascii?Q?VwKKF4NKMhcrMFLQgZ63uegVuGL8kvR0Exwk8BAmTpiZ+mz+T+iKRWvWOOSB?=
 =?us-ascii?Q?zqjY/dyaGbp+0AaS9fncwojjOQ/gBCVVw5QhF5gs1c6IqXTiwv8afVd3R8Zr?=
 =?us-ascii?Q?RpfLiB0NzQqoi5YYxicGKHZn5Bhlnhf04P0/OL9e25Dyl9f9ZV7na3Datoya?=
 =?us-ascii?Q?ZQFqOE3vBVBKHd3ovTPdEODbSvLBpr531WK6HixprfymQQQkk6qc8ePeEA7F?=
 =?us-ascii?Q?Y4fAWX/gpoo5rUuqibMZPxjtRcz0JBtF+y3/XEmeuevbOCkgyt2gbbja5+qx?=
 =?us-ascii?Q?XdKddw3/oDFjEdbyQwTnDAAQlvrL3lRzL98XPdMn3DBdUFYXezhIRrKOMJC/?=
 =?us-ascii?Q?exLZMBZKhZz+vtaPZLj7yS2Des/3ygUfwdiRnmqygtrWa7xIKyaOTXMT+0xO?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fc02c6f-0d51-4378-1179-08dcedf59853
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2024 15:17:05.9718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UehOzJfmLrz/4/1Gbws7xktPkAfD+Uxo2Iidj9O5Vs4h+QSpQkXzZmtggLId0xqV+oFc58cN7Y+0do5QzbfsuxOYRiidPCWiMZ6Dxpv8JdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7787
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

On Tue, Oct 15, 2024 at 04:11:19PM -0700, Matt Atwood wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Xe3_LPD has new max cdclk of 691200 which requires reusing the lnl table
> and modify/add higher frequencies. Updating the max cdclk supported by
> the platform and voltage_level determination is also updated.
> 
> There are minor changes in cdclk programming sequence compared to lnl,
> where programming cd2x divider needs to be skipped. This is already handled
> by the calculations in existing code.
> 
> v2: update tables
> v3: xe3lpd doesnt supply the power control unit the voltage index
> 
> Bspec: 68861, 68863, 68864
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

As mentioned before, please make sure you're adding Cc's to patches for
anyone who provided feedback on the previous versions.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 59 +++++++++++++++++++++-
>  1 file changed, 57 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index fa1c2012b10c..96523526a2c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1468,6 +1468,39 @@ static const struct intel_cdclk_vals xe2hpd_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals xe3lpd_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 326400, .ratio = 17, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 345600, .ratio = 18, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 364800, .ratio = 19, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 384000, .ratio = 20, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 403200, .ratio = 21, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 422400, .ratio = 22, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 441600, .ratio = 23, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 460800, .ratio = 24, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 499200, .ratio = 26, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 518400, .ratio = 27, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 537600, .ratio = 28, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 576000, .ratio = 30, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 595200, .ratio = 31, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 614400, .ratio = 32, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 633600, .ratio = 33, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 672000, .ratio = 35, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 691200, .ratio = 36, .waveform = 0xffff },
> +	{}
> +};
> +
>  static const int cdclk_squash_len = 16;
>  
>  static int cdclk_squash_divider(u16 waveform)
> @@ -1594,6 +1627,16 @@ static u8 rplu_calc_voltage_level(int cdclk)
>  				  rplu_voltage_level_max_cdclk);
>  }
>  
> +static u8 xe3lpd_calc_voltage_level(int cdclk)
> +{
> +	/*
> +	 * Starting with xe3lpd power controller does not need the voltage
> +	 * index when doing the modeset update. This function is best left
> +	 * defined but returning 0 to the mask.
> +	 */
> +	return 0;
> +}
> +
>  static void icl_readout_refclk(struct intel_display *display,
>  			       struct intel_cdclk_config *cdclk_config)
>  {
> @@ -3437,7 +3480,9 @@ void intel_update_max_cdclk(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
> +	if (DISPLAY_VER(display) >= 30) {
> +		display->cdclk.max_cdclk_freq = 691200;
> +	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
>  		if (display->cdclk.hw.ref == 24000)
>  			display->cdclk.max_cdclk_freq = 552000;
>  		else
> @@ -3650,6 +3695,13 @@ void intel_cdclk_debugfs_register(struct intel_display *display)
>  			    display, &i915_cdclk_info_fops);
>  }
>  
> +static const struct intel_cdclk_funcs xe3lpd_cdclk_funcs = {
> +	.get_cdclk = bxt_get_cdclk,
> +	.set_cdclk = bxt_set_cdclk,
> +	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
> +	.calc_voltage_level = xe3lpd_calc_voltage_level,
> +};
> +
>  static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> @@ -3794,7 +3846,10 @@ void intel_init_cdclk_hooks(struct intel_display *display)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(display) >= 20) {
> +	if (DISPLAY_VER(display) >= 30) {
> +		display->funcs.cdclk = &xe3lpd_cdclk_funcs;
> +		display->cdclk.table = xe3lpd_cdclk_table;
> +	} else if (DISPLAY_VER(display) >= 20) {
>  		display->funcs.cdclk = &rplu_cdclk_funcs;
>  		display->cdclk.table = xe2lpd_cdclk_table;
>  	} else if (DISPLAY_VER_FULL(display) >= IP_VER(14, 1)) {
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
