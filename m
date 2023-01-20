Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4FF675C8C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 19:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7676A10E043;
	Fri, 20 Jan 2023 18:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF67E10E043
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 18:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674238639; x=1705774639;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XR50AmYQgIzXOvK8x2HUTUaMHTjgj3vhzL+adCt5yD4=;
 b=WdHBS2Z0YSRFi+04lORc8aByQlT9FbtkjtPp+d8THm/D3LK461LLyCHB
 g9kQ3C7A7xwcTckYKWOE8Lnx//0jRG2uFjfnLgpcugc3RE6NCNkZG/j3Z
 weHJ7u6/IPdAStcbhpw8PVt3sALbeAlpPOcEjUQtfiiTm+RGQ12JqPw5M
 e4VFMah73NTcC1ITKeJM44s0ehc0kZRL2CxxuxgsBV5GliXGuE+qXWQXO
 fZGZrgWURx4OedGwptU7Pwh5CrzKnb4DN2LGeFBtcqbo9uH7atj0ixUOn
 /VPuS871dAMWCgUB1glGQpXhiek8DEPQ8rYT6FAFCoxK8EyfGMb7pb9wz Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="313536609"
X-IronPort-AV: E=Sophos;i="5.97,233,1669104000"; d="scan'208";a="313536609"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 10:17:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="724036189"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="724036189"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 20 Jan 2023 10:17:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 10:17:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 10:17:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 10:17:17 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 10:17:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ke0qudvlSl82J43D8BfJs4pzu3AQqQe2SrTQ0vH3iiNyq7COHCtkD5elJ2Y3/0kApZnx3OOIwceNQFoDWQFclWavfQaWbsKCMVLifld088Fg15EiU9Cd0iBNkGTlSvviXaFkZv7+qWpauloHGJcLhsWjnl5f63em8Q5McqfXb2QjKNkLfOmcTAb19t/mM7b8eQfgZK/NyZW0CuhulDnVEJMBMg1chlIGHYDofdeG6BhVj0VD3lbZa8Wjc7A1G0amf17UxCiT+htd4zaitJS8M6Wv2hS+IGmiL0lpVilQCCaBq3/8ifkQxPHml+y97/ET0tGynUNVYxOVYlnNjk4ElA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mwMhS92LPpAsZoQFBcXAPN8o5EkS3ejq77hSSg5yHSE=;
 b=XGiaNLu+gpaP6WBCQ9ayufVAiQnmO/qvwhmTqZ0u5V5dJANN8ps1Py9pBCpBf4AIyvOsYaP7U7ZfPi4r4vB5zz+7yLnGdpzDbaChwxLpoEoft+UlnD7fSjKx7yNudMZWx3TVHs0CjfWznBeCj23LusSS0rjOmwpRE8SVLtWcw/enKZWR1PWSbxtwPl0jYRDFLXrespNCbvGw0/1wxg2HfRdAVcsEw3MR7hlsif/63setD/6J82HE9EktkxftCCe14LTLGMJpd3oA8T1Ikq+TBgLKxNQGIOHzMr+uGy7yZ5iFtgEGOgIuJQbtcGsnnCSANueEXhO2lpRdYmMWmIim+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM6PR11MB4579.namprd11.prod.outlook.com (2603:10b6:5:2ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Fri, 20 Jan
 2023 18:17:14 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.6002.013; Fri, 20 Jan 2023
 18:17:14 +0000
Date: Fri, 20 Jan 2023 15:17:01 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20230120181701.5mt6nxio2ppgsmxl@gjsousa-mobl2>
References: <20230120160615.80554-1-gustavo.sousa@intel.com>
 <Y8q9nJ+qgMqtVKzb@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y8q9nJ+qgMqtVKzb@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR03CA0371.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::16) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM6PR11MB4579:EE_
