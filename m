Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E334F8CB0BC
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2024 16:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B159A10E053;
	Tue, 21 May 2024 14:50:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DY3FTS9Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF93C10E053;
 Tue, 21 May 2024 14:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716303033; x=1747839033;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YD76So2629DZTegTUUZjk+IHxdR9Te5a9hSMZnPuI+4=;
 b=DY3FTS9YsdAC3CDywbEXF2WUSSpv4PzFG8Xz8JBb8U68nPNmf8CqdLMK
 ZLD8RyUd3bblfigwqtAF5jTeLYLdM0mDJtUy63qCB+6jaDeLF+Z8WB3BB
 LlGyMYQf4SJempx4rakCXeNFwxUdxlsPRLchPupe5pgfzNcn6ejZTlu/a
 MqlXXT4Bd4MnMKVXtEGEG8XLf1cGWMTFkhoxRT+90k/otVZB5AMGJ1ncA
 rdoJg6TLIP0GT/K/MtO+dx5n4rM6cPaIFxi2810ZYw+JyEzPYa0OSWBOJ
 bsKSWqzPV4vmFSnH1FUbzzC8AmysOVa8XQtM/blg9NqHmiVsHAIMXPS6B w==;
X-CSE-ConnectionGUID: pufuk6klT+eR3E0d4oRoRA==
X-CSE-MsgGUID: qJH5K6xyS5SJsSCBbUwgLg==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="12443928"
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="12443928"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2024 07:50:32 -0700
X-CSE-ConnectionGUID: TiGMIifOSRmHb8r+OkVgdg==
X-CSE-MsgGUID: ARIz/vf2Qkeqr/6TcBVT3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,178,1712646000"; d="scan'208";a="33556782"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 May 2024 07:50:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 21 May 2024 07:50:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 21 May 2024 07:50:31 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 21 May 2024 07:50:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nqplZkt16XoESSWr4wpgTnDAebX2kA8hCHUxk4lKEWKR1QgqGvlINU35PdgQFfJfC8g1Jpfw8LYUxp9uG0KT1rF90a4yh4Jqdtg3S60O9JKfImAJ6hG3kpKdoswnebrnI9X4mg/8ZLBZGISwh/ttuOiJ253X8+CpKrbuNl0+6N5J6nr1e1M9SkvIfkxNTgjJXCXMK8x85M2KRkfQxVnWT8z0Q5U8ELVkuQH+DXJlvNFN6gbSwPWD3R/L39pn/msNEg6YSXvu5bAbV8UYhXe3drnHSMY+EaBH6r/jDqkJ+UWMoHoshMjFhupuN8NnFD7nFSd7cBLPJ1uLjEMfIZqj4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reQre48OwC6Jq/1VX6xzeWR3BmsNvdIAn6MVJL26v40=;
 b=Za5a842hNtBpjZToIIoytKWWbuXrP80ZkF65yy1p/35wYJ8ODW61c1yIBpW9bxGmVWjWdHi8xEaZp1hwG+Aqc8mUjpXKRwMIlEK7ECe44POzx3jedTN47ObV5cKSzdHBEXNAdoHJLCOMWXP4sygbl3Uul221FuDobvK4MWXFhG4ulCAOhJ8CYK0dQx7Q3K9HhFfcQHtig4ZruPhy5YmK+Jnl1mDGdADFunYB3zQOfjz7Bi6+s70bI9VQclHRyQXFyPayutzMRAkr+ln5wfu14aQph94m8I1l12QggTycdzm+6dpwKqTctVbUAfX2zyu2ib3SoL1wOP9XX7j6eBi3mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8)
 by SN7PR11MB8264.namprd11.prod.outlook.com (2603:10b6:806:26c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Tue, 21 May
 2024 14:50:28 +0000
Received: from CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d]) by CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d%3]) with mapi id 15.20.7587.035; Tue, 21 May 2024
 14:50:28 +0000
Date: Tue, 21 May 2024 16:50:21 +0200
From: Francois Dugast <francois.dugast@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/xe: Don't rely on indirect includes from xe_mmio.h
Message-ID: <Zky0rYZcjI2Q8Bcy@fdugast-desk>
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
 <20240520181814.2392-3-michal.wajdeczko@intel.com>
 <ZkypTw2yXt7R2lIu@fdugast-desk>
 <19473e9d-8380-4f39-a42b-c522bfbcbfd1@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <19473e9d-8380-4f39-a42b-c522bfbcbfd1@intel.com>
