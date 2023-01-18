Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D8F67245E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 18:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D7010E7AF;
	Wed, 18 Jan 2023 17:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AD2110E7AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 17:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674061323; x=1705597323;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=a06NeGKtDlpTeyFyNh4/7J3eLRG2Zf+tUqCp6DKWNFY=;
 b=I9qOi4X1wRKT1J/BB26lKAUMXugYTeNEqTemuY4BZQrJ9EG7BdpdIAlP
 gEjPSByA0D1lGEAUV7sNfHeKXKPYGm7qgZNE0p2c95WxituowDm/x9HKg
 iJ/yTpXL7hG8ADy7GpVUGnntPB/9Ad0QXXPPo4n7lI+Jrp8y5g3fB4qDw
 Y/GZGPRtrLNxD78VprVLN1snn3v+Cemzu3ozZb3hbRB7/a+wwX4ptc2mj
 t8q7wdyEaA52vstcFNDR/yAjKNk6H3mQxKsGjz2gRMr32ih/tjcqEMDPO
 8ihd3kS/c+fruQ8kdDo3PB5qVUAHdTfVDCWAJgnjHC2ul0eL9fsQMDLck A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="327108123"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="327108123"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 09:01:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="692068048"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="692068048"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 18 Jan 2023 09:01:32 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 09:01:31 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 09:01:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 09:01:31 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 09:01:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zy/hh2vQ3Gyr2kg6alhBDVQrOfUJoo4wzmICPTrjKIOSkkVeGaK16a5hzzUi7hdfTETCYUdwiyVNZM/VYzWhoAjM9qFZAYYQ7L/yk1XCy9+a4xtt+L7VKVVjK6nIQlraKaX+RF8vaeULpIoViCvPl7rvPDmmlQ5G2z7MKwnj+La3CqLmiAxZFgst9UXF2SxxxBvqScgwawKEoeIsLSTMZwMBnJ47P942VAKckQpow28PgNtd0NrRKhxk/AAS5IGO14/qjclUCkBSPxRp42J8CcG8NYW1JCEOBnDU7YSQPQqImo20bdunPOXs2msHwMs71EBf6LnwFEj7oQzTuGmT5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqV+wUi0AS5/kXJLeWEf/nvDYEcksyH5Jnk19RI60PQ=;
 b=gz0W+aWWPeA6vR4RML2EHwv36o8fdgYHGDgF2cB/wH7YZCiSnpISF0BA0XMR+0artip/aHEhdNy5Iahn+t7sbGAk7/4dthLuNn1YLjWSA131BAcIowjHn5j/qTvwRyCOIDr83/Mg/V/GC3QhURwrPRCp5OP6JKCIMqj/7XDEktf+x44Z49cIHAHtjHtRzTmrYTLA6rNm/9taPkc+Bl0AeA9ys0ae833qtnAVQcsiKiY94tSKN+6NddWAyJ0daHOmHPy6NDelvRrLqUbm07uOObvoW0coEnjO3pBORBztaesjk7/WxrenotCIe74cc3r3yqbcirTH6y0U6SAexjgnCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB7870.namprd11.prod.outlook.com (2603:10b6:208:3f8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Wed, 18 Jan
 2023 17:01:24 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Wed, 18 Jan 2023
 17:01:24 +0000
Date: Wed, 18 Jan 2023 12:01:20 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y8gl4G+QI9jOPOA/@intel.com>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
 <20221123194525.4k6qovx2gnhdiew5@gjsousa-mobl2>
 <Y4T9RqbhLBzgXgP6@mdroper-desk1.amr.corp.intel.com>
 <d020f333-6309-d343-4f57-e1a3c105ddd4@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d020f333-6309-d343-4f57-e1a3c105ddd4@linux.intel.com>
X-ClientProxiedBy: BYAPR05CA0107.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::48) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB7870:EE_
X-MS-Office365-Filtering-Correlation-Id: 50938da1-f4fe-486e-64f7-08daf975a156
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qBLM0J9H0ysxcT8MId/vaBqpDqv6Y3GR7dH5bd2vCuO1VZXacz5hIDuTwzF2jkdE2w3SF4UY8c4oWx5b/BM2iFEIldNl02SUAnAT1qjzoPXzdqGkkBLb7K7b5QPKTzCpZi8q4uAPc38EbBL91EvXxKcUTdzQhbN7DSM1IXU0v4GxJ+zwhKXzajori7nfYN35eLTrYdXqw393TVv3dKH18a7opOhGY62Rb54fsShh3kuSgIY6PJx3Wa+3eDQz6KQL+sbbncIZNxKJvpBV6f9SrTe7AYbz8YI8FQctPZQGKamRloqrHCwYjjFBVFhKB6+h12qj1NVcta0WN2OFg4PdUg7Uc0zDRvkJy47Su2NIJ6o5lR1avB25kM+YWrHbnYf6Yt/RjFS65CMUwJtXjjjOOrBHiiqTRC27Pzf6tLPdVJw5E/JmZoBEgPRGKGNIJX6NhgEW83VN4CNEPV7fb2c4mLgmdnGpl/3sqKay2iH4p+qzlnVqZ/WsnCexsSywyNbOwLIJiGECZkHWeI1PrE0YMzd6rSW2llNyshG23gS8OE9fKSEx0rxDeYzGRJwSfObDOdJmCJVylpnpipT/0i0FLw00zAublkXA4OxNqgnjkW2xQ2tGARyULcQpOJarSJnOsPJiKxOjAXudFyj944e6LA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(136003)(376002)(366004)(451199015)(38100700002)(36756003)(82960400001)(86362001)(2616005)(6666004)(6506007)(53546011)(26005)(186003)(6486002)(6512007)(478600001)(44832011)(5660300002)(8936002)(2906002)(8676002)(6916009)(54906003)(4326008)(66946007)(66476007)(66556008)(316002)(83380400001)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7cSVUswc2Un8JX8QK2dAG1TiHEyLslOgRd8yKno5unCygnDXJKgoHdbgEEYB?=
 =?us-ascii?Q?U3FUCtVSKqeLPc9Xu9TGZqrWnTr7n70y4keOMvBVFNn/0a0S/8/3KMP2IufR?=
 =?us-ascii?Q?XH/D2X+TTsoVp1HyIsJtmBPXwbxCUm5yluIoHd37gPMHFnfjEeTsN0e3E7/L?=
 =?us-ascii?Q?w4aDxcSH0KtfFWW39SAPQybik9RqstAXSyM80yzigbdbyJHQQWXN/+Y1TBiF?=
 =?us-ascii?Q?MUDdIMbKq37nuCMZK67pbTwLk0vY4T8OoCEJPRov7j2Oftf33CHQimzU8Cc2?=
 =?us-ascii?Q?vBkzwwL3zsP2ewpNPVBUEQu2NdmMFpyJq++fgViM+nkh0+JL/yYVCyLEb2xJ?=
 =?us-ascii?Q?8ZVotnQPF8V9K7TclwVGiGPpPhEskCvwJTESam6HhQa9K10YZ9jMeiqCt8NL?=
 =?us-ascii?Q?Cg78R2pPl6Yr5RE9SQcTdZ9Yi0YjXevaVF+Z1Zb2oDzgwKPrBfRV4HODl9YB?=
 =?us-ascii?Q?qB6bLwg6H9s06K+yfZPaxbxPGpQRtYJ+9sj3MK62AnusD7nKC3aAFO0Umrqb?=
 =?us-ascii?Q?eeSTVfgaK3suB7ZVfbHK+5V7R9+OQakX8uy/cAWyZj0teufDG8n2YziaMzxA?=
 =?us-ascii?Q?3mSF8eA2ieDQaZzeTg2eBJBd8HOEJtCl/5YrYQLVw+05tbtsrkAh4X7is8Gu?=
 =?us-ascii?Q?I1WJSTYSjyJSHJS7k49pEF8dwn06O2X4LPpFOQKZ2nE935TjkRyzdpPlZG9P?=
 =?us-ascii?Q?AQPnK2V1U2ICySmNAgm5fC6bequWqvJpeGl7iVDw1kzEKDpEN6P8sdYsJwg2?=
 =?us-ascii?Q?bZPiUW2VeYkjsgAR+Gw6SYRvPzUTiTdobgDeKkQoay+4gd8Qiotdcutthx96?=
 =?us-ascii?Q?3jk1ZXrhSKJiQOMq8CyZB0Dhq+7KBXXzFyUtfw+FDATNiv3wLUzW3jF26qzc?=
 =?us-ascii?Q?ZALfM3zBowLl6NUAOWOyy+/oV4Ky6cej1jy+0eKHftEdlY3KMcfBvlr4aEwV?=
 =?us-ascii?Q?NRv31qhs28ErcUkY22JJt1p3dTL7t0fS0GTZjkYGV17RhvHRwOMC6GR7DL+y?=
 =?us-ascii?Q?Ysvxt1NhI1fAB6EiDcppQoiMIZ6saK+W14lMVv9fD7+K8PjF47XP3l9YUQUR?=
 =?us-ascii?Q?Qj3lyZuY568ug0NAP9ihK8baj/HWHIPqL+nmN6JayIPcN++M2Ina3D84PZ85?=
 =?us-ascii?Q?eoGHgSR3gwzZa23CP8rq/3DKJHwlxEoNC0/VsCqhz348F/PJFsxPXgYgad44?=
 =?us-ascii?Q?c7q3kYAa4KrZQhefLoj7WtayEkVvLDYUKjgq2aUXd3KdeBKmoNA54XFVGnUL?=
 =?us-ascii?Q?+1w3olodZbMxHssx6Oz6mMu1TzJCv/hzAv2IkPrBXQyJp+U351sY0b5CzlU+?=
 =?us-ascii?Q?Grj0GBgCI04p2GTYDCC4U4I38lZ93gG42r/dJqqz2Wmt66rZYRfVq62fOB1q?=
 =?us-ascii?Q?o21c0Xfi2QuJGfKU/tBZnmgRt3o9L2DRnYuoEXuPpYyNfMYnkfDEoFa/msKV?=
 =?us-ascii?Q?vkMdUErmZuLROmyC9T/cM0oyJAROs0TM7dL4VGlaq4A5jRHDjqTwm05gWn5b?=
 =?us-ascii?Q?nAcpfiyodm7HH1s3ds/eUJEKF0SqkWzBKYBQvdBUGxINZKA267LeAJ9hpHDx?=
 =?us-ascii?Q?5151KZR7HqGGEFohvMq08qWZvj/kaI1P5ibNQu54LSbDl6rK+Ncex1wS/341?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50938da1-f4fe-486e-64f7-08daf975a156
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 17:01:24.2579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3bFUqsVlzZ66zCepFePIlI0sT1IR4Gd17H463mg13LWUQF4/qxuSqHhxPCB0ihKZb8eJkUJ9zo85SVzgkeyutA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7870
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

