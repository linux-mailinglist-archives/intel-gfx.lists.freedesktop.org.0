Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB6767459D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 23:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B948D10E27A;
	Thu, 19 Jan 2023 22:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A6010E27A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 22:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674166446; x=1705702446;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Bqr2X8vwmMpHGuPF+8hL2gvDOPWPQlxdwgaIvMiilvM=;
 b=RfRyfgmr8GyKGzgyVKyOBlUMfl68qlbOmgUEkeD/FwePXXSuIhebKM3h
 rF+YcHYs68vmn+TLTD3PHE63wefvCC834O9NRuOc69pw9Pb7EaZ66P7Oz
 KUIRnEXMe1EROoXxlwF3sCb9hRz0moEBlaWdyt1qsi+1COn2zlK3zvcVz
 AGG1Q55f8CY4qwPWkPGATO1QrTXXkE9yzIB6AtWtu7G+p0tpWrgvWMCU2
 C3d06BZt9jZkyx94pThGBsH36t91VuIRzSzZGIhlrdUPEYMEbmMdpSat7
 1fKcvluPh1G998UejFMGwe8xEy0uQA1+jKEKIrm8u85sYvtIzA52hs2BB w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="305808545"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="305808545"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 14:13:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="653552589"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="653552589"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 19 Jan 2023 14:13:34 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 14:13:33 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 14:13:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 14:13:33 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 14:13:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fUh/W3sYtD5cBhf3ukz3lOl5Qvsa+M6r/xrVAg0cN+/uKFexN8j++jzmxxJMg6FofXg2qPjoUmajo9hbhvo83x2aeg4OsVGskgZIXbxeeYI0eqCRD2069hBLawMiDc91ISDkno3R5wKZci+hvZxHR8x3J4C8rT7aiUEhTHKUb++KolrMCmb6ocDVJAbsioz5+Ezf/kZVtk1tlDOZmaxnr0JzaRC0XZdCvl8XLvcto/iRqLhnyJaiX9Xyhg9+WYb/naCm9WtEMDJjs+w/n4Sg+JUFSNtPtipwz3trd1MfwAFjaNcO5MU4uuznndRmPubyoK3qDNhtcTzltkyuDpWGUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D9pPwNuWo6ReNGNP+thgdkjYpv6DHeH/Mqn29zy9YPo=;
 b=RzOdDeymFGX6hDSmV1j51T4Xhyazeu5eBrp8lumAJG7ZPjwlOoqdfrJvo8acD/qJ3xKmH+oeHKB1dJbAG7g+T5aR3r7b+KK8RnV3V8NA7mAmd8md79Mq2A/Nk8hgyaLxzK6OU4eft9O+qU00bdFk7TrbE/T5Cd3M+XVfCj3GZeisx48eIaV/Ookd7OjCJ5FzAiqSjOoG+IctVkvcIQ86KKE6M8+44QFVlsw7KbvXNmh6tqhWdnEUl5n0x7XKzCYKfRpQ/XL5tpVJlOB8O3eOBPo2/O+9Byv4HlNKIA2hULJq9PLOL3OwDazsLn2ysYkyYfo4UmOjrGNlfMLrxpMmNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SN7PR11MB7467.namprd11.prod.outlook.com (2603:10b6:806:34f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Thu, 19 Jan
 2023 22:13:31 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.6002.013; Thu, 19 Jan 2023
 22:13:31 +0000
Date: Thu, 19 Jan 2023 19:13:25 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Message-ID: <20230119221325.ap7ifnagaikw5m23@gjsousa-mobl2>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
 <20221123194525.4k6qovx2gnhdiew5@gjsousa-mobl2>
 <Y4T9RqbhLBzgXgP6@mdroper-desk1.amr.corp.intel.com>
 <d020f333-6309-d343-4f57-e1a3c105ddd4@linux.intel.com>
 <Y8gl4G+QI9jOPOA/@intel.com>
 <Y8m0kDjkHEhiDhMn@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y8m0kDjkHEhiDhMn@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0250.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::15) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SN7PR11MB7467:EE_
