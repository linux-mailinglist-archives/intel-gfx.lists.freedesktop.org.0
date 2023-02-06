Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 052F668C413
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 18:00:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 323FF10E9DE;
	Mon,  6 Feb 2023 17:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C917410E9DF
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 17:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675702810; x=1707238810;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pmmIMfmDED+THFW2LphqritROnK9yg2n7K9hkW74z0Q=;
 b=fwWInflFg0dz9iv0ngQlXLki1Eo8pkICG7Rgxw02r9NCvcb68RJCKX2W
 nd1gGpZHtwAPbLBv/p8HDb9kOAW6RwTcpQZf3/BsPCfdF0+U/Ge73Edze
 Bh+Se+5ripaDoYe78ZxtkEYg3E+trp4K4EXpG5gz64Nve14k6GGN2QoxQ
 sl417HkY8RkwIfACQn272g1S5oQosOY+4A8gOBFl6FigzCDnnLWQVhL1v
 HjpxZY0Mf/uvQKAIXukHqf9YCbEVykVusjctM2ALCDLrD8BSvs8a336PS
 t7uMza9ys8zlNzijGcbdxA5qYq/gM8zdA+EpMQuvn8YFmLfyhubVCaCdc g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309586327"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="309586327"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 09:00:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="696909093"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="696909093"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 06 Feb 2023 09:00:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 09:00:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 6 Feb 2023 09:00:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 6 Feb 2023 09:00:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GMNTNQdBT5DZY2IkpYHYy8gXP2rMUtKY47ciPF2a3wrNZ/0TpRkLqVFK1aigyAZpOJH4g/NM64nkArTi0PD86jM//QxwC7BI2+bGN7T2Lkxa1LXqGosot31Vj/PsWxDGCken3PDGPlt4J7zr9cYTVjNDj0Jv3woH/hWxHjWMiLAchQtdU5nWBdQlIcm86hqfrgyF1Pn8d0VtyJmZSLZaUF/+O7s33hBqDcuB1qtEajlzaZ3HQN2cUtqEqLJ9rFIC8CH/7AeuXK3SjI6e4fJg288TLhK4P8R7UGljwkKEb24nejsMmLi0Mgl0Yc7bqfZeQaGr3TKcx2LpZFV9tQ6FGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=desoJJnMEcuJ7D3K8agGn7eJR4Sz5jS0hGugJjYGr/I=;
 b=mjELv1KCj84H8qiRknvj36pneFDbL5kaYgpz7wIYCpscMrysGxQ95B7LS1iexh0Jyuhelb0bJW4wUP9OPHMq/eRUWIc8xp/owR7gx321cFai3sdggWqjskpMT36MJ7jjkLJgeOXX6bC2HA7XueSP/zwrwrn1vqfVBxfoFIgRhkgv4Zcw98RxkEqbgoO3rsrQTZxRh3GHYAzBv4mLQQmvfIJA1FQ2UML24+G4wRpkQRUDXQRZbAWE5OvtBXECzy3ysfrgANPV1J5TMveWRksglzn2oArQFOTUMy/+KangHOoCElHrRFZV5wnrKl4DKWnoPS2I+CmKhFruYm3Vj2dmlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB7346.namprd11.prod.outlook.com (2603:10b6:610:152::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Mon, 6 Feb
 2023 17:00:06 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6064.031; Mon, 6 Feb 2023
 17:00:06 +0000
Date: Mon, 6 Feb 2023 12:00:01 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
Message-ID: <Y+EyEZA5VbcKSMjd@intel.com>
References: <20230121190853.18722-1-gustavo.sousa@intel.com>
 <Y9A0Dz4TtLB4a4Wn@intel.com>
 <9d0f7ab2-d6a0-094d-56fa-7ded3592fb66@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9d0f7ab2-d6a0-094d-56fa-7ded3592fb66@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0335.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB7346:EE_
X-MS-Office365-Filtering-Correlation-Id: 06d1bffa-a4ec-4ec2-5a7e-08db08639900
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VC3uf/nQpE8mch+64D2DWktnw5s0gAsv5r3B3xnp5QuwvnmFRCcF1i2saWiJKV3COAunkr2TSVdJXSNBe/AVlqRh9VjPJ+jSvP3e2Rc/WbthAPajz7SmtpDF37+7CvNJ9AX4pJqVxVM6hGLDrqnPtuLSMFurC2EE9FYwOokLclGcaRQCbjyj+4GMry3ubGb0hWZAzF/QTDJCFb1J6gX3yHjGhPyMxfsksiNcY5wr0UfeqXbeJp2m53ioW5qYjrVV/rtQyz6W+6m7Qax5OCR0KItPTIK15CgdTgAqGcnJSf6TWwEpBCDRbCS9WoCQ8GyVrncUYMOsu5aVoD6S31iUpRVGP4hULp8Vm64eCwN48KboYg6XZmsddMrPn8C+b1szpGmb6T/zkmJjSgiXzV5y4lCvl99NmVQY7gjVF1jhAE2ungt6/FJjGpctgEVxG2P3cswgv4sSNNaSz9iAsoStmrOjZSn6igrGoWTxiDBT4rZZjV+in+vKBiL2Zy0v4NgGgSHIwFaxoFw5Ky5KHN0pAZHwlPwSnpmKrEzzykIKD8KaetmxV1jxQMAZwX07PydDvMyRGDI5vIlZwRqcjfFKFlqvri62XFdnQcgv5vRuaAAGFxi8qbEpULq19u0ipn8xHLJyeh2P3BcrV3VvQHjRAC98nMAexbh2u/O8T7Y6Hh8HXekWURNreYOCeZ3EF2xz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199018)(36756003)(4326008)(66556008)(66476007)(8676002)(316002)(6916009)(66946007)(8936002)(86362001)(82960400001)(38100700002)(6666004)(53546011)(26005)(6512007)(186003)(6506007)(41300700001)(2906002)(5660300002)(44832011)(83380400001)(478600001)(6486002)(2616005)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AyVSVrEGdZORZzq0tQ0JwFbVgI8TFvOwpMFpdhv4ZhXefm2zWCNqwuVMuH74?=
 =?us-ascii?Q?8ayAn74wZYriQDHLIZAf468FOVV/KJPZhBjo3MQMKBXrSUcJTIDYiwdQxbHC?=
 =?us-ascii?Q?Eszp1QtZPKOzwr76GYr8AtNuw9lqHUQxfluulSIUI+eojc3OZcB5UlwOtizB?=
 =?us-ascii?Q?y3CwNLmCre24X2HSFvaFbCkWTSB0U21rM5ts6+BZEgS6lK0MW4nrbgbGtqH0?=
 =?us-ascii?Q?SyH6SNKiPQJ2rVjoqMsb2W4BonZyJedbnwWi91EBuOOtOsCaa8doHkjeu6Rm?=
 =?us-ascii?Q?GCniQez8t4pMD6BlE6tu4fCw9Z2PIwTDbtieni0vIo6PuZ/U/eaVOqIL9MUF?=
 =?us-ascii?Q?3sRyI4VioAjMRwLF8gIpNMHmNVv6vasbw2yyFmaeHihdW3fooaNq37LfOmTQ?=
 =?us-ascii?Q?21PulT0wvwdF1WRr+u7uobKqbxxWTuAlXG4xSAeZqgC1krsNPBg73cHW9mQh?=
 =?us-ascii?Q?taYEHgSKT8HW0OTuBam2c+bwRmL0t22SopSPpgWpI17iGppaCQwrYghQVFT0?=
 =?us-ascii?Q?Pa46ptTuzHdA9goAafa8/aiv/W8lsh2KdeS9rp9S8S03kk8Awc2SXgi3uFPw?=
 =?us-ascii?Q?hSeaZUFs4rvEw3JDeaheizNuiKMYlBgG+O2RtktgqE3zm/avtWIeH2KjbQea?=
 =?us-ascii?Q?aPx2saUXl2j9OONhVC4zchpBbEDhCVc4XQQFHVU+wM06VhcLSADKgeUnbQOU?=
 =?us-ascii?Q?EQiB4UC/WOci6o44IasxShQh+yLnVeTYwL29cJVQljFJyVRrFrF/Ys4Azxei?=
 =?us-ascii?Q?cxXNkeU1/NbZjwtDYoZLfPKrnweYZOrfe0TziNdighP8xNP1YxsB/lAFZz2S?=
 =?us-ascii?Q?/5yb+HFhwZ3BQYCb0EeX5WEi4JzQwnw6+n+NkGLQsGYEIF0J11yF5YrvfZL8?=
 =?us-ascii?Q?Qe5W8IrigXMIopvk8cNEf+2wTicE/syVNydoC4dbXk79gx1qjGzT+g0k7X1E?=
 =?us-ascii?Q?XD2PRl8Br45pqEd+Mm+VIARJf8uOOusWHpB4ByV7xwMkc728G6YTPlnYw/uX?=
 =?us-ascii?Q?H6mxQRyjaA+NAUUD/fAiZJNGYRYfHR+FUtajwZGc75kyuJaUoBBpnBt4eXZg?=
 =?us-ascii?Q?MKhd4nQpuZAzw4xVQrbEMWo7bdYywVc/OkoB+JKxF6DacyyvoYLgnKSKeiKr?=
 =?us-ascii?Q?P7bmFpvEvREAxZRZt1QcrFk0spVOI9pM4mGkbqM6ErVw5gX7cZbAILIbf7TS?=
 =?us-ascii?Q?ZTFjKQIgQLpY7TCuuLLTV/loiZBxO38xt9w6PeoROvmpjq2kS30Q8TrhfLwv?=
 =?us-ascii?Q?dulnWNPp54DmOGMPqogkNJDaI7DoD+/bnM14t1eRKZh6K2Qt9PxWgp/iWTHi?=
 =?us-ascii?Q?9wNzMI3ucbSqf0opF021ROyJsGmKVJQLxZeLA3peLTnYQyoDyM25w5GLVioC?=
 =?us-ascii?Q?zxNVG6DA4BPsWQSHzXRKHmuU+cQ8ZrBOGdcKyJ0ajvoN7607VvSFeeUhf+I+?=
 =?us-ascii?Q?4LRGt5/sXPVYBG8sTcFRknPLs0ud7TwN4H88Ly9GnpCtO0PR2ryvogmO145T?=
 =?us-ascii?Q?KQBXMMCvtNfruUOpAB766Tuo4TSRw1b4qTMyqEtyQUxUYQm0VsFXQTIGbn+K?=
 =?us-ascii?Q?CIWAPXsB6JlUPJo3cKANYkYUHtMJ79kw0uuewNd7q3e+zcYCH18wZOFqzJCq?=
 =?us-ascii?Q?Gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06d1bffa-a4ec-4ec2-5a7e-08db08639900
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2023 17:00:06.7589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iBiNeB0JZUTvyFkMfxuojGSXGgbovn/tV62DCGKc8OA18YYGyaCtxTj0Kq87K4D7bkdpFbgF3veujgkM+rtRjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7346
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix sphinx warnings for
 workarounds documentation
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

