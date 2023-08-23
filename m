Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E09457860F2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6651E10E0F0;
	Wed, 23 Aug 2023 19:47:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1860910E0F0;
 Wed, 23 Aug 2023 19:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692820027; x=1724356027;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=q4kDt1U3ehXyYyu8C8nkWbNtOcc/VMPg+KEJ53OBkik=;
 b=jmhasaDnZHua/PiaDIfrWf1qOmHm2klRzSqy6HR+sdNoteQ3vWkRFzXd
 yT3i/Kne1wKp1JAL0N4kvqsa4YzmPyVjB55C3PUGeFjVps7Uy1pHq25EC
 tNyifgHZkU2p6tbLMLjhjH2EiNEHLJhHaNZ7aAdGgb7fbEOnME9XuZL60
 CkLAfxLl9WuIdUAreUxuoO13hRNykBe0kTaanM70O5g0/0VGNEa0vMJ7D
 rDzHNeG5fp0LFSnyViK6/udA3osz6V7usBXPF8IACmkzxn9X0ajAYdK8N
 nc6KU+f7Ud1fgCDJd70bPA0d8JhzkuAzYurMbqoek9U4P0EawK4V8UL64 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405260016"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405260016"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:47:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880511546"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2023 12:47:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:47:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:47:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:47:04 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:47:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxNnL93EyAkJ4MvTdwpNeO+PpSn3fXX6INJGcoYkJtjjSrlJq0kc3swWzfxy3z19ty3JrNSccx8amY11Mc/4R/64cJY+b98a1cP0955zKad3XnRj7k453FxfA6SIDYxbMtFimbobQGkC3u5z5SyvDz4uCEfHihPGA+gEn3WeOq6OfdmjwUzdBT6PuOuhkMFOO2iWBVcf4B9zvIAq92fM9qK+w9hj4ayHJVD/tPL7b6Svr6xUPl1cPyAeJ+utV+Q9rpQuOaMqN98vnl0x/RG1gUO4I7ripI+6Rmw221sFnBkIdHzLa9xenIOiVzkuC7EmVJUJYTda0VHBT8dzEjXm3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UthjKrAJTWiWiVxV//W6d+F8BEc5W6Pyt8fGrfVzEoY=;
 b=CUO/+TQg5v62T5RiioxoULPV56ppxCTTgrEJgcU4KwkweOQbuXxlm9QGUVekUiczFxGiGA/T2ZSB/x/YunP/y4Kq64PHhZI+Okb+K8nWJ/qYmc3B/YLUmoTuLOdhGz1rTPOxwMO8gepjOQW5NwPyr8ruQDuTXRM4rtBckykPE/S/FqzPHunvkvAAAL0ESQWtO4uP+/pETDtu1rzZi7QAcChyMH/A6m9pPuGKD3heebwAYGN1tbEgYV3XqC3ClmZgsLYwVoZwuYyone596lZzaT797PqOysdzMYieX92vzzzq2ka3QezqEvYH2f2u24Ma1hZifWl0od3c5EM0tmws/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB7070.namprd11.prod.outlook.com (2603:10b6:510:216::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.25; Wed, 23 Aug
 2023 19:47:02 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 19:47:01 +0000
Date: Wed, 23 Aug 2023 12:46:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823194658.GK6080@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-22-lucas.demarchi@intel.com>
 <20230823194453.GD1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823194453.GD1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR02CA0028.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::41) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB7070:EE_
