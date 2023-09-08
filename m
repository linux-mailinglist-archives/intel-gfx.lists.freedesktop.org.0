Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 594697992DD
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 01:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60AA110E218;
	Fri,  8 Sep 2023 23:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 104A310E0C0;
 Fri,  8 Sep 2023 23:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694216290; x=1725752290;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fiuVbT/bPfjnSD99kQT91KOCf6uveHqkwkopcb1D6UU=;
 b=I4Kh8409PRJlNFxVwtA9lE3lDNQjP6V+gmzjmsY69obZODOj9TILaaAg
 IWRs1+XdsAJLzJ1I87Ku5NSijtNVLVxnbhRIu6lTm7JYAQ/Tf60afMWhf
 q8WhH5zyJFxyqmLdu2D/mKuiaxPOESGYFmRLn4uSMdY8PCrFb6v5rtDEo
 WeJs4wSzSaGom6J0Mt4XfIQJQq+yEr7wWt9eS3dH73OIYOoVBBzeVVqB9
 ih+uRd702ruHylb2IoweKrmBB1sqJSBNtSNdzSaXZt0PO6umTACXuU3X/
 LOeJrju61zYPYloKLLWsbNzjy8ssO1aSy/ossVeYjXqH7ReiZLJEsUk1T A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="444203078"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="444203078"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 16:38:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832828828"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832828828"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 16:38:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 16:38:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 16:38:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 16:38:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 16:38:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HM7eDbSK0MS1LNHRP4DcbNKuJL7kqB7I2PaPwtqhP70uPjP6RXaSNKWoUufrZ9Nc8XGpUHrAaoJTZjPkShhhyb3s+JEUOSIP15CTB3eKo24RJVYkoaCkElG3jOQ+lpO9h9vbCAapZzKX2VbkkODmreSqRqtFcuM9GSdz6rpC6SDKfu6dOoxosAHsN/sJf+CU9JB16oVBBN66H0oI3Xc6r8IgKqqTEEGEAI5OC/ZI+EI/za1DMwQqga8KPNV7WmECivew6SjsGub5K6o5wCxYzIGVH8UCZwdLvrMll4yvOfdL3fC90nBOk0uNC93pN/M+Yf0IArYSyZlxhsr10qd1eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jy12AK9uo7RHzr3W17hw4VIiQhmQrbJ+oZ0wCZVb7T8=;
 b=A+HcZfukQrOEzb5mXDVD2SEg3WnnCiW/GsdlFd9vaM4pfgdRdon/E789gwNKKFLVKZclZzHhtBQx+1Put6qIuGyQ1YceseRylnMAFCGYQufWdGE3oqQVYvalVHFkYMVIplaPWfi6EbhHcKSiy4uSTepxK/WvG1TmHZmYJb1MiW+Gdh+beS/p5buxIjb4aP0NKr/PYAQhnoK4s9L8Z6svaxK0LI7XUWh5XhKuA/yrSILVHGBQKAehgQxS+AUeuSCqVxqj6KWurphFsDqFHmm2kIMYW8O00ixA63nrT8uiYICN/iJcyq8ptCWWe7BStmBcRMiFhSujlDO//NbTXsqp3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB8373.namprd11.prod.outlook.com (2603:10b6:806:38d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 23:38:00 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 23:38:00 +0000
Date: Fri, 8 Sep 2023 16:37:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230908233756.GA2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-3-lucas.demarchi@intel.com>
 <20230907161044.GJ2706891@mdroper-desk1.amr.corp.intel.com>
 <dhhwbarulygdoq3vky6zhq6jzx3nkdlx6hunj57jyn32fn2y6c@y7l4x43azgjm>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <dhhwbarulygdoq3vky6zhq6jzx3nkdlx6hunj57jyn32fn2y6c@y7l4x43azgjm>
