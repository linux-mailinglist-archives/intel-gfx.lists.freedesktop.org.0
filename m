Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 558E963B13F
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 19:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F1E10E320;
	Mon, 28 Nov 2022 18:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 616DD10E320
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 18:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669659981; x=1701195981;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DgIuNM9I5v3JfVKnxuDPlqOm/mDpNjQ0l2Ot2pii8kU=;
 b=i2fChTi0Hf3TOBgLHVkpLB7F7GspUZsoFT6HbR5E01WNaD29QFz7Cork
 Epb+ZRmAiAi71XYZIOpnmodWGcBPnupMMsVe9AaP9zMAr796HI5GcYm0F
 pwV3VyrdeBLCp4VISzpcwM5M8sLfo4bDHreS67QZ7fEyVBpO/GiV34uM8
 KoYsiA9LrUVqVrLB3Co801W/JuaKjXPlIj8LZ/80udCVmWbsFWSMj3/jm
 zYbPGn1z7MQtqVPvIC0kMnpYCujbN8G+0dw5N3H6COug1SzOseBaNv7nL
 SP37y9sBE8atgWV5AfrIE27RfrPAvc4IpPwAsTzNQYJKBPDfC9j3KrrEw w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="341828462"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="341828462"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 10:26:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="817924833"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="817924833"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 28 Nov 2022 10:26:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 28 Nov 2022 10:26:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 28 Nov 2022 10:26:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 28 Nov 2022 10:26:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kCoYeX4Y+k2Re2vKgs8dPsSdvztSpcoq8dmpaQCneqrepenp2P0NJ1uy5qDEyrcXcXQoZCyTCvhTkPB7wZWRECKx7C1JLerMsvUrseJGpUdjdQh7eBVIUTcMyKt8btY8gOYcHbzCKkD4+URcSkcr7RzGZ3riLETLMxio371zEE70simEti8rGlDo7OlhZ3iIosfVw0wZtNllymgsP7+Y1wzVCWGHnSndK0sYA1sgjuVzCrhP+fZuI6qy0B3wJ5oSeuhygu1Fn41WB4bgxQk1oltxkcQMUGfdufRDMGtbKCqIavZTpkn2qDdJE3Ombs02QpsR9xpRkD8c6dRz5S8YVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zhuU6ZRRTarfFtnWnPMpkl4F51E6LxMp0NWIwcD8V70=;
 b=iv6+1MPv8p8BwdFEwycvmEPkZJTry89RPKPoJwf9g5HJ4uTMxFdRwSpJOvSoOuFrB0iU1PBZhR3vRq0iFMg0S8RcWVTthXL9OfqfafBkIy2zwP7b6tf6crM/uZ2euKSt37Jr6ox4ybUeq+XpZQef52AjlTtv3mUjl5wukqSOsq9De9IyBFxgn9mefTJGuIS9ZQhG4kGd4Vh2sdEddQm4u7H62UCIqhd6TdWWjlSBw/oVZ3yFbTYtRZBUMk0xxS16cs89Z7xNZVu5dEJ9n5FbgiZCnhxuDN6GipjgeNGNFjdGB/Z8rZNZnbp1BpzQ+pP7R1enUvmvMnC1DhB8nXciYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MW4PR11MB6838.namprd11.prod.outlook.com (2603:10b6:303:213::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Mon, 28 Nov
 2022 18:26:17 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5857.023; Mon, 28 Nov 2022
 18:26:17 +0000
Date: Mon, 28 Nov 2022 10:26:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y4T9RqbhLBzgXgP6@mdroper-desk1.amr.corp.intel.com>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
 <20221123194525.4k6qovx2gnhdiew5@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221123194525.4k6qovx2gnhdiew5@gjsousa-mobl2>
X-ClientProxiedBy: BY3PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:a03:217::35) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|MW4PR11MB6838:EE_
X-MS-Office365-Filtering-Correlation-Id: d0ecd538-9210-4cf6-5d2a-08dad16e09d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E7jsAP3c6fj9FQgwqr9WiApzjF5+r6tO8ak/Plex4Sg6vywmG2JAWxji+UQ8CrrP4yd5JISsIG1FbFjbd5As2MgxjSXOmiVFafS4NnKJZ84CxJmleLD72q35SzCKI6zb5dTF40jewLChAm//+QG+9sg9yUopzLUdXEp6btbyQ4GQXMRRT+27sO80zEy9d2f482GZEJhlAE/pS5hTMUzaEB1ij/0uQ5n7/5TpXRWSc9oqcUEPpMt7tp9Pr3H6sNoVSN4Z+f4tEBTtpwwNu8RlHIC8s5z/Qsj/5JvaAsqMGq/4q4cilSCdvvWe9K7H4Q3CMc5fJ77lBm9anKu7f1kgD7Gh8CmTRqyiNYGfw+V/zxzxKGF1xMB8no72S7g4tQBai9UbPVAeozrG+E3QiCOFMqSJ+n9qZinWqm+v6IDaMJbRcNDJYXLWAs82AwtJqepzkHNdROiAWRZ6XygaYdA0GmZgwOAmaFX03O6XaMT6N9/LCBuKFnQfSrcGfx5tSrRwnxIIaAOFZBDi4ln06SbSMe52KF6JT+h5n5ctQBIFUqhfB0P5PnQfnIQTR0xBaoN2z4fGbHA4CAIngAGqx40MskRImCHdlfudEB64C3GqjkhdKQq4ljQyFgCi87/fCkbqmE6eX+idWsOU06w4HL0R5Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199015)(82960400001)(6486002)(38100700002)(478600001)(26005)(6512007)(6506007)(66946007)(66476007)(8676002)(66556008)(41300700001)(86362001)(6862004)(8936002)(316002)(6636002)(4326008)(5660300002)(186003)(6666004)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DCwhlx9M1FoRunPZly2aT+lENJ3B4oyJ4X2K5HbRs98MUMsV6+7jqP98VVJJ?=
 =?us-ascii?Q?5obStqUe9tzDVRl/6/w7ibsUin/j82iRnjFrPxzRATyRYJz9P1wnzwPeJTyi?=
 =?us-ascii?Q?+eqHBDupZQ7wbJb9wiUJQHKAcDBADIyVSqpGFrhoDVpfn4TIaU1PfksE2V5E?=
 =?us-ascii?Q?plTsA2CZWGZjmOq9GMqJlKoxfduWVzz98DZ61kxXu239qjEX8Do7o4LGTM3N?=
 =?us-ascii?Q?hBih48Z2m5WafL7fuqww/xxtRuy5tyKoORGfjdkAlrnjpo29oIRyW+ZE5/h0?=
 =?us-ascii?Q?8V+XZdUzpSjnbTCBsRDoVOZXhYcTOWdaD7QhLvbq0L1JAJBMvklnqISn5V2/?=
 =?us-ascii?Q?3oLdIQdieYakoobK9nAlCTA8tRlFUELRlft53Ty2ErURqA4IDZfIssUge0/z?=
 =?us-ascii?Q?u2QlQGsLmRzdzMXOgVCiICGGzRdE/1tr43eBGjj3Z9PrF6mrFAt4gWXYysOA?=
 =?us-ascii?Q?zbUs/la2xgiqa7aDSIre0bA8ISct+w3BL+HyS/7e5TYFWKzoFZBocpzfyn+1?=
 =?us-ascii?Q?fIZ9GjJZpntOsV04eEYOdIbGOjGRAae6ZlipIJ8aaHJLTSzR9bT1yMiw+6DB?=
 =?us-ascii?Q?iTnGssbRXmc651mRd3F6LdfuCyIv/LK8BQfFY4B/mccR8TQQXmYDZ6efmF7X?=
 =?us-ascii?Q?EzvQWnwa9TcU5x5CHRhYIHgxnYzvY3EKGk3bDSJXdDUdjHOBr071o8EuObPz?=
 =?us-ascii?Q?/pKruX+KTBDOAOWu4Eq1xvL2uYfbnnrbWCV/dJIqzJ21JN6SZcgUwWsf5NEg?=
 =?us-ascii?Q?mrRMbhiTylEu46UBfbgAvDC3yN07JKWGlRkaq5W4r3zsy03UUCOeZw/sknrG?=
 =?us-ascii?Q?LpUHCLhjj4nQhX7X5RumoxJ5kwyy5yQc25WejbUYZ0c7Dkm/1CnZfbOsQlE/?=
 =?us-ascii?Q?8MsF2IvfaL9j95QCLEHj+IPIuXPWTMwMUrLEwetasCSKGrTxg0deaw/J2OTL?=
 =?us-ascii?Q?xeh8KoSRMOA/M3CesBsmrfInwEzyiOqZtK6D7ketbeGQ9RMkYP1Vnw1pSyzb?=
 =?us-ascii?Q?vVtcXIsX0e6wAhuw1oiu17B5b3ELOBSUx6lUbMB1KVqO+AYmfnYx+IP1MgeZ?=
 =?us-ascii?Q?5kqueXZyaPzspP8g3SMwiGhHjREpotklTVysyOpHy5Blt3rawFHY8I8oiCXD?=
 =?us-ascii?Q?jmDg064mrHOOxNZIqueunYNTPh+6OOkGV0igjigfpDqjsW1a1zVMDNdAJArV?=
 =?us-ascii?Q?BycPmCjv3/++HNTEw708GJzhTzFFjqJeYiTC3Gqe0fBJXWjdDxhpJDdegL+R?=
 =?us-ascii?Q?RJ6KxsGlOxDjKs2ZYH0sV1LcRqdL5v8Fwej7qw3KC8ORz1MpWTAwABEMImrZ?=
 =?us-ascii?Q?gOjGd797800wUB3v9mBvDHAxpyhIlN/jeOOBGOseuSziG0I/hBEDuoK183c+?=
 =?us-ascii?Q?FqHWcf5lwmWZtf0oAzvJlCHjdpozihqAjnYI7d8Cc2yosqpmsQy+UJ251giM?=
 =?us-ascii?Q?I2n01Lj4Uo9oWAD6SM6rPsJushDYEGELSmFpwwocJtOFeCYNzdzknnuS1Gfi?=
 =?us-ascii?Q?b2aIMEe5WINF4JxGYF05xnxviUF0LYe2y2sNs7mM7fPp14EgmrJzj4xuFyq3?=
 =?us-ascii?Q?pVSSFC7SbXk5z61iUpF9qKeeVOYfhjHjPCrQTBOPRLCHnxm6N8kA78/sEPJQ?=
 =?us-ascii?Q?Zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0ecd538-9210-4cf6-5d2a-08dad16e09d1
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 18:26:17.1575 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YerSsVEpRD9OsTvOr482cacILAgFlbsGRq5Znoz5UzmN9yZNtvbhbE1XkQd3rLeKnPQxsf8tUplEZOJqWV10Xs8169hcECfpsg1kO+R/KL8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6838
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

On Wed, Nov 23, 2022 at 04:45:25PM -0300, Gustavo Sousa wrote:
> On Wed, Nov 23, 2022 at 10:36:47AM -0800, Matt Atwood wrote:
> > Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
> > G11 and G12 A0+). Clean up style in function at the same time.
> > 
> > Bspec: 66622
> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> 
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

Both patches applied to drm-intel-gt-next.  Thanks for the patches and
review.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++++-
> >  2 files changed, 9 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 80a979e6f6be..74379d3c5a4d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -457,6 +457,9 @@
> >  #define GEN8_L3CNTLREG				_MMIO(0x7034)
> >  #define   GEN8_ERRDETBCTRL			(1 << 9)
> >  
> > +#define PSS_MODE2				_MMIO(0x703c)
> > +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> > +
> >  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
> >  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
> >  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 2afb4f80a954..870db5a202dd 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -771,9 +771,14 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  
> >  	/* Wa_14014947963:dg2 */
> >  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> > -		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> >  		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> >  
> > +	/* Wa_18018764978:dg2 */
> > +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > +
> >  	/* Wa_15010599737:dg2 */
> >  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> >  }
> > -- 
> > 2.38.1
> > 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