X-MS-Office365-Filtering-Correlation-Id: 30e7a941-7691-4017-f82e-08dafb128e4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E7LUqbm5EnVoIorVDrX1Fel36XLxF+PBrv1r/+cZbkiLjcHRHY4EVC4BKThRR5vFj9Mdu/2cmaU6rcMnm3UjD3RK2iwOn1NDJDIq7fZ3i43TYXO4I+3vDIpdIEVn5KZfDRmE/0o2r2WiGBaVeBHBSXCEx0ecgrEHT9bgCzbaAzpmEESUj9r5o8uGOI1CiK9idjCn7b0VJzaxp0RVVe3qd8e34XvqbI/yTNQP8MFlaRnRwQQGD1sWfHG0ZHgdCu1VQPZVXbN829g4PX0H/hYimHOLPBGiKXCE5vSb04cDKpRUYU4NiNaiMmx9upUV2cZzvr4iNSPT/NYsDQkOOK6kVQwZgypq44QnlC3jQiZ9ovzwTbXS/BCjVhWl6APQSMeOtc0jax1EYoXKH3DECije6S+7KGzSOnDio1uJUO077eNfR46aAreX4STsh64yVzjqDRy7Tkrl3K5XwrchBF7nrkq1DlSYk37hCnnx85Bkq6N9Ihol7QYdHtUgOYY/RIFG7J5byODMF0Z0KMuXrDfKcSe54Fh/T1YD3LcHxbcwxDL2F7jv7X5C0xm6wrYmNA7aKKtRdPPpPqwZP8ZMs0Lf1tW32RASaj3A1uwlrtxpaNkNyHQQH7lDXkpUle50T4DwjfMZApdm3NWjfBwLFl92+Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(376002)(396003)(39860400002)(366004)(346002)(451199015)(33716001)(6486002)(1076003)(478600001)(86362001)(5660300002)(8936002)(41300700001)(6862004)(66556008)(82960400001)(2906002)(66476007)(66946007)(4326008)(8676002)(83380400001)(38100700002)(44832011)(9686003)(6512007)(26005)(6666004)(6636002)(6506007)(107886003)(186003)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fNVxPEFKKTHIId80pwo8j91lZ4j4OQ0U7jTf7Z056kq2BqxSsG4/unr1h2WF?=
 =?us-ascii?Q?VGpa+vIUNIU8/AT7tuvQrAVrGJrKnEE9pVMk2/W6PqZojIqtE8DPDzJXf/F0?=
 =?us-ascii?Q?QZOt+yHU7DIGgFkddwi/RRZcCClmwZE9RFcQxeHwwIW1rGo50TbZ0GEyIkXB?=
 =?us-ascii?Q?PtXbyAq8yB4Fp9OCqB+vvGMKlIex/OtuYV0+RqoMM/JV9GcuhwcFB05sxBtv?=
 =?us-ascii?Q?Tajyo+fGQIdwsycBQjwpTJ6tyzPar9WTRTulKnOnC1lK9lBKfYDwbAfymX4F?=
 =?us-ascii?Q?uZ5tU/RBcQGY20gfaDL62KjxjYg8oPnZN8lFehfv36EKZFjKAqxh4Qvh9bhX?=
 =?us-ascii?Q?gGgkXpdCpNiwG/cLonv1lvPOPzpX38L92dY6V1fSNb8z9Mad+hIpe/SYnwmw?=
 =?us-ascii?Q?WZ1zaqerTHw1Wy5ljj66/FHHhHi8qdY/0jPgOIkRViYC218vYlBnqF4kWOUu?=
 =?us-ascii?Q?lMZPhl2KCmPtYaCSWaemQiC1lp5qz4cehCOAJ/gUC72egWnhJ7qa1TnzZ88x?=
 =?us-ascii?Q?rtoNLPdb+69JE7TBAdF9CM8+VZV/6ErfoAPjieLwYVYBYiQpvR1Pqvr11JDt?=
 =?us-ascii?Q?JcZ4Qa46FR1c0bXs5WKLnCHjxlfaoYBa3vnFfWOeQlC0xlGeFppaZgYvKmEZ?=
 =?us-ascii?Q?dRJuHFzZxo6xr82Xed/X0mBlLQN4+nYeJ5nyBU9JsbQsLMr7HW9iLIB8Hjhz?=
 =?us-ascii?Q?wqrzgrellfy7Er506fDuvaCmy2EB19dpoDXS8SYyKlJRG1t2iP22yD0JW1W1?=
 =?us-ascii?Q?buSEHUvu/JNPRKLoZrrWC/jQwSCU8NkUPeIFid4j6GaxmFjJ+LOiEf/IntT4?=
 =?us-ascii?Q?UdUJpgK4S0QfIFOu75l6j2sN6SGj2o+ECC2hfIgrRIRMQf5cfR+c93JLh5EA?=
 =?us-ascii?Q?byTgEelcCiN6t8pPC5Cs2RfD1NI+7132cgo8g864Y1LfjmcyTJEDpXjVitqC?=
 =?us-ascii?Q?X4V9YnzZuBf/ideeWU93tSH0wX/6rBfsZ/wfYUVQBYXeTGJ5eL1gpVEKuzwf?=
 =?us-ascii?Q?ywR/R7o7ODJkS6RCv0cj055OoOXEg4fFLXSJrLs4FEcE7fPj2TQnJt5T9stV?=
 =?us-ascii?Q?OPA47OlEo7Rn9tjY7cVoTOQkg7TI4WJiRsN0BADUzNDrBQFf/ivCwbj1BSFo?=
 =?us-ascii?Q?XTSaJw2n4oImv/c62AcqvxZeYvGOXdMtqrW4nPSRKHwpIjjO+j5br8mHx0sv?=
 =?us-ascii?Q?JLldtjU8Cy2LGawb2nYX2VWCWwUtV506lTgiwJqXvrNcuEeb9Pezo9+LqZ2Y?=
 =?us-ascii?Q?Ipl9A1Xc7vbNoxLn5Fy2q8UXxMHwsEsas28qDXFMOe46UKttjIDuYnPiVhLO?=
 =?us-ascii?Q?NUOtCPpdJE8zwTHei8Ep7fUukjji6ruQd40bBxyYXvMMVXI+DkY66RBKcAwV?=
 =?us-ascii?Q?3sepra0NJgD93A0hOHPNCBrdDrzvkdPjOb62UqBtVk1E+Os0CZqHYDbeYtyH?=
 =?us-ascii?Q?Ev36Zr3pxWOQQdB48Z/z6EG//29j57xA56Uq2glhSqTxVS/RB7y6Y2gcFai9?=
 =?us-ascii?Q?L/+aIOLmZa4YSC6qrSAyE1TL6ZhCfzJrp85O/eeYpRpEY2q7UMHGhREOkpSG?=
 =?us-ascii?Q?9AmF6s2u7AsNEjv+hdpRyCsReWnM2Rs9B2XBMScAE1FbYToAJLKCX+DnQjiK?=
 =?us-ascii?Q?4w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e7a941-7691-4017-f82e-08dafb128e4e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 18:17:14.3432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5orDY42kdMFMusVzGXP282DDdPHbbbkUnNFP4r7/b+MuPIsYz7byjUE3MXeqIA0mzpnc2vWf1DUaeqwUSQF9IQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4579
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Convert PSS_MODE2 to multicast
 register
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

