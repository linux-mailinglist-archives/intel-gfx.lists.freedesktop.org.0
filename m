Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D9D636A09
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 20:45:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0399510E240;
	Wed, 23 Nov 2022 19:45:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7B0010E240
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 19:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669232735; x=1700768735;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=luHkH4eA7sHHAtX7tNwwqebQYxmwddOEEq+hUbM8BzU=;
 b=hYyHqhZVKsnKLoq/xHfXly8IcJgAnOjP6rB4xJtmHJly1hF4tBZoDIFF
 PEh978EQ08E7WrX7R6daCDa+BLG8KA02DPnOygIPOM/b5Cs0wO6rId+8u
 xPyz9skeFGnHxZsUnPPMqfq/+HAzCssThmEnca93wnwNLhM1ODHHI0Mwh
 +4kzzGwjAbCYooiXljm8PPlIleB5AZ6GGLk8zVo5V6h7Q/eHCDB8BR2YL
 95jWOXYYfPEmfnLm2mn+6cVYc280qwwNl6UlARIGTfhF6BSorV1BKewVy
 bIvpkz7qsjMAVMLEAay5OGUaC802gBDC/lZlsgNvnSUh0sntSAAcf5TZV g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="294534888"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="294534888"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 11:45:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="710707721"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="710707721"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 23 Nov 2022 11:45:35 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 11:45:34 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 11:45:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 23 Nov 2022 11:45:34 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 11:45:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T73A7U51s/AJLTz0x49Ky6SZLF8JYBu3YL+CBx5XR1/E9zbgyz0JfO7gX4Vgmi42Mou+TA4FRvnUyh6CojLm6hhAyjT397uryDO6MZ1dhLKRQW4CgGhHEDIUFiZrM+Hx8Jzuh0tANvyHbi4xnmCbIpPvtYxOo47IuicM2VKTAvVt2Y6f1+UIACYpeP+dCjDjtcQlAHSyK4bP4Z9aPcT/tY5vQbRoq1nLvWQZOOnFs2NmBuF+ugjioVHKNsH//r6v0/XfCExbVEQ1FxbiO2WCK72Z4qcVSyYcNT8RHxTW3fWAkMGmBJkOUvdaSJaTaSAQQt+/AWLy7toig2wQBeQ6EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbG0alD4C5XYiV9RE2B2IH/YkPnDiZN2wV8YPmZrRTs=;
 b=AHbed0nf4/h8KRYIPXUneWNDzvLExh3h8uGPttTc/K0F1ej6oWSwBRxg3yIrnVZcT9SBj2cOSMjf9Lgkgigtjgz+PLI7nJoOYtkbmE3jXBvCmwzbUP9+vLItjSXEH7TKOPjU+kkdMpDjttvuhPS5Y4dVhA7ZvP3qSwEgl+AYv8NcoHNXhwST1WLTxEHlNReFAsl6JMQMRSvxuBc44syqANSwsAHdAH0IhdhToym9Gpn+zcs/DAzilOIPrVUITyVCU7jzRv39HWlc7FkXSHCPJYQgE4Ps0Z1a7A8bfZFjOp0JN0C6RIxAFbVX15U3SltcoXIgRtS7V/U0y2tXPs8VqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW5PR11MB5811.namprd11.prod.outlook.com (2603:10b6:303:198::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 19:45:32 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 19:45:31 +0000
Date: Wed, 23 Nov 2022 16:45:25 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20221123194525.4k6qovx2gnhdiew5@gjsousa-mobl2>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221123183648.407058-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR13CA0125.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::10) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW5PR11MB5811:EE_
X-MS-Office365-Filtering-Correlation-Id: ed9e187c-d3c0-44a4-adb2-08dacd8b47b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M/mKZ4H7pniRndL4WEWSHKueHBEtUDXRWdy2JG0ejgk/6iwDXtBbpzsse2qRrp23Ea9Fces+EvwJJ6lddUQzl+0DqyVO6t1bnOIf1cRUaAmL4InmO1HBXUbdH35Wxcr2xdAx4wPUnOWSxCXsMEvJrehOkBIbt8w53K5lK0knJWWmKPtdjwazVcgkuXIUHlEzkUCFbJAGKr7b+2YMZZ4sQHWBFpd16jK7jQqVj1Xm5tTPL5B5R2c9BGYPdpuzA/HvA7ulQd85WFKqNO7mGEpgH+ic+RMOcOUb3/dVQaL15ZW2gXgY27/ybMu3bt8VlOPOfBFPVmYP/KA/H/8JhzsoxZ1KmwKF4PSc4gwz8QkoUg5/5nJQTx7IGaUtPNC9FOSwtzkaezEX4LS1Xn9Oiup/6uMrUAMhcioiz0mS6AbEq2yZ+C8HxiXrBy8DMrtXc3xeVq9L8IC72+4htgxPyLaIzYy9vkc+kXupdlb21fS1LPSsUuZ50zu9t1jwKhnzFkNmqMaEs2IuKttknQIGUrgl1CGmNRf0ZJbsy0oFIeKGFBFpytZJfEns5rtXHVIQhqLLoYueR+XW37j4DZgmgyrDL3W865bI3ecXG7ewpTrXwsPMUGYrikqVr/QopEOjWbp0bB7jezFf6MZ3uULb0VlUbg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199015)(41300700001)(186003)(1076003)(8936002)(6506007)(38100700002)(33716001)(6666004)(82960400001)(44832011)(83380400001)(2906002)(5660300002)(478600001)(86362001)(26005)(6512007)(66946007)(9686003)(6486002)(8676002)(66476007)(66556008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2TlaE57FZa+KgKRUL/J14kO5yFVboq586fhmiUgGMYGalrZdwCtiC15Jbsy0?=
 =?us-ascii?Q?PWaYvdLs3OspFMw7xyVGh5LPiwx+H+h88O/u2+4v7iZGD+HXEbG0sudarhlw?=
 =?us-ascii?Q?448b7o5OYT6m8UtB+wJALZFH2gd2CZb3xgewT4IKV+9La6uRmO5rEMwpdqHv?=
 =?us-ascii?Q?onwVt8gODaNSA483sJRRcjnnDFKooISNUHGv/kMTY82eSrr+w2f57qnGxgkH?=
 =?us-ascii?Q?1z2azpPUpstAKiVVzXyoIA+lZiE4smauv7JnYya1c4KA8rYAz/6hbbZM0eaS?=
 =?us-ascii?Q?2B3Yw6P3slvuzx0oRQD+U0D5aLq0GC0CUnTXNcjH17fMcBCImEUEKanXPM7a?=
 =?us-ascii?Q?uMXEXxLxYMZmYo5dHQdsl7nss/EUao1nT6S66SHaXQaBbfwZ7+xmluSesJTB?=
 =?us-ascii?Q?izJrKETXzpVgz+NTZgT8PNRoo4QweyFIdAnuSSAQf2x1mEiOQaT/QsOpmUhK?=
 =?us-ascii?Q?Ns8hUfbaQFW0cNeCj01WU5NiLclNNg8D5Ao8+UftXDWOde5ncQZTm1kJbeU+?=
 =?us-ascii?Q?t5CceT8pioPFZzT0n4KyfWXfAEb8yVGe11dvlO+kCn8RVo7kLQwz5E/aOpdI?=
 =?us-ascii?Q?GC5iUopRiI7Oc1eSwuQJ5zrcKI1y8dBP/zuwwbsq3GAFMWQ6inGOcJf49/mx?=
 =?us-ascii?Q?VCStsGIfncENAMgc9OZt9urPrm3ZrIUk28JjkGP/moepXczxUrl1Yd3bIEH5?=
 =?us-ascii?Q?0uMGkS5TmrefP94BYKc8W7sTgH4W3gEDj9VNrXur2zsRCPyGVpOA8RtQICMx?=
 =?us-ascii?Q?gsmngwb8P8DxudtdV3kqFBC1aymzNqP3tToPVJJxxx1cjd0lSFauJjSsIGoR?=
 =?us-ascii?Q?tUntn20MhpAOQThk6AaiZoPtyzdfAGcKDR/7PMlKzaxNNbMxMunc8L5Vm2xI?=
 =?us-ascii?Q?Yqea6HPJknaSuj3+tg/DPgG6R9O8AXU2hf8mF5gXodc9Qs3MCkUBWsoro/0/?=
 =?us-ascii?Q?erVvUom6Af0TAml9s/fz/5LSCTC29S94/ucSJ/Kk9MY1M20bAS/4Qk2zx/Z9?=
 =?us-ascii?Q?zUpySbzZSvzasf/MmAcpK3VZrnwnZJbxO6XwwVFynPDxeCgCqjaLYBwhFWs9?=
 =?us-ascii?Q?zuPgbIph1B+Kz7Ux+E/0gCVlZyC9ftl8A+dPjpdczvDgEG57icruuBHTB9lW?=
 =?us-ascii?Q?56FQ6JfqZ/BFHYbBGX3og8cs8Yw+vJWjXJ1jEmmGJAzdc42EI7OUahErEpcH?=
 =?us-ascii?Q?/u9MFyp1gjnLP6LahG97KDqisqASFY5+E5eMtFiyrQuJldygGDRtjoP014qi?=
 =?us-ascii?Q?Er7s8TISM2/U7rurnwkDCo4+XI9bpYZ9pN5PPlxNS2luAsj8aRx3BsrGYpXO?=
 =?us-ascii?Q?eNm/ih5jb3NkXM9Qd5XmNgfIdirtpUO3mm62qfrvnw1wRqRyTFJ9Pzeaxscp?=
 =?us-ascii?Q?INp8MRJtVgZbSdprhjgxNCLgXJkO1mpZGcZXuzfslw5lhDbK4yD6CYFZD3Ae?=
 =?us-ascii?Q?tHXrMEEK6rP99IqsYeVNS+ypyuMcCHu3ELTTGkS8F5d2MDor3uDqFtAgFQDR?=
 =?us-ascii?Q?mPcrJ9xZ0qis+mbmql7jWyBnbsbk5pwcPbZttfcssWQQxMxrlQdVShvamRYr?=
 =?us-ascii?Q?PyNB9X1+kMcSdbU4lVrqesu9Jbs56+bn0Vslrnh+PXFLTr9+NYTORMOdl3HU?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9e187c-d3c0-44a4-adb2-08dacd8b47b3
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 19:45:31.6889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Qda1A8y1GsjgOalK6GfYTn/puR5/XsCDRC2FoyeHgzqDwKh84GVh8byoUusJgEIeLUTtGhXmNw0GDqGKPHGyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/dg2: Introduce
 Wa_18018764978
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

On Wed, Nov 23, 2022 at 10:36:47AM -0800, Matt Atwood wrote:
> Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
> G11 and G12 A0+). Clean up style in function at the same time.
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++++-
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 80a979e6f6be..74379d3c5a4d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -457,6 +457,9 @@
>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
>  #define   GEN8_ERRDETBCTRL			(1 << 9)
>  
> +#define PSS_MODE2				_MMIO(0x703c)
> +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> +
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 2afb4f80a954..870db5a202dd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -771,9 +771,14 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_14014947963:dg2 */
>  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> -		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>  		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
>  
> +	/* Wa_18018764978:dg2 */
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
>  }
> -- 
> 2.38.1
> 
