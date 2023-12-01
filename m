Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBDD8015D5
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 23:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F9C10E37D;
	Fri,  1 Dec 2023 22:07:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADB810E37D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 22:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701468454; x=1733004454;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BRos5gFWTiW9mBA/XFafLX1NvPnR0ngcGGZmRrl4J9c=;
 b=fG3GQKzQYgC3nDv7qg00/IFKGggcQRj7dTk+Ndh4Vg+4a9ta0ARthYRj
 hlqGolHmuLDNqSNFHDuy2VChR5IRJ5jVa45k9n7v47qSZFIQ+kr8TOUq3
 Ais3jS1rAx3fPHxDDgsiPIZ1qF/b5SWUxmNlrdZWZlL75zfJaLRNCQSt7
 OeVenZQaMWbDjJrpyyRjyQRwZpe4bOoosc7UwjgAmmrs7uXOSQeIy8pjF
 cUKe1I4bd3BY7XGKbv6F5LmHxa9K4NHnXOv7JhNlupidXXyWbiXQ9P6PQ
 0ZiDoXS0qhKq2/sBAqor5+9lGGW0/CH6gNUylGykW4sp0+5MiWSR0yQ23 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="479759650"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="479759650"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 14:07:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="746141021"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="746141021"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 14:07:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 14:07:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 14:07:32 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 14:07:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WKw0D+l7mEn//e9Z7SFVxlghkkVFLx7CevtR39TtsabypfS4v0GGFCHk1fnwDlM/GGtv/VMkWxHWB8PQy+Kzm5bERXhbAFT+r61rBhGSs/sZi7bXw2UmEppBIWfJGWwMYsowKeCAiTBSALZGJdiViNJLgy1LPTHQT6OY9FkKt1QfM/gIOUmwGFQq5rZiRh9R0oAfnOXaIMeOXTEJZA0prpQnyk9879hca2TPnJMdKcxi7kCqYNsBJyFZgGxTGhEdMaLbJhsve1NeDFaacFlNj6z9KbvuDnhlIOMuepjWtJx9A/xAEcmVPdL3FXrNLEMRu4iMhQkL5bx5jZlUjUDSEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IIBTJPgT0rAHQ2PL/xDGGV0KpPpAmlYic7YjL9OZe0U=;
 b=IfcHc3w7kukw3P8chJhPtAiwoT1u2/Fgoza0v4eVaZh03mw54trJX9JwrqLRK7eCEC7TrEsaZtaOh4lpOgYC5fuqJUiCG/i90K8iPnkWbDRKmSrG2DJ0ovlCnTCkBhBrjHQG0Q5gcKk3JpgfA0/Ro+EF46Tmkfj7U0mH9dOqhskP6KqFU1Kz5nB6vlY9n8QJ0fntAJD0Q6o0DllLbt0rq87xhqdG0XQ7o2Bt32PHGD6mIf4yJWB8VHxFDF1MgcPXWvQKikewF/S+gqsVYrV+VXEHCI0TfF5Bm6/a5q5iL1WnYP1anNckOWf5fgkDmakR14hvmdg+yOJEFLTfTOfHSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB6445.namprd11.prod.outlook.com (2603:10b6:8:c6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.29; Fri, 1 Dec
 2023 22:07:30 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 22:07:30 +0000
Date: Fri, 1 Dec 2023 14:07:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20231201220728.GE1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231129205122.3464299-1-matthew.s.atwood@intel.com>
 <ZWjp-8uYFQ6dXt5o@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZWjp-8uYFQ6dXt5o@intel.com>
X-ClientProxiedBy: BYAPR03CA0001.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB6445:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ee88a97-7ff6-4ce8-4cbf-08dbf2b9e97d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MELw8fV0gIcj1qaCRhA3Wdg4ixrUsfdyW3e3Mmwd1gDiWMUrGQf6SuFNTXBaeG9Qhn6QI2l6rcZQL/zQ6sEXU7ZXly2uiQ3b6hXhOXkkQ9G5vDpOPSCSy2hBYImassja5o5qooEpQ9nefd0TB7KtMbnH3zvxSY5I25BzOgpZBPzpiyVMk67stKvm3qGs0IjtMy1Gh87YW6la0FpzeQVvlE0jD1zdqaVmCPRadAFn2y3PUrkljy+PE/+bE6q4LMW0Ld0b9fnQQ/DcpICa9CsGiESQIH9dA9T1WhpiGvcOonkZbqJbPDPbDWKqvV88lq5L5VPHISdi41lF/XdETvrqAHe3erFEWioRUTEUny7/VrXS9WprGOeY3Q2aXod8wK2yLutGMJh+JtKt73vP8+N4mdEHIZ7Bc8rlGrz5zDFkLrREmSY/W2DSwAt34LcVr9oJAoHmp1ZyoUxvNe3ZF3oXY7VhFi67gPahYyia2LfOGLnUSer6K+u9bPNRj1f8BP2YdAnzU01a/wpE7HAhXXMH41IMtzL8zXjO9DLGjtRkDsqkyeKCW3FHV2ZyEWlAZ6s1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(136003)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(1076003)(83380400001)(26005)(66946007)(6862004)(478600001)(8676002)(316002)(6636002)(2906002)(41300700001)(82960400001)(66556008)(66476007)(4326008)(38100700002)(6486002)(8936002)(5660300002)(6512007)(6506007)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?URXJumc2NW4E/gq+PZOSXV3eKkvJLitwzJzLjhag4wY3NORxZCEZ98nbfIYD?=
 =?us-ascii?Q?jwcJ3iXCPEu2+3OsCXL0zoA5xpGDx1DLwyVc2N6tl4rQsDOuEiPnugOvDjMS?=
 =?us-ascii?Q?LFN8sxGvieH7QFm9+PDjcG+HVYBKDs9rEtE/J3hs6QZrCgkUAlbKofbKv1DU?=
 =?us-ascii?Q?lINQliAuN/osK3UCWde6CNgIKWr/yFVvWElfwWp171kznRn5FfJWiSWItLxC?=
 =?us-ascii?Q?XJHIue4+E/hcVvRzEEovhGGwGcMXAy9tTnrsXuhUmlnhzOKLkMtmQKgB++Hk?=
 =?us-ascii?Q?gDKIzadYXwUBQLl2mH5D1zK7nCoY4Xd1tKldzShLXyiNruihZWgPczMPJm0h?=
 =?us-ascii?Q?vz+PVvQK+BNz4Vs7H5n/pdY4tfR93cxRaw38+sDlUZbuab9QhVI2VPkO4w5/?=
 =?us-ascii?Q?uKPfwGYYqPtMY4OHF1I/1G8KXBKSkmwaL+X/MvupukUlyzvMGQah7SnV2nC5?=
 =?us-ascii?Q?YNnGYE7O03CcXWDENfvCwK69gcomOFgv7Vdw/Ji718yYvbF3fKXX4RI0GlUM?=
 =?us-ascii?Q?GKfZYavuThSWN5Llq6xPVNJmSo9jup6jBKFWMAE5K+Pcck648tmEPqYuBwPv?=
 =?us-ascii?Q?NNh/uUYKx5WXA6M+vfmcmr4IVO0L6dQk/0PLrVeYu6kkEyuCAop8q42iumK6?=
 =?us-ascii?Q?sZBRvr0LKF/GYtA4qZch7iqSCzMipdBcvMYcqRaKhckwJ0soROqDxa+6FBgs?=
 =?us-ascii?Q?DJDhLPIwCKVPWA7HHcA0P42RCTcObz80oDVPyjZNV/HYsdAVXEhnwcOvQtak?=
 =?us-ascii?Q?MrMWh//dQ+0i0VBVuDGUoV/BP7RUQmCG3IRvkwuIBUvDrgntGwnJw1AJVXen?=
 =?us-ascii?Q?n3U4DZ94xsiRoQUfluA9bboB7fysLqMP7T5ORVOLWEQyDH1lgX6xqMJO91SW?=
 =?us-ascii?Q?lvl5E01/VrfjzMPgZeoFsOom3R72iPjMKB0KC5kXxsb6N6m+V+gvtnm4h+SF?=
 =?us-ascii?Q?is9XS6+Q+cIY5yUs4wpQ3pcxHpYUjU37ecmyXMkpwlhUTlaH6NK8ZRKG1whF?=
 =?us-ascii?Q?82PvSHg8ZlrIY+FSgjfbc8D0mHWow5W5+iRqA/OGjze+mnOQdTbD4pMm0/Cc?=
 =?us-ascii?Q?23UjYp3dbmt7F/PeNiPPNMebb/+iJQT0gy5KBkgvvNIrbl1kOK1Mptctmppy?=
 =?us-ascii?Q?eVQz8+aQ44RSq8zvwdZGjW41kPDFbvVv+Mk7/z1TiHTXxNpxIiI3yI0pF6uA?=
 =?us-ascii?Q?wGivOvvSFqttwhf+a6J8xdyy/0k9mnOsey65CxAvdDBZHDsbzeBBI6Y8ChQe?=
 =?us-ascii?Q?T2lJIqgjeT5pLNPds1/807GzlSLyWyiUyAMidKSnTCb83eXEA+D6L7BoCJC9?=
 =?us-ascii?Q?jggV81MJ8RTfwVdf8Y1bnyWO9DSUBHSHmjU3NmFu9NuhKsAeHsK+Li5pqZzr?=
 =?us-ascii?Q?E2OZZxqxEmTePOikPsomYJ9Jp3BB1CvouaEmEa4fbWhi97RFWy3+Arjko4Av?=
 =?us-ascii?Q?gyg8Nj0kdH5f3ma9HAqA8GF8PynGpT7dSPLIOlPgmT2i53SogMLeBxcgQJa6?=
 =?us-ascii?Q?rt2O+T7/uipLyKFwwEMlP7uLC9I49b4SlqKUGmcqOwhxokdQKRbchgmBMzNm?=
 =?us-ascii?Q?HtC9BxawFnqHK/4uIfBu+p9HwoXsAX9tIm2n5g4eRBHzr+d8wUSrxNqEDQdL?=
 =?us-ascii?Q?nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ee88a97-7ff6-4ce8-4cbf-08dbf2b9e97d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 22:07:30.4520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RutWy4psvmQL/O6yyiX+DKuSoSvtC/wol8owmB/r1EsnZK+gBeGcvRI6nEZ42qu8nNjwKv3RZdjGt4rV18gtoD3xjuZuxEwwgsXnTfu45PM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6445
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Patch v3 1/2] drm/i915: Move reg_in_range_table
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