X-ClientProxiedBy: BYAPR07CA0089.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::30) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB8373:EE_
X-MS-Office365-Filtering-Correlation-Id: f7ae7105-d161-405c-78ba-08dbb0c4a2e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GVWCK5A363TVHjCs8i5lgvbNF4+9Srwqpwy4zXK4GozxrYmxSqUxseHDObb0ItUEvmRlBOeR8EfF0l0BfnLvpuy+96zHAgPM01mz3uFItDlZLQdIDAysB8D5LHAgNbXoc2rW5QAalNQrHrR1rGZoLah+3DV00qC2pmkvQ1O/KJWOEfyxuTO2I9OizzBeY4wZlxcd7G99pwRG5zxKq9sEspJXKztZFgLH8Ek2ilJ7C7NlMmbFj0Apajj9wksMmKKGikoI9x3y9eKzRx8XVexzX2OPyMB3OTzYK6PgWq54HcXeI0V/N9ryyRfxtB04tgMUv3BYK9YQtbPVdYbBJI7gitGtWMCzcPA3BHeYpeC2w+wfX6MFm1pVNowokkWnNqNxOiuUK7Q1kq/Q1gqomFzjgYQQ1vhALZdaDjvEPsURq5OzIlIczMN3y//tmB7fF2r7lvvpC3uQJnQGqnnw06079qexsFb4J0r/mhR9DcvEDJdA5x8jymkVAm+2egr55vAhjkUqvA+jdgh8VM4hbZV0Cy0eiebeESILDlo214jgDGJDP4uIPsQWVYBF720ss8/2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(396003)(366004)(136003)(1800799009)(451199024)(186009)(82960400001)(38100700002)(86362001)(33656002)(2906002)(478600001)(6666004)(6512007)(450100002)(6862004)(6506007)(4326008)(8676002)(8936002)(66556008)(5660300002)(6636002)(316002)(66946007)(66476007)(41300700001)(6486002)(83380400001)(26005)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bO7dtCt9aSEnhucp2CB+i+GnR0hip+fQGFrY7x/iE0TiYEYG7h3XnFaG/kBe?=
 =?us-ascii?Q?SA4L6Ai6H6cN9namOYI74QIZXHzTXYcf4VKBEI12HV9UgktF12UQ2uxQBd73?=
 =?us-ascii?Q?pYUi/MMXMJTTGQiHacZ5VQ+Ln8pnHHeid4eenNG6/IKWC+v/R6TaNYswxhGa?=
 =?us-ascii?Q?YwLSL/Sg20tvML1ekQhMtGINEoes/MHaXs2zyVuzKyBA6bzn7lIL7QB0F4bS?=
 =?us-ascii?Q?wVfDWpPD83TSVrKQ0lCiSt1VkH7Y6/NBqrpovfEA8AszCa7CVpPElYnDTGaB?=
 =?us-ascii?Q?1+ztVEm++yOmdwturJ+DGo7iIUYpdkVxVov+khGgY7CV/yqhXecCcbs1p7gb?=
 =?us-ascii?Q?jco21w0KczlTWKUbEW7IAip1rs3ETra2HZvr+SBZWjsCN8guWdj973sA7FW5?=
 =?us-ascii?Q?6+1YzV6Kt35tkh09hj/h6fQb0S8FO44ceEo1xCfc5LLGQB1qAdu1BTyJMYbG?=
 =?us-ascii?Q?i6u9Fab66uv92UgycLeeSQ0fz8GzC6l5PRg/9xHQ74NRkHghfmrfuCzXb6c1?=
 =?us-ascii?Q?F0wUL047X/mxjNkzozMCsAs8UFqpK3tYmu4kMHmZQ+sMYiNMrre4S4Qvjh8o?=
 =?us-ascii?Q?yY5DRiXr5DoXLKNTrIfWQGhgkxCo0FMcEEVID8DzDvTtVX1w8lu6+SUzOR5V?=
 =?us-ascii?Q?sByQuHPfpuw1JRjD4HbIaC0oSTRhatAffHvPLYMtaDGqxIxEqOz3OFtxo7FR?=
 =?us-ascii?Q?yS0AlwMfiwxp4DO4x31pav94Kj4v3YPUI3W5TD+5o5tkhFmzJp0yMhYhe31A?=
 =?us-ascii?Q?FPqQIOKFmPVZZDbBMjmpx93pNSfzcJtOahXsrtW2v925l7PjlnncnDVmhJ+D?=
 =?us-ascii?Q?/mKmkvPcYttoya9apfY3JqH5m6s9t6Mn0eNAlYM0S1A6tYKa4/Bjd6w3Ctdp?=
 =?us-ascii?Q?N5yXx3YplJOvX32cgRdyVY6CNouoAUJoTzBED0JPd825MUGju04eYeSS2hOf?=
 =?us-ascii?Q?RClBmmCXtElpUnlyVjYEJdOLduVYs26qcBr6ZFx+AGvLxX6g5A3NOydavPEv?=
 =?us-ascii?Q?st8TbEzk6WTJyYIvRZhrOesnpBwkeZM1wm1RSypSl0tpd0xgLiNSOmJ67Z1l?=
 =?us-ascii?Q?K5GWIBu30UpuCPHJZ05wl/iger94/QaK/39Sk1VyPDHs2jscAtTye5vtPsiL?=
 =?us-ascii?Q?i6wKEgW3vDSGIkF9+PNh3OVF0PlgbPsA1h7JulFWr+lwRT3mC4CfNjkYywHk?=
 =?us-ascii?Q?hsRw4wh19NKbaAt6TELEezYnEyhemCX6hN2N8xI487QFQvuNiWrFGPl+pg1i?=
 =?us-ascii?Q?NrxrIA8zVs9/gYoXY/Qub+Rm3lW0hPoGlp2m/KZwVgngjFhXfM688uiHW4T8?=
 =?us-ascii?Q?j9XSykVXYFHeMq5ufpeZac4c/XhULqLIaOZ+Oq8rBO/MD0CWuPzz80UZQhXA?=
 =?us-ascii?Q?1u0FMiKN5xjbqYXpqs0CZkd5pGawLygj6fqJ6ZayvOJFoUCLNKsDKirGfLTc?=
 =?us-ascii?Q?gA9n/1igT+Lpa0DX0MvAnu7Cxf4WEwelWcH5reHFYyLzCk1Whb5gevFt1wVv?=
 =?us-ascii?Q?l1lVLqRYEcs3hnStdIegfZMuxBH0oExl3+nERCBFdquw+DBtDnlKPdxsntT4?=
 =?us-ascii?Q?/jicWomG8dEAfn3AdZR/nX/E7xNpyrrhf9JxbXH6JTsaE9PPAZjH/wbUTwH/?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7ae7105-d161-405c-78ba-08dbb0c4a2e5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 23:38:00.0089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 79+K2/LX7RNpEanCvSTCsb5bjjkriSwXANMntT15DlA2EMzGt+2cOcYyxXdqt5adMFfNA7YPp8EyuCovQrF2NjZYbe3kIbwc6INYZfPs0/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8373
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 02/27] drm/i915/lnl: Add
 display definitions
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 08, 2023 at 06:25:04PM -0500, Lucas De Marchi wrote:
> On Thu, Sep 07, 2023 at 09:10:44AM -0700, Matt Roper wrote:
> > On Thu, Sep 07, 2023 at 08:37:32AM -0700, Lucas De Marchi wrote:
> > > From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > > 
> > > Add Lunar Lake platform definitions for i915 display. The support for
> > > LNL will be added to the xe driver, with i915 only driving the display
> > > side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
> > > i915 module.
> > 
> > This final sentence no longer matches the patch.  But it might be worth
> > adding a different sentence saying something like "Xe2 display is
> > derived from the Xe_LPD+ IP; additional feature deltas will be
> > introduced in subsequent patches."
> > 
> > > 
> > > v2: Use a LPDP_FEATURES macro (Matt Roper)
> > > 
> > > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > > index 089674e2f1d2..feafb0f94b06 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > > @@ -768,6 +768,12 @@ static const struct intel_display_device_info xe_lpdp_display = {
> > >  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
> > >  };
> > > 
> > > +static const struct intel_display_device_info xe2_lpd_display = {
> > > +	XE_LPDP_FEATURES,
> > > +
> > > +	.__runtime_defaults.ip.ver = 20,
> > 
> > There's no need to set a default value here, right?  If we've managed to
> 
> unless we have a broken check for display version before this is
> initialized. I will give it a try and see what happens.
> 
> But if we remove it here, we should also remove on previous patch.  As
> far as I can see, it's true for Xe-LPD+ too. If we have a wrong check
> for version, I'd rather prefer it broken and a loud warning than it
> matching version 14 due to using the macro above.

Agreed, we shouldn't have it on Xe_LPD+ either.  I meant to mention
that, but I guess I forgot.


Matt

> 
> Lucas De Marchi
> 
> > match this IP block, we already read out the GMD ID version and matched
> > it against the table below.  We'll be assigning the real value directly
> > and shouldn't need this for anything.
> > 
> > 
> > Matt
> > 
> > > +};
> > > +
> > >  /*
> > >   * Separate detection for no display cases to keep the display id array simple.
> > >   *
> > > @@ -847,6 +853,7 @@ static const struct {
> > >  	const struct intel_display_device_info *display;
> > >  } gmdid_display_map[] = {
> > >  	{ 14,  0, &xe_lpdp_display },
> > > +	{ 20,  0, &xe2_lpd_display },
> > >  };
> > > 
> > >  static const struct intel_display_device_info *
> > > --
> > > 2.40.1
> > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
