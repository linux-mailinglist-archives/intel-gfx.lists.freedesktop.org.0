Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC6E78F160
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 18:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7770710E0BD;
	Thu, 31 Aug 2023 16:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57A6810E0BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 16:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693499800; x=1725035800;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mcc1c8WQODM8n/VpzcXOUaK8hcUFRLG5iV98pXpkF/o=;
 b=JU8BCwIz8+ba3NEMWEiq/3k+rrSKBrmJY8daLQydWQEXIot3xvpqPpI3
 Ior+mxwliVymzSDMYrQTwIbwFj1k1UQgviQw6k6GQuCXnB09gSU+Uy+zA
 sHkWh754wW4qXkVqQA6ksjMta3ky317J/SRVarIZ76gmJPUo5ak+LyzgL
 s5LlJwC6XkZMWpKfW61Wx9z2S+k+mi8xa8M38ySwLLEV5lGjdpt+Ywpim
 ujPrl7fJi5F5bvOahc3xDUyfZryvqe3HSNTm+Oho2JMgUa8cMClWjdV5Y
 JzR481vJk6RDU2jxjeEMGX13htKJ8A3QJyA8rtHCJuwMnU5RJ0gv0S6FW A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="373399414"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="373399414"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 09:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="809706019"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; d="scan'208";a="809706019"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Aug 2023 09:36:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 09:36:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 09:36:18 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 09:36:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=koOF1il6BgDqUewcx74OruW+mgaHfG8TiPv2ucdht+GBRMomSkLfiYeD+VBWPjp0vddLuIxN7GF+/NFec3bZ4l4wf9ECScOk3DWGDELc5jlRyqC80+t3b4yjw+pJ1WwSXyHQNThTlytMIVMwkS11Ky0FaG9BrmB/ko3lQYnxMagxVBelSZu+k287QsqRnfziepHI7HXsklJ66GuqsOGCSjAaS2d3Yvdi2TKgfXJYmld1nUTNjLMuvivwQ7hgSITByKL/Lp8Ch3VFJm6xal4MiFe4vnlKfIOd3HCbNlYiFd7F+y5F69uO+A5MFdC/aUjUuRKkx9L11tV9q7BJTTAtJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L4H8G4fTvyi86c0cHBeaOP5iRhhOaFDr8wuUSVwY+Kg=;
 b=POwLt4RDrkaPE9q+xt6vsi8RwRW0HNXqgz+JQ7GZWzP26r6VrKJebmJWKd4/iKLfaRjJ/PvdX3YTQ5a3BjBep4Zs5ZhiwRuhHxAvKP22+L/Xi9odHRu3EwHUw5XWiwJAdCVu8PY+i5HQRX/XzP9IaL4I2krFZBbZox46tlrXWYP+eLq1O5I3F4ep4qjGznUJOlLQBNrvUEjnsEqpJOMy1p3rbF6MDT8B926T8ezm3JXIYRiMhU1todfQG3GPgMfZZ8vcTE++tStBhwO/cIIk8PtB4jKBIPDyn4Smm2m/znt00qEYKG5aaIchHS7aX57+YMH/RpRl+wQ4ysPJC7H8hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Thu, 31 Aug
 2023 16:36:17 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 16:36:16 +0000
