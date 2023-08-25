Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BAC7890E6
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 23:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07F3910E158;
	Fri, 25 Aug 2023 21:55:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 132EF10E158;
 Fri, 25 Aug 2023 21:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693000545; x=1724536545;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EFWQMXNVtp3BqymcpqXgL865TXwYfD0eQH8VoHtV+fw=;
 b=FDerZrVafqfucbEngPG9WnxLsEwqJox+kGs07WkMN0ATTqY05Yj8QHs/
 6k9s7/FlwKcTaXum39yoqGeLUwWORVE0Al/jC50xpoN1MNe3a4s+7mH3J
 0Tjjdr9Od4dbNOOgRsywieLaDCeEdVrrTf/FgofqYs5eKJFiJJlqSwml5
 SxCuHdlJs+K9GKbaMd0odBT0WXUB6ZaYcZOZCCmgFOwx9dLQx2k5tkANM
 1xhi36zzmY7n6jt4me5UWBwgwySzWYNe1qxClhN2/P4/+VlRfhOySwpZv
 LdQKOeGmSI4IkVTtp0ylv5zZfhwvnyJgATZXJqtB8tL3zG3AzM+9dFPlf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10813"; a="377550529"
X-IronPort-AV: E=Sophos;i="6.02,202,1688454000"; d="scan'208";a="377550529"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 14:55:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="881288208"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 25 Aug 2023 14:55:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 14:55:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 25 Aug 2023 14:55:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 25 Aug 2023 14:55:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 25 Aug 2023 14:55:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fOdMtul5DBpA7V4fZ0hrwmKWdCXUkWzp82DkE0IMWX+aFcP4wsTZNnWpFGJedRdqnqKSW5I+a1fFSg1xC5bp9kISuHOTcsbg3qgny85Ml6+B15k4a+jvG5Zh2lBrdQLqry8Uwks/LRpJo6TAxmLb+MSI8iUEVJFMfJIuPtKFgvszmVfsqoeA6Zn6xnXQK7CzGoC1yxTI0u8qYuUleIVw6pbW7DDp0UBSu9mUHyx8D05GFGKztlZ95uclMyJoRTugx3DPSFrq1i9bVHOrHLiyIj9wlN8lKDRqJh7KxMJqT6l6GyaYNSHhG0Tz8dH79RtI4HqYrNe5JlPmR7Jvh93+Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeLhk/8KzpaxJcYFrHI2f+Q49Rb0BX1P8Jl1ghserlQ=;
 b=fP0zajOf+vqi/YRhevmQJ3GGbH9YjGSnsWecgyivhooKLRbANwkZ8qHjnnBPDUvrP2fNmfRYEtnZxJJoR6LS9msNrX6ToOYjDMKNgnIN2ediJwo4QBM5OTeaeZ41yEvmv57ODc2mwPvaOiGT5IBXmbQc4c8FLTVX5jUztrFdozJKml70jeFGcpReyBYm95eKlsi/nfjXSCVaP5S9n/xftfiW/RXitv/NJHrc2xu6VcA1bNxbIjsHQnHebUI8DZqfQf6Ka9mMIbAffxeEtgJq/r1SDx1pDX+al29HQS3pegfMX6MR6/YtwiexJBUSp3uNcb8mtuI1vKNFV4yNmObytA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB7986.namprd11.prod.outlook.com (2603:10b6:510:241::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 21:55:36 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 21:55:36 +0000
Date: Fri, 25 Aug 2023 14:55:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230825215533.GH1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-32-lucas.demarchi@intel.com>
 <20230823204921.GL1529860@mdroper-desk1.amr.corp.intel.com>
 <sydv7bpb3ov6nemwjcmbf5f5eojpdcul6bz43lsjmshgmo4pxg@utjuv4nyyerf>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <sydv7bpb3ov6nemwjcmbf5f5eojpdcul6bz43lsjmshgmo4pxg@utjuv4nyyerf>
X-ClientProxiedBy: SJ0PR03CA0059.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB7986:EE_
X-MS-Office365-Filtering-Correlation-Id: c1448b1f-54e0-4ba2-b084-08dba5b60330
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tb6YcGQPW3qQ/TrLAWdQCX0E7cQ5tZK8/0AhQS8xPKukiNkNy1S6fCm0oOrl6kArPBUvErGdHD5AiIshbBU/YJ3TqI4yf541fFnFjQKeRYLQXBKXoB30P/A7O+cZuFOc+ZthaMzuBUMWXbugb4IEdRKfaa+29VMo6R+qEsphq7aD3P241WE4mBeMvMnNlOccIxf6Uu9Yyg5277dqeNXONYZxqc6jV4nx+Wn/pPD/o9gWl24+RxZ758ak+4M3TI9c/LS5AmQetQByWgVamwYMUMlu1LCTeT0ouBkkicvjWYK1mDQHZliwzX/6PkvdhbJNMSQ/JuYknQKzJam99oCnt2sOR/rfOVO7jP+A4l7O235Pee+ZGhnHEL6gPKuyvjQKNilqYgaL4RY9wv+XB8RYrwY0r341wFaA4E5sBll/vg/ncpJRRdHQURSJcCca0EHaSoopws86O0+OXCRg2Qo2HfIl9i5+loyh7oISad/R14xeO70I77mL5g1bNIB2yzHc1idM+d/SbZtUs0cl0XnLR78Xt5+zud9EQ3sKaZUrYMe7U97qaZamQ10si7ccVTBu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199024)(1800799009)(186009)(86362001)(33656002)(38100700002)(82960400001)(478600001)(6486002)(6666004)(5660300002)(316002)(2906002)(4326008)(6636002)(450100002)(8676002)(6862004)(8936002)(26005)(6512007)(83380400001)(66946007)(41300700001)(66556008)(66476007)(6506007)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dBFfSym3/pjlmREW/1x3545DZm8zWGzG49GonWCWL/7PJnj4GYPHJrxugea5?=
 =?us-ascii?Q?U9HskMQLAvmO+oBsLMFtVU+Q4cN1fxxI3w58UfUqUWESKTnkm8/zkkVmJS8W?=
 =?us-ascii?Q?5q/eFWkHFF3azHaFrDPzHlWBQTH7kqY8FoggeLOWZVnRWjROVCEMW+In3K8U?=
 =?us-ascii?Q?aDFzijYwPAy2ybSDmYH0ECJv3L0B1PvHapB5AjPFpQK/n5VWH9xiCl/dvK5E?=
 =?us-ascii?Q?qltDV0Oqxg/AVvBIEQDf7ow8AHygBDaq7jgrZPJWlX0Th8sQ+A2N+2il8oP8?=
 =?us-ascii?Q?pi+wltYWIBULNJV47d4ILy8OFVECBqqdRSFv0Tw6RIV407o0drvX5Jw5hRh7?=
 =?us-ascii?Q?si4yfAlzM2Bf/LtVFWwhWOMKtBE+rPU3ocytjfcecH/DtWohzTP2iWAXxVk6?=
 =?us-ascii?Q?ByLKColkrumOkzfqZGfxCTwUUCf6iuelRPJpttXlxFIlAE3KruiNRnR6Nx6b?=
 =?us-ascii?Q?RxBuYLsw34JO8QKEc9Kn3YRaw+VjFxaquQxRjEnZ2qbsoNDZGuJAwwXUKPD7?=
 =?us-ascii?Q?D8luwwC+CTdaHEwCnPRRR0OOIUjeyD8Z5/pJPTSK0WlXSsdhW79kJKdPeewT?=
 =?us-ascii?Q?2BgiOOQmp0fGVJghcuiOQfxBWcL6qTO0y5IYhTpktwYVFZ4fPNH5gIz0bKgP?=
 =?us-ascii?Q?NHl7g3y33yONDMihiHp8fpno4EU4gWTMeZoLDDMWrBu3RBlQA7pIlIQa7K1X?=
 =?us-ascii?Q?h7rqwI5+Cu/Hk/duoRuPWzqopwA5ePEElqiOuNJAjvjr/iOWElrX2ktC04NP?=
 =?us-ascii?Q?tAt5r5GPeIfdUizaDOKITCazDGG29zI4Su6yYKBRt5ZAEGt4FTly1nGTTKHm?=
 =?us-ascii?Q?icbdPNgG9v5ZEalEr/Ly1gWfeSYXA3GHzndwg74HhLRBTU/Rk5zL28OJeM9j?=
 =?us-ascii?Q?+Oy37YV/T8UCcabj1583pxJuj4P4wrzmgK+UpcGymw2VUFjUm6eBgePe1KgC?=
 =?us-ascii?Q?RzVuKc/3ViPbYZEtbK+YDdSc9uJPqDTea6APhqT2GOZwm6XaQpgssPFrltoe?=
 =?us-ascii?Q?UVVdSs2PKT/CTSlNs2CoZRiTTe1aGkjJ0gTHamgGErma/4auszjLOhoin+2x?=
 =?us-ascii?Q?kqLd5zz0HNbCveB3EyJxSCWnK2VfGZb+fgegpvRxKAQijc3CWopviZFz0OqP?=
 =?us-ascii?Q?4c7ILfNOcjSKMHwsbMBUS+l4VmdocADv/oi/LzquLco5+0BAg+cBSrHN5lc3?=
 =?us-ascii?Q?K1fW3mYXoZdpf52wsfpGbT8fmZwOC4ivK3yeasCxw9r+sLXizdoHzz3mPKrb?=
 =?us-ascii?Q?r4TnEcqH/QaYUn1Mhg+TxXLN51Px3+dXTI/DBVEMU/67Vry5bK/LKu6AB7Ue?=
 =?us-ascii?Q?6mUdzGjsH0z58ROQaGaJ6LukoN5i6tsCYx4jQC2IXBkuQhs7SfW8H/Dp0jeZ?=
 =?us-ascii?Q?rfjFAiy0keac/CpeGqpNiR3yDJ8rTLMb104RQ/u3UARpkNu7/VHhnRXgPv9R?=
 =?us-ascii?Q?6ABOGN4L4OStm5ExZHKAEe89SVjLb1WryrIMTz3FDOVVGrK4EBLfVJ5AWWfo?=
 =?us-ascii?Q?Bu4wro1zs97wSkKytPpW8xzMsiA4NTD4gwrgVIApx3TPoNe/v5TSK508MneN?=
 =?us-ascii?Q?eboEvqzPmU5dNuNBaCJXWcT/kz/aq0LLfP3t352O7lU/cvzrrcvPV38Woaik?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1448b1f-54e0-4ba2-b084-08dba5b60330
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 21:55:36.0847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +5PfuVav3qK/3V5u1MDbNJ+x+EhJvzlh4tdREpgA82WJ+aI/zxhs+EDb0hamohbUvVHfBaMZ4IiPCknbeqtSkSGhBmrg3yuY8IhRIk8mhQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7986
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 31/42] drm/i915/lnl: Add
 gmbus/ddc support
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

