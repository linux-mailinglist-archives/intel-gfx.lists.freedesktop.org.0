Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86779799057
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 21:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FA8D10E1DB;
	Fri,  8 Sep 2023 19:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E475810E1DB
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 19:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694202212; x=1725738212;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=O4YTylh0pQexvia+wN29XthEnNKmbTD2vSeBDJyUcsI=;
 b=BrobBfKHhezbj3RaqhoZgH9utDS44GdRZlUwEWKt8GCu2tDCaShLUC+t
 QgDug6doezkKXzNHgzcMokkZier+8D699R97HLuP0I0lrg1AZgwBwjoOE
 9MC35uS6ssJAGWl1X4uKzI8j55YzRNAgrlIGWnP9sv5vtkN7NOGuyoYwZ
 +b75e+bMJdtdOdZwaTxZkBrkEeJTNKNdjEXK/E8nOCs3VJ7Mh8O13DApW
 1Ip9OdbISJBd5yQMPzUjHHZq59Duh7F5Pyf/qGCOPq4ZNm9w4QsaMXAKB
 kKKq6cmYDTV5qzaEHuaexasMx/4L9jn930rcH9RkFn7Cqw4ZeAIja7HYS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="362786487"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="362786487"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 12:43:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="745718946"
X-IronPort-AV: E=Sophos;i="6.02,237,1688454000"; d="scan'208";a="745718946"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 12:43:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 12:43:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 12:43:15 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 12:43:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMYdEs2rYjSuh6ejW9uEvLtmG8oZwryBIhT78mtFG6YEaYjssyl9t1XQzZLCSHo15WeXJS/w4T6rr0b1BczkWI2AROr9ZTOwPsil7AdyG+98/+ZvYf1sRIT/ubsbRXBR1nwP1Pi6pPHLOVhy1t72V3Z3ziaykOotO8Q6N/607z50uyUAHXH/Bvz9TFOLMaTdzJyOtWJeQbbHJqTEJ24f8d8HPasz5Lhe9Ak6GQt/+qayG994AWI0P43X5v6RHjrQ7pscmxHCmBPXNKoEVsgQhceXALGUuYwDxhP9uFvV8Lvxc3dC1hNh0HESlhO+Gaqif4Ug5d4XZuoFM5TDFfLO6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xbMgaj6ZBVg5DWxxMSuF1ODrdmhvsJepMEsVSv+lLo=;
 b=iQa6BlbfjZmpqeLljKxaFrGYwHEnOCedt+PhO8Nxu9Z6C9uVJQ5I3ih+zz0jvSqCrDvrMXx0nMjPqVizTelrVBB5suEicTitVu6MVaV8ncIm4Nkir6yT5JjbWlChIMJH1U0GHo4CwQGY2zTJnBAmIqVJy2ZjgXi+RrYzgVvujBmOdSiWZtqtF2kYyCrXy8t+wRZ8tWbVl+042IJqlERldreaejBLlEpQFF/TgvnuNgsu2lJ1JzDGDhni7nDOJTkZpaSCIYmVKj4GtSTEE49x0svmya+x2X2QajsNE3TuHl8gWlX0JNXWYnod8IEXzXgtH3pIQFKQHRftkDlgsaeswg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB4877.namprd11.prod.outlook.com (2603:10b6:a03:2d9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.36; Fri, 8 Sep
 2023 19:43:12 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 19:43:12 +0000
Date: Fri, 8 Sep 2023 12:43:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20230908194309.GA6080@mdroper-desk1.amr.corp.intel.com>
References: <20230908094142.4119379-1-dnyaneshwar.bhadane@intel.com>
 <20230908193915.GZ6080@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230908193915.GZ6080@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR06CA0027.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::40) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB4877:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a715db7-5554-4218-a4c2-08dbb0a3d65c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uqj0zSvivtZJl+1ftK1RGgBZJDLtuR+DX9tfEe4M3r4Ui+tgJKDU/7YqTyPwP3qyIsa8uvrQ8LBLm9Aqi4PVENnIDPF7es8dEbfflnB2QwNCWnt3XSkDUi4bIqpNAbl43Ql4qkNJQ3uU1tVx0jCAlRaCwD9aPOGp9EefJ5HsYhrIFTr1D6ztvOyRNg/8kwdu/pviVwK5RXbsjHgYeeym1WOtdYyM/5e2lbQ027p0KPn12iQ5PVZrRMNet3djVxHzs/OgOduZnap1j77pRO0zNufTS9OguVkAPJ1KcVuCpift4+flq4kUs7yQBEaw0MjGcGNUuA2GQYBTQZdRTbjEURIqkU0u5RqmQef7iGPARW5I5+VBcPgAk0vaEapkKq0DmxB6BCr+1qHpjEmPfDtem9mMobnWV2hf/rpEnqSy2nH+9Rms5Q96UwWI6Bc0bhk1PJwDI5ZSx2FlMgEtlC8Rvn/RqE6iTeoYBgkBISPsVuIHtVu43oG9TLv/SGVB1Qb78ktuQ0Ew9VahLOJ1BlBZhZbusiAOVO14GbX/VNyxG+tDuk7+vMoTCPqYLWvmd5QG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(396003)(346002)(39860400002)(376002)(451199024)(186009)(1800799009)(5660300002)(66946007)(8936002)(6636002)(8676002)(6862004)(6506007)(6486002)(41300700001)(66476007)(316002)(66556008)(2906002)(478600001)(4326008)(6666004)(6512007)(26005)(1076003)(107886003)(83380400001)(82960400001)(38100700002)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?28Lr26BAJxJ9acbq7dGIonCTd3RaNe9otHbOb744d0tjsglPs76Y08JlvRqm?=
 =?us-ascii?Q?8TQKWECT9iij4T1rAAfAaN+rMMtYpqLWQNzdTQV30FZunzX6y2zxtTJEIfJ2?=
 =?us-ascii?Q?DIXAICSMRhjb2+PePnC7V6QnY02S58BJeeuCrBIVta7uLt4P+BFu0GtdpuNp?=
 =?us-ascii?Q?s95Xtibof7BGkAug2E/NDSGBNIl4VjAcF4kxxz/PoRN/Qi4lXk3+nGxr4N1d?=
 =?us-ascii?Q?2Wjj4YzMRnflvFvWD5Zxf+OoD1KqBkf5jFsZTFnJj9NTJUoeEr5Tr8sMv6jQ?=
 =?us-ascii?Q?akB/JXxO/Z5hKz162QBOxw5xKmY18D4Fm3RHv/MIPhu0Y6xYRvM5YNDKlQxA?=
 =?us-ascii?Q?QFMFW0+2yrpcE7NdTmGRy39X0pvRrh+CSrq3BEMyGEg6Ld6fVyE7euzrlIN0?=
 =?us-ascii?Q?+aPeLVtSu5BgqDgF2Qjr1tUveP9da1z8dy8rBFMySKdNb+Bj6NAA360P4P13?=
 =?us-ascii?Q?b4mRwv8TvUBvib8S9U4CvN2wS1+oYArhptdqUzIrxGMtxn2sKZTdOwDaxMGm?=
 =?us-ascii?Q?YFqUJQLYQoYPK0lUuHwQ5WwIIPzha6w7Rs4/Ho6OllZeOco2SWJJcnza0Xkw?=
 =?us-ascii?Q?ytEM0ZvANJe/REB1B7qf3c59T+/mWetxz5geB1EYaw6JbTDKJqpgfUmUetsx?=
 =?us-ascii?Q?XhBrgPjZ5S3cOw//vExlSyYvTYeAaipKbYw4zKuq52k36p3oENaNGMUmgxSy?=
 =?us-ascii?Q?c7nTCcI/j7COoqpR/DF0iwCu2bvGX1uuklHbTeZB/NoLknmCfaFCS1eFrBup?=
 =?us-ascii?Q?rR+3wmT7LoydIh4RDJBG8rIPoik1cm11M0SWAfR3ciamjghz5cN3IcFoKwQy?=
 =?us-ascii?Q?Ua+iJV8NXDwjSnGmHsh3MSEj2glkB0YnS002HQ/eo1op+1OHRbCg1MQnvdDl?=
 =?us-ascii?Q?bOMiFLVF7dao7i1XrHHEut7g1qelom/mB6Up3XSHGx9E8zsSNKgh+NSWiDAw?=
 =?us-ascii?Q?I2sIzRh68dZhkutGnqB5Fe3PdtE6gi076Cotx/1hLJ1vP4n4DXWXfohsoK8h?=
 =?us-ascii?Q?5lxhlThWKgYOhhrRY1QZtfBNhAMb+CQaqdi4dV+dLnwRgu1sYm/IQeUeld/Z?=
 =?us-ascii?Q?sHz/F22GVogkxZNCCsokMp04x+ejtSRpmy/iL8OXhe2as8aw17BYnsr0DCmO?=
 =?us-ascii?Q?pHOAs9IR4IR/oiQZ2OIV8JjaC9p1OVWCHYiHtxCVUPs3YTBSkIYpH50+PM0Z?=
 =?us-ascii?Q?Mn9CqBUXfyCPkvoJ60pRN+cDlIv+ks26BXI32RSt7pW99qOAcdQEriroRcZN?=
 =?us-ascii?Q?0X/wZ8J8XHgjRZyA2KVKkSfuRukKMDbCTP+axPBEQGFXre7u5Gok0PSTLA60?=
 =?us-ascii?Q?WX1/cFaVv4vPKvRdMCrGk3dV+KZELxZlv+gYa4IIMqBkdzMvTQPfK21cGTC+?=
 =?us-ascii?Q?8TXqMFbsMrJgOOBEsy9va4LXLLbsvwoNutYKYEWvWfQezC4pgxCJugTlYQp5?=
 =?us-ascii?Q?Hufs/xeeoEF2xbY6wgVMW4AOPf4EqZnWwNZ3rv0gsA8l98t1vndEk4yBKJ0Z?=
 =?us-ascii?Q?3Ed1JwUDAUirphcjlOW5bntjflRpVgqmAu1mTcG2DfRb4Q9LuPtJ88p8fwhi?=
 =?us-ascii?Q?2PRS/cwbkk6ncGPeoX9bt2wT8mLQKVgfWTWX1DPKkOt21N2tGZp5x26wHRst?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a715db7-5554-4218-a4c2-08dbb0a3d65c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 19:43:12.6912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bIicOhjJESYmQWwTb8GvkJXUiRfquVGTJmMQX3ZptFuMVhEVRZtnny1GnxEiNDukSnrJjpErVPF5K1x2ykwnAz2OvNOT+BbeE5eni4h1B7o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4877
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Added Wa_18022495364
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 12:39:18PM -0700, Matt Roper wrote:
> On Fri, Sep 08, 2023 at 03:11:42PM +0530, Dnyaneshwar Bhadane wrote:
> > This workaround has two different implementations,
> > one for gen 12 to DG2 and another for DG2 and later.
> > BSpec: 11354, 56551
> 
> Side note:  it's generally not worth adding bspec references for simple
> register pages these days.  Anyone who has internal bspec access can
> look up the page just as easily using the register offset or name as
> they can using this number, so this doesn't help anyone.  And in this
> case it looks like the page numbers you gave are wrong for the platforms
> this workaround is supposed to apply to:  11354 is for the pre-gen12
> version of the register and 56551 is for the Xe2 version of the
> instruction.
> 
> Bspec references are still good when there are narrative pages
> describing general software flows, because those can often be difficult
> to locate in the large table of contents.
> 
> > 
> > v2:
> > - Removed extra parentheses from the condition (Lucas)
> > - Fixed spacing and new line (Lucas)
> > 
> > Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Reviewed-by: Garg, Nemesa <nemesa.garg@intel.com>

