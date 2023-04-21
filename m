Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E906EADB1
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 17:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0162D10EE5E;
	Fri, 21 Apr 2023 15:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48F2410EE53
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 15:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682089575; x=1713625575;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uGGrlUFqlRgstz/7z3oQO861o/TLbNOa2MwEhLfIVJ8=;
 b=YntxLd0dOudxAmoYapBMuiJGD5nuziuwAFj0xjWgvgdGovndThIVPiU0
 kSU3fUJPxLyiv3gpxsnnpp8dEsE/54Zymp39+4zTji6PulijlZUxZBAt8
 Ni2iSfFLKlsVT3M1k4BjLkKpj+9sSzuTGOF8Wb+j2bkU6l0nUy52BcTKO
 4dYMLFVeddWnjh3dMDMYS/cjOW4U2iWp0wpyf/G6vqzWL5olLtKzERebJ
 HdUalxRqZLq6BUKARPolB1uNd2C1A5xNIlBVDmKENoLLlrpoWrzKpX2h6
 3DtgVrZFSNZkI4kHEms5CB+rcdLnqV7TuERR3jjYhcr00sbOg5xMTMM/c A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="344766678"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344766678"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 08:05:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="669754364"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="669754364"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 21 Apr 2023 08:05:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 08:05:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 08:05:54 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 08:05:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dIFvqNw9IQp5OCHJro512t83DHsPBfpzT9lRUTVrXItwMWybPKBccteDLM72s3rntM7eBUaAWGTVtlTrfaCOOj3V5k54YgDPUKSLjCyGRtQyzLjTDpwOTWBXlKhA+jmUiJJadQreZxrx7y6J5cUoVAAXTuQn/aBiPJeLywsTkw+6I9HA4wpgTJBgp6mAemd1x5PuOxg8gSK42VXluqo9I7hdWUZGVhrtPlXSHBofyKeH6JV681XaryTMzWXuISMRf1dGqxlf7SIceaJ6J8aY0It1h9K/rlpjGHv7famy2DRm4t8QNPX3yxUFGsY+vjZjwu4HM8ZrgG56QaZ9MxLIOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hn81yOPw8m63Gxl6jdX30sSMSRjkkxBOynY5olBJPrE=;
 b=eJn2y174IL875Zbs3stDgAZj73v59hUncshJuqJpm42vnq1fNKSTvpzEdCf7wa6QfgbCMQnO6HQjqtsgKgB5fUanchAx9t0egZXmoOWRkPZvwkTAsJHJY8BP5/42RiRPmKoRACgx6dL3msZ/8HSuJhQw4B1iWBI9BKAO0yYePnC4HagWs+8zHVs5Amgxez2Ma6CFY8wk66OZzIrF/0F/ExDCDoJtL6NomvH5eySVdNrYiPEyw0a3kJ6ZByoTssfGIuogBda8WVENhm9OMBWJIW/8eu/E3J27Jl4GlaRA2C/a0sIi3SP41vW15P/Pz+HGIKFmaprFzwhXu8UtZ2bE9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN2PR11MB4632.namprd11.prod.outlook.com (2603:10b6:208:24f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 15:05:51 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%8]) with mapi id 15.20.6298.030; Fri, 21 Apr 2023
 15:05:50 +0000
Date: Fri, 21 Apr 2023 08:05:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20230421150547.GK4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
 <20230418220446.2205509-4-radhakrishna.sripada@intel.com>
 <ZEBf0SWcSfDKolpl@msatwood-mobl>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZEBf0SWcSfDKolpl@msatwood-mobl>
X-ClientProxiedBy: BY3PR05CA0003.namprd05.prod.outlook.com
 (2603:10b6:a03:254::8) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN2PR11MB4632:EE_
