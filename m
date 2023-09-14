Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F05077A0ADC
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 18:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 989FB10E13A;
	Thu, 14 Sep 2023 16:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B4210E13A;
 Thu, 14 Sep 2023 16:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694709391; x=1726245391;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aBylWWDORQOZ0MDhnmPAo2hZzMx/cfXnmPAHATmj920=;
 b=L6E0WPDGhZIv1AzowyELCaaB5nOlFuJpuUWdchwJTIL8j2wpJzyLm2hR
 QMlx24DH0yItyJUO17DtOnnrkQskWLdg+3+Cj7GzEVlAwLhnyF9DvhfEr
 CBxf9HjmFBb4tErSey4KITxRJZYKBv4TAEdT8BmGYo0+e0qVJKK9gw3rk
 wIGwN555mpOU7N3/TtJgu3D1uRnEBNoTjIyciXfydbamN5k8qlFTFprWO
 +irIBEeFltYKeUzDvLhkWFzfLP/MUZLoe6n5Ry8aPiKBQprbQ5pnIIIOW
 iJY7OkoBh2JNewGXt9IfFWKGQAipomh5J8o0PHoPgXEmGV4f3NKFenCpa A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="378925958"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="378925958"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 09:36:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="859773246"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="859773246"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 09:36:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 09:36:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 09:36:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 09:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ANbBHzNjhUU0y+18LvNKvozhyMxaYg13rW91h4+fKT+y+muKp8R2yJQOQeoOqvnatDzqDWMeLtXR3OSE4LEPLwFjYWtD+et5ZQWjoFWEX1TJIdMC2KS/d9Oxfye+NPXYX5XwwuXjE9dIxBQEUKkwVEBmTPa00b8DgLuWPeOrAnI2/71wJWi0/gmKgkwome/Vc/XSL+S22JupfbyaalwrG7qkAiFR/fdUl6haB+p7rDH6y9ZbTm75KPi5x5ME+nodE+6HdtinZDXuUCAw19nfDvOwQtp53/hHF/4+Op363IjE+RsTDcVBzLmWWtAbDJo0mX8VbnLd1oIsKhFOnFlqAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6h+SJHtSYrINHS+f2TivntrySfX8oWtE5Y7TrvjBahM=;
 b=KXeHyfkuvFPR+Cm4kRR0Qjkz2YzpkxvOkXbG2xD7bJArMdSqhUzKvMWi8LH9gTf+ELzn4Lmo5hR3q2/eDz6ISrvUqnsQ0zQwvTObH0eGXnvAVDW++g/qtMTZObICROGQ3RzG0BmWBvdzzrREgqxZEKaH9cKpB0IEYpB/GBCGUttlACCf41frUDX3yg9DIN7POyqm5l9fwKlESo+hRqweYP3815Xtd9bzhnpnty35uqYI97zUKWWSFcmXYeUngIHkb+b6tf0QR+6WVYYlJsczuRSiXV38Q6NHp5SpZputSJbSnpeg58M35Vxse5KWZy3Xd2U0Df52De4fIHNMDFoWpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.41; Thu, 14 Sep
 2023 16:36:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 16:36:26 +0000
Date: Thu, 14 Sep 2023 09:36:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230914163622.GS2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-17-lucas.demarchi@intel.com>
 <20230912160417.GL2706891@mdroper-desk1.amr.corp.intel.com>
 <b5osfnqb2ahzsqzjdgau7jwpe22nfmhegiugmfzdntrdl6h35g@hbb4bnrd2aud>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b5osfnqb2ahzsqzjdgau7jwpe22nfmhegiugmfzdntrdl6h35g@hbb4bnrd2aud>