Organization: Intel Corporation
X-ClientProxiedBy: DBBPR09CA0022.eurprd09.prod.outlook.com
 (2603:10a6:10:c0::34) To CY8PR11MB7828.namprd11.prod.outlook.com
 (2603:10b6:930:78::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7828:EE_|SN7PR11MB8264:EE_
X-MS-Office365-Filtering-Correlation-Id: dc4f42ae-2b70-4fc3-1ae0-08dc79a55b39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uLpTTYmuK4ECuteyFqvAvzyIMWBi3HXqXpDR5AJm3S7PR4brFzIFn9xOCkaZ?=
 =?us-ascii?Q?TVd6UrBxVNn2t31WRvnV08Y8FffVn1NfGINgSk0no5yVjjfVfPkPwlMmnAv3?=
 =?us-ascii?Q?cUW844KGPYnWmRLvh0cRdE9blRtss9TMKheY9PIlktcd/nZgdzwKksKJLK0B?=
 =?us-ascii?Q?h2/yzRUUXBaZWN/SSdCY18cpPzdKK36mMb1V8rvaMXd89vLKcivKsJIHrTcg?=
 =?us-ascii?Q?s1zMpljvIBApQDCRy+b6WUQGp2V5lCVlUwl7aQ7j/IEMTG0S/kUlguZ4hKxY?=
 =?us-ascii?Q?B97CRvCVUjoTbitOOv2YFr08/v8GZ5SGI72CSlM0OG3KrX18mjw3GAilK/zY?=
 =?us-ascii?Q?o3BkVbpQr9dZF9kENsOVD8MV+cxu5DOqlC8I25P1lPjyAD1cyCuSrCUwT+2K?=
 =?us-ascii?Q?4VzUgo8r3/3YnzdihughKtkteIjtIN8+BKjSn8qrqLZbcomPQjdPcm+kX2lm?=
 =?us-ascii?Q?K9dLCNTGnDprmy794L0MTJUGtgapgB4fbl7PeW4xR8OwyosYgqeuPhz3GLkE?=
 =?us-ascii?Q?7+TCGH044PVl2I4mlDtipnxZiPNkHM3skH3HM3c1LxXL72R2jBB0GZSA8xhl?=
 =?us-ascii?Q?5kgtL9ShorgFc1F24x+Lqj+KRlEH4ZUnBTmir+3R+cBoo15Cl2eiIhRYAxvP?=
 =?us-ascii?Q?B72x1ucUV2ZgHnKxrUOmuoETa4P/NSpsFl5DyMnMd9VbHnYobGf8XpImZexC?=
 =?us-ascii?Q?xkmccXI4WFFHlTMPiLBroOtVSVgeIKgOylQEoYTHMCno9DjnLC5L2tAFJE5K?=
 =?us-ascii?Q?lXLffOZXQ7R3uQxXbG381w4gazo3BjijOQChSyqAbsrYuoqh7jZFtLd431wb?=
 =?us-ascii?Q?9b330iVeHTBCUMntGZXrC1ihybJT4MOtCQ2xfScb1W0kpwLTs44b5w3AtzlU?=
 =?us-ascii?Q?5jdGrbDm2idOTWh2cAcF8s/cZ42UrTN0C/vrFk8uGBVSJ8UNVhCo19DC2Kcs?=
 =?us-ascii?Q?/c+RZoJU9dQ6bf7OGhYvoOTeH3rUI2c9cXO6jq6XDYRu/300GBHie3vmxcj3?=
 =?us-ascii?Q?sl1mXHZdXP4Ad8B0rmfUCjTEHinBpZ/PqZ6gYRta3upzXhLu/4ORwyRB2deg?=
 =?us-ascii?Q?WqDMwHaaFVBerCEqFwd5+NWOqjkgmPny8v3vw6fyZRA+bGP6aAWOXhT/Cfiu?=
 =?us-ascii?Q?wF9DlbiUPUfLPY5STH9j+bg7fsWrM5Selo25t9iehCBDC5t76oEtdWEgH7f6?=
 =?us-ascii?Q?lEezklQX8IbGPk9fpu5aURo5ZeV+aS6/UN4X8fS9DYKHEM8VGbJyLVE508Tx?=
 =?us-ascii?Q?ceGeBb9fJIuREacN6zMun/dZ+lRyAIa4n35AMd16tA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7828.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FnYssEHUbAuv70dXTeeCVV5dk/tqa1xtAo10GTPdLfwFNSKlsnC+rf8N95M/?=
 =?us-ascii?Q?dpNnw35o79CKhf+DwBSJ+/Y7WsiBCeIgUmOzwkhKXkTzuB1eAJrMVsJRfNV6?=
 =?us-ascii?Q?XWT8sms/A4umgh33IPNDUzwRaqvNI5kNwtMvVHJ3ma5/vWP6rM9DquF78I6C?=
 =?us-ascii?Q?EMg/Bg2lESNxNeCnVDDJ5rVfjk1bRt2dXwXI7ZVXOcOWNzjRMJFmMIS1IBmw?=
 =?us-ascii?Q?INOOpcbtObElaqR96oBXa0gr9CjHfMn8U6IKzqTPqSXchoOYvsMSOtw9DBcG?=
 =?us-ascii?Q?xtBI0lZPrABb5Ujb6ODSnkDe5mJhF80qPsK3PNyyy6sinp5RkYg79SOHojPZ?=
 =?us-ascii?Q?KzSN5l/VrWi/Eofu5tN9YVVR34JF7ta3ULxKsolTihkuO6EXmLIjJJTtlQIe?=
 =?us-ascii?Q?SzCOe4TmhhZ0uzt4xV7UKIuaYNdMjIVZZe9olIRXbnPhoqmM6tA+UBibdtFJ?=
 =?us-ascii?Q?mARbViEWBQri/6EVL/1jyzPeYHPRZ9btrkNyFtKgt/qAwIka4wpYeVu/8HXW?=
 =?us-ascii?Q?+xtJaOe1Y96HyQ4dafo5AzDJgVUCdSvcHp69WlUae8UL9E0h/iJHuZZaBv+5?=
 =?us-ascii?Q?wR9jsnRyJFLOow4G60FlykT8W7VLDnbWHk/lIqqaaQLEiWW03vsG9uap/jeq?=
 =?us-ascii?Q?MCSFjgtEvg8SBvXU7MILJzKkNj1hz+oLm7yuF2IauPz1TKWE7Eo2dwa7UEWn?=
 =?us-ascii?Q?fct6HbxCUjqdo/5zrOtDxiTTcLN5+r1/sTy+USJ3VQTBL8YOICyM4xk6FJpT?=
 =?us-ascii?Q?zbB2oKzhe1WgH/eOKZ8nU62+kOxuNcVUlJTFv/uTf68UJWfRXSKTTdlLIF4L?=
 =?us-ascii?Q?sd7MvZY5sZ9eQkr8LW5n0e1QaEWfihYh76Zc6sniOCG+7IapVKkvjelcpUzt?=
 =?us-ascii?Q?suqh/fvoBjwNOgl2zo24mWpjhoZpF5zWl4ejFb5w3j58bXob2962RV51iYRw?=
 =?us-ascii?Q?HfGz/iObid2j6742uDaP85pvRPJlUQ066NAu292F6zcj0uYfN303zDbeRX2k?=
 =?us-ascii?Q?meJjk58lezgQWQCmnSIFZX31oO63vmJPv8EOhfl/EPHDlleqSjCI2CS1XdAj?=
 =?us-ascii?Q?1DZFdljmAG8/mKakYcnA8phCZkOIj58GkXAyKG4H2ecKLZIbcWYWnn7xNFNB?=
 =?us-ascii?Q?Eh1Zpm9LM2bDadf+TD4RJvCFJ+MV02nPsihEHltDAhGwJMvJD5X+RobbSbE/?=
 =?us-ascii?Q?AV3OU8/PlY+Evo4e1VSXBUm2WsQ56Rle97EuUDtocL59SOgyc+9qLg91wQXL?=
 =?us-ascii?Q?dalXFEs0KtrGWcLP7TMh3OYayWiqohlvvSyZzi2xkCn29eKZaIPASG8ABf1a?=
 =?us-ascii?Q?441cuAQN2or+EeYTKNanyxnhTm601jaUn3vzP7Q6uqeukH8B/R/8BqySznhD?=
 =?us-ascii?Q?U+58FvTa0/IEA99C3+kMiGY+EfPilnrU0BhH0vHmdMZ+WZZOscLVg8bRjrr4?=
 =?us-ascii?Q?ToGTXkTym4LMLStjI0WYHJi/s/aWe4l+bZPbN7zs+l6ThPI4gWV+8ubnMKIF?=
 =?us-ascii?Q?5QtmP13XY45aRzOxJlDywDcT/ehBknPHEbQJEvMbXMDid0+goVTjcw9ESfFb?=
 =?us-ascii?Q?v7g+nbYFYaj7ZZazJ4CYOTBuczCfGrxaTcGZAMAN18dzIxskBcEJWf2eUqQW?=
 =?us-ascii?Q?2g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc4f42ae-2b70-4fc3-1ae0-08dc79a55b39
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2024 14:50:28.8103 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BSMzml1iWC0qcugK5gTGrTBCHTVw7/w09yuaiB59DUEpwg5plkcvrOmMDO8b/Pfihgggf7AL0RYAly0UI/sQVSGJh73QCXOQ1j+I0m0cT/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8264
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

On Tue, May 21, 2024 at 04:10:25PM +0200, Michal Wajdeczko wrote:
> 
> 
> On 21.05.2024 16:01, Francois Dugast wrote:
> > Hi Michal,
> > 
> > On Mon, May 20, 2024 at 08:18:13PM +0200, Michal Wajdeczko wrote:
> >> These compilation units use udelay() or some GT oriented printk
> >> functions without explicitly including proper header files, and
> >> relying on #includes from the xe_mmio.h instead. Fix that.
> >>
> >> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >> ---
> >>  drivers/gpu/drm/xe/xe_device.c         | 2 ++
> >>  drivers/gpu/drm/xe/xe_gsc.c            | 2 ++
> >>  drivers/gpu/drm/xe/xe_gt_ccs_mode.c    | 1 +
> >>  drivers/gpu/drm/xe/xe_guc_ads.c        | 1 +
> >>  drivers/gpu/drm/xe/xe_huc.c            | 2 ++
> >>  drivers/gpu/drm/xe/xe_mocs.c           | 1 +
> >>  drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c | 1 +
> >>  drivers/gpu/drm/xe/xe_uc_fw.c          | 1 +
> >>  8 files changed, 11 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> >> index 8da90934c900..28a4e0c3b1fe 100644
> >> --- a/drivers/gpu/drm/xe/xe_device.c
> >> +++ b/drivers/gpu/drm/xe/xe_device.c
> >> @@ -5,6 +5,7 @@
> >>  
> >>  #include "xe_device.h"
> >>  
> >> +#include <linux/delay.h>
> >>  #include <linux/units.h>
> >>  
> >>  #include <drm/drm_aperture.h>
> >> @@ -33,6 +34,7 @@
> >>  #include "xe_gsc_proxy.h"
> >>  #include "xe_gt.h"
> >>  #include "xe_gt_mcr.h"
> >> +#include "xe_gt_printk.h"
> > 
> > It is obvious in the occurrences of this include in other compilation
> > units below, but in xe_device.c I am not seeing the need for
> > xe_gt_printk.h, am I missing something?
> 
> void xe_device_td_flush(struct xe_device *xe)
> ...
> 			xe_gt_err_once(gt, "TD flush timeout\n");

Indeed, I was looking at drm-xe-next and was missing
commit c01c6066e6fa6 ("drm/xe/device: implement transient flush").

Reviewed-by: Francois Dugast <francois.dugast@intel.com>

> 
> > 
> > Francois
> > 
> >>  #include "xe_hwmon.h"
> >>  #include "xe_irq.h"
> >>  #include "xe_memirq.h"
> >> diff --git a/drivers/gpu/drm/xe/xe_gsc.c b/drivers/gpu/drm/xe/xe_gsc.c
> >> index 8cc6420a9e7f..80a61934decc 100644
> >> --- a/drivers/gpu/drm/xe/xe_gsc.c
> >> +++ b/drivers/gpu/drm/xe/xe_gsc.c
> >> @@ -5,6 +5,8 @@
> >>  
> >>  #include "xe_gsc.h"
> >>  
> >> +#include <linux/delay.h>
> >> +
> >>  #include <drm/drm_managed.h>
> >>  
> >>  #include <generated/xe_wa_oob.h>
> >> diff --git a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> >> index a34c9a24dafc..f90cf679c5d7 100644
> >> --- a/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> >> +++ b/drivers/gpu/drm/xe/xe_gt_ccs_mode.c
> >> @@ -9,6 +9,7 @@
> >>  #include "xe_assert.h"
> >>  #include "xe_gt.h"
> >>  #include "xe_gt_ccs_mode.h"
> >> +#include "xe_gt_printk.h"
> >>  #include "xe_gt_sysfs.h"
> >>  #include "xe_mmio.h"
> >>  
> >> diff --git a/drivers/gpu/drm/xe/xe_guc_ads.c b/drivers/gpu/drm/xe/xe_guc_ads.c
> >> index 9c33cca4e370..1c60b685dbc6 100644
> >> --- a/drivers/gpu/drm/xe/xe_guc_ads.c
> >> +++ b/drivers/gpu/drm/xe/xe_guc_ads.c
> >> @@ -16,6 +16,7 @@
> >>  #include "xe_bo.h"
> >>  #include "xe_gt.h"
> >>  #include "xe_gt_ccs_mode.h"
> >> +#include "xe_gt_printk.h"
> >>  #include "xe_guc.h"
> >>  #include "xe_guc_ct.h"
> >>  #include "xe_hw_engine.h"
> >> diff --git a/drivers/gpu/drm/xe/xe_huc.c b/drivers/gpu/drm/xe/xe_huc.c
> >> index 39a484a57585..b039ff49341b 100644
> >> --- a/drivers/gpu/drm/xe/xe_huc.c
> >> +++ b/drivers/gpu/drm/xe/xe_huc.c
> >> @@ -5,6 +5,8 @@
> >>  
> >>  #include "xe_huc.h"
> >>  
> >> +#include <linux/delay.h>
> >> +
> >>  #include <drm/drm_managed.h>
> >>  
> >>  #include "abi/gsc_pxp_commands_abi.h"
> >> diff --git a/drivers/gpu/drm/xe/xe_mocs.c b/drivers/gpu/drm/xe/xe_mocs.c
> >> index f04754ad911b..de3f2d3f1b04 100644
> >> --- a/drivers/gpu/drm/xe/xe_mocs.c
> >> +++ b/drivers/gpu/drm/xe/xe_mocs.c
> >> @@ -12,6 +12,7 @@
> >>  #include "xe_force_wake.h"
> >>  #include "xe_gt.h"
> >>  #include "xe_gt_mcr.h"
> >> +#include "xe_gt_printk.h"
> >>  #include "xe_mmio.h"
> >>  #include "xe_platform_types.h"
> >>  #include "xe_pm.h"
> >> diff --git a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> >> index f77367329760..64592a8e527b 100644
> >> --- a/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> >> +++ b/drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c
> >> @@ -18,6 +18,7 @@
> >>  #include "xe_bo.h"
> >>  #include "xe_device.h"
> >>  #include "xe_gt.h"
> >> +#include "xe_gt_printk.h"
> >>  #include "xe_mmio.h"
> >>  #include "xe_res_cursor.h"
> >>  #include "xe_sriov.h"
> >> diff --git a/drivers/gpu/drm/xe/xe_uc_fw.c b/drivers/gpu/drm/xe/xe_uc_fw.c
> >> index ed819f1df888..12346645a8e5 100644
> >> --- a/drivers/gpu/drm/xe/xe_uc_fw.c
> >> +++ b/drivers/gpu/drm/xe/xe_uc_fw.c
> >> @@ -14,6 +14,7 @@
> >>  #include "xe_force_wake.h"
> >>  #include "xe_gsc.h"
> >>  #include "xe_gt.h"
> >> +#include "xe_gt_printk.h"
> >>  #include "xe_map.h"
> >>  #include "xe_mmio.h"
> >>  #include "xe_module.h"
> >> -- 
> >> 2.43.0
> >>