One more minor thing:  Always use "First Last" instead of "Last, First"
notation for names in r-b, s-o-b, etc.; otherwise the commas get
misinterpreted when git parses these for email and it causes problems
when sending/replying on the mailing list.


Matt

> > ---
> >  drivers/gpu/drm/i915/gt/gen8_engine_cs.c    | 5 +++++
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 ++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
> >  3 files changed, 11 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index 0143445dba83..e260defdfc23 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -271,6 +271,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
> >  		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70))
> >  			bit_group_0 |= PIPE_CONTROL_CCS_FLUSH;
> >  
> > +		/* Wa_18022495364 */
> > +		if (GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) ||
> > +		    IS_DG2(rq->i915))
> 
> This is going to apply the workaround not only to DG2, but also to *all*
> platforms MTL and later forever.  Generally we should never have
> workarounds marked this way...the expectation is that any hardware
> workaround is going to go away eventually, and workaround conditions in
> the code should only match the specific platforms listed as being
> applicable in the workaround database.
> 
> Also, when I look in the workaround database, it doesn't appear that
> this workaround is listed as applying to DG2, MTL (Xe_LPG), or LNL
> (Xe2_LPG).  Is there some other workaround that requires the same
> programming (but has a different workaround lineage #)?  If not, then
> this part of the patch should just go away and only the gen12lp change
> below should remain..
> 
> 
> Matt
> 
> > +			bit_group_1 |= PIPE_CONTROL_CONST_CACHE_INVALIDATE;
> > +
> >  		bit_group_1 |= PIPE_CONTROL_TILE_CACHE_FLUSH;
> >  		bit_group_1 |= PIPE_CONTROL_FLUSH_L3;
> >  		bit_group_1 |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 0e4c638fcbbf..4c0cb3a3d0aa 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -164,6 +164,8 @@
> >  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
> >  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
> >  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> > +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> > +#define   GEN12_GLOBAL_DEBUG_ENABLE			BIT(6)
> >  
> >  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
> >  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 864d41bcf6bb..efdb4bbf8083 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -712,6 +712,10 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
> >  			    GEN9_PREEMPT_GPGPU_THREAD_GROUP_LEVEL);
> >  
> > +	/* Wa_18022495364 */
> > +	wa_masked_en(wal, GEN12_CS_DEBUG_MODE2,
> > +		     GEN12_GLOBAL_DEBUG_ENABLE);
> > +
> >  	/*
> >  	 * Wa_16011163337 - GS_TIMER
> >  	 *
> > -- 
> > 2.34.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