X-MS-Office365-Filtering-Correlation-Id: 51d0942c-5461-43f4-d464-08dba411b857
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SYLAXwS8hF+jj0XXVvjof5XSdrvvgKF942wE4TLIqAipv7B4zNS8iJ8Zg+56gXr22CPW5o9LFQt4y211K2PbKuQWD0zj4g55/iMSEf/ILu/ZRVYr7o37V5OfKSseukWPi2Wvpyb5XRqDc0bnaNP9acLKUC76hlts5GxmdUVmwoY4fW+e+pBqfkFYf4oTWXp9E8+jGUL3hFyIfofETDmLhLfVFADz6kEmEsG7PludwtA/1snp7ug7QGys1po4uJh7QKpq7lIxLxUaKRozvVaV2biAAzsMKAUrYd6Cfkqz61TpTiJXODss0mIcHqYxfq3uZbIelR5W2T9bdhlp6RC5dxLzMZ+kP8gHIIxir00l++IQyGnbkTeWdbDox2xhGPA70s7TyutTLu4ewBALQtEd59NQuQY4lb5QAaztLszLop3S55JDKG3dDTV3paWQvfVSr/33Dfcn9TetpD90rkYN8uroDjj0u1rHGz+rV8DMNRFwCLtiRGBRYrICYDux61rFs5FnYrS1eA7j/S5+XcOnZ/B3ftqDfvGL6wMSmrgcP88QUH8+zbjS2cQTZYqbdohK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(136003)(396003)(346002)(1800799009)(186009)(451199024)(6666004)(6486002)(6506007)(1076003)(6512007)(86362001)(66556008)(33656002)(5660300002)(4326008)(30864003)(2906002)(38100700002)(82960400001)(450100002)(6636002)(8676002)(66946007)(8936002)(66476007)(41300700001)(6862004)(316002)(478600001)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?il2f/uQcNfFM1QBZcme+JV5vPvBJIJdBE78bjKOQW6aFJHR84pd5AcwkqEwl?=
 =?us-ascii?Q?WnLzaS/jTX1vGl7um0zP8gcXpRnOp9YA8f2d85pjC8AWwC9/g8fl21OlwGIO?=
 =?us-ascii?Q?apa5nKloRaBkv2eLgCNZUukTJrRrIGXGBE9BbSRVaXMjiuK0iOY+itGPA7FU?=
 =?us-ascii?Q?J4U6CwKhPQcHaXbDD+D9AjJDVIls2F2Zutpa5m2enp7p8oFzi+cbDhfDZojg?=
 =?us-ascii?Q?5jGb2XuGfjRE4K4GF0gfcD4mVB7CrwWVswtRdKGt4wvlD+tKiNZ9AEQaDuSk?=
 =?us-ascii?Q?hrVTLETVes7ViWWXRIEDYpovdTs/8rVOQdiFKVBBjEooq/ie9gZNYfIGeXmW?=
 =?us-ascii?Q?rMvz0RIjbZTPuYVFTmpFkoiD8t0nyboByyOq/zpKaPpUqBWEJ34oaPdJv72j?=
 =?us-ascii?Q?6MgsNeZm+upS/SIZ8Z1lyQ+KQV+hKi7QYDpC1Eo8UHMdsWBBJ48aYe6mj1kx?=
 =?us-ascii?Q?zjcqj5a9D/7iAE+vUGuhN7U9y45mbujo4rshMV5xISZVautUK75OzVjYD6tZ?=
 =?us-ascii?Q?WcRvC8/tYAHDXx07UUvmVsPzIeipjxAEms+2xb3V+RQKGo2s/yAePbZcJJl/?=
 =?us-ascii?Q?hYfB/MR2gsKQDIt/yThfkMsPohYxT5u4mZJm4PdBuOVmA+YTmgDkulvY8sQm?=
 =?us-ascii?Q?akHREVFhbmuY04XKJJw9O/LW4kuZsoMYTBeWbCB8LPzFF++C/Or+VL0hubiE?=
 =?us-ascii?Q?5eTW+JbKcNKvt/+0XdpsXtMZqv8DZ/w192FZvR58Syf0bMBnzgRk1Dzsks3p?=
 =?us-ascii?Q?4QL9blzsND1xHUxBfm0CPHe2X7oDWQceBxCvjhKdhNgnajyFpbdibhlcneOk?=
 =?us-ascii?Q?oEg3b2mq+BKwc7J3MIvSJWEYZ2EtnDTHtVQnEinSee8NNX+m8GKwRanP5rA/?=
 =?us-ascii?Q?XVXG8VWLaK6SOccgMTWv6Ow+G7ZEYr5a0QY0zNu7H7Oa2x8l+1WmEFZIiQLY?=
 =?us-ascii?Q?9kLhfTKZnnesftrw/lkc+hlR/wS6IUVR6q5WlZ1v0OPW+i5HzGU538zavgei?=
 =?us-ascii?Q?eyol66ZNuk9ix3YPkwF8ne0/e/8QbkF2OwSZlbRCi/scvGSasYnSbs7Ss/Bc?=
 =?us-ascii?Q?NilSyU0YTDRqW/VQSnj67EW3lpuJS+k+wk1hmhTMnPPZ989Xqdn109uBGYTL?=
 =?us-ascii?Q?glchkUZ3GdL8XAvBqOHmI2Osd5Yzg6ELpvdQgsysN9XFmYcYALd02IK04WD1?=
 =?us-ascii?Q?rUS7I4TqCt3yZ5ouzPxALEnU46na+Ch7QhyIGMd5Bcc6xqHLiKC4FgWy4kIG?=
 =?us-ascii?Q?/WyVk8qN0TU2tJjploVtt8AqWUnUfTIQ9t+fmL2Q5QjMFhhk66MtTmMYByoN?=
 =?us-ascii?Q?O21g9dZza/zVrH01QaxtEnkkuBl0eU9WOd5mnbd8hxTzh/vR0zQC7fGXXBbd?=
 =?us-ascii?Q?xX0rMCR2yp34Ja2Hti7sAMyzfQm/rEQlahSp+eaVX/11CgD3oW+IH7r//mY1?=
 =?us-ascii?Q?T8dx445MbuubSBKS7LWwSZlQbGUuL00nanxHi6QZXUmAToSpdenh0o2xrzti?=
 =?us-ascii?Q?og+NTHECjSFtZz20r0bItvUG2As3jvheAE7sckyo5b97LHcISorRAaJ+FUup?=
 =?us-ascii?Q?qWh7XN3zdWIxa/94Bj/szI+Vsq0c7JebTqAceWM90MPUTgMRsg/i/MBPz+pO?=
 =?us-ascii?Q?Rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d0942c-5461-43f4-d464-08dba411b857
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:47:01.8860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eZm4wj+aBhtbf+a5KsNBGaVTWQC/bB/gYvJF0RB7hEoe65eP0DxLBMAjrg5qdTqFWbrPlZ06UyDLLJA2dQcsyeKfBHqfyFzhVKdryFqhHQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7070
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 21/42] drm/i915/xe2lpd: Add
 display power well
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

