Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E42D280D024
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 16:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED9010E0B0;
	Mon, 11 Dec 2023 15:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C1910E0B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 15:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702310219; x=1733846219;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HjbD/TCtaDep/CCzTq4NwzJ6iauk46csZgWPIHDyhV0=;
 b=iVpzCj2M+8JgXaY/6znLMqJl84oqqxzm3jEXsRT9++4uHWWzguc8Wrez
 NrZPbeS+xX78Xj3DCd7DMywH5fy9Ck7HNJbZzwnU2rJPxqs88RPqv60Vv
 Vhs0H4eu0VHu8wCHyrMEnnfkFvJyPkuuGa1jZzl52zQzIe97LJco6Km/H
 v4osVJteRrXGG9uh77dS3Le4wz8Ts+aEptJI/D7oUWSmutsHGGHVyzQcW
 /wdcFHUbtyV4W4HGbiCjESQVbk+6eCytw1HZz7cNkK4R8JzlnjqfaBJCr
 LVab1xoQcadm9Gl19+1ocxnSHp9ucrh7RJKaB/9TpxaejP1lZwxDnlCin w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="379661785"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="379661785"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 07:56:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="863834975"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="863834975"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 07:56:50 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 07:56:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 07:56:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 07:56:49 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 07:56:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kY/eh7d+m5B80liIJkY12espqcwIXYfrBDhDmFCmB2tlTyZJVF6tJ8Me6wzaBOChzXb3XNePE4aDbMfyoHHSbxqsGOIfkXkqhWymomSYJf0EWDGHLGXbFC+swyT12j2BhY779oVIrbNZQDsz32GiFPxaHMEk9eAlqczFNA6x0lEhwr7OuFLc/0Rqwfw3XJgi1JHEjZSoJUm7UD/5oqBxmEueWXOaKnHkFRG+EeA3nppgoEJuD/YDjpk4AoFKKKSH7cxEhRSdkaZ9yTOzq+avMwpRyc8vRsHmDXGjTxpkdfOjkq9U+o6d5CTSIf1pGXZ6K4FA2PIUhuNegsqZ748MXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yAg1MMAF5WEeJdWlPhTsaXT3cXWpx3PpmazwRbDL8O0=;
 b=OBaezbfPSOUhbU3riEGz1NSYFPBSQh56XE4xZ7pxZzqTL7VSB90dA9MJDf7D9sZDl8cUoRgdH0O4lUreP+FUwBIOZar25TA9h2BFV5qySnHPW0EVFnzY+9GKlunno4hXvkNuMK3Nv8y/VdKjrT2Cb1OBUb/LzLE6A6ZxX1yDrD2aj7yDHLYAHhickWlTiCaLgrlWOdlsFIRSq6dl/QFKwOS/k7nDO8L4OYzMfMNagL+TSGQmdMe1bgoaLcfMyXe2do/ffewemXh6TycAMMLGqLW+nPUIAXP2TLGIWN9PiX1b1MbdxkreK4STuUFET8aeVPgF/JmD8InsYanLGvS+TA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB8668.namprd11.prod.outlook.com (2603:10b6:8:1b6::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Mon, 11 Dec
 2023 15:56:47 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7068.033; Mon, 11 Dec 2023
 15:56:46 +0000
Date: Mon, 11 Dec 2023 07:56:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14019877138
Message-ID: <20231211155644.GZ1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231205091105.3604223-1-haridhar.kalvala@intel.com>
 <20231205202426.GK1327160@mdroper-desk1.amr.corp.intel.com>
 <0cdbe01d-710e-423c-8fc7-39787cf571e5@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0cdbe01d-710e-423c-8fc7-39787cf571e5@intel.com>
X-ClientProxiedBy: SJ0PR13CA0149.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::34) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB8668:EE_
X-MS-Office365-Filtering-Correlation-Id: 1974faef-ab4d-4b72-d46c-08dbfa61c750
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f+Q9VGwqpE8ExdUyAk1GJLFlmMle5GVMvjHqCLIJw/oe1/cEcepZH9tKQL3gBa46Q1p6IuSlg/34270WcmkoIONH2HdaM9QU4cpANzzsV2TApvG9od3cWDU/bAWfQdhVZ4twwxAfZC7EntgyK2TnT3YUI4xYOU01K3R2s2ixtKjKT7tpZ7Qhn3sYyDQOdROAVxnNGyH8cIhK7o7neHNCpyVltcFbhQYeDQTaN9CL6Z2FsFw4yHXgonR3aUPaq/0mKF5Ko/maQ0Iv8LM7kHzOFSy1ixay4NM2x6DzTkfs5/Xbonqc46d7cit8QWK2TGZUX96BK/K3Jl5XJ9RwELflbFlbswJsMPgBochgx6fbbA10JKOreUAYy6bfPApoIifeLxUnt+xlP062iBN93oKfwd0NZ3RFAQR5X6ytF4PAGzTLQ3zkJq2iRW9JgMdzfabvlKKD1I9C3hMtLFelVXI56jnDhhZSCueW/oC8sJYTkQ5SIwqk6pXiCxE02RundjGdkIHJIthl80cWryubntjcnHsRHHiQ+yFeHDig3T83TeHC6FFhpLVyIIbZDZaEs6wa2FQT4HC1xpdRm/d6/aiOM1q5b6pKxUOZxlbGGMyLKvk5PlFRupsTn/Hd2V1/UFdl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(376002)(346002)(230273577357003)(230173577357003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(6512007)(53546011)(6506007)(5660300002)(1076003)(26005)(33656002)(66946007)(6486002)(66476007)(66556008)(6636002)(2906002)(83380400001)(82960400001)(41300700001)(478600001)(86362001)(8676002)(8936002)(6862004)(4326008)(316002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TPXRThipHxL5fs9deVX34PVIZysLnDf9Ar/9htLxS+R9p/EJSXTdVCdAfUie?=
 =?us-ascii?Q?duH0IH9WgELJ0I/7c9g1AnM9/iUCb9PwyAAvWPiMhC8vpM12N/uUi15ETlsB?=
 =?us-ascii?Q?pTfwxUGqfziNH2iPgJK9Cyqk/qz9v1mfRV5cyu4VtmA/Rdo0xu0GOT84mtPY?=
 =?us-ascii?Q?1r1Uf7JJgk7Fg2qPRu3wjZKd/dlh63rAPNTRahPnUdDGl4IJdTrfqAo1GCvO?=
 =?us-ascii?Q?BnNlNE7uiyUG5yE1lkaZhqErwbbjr4iVksVc7U+37W/+/RCSGa/cpfPsE21c?=
 =?us-ascii?Q?O4sEoTR+G7sTCELK5Qbk7bQbbnzsBRLzq6nCzGAF5SnSK09l7VcZxXMO08LI?=
 =?us-ascii?Q?Z4pyw+lVny9F5fhY+CfQtr/byHZhx0LWRJeqovOXlJGv9yVSrMqW1ExVmixn?=
 =?us-ascii?Q?OZCvfGdy/6OQLCkq9W0ggCZCZnF/GSWFKs886M1Llq5kuRS5pRv2WWl4Xrl5?=
 =?us-ascii?Q?H1COrh24BPCuoDKcJS5eijaO+JaHE7fx3Lt0PFw1Ufl6z9rA7Mi4OSp83QEF?=
 =?us-ascii?Q?JjD+TzP5tzTShsHc1kTriqunE3rKlCBskspet8oA/Q99t8YYPaOC3NqllLDy?=
 =?us-ascii?Q?cHuCRILKMu2U7YxoBHfMg/deIW2zi572qLDwTjs93DvrVGOoOBio8x8yUQFk?=
 =?us-ascii?Q?7wJfdJ/8hJ8phdf9BeR1sQy22fHZaDrMP9zGGb9Oq662viA6V5VHF8R5Q+LA?=
 =?us-ascii?Q?f4oW3Ut0HC+4nnitUgjii+DodVvSx3n1iBth3kEd5rUfKHThMzP/zJXqf3ah?=
 =?us-ascii?Q?ev7Jd0EzIX+rZRRKypGbDrYTlPHVwv3e4/OgnlmhGBDRj8OmXi+ScI6LRiSd?=
 =?us-ascii?Q?75jf9AH2VOfX1qKsCfG6YeD1t6atHt+hF7X5jg+Tl12fgYMdRpypNYeH96Sb?=
 =?us-ascii?Q?owF2+MzgQ2ZMH/rTxF1EPSdC911CZINicXr91uPQNnB4VYtUCABb+LWafakY?=
 =?us-ascii?Q?F3UwXJPE85d2U3wn0sgoBjGITJSeucTnyYH2MyGGjzohveFalEtqaWF9n2tt?=
 =?us-ascii?Q?HhdCjKxDVeSJQZfNxj1sTsykC1h8XHInRV3t+lYBZ9lpSwiSh1yXaRtaPnDv?=
 =?us-ascii?Q?J/N0fIYP3hhViP6V+xdAtqjT0zwgUqgQDhE4XjZBeoymAXNMHzXVblQ88aCG?=
 =?us-ascii?Q?pT69rFGV/j7wDa1ezEo5teORQvxqSIEhWgmDUPkHXK+QQr8zjmQYSgdHl6jn?=
 =?us-ascii?Q?4XrDsfpRi/ehac1LDakiiGAmANbfFrSvHcIYFGmRle/k86o5OXls1MSzNBSw?=
 =?us-ascii?Q?+yjud48gPYV+cuGuMehIgIYKeRGS//8iN2OdKSWIjWRS/Tf2oz63uHrtFtmD?=
 =?us-ascii?Q?sl0TDZJYymD8J99sXoXzSzfSLpG86/2/uARfrbcUkQLn0wJ1889yjdvHZzB3?=
 =?us-ascii?Q?GXzlShp7NDD6zTG5PeogL2TXezFbSr72FV58/xv/8cRlWy8Lhvz5oeDLP+YP?=
 =?us-ascii?Q?dHM32x4adl4AAUHvY5gRd0jLsnoLG9sxMImRaFhsuTDOxKu1qLrsz4tqeSRg?=
 =?us-ascii?Q?i6WirH1K2ED51EQyChFi+3MxHiMjjZ89J1yAD7ZpV724azILIRnF0r77TsWA?=
 =?us-ascii?Q?CZ+OvH9+1F//VRsmQhOgqddOoeZnKg4NTxbenhJtVz/ErLG7L6dY5ZS1SEU3?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1974faef-ab4d-4b72-d46c-08dbfa61c750
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2023 15:56:46.7351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tjANpLe89IwlkA1IVgewpOVaQCZ5tOYwqSIOM5E4HOGBx3A7hg9XcD0WvlQwHWOvp1ZWwZ0CHZ7rqhW7kiBHx+7N40616OLhyY4aa4Yfo8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8668
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 11, 2023 at 05:08:48PM +0530, Kalvala, Haridhar wrote:
> 
> On 12/6/2023 1:54 AM, Matt Roper wrote:
> > On Tue, Dec 05, 2023 at 02:41:05PM +0530, Haridhar Kalvala wrote:
> > > Enable Force Dispatch Ends Collection for DG2.
> > > 
> > > BSpec: 46001
> > > 
> > > Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
> > >   2 files changed, 6 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > index 9de41703fae5..85ba62639807 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > @@ -469,6 +469,9 @@
> > >   #define XEHP_PSS_MODE2				MCR_REG(0x703c)
> > >   #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> > > +#define	XEHP_PSS_CHICKEN			MCR_REG(0x7044)
> > > +#define	  FD_END_COLLECT			REG_BIT(5)
> > Looks like the whitespace between '#define' and the names isn't correct
> > here.
> > 
> > Aside from that,
> > 
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> > Hi Matt,
> 
> Thank you. I verified with checkpatch and it did not shown any warning. I
> will check again.

Checkpatch won't care since this isn't related to kernel coding style,
just to consistency within the header.  You should make these
definitions use the same whitespace format as all the other ones in the file.


Matt

> 
> Thanks & regards,
> 
> Haridhar Kalvala
> 
> > > +
> > >   #define GEN7_SC_INSTDONE			_MMIO(0x7100)
> > >   #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
> > >   #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 4cbf9e512645..3eacbc50caf8 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -777,6 +777,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> > >   	/* Wa_18019271663:dg2 */
> > >   	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> > > +
> > > +	/* Wa_14019877138:dg2 */
> > > +	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
> > >   }
> > >   static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> > > -- 
> > > 2.25.1
> > > 
> -- 
> Regards,
> Haridhar Kalvala
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
