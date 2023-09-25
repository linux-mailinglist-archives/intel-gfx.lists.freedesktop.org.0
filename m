Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3A17ADD00
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 18:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4646B8933E;
	Mon, 25 Sep 2023 16:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95C2B8933E
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 16:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695659114; x=1727195114;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=X0Dl0zghZaIF+M+eDOVPuZFkIfsTblZX9Bogew2TuBs=;
 b=QoeIrcjXTJnBV33Dbw587rU55c9VpURSiPTdGhAsjyLvvWXymiOdfJhF
 AnpLT6vl7M75cqV+wd364XOwI7EzhJ6q8WkhDVKaeHDynU7SfCBj8Wlic
 ky1kZ7B9U9zWy67AfM9jhcd2ykreC5tDF05DL3EFIGmdGcmmF41eRtbk4
 O56/hqeT5gfCkNMXHb85azpO1+rFJaLU24CAK7BJPOMgpI4pa/HkBnP/5
 YI4bkiWvwQl/otaEKSuqsxAMGmqzBOT8NuOhhlnC5tFO1x3K14UC89B1O
 R3XWx9x23Yol8mZ0T2LbYG2Tqv2O74Ai5IbGrVZXfBoEqYurc5tBxchuM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="385131762"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="385131762"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 09:25:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="922055673"
