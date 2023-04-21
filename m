Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2EB6EADB9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 17:09:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5246410EE36;
	Fri, 21 Apr 2023 15:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA36210EE36
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 15:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682089735; x=1713625735;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=l4QgKScyKqFHoA59QYE6yEHwV//Ye1C9LkCQij2v06I=;
 b=fqAcXZNrYWD4hwu3CCewFMmCs+u8OclDcXut0+tw+nJkJAJasCO2SZHo
 E0GzRKjvAj9f0Cvdq0lTvTdhhW+V+AIm4iHkR1uQ7KXBeD7+xZTF7u0RK
 Tw/bANIx9Jzz2WKr3X9tqxIUQeLjtjDylhNqY3oF+qlNOXZ4kfbHh21zp
 XKjzRmGq13VXOX2T3YZQjEsrCdY6ONlL2yDVpOhr8mwWNBPrb8JIoTbyi
 Wo3+HfxG1Vzw9aS+fzbN1wIItS5aF+hX0w57hg95TORNvtoylZUd2rsu7
 XBfQR//g2MJH66i3CjY+/g2Vhaz4xx3y0UbU5PtTgrdWnEAU9oC0SKgqo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="344767939"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344767939"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 08:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="669756766"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="669756766"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2023 08:08:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 08:08:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 08:08:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 08:08:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 08:08:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eziYqF1Z0L9dH1CBauTBtR1tWxEP2CzgmUAGm30wSG4oiN4Yl6OdR4lVeOARBtodDRKa8BJVTuNyCFwIBIbVfBmu+RYxoQN2CDUk9n9tlqVd+TFkvd7wicdZnqsw3qtkM8UUtAirAJXvxlnrU853Vzldz5Zwm6juDStY8e0rZNOkVKwVlYJbq7dFvDne/haTIwyM3CnXnZ2oOhFtGIeWBviHjk8L6tot5jOPWnu0tpStbvkYAfc5u9LAVb8wPGMczuFHOhpku5OaZ/VRu6LnTSPSBtLs96YKVgF8E7s8fGJsnKMQlFOtbyI1qAZGpGc8bw0uUHA9naNsEvQuolDmpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N3QUU89NnOyPNkakpooHgakzVJijAGNWDoX5Xo0rz4I=;
 b=SuyBFTpvu6nPNLdx5hS0d09kgCRf1INPu1lfmIHCGl9+DWQsRuJIY3pPZDpYeutbNfwS48KmBydOu6Iunv8LR2zhz53YhBUe5BSwVYq+us5mLzpqArOweLYsUtnLkZMuh0dIN12VCQyJh7sH0qV1EQJ0qLeoiioDwt+NTmVxAo7LfXW0UXEWNY5jmVPumtpcEGUazeCFhBczcaiCtwyOB2z5pTre4D8fSyvz2Se/sOrOMbDuBBMKl4BRL59vCuzLMKVraQuMNPZt/rNgdXhCPBCq43GuMU7ifXeQzAOcst7j96wdmSJkgkww31yJxxDQphcPYzp8r02E8SesNWwY2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB7831.namprd11.prod.outlook.com (2603:10b6:8:de::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.21; Fri, 21 Apr 2023 15:08:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%8]) with mapi id 15.20.6298.030; Fri, 21 Apr 2023
 15:08:52 +0000
Date: Fri, 21 Apr 2023 08:08:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20230421150849.GL4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
 <20230418220446.2205509-4-radhakrishna.sripada@intel.com>
 <ZEBf0SWcSfDKolpl@msatwood-mobl>
 <20230421150547.GK4085390@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230421150547.GK4085390@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR13CA0117.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB7831:EE_
