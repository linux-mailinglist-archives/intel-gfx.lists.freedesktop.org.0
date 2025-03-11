Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D67A8A5D0D9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 21:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6BD10E6AC;
	Tue, 11 Mar 2025 20:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nk9C4F9r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D31E410E697;
 Tue, 11 Mar 2025 20:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741725414; x=1773261414;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=+8kIs+r6Q4G16T067CFQwQTWFO9+ofptvJvM1w0O3/w=;
 b=nk9C4F9rxU/Udab8ASV4DnIari9PDhIqFj6m6Yq1k67StqtyrRdg9FNK
 J+gdpDOLIWmtyyhUjLbsSnTNsp9VfD/2l3JUTIbDLVpS7rz0GY6B7H3BM
 W6VkDLLSHKo7YwqNiKX9Peq5hOt1Da4GrknZgfgUzqyTekodoBDRUC8Q8
 zfJwsbMT/IDbbSfFRg1HTOMWbSZynZqiyWzC9PHYbBIuYSuJoCfPMB9vZ
 4r/WHuRFTRZgkQaXS9FINS+qGcgsmsWPy3aBlvIapLYOSkXzTaBKvs3+k
 GVprY3d7NIOI4/t+ubaS6fvqukzpjTCJrEhoZaGon9sIqXj3Dym9CFP0d w==;
X-CSE-ConnectionGUID: CymKGlrjSsCwhiNGpTuWgQ==
X-CSE-MsgGUID: /pTFAUL6RnqLRIYR7jM+iA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="42913556"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="42913556"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 13:36:47 -0700
X-CSE-ConnectionGUID: PONHaEd+TsCMOzIu7dUoCQ==
X-CSE-MsgGUID: CViaeZcPQfWDk3AVh7P7cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="151233505"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2025 13:36:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Mar 2025 13:36:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 11 Mar 2025 13:36:46 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Mar 2025 13:36:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j8aGl3REwSEKlKfUEGHSZzGwsPL8WKLHjRbIK9Xzb2fYv/7l4XOeHDex21ja81h0af85/L/WOe4vAXQRE6GLs/I0Zsnl35NmFaxLJiEJbTk7LwCP6L25asclrU+T7pBClELA8fSItv9gRcHaiQoXwAAlYoyTWpW00tWKKl2JbxrMyGsZ+0vZ5yeWT6nBquI48L8shpnjYd9opMj+ArXzYD1RHnp4+hEdZGB3PMTszDrEuk2Z8vCmIorzMKPXfiePbVostuurS64uxKnGDy12MYk5ndx7CGpufg2G9/NbrvKKOLR4N51zK24XAgDuEwoJN2TttvfbCZxORkBy1Bz3Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6oXCEyNF9fpiYIbEeBpa3c1Cnt+tZHbVJ8xJM3y1Pw=;
 b=bssq3H20svMbu4pq2+2K3liKFV07vwgIeXHD8+gnxeqwARJ1xNC1cIF1adHSMWKDVpqGEltqUnqcdUGRo5YulM6DL3tJ9EukvKL2Jlr53iKz/EYTPiVGE22qqpnkBFFgEOl5HcJD8nHPi6BhFQLjN13Z5zLicOGUgBE/nfIsiWAZCvVDRFeNMGsyYiCs3PD7rvG6iAMSbga9g9IMdIfARKCdqphQbfGauUYK2JnlgNqjhr10dqjBbM9Ohe8zaMqkyAUL89hf6z5RNz8o6KTc5XrCTg9UCagVImK1lghPZ9TcZzAMS7cOqpUPKV4wNeECkubDpXAYnpZIZbdo6SBTHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by LV3PR11MB8695.namprd11.prod.outlook.com (2603:10b6:408:211::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 20:36:28 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Tue, 11 Mar 2025
 20:36:28 +0000
Date: Tue, 11 Mar 2025 16:36:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/6] drm/i915/display: add display specific runtime PM
 wrappers
Message-ID: <Z9CeyOVBjTWohBRH@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
 <d9ed1f46bfd91fd5aba6214de14c2fbbe7f4114b.1741694400.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d9ed1f46bfd91fd5aba6214de14c2fbbe7f4114b.1741694400.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR16CA0029.namprd16.prod.outlook.com (2603:10b6:907::42)
 To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|LV3PR11MB8695:EE_