On Fri, Jan 20, 2023 at 08:13:16AM -0800, Matt Roper wrote:
> On Fri, Jan 20, 2023 at 01:06:15PM -0300, Gustavo Sousa wrote:
> > That register became a multicast register as of Xe_HP and it is
> > currently used only for DG2. Use a proper prefix since there could be
> > usage of the same register for previous platforms in the future, which
> > would require a different definition (i.e. using _MMIO).
> 
> It might be worth including a quick note here that this oversight
> doesn't actually cause any functional problems on DG2 because the
> workaround-only usage of the register will still wind up happening in a
> multicast manner regardless.  The fix is mostly just for consistency and
> future-proofing the code.
> 
> Aside from that,
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks for the review, Matt! Just sent a v2.

> 
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Matthew Atwood <matthew.s.atwood@intel.com>
> > Fixes: 468a4e630c7d ("drm/i915/dg2: Introduce Wa_18018764978")
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 +-
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > index 4a4bab261e66..2727645864db 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> > @@ -464,7 +464,7 @@
> >  #define GEN8_L3CNTLREG				_MMIO(0x7034)
> >  #define   GEN8_ERRDETBCTRL			(1 << 9)
> >  
> > -#define PSS_MODE2				_MMIO(0x703c)
> > +#define XEHP_PSS_MODE2				MCR_REG(0x703c)
> >  #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> >  
> >  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 918a271447e2..4efc1a532982 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -793,7 +793,7 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  	/* Wa_18018764978:dg2 */
> >  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> >  	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> > -		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > +		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> >  
> >  	/* Wa_15010599737:dg2 */
> >  	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> > @@ -821,7 +821,7 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
> >  		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
> >  
> >  		/* Wa_18018764978 */
> > -		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> > +		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> >  	}
> >  
> >  	/* Wa_18019271663 */
> > -- 
> > 2.39.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