On Thu, Nov 30, 2023 at 03:00:59PM -0500, Rodrigo Vivi wrote:
> On Wed, Nov 29, 2023 at 12:51:21PM -0800, Matt Atwood wrote:
> > Function reg_in_range_table is useful in more places, move function to
> > intel_uncore.h to make available to more places.
> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_perf.c    | 13 +------------
> >  drivers/gpu/drm/i915/intel_uncore.h | 12 ++++++++++++
> >  2 files changed, 13 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > index 7b1c8de2f9cb3..5e5dc73621379 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -219,6 +219,7 @@
> >  #include "i915_perf.h"
> >  #include "i915_perf_oa_regs.h"
> >  #include "i915_reg.h"
> > +#include "intel_uncore.h"
> >  
> >  /* HW requires this to be a power of two, between 128k and 16M, though driver
> >   * is currently generally designed assuming the largest 16M size is used such
> > @@ -4324,18 +4325,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
> >  	return false;
> >  }
> >  
> > -static bool reg_in_range_table(u32 addr, const struct i915_range *table)
> > -{
> > -	while (table->start || table->end) {
> > -		if (addr >= table->start && addr <= table->end)
> > -			return true;
> > -
> > -		table++;
> > -	}
> > -
> > -	return false;
> > -}
> > -
> >  #define REG_EQUAL(addr, mmio) \
> >  	((addr) == i915_mmio_reg_offset(mmio))
> >  
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> > index f419c311a0dea..1e85eaec1fc5a 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.h
> > +++ b/drivers/gpu/drm/i915/intel_uncore.h
> > @@ -496,6 +496,18 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
> >  	return (reg_val & mask) != expected_val ? -EINVAL : 0;
> >  }
> >  
> > +static inline bool reg_in_range_table(u32 addr, const struct i915_range *table)
> 
> exported functions should carry the name of the component that is exposing it.
> 
> something like intel_uncore_reg_in_range()
> 
> but also, based on your second patch, this doesn't seem to be the right thing to do.
> 
> although I hate the i915_utils.h, that sounds like a better place for a function like this.

If the function leaves intel_uncore, we should probably move i915_range
to wherever it ends up as well since that's defined in this header at
the moment.  Today intel_uncore is where pretty much all of the general
register handling is, even though "uncore" is a bit of a misnomer for
most of what we're actually doing.

This function probably doesn't need to be an inline either.  Just a
normal function in a .c would probably be best.


Matt

> 
> or on a second thought... maybe just duplicate the logic that is inside this
> function if only one extra call... or maybe duplicate this function along
> the other table definition instead of having the table in one place and using
> the helper from another place.
> 
> > +{
> > +	while (table->start || table->end) {
> > +		if (addr >= table->start && addr <= table->end)
> > +			return true;
> > +
> > +		table++;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> >  static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
> >  {
> >  	return uncore->regs;
> > -- 
> > 2.40.1
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