X-MS-Office365-Filtering-Correlation-Id: 75462f03-b202-43db-6c7b-08dd60dc661c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?lwXKsm2tj7ssqw+mDvUQelZXg1Y7N6a+tFWflKOkAOBaiKxYlu4T/v0ApJ?=
 =?iso-8859-1?Q?i4SBq2+yYQwL+hUFvYeudKh9ltf3JvtV43ti8lHCxBIhkCF6XJN8AZHNit?=
 =?iso-8859-1?Q?4hJVWgH9eCIJMF8ysfYBzuIsUr1M1wjMM2DIJwH9G3AIH0Tlha/kxmbXXg?=
 =?iso-8859-1?Q?wujZiWMCUaf7i0vSdS7xxPfphcu8Cty156cZko+H4Ta+wrQm4/jTiTKCgF?=
 =?iso-8859-1?Q?L+zowLFz66Z5jf7uahle/SO4jiR9iC+S4dG3P6CxuEbUPYWoZNEppcya91?=
 =?iso-8859-1?Q?VBKr8+Wal2rkikuAWQ/k2L67Pqb8ogsq4lLr7hm/nXh/uPEZR0r5+KYgQe?=
 =?iso-8859-1?Q?RTh0+WI1OxaJ8YIKb8L3BICB/QDglv95YP1ln8ToAVzwx/x1Hn/NZR2Eb6?=
 =?iso-8859-1?Q?LG8c/vg7P69vJv1BtDAa/ZfeSXu3mPWoe/XUAiY6yLfa3yXHvOopI1t+3f?=
 =?iso-8859-1?Q?h1E3z/tlhHRsXVZuz6jwS++CwL0USROAcHD8fSpeeR6UHzFLWTc+U/+9Sx?=
 =?iso-8859-1?Q?uP3Dt3T+lfN+WHEfHKZrwX1gAV5dHtEbDzKzHEq1eb51txahcW1U3c/4hC?=
 =?iso-8859-1?Q?xWbIqQKQF8tKcMNE0vczbfKJGlcrMf6SiKgHfk5LqExsEa4JdCiNwypDXR?=
 =?iso-8859-1?Q?v0VP1eSdVafX9FX+Gt0DcPyv4JMlkLCnL18+eebH0quYlnEWHrnH8NNlWA?=
 =?iso-8859-1?Q?NNSIPQ7YxjkmtIKPz2Rud5KxbQhxpF7RPrnXAcVYOi1lZoXO5FNl5BY8st?=
 =?iso-8859-1?Q?iHhNNm5egNJMWG4IrsJEh5xn38lqBxoLnN2IF4fXw+a60a5MTyE6xGDYw3?=
 =?iso-8859-1?Q?s258ggnkcFv23hMIA6wcSzNcQwymJIh9HMIZIoUiQ1BPGtvmafg0iexRpf?=
 =?iso-8859-1?Q?jZ8oyJD/y7PkkW1FcajiF+8qZXVhoJaQ2xf3eNKrIR877JxKn1zW0zgWeg?=
 =?iso-8859-1?Q?RwsrZWEZVp2Qnv3udKVOXssUDIt0dUZMtfBilzWVWYh4stM3OAZTEYLTMM?=
 =?iso-8859-1?Q?0Pl1cIEzYoKK48qyhG3jBktIJgUokqQmT7V69NtACIlEigv6EwK+oQ6Usr?=
 =?iso-8859-1?Q?HP0T9MDG6xgaGoUDSyafMY2De4RuX6AxpEQAse25fDKmIjQQayznAuiSmT?=
 =?iso-8859-1?Q?CphO30qnAGa9rLUJbc8pGuYNUuCSuBcpwgl2g9pXg8IBjFEpH2gIT1+nN2?=
 =?iso-8859-1?Q?lzZXwMR+Yoo7EyjNFWxYTkS+wRYnN7n1T0K9p5dBuptW9SZdoVy+h8yvcR?=
 =?iso-8859-1?Q?D9bBhvsZfg0mgvZ++jii/ewLfDUDJFJGB/7j9g3XtdYrAQMgpBDs7vhgSe?=
 =?iso-8859-1?Q?7cbMtq22pAllNUM21IYVhsPrEprIJ9oNg7emj2ywSfUAGGYXZKCEoUEb5E?=
 =?iso-8859-1?Q?1JMWe8I50DRMy3r9L8mR2ALvyWCyijbBhZzR6vckRuRU4Z4vcdGfPBWyHS?=
 =?iso-8859-1?Q?Qf9QtqY62FtkKzM5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?xiWQvqbjrYh1CqPxKJ6khwjq4F6oUwLp0MC/rQz5FFVRv+wAPweBp6CSsu?=
 =?iso-8859-1?Q?H3dVl/8SH75+rQ76yLx3tChKBuh8x3XPH8GfBlJhiXEfBiMYi3+sxj0LGT?=
 =?iso-8859-1?Q?wq9wrSXWZ2duadUfj9+cPjGY092ULhlawLrz+15EEUicOY4U4tPNHAh371?=
 =?iso-8859-1?Q?4wqvYiqOKG9d8lTRHCgaIiBKMeiQLHyF3d0f4Dnw8iq+1/P1eNCnSs301s?=
 =?iso-8859-1?Q?AlNBftVVbSMoMJ4HelPb4qKSFc8euAd0P4I1HYyfBITKQQHtgJpK3SPmB0?=
 =?iso-8859-1?Q?xQr8zxybrrtsyPnvwmJ/F/N0Fr+HUc3arIHfwiDEkM2BiGi5pkOh1vmVPP?=
 =?iso-8859-1?Q?yiIQso+GBo5B3pDTY63cF5hRUwKOcdRk75R5yv1r4gwXmWpuMpG2jQj746?=
 =?iso-8859-1?Q?BkzoYDFd2roGBa89EY7hdbYJuKzRg73YmpGPsvUVBtGhqTDqJ/nTjIFrsv?=
 =?iso-8859-1?Q?VO9Zq22TziUt9t+uC0QNIIAwn7SM/X8lmvMidhWRCuTsmRASG5mmRnqP9q?=
 =?iso-8859-1?Q?So9SuqAe0/YJObrTDx5syGqlgbNU/cl1MO8gLguAv0M0lKywYuIK/MgZfm?=
 =?iso-8859-1?Q?EOVZ/83loBqVoFRbdBRJNAiRhNH+nZ5UNdhtqL0dB9IwMqjMZSdYfC+vPC?=
 =?iso-8859-1?Q?jPlEsMHfW1PFcPevXAypGGbI2kqKD2O2NCkzn9iklwSxVc8EEnt6Fm9YEo?=
 =?iso-8859-1?Q?20SXBOKg7zzXqTwF+REQ9Zb/KsCWYH3Zi20ckEjzxc2pksHEoR0G3M7YKI?=
 =?iso-8859-1?Q?R62NqMowKa+IKbvx09L642SgwlDpktysSZxuhiKnc+JkA5hm8oPFOnnRXU?=
 =?iso-8859-1?Q?BuY8dVXiBEomXQr7nugG1DxT+lv9OMWhYOMx+CH/vDWTsPeEpW2z4gC2+8?=
 =?iso-8859-1?Q?i3UlEOD8WrlFxB89akowoH2NsaLLrBa5Od23trpAm5td7TUJXw8e+WaTyC?=
 =?iso-8859-1?Q?BmCVYiiquab1ZPoG+/31IZNK38zsHHfAlWSY3YapZuKXO/JdwuQSDDZh11?=
 =?iso-8859-1?Q?wKvU/Uq+RCmmFpanYcjrNNvPFLRf7N4SKwulty/Qn7D1yuPMMnjRpq4JyM?=
 =?iso-8859-1?Q?fFBi5ol6t5jHZZPvo+iWSEpllIoHAAmp5tyLaOhoeHSfrJ2u99AwM6JjrB?=
 =?iso-8859-1?Q?EFid2xDsFBibYfPwjm4bhZUBezOvuz9f6NtDMAifdOVkLOVDw3sDoh6CFq?=
 =?iso-8859-1?Q?uM76N9Qp8StdNyLe75Bl9GemD2awSlSy2eHh4TshbNLmdYWd2l008I1znX?=
 =?iso-8859-1?Q?BQCGCuGNiRGMm2PKvQpY+wbEYpFCXwg3A6939JZLBs8Z7kwpNmeJzgE+/C?=
 =?iso-8859-1?Q?nyZD01RmrKSaL+QsePOiHiveFdNK28DVBzCT0rfC6KtKn9gqeBkA11LHBL?=
 =?iso-8859-1?Q?LAiHdI6QugOgkJReruhTVGWtNkn75hZz7WHfD3I/d0K28RF/R1uXd/Z/ZV?=
 =?iso-8859-1?Q?+DMmSskRwlzExvRGyvTL6bCqucEb/SJYWibCDsuR7y8WfEhoMYGGbETwp5?=
 =?iso-8859-1?Q?yyPBimLCq60clcYwC6fUiz8v+dTkJ/bz8sJwDLUEf3f5r8kXfx0mn+eNTB?=
 =?iso-8859-1?Q?C3XCW1bJHxvbgFsWbXpA5Km2QXtZhnT2JlLPRKMp5idQy8b2Bf8IbbzJJW?=
 =?iso-8859-1?Q?QLWsPJif7hbRPI47hDxF0img0c7S1M4krXkif/193NALhay6bnOawMJQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 75462f03-b202-43db-6c7b-08dd60dc661c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 20:36:28.1427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cGgM7R6fXzFmenLAsEBRVXhh4LEMaX4SN6J33o6CqZA/D00FIj8/kEQ7oW3lw8QnDhVVUUJ4HO7DAxtCiRU5tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8695
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