X-ClientProxiedBy: SJ0PR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::11) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB5957:EE_
X-MS-Office365-Filtering-Correlation-Id: a49c4e24-f99f-4836-bce6-08dbb540bd1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lL+uFyppsc8b7dorhJBTvuzJzrfMgGJfaG09bA+xj4CyvEoodISwf4LnxuXLdKLZjGoC7yIParwRLM5g+fAdl+s6bQF/0ESjPP9VUa/TMC2FUSR5oj8hJMD7p7Y+xaaPZX80kEnvyQYjtWZrmb02jQmizKWoc5cUl/zkwGm9rTW+KTIIO9VIuCzCmS06aS/P7ZJX0MIOiaSaDOEC8Qk+sesCQjgOmKWXHkXxg0qp6TODDQFV5cq8JbIF3dYQ9gXW13+QTvi1FCxcvrCL0dN+W+4NGXWr9rySr3/OLXKY6iPveVDcxEyNqmoffkg8Ocl0XUkx8qxwejftD/b1RqmPuLiPluN2NXqM3f7IDy9lOxa0npabuflyw82KbP5nn0kXhVjzizncrTEOx6LMXfr2WtmyxGrZd/DXlC+YZ7G3/BjPK34+U3+B1CvwK/kvhtvkOWmnKPd998pR7dZwmsTutUrjV+hVmKXaWmOgb394cWgoWtA2emR9FtyMf8nyFSOifYdnzr+g//tHgNG2Kkwc46fGe1B/PUa0g2T61+bod13Ewdbrfere8kE9Kv7Rhc8J
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(376002)(396003)(346002)(1800799009)(186009)(451199024)(2906002)(86362001)(33656002)(26005)(1076003)(478600001)(6666004)(6506007)(6486002)(38100700002)(83380400001)(82960400001)(6512007)(41300700001)(5660300002)(6862004)(4326008)(8676002)(8936002)(316002)(6636002)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qU4CfUvpUe+VD7xIfV+aJw84w1g/c2fkO7p/+IoZFZOP/QO3j7mIxYttlfPD?=
 =?us-ascii?Q?fABbZBCmA+nlm2/56T3K4ZJB4HupLxVAJGApA214Sp15kTHccTv4chO82nxc?=
 =?us-ascii?Q?el6FSJYtmSXI+kOzYGO5tnUZDkTkAwsKHTGGklVKjCOoH3P6x+T7yMrIIVju?=
 =?us-ascii?Q?S8N+LjUfJg2RDkI722vwdBXg9MuGZF8a7xPY7WRUtH7Gd0Q30AITjgAu/zC0?=
 =?us-ascii?Q?PxyV0uWN9V8mDrODNybO0n4OU0AyRJy435ak/3LqeyEcr9eTC8NL3eKcoqnw?=
 =?us-ascii?Q?sXY+cyXBL3d/1TQ1KqOAM/ioTr4U7c5cR3U2MLW+osPZoSksHfAqWMNJt3Nb?=
 =?us-ascii?Q?+mjoIVIh2+RyQi6RreMA3zKNx3EZLB2spED4ubTNQdmr/+Dcj1Cm1zx1x8n/?=
 =?us-ascii?Q?0+Ouvwu23+Y7gkXVHV+MutqLgToDX7iYGVE5a1hx2YzoTZQeit0CAk2c1zCx?=
 =?us-ascii?Q?HaOOyxUBfcZA7kGWd14XxPFniUJQxBMih3qCecJGwSvt8EN0aCkhSpFy1u8T?=
 =?us-ascii?Q?L9FhtO0Ofnstp5q4sSNpbBzvHwKyVfmjL9MTQu4x8w6qKuU9o/6fP+DX37mU?=
 =?us-ascii?Q?zbtJC/35GlUWgs1WliiK2xYrrsHXfyekGvyVeaWDDR+QczhL3RsR+yE2gzJF?=
 =?us-ascii?Q?F1pwiZrf3qJ1diZwqQ2XT9A1NxF5065ZaClvMNVEQq7zz7Q9mOh+R79VS243?=
 =?us-ascii?Q?yaZhzB5gD0QBOhrzEkg2s8SJ/F5lTPGoXuZ/C0eBGsRhPdBjPA9492a2weRo?=
 =?us-ascii?Q?TsmuxETR1/Whg6gPSK/HiHgBk/32IV99Lq88d+AbSc3hrwjw2wY1SvPHKD5R?=
 =?us-ascii?Q?kW/BEzalS3vYn/TU7jeDnZcjwVeqoKO89PCspW3+hCb+ZZThM0wy1Uzuxagl?=
 =?us-ascii?Q?MLbi4plGSAh5/JX4jI9O11UUiCFklJqRLkJac+sOV52UHcu/46N3xnG13vka?=
 =?us-ascii?Q?gXMZaT0P+XRw3X6/yIyY6azCdyjmtgnA26h84ewXuNQWkYZH1swGBd0C8fUY?=
 =?us-ascii?Q?k02LtoQEorU1H32x1LIShoo7F/+E4MEH9CGljFDSZAGeg78Fntz1pNHsdzV3?=
 =?us-ascii?Q?UUDMHeM6JznAo7HSO3gG3/zy2YbCL40l9dbjO6ANbnxivaGFMVqw3lBbGYZh?=
 =?us-ascii?Q?jjsbFt9qeChOgcM3S9KFdeLG12s4AA4TNVf6lEFd2PnOnFZWj/FuqRfMd/t4?=
 =?us-ascii?Q?4Mspy9Gp1rh2CJm4JXNJVBp0V9GuKldzhXxijQumMI5jqYAGeVoFMzB3Z9CU?=
 =?us-ascii?Q?O1DjK2A2bTbr/EOX5QBBbViqhqiSguql41hAiGVW53A3G3Z0JEePQUtMjw5l?=
 =?us-ascii?Q?XJXwuzQ68uGGHrkuzvZgKwYB1XS6Bq2lH5bJzcYJYx9t09LUUhUaIQTPh3d3?=
 =?us-ascii?Q?bH31FGk++8vdE7kRKr8ilMpOfpXBDyGsLo8TPaYYjNZNSAM8iCZIBT526v0+?=
 =?us-ascii?Q?V0HtLjXKDZr+8K4K4IBne8N2PMkbPfPXInTto6m38tajAPjXvzMG+mUg8TqG?=
 =?us-ascii?Q?41TSfbASsPKQGHyMNfE4Z9Zoi/nnyGcOnh0LlhbDHCpKAYp+CPfTK3gRN9dN?=
 =?us-ascii?Q?Qe+arQohvIlYNxXePVrZrBdt5vPs/CbFzlZwM4tf9O8Y1MJoIVy1TNtaom71?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a49c4e24-f99f-4836-bce6-08dbb540bd1c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 16:36:26.2646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EfL58gyT/VeipNyY2uS9XQQczfOC1JbgPrkU8EyrKErjBoyHCgtx/BpmvAsE9hNpS6sXVRuFtnvmcKplSTu+KXc1ZZ2GwF7h0bkWJfLRGKk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 16/29] drm/i915/xe2lpd: Add display power
 well
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