X-IronPort-AV: E=Sophos;i="6.03,175,1694761200"; d="scan'208";a="922055673"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2023 09:25:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 09:25:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 25 Sep 2023 09:25:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 25 Sep 2023 09:25:13 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 25 Sep 2023 09:25:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WF2bK1CL2/9z0d8O2x2+El41rau3iVfZtHSXWg3gzppeLxgzZj+DEvif5FWfO1r2E54TQVnuWCYz3eofRnDHIcU1Mop6fO327VG4niWyPJAB+tBXWccwH1rCC2d2pgWnIMIL+jCnvhUKXiX9gBpTjPntYXs9pMSZ9dNW7yhPSDFM367JLIwXdaT19BLrYKStssPQF5pfrN4nL5m1/T0Mh0B08mePIvUQdoE1xxO8w7WrTDHbFcYtj2+6PZ6lNeQRs+fld0GK1o5GH11M6JcRp+XVTrMx48z7m0WSPKXzTT0JB7wpvGLvH0tXRWtvBUxbsJGvaQfy9y+ged2Z7vVqDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wC8pft/hlpE38ahFofGb6fFSp0fFyV0864Pn/k99f2I=;
 b=MUa6yU9193uZKi2THUv0WCuoNOmEi/8mkGrNZduWVoQCOu+AHauG1WqJPZXLJFFN0XEN7iLDGOXrFOwIV6i+ptet1F7wvgi2v7R6NrlVC0fJtrSG2JX6HBLgHtnzjnF/BvMgwDNvG6GPMMG2ygRcEfIRG+HUizbfVflyDZavNfYgrLPoe09nnR+NOZphOStFW8ZtHhkb5fDb+9El123w9q07WWKcczyy/iMpG2N43VNeup4dPh1edhAps8BAa+0ip5V4B+u3wyVIoqJN2+1e5RCmbu8CLr/jh6wLK5fzwUgdWR+bqm8IfMXa9BvSftTKv5s5H4LZT7pIYvPjDEqr7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SN7PR11MB7639.namprd11.prod.outlook.com (2603:10b6:806:32a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Mon, 25 Sep
 2023 16:25:04 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Mon, 25 Sep 2023
 16:25:04 +0000
Date: Mon, 25 Sep 2023 09:25:02 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230925162502.GV2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230922155356.583595-1-shekhar.chauhan@intel.com>
 <20230922160525.GU2706891@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230922160525.GU2706891@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR05CA0053.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SN7PR11MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: afd28f93-9d71-48a3-98d1-08dbbde3f996
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Im9YZPdj2f4HCus399h0T/EZydZ9NuGtzUFZI88MS6/oDORFf4L6CKmBwr1uMvz+HKQoH5MDCv9JCgLBL49vyTaIeW27RtffWQB/0QN1w34tx+pdC8e4A+kDfrbxpTy88yZAM3T50toKwFqt2mJ8XxJwBpMQ8Rftk6AJUk50huLCll/nsJY8HS3ON2BYGpMO5VRchmJDQIrp4dIwIKFtyyOLGwE7Ih0RWQYJsO1I7koWwIwTbLhLJlEACc1/IgtljI5HCp5OG4DhEzcVu39gNRPW/dhuPERKc9mUGRpQaGf99ngvnzyQsZqIN4oVJroORrnjTZ5bNDyQiJD+Gw0FGJ9/bR1b00TIEnRv+b8AccJVgfP9N4E7EDqwt3+MJFx4dDYJsAIt9+Wm4INS0Xyrl3CQbm+lqtu11yjlk55FOHIw7uzTVcgn7bi9uAk4O/jtpmBvkko+hW3an/9vFy9vylgK8gOoT29YX+tAyhLLKTfV5vTk7sKxhnCIsYssW638lH8lpahcq0ztfWUlUI2Tf5AhtKUMSsXn/mhWxGRQSx4kPC+5aqdcEjGq5/aNhQh8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(39860400002)(396003)(346002)(376002)(230922051799003)(1800799009)(451199024)(186009)(66476007)(66556008)(66946007)(478600001)(6636002)(316002)(33656002)(38100700002)(82960400001)(2906002)(86362001)(41300700001)(8936002)(5660300002)(4326008)(6862004)(8676002)(6486002)(26005)(1076003)(83380400001)(6512007)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y3UUKebxyuERkX9Gz8TYBfpm+PxxLILAkOfCfkurul2GyIt1aMQa8XHy+zYU?=
 =?us-ascii?Q?2D49HnPYf0OhsEXz15GzLtOcOOWCh9GDgraXGdryz6PrZjUbVzaFI3kl2894?=
 =?us-ascii?Q?d41IW+hOgd7LDyMky1vMnLrgxpE49CfIqWUsHbRD6TKU/BzhK5RN2QFcr9bt?=
 =?us-ascii?Q?C0z7cynIm8tf9JZyhVpKsFDuX3pMUVzPyfrxnRIyA+wzo6brQsUpjsnzWyWM?=
 =?us-ascii?Q?nYRO/chiRIACv91Ups3bBRtCWxAKUMZosQvGjDkNfb5FO2naRYUsKe0A17Jj?=
 =?us-ascii?Q?4lWINYBZ2DIT0nljaKeDwl7cuat+XRmDpGf4oBMwG1Vy/652Sr1o9jae0ygw?=
 =?us-ascii?Q?jIlOFslhtp77ky9tbMIARVOu5MjYe2yS7/3kvHn9G1V3OHA1a8zAFaTn6QHV?=
 =?us-ascii?Q?3eEDge/6zd1kQ7nKDikqC719263qG2/+izsFbbGliOMN3ucHBCXSFTPRF9I4?=
 =?us-ascii?Q?4AowIl4CiKv2zYTBACUjVPMIJprjiZ3UrOd3RbMH829IhumNOq9LZjcyTZ1L?=
 =?us-ascii?Q?PwF6M7vK6R0UphhpPmTIofqRZUrlPqG1appnlkNrJxSb76PrDJ61L6+y9QcR?=
 =?us-ascii?Q?IeAFShvXXXimqlqHRbfoJyw2B+vzeaqQ86xaLLIdkp19oDZMM/1Mpl9xGVYx?=
 =?us-ascii?Q?Ymbox+9mKO50q83VPw/GiBz0ch8Mod2nWVpD6PcjLP0Hn6BZoLEhZSl6DceL?=
 =?us-ascii?Q?ti6/BfmyxuCJCg9cvV0HwMlFRJGdiisGqKsFKpRBuQ5QGiYQpw68SLspifFR?=
 =?us-ascii?Q?Taj8ZB0avrEahRSp+gbEHeAJsd+bCjsyaw2J1GvWh+hv8tCwCcn3bLbQYTuv?=
 =?us-ascii?Q?IdMk3Y2QlXgi9r39qmHHmn42zFOLojsoUR/29BOHE5BGl7eTR/lKn7RqXnMT?=
 =?us-ascii?Q?jaH8jp7GjxAJoAGPR1qjLZGhG/UMkL5dRUbYfML9KK8NkpvEAdfII6bD/+Rd?=
 =?us-ascii?Q?2TIMPZgLjSZB5xw5e3wMm1i2StnLGeMAIuwSoxT3yfoNLvkAV41YLbUllptK?=
 =?us-ascii?Q?rsqfNueDDAUYUUMjUMS81ZRy+vbWrVgBW4sDB4ecQ3LQOvtVVWuUj0M3jZF+?=
 =?us-ascii?Q?8bJa26YVCt4XIc9cTBQGCdyaW72StopRq/PQ26KSgsbHRxYA7RrUEjrlmMVL?=
 =?us-ascii?Q?3KtjM+VNcqXeSCv3F9b/z6+TdmM4WOcTrRzvrgxz3FDsB9oLyl7POzpMtYFQ?=
 =?us-ascii?Q?dZVG1vRslUrFiK6czux9K3VQnUzILFX1+mF9pAZvTK6U9z1bsYjQPTjQJhUO?=
 =?us-ascii?Q?gMzUEXooqXmfPnpslWyEO22vr285dT/9CzJAyVcDvdJVKnlZI8l8eGCazW99?=
 =?us-ascii?Q?m6XoOGhaXtu+ZaqV/yb+0TrSjF0A+PkEWN/QNtZtKfuBox5tL+KqULp29FvL?=
 =?us-ascii?Q?/+f7NCKnyHoyFiKn3qVH+grAYfreQHYHS/thtdJPbgO8rdM1XctuQSJzdngq?=
 =?us-ascii?Q?K3zMkVcDHPKRqtl4ixG9fgvNBjIdsK208u29zOlpPs9kVxU6waDdumkUg1L+?=
 =?us-ascii?Q?rgCyPOpMqXNn+UpjgbXkpQUyQ2CTfK9q+GjuAl4viitzlA/A2qtIPmOfieTF?=
 =?us-ascii?Q?8woYOMly1ZFJzADQZKQ4kALJlKvjOs9LSmZKY5WwM0xQjQAP64J2L7/oAMRy?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afd28f93-9d71-48a3-98d1-08dbbde3f996
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2023 16:25:04.7508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0yc146zz3Jz94gq2E4cAL068meZ8frliN5rVv0kgcO2wGgX0d41ymXIYDJlg4IR0V1+QU64BM9izhCtsh12j4NnczF1B78dJWExo9zLgtZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7639
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Add Wa_18028616096
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

On Fri, Sep 22, 2023 at 09:05:25AM -0700, Matt Roper wrote:
> On Fri, Sep 22, 2023 at 09:23:56PM +0530, Shekhar Chauhan wrote:
> > Drop UGM per set fragment threshold to 3
> > 
> > BSpec: 54833
> > Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
> >  2 files changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index a00ff51c681d..431c575c532b 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -1230,6 +1230,7 @@
> >  #define   DISABLE_D8_D16_COASLESCE		REG_BIT(30)
> >  #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
> >  #define LSC_CHICKEN_BIT_0_UDW			MCR_REG(0xe7c8 + 4)
> > +#define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58 - 32)
> >  #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
> >  #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
> >  #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 660d4f358eab..df0fba2850b6 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2957,6 +2957,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
> >  				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
> >  	}
> > +
> > +	if (IS_DG2_G10(i915) || IS_DG2_G12(i915)) {
> > +		/* Wa_18028616096 */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
> > +	}
> 
> It might be best to move this block above the xehpsdv block (to keep the
> function roughly ordered by "newest platforms first").  But we can do
> that while applying the patch; no need to send another version.
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Applied to drm-intel-gt-next with the small ordering tweak.  Thanks for
the patch.


Matt

> 
> >  }
> >  
> >  static void
> > -- 
> > 2.34.1
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