On Tue, Mar 11, 2025 at 02:05:35PM +0200, Jani Nikula wrote:
> Add display specific wrappers around the i915 and xe dedicated runtime
> PM interfaces. There are no conversions here, just the wrappers.
> 
> Implement with_intel_display_rpm() without needing to provide a local
> variable, which neatly narrows the scope and hides the type of the
> wakeref cookie.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_display_rpm.c  | 68 ++++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_rpm.h  | 37 ++++++++++
>  drivers/gpu/drm/xe/Makefile                   |  1 +
>  drivers/gpu/drm/xe/display/xe_display_rpm.c   | 71 +++++++++++++++++++
>  5 files changed, 178 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_rpm.h
>  create mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.c
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index ed05b131ed3a..c8fc271b33b7 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -247,6 +247,7 @@ i915-y += \
>  	display/intel_display_power_map.o \
>  	display/intel_display_power_well.o \
>  	display/intel_display_reset.o \
> +	display/intel_display_rpm.o \
>  	display/intel_display_rps.o \
>  	display/intel_display_snapshot.o \
>  	display/intel_display_wa.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.c b/drivers/gpu/drm/i915/display/intel_display_rpm.c
> new file mode 100644
> index 000000000000..48da67dd0136
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_rpm.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2025 Intel Corporation */
> +
> +#include "i915_drv.h"
> +#include "intel_display_rpm.h"
> +#include "intel_runtime_pm.h"
> +
> +static struct intel_runtime_pm *display_to_rpm(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	return &i915->runtime_pm;
> +}
> +
> +struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
> +{
> +	return intel_runtime_pm_get_raw(display_to_rpm(display));
> +}
> +
> +void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
> +{
> +	intel_runtime_pm_put_raw(display_to_rpm(display), wakeref);
> +}
> +
> +struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
> +{
> +	return intel_runtime_pm_get(display_to_rpm(display));
> +}
> +
> +struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
> +{
> +	return intel_runtime_pm_get_if_in_use(display_to_rpm(display));
> +}
> +
> +struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
> +{
> +	return intel_runtime_pm_get_noresume(display_to_rpm(display));
> +}
> +
> +void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
> +{
> +	intel_runtime_pm_put(display_to_rpm(display), wakeref);
> +}
> +
> +void intel_display_rpm_put_unchecked(struct intel_display *display)
> +{
> +	intel_runtime_pm_put_unchecked(display_to_rpm(display));
> +}
> +
> +bool intel_display_rpm_suspended(struct intel_display *display)
> +{
> +	return intel_runtime_pm_suspended(display_to_rpm(display));
> +}
> +
> +void assert_display_rpm_held(struct intel_display *display)
> +{
> +	assert_rpm_wakelock_held(display_to_rpm(display));
> +}
> +
> +void intel_display_rpm_assert_block(struct intel_display *display)
> +{
> +	disable_rpm_wakeref_asserts(display_to_rpm(display));
> +}
> +
> +void intel_display_rpm_assert_unblock(struct intel_display *display)
> +{
> +	enable_rpm_wakeref_asserts(display_to_rpm(display));
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_rpm.h b/drivers/gpu/drm/i915/display/intel_display_rpm.h
> new file mode 100644
> index 000000000000..6ef48515f84b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_rpm.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation */
> +
> +#ifndef __INTEL_DISPLAY_RPM__
> +#define __INTEL_DISPLAY_RPM__
> +
> +#include <linux/types.h>
> +
> +struct intel_display;
> +struct ref_tracker;
> +
> +struct ref_tracker *intel_display_rpm_get(struct intel_display *display);
> +void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref);
> +
> +#define __with_intel_display_rpm(__display, __wakeref) \
> +	for (struct ref_tracker *(__wakeref) = intel_display_rpm_get(__display); (__wakeref); \
> +	     intel_display_rpm_put((__display), (__wakeref)), (__wakeref) = NULL)
> +
> +#define with_intel_display_rpm(__display) \
> +	__with_intel_display_rpm((__display), __UNIQUE_ID(wakeref))
> +
> +/* Only for special cases. */
> +bool intel_display_rpm_suspended(struct intel_display *display);
> +
> +void assert_display_rpm_held(struct intel_display *display);
> +void intel_display_rpm_assert_block(struct intel_display *display);
> +void intel_display_rpm_assert_unblock(struct intel_display *display);
> +
> +/* Only for display power implementation. */
> +struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display);
> +void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref);
> +
> +struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display);
> +struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display);
> +void intel_display_rpm_put_unchecked(struct intel_display *display);
> +
> +#endif /* __INTEL_DISPLAY_RPM__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 9699b08585f7..cd464fe26eb8 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -185,6 +185,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	display/intel_fbdev_fb.o \
>  	display/xe_display.o \
>  	display/xe_display_misc.o \
> +	display/xe_display_rpm.o \
>  	display/xe_display_rps.o \
>  	display/xe_display_wa.o \
>  	display/xe_dsb_buffer.o \
> diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
> new file mode 100644
> index 000000000000..1955153aadba
> --- /dev/null
> +++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
> @@ -0,0 +1,71 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2025 Intel Corporation */
> +
> +#include "intel_display_rpm.h"
> +#include "xe_device_types.h"
> +#include "xe_pm.h"
> +
> +static struct xe_device *display_to_xe(struct intel_display *display)
> +{
> +	return container_of(display, struct xe_device, display);
> +}
> +
> +struct ref_tracker *intel_display_rpm_get_raw(struct intel_display *display)
> +{
> +	return intel_display_rpm_get(display);
> +}
> +
> +void intel_display_rpm_put_raw(struct intel_display *display, struct ref_tracker *wakeref)
> +{
> +	intel_display_rpm_put(display, wakeref);
> +}
> +
> +struct ref_tracker *intel_display_rpm_get(struct intel_display *display)
> +{
> +	return xe_pm_runtime_resume_and_get(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
> +}
> +
> +struct ref_tracker *intel_display_rpm_get_if_in_use(struct intel_display *display)
> +{
> +	return xe_pm_runtime_get_if_in_use(display_to_xe(display)) ? INTEL_WAKEREF_DEF : NULL;
> +}
> +
> +struct ref_tracker *intel_display_rpm_get_noresume(struct intel_display *display)
> +{
> +	xe_pm_runtime_get_noresume(display_to_xe(display));
> +
> +	return INTEL_WAKEREF_DEF;
> +}
> +
> +void intel_display_rpm_put(struct intel_display *display, struct ref_tracker *wakeref)
> +{
> +	if (wakeref)
> +		xe_pm_runtime_put(display_to_xe(display));
> +}
> +
> +void intel_display_rpm_put_unchecked(struct intel_display *display)
> +{
> +	xe_pm_runtime_put(display_to_xe(display));
> +}
> +
> +bool intel_display_rpm_suspended(struct intel_display *display)
> +{
> +	struct xe_device *xe = display_to_xe(display);
> +
> +	return pm_runtime_suspended(xe->drm.dev);
> +}
> +
> +void assert_display_rpm_held(struct intel_display *display)
> +{
> +	/* FIXME */
> +}
> +
> +void intel_display_rpm_assert_block(struct intel_display *display)
> +{
> +	/* FIXME */
> +}
> +
> +void intel_display_rpm_assert_unblock(struct intel_display *display)
> +{
> +	/* FIXME */
> +}
> -- 
> 2.39.5
> 