X-MS-Office365-Filtering-Correlation-Id: 22e26d37-e070-4ef9-9965-08db4279e4b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eUu/fWktZGU73GllolhGVpcMs8p4XQYaAySEUtXvxiT5lzGhLv7qRhO5jYMMCt6LZIIMgleZcDpuOD0h4+b9mZ3i2jeDtkNsGFu3pd4+xc0Jz71LC84XN9N+oao+MWwQAauGpj45Bz05Kz13JRCrxFIO8ZyRYmH9wTIPw8TGjPO0OMt8s9yRkKnvAZq9ioDGG0udC4zwgzkpNcUHwJoWZOl4IQAjdH8QW+dTQ+Kz68IAkvvwV+bZjq7v4nXQLoOqPGc3Ug4TlxZ7VjsG6wv7IzwnMaaez8TDOmMvS2nLZ8LkliUMZ1SQi+c+5w2MxJ1uy/fmI14WrIY2KzikdT1G2AHpq2+mwKJFfwSsqW/OzMidGwO7Jle1fHEjlkR0ius/sDpfExFQuHsbPttvxOuBkGwQwkq0jEHMdVw5HGJhAi5R9mnAXkj6cwWXscGnpG3JmV8AdWnpqWU3Gz/4iWOQCqyYWWAvneyYCPUxMCtwHZOG/Wvz69CuPkydQTVDdeLGBhHo7fP5oleJQylQ915WNkoFdDuQhkvHlUEK0rnCBHuVPDr2jUxEuY/IMeQ1Slsd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199021)(6636002)(478600001)(83380400001)(6486002)(26005)(6506007)(6512007)(1076003)(6666004)(66946007)(316002)(82960400001)(66476007)(66556008)(4326008)(186003)(5660300002)(41300700001)(38100700002)(8676002)(6862004)(2906002)(8936002)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j9mZXaOtc19I/AGh6oqqxhfm+8x9OOf1sCuJPu/Gv5mXM2zOcLHyLMJFw6yS?=
 =?us-ascii?Q?+pe2qVHZ3Z/A4uNAi2abXQ8LOSVEj9czi4wIuPxZq9d5L1n9BNKBUlxaoZeE?=
 =?us-ascii?Q?jVjDS+EyBT08mffgRPSe9F/71GyrCNFEtrBI3ww6lJxn2iTHz/84+ntJJVCc?=
 =?us-ascii?Q?L4QWDLcNNfe+QypSDIh97UU+f9zg4QztwMhF88m+qQmpByAhi1zffy1H+RLV?=
 =?us-ascii?Q?lLCl/oauqkdfcG+15T+zBnplU6S+Vnv/In+dlLZqbaJGX8DsiOMMahkkBvVi?=
 =?us-ascii?Q?31oxyz4Xgh+bdj3haLc55am4AtfwnirxEWDRUk3S2iQJAG7fwrwnt12zTzgH?=
 =?us-ascii?Q?IdJdCH9Pdnlo2Luv3kM0lxFNIIDLSJb/6L1q4ZTUtmc6M59n7uhUfA/Vzh1W?=
 =?us-ascii?Q?scS9dg2pY6P67uRuxsaIFyvbQzvD+UpHvzbjoHT+91tqt51hLz8hpvsScBzZ?=
 =?us-ascii?Q?eLQxhviI9rxohVuiiKbXK7PUMG72P7mJardNRzqs5ZdnuwLO2AeeYkOIxkqe?=
 =?us-ascii?Q?3nP1EasvBArG6GmcswKkWkc0zBNO/Tq4/uBo7DpXZwOOM/zyTQqJ7ezSpIS7?=
 =?us-ascii?Q?kk4hglT0RIbiduQIDK+pM8xwsToYIm3Q/oNHFZbPeepk+RKVk6rj96p8tgaX?=
 =?us-ascii?Q?t4s9l+aoCD9qL+xCNCS9sxXrhv9TMo4r6V30Y6WVcU/7iCobwIUh4ep/4k7U?=
 =?us-ascii?Q?bsqH+gjMsD9Tjfc811ZsMsHkIt1VTrMxI0m9wZeiaCNxO/XeK2T81tnhL0b7?=
 =?us-ascii?Q?SOXxAe5Wmh6tcwTikP/wXfeSsJm217W9QuFNSmXQ0049BfY5DNjgLCtJvpGA?=
 =?us-ascii?Q?o172S2hlWmbsmNdbiJ700sAEGkkM3x1wJD/Cj74sbAPYgVcgKCD6Tu9gilan?=
 =?us-ascii?Q?by2OW0/75iEa/rw/5GkmOwVvogukWyiYXYJA9TBvHBDQa2/RXLraNZCwz2fO?=
 =?us-ascii?Q?5k3wJlIkZsbVJgHUVY+BUSRhwf09VdrMvFGLruCMvPyd5qxxcsqRZyUE1bZ8?=
 =?us-ascii?Q?+GbnTLyI6MgHT54VvuL4OYtWX1Clb8/Y8OO2Xo23UVpp91LVxLF7/ycnDvpL?=
 =?us-ascii?Q?EmJ291B/piJNA3PmRt86WLLF5qD6uTAYid6cdwN6YkXYHVzgNGS9Y4Dfgfv5?=
 =?us-ascii?Q?VTF71mhmiwfQObuvluyxdDPx8OSO48RULkIoLIWPZ7G4YK8UTt3WL+Vc0E3J?=
 =?us-ascii?Q?9JygpiI3vFjWw6yKGOVnrDfLEinFxNOPH8Wz7DH0tV6KN68hFhuwT+fRSBKc?=
 =?us-ascii?Q?T0A4DXxHht1CpC73sGiA3yfEKZBE2kOQKVQEkOJKgQZDhcOIMbyXvET/4+ro?=
 =?us-ascii?Q?H/9HnyPjckUlX2e5y+d8ZmwzZcHWB57yYk37kth8XtDMgLYkptJ16jcpIaWT?=
 =?us-ascii?Q?yeGkMzoEIFPtXj2fViEKXF1YU9KJNaFf2bFcfp850OoHSXgMj7gCpwkSlTak?=
 =?us-ascii?Q?f+wwb04myGooMimo2cmhrs0NY3D5RUWNDD1rivijs0j/wQOz/y0+R5XXgfVP?=
 =?us-ascii?Q?pkUZrF44aCPDBuvn+h3hWqyrR1WUN+O1X5U93DLOIunf+Zoeq3inTCnfBAuL?=
 =?us-ascii?Q?WDGnT5PHkpPdiKA7AzHiBZs8XMExzxHkUu2YREDowHxWjsKH3JGFOQbQ8aAD?=
 =?us-ascii?Q?UA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e26d37-e070-4ef9-9965-08db4279e4b9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 15:05:50.6355 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WoaEoKHOmGWUNKqvamnnhYlSjPEaDSG/eJU5xPlgZYU2DyW7/1bxdLClQ3oe4OKT1c9b3oQcTTgWBccmtts77qP6XFSQGbWagoVu+YW0oR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4632
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

