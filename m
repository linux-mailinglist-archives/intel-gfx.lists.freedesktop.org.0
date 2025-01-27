Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E02A4A201B8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 00:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6382F10E205;
	Mon, 27 Jan 2025 23:31:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JRuqErDT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C74F10E0BF;
 Mon, 27 Jan 2025 23:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738020697; x=1769556697;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=zqOQoCGBIjp3jkDdTWBT/4Qk5fFXpeN+2/v0JnD131Q=;
 b=JRuqErDTrJ2FsqeQTiZ7ACIlzXHgqFcqSGKqv+y8ZSi9NUVMJFkAVqhc
 1WKutk+xWyr5iXoZgP3KFtjqLNMUvJOc9ZjFIVym1gp0QMsQ6QcC57phM
 JQDO76C/uYRPQ2A1e83/xsWeFGNPNHWPpOqtqtKL9YyffPsqkoYVP/kge
 wI+rG3tnce+kAqLhpJDytvJFpK4YR1yojCGs3FJYVapmNfNtioz2k7N0q
 2PQbCBTIcdQRKiAiOVbDlBj1Ej3/caFhv/uVVAgx2hDAXa24xmqkMKeyp
 5uPPeX0FuqSvipVhiTy6sUrxr+xO6RTjxv3psTXiKSRdi8//fQqju+U/b Q==;