Date: Thu, 31 Aug 2023 09:36:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20230831163613.GS6080@mdroper-desk1.amr.corp.intel.com>
References: <20230821180619.650007-11-matthew.d.roper@intel.com>
 <20230821180619.650007-15-matthew.d.roper@intel.com>
 <875y4vjifc.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <875y4vjifc.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0059.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: ebdf6638-dfae-4063-4e09-08dbaa4065ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aPL/3NUL8mgK8XzCa8XB+TbI0hZB4JbPkEYtvL0jhuSoEsbp0GSmYxkoOxPG6CPYoEW/pV1va4Q7kpD2OeeoR3kF/aQ6mZH9xlrr5D/6Op6+xHq84rbkMPvOZF25DjDkOD+CK4xuCyDGfAbmwIceeFnNmJoQR3xTzRu/lWeKaGW3A5Paj0ztTNCI2A6dKcdli91QarKzExHHcxd3joxddeuSOqAi+UwEOO86kFegjqjR2doEbjveKKKIGi/qaZbGcpOUrSp0EY8eaUpZHQaLMFqET22xs3kdBtF2vtNbspZqNjRulKcu03HIlY8hv3H00kiWuXIEBEcKbWvmGhjuNoNSXZCW7ZD3fhGJIN0Rg5yMQ5kVCbJhgSFpB6wxMWLiJSP4n9M1FoYZN+YAwKAYJSYnIbd97r/M6Gr9+MImaa1kAuG+w53B9cIimvkM+VhrKhBvyPo0CWW2TxrGGRo1re159dfVPgrb5a8lCZX2+LotA/DXOppSuti8JAua0ES04x/S4OgU5R5hgINJ/K95hLqictkwhHoD7mdn3aDpECotEnVI8lVOtAVeUpS/vW0k
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(346002)(366004)(396003)(376002)(451199024)(186009)(1800799009)(6512007)(26005)(82960400001)(38100700002)(6916009)(316002)(41300700001)(33656002)(1076003)(4326008)(2906002)(86362001)(5660300002)(8676002)(83380400001)(6666004)(8936002)(6506007)(66476007)(6486002)(54906003)(66556008)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TntwP2x+/qH8hR/pzv6VugabUn7tEcWbsAUcNvZnOTLYHTKqqVlaQroz5BXF?=
 =?us-ascii?Q?v1rX6ZMTZZ/alkGfoPCUX/t5aGePjibQViiZ1H+3166wGRmQJ5sqJcoMLnbf?=
 =?us-ascii?Q?cs248HDlUyMR/MK1D77Xl2EBYb76I6MERdingjo9bwW9ssjHJxP7UfKZGvet?=
 =?us-ascii?Q?1Q0Z/1YKrBwCYDYvgqCdcVmuhc3KHlibKohYv4lvnAGVI7jsV+e+LBeNVugX?=
 =?us-ascii?Q?3t5XoluAbjAPkJ/YUsyriBTyg22MLn/qWey/WoN+T6ZKoYm0Cgww5SpZNsjc?=
 =?us-ascii?Q?Bu6Q0aZaOHnfGnw34UrPbxJZHZHaxjkytaAATwe53BJRuVMaG0DYq/RGgxjI?=
 =?us-ascii?Q?0DoMTr38kgsjxaJJwIVugJBCRmY/7uN3isWaSN/7uFthEjIbmbJZzPj1dTSd?=
 =?us-ascii?Q?+bn14QoNjKhY5F6eNSlhzKzJ/Png65THwhVGuf0vHe4SlZT0gqgzqNuwff/O?=
 =?us-ascii?Q?YLWQ3sswvhJ3U4Qobjx+ecQ2UU9FS3k9P0aSbzCA4o8rVROtOy7E8/eUO1VH?=
 =?us-ascii?Q?P1ZDZHFGxNDhWITFTuR9Gpav4OiPNwBotd8ffsXjF9EUUogebTyy3D5O6EAk?=
 =?us-ascii?Q?bhb5exCf31J/J6UZCBWfO1kmyLWU2Xg3lWpRWInkq2TqX8zSwQjj/Q2wq73B?=
 =?us-ascii?Q?PwQPKq4RASVuZbd4//rgVCs1EVlWdMdMJ+yvbxtqAtaLLL5H0bVRYjQDoDfW?=
 =?us-ascii?Q?Tdtkafl6YE43rxGSGjzgdx/2Ok37T5e+lfQqngvnX3CzEpo+KW4ZoyWQQGNF?=
 =?us-ascii?Q?JLEoH82I459AjCXlMal+yRXf0i+DXYkLSQNGcvdMwIadZfDFqakjmATnHV4z?=
 =?us-ascii?Q?9YTVkhd5iQaZFwFYKMvBUM7eFI1O70YZCeYATNIcygdOp1NwADxQcHj5zAjf?=
 =?us-ascii?Q?qr7gEtjVO6z2G+p9LwZ1i3wSdX8sQpsGJ8r4Zsxydt5CrQ0dS8GVjBu1YSI5?=
 =?us-ascii?Q?ZouB6sLS+QHQPP1Z765w/gM6+Yfa6JvPPRVuSaNjySsPRbr8JHaJcSjnpVnD?=
 =?us-ascii?Q?Dyr1044/kJuShQgvyvacDjsa0FgI7XM4JfLNCAyeO/J8Vi5LkeY04NsBabrK?=
 =?us-ascii?Q?g6c9NBgA7L/46oBBosTlluE8ARJsr4aIfY/nz2nzdJKeDUB+8CCVclu6fDKX?=
 =?us-ascii?Q?QMIkfvEyFmt2xiGDLYJg00aMtCY2t5UpREdxUhAcV/sRRBXLsOdazqEOT1vL?=
 =?us-ascii?Q?UyNxuIOwv9NZ28RqUyRQle6Fqz2F/+F/WaoROMa9mOTAyqox1ICqwfPnu6Tq?=
 =?us-ascii?Q?Wo99bCxKqglPKvYcvBnj6fXyfrLb5ofvMVh3Ou+yaYUlQvzYr8XXhVsW+uWQ?=
 =?us-ascii?Q?x8EV+rMiQOdL60xGI9pr+MaSFuJpXqBBYa2ZkLld3KUJ4YcKp8tFWR3Zcp0n?=
 =?us-ascii?Q?hEYb/cnuuZ/FLo4JT0C2+Na6PSHsb0v/T+8DGthykwS5YuMcxO33Rt+Ot984?=
 =?us-ascii?Q?mN7/d/4/F2EtQqh8n2I+yJrr56rAstHUYuFOwof1AgggnJXWtyWTs3w0yAQ4?=
 =?us-ascii?Q?I8JyWrGcuVJhEdw5fuCFzbUfjK5wA8s7JulgsvgdgaWAn27zwzuW2ausBQOA?=
 =?us-ascii?Q?rnifCM5RnmCqcRveiAlpsMY/stVkSHsHu3Lh8NUZ6AYC74t7sjrKPy6aV/r8?=
 =?us-ascii?Q?UA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebdf6638-dfae-4063-4e09-08dbaa4065ab
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 16:36:16.7959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: serAcWGmjPw5nFuPqPuV3aN045SYArG+X0d+qQDaDfGr5QlLMi9uC5HWSV4JL4IOMCg/l/GwoPyC4GlQ9AMsjBXdQ1+H9GQD11NZoM4ggRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 31, 2023 at 07:16:55PM +0300, Jani Nikula wrote:
> On Mon, 21 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index a408ec2d3958..4566c95da1ca 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -20,6 +20,7 @@
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >  #include "skl_watermark.h"
> > +#include "gt/intel_gt.h"
> >  #include "pxp/intel_pxp.h"
> >  
> >  static const u32 skl_plane_formats[] = {
> > @@ -2169,8 +2170,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> >  				 enum pipe pipe, enum plane_id plane_id)
> >  {
> >  	/* Wa_14017240301 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
> >  		return false;
> 
> This seems to be the only user of IS_GFX_GT_IP_STEP() under display/,
> and it kind of seems wrong to have display code check for GT
> versions. Is there a clean way to move this out of display?

If I remember correctly, this one literally is tied to the graphics IP
rather than the display IP.  There's something busted with how the
graphics GT is trying to generate compressed buffers that causes them to
not decompress properly in the display controller (although GT<->GT
compression/decompression is okay since both sides are broken in the
same way).  So the workaround is to not advertise our display planes as
having support for compressed buffers when the GT is A-step, because we
know they're going to show up in the wrong format.  That still allows
compression to be used for the non-display use cases, but avoids
possible display corruption.

Honestly the simplest solution might be to just go ahead and delete this
workaround since it's only relevant to pre-production hardware.  I know
our general policy has always been to hang on to workarounds for
pre-production steppings in the driver until the n+1 platform/IP is
pretty far along, but in this case it looks like our CI machines are
already on B0 GT stepping, and even if some internal people are still
working with older boards, this is still kind of a corner case that
probably won't impact most usage.


Matt

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