X-MS-Office365-Filtering-Correlation-Id: e34ba456-9d69-4d62-2fd9-08db427a5140
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x2uXlNlbsO3yHRzV3NMwz9xgiYw45yrnAafhQ5b8Wsawo4rJvOjtJRT2fykCEGeTy8vM8j6RM+zGFSRYODVDWZRnhBmCBSYMfd/o7nbSgY0cXp3lGCuDBlgi9altpa2ADgvamVsYD4SynLgTOLdQkw3oZnyFMfmWV0zxVGlfkCxleflYtiTf9a2PbiUst0diL7euAPx3xCGM+Xsgk/glrdy2koSkGwK7rQwLLpw3VfKp1j/tiJbJgc42187TQt3Xm91Bz31y9uZlz1f8uKDK20IClg5V0C2unMbXM3Y/qDsLdJUs5rXG53BFsggpBGfDFPGw0r+SH/2Mza80rAgo8c486R9Mz1T/yOXpYgXOZDywEnw+wJpM3sNFyQQ3hZU5zQGoqpFOgIXdIE+3hoaQFlfQiJRFuJpfL7jeDiekbVYlatq2/bj/qjht6HHoB7juymjzvGqvOY+bxIDxEED8aiRtBITbaX6wP+UOXkZQAlXC9dHIrsmD7D01mTXNXkIPO3qEa4TzdPGkQKb+bDxzoTzfivrUoH+D8xeImnOwSalQtNuPwLDwwqoIklr/BlwC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(136003)(376002)(39860400002)(451199021)(2906002)(82960400001)(86362001)(66476007)(66556008)(66946007)(4326008)(33656002)(38100700002)(316002)(6486002)(6666004)(186003)(8676002)(8936002)(6862004)(26005)(1076003)(6506007)(478600001)(6512007)(6636002)(5660300002)(41300700001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gnIdXZ2jln7R/M+OneoB5FzN4C9t+zbA5sTlQ6mjkULX7a/gHojRcEkA6PwT?=
 =?us-ascii?Q?oh4s14bxn4H7ZAi0MSoQZmsWpc6QFRJj+h0y1rTyzDs699kiRU7/drN5/GBl?=
 =?us-ascii?Q?i4QG7b4ABpbzLpKgWLBdxC30pGW3E8vANJSmSs5NnVgIb3KtkSMK24eXjU4Z?=
 =?us-ascii?Q?GtN/vMlturen2GZTj2mYWg9VSvy4bOft1jF03WdqlO9ECpUaYVfUFULK+f+N?=
 =?us-ascii?Q?iIDQGI41u32QlbHuL/1LA2rR/TrOc975fcCUApFUhNTCd434wcd1Br0kszXs?=
 =?us-ascii?Q?Mbm1AVjfa8avYNf1AuqJM3ZjB3MXSIzbT7Xmg5BAMS/CBEyZi/mNNjdN/hOj?=
 =?us-ascii?Q?F7GZg2BQsVtbUXCRa1Rg/wHnriETd/eY10ysSMUqbG+kMwnXXKe5fCIX/Ana?=
 =?us-ascii?Q?nOINQ5oSZ305TEjdT1ZdzZzlH3tGCQfURFnKeJGfCVkR21LAKMOURAExxHga?=
 =?us-ascii?Q?N+IpO+4r4euSVMrZw39sKZdtsUvy4se2JJ4jdtqjaURsn8aGOpVwdYM55ECs?=
 =?us-ascii?Q?w9RTtb1gjsI/w8IQXc1jyugfqC9RyqTigdPs+tZBsUPMmB4NFJYlJO/B+7FH?=
 =?us-ascii?Q?Huz/21liB4DorRb2p01Wp7sllTGwmHXNVSOwC7Z6z5YaV25vnJ6IEQYmLQot?=
 =?us-ascii?Q?cRDZsoUIL9qWvnMIlOl96zHPtmSx3pDZ/ZoUWOyowkB34A1NVacB/fCLmwhK?=
 =?us-ascii?Q?Ns4j7el3mjzg1W5guIV3zXiIu2tpTE9XjFYFQCdv3J0k7OcHGX1Pwe99Vw4l?=
 =?us-ascii?Q?L4ietfpaobqSk07r4btEv1Jy5xnSGcpovyUFKlBHAXgSbk7HdnCJeT9Ed4hm?=
 =?us-ascii?Q?BC6zNEOTrmVNlDgQbZ/Vwfw7Jw8bdcfLV45VCIRfcwTkOV6kCedyWZXgPoM8?=
 =?us-ascii?Q?9KvnDdRdgsj8XZjJN8NSjNWXBKK6gDBxCGwyu0HPVqEuaAXf4ngAxutEfAif?=
 =?us-ascii?Q?wuRQ5OiuC21IO57SCHqJ6rt8zbMtRmUmzmIVzE4I67diEOZidmi96FPU5FQw?=
 =?us-ascii?Q?YW7hSffOL85wZL3Nd1Ly1l2CGPUlWpLg+CgmnCQ9/q65j4jCcaMsySBdv360?=
 =?us-ascii?Q?eSUUqjyRHL0Y/Tb2ndHhVCiR81BaTLSUAQcMYpwUNE3leNDa5Pnijjbkoazw?=
 =?us-ascii?Q?aPTOhg/0SnrcSskKQd9Cb/7Kdw3ebXwVMkPFbXSYycOeamWP2ofQkomgSjB/?=
 =?us-ascii?Q?vJPWBf3XzbrzDaz/G3G9xrPNcamejDqB/9ElxzWhwALEacpdbFf0Ng5BH63T?=
 =?us-ascii?Q?M8GVJGfIeoN3btjgjpenNp4ZhRPnzXDzRBouIzQaS5HDDXucmWIyMhST9KyH?=
 =?us-ascii?Q?rQZ+8V42+ASzQxUu68wdeWaD6s2srXgchdZsZKKsmBB44DXJhlpxhoWYJAeT?=
 =?us-ascii?Q?QpIS0VQpSeizfk4TUKk57xIExvWWBXLQ5n4f0S97nDgWOZegCbHiIIYmqR6v?=
 =?us-ascii?Q?3k5CkOVgQ/znbrX0Qg17VJRfDn8zKyAxH0caV3ONOeeklkC+mkrf+1Lfp3g3?=
 =?us-ascii?Q?OmdcLrrDN4J4zWH/2gzyon6TRx04eCmZvvWQGeEFldjIa/KB09WOWnsXDXpO?=
 =?us-ascii?Q?uIqrSBgR3YuJO/kuc94F2LV0cm0P9vZO0mo+CGckaZH9+MQkOAYVJ4Yeuhkh?=
 =?us-ascii?Q?Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e34ba456-9d69-4d62-2fd9-08db427a5140
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 15:08:52.2037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VH2HUrvd/Lp5yh6VKOZ5anYz8sCf8R1gRbc4oXoE8aR63heLZ5uWRuVhh73VeCl6+52WSzXuNv6Rwy2NGJpB2UCPSFUk1NjqE4HLFUhbOzk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7831
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Extend Wa_22011802037
 to MTL A-step
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

On Fri, Apr 21, 2023 at 08:05:50AM -0700, Matt Roper wrote:
> On Wed, Apr 19, 2023 at 02:40:33PM -0700, Matt Atwood wrote:
> > On Tue, Apr 18, 2023 at 03:04:45PM -0700, Radhakrishna Sripada wrote:
> > > From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> > > 
> > > Wa_22011802037 was being applied to all graphics_ver 11 & 12. This patch
> > > updates the if statement to apply the W/A to right platforms and extends
> > > it to MTL-M:A step.
> > > 
> > Bspec: 53509 
> > > v1.1: Fix checkpatch warning.
> > > v2: Change the check to reflect the wa at other palces(Lucas)
> > s/palces/places.
> > > 
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > With that.
> > Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> > > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> It doesn't look like this patch is complete?  It's only changing one
> condition for Wa_22011802037, even though there are several in the code.
> From a quick grep, you're still missing updates for at least
> guc_ctl_wa_flags, execlists_reset_prepare, and __intel_engine_stop_cs.

Actually, scratch that.  Those other spots already have a MTL clause as
part of the condition.  But in that case it means the commit message
here is inaccurate; you're not extending this workaround to MTL a-step
because that already happened on a previous patch.  You're just
providing a fix for an incomplete implementation that happened earlier.
The commit message should be explaining that.

> 
> Since this workaround is a complicated one that touches so many areas of
> the code, and has a complex platform list, it's probably time to factor
> the condition out into a needs_wa_22011802037() helper or something.

I still suggest doing this, especially since we've clearly screwed up
the handling of this workaround at least once already.


Matt

> 
> 
> Matt
> 
> > > ---
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++------
> > >  1 file changed, 6 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 88e881b100cf..ee3e8352637f 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -1629,16 +1629,16 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
> > >  
> > >  static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> > >  {
> > > -	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
> > > -		return;
> > > -
> > > -	intel_engine_stop_cs(engine);
> > > -
> > >  	/*
> > >  	 * Wa_22011802037: In addition to stopping the cs, we need
> > >  	 * to wait for any pending mi force wakeups
> > >  	 */
> > > -	intel_engine_wait_for_pending_mi_fw(engine);
> > > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > > +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> > > +	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
> > > +		intel_engine_stop_cs(engine);
> > > +		intel_engine_wait_for_pending_mi_fw(engine);
> > > +	}
> > >  }
> > >  
> > >  static void guc_reset_nop(struct intel_engine_cs *engine)
> > > -- 
> > > 2.34.1
> > > 
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
