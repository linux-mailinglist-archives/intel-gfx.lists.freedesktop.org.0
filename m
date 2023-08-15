Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3640977D650
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 00:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DF210E2A2;
	Tue, 15 Aug 2023 22:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4769C10E2A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 22:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692139289; x=1723675289;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ergfrGwYfydpuw6hn5dr33/ThBFHAlUIJs7X0Lyxn6Y=;
 b=GAF1bD1w5DfWQWFHYcgPd0z9LTnnHiQi9qRB0JV7Gs5/RO2saj4fQcLA
 VCE6t1I63mpo6u09GxKEthIQzZvJbsY0FEuVk7V8aUoNKwWzr+s6NAxU0
 sE3ojdd19WIJQedL+722KpXuPZY35VjmKScNIZlUBqJ1Cmnr2qfERTPU5
 ee4xkap2ZovOODlZwMOrOcFiJrr4NKGoo6r2dsjxmSVKbuVSvHDsiiPoE
 7vnxZhP8NjryKv3v18LG8EycpmbzNvxXvJ0IRZLQBl1iB0UgffSnR6Qvi
 hyf9pHNo0gTWQ7vVRpCdKVwOIXO9v9iBPrv2e+8E+QCshevequX3Wqqmk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="357371612"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="357371612"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 15:41:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="803980865"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="803980865"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 15 Aug 2023 15:41:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 15:41:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 15:41:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 15:41:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bs1za2gTpxXOF8NhcrB0UAnaGumx94wz94GkZETcxbOb8cfAxsLyIJLpcg/FyQcifE3wX+Fh7EVS5Cb+50NumDWCJFnpO+b0MfL2p3El5khc3gI3GIjuryg6qOESWt0JxaX2WlDnZv8RdoxhNSjrtp2CziqYntJNMXC0LYoIY6BCsTPBGbByLONky6YOnGEw9y1ImzoG2p/VNaAU7+GZ5nOl6OUDCFAq1BIzk2V8rWYvwuVKoSpNzDNHDAfSsZppE2V356AG4y/leyZAnbXVTZ+EE0+Tgd8GcWMbXyTBCEwFlIQfAN2n31tO0Kr24VlNZqsgYmVL6/Hq05SJ+PbN7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FsE0tNO0SgIcJU1D/uYwpNgVZhBu6KKdnoFtt8Hb5vo=;
 b=m39gg2xIMg/bNizNG2KvjYsSCtJTaIlIuyxp2V5s0+rBQF0lrZ78IMOwSPYubEH74hMYqJXkppRnUspvlryYAn7EdU6tl+h7oYoUiWxpqAet6CylkJDNGZ7MJanp3O9KQtFnISQQqcVxxwVLGK+Szjywk/IDcU0irDEkLH+lY3YP/m8uyag5a3ekMBxGMyw3/eJndovIYbYNrAKo92odBL5H2RpVzTmfZNsvdyHDOp3FnzbSpGdudrQUFF47ntPVuNT7tw9jpkDdVXjJL1xbMemgkswZiJX4bBD36yOt4ATpL8S2aXdpHBnGtWMpStBoSEP5sOcy1N171Ic2HQ2JrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY5PR11MB6308.namprd11.prod.outlook.com (2603:10b6:930:20::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.26; Tue, 15 Aug 2023 22:41:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Tue, 15 Aug 2023
 22:41:25 +0000
Date: Tue, 15 Aug 2023 15:41:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230815224122.GO3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230814150215.873941-1-shekhar.chauhan@intel.com>
 <20230814150454.GJ209733@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230814150454.GJ209733@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR07CA0050.namprd07.prod.outlook.com
 (2603:10b6:a03:60::27) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY5PR11MB6308:EE_
X-MS-Office365-Filtering-Correlation-Id: 67c47491-afcc-4fb7-2679-08db9de0c1c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DBIcoV1kDPR8D1BN442RciPFXxfG4yIV1z9z4HOFlKDC9dD07l6780CJGRQpickH4Nm1QCgaWG1k/N+caKWJ1gr/ACXNWHMSTTEvxKLb/NxUIhGlR/JbSV5LlljyTclbUvlFBS9ISud1/9YQJYHf2/qQqX4PdlDeo937trOI49B4ziB1u5dAeTcGDQKwE6ANePRIANuY3qrqmQ0yKTca5Giof1MMs0Tf44RVJKOyBJ08SoZx2VHsndIV5B6wdiOKUIEUSpURA9cC3tD7h5Gaf0NF7Dj/1h0y1MCudjBqMYXzgIOk5I51j2a22Lyj6KbJ89+8yg9qMOiqR4B3NnLr05XzAMD2PTY8l73iHMcYMaspPZtf66nQ301t845Ajv45rJhBqeoWeBvoUtD57OGpBo17JOAEWix/MqBo7XVnNazAwbUG3OEDO0NsyCeibq3WvjGJAwi6pcYiqshJJLUlcTPYEYHNPek7610blctY1F7oM9xNWCSHtFX5gZPgbwLs3HZgLMIUJR2l5EC9g5TypFSDiYsrC67Ujof216bk00U4W15n8XUiCSiijQ53MWb/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199024)(186009)(1800799009)(66899024)(6666004)(4326008)(66946007)(66556008)(66476007)(86362001)(6512007)(6636002)(33656002)(316002)(2906002)(26005)(6506007)(478600001)(8676002)(6486002)(6862004)(83380400001)(1076003)(82960400001)(5660300002)(38100700002)(41300700001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ehxfaGezD7qDReun0B2eyndFdE2zWj16birxZR+yywV56UXD0fpttL6VkcYJ?=
 =?us-ascii?Q?FPyvQDSHx4/ynOz2uGce/gtyxQWB2a6TB2EqZIQkQgAA7xP5sjvLN87ZZOzY?=
 =?us-ascii?Q?qNFnMt0IVwRkX/j6mgwJNw8MvDDlCfwdKQgOIjd7QxbYTqeyTjusk5hsr+qo?=
 =?us-ascii?Q?OKCrqBnwds8/E9U2PRFUbmsm87u8OTeiyA1ras0SNU4kKFRPilcw6gqTLm43?=
 =?us-ascii?Q?Dr19KW9m3FbFuYPEhkvBmuj/jjNWV16sv+6W1rM1Iuh+A+ICDtkiFtYw6a1R?=
 =?us-ascii?Q?irjo20vv7XYMW1dNiF3q20ogUy/aHx+iwWxy+O1GBfuitAViAvEasjRA+Ugj?=
 =?us-ascii?Q?ZNV+S1Rd39T7Z7xpBQmZXv/AjYEhP9wn+c5MsTgZwrTa6WUwXxQUaqaBMkmP?=
 =?us-ascii?Q?UAO3MmdzMhZj3g3/xnWpqaAd9LTQZpi3K5qzAlzMmHIBkAjIoI27Ce0NuLAD?=
 =?us-ascii?Q?1mjfO+P+l9CA5jfhlXO67LB/EN4RYAGpd1lYTjzGC9QdekgYf4+sjE5SmUbf?=
 =?us-ascii?Q?BjuW4QDEJ7P9kmJvur+Oohs7b/3ZXvD4OIxCwb8xHOWwbv216+cVwQrwMF/8?=
 =?us-ascii?Q?4xZsVhffvh186uOXFcTqvRXm7nSvrzRZcrfb/UxzTkaY6eriNhHTqIbOJ/wt?=
 =?us-ascii?Q?LdIugonL1fgsvCIpqJecFdjp3U9q01+w1EZ/4ZdGjSG6ZeP/7/vX39ApV1N+?=
 =?us-ascii?Q?BW7fUIrESWdaNNTjFD1ncY8LVHVXDN2W6/uC7aEoMh7f0rdsI3Phhko9Z6gO?=
 =?us-ascii?Q?SK+RBz3SZRTjU8bjxoCP3VRRDKmh3SI9aN8+N9Y2/tFw5ZlVwx+PdhiqH3iq?=
 =?us-ascii?Q?UDyD4sv/nXSe4lZa7E7EqjmFBHDBYGucAYzlvMqFg6cha2lL38EVhvlGulvI?=
 =?us-ascii?Q?FGpBKd2RtqbWeHyixnyP/Wq6qoEkDIme1UHrc/COLDmVqYfIkOoJGP7AUs5Q?=
 =?us-ascii?Q?m+EtyTV5VBpOYqMQDIEPqvHHaqibpvq96fhyo00W+MrdYuDiuccvkVKjHZsG?=
 =?us-ascii?Q?Y7dHM8sZho82/rU+8+1e6c8IYgsxwQLFPmRp4YPA4hk0jYAMdqKiOw9tpMZd?=
 =?us-ascii?Q?4K66BJtd3ehupyxyB0WcE78lRp08koyLn8JGa/KJ7/y3N8wlcAqkcpXhuJm1?=
 =?us-ascii?Q?6U9vsPtnU3zwss1RnRrXhUMcTa0ksfO9064QerZq81sIrYd9zdUR+t3NPBk4?=
 =?us-ascii?Q?C2J8flMUGguZdrh6Fsw4qdIlWLbL7kxPE+fKaVAlsAGrT3ZBHBtw3uQOsAjY?=
 =?us-ascii?Q?KuxtJrVFEZOfq69MkA2uaxJT9k2QpQKjt1LHH3XXG1h1WHThpHmc2vmKabhQ?=
 =?us-ascii?Q?Eu2vxBSvgwI1AiodHitqAdh/5Gdnf6IoOoQxeuwBSLHxSC0ykJmMCLQxjHza?=
 =?us-ascii?Q?nxO6lWqhKIlPHmB5OowbU/Uc1Y+Us4gKVBq7aYRlNmAJfbpHJJgwdEBhD90U?=
 =?us-ascii?Q?279OKAD0IHevx0ibo8TpMD24224jVhMCxolw4/MBRvKZJs5DBVIhW9DH9gHK?=
 =?us-ascii?Q?2WtcjKsK9MZEDJKEhKZVFizuNrloKUwOEYix+XODW7IJxkYF9qalmNpZWRUY?=
 =?us-ascii?Q?VWMHkAeT3w702yDVkMMeE+vPABt2R40WA8I2MghFD8syaNGC2CZkdR4Tq9Xe?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67c47491-afcc-4fb7-2679-08db9de0c1c0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2023 22:41:25.3402 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uXejJMVCzoMRg1vjRxIngRE0DMp3daQmRySgFNC/30fKtck99C+fISfKBCu/eY++W2suHv1mgNi+aUxuNcYK6nIL5em9yiEiYvCbZp0oTf4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6308
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Remove Wa_15010599737
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

On Mon, Aug 14, 2023 at 08:04:54AM -0700, Matt Roper wrote:
> On Mon, Aug 14, 2023 at 08:32:15PM +0530, Shekhar Chauhan wrote:
> > Since this Wa is specific to DirectX, this is not required on Linux.
> > 
> > Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> Too bad the hardware teams didn't do a better job of documenting this so
> that we would have known earlier.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
> 
> Matt
> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 ---
> >  2 files changed, 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 718cb2c80f79..15b82d37486b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -412,9 +412,6 @@
> >  
> >  #define XEHP_CULLBIT1				MCR_REG(0x6100)
> >  
> > -#define CHICKEN_RASTER_1			MCR_REG(0x6204)
> > -#define   DIS_SF_ROUND_NEAREST_EVEN		REG_BIT(8)
> > -
> >  #define CHICKEN_RASTER_2			MCR_REG(0x6208)
> >  #define   TBIMR_FAST_CLIP			REG_BIT(5)
> >  
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 01807a7dd2c1..5aa0d3f23c6b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -805,9 +805,6 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> >  		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> >  
> > -	/* Wa_15010599737:dg2 */
> > -	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> > -
> >  	/* Wa_18019271663:dg2 */
> >  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> >  }
> > -- 
> > 2.34.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