On Thu, Aug 24, 2023 at 09:25:54PM -0700, Lucas De Marchi wrote:
> On Wed, Aug 23, 2023 at 01:49:21PM -0700, Matt Roper wrote:
> > On Wed, Aug 23, 2023 at 10:07:29AM -0700, Lucas De Marchi wrote:
> > > LNL's south display uses the same table as MTP. Check for LNL's fake PCH
> > > to make it consistent with the other checks.
> > > 
> > > The VBT table doesn't contain the VBT -> spec mapping for LNL. Like in
> > > other cases, uses the same as the previous platform.
> > > 
> > > Bspec: 68971, 20124
> > > Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bios.c  | 2 +-
> > >  drivers/gpu/drm/i915/display/intel_gmbus.c | 5 ++++-
> > >  2 files changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > > index 097c1f23d3ae..3772b91e155c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > > @@ -2195,7 +2195,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> > >  	const u8 *ddc_pin_map;
> > >  	int i, n_entries;
> > > 
> > > -	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
> > > +	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915) || IS_LUNARLAKE(i915)) {
> > 
> > The LUNARLAKE here vs PCH_LNL below seems inconsistent.  Either way, we
> > should probably put the newer platform first in the condition.
> > 
> > Aside from those
> 
> If we drop IS_LUNARLAKE, then we need to check for something else here.
> What about doing this?
> 
> 
> 	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
> 
> ?

Yeah, that's fine in the short term.  Although I wonder if moving
PCH_LNL before the discrete GPUs might simplify the various conditions
that need to match on SDE behavior since it's probably closer to the MTL
SDE than to the discrete SDEs?  I haven't looked through all the
conditions to see which order is simplest overall.

Longer term I think we need to replace the whole intel_pch enum with an
intel_sde enum or something since this stuff generally isn't related to
PCH anymore, and we should be looking at different things to determine
the exact version of the SDE logic.

 - For MTL, both NDE and SDE live on the same die (SOC); PCH isn't
   involved.
 - For LNL, NDE lives on the compute die and SDE lives on the SOC die
   (as does the PICA, so the PICA ID can be used to fingerprint a
   specific version).


Matt

> 
> > 
> >        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> > 
> > >  		ddc_pin_map = adlp_ddc_pin_map;
> > >  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
> > >  	} else if (IS_ALDERLAKE_S(i915)) {
> > > diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > > index e95ddb580ef6..801fabbccf7e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> > > @@ -155,7 +155,10 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
> > >  	const struct gmbus_pin *pins;
> > >  	size_t size;
> > > 
> > > -	if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
> > > +	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
> > > +		pins = gmbus_pins_mtp;
> > > +		size = ARRAY_SIZE(gmbus_pins_mtp);
> > > +	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
> > >  		pins = gmbus_pins_dg2;
> > >  		size = ARRAY_SIZE(gmbus_pins_dg2);
> > >  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
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