On Tue, Jan 31, 2023 at 02:03:01PM +0100, Mauro Carvalho Chehab wrote:
> 
> On 1/24/23 20:39, Rodrigo Vivi wrote:
> > On Sat, Jan 21, 2023 at 04:08:53PM -0300, Gustavo Sousa wrote:
> > > The wildchar ("*") used in the function name patterns in the
> > > documentation was taken as a start of an "emphasis" inline markup. Wrap
> > > the patterns with the inline literal markup and, for consistency, do the
> > > same for the other function names mentioned.
> > > 
> > > Fixes: 0c3064cf33fb ("drm/i915/doc: Document where to implement register workarounds")
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> > 
> > just in case he sees some better alternative for the escaping the '*'
> > 
> > My fear is that this ``*_fn_name()`` could create invalid links in the doc...
> 
> 
> Seems OK to me. ``foo`` is literal inline. It won't try to generate
> cross-references.
> 
> 
> Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

Gustavo and Mauro, please accept my apologies here.
I ended up pushing the patch from Bagas that had a escape \*
instead of the `` wrapper.

For some unexcused reason I had missed Mauro's response here
and forgot about this. I'm really sorry.

And the escape sounded more natural so I just pushed it immediately.

> 
> 
> > 
> > 
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 ++++++++++----------
> > >   1 file changed, 10 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 918a271447e2..e849035d8dc5 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -30,8 +30,8 @@
> > >    *   creation to have a "primed golden context", i.e. a context image that
> > >    *   already contains the changes needed to all the registers.
> > >    *
> > > - *   Context workarounds should be implemented in the *_ctx_workarounds_init()
> > > - *   variants respective to the targeted platforms.
> > > + *   Context workarounds should be implemented in the
> > > + *   ``*_ctx_workarounds_init()`` variants respective to the targeted platforms.
> > >    *
> > >    * - Engine workarounds: the list of these WAs is applied whenever the specific
> > >    *   engine is reset. It's also possible that a set of engine classes share a
> > > @@ -46,16 +46,16 @@
> > >    *   ``drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c`` for reference.
> > >    *
> > >    *   Workarounds for registers specific to RCS and CCS should be implemented in
> > > - *   rcs_engine_wa_init() and ccs_engine_wa_init(), respectively; those for
> > > - *   registers belonging to BCS, VCS or VECS should be implemented in
> > > - *   xcs_engine_wa_init(). Workarounds for registers not belonging to a specific
> > > - *   engine's MMIO range but that are part of of the common RCS/CCS reset domain
> > > - *   should be implemented in general_render_compute_wa_init().
> > > + *   ``rcs_engine_wa_init()`` and ``ccs_engine_wa_init()``, respectively; those
> > > + *   for registers belonging to BCS, VCS or VECS should be implemented in
> > > + *   ``xcs_engine_wa_init()``. Workarounds for registers not belonging to a
> > > + *   specific engine's MMIO range but that are part of of the common RCS/CCS
> > > + *   reset domain should be implemented in ``general_render_compute_wa_init()``.
> > >    *
> > >    * - GT workarounds: the list of these WAs is applied whenever these registers
> > >    *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.
> > >    *
> > > - *   GT workarounds should be implemented in the *_gt_workarounds_init()
> > > + *   GT workarounds should be implemented in the ``*_gt_workarounds_init()``
> > >    *   variants respective to the targeted platforms.
> > >    *
> > >    * - Register whitelist: some workarounds need to be implemented in userspace,
> > > @@ -64,8 +64,8 @@
> > >    *   this is just a special case of a MMIO workaround (as we write the list of
> > >    *   these to/be-whitelisted registers to some special HW registers).
> > >    *
> > > - *   Register whitelisting should be done in the *_whitelist_build() variants
> > > - *   respective to the targeted platforms.
> > > + *   Register whitelisting should be done in the ``*_whitelist_build()``
> > > + *   variants respective to the targeted platforms.
> > >    *
> > >    * - Workaround batchbuffers: buffers that get executed automatically by the
> > >    *   hardware on every HW context restore. These buffers are created and
> > > -- 
> > > 2.39.0
> > > 