On Wed, Aug 23, 2023 at 12:44:56PM -0700, Matt Roper wrote:
> On Wed, Aug 23, 2023 at 10:07:19AM -0700, Lucas De Marchi wrote:
> > From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> > 
> > Add Display Power Well for LNL platform, mostly it is same as MTL
> > platform so reused the code
> > 
> > Changes are:
> > 1. AUX_CH_CTL and AUX_CH_DATA1 are different from MTL so added extra
> >    logic xelpdp_aux_power_well_ops functions.
> > 2. PGPICA1 contains type-C capable port slices which requires the well
> >    to power powered up, so added new power well definition for PGPICA1
> > 
> > BSpec: 68886
> > Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  .../i915/display/intel_display_power_map.c    | 36 ++++++++++-
> >  .../i915/display/intel_display_power_well.c   | 63 ++++++++++++++++++-
> >  .../i915/display/intel_display_power_well.h   |  1 +
> >  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 27 ++++++++
> >  4 files changed, 123 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > index 5ad04cd42c15..cef3b313c9f5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> > @@ -1545,6 +1545,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
> >  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> >  };
> >  
> > +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
> > +		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
> > +		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
> > +		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
> > +		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
> > +		     POWER_DOMAIN_AUX_USBC1,
> > +		     POWER_DOMAIN_AUX_USBC2,
> > +		     POWER_DOMAIN_AUX_USBC3,
> > +		     POWER_DOMAIN_AUX_USBC4,
> > +		     POWER_DOMAIN_AUX_TBT1,
> > +		     POWER_DOMAIN_AUX_TBT2,
> > +		     POWER_DOMAIN_AUX_TBT3,
> > +		     POWER_DOMAIN_AUX_TBT4,
> > +		     POWER_DOMAIN_INIT);
> > +
> > +static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
> > +	{
> > +		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
> > +							&xe2lpd_pwdoms_pica_tc,
> > +							.id = DISP_PW_ID_NONE),
> > +					       ),
> > +		.ops = &xe2lpd_pica_power_well_ops,
> > +	},
> > +};
> > +
> > +static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
> > +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> > +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> > +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> > +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> > +};
> 
> Are we missing a "dc_off" power well here?  This patch might have
> originally been written before we separated dc_off out from main.
> 
> Assuming the DC state requirements are the same for Xe2_LPD as they were
> for Xe_LPD and Xe_LPD+ (I haven't checked), then adding
> 
>         I915_PW_DESCRIPTORS(xelpd_power_wells_dc_off),
> 
> immediately before xelpdp_power_wells_main should be sufficient.

Okay, this is actually taken care of by the next patch in the series.
Disregard this comment.


Matt

> 
> > +
> >  static void init_power_well_domains(const struct i915_power_well_instance *inst,
> >  				    struct i915_power_well *power_well)
> >  {
> > @@ -1652,7 +1684,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
> >  		return 0;
> >  	}
> >  
> > -	if (DISPLAY_VER(i915) >= 14)
> > +	if (DISPLAY_VER(i915) >= 20)
> > +		return set_power_wells(power_domains, xe2lpd_power_wells);
> > +	else if (DISPLAY_VER(i915) >= 14)
> >  		return set_power_wells(power_domains, xelpdp_power_wells);
> >  	else if (IS_DG2(i915))
> >  		return set_power_wells(power_domains, xehpd_power_wells);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 916009894d89..e1fb0bd7b3bf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -1795,7 +1795,11 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >  {
> >  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> >  
> > -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> > +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> > +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> > +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> > +
> > +	intel_de_rmw(dev_priv, aux_ch_ctl,
> >  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
> >  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
> >  
> > @@ -1813,7 +1817,11 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
> >  {
> >  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> >  
> > -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> > +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> > +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> > +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> > +
> > +	intel_de_rmw(dev_priv, aux_ch_ctl,
> >  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
> >  		     0);
> >  	usleep_range(10, 30);
> > @@ -1823,11 +1831,53 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
> >  					  struct i915_power_well *power_well)
> >  {
> >  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> > +	i915_reg_t aux_ch_ctl;
> >  
> > -	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
> > +	aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> > +		     XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> > +		     XELPDP_DP_AUX_CH_CTL(aux_ch);
> > +
> > +	return intel_de_read(dev_priv, aux_ch_ctl) &
> >  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
> >  }
> >  
> > +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
> > +					  struct i915_power_well *power_well)
> > +{
> > +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> > +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> > +		     XE2LPD_PICA_CTL_POWER_REQUEST);
> > +
> > +	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
> > +				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> > +		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
> > +
> > +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
> > +	}
> > +}
> > +
> > +static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
> > +					   struct i915_power_well *power_well)
> > +{
> > +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> > +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> > +		     0);
> > +
> > +	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
> > +				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> > +		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
> > +
> > +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
> > +	}
> > +}
> > +
> > +static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
> > +					   struct i915_power_well *power_well)
> > +{
> > +	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
> > +		XE2LPD_PICA_CTL_POWER_STATUS;
> > +}
> > +
> >  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
> >  	.sync_hw = i9xx_power_well_sync_hw_noop,
> >  	.enable = i9xx_always_on_power_well_noop,
> > @@ -1947,3 +1997,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
> >  	.disable = xelpdp_aux_power_well_disable,
> >  	.is_enabled = xelpdp_aux_power_well_enabled,
> >  };
> > +
> > +const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
> > +	.sync_hw = i9xx_power_well_sync_hw_noop,
> > +	.enable = xe2lpd_pica_power_well_enable,
> > +	.disable = xe2lpd_pica_power_well_disable,
> > +	.is_enabled = xe2lpd_pica_power_well_enabled,
> > +};
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > index a8736588314d..9357a9a73c06 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > @@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
> >  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
> >  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
> >  extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
> > +extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
> >  
> >  #endif
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> > index 5185345277c7..d855f3730381 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> > @@ -83,4 +83,31 @@
> >  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
> >  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
> >  
> > +#define _XE2LPD_DPA_AUX_CH_CTL		0x16FA10
> > +#define _XE2LPD_DPB_AUX_CH_CTL		0x16FC10
> > +#define _XE2LPD_DPA_AUX_CH_DATA1	0x16FA14
> > +#define _XE2LPD_DPB_AUX_CH_DATA1	0x16FC14
> 
> We're generally trying to standardize on lowercase hex for register
> offsets these days.
> 
> > +#define XE2LPD_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> > +						       _XE2LPD_DPA_AUX_CH_CTL, \
> > +						       _XE2LPD_DPB_AUX_CH_CTL, \
> > +						       0, /* port/aux_ch C is non-existent */ \
> > +						       _XELPDP_USBC1_AUX_CH_CTL, \
> > +						       _XELPDP_USBC2_AUX_CH_CTL, \
> > +						       _XELPDP_USBC3_AUX_CH_CTL, \
> > +						       _XELPDP_USBC4_AUX_CH_CTL))
> > +#define XE2LPD_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> > +						       _XE2LPD_DPA_AUX_CH_DATA1, \
> > +						       _XE2LPD_DPB_AUX_CH_DATA1, \
> > +						       0, /* port/aux_ch C is non-existent */ \
> > +						       _XELPDP_USBC1_AUX_CH_DATA1, \
> > +						       _XELPDP_USBC2_AUX_CH_DATA1, \
> > +						       _XELPDP_USBC3_AUX_CH_DATA1, \
> > +						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
> 
> It looks like these PICA registers are following the same general layout
> change as the ones we modified a couple patches ago ("drm/i915/xe2lpd:
> Move registers to PICA").  We should probably handle these the same way
> for consistency (or maybe even squash the register movement here into
> that previous patch?).
> 
> > +
> > +/* PICA Power Well Control register for Xe2 platforms*/
> > +#define XE2LPD_PICA_PW_CTL	_MMIO(0x16FE04)
> > +
> 
> Unwanted blank line?
> 
> 
> Matt
> 
> > +#define   XE2LPD_PICA_CTL_POWER_REQUEST BIT(31)
> > +#define   XE2LPD_PICA_CTL_POWER_STATUS  BIT(30)
> > +
> >  #endif /* __INTEL_DP_AUX_REGS_H__ */
> > -- 
> > 2.40.1
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