On Wed, Apr 19, 2023 at 02:40:33PM -0700, Matt Atwood wrote:
> On Tue, Apr 18, 2023 at 03:04:45PM -0700, Radhakrishna Sripada wrote:
> > From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> > 
> > Wa_22011802037 was being applied to all graphics_ver 11 & 12. This patch
> > updates the if statement to apply the W/A to right platforms and extends
> > it to MTL-M:A step.
> > 
> Bspec: 53509 
> > v1.1: Fix checkpatch warning.
> > v2: Change the check to reflect the wa at other palces(Lucas)
> s/palces/places.
> > 
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> With that.
> Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

It doesn't look like this patch is complete?  It's only changing one
condition for Wa_22011802037, even though there are several in the code.
From a quick grep, you're still missing updates for at least
guc_ctl_wa_flags, execlists_reset_prepare, and __intel_engine_stop_cs.

Since this workaround is a complicated one that touches so many areas of
the code, and has a complex platform list, it's probably time to factor
the condition out into a needs_wa_22011802037() helper or something.


Matt

> > ---
> >  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 88e881b100cf..ee3e8352637f 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -1629,16 +1629,16 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
> >  
> >  static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> >  {
> > -	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
> > -		return;
> > -
> > -	intel_engine_stop_cs(engine);
> > -
> >  	/*
> >  	 * Wa_22011802037: In addition to stopping the cs, we need
> >  	 * to wait for any pending mi force wakeups
> >  	 */
> > -	intel_engine_wait_for_pending_mi_fw(engine);
> > +	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +	    (GRAPHICS_VER(engine->i915) >= 11 &&
> > +	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
> > +		intel_engine_stop_cs(engine);
> > +		intel_engine_wait_for_pending_mi_fw(engine);
> > +	}
> >  }
> >  
> >  static void guc_reset_nop(struct intel_engine_cs *engine)
> > -- 
> > 2.34.1
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