On Tue, Sep 12, 2023 at 11:30:50AM -0500, Lucas De Marchi wrote:
> On Tue, Sep 12, 2023 at 09:04:17AM -0700, Matt Roper wrote:
> > On Mon, Sep 11, 2023 at 09:48:24PM -0700, Lucas De Marchi wrote:
> > > From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> > > 
> > > Add Display Power Well for LNL platform. It's mostly the same as MTL
> > 
> > It might be better to say "Xe2_LPD" and "Xe_LPD+" instead of LNL/MTL?
> 
> ok
> 
> > 
> > > platform so reuse the code. PGPICA1 contains type-C capable port slices
> > > which requires the well to power powered up, so add new power well
> > > definition for it.
> > 
> > Maybe add a sentence noting that the dc_off fake powerwell will be added
> > in a follow-up patch so that people don't think it was overlooked here?
> 
> ok
> 
> > 
> > > 
> > > BSpec: 68886
> > > Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> > > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > ---
> > >  .../i915/display/intel_display_power_map.c    | 36 ++++++++++++++-
> > >  .../i915/display/intel_display_power_well.c   | 44 +++++++++++++++++++
> > >  .../i915/display/intel_display_power_well.h   |  1 +
> > >  .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  5 +++
> > >  4 files changed, 85 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > index 0f1b93d139ca..31c11586ede5 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > > @@ -1536,6 +1536,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
> > >  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> > >  };
> > > 
> > > +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
> > > +		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
> > > +		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
> > > +		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
> > > +		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
> > > +		     POWER_DOMAIN_AUX_USBC1,
> > > +		     POWER_DOMAIN_AUX_USBC2,
> > > +		     POWER_DOMAIN_AUX_USBC3,
> > > +		     POWER_DOMAIN_AUX_USBC4,
> > > +		     POWER_DOMAIN_AUX_TBT1,
> > > +		     POWER_DOMAIN_AUX_TBT2,
> > > +		     POWER_DOMAIN_AUX_TBT3,
> > > +		     POWER_DOMAIN_AUX_TBT4,
> > > +		     POWER_DOMAIN_INIT);
> > > +
> > > +static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
> > > +	{
> > > +		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
> > > +							&xe2lpd_pwdoms_pica_tc,
> > > +							.id = DISP_PW_ID_NONE),
> > > +					       ),
> > > +		.ops = &xe2lpd_pica_power_well_ops,
> > > +	},
> > > +};
> > > +
> > > +static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
> > > +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> > > +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> > > +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> > > +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> > > +};
> > > +
> > >  static void init_power_well_domains(const struct i915_power_well_instance *inst,
> > >  				    struct i915_power_well *power_well)
> > >  {
> > > @@ -1643,7 +1675,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
> > >  		return 0;
> > >  	}
> > > 
> > > -	if (DISPLAY_VER(i915) >= 14)
> > > +	if (DISPLAY_VER(i915) >= 20)
> > > +		return set_power_wells(power_domains, xe2lpd_power_wells);
> > > +	else if (DISPLAY_VER(i915) >= 14)
> > >  		return set_power_wells(power_domains, xelpdp_power_wells);
> > >  	else if (IS_DG2(i915))
> > >  		return set_power_wells(power_domains, xehpd_power_wells);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > index ca0714eba17a..adfe9901bde4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > @@ -1833,6 +1833,43 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
> > >  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
> > >  }
> > > 
> > > +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
> > > +					  struct i915_power_well *power_well)
> > > +{
> > > +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> > > +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> > > +		     XE2LPD_PICA_CTL_POWER_REQUEST);
> > 
> > Do we need rmw here?  Bit 31 is the only writable bit in the register
> > (bit 30 is RO and can't be clobbered), so a simple write should suffice?
> > Ditto on the disable below.
> > 
> > > +
> > > +	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
> > > +				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> > > +		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
> > > +
> > > +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
> > > +	}
> > > +}
> > > +
> > > +static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
> > > +					   struct i915_power_well *power_well)
> > > +{
> > > +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> > > +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> > > +		     0);
> > > +
> > > +	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
> > > +				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> > > +		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
> > > +
> > > +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
> > > +	}
> > > +}
> > > +
> > > +static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
> > > +					   struct i915_power_well *power_well)
> > > +{
> > > +	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
> > > +		XE2LPD_PICA_CTL_POWER_STATUS;
> > > +}
> > > +
> > >  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
> > >  	.sync_hw = i9xx_power_well_sync_hw_noop,
> > >  	.enable = i9xx_always_on_power_well_noop,
> > > @@ -1952,3 +1989,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
> > >  	.disable = xelpdp_aux_power_well_disable,
> > >  	.is_enabled = xelpdp_aux_power_well_enabled,
> > >  };
> > > +
> > > +const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
> > > +	.sync_hw = i9xx_power_well_sync_hw_noop,
> > > +	.enable = xe2lpd_pica_power_well_enable,
> > > +	.disable = xe2lpd_pica_power_well_disable,
> > > +	.is_enabled = xe2lpd_pica_power_well_enabled,
> > > +};
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > index a8736588314d..9357a9a73c06 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > > @@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
> > >  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
> > >  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
> > >  extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
> > > +extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
> > > 
> > >  #endif
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> > > index b4e96baae25a..c869f5661530 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> > > @@ -86,4 +86,9 @@
> > >  		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
> > >  		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))
> > > 
> > > +/* PICA Power Well Control */
> > > +#define XE2LPD_PICA_PW_CTL			_MMIO(0x16fe04)
> > 
> > Is this the right header for this?  It doesn't seem directly related to
> > DP AUX.
> 
> In Xe2_LPD, those AUX registers are also
> 
> I had the same question myself while rebasing this patch as this is
> not related to DP. However the register itself seems to have the same
> functionality as the other registers above with power request/status.
> And if you look at bspec 69009, all of them are under pica for Xe2_LPD,
> too.
> 
> I'm not sure what was the criteria for the split of this DP header.
> It's clearer for things like gt, engine, snps phy, etc, but this one
> seems to have been more or less arbitrary.
> 
> Any suggestion for a better place? A new display/intel_pica_regs.h
> maybe? That may not be as future proof in the cases register move from
> one place to the other like happened in Xe2_LPD: see bspec 69009.  All
> the PORT_BUF_CTL*, PORT_HOTPLUG_CTL, etc should then be in this header,
> which doesn't match previous platforms.

I kind of like display/intel_pica_regs.h.  As you noted, a bunch of
stuff that's in intel_cx0_phy_regs.h today should really probably be in
a PICA header instead because those aren't actually PHY registers (the
real CX0 PHY registers are the things that can only be accessed over the
message bus like PHY_C10_VDR_CMN and such).

I'm not too concerned about where this lands in the short term though;
even i915_reg.h would be fine as a short-term dumping ground if
necessary.  Don't let the comment here block the LNL display work; we
can always do a separate follow-up series to clarify the placement of
some of our registers for MTL+LNL.


Matt

> 
> If instead of matching HW we try to match where it's used in SW, then
> maybe a intel_display_power_well_regs.h, but that too doesn't match
> previous platforms.
> 
> +Jani
> 
> Lucas De Marchi
> 
> > 
> > 
> > Matt
> > 
> > > +#define   XE2LPD_PICA_CTL_POWER_REQUEST		REG_BIT(31)
> > > +#define   XE2LPD_PICA_CTL_POWER_STATUS		REG_BIT(30)
> > > +
> > >  #endif /* __INTEL_DP_AUX_REGS_H__ */
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