X-CSE-ConnectionGUID: VXQqsSKsTs6DLbY4H6OM9g==
X-CSE-MsgGUID: 3Dofn/AsRV2x2e2B1Dn32A==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="48993350"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="48993350"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 15:31:37 -0800
X-CSE-ConnectionGUID: Evdbh4EBTPyhsimONR6UmA==
X-CSE-MsgGUID: QshP1BiOTf6X4cOWpyIgRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113205724"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 15:31:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 15:31:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 15:31:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 15:31:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XPKMjg4OYMhmimHgQ3grlcprK/qqVe7Se0DgT5gAyCFqOwsG9ODgEyUSjyPXKDeyuECsa9aXAKCYdQHBeAjidMTOfNbzFACUfY62BKRlM7qsvYjpKQ9/7KmfSGbvSJaamtFspPvktgcWhE/CU7QlVtyIOwhrNyqCqDPtu5z4cKPZLvF3T+XXmOVMGXBfudVgxw/fn+CRDNt2k4IfALoTFX6DxuWczWd1vwzsAWJ4gf/ZfJxRHKr8CBdH+qY8xBmdSurIv7g/S6LPOdcpcv/ALhGTvAzC+6yYyJXTQYbkbqplBRiSnU4iOrvfaNuskPbMnq0VrlDRFME6rFMnztHY0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uuu1MqesBfmaiNZhv14hn1dG6ABaBToyVfkNh//7/6Y=;
 b=F8xlhv73AL3jUlwK4QyCYv+OlBdV+subz57h72LoYwYgCUp8l6O8mtSFP1ZJxt414vCBfKlgMNRAHtZNFU2YsQUdZI9EDD7+GgPmouG8FKxURa+9xkBQez++EWOnB+L068ioWVD0PFC+C/zLedRbR8eun1Bg9OL0L3AvFfp2HTcYn4owdcuX/LTV2oimK6pgXF2nCHFnLOgl57T2gFLUU7tzlgLOLkuQikQbQBp/D588V6qozHbeTI5wmsXmqvnk7WkE/DCiP4WPcnFxSKVXzEWlxSud+Qqc8VlKMRpe8UNgV7CSD7a3vU0kjV20BdwY44eREcJKqnCnMlHAHmjofg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB7830.namprd11.prod.outlook.com (2603:10b6:8:f2::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 23:30:50 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 23:30:50 +0000
Date: Mon, 27 Jan 2025 17:30:42 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Riana
 Tauro" <riana.tauro@intel.com>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH i-g-t v6 1/2] lib/igt_perf: Add utils to extract PMU
 event info
Message-ID: <ci2sl6gcfnwqd7o7pi4js5sduwx22szch4lx4sghugixipexhb@4ajmfxfbngr5>
References: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
 <20250127223301.2819108-2-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250127223301.2819108-2-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: MW3PR05CA0025.namprd05.prod.outlook.com
 (2603:10b6:303:2b::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB7830:EE_
X-MS-Office365-Filtering-Correlation-Id: 337e0afa-4322-43fd-91b1-08dd3f2aa252
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?lf4/Yvwk1sFyxPp8Ms5y7CoN8k0HEs5cyLpDCNmg3n8t7u1nOqTaSdD1Jb?=
 =?iso-8859-1?Q?vIlkofjoWAqH2fE6Y6es7pwI1/hPMVNi0U1yJElcXxatLQL4A9BL9LlQqu?=
 =?iso-8859-1?Q?3NApQOqXhrb25utGye0R9Y8TON0FqHqpHgx0EY3oHbb7azgjmZoOeZfa8B?=
 =?iso-8859-1?Q?k1pU4HJ23a8z9cWHCoGtaxmnjf8g0SgbPxDTcvZ3AdQXzJW5zpMu2pko/t?=
 =?iso-8859-1?Q?zmpdnnuZR3GqIhWtpL6eoMrpVhBztfphmTsXwGPpEQvppWgqsSuuuwbmA7?=
 =?iso-8859-1?Q?6OhunM0UxdH91+p5aeO1ns3GGmIOl17FWrMbNwUGXGxxMfl55GTmHvDh0K?=
 =?iso-8859-1?Q?mtrg5gZpZE9EeEVaAGvRPoAenphF5V7VXHrqRtl6xr6Cov3gZ4s8B9W9DK?=
 =?iso-8859-1?Q?AyEWb8geQRdWmeds/K0dRS80zIMG6EtSPR6f2nxNR/qpHudV45P1E3dvc7?=
 =?iso-8859-1?Q?EEoPmU84ZpEavKIpYtzKjUujkew/4uTKNdaad3DZBa0u+ynG324TNfo3ns?=
 =?iso-8859-1?Q?woUywulmyS50yaPmHHCizbXkIL8W12gm9/TrcwdszyZ/YVGOOJG7eU4a21?=
 =?iso-8859-1?Q?OgfZ/7GZSQNKt8J+37pokz23RqYG2Ziht8FwBvpyh5tkx9PbHg/h1yLfvc?=
 =?iso-8859-1?Q?u2URPLmhtcRTzhzSm3E1BsJI+lFDs5C4aR8GAduEf2VGt1xuVXCh2M81h3?=
 =?iso-8859-1?Q?Ff/Vi+KJp/J7NX3r/6ajOzKJpDAxbZy/ClT25CZwOZzuyvZiU4G4wRW1Du?=
 =?iso-8859-1?Q?+p9XF8fujVwVCgDp2azzZzsTKlJPHtiKk4+xSvRPZBopP3Ky91UUEU3ae3?=
 =?iso-8859-1?Q?GvwK6A9TpfvNtH6QeTgU6n5+OAUU0Ny7Pi3ZLHMK2hc9PcYmnqt7OSbyba?=
 =?iso-8859-1?Q?/8eGJQtrr0Y5EesXXw9AomyOWrxKy6IFv1hJroNw21RYPwCGImV425TADk?=
 =?iso-8859-1?Q?CeV07mv96PPy5z/0PLJAM96oDI4EneaKeD899KETHvUlVTHho2ahJ8ZBHj?=
 =?iso-8859-1?Q?kSkW2+fPSZST5kZzJYy1P8bDtfvRtxOhEhJQKDHRkT50lWPxRPTCNuiEiC?=
 =?iso-8859-1?Q?ucBIkZg/iRoLh6ap2dCmAAN72XzTE3xCMH/lpvixyqhlAYPIq6tc5awuSs?=
 =?iso-8859-1?Q?6wBOR2vInXMVHT8ZPJUZOwooDaLUK0iixc6GNwRiGfjDbAXmteAJEIRgWt?=
 =?iso-8859-1?Q?Q2CXd9SAL9lxXinuSWXDkKImAZ41hOfxEzV3exUo+OMIg6lTQKECD+JzyZ?=
 =?iso-8859-1?Q?nzmFC/G+Jh0/dVjx+DRRMPYo0r9A87UgaBOx3nwcKovo5LOmMxK7R009Zl?=
 =?iso-8859-1?Q?pNlK9FInhpgKpDi3u/rC8flofrZPcGEAg5U0ctw7c80Sk/c6E0+Kndiff5?=
 =?iso-8859-1?Q?IbRYpWKI/uIl2XOtqO1+hfm6VKpPwK/kSVJxEM3LpR0E12510/Mv6xY1gE?=
 =?iso-8859-1?Q?EYkP38athGGiLSu5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?WX7Thm5CJZU7ItVkVzfWS+owf3KqU38a8CiokCTWtDlomuHeCtZuhKj/hQ?=
 =?iso-8859-1?Q?eo/RZbych3TgZRe31LtsdMvC+kAfVdzDpeeGssx7F0P2O7zm1QE5iDr3/E?=
 =?iso-8859-1?Q?4HrB5Ki4C7WaRWX52hclYE1ozHFhUPkhk6Y4Tp02kFziMHZeSoLrngdy2j?=
 =?iso-8859-1?Q?lDM0kgHmFYV2SlDTIM8Ud6/S65mIwuTA4LNFtRsgWAqZ5BaHZX0d4gaX5I?=
 =?iso-8859-1?Q?6z183q0ZQyiqFBDPTGuUA/St3JuPG8iBTmx1q5IH1HtuYeriN5Jl0q5kii?=
 =?iso-8859-1?Q?LZFNdQay5a4S0wL6/l658PBQuRs6Haa27meYlqKHs/lBwL7ScjdGbz5kv8?=
 =?iso-8859-1?Q?CjxRFF6Jwj4ARhDLTHFqSu+JReuv3E8IkBLIu2dyuNB1H2nDmiEyYa0CTc?=
 =?iso-8859-1?Q?cXYGqmp9jzuaW3ix/O8G6gZF4xPCTKS+HcB40TfJKlJrGhVRv1ZNCaWEqD?=
 =?iso-8859-1?Q?pIQ2bFN79SbRBxUiJD+7iuH9g6tkww2/UXbS1LAuEvYaEz/TB0ZhK2Ut1j?=
 =?iso-8859-1?Q?O2w8sO+XeYABnuPpnacaIUhoTyq5srhVZCTtBhn2kje3keRkh/uDq/c2Pc?=
 =?iso-8859-1?Q?P/LOQHHpZqaoHnFVgeHkybFwILTKeLraV6rafojKZyLMf2Bjqf0aS38baR?=
 =?iso-8859-1?Q?hb9qF3EzvLGVOvQ3JO/LWyjLtx8ygiW6aHFBuQwPNpQtb4aCwFnL+WIw7l?=
 =?iso-8859-1?Q?gid94UHhzUFBabJaV8zPTalHlnVhSLXnk8rSxg0+M07lq/jiLlbC9cF8am?=
 =?iso-8859-1?Q?AVngLcrCDXtIK1BVrqKwmvabwyKcSra8njChQN21/DnU3ALa0MtpO3Pthx?=
 =?iso-8859-1?Q?lMnwmk/MRIokbHtT+4JW6fUG/GsDw2ZeKC6rjJW5Tv/QEAUMmjsGc5rGLi?=
 =?iso-8859-1?Q?xKxokhP7VJ2dlYf1XcxVjjCpzx34jiC5kH5V+5FPlEwqADnvPJGAhYX2RN?=
 =?iso-8859-1?Q?HypGPCMbeVKpS42kuUMhCLHhYnUb6RdNmF5NgmJsVwCIjvzXKh9iidKN2n?=
 =?iso-8859-1?Q?qasdC/d1lvLweUa0E7dgwse7EPJKbBHjaDXzoBeqKBjM6SvoQXIYjbcFct?=
 =?iso-8859-1?Q?zknKDsDB1POoJnGi0KNRKOd+8OAM2Gmc4eGjqkgKP4Qr2Yft5p8COxyZVk?=
 =?iso-8859-1?Q?VL/hTfd4DI0y1NIV5HJp+qxXqDp5dzH0s9mgtT8Pyx4Q5GcEXj/9KDuwIM?=
 =?iso-8859-1?Q?oW8H/Wnftd68X0O8FXfJoHBGFE3iiFMZYSgkJmQHwsWYE9X89S1hCZLFPw?=
 =?iso-8859-1?Q?2euVWhMe0XNq5CiCz31hbAaF3yC+r+Zy3Q+poYiXNPMAS2wWnZEggNZs0Z?=
 =?iso-8859-1?Q?QgLmOcAcPQe2kjBnfwZuexdtjECI1C+QssM+p7b4NLKzyR5nAAxGaSzrkS?=
 =?iso-8859-1?Q?8HVn4/beLC835et9kEJjdi++o0fX3wbVFSe9a0is6LTn1O6tTOQjAsvJrp?=
 =?iso-8859-1?Q?hcGikIn5i/k7AgRrCg0NdXz38dm2P3Ug+TNi0yyUF10pO+hDTANHvGnaDd?=
 =?iso-8859-1?Q?I4g9knkR3Ejoj7mPIHOUYoM1a4jb8otI7iKNc4laZy7SjNfyoM3BoUHxMd?=
 =?iso-8859-1?Q?7NqZzRiYG2lJJjNgWR2rxBFbQSYLCwopFqZnNzPOXt5AZVFOlwdinRlleX?=
 =?iso-8859-1?Q?hy/tpgq0/so/J7/x+7P0Rqth6XcOK/m4rzxLW/BKfzdeCw37M0D/7l8g?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 337e0afa-4322-43fd-91b1-08dd3f2aa252
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 23:30:50.3955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fbuh4S20sigzJ3Dqp/FjJCn/m1z10J/NhAjShtwi6D0wQps9QWjlhvcb/luMbb1ExoIcLWsg3jSm5YN5nOyKyt8B0LAneaehMr7oAoUCE+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7830
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

On Mon, Jan 27, 2025 at 02:33:00PM -0800, Vinay Belgaumkar wrote:
>Functions to parse event ID and GT bit shift for PMU events.
>
>v2: Review comments (Riana)
>
>Cc: Riana Tauro <riana.tauro@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>---
> lib/igt_perf.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++
> lib/igt_perf.h |  2 ++
> 2 files changed, 72 insertions(+)
>
>diff --git a/lib/igt_perf.c b/lib/igt_perf.c
>index 3866c6d77..7e81d5516 100644
>--- a/lib/igt_perf.c
>+++ b/lib/igt_perf.c
>@@ -92,6 +92,76 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
> 	return buf;
> }
>
>+/**
>+ * perf_event_format: Returns the start/end positions of an event format param
>+ * @device: Device string in driver:pci format

driver:pci seems wrong and is not true neither for i915 or xe.
This is actually the pmu_device:

/sys/bus/event_source/devices/{pmu_device}/events/{event_name}

and

/sys/bus/event_source/devices/{pmu_device}/format/{field}



>+ * @param: Parameter for which you need the format start/end bits
>+ * Returns: Start/end bit positions for a event parameter format

	Returns 0 on success, or a negative error code on failure. 

would be more accurate to the int return of this function


>+ */
>+int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end)
>+{
>+	char buf[NAME_MAX];

it seems this was part of a previous review, but I don't understand how
NAME_MAX is related to the buffer size here. You use it for the entire
**path** size and then re-use it for the buffer content.

Well... don´t really care much: as long as we don't overflow and when we
do we fail accordingly, should be good enough **for IGT**

>+	ssize_t bytes;
>+	int ret;
>+	int fd;
>+
>+	snprintf(buf, sizeof(buf),
>+		 "/sys/bus/event_source/devices/%s/format/%s",
>+		 device, param);
>+
>+	fd = open(buf, O_RDONLY);

O_CLOEXEC

we have igt_sysfs_read() that could be used here (note dirfd is ignored
when path is absolute).

not really blocking this as is though.

Lucas De Marchi

>+	if (fd < 0)
>+		return -EINVAL;
>+
>+	bytes = read(fd, buf, sizeof(buf) - 1);
>+	close(fd);
>+	if (bytes < 1)
>+		return -EINVAL;
>+
>+	buf[bytes] = '\0';
>+	ret = sscanf(buf, "config:%u-%u", start, end);
>+	if (ret != 2)
>+		return -EINVAL;
>+
>+	return ret;
>+}
>+
>+/**
>+ * perf_event_config:
>+ * @device: Device string in driver:pci format
>+ * @event: The event name
>+ * @config: Pointer to the config
>+ * Returns: 0 for success, negative value on error
>+ */
>+int perf_event_config(const char *device, const char *event, uint64_t *config)
>+{
>+	char buf[NAME_MAX];
>+	ssize_t bytes;
>+	int ret;
>+	int fd;
>+
>+	snprintf(buf, sizeof(buf),
>+		 "/sys/bus/event_source/devices/%s/events/%s",
>+		 device,
>+		 event);
>+
>+	fd = open(buf, O_RDONLY);
>+	if (fd < 0)
>+		return -EINVAL;
>+
>+	bytes = read(fd, buf, sizeof(buf) - 1);
>+	close(fd);
>+	if (bytes < 1)
>+		return ret;
>+
>+	buf[bytes] = '\0';
>+	ret = sscanf(buf, "event=0x%lx", config);
>+	if (ret != 1)
>+		return -EINVAL;
>+
>+	return 0;
>+}
>+
> uint64_t xe_perf_type_id(int xe)
> {
> 	char buf[80];
>diff --git a/lib/igt_perf.h b/lib/igt_perf.h
>index 3d9ba2917..69f7a3d74 100644
>--- a/lib/igt_perf.h
>+++ b/lib/igt_perf.h
>@@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
> int perf_i915_open_group(int i915, uint64_t config, int group);
>
> int perf_xe_open(int xe, uint64_t config);
>+int perf_event_config(const char *device, const char *event, uint64_t *config);
>+int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end);
>
> #endif /* I915_PERF_H */
>-- 
>2.38.1
>
