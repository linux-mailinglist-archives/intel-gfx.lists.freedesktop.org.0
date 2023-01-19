Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F80C674439
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 22:22:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A95C10E25F;
	Thu, 19 Jan 2023 21:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB30C10E25F
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 21:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674163353; x=1705699353;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hGjm8bp8uMbOJeTBZJN44AA/bC9i4x5SCfG7cuZ6tZ8=;
 b=esP/n9baYNAjlOQ/38I5PLoS3TIiXIcH64upunIN/pQQBhHlK8WhPmXh
 pGt/ds+agy/qWsq5lkvHOVswjPhPUlWsWWTkcwmyQZI8ZsW+2EOrCGfSE
 UBSYRoUUX8wZJdmGz2eaeU9dvsDk7lRLbuCjYnuWLkzhFX+da59MyZ3a8
 CaivnHQeda2IaYF5ON5zfTEKMUEl2g5MPZCXoMCtiSOsFIJ9vC//aTEQ3
 Unn0MkfPtcCcUA4NAwQOlnzpx5rrhJxrrJ8RcnIutA5u2M2Ta2CdFX+k4
 m53ka2TJKR2Z8cn4782RaKVlzksUq0qXirPLDXPUXVY/AYxycBjgVe9BA g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="327521780"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="327521780"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 13:22:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="662265054"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="662265054"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jan 2023 13:22:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 13:22:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 13:22:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 13:22:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RpjP4CGkODJ41Xn4tTzwi4WfKRRPhjtmnIBBmoPMH2UvB+iFfiiEd1jZrMIN94L+8vQqRpyXsUz0GjGOKdcYAGGCtqwv9pjAsGepiRKUmxGPUtreb7k8vYxSfQLHGnW6mvecb659Ocv9w8pcM1pmPVXNCiRa8jhSW2+UW9Q68J2+xa+ieJGAY2eF4Jhn5SDsTNrrjqG1BxD17BytnbT8aO44G5h+gCC0bGDyhy0zLhWSmTAqG7LMkVZ7UrQx4O4XXOrVjDpZN4xlOdUDLGtXxRDvoV9DzSbuSqgvcrKnY8qoXuA6FXyjLRtPm8uxn/kca6z7bSfw4qaCTwn2ULDh5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f1HMNvuP22LrFEsk6vx5pPKknowKuogXJ0WlFCDxodU=;
 b=jMga0NeVmzFFVBtmDZyX6iOQJumlODVkppnpaZOpiAzjldXD+3N8OlouIAi4wdWxoM8xpSnsLawEVkzHy5Cr3NM1oc6+6+ttTSS1rfreBZNiPtFVn7vItJAybiE/oYbCpjVbtgR8KX05LT/rkDIErDtmt+/An+CX1/PqUBC3F5l1RqoS/7Q2HGk2NMuWAkNV3UaUD9Ol9I4ATII1SomUJLPUGPtz2n1XnxIIY4/IQhc50YE2EuYYwsytf5DJwj5iCNh69/IwEJ5aolRV1NhfSf3AigtugV3Jwmz5vAc8OhKW4hBsgNsW/ubIgR0llymxnj18FKoYvn2Pq6HKWptTZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7172.namprd11.prod.outlook.com (2603:10b6:930:93::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.23; Thu, 19 Jan 2023 21:22:28 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.024; Thu, 19 Jan 2023
 21:22:27 +0000
Date: Thu, 19 Jan 2023 13:22:24 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y8m0kDjkHEhiDhMn@mdroper-desk1.amr.corp.intel.com>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
 <20221123194525.4k6qovx2gnhdiew5@gjsousa-mobl2>
 <Y4T9RqbhLBzgXgP6@mdroper-desk1.amr.corp.intel.com>
 <d020f333-6309-d343-4f57-e1a3c105ddd4@linux.intel.com>
 <Y8gl4G+QI9jOPOA/@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y8gl4G+QI9jOPOA/@intel.com>
X-ClientProxiedBy: SJ0PR05CA0069.namprd05.prod.outlook.com
 (2603:10b6:a03:332::14) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7172:EE_
X-MS-Office365-Filtering-Correlation-Id: 596f8f5e-cfac-4cfe-f489-08dafa6343f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ozvDNpuqwrHJSooUKg4Z+EEvqUh4Ttpws6oyQ6+2oVnGeB4K97z44U1dQKgGigsCVol/fT2c0UxQGw++9jgb8h5uJSReLMEjaQCjd42nk5QkNQ9Kr/lemTnhQb2t0GC0llRXo5MSageAdnK4SulTF+tXmGo0LX8r2ZE2ntmrod4MpcrrQ/ztpkyEtyxPd+lveRf/EVD+6CAtFpIpX6sNGSEac26OTOyHu+spb5cximQSqdjPiAsh0y6pLw1j8hT2tpsYS+pb2GSb2ApMHKVSStJbuGQi0al7iCbPFA86hNkdt476a3N9ji/ayS4gibFqHK/aKotZflUbJi0Ze0w68dsPEISn1PR94JbvRNik6lPjLABrD0W7sBPxh4MjJQV10JCiyZzUAnRRKP0lPa2CGJDGOap0jf5tC9obGrNKGK/NhnXte43LyhNn+Ay2Jkoh+JvnTBzvhoMr6EsGLxkdmgEDyQjhsnqSu+xxI2pvGPCoLoqJkaVoD57qZSNBS/B2Yeb+zt5qqjhQcJqcfc8SGeWXb7n8yQsOQofpym0vy0P9VoySvZwgb3EZtNWd3Q8t9LjWzGYuj84Kxpye9beGZHUGigEV4dWj6oWUHA+gY+JYmeCWnoTtlxvSkZdR1/ztRPpLcg7XF5er7SikpCOZkw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(346002)(376002)(451199015)(86362001)(53546011)(6512007)(8676002)(66946007)(26005)(66476007)(41300700001)(66556008)(4326008)(186003)(5660300002)(38100700002)(6862004)(82960400001)(83380400001)(8936002)(2906002)(6636002)(54906003)(478600001)(6666004)(6486002)(316002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nLoOmWFxdDqjBunAgx8e7XXxvAzAU6w6RePMqT+7x47RWdVGhWdaYeDr9r+d?=
 =?us-ascii?Q?hN5oMiTavhduVV7uAOLTAvWP7rIOSbqv+te3uDjfNg8Q8fk5FgGaCOGLgk1o?=
 =?us-ascii?Q?l6Gr+gM+hFgBXJ2FqoSg2ALS6jsfzv/8C8UZ4e/L1mKIrGLVFN787shr4GLo?=
 =?us-ascii?Q?QfIOMpyp9GoRQlUfOm70hlJIZYvyy48l+AoRAj137WKqzcDHjJmNFWBWAylr?=
 =?us-ascii?Q?f06QfUE/1f263Hq7Y+NUrzMwkb2pCX+bAPEolz+Z67jt6tRnzlpIWwtK4ieq?=
 =?us-ascii?Q?F0Lk/KSD7xENMU6/7UdYvgEUCx7rKQHdqoP7lK8vnQa68mfJtQZQBR/oybaw?=
 =?us-ascii?Q?bqJ5R+EtsJkkgChVQ9r6JUspcyuA3nOWDTxONviwyn647NuQ6cLPfbKkQfhW?=
 =?us-ascii?Q?4UaJ8810Y6mkWubKCVyN2xpzdRlLh3lI6Yf1tSuv42uLW7ns2Qjytam/vZ+7?=
 =?us-ascii?Q?Zfbc/CRhyDdtpzn+fgrLdGxZ/m8nWh08UanCWgSVZvceojSrEvsqW/t7KEuP?=
 =?us-ascii?Q?183M9DWcL/4xtRWiZWoaf5/Moxz7uSrFpeeNR1pq3OfOtyIl41TA4w/uPpCi?=
 =?us-ascii?Q?R4scUBPceXOLd+3p5rXuTUFhTcC0AtY9okbmCIE9henOcIAmjr2VW+LbtPuA?=
 =?us-ascii?Q?LAR8KiSs30GqGuNlwclKKfijueCt7WCobhnZFDyHIFM3fta3ju/5m30r62UK?=
 =?us-ascii?Q?ZNOcIAfPUy9e3tKcNubvmjVOdekiM7yFH7+f7ps+lWk2gev1ldYsqGz7oJal?=
 =?us-ascii?Q?VkTECDYrWm2cOwL8RDTLQtcmtBVQrvDstUoNwDjU4uiyFaEvwi91rOn0tjWy?=
 =?us-ascii?Q?NGkswyoX3//zaRK+kEOlrt5/CZcj91xbk8aE8EEsfYDT3if9hyrl4uADTQCb?=
 =?us-ascii?Q?vhl0yOPCymUWxtD11/vuU2mRnB/gd22OUeED4CM++UXVn0pIdvuaO9hDrrR6?=
 =?us-ascii?Q?pz7bb/9i2ta+NkGo0lTfqBeSPqXdVQ2ogQ6/JwrsZ8kI8vgbPJA0656X9AKr?=
 =?us-ascii?Q?Qj4b3OjW66PT8nLezQiiV2xyAwkN4ZtLKAJGX6YACXQfmbfvqF4baeBnq1WT?=
 =?us-ascii?Q?mDSbdFtnKRG9wn7eadQOZb5UrVVtStF2rxSgHJMJWHZCsP9cla2IbSy4lyyr?=
 =?us-ascii?Q?8HwD0TddDcjXs2L8u5ml/xpEGHZfxauCZ7xZjds5L8LRhu+9Wlwp4rLLeFQT?=
 =?us-ascii?Q?/N6POe5nqUfUSWZ2QjhrpP9HSyx2XfwrjZkjG4FCbDscQg78zCaIaRG7daiI?=
 =?us-ascii?Q?TUYuydO4YrhiYVgHCNbrTAC4fr7MNp6O/diOIpFXwX7tf77fXcCt9VyM6pBV?=
 =?us-ascii?Q?mdhz9nLE+/b2tBggnVAMza7VUOxIUvBTVzRZ/79MP/Op0z8lQ2rx4A/46Tsf?=
 =?us-ascii?Q?Y4yCQHpJFui+MRuUl/9n7svQy/hBGHQyKnqrIUylG2BtP6QPe+QUSdxLrsjz?=
 =?us-ascii?Q?09VKwT6BMpyQdcVd93sK8Cj7B8pqFO8MZN3E1PzS2NPepNO3S+s6d0+LveWA?=
 =?us-ascii?Q?ssOKMgvc+Nivh2iE08q0EUFBmtAKxTma3LIJJ+Xy+MOvMUUJ/VWT5I1RR3Ex?=
 =?us-ascii?Q?gXv28LKpDAkBX+j/tEYHNRFcOfyQYedDxACiQIy0uJJ5OLtdND5sfCUj/Txs?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 596f8f5e-cfac-4cfe-f489-08dafa6343f1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2023 21:22:27.7170 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AqsyTlk76VVcqccpfaUAoDp2a3SnUHyowSbA3J0Br/fYitTp/Dikm+k2yoyk30+rtpsacyVxh9GKmGmH0KpfnN7WF3hYlDNkPATNGEQP8NQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7172
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

On Wed, Jan 18, 2023 at 12:01:20PM -0500, Rodrigo Vivi wrote:
> On Wed, Jan 18, 2023 at 09:54:56AM +0000, Tvrtko Ursulin wrote:
> > 
> > On 28/11/2022 18:26, Matt Roper wrote:
> > > On Wed, Nov 23, 2022 at 04:45:25PM -0300, Gustavo Sousa wrote:
> > > > On Wed, Nov 23, 2022 at 10:36:47AM -0800, Matt Atwood wrote:
> > > > > Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
> > > > > G11 and G12 A0+). Clean up style in function at the same time.
> > > > > 
> > > > > Bspec: 66622
> > > > > 
> > > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > 
> > > > Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > 
> > > Both patches applied to drm-intel-gt-next.  Thanks for the patches and
> > > review.
> > 
> > Do these need to be sent to 6.2 fixes, given DG2 is out of force probe
> > there?
> 
> Yeap, good point. I'd say in general we are not very good in cherry-picking
> the hw w/a to the fixes. But this one was a good catch. Let's ensure the
> best stability for DG2 on 6.2.
> 
> pushed to drm-intel-fixes now.

I don't have any concerns about putting this in drm-intel-fixes, and the
patch will functionally behave as expected, but I did just notice one
minor problem with the original patch that we should probably fix up on
drm-intel-gt-next:  the PSS_MODE2 register is in a range that has
multicast behavior (GSLICE replication) on Xe_HP platforms.  So the
register should have been defined as MCR_REG() instead of _MMIO, and the
workaround should use wa_mcr_masked_en().

As I mentioned, this oversight shouldn't cause any real problems, so no
concerns about keeping this in -fixes.  On DG2 we don't have to worry
about steering races with external agents, so even with the 'wrong'
register type definition, the steering should already be implicitly set
to multicast mode at the point we're applying workarounds.  The need to
follow up with a correction on drm-intel-gt-next is really only
important for consistency and in case this register gets used in other
manners (not just workaround lists) at some point in the future.

MattA/Gustavo will one of you guys send an update for that, or should I
take care of it?


Matt

> 
> Thanks,
> Rodrigo.
> 
> > 
> > Regards,
> > 
> > Tvrtko
> > 
> > > > > ---
> > > > >   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> > > > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++++-
> > > > >   2 files changed, 9 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > > index 80a979e6f6be..74379d3c5a4d 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > > @@ -457,6 +457,9 @@
> > > > >   #define GEN8_L3CNTLREG				_MMIO(0x7034)
> > > > >   #define   GEN8_ERRDETBCTRL			(1 << 9)
> > > > > +#define PSS_MODE2				_MMIO(0x703c)
> > > > > +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> > > > > +
> > > > >   #define GEN7_SC_INSTDONE			_MMIO(0x7100)
> > > > >   #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
> > > > >   #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> > > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > index 2afb4f80a954..870db5a202dd 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > > @@ -771,9 +771,14 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > > >   	/* Wa_14014947963:dg2 */
> > > > >   	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> > > > > -		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > >   		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> > > > > +	/* Wa_18018764978:dg2 */
> > > > > +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> > > > > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > > +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > > > > +
> > > > >   	/* Wa_15010599737:dg2 */
> > > > >   	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> > > > >   }
> > > > > -- 
> > > > > 2.38.1
> > > > > 
> > > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