X-MS-Office365-Filtering-Correlation-Id: 18ab4fb2-7294-41b4-b8d6-08dafa6a6603
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m+Lh4wXl9S9dcUY7Mspn/LE3DpCFJooQkAJut3Euu2joWzN7aHE48aLfZdtQ/6Ffl3CIGKv0jvVxyE5RYW2Zeo1XvfkirRnQl8DMV7eIUr38j+3xfYRcylCGW71wcArV+Fq0sxM0apqW0nsUzE1A3a5t7M6mgEQcw0mLZd13suxEZvc105h5DSc7oYrb86PiH5wfC4N+aC6sgXh91Msi6OgnHVdRK3z1+7WQa+5HYpY2u2NbWYM8EXEF/eh5CZsuANaOo2roK3VTcz/9abilddThID0NAM3T5Dc3acPnBJFtl+w1EPPv7lJ4mkhRsWW6qMB65lThDOOchRcZoPQ7U+vVlTy8dUcAteBkxg9GmOa4k8NtUQRyuC6w1GjKyibdFJmwZ8AlESN0kpfd+ej1vHDOvw/k8HaUjghgdJa5i840OyqIF4PLgFh/nZhRXLnDcBu7UjU0CzDzSSAupX3Rqf1otvPyzVhCacTdp1TQblMyg91pbahdwHrItzJ9/S+w1euuLojwHS9aqN5TkbUTIS+Sv1kZR7bkpsOjPzS010OHW5K5NUn1S+Dv83XZd1gfqUu1/AEbwf2KCG3f5TLlP3gf08PBOQmmiIR65HX6yFsZzq7yVdI5HbaBLY+DI1jz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199015)(83380400001)(6486002)(38100700002)(86362001)(4326008)(66556008)(44832011)(2906002)(5660300002)(8676002)(82960400001)(8936002)(66476007)(66946007)(6636002)(33716001)(26005)(41300700001)(6512007)(9686003)(53546011)(1076003)(186003)(6506007)(110136005)(54906003)(6666004)(316002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hkoRL3HhJP2b19DD2s4y99CEHCiNu4yelz/NBjckqHlF5Y4DEzhoPtK2xCdp?=
 =?us-ascii?Q?6Frqo+bKqMeKBlG5+XEJAIvkx0Tx5zk9YV42cAiJsZD2eIdsqYvgGqhCRHrO?=
 =?us-ascii?Q?UKn8qWGxcuYVK/iXN2CMGTv+LrjuPkjBbKGpdW4h0uaHD8+jv3WaiB0ffwZg?=
 =?us-ascii?Q?8RO8qo5vSDn0frlCpu0cpWoUK176z5hbwWk+NqsDcXcNX2kudoP64rEkQfXd?=
 =?us-ascii?Q?LJ2W28SnsMPAepVsAIWywWe+uyC9KO3OwMs92HiqWPtTQZxeZdcUVfvv9pjv?=
 =?us-ascii?Q?SThbhOMST/o3TJiJ5WOoO9J6CNuzjO6dpZ5LW2MTdDOccSo1opNcEKkMiKbQ?=
 =?us-ascii?Q?ZW6MxqSaEUSYp2PpHhdLrwGZeF6mC0fjUgpNTdhMX8Jd1bNoDLIAsPGsIgtt?=
 =?us-ascii?Q?zAUvFfZVCOriLniogGm2nAEJi14W4gzcAxA+fksAX3rHw+EVXmm9SxGSUWUX?=
 =?us-ascii?Q?OGCzHv9OW5fDtIplfSq2cMhyZwDwo3WEBnK/vd8dCuNC4RBtyVaYYqDKQLH1?=
 =?us-ascii?Q?mzaKTzFjkBKgrElWowdP4DNK+nSNe93dGu3zZ7vcSyydWzl7EeY8BSS1hYeW?=
 =?us-ascii?Q?oOt8K6F538gY9ilDDDra0h1x5+POIlGxf36ZvaFqTQHMfe3SKA0a6+Xj8UiI?=
 =?us-ascii?Q?R6prlkQkbRmZEXdtnfENHMmWAQC5AD9gXs1RlyUhsbDMJCNEXRV9HZUicSGU?=
 =?us-ascii?Q?dLLdKlw4Mf+rldzKXVfGW2aJvGoOrh05yQRTCqko8CTv79piPDxk9um2EiOr?=
 =?us-ascii?Q?NyshjGidSViABQY4DypuMn3Kmet0c63qnxpdNeFPZ3B8boinMpGXfvaJYiHv?=
 =?us-ascii?Q?RYysSxZo67p5JreRTIjyxycy3yTokBAtVwqJkBbyw7Mw4/EW/43djFjqNhcg?=
 =?us-ascii?Q?byG1VegCbUoG2ZN/RopjjvP3YLCXK4R9qvQ2tVtD8bxPRx4m0PTp5+cAR0gO?=
 =?us-ascii?Q?+3TTGnijcPUu+szVWGzgQFo+76fPrFFBsuHMFz1AlGyiPhLiEByElGSi4wco?=
 =?us-ascii?Q?nxhunqQAxzUMqgnT4YUAp9m8K9QhZNOrBAQmcw7V5g69GSNo2OS5RLY7ISxW?=
 =?us-ascii?Q?rbYYK/maCuMOCE/cde6s/wSe/sV9T64AL7pkEupjG0I1GcOXGu90Zs0/m48R?=
 =?us-ascii?Q?FUoYwTvrxOnOeCiqr2VQemC2/djudf88N1NIkrzuxczJFdW0aevYD3a+5XjF?=
 =?us-ascii?Q?HukL796lD204NpakYHAFEGhMbA5IBl6hFPYAkNgWhkVhK8ep8/jy8UfUvvUU?=
 =?us-ascii?Q?UrPmYDDbTrfK8vcPgTGXPzsd2IEQM7uCIXlkPdWdx7aKm3Of+vn+4XFvVFeI?=
 =?us-ascii?Q?xZlMEmRjP3BBuxEqbvzuWxhgA2Q10vOWVbbRyysWu3ABV68SfkAVnZgI7xap?=
 =?us-ascii?Q?2aqEJ3Td7eSwNmFhPQq73hd0yiWbradzdX7Mah4ZaRoPM/jDgUCNXoQHJk6p?=
 =?us-ascii?Q?ZloqhwBW09kZyKx3VrgooK/ZXQCRiMwGup/+x4q9Wu5yV6UmDnPNkObSv2bg?=
 =?us-ascii?Q?OPQ5qKtlkhUveAKMvgvDSPsH3dXtIRj7z+NBEyPWHyu4qgYxYhNOg18q/Njj?=
 =?us-ascii?Q?iCb7TLm0YCFY2M/unpBFK/+DN/gyd+H1thJ1S+T0rnXEBZgUR/pEQEfFLfTP?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18ab4fb2-7294-41b4-b8d6-08dafa6a6603
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 22:13:31.5249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZbOWKXFPdiBNZpANNdCPYskmoSYwCLaqbmDGqU4ixVX38ixvYiK9fvjOIJnYbXJeGSPvAZl9NRs1UIDmj+x5MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7467
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 01:22:24PM -0800, Matt Roper wrote:
> On Wed, Jan 18, 2023 at 12:01:20PM -0500, Rodrigo Vivi wrote:
> > On Wed, Jan 18, 2023 at 09:54:56AM +0000, Tvrtko Ursulin wrote:
> > > 
> > > On 28/11/2022 18:26, Matt Roper wrote:
> > > > On Wed, Nov 23, 2022 at 04:45:25PM -0300, Gustavo Sousa wrote:
> > > > > On Wed, Nov 23, 2022 at 10:36:47AM -0800, Matt Atwood wrote:
> > > > > > Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
> > > > > > G11 and G12 A0+). Clean up style in function at the same time.
> > > > > > 
> > > > > > Bspec: 66622
> > > > > > 
> > > > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > > 
> > > > > Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > > 
> > > > Both patches applied to drm-intel-gt-next.  Thanks for the patches and
> > > > review.
> > > 
> > > Do these need to be sent to 6.2 fixes, given DG2 is out of force probe
> > > there?
> > 
> > Yeap, good point. I'd say in general we are not very good in cherry-picking
> > the hw w/a to the fixes. But this one was a good catch. Let's ensure the
> > best stability for DG2 on 6.2.
> > 
> > pushed to drm-intel-fixes now.
> 
> I don't have any concerns about putting this in drm-intel-fixes, and the
> patch will functionally behave as expected, but I did just notice one
> minor problem with the original patch that we should probably fix up on
> drm-intel-gt-next:  the PSS_MODE2 register is in a range that has
> multicast behavior (GSLICE replication) on Xe_HP platforms.  So the
> register should have been defined as MCR_REG() instead of _MMIO, and the
> workaround should use wa_mcr_masked_en().
> 
> As I mentioned, this oversight shouldn't cause any real problems, so no
> concerns about keeping this in -fixes.  On DG2 we don't have to worry
> about steering races with external agents, so even with the 'wrong'
> register type definition, the steering should already be implicitly set
> to multicast mode at the point we're applying workarounds.  The need to
> follow up with a correction on drm-intel-gt-next is really only
> important for consistency and in case this register gets used in other
> manners (not just workaround lists) at some point in the future.
> 
> MattA/Gustavo will one of you guys send an update for that, or should I
> take care of it?