On Wed, Jan 18, 2023 at 09:54:56AM +0000, Tvrtko Ursulin wrote:
> 
> On 28/11/2022 18:26, Matt Roper wrote:
> > On Wed, Nov 23, 2022 at 04:45:25PM -0300, Gustavo Sousa wrote:
> > > On Wed, Nov 23, 2022 at 10:36:47AM -0800, Matt Atwood wrote:
> > > > Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
> > > > G11 and G12 A0+). Clean up style in function at the same time.
> > > > 
> > > > Bspec: 66622
> > > > 
> > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > 
> > > Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > 
> > Both patches applied to drm-intel-gt-next.  Thanks for the patches and
> > review.
> 
> Do these need to be sent to 6.2 fixes, given DG2 is out of force probe
> there?

Yeap, good point. I'd say in general we are not very good in cherry-picking
the hw w/a to the fixes. But this one was a good catch. Let's ensure the
best stability for DG2 on 6.2.

pushed to drm-intel-fixes now.

Thanks,
Rodrigo.

> 
> Regards,
> 
> Tvrtko
> 
> > > > ---
> > > >   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
> > > >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++++-
> > > >   2 files changed, 9 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > index 80a979e6f6be..74379d3c5a4d 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > > > @@ -457,6 +457,9 @@
> > > >   #define GEN8_L3CNTLREG				_MMIO(0x7034)
> > > >   #define   GEN8_ERRDETBCTRL			(1 << 9)
> > > > +#define PSS_MODE2				_MMIO(0x703c)
> > > > +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> > > > +
> > > >   #define GEN7_SC_INSTDONE			_MMIO(0x7100)
> > > >   #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
> > > >   #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index 2afb4f80a954..870db5a202dd 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -771,9 +771,14 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> > > >   	/* Wa_14014947963:dg2 */
> > > >   	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
> > > > -		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > >   		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
> > > > +	/* Wa_18018764978:dg2 */
> > > > +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> > > > +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > > > +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > > > +
> > > >   	/* Wa_15010599737:dg2 */
> > > >   	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> > > >   }
> > > > -- 
> > > > 2.38.1
> > > > 
> > 