I'll do it. Sorry about missing that in my review. I *think* I came to learn
about MCR registers only some time after that.

--
Gustavo Sousa

> 
> 
> Matt
> 
> > 
> > Thanks,
> > Rodrigo.
> > 
> > > 
> > > Regards,
> > > 
> > > Tvrtko
> > > 
> > > > > > ---
> > > > > >   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> > > > > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++++-
> > > > > >   2 files changed, 9 insertions(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > > > index 80a979e6f6be..74379d3c5a4d 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > > > @@ -457,6 +457,9 @@
> > > > > >   #define GEN8_L3CNTLREG				_MMIO(0x7034)
> > > > > >   #define   GEN8_ERRDETBCTRL			(1 << 9)
> > > > > > +#define PSS_MODE2				_MMIO(0x703c)
> > > > > > +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> > > > > > +
> > > > > >   #define GEN7_SC_INSTDONE			_MMIO(0x7100)
> > > > > >   #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
> > > > > >   #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> > > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > > index 2afb4f80a954..870db5a202dd 100644
> > > > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > > @@ -771,9 +771,14 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > > > >   	/* Wa_14014947963:dg2 */
> > > > > >   	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> > > > > > -		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > > > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > > >   		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> > > > > > +	/* Wa_18018764978:dg2 */
> > > > > > +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> > > > > > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > > > +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > > > > > +
> > > > > >   	/* Wa_15010599737:dg2 */
> > > > > >   	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> > > > > >   }
> > > > > > -- 
> > > > > > 2.38.1
> > > > > > 
> > > > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
