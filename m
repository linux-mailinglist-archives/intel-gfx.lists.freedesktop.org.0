Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F1D7FE07E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 20:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 770D210E079;
	Wed, 29 Nov 2023 19:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E62F10E079
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 19:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701287594; x=1732823594;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lRO9QD181nplwQytEGYv1WuSXTb6+bNrUzgMOIftqxc=;
 b=KHOoU9sr6DIm6GdLemMKKvk8KKnevmwJ7gseMeybBw6KQnBfotDoMEFH
 3tg5o0LpPF1T+X2qKHeAmJXuPmCojYziTU7OImeCUTGoiZbQaVrq9P1Cu
 pAodo0UY2fWJVMEROvJQIGiflzk0E/f6Xb0Xtts3scW6SZy8BivAF/3jr
 JW1zSWczz4V/7vnF6fBDWF8kapRm3xKiXLExq2FJXVLLsKxKu0F8/hkXN
 JTq+u23K0UNIYIzumyps6lr5FF08XY9ra4Jo/uNJ9Uf9gYvPJ0cUlf9B7
 6f8cy04HyjgswdVXonc2zVhmCaTXWgp6g22zXroh7AoeGDDfvM9ioN6Px w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="6485249"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; 
   d="scan'208";a="6485249"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 11:53:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="859941471"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="859941471"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 11:53:13 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 11:53:13 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 11:53:13 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 11:53:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pg/25GnRenV6ug9D52RLe+oKYgN2XmVaj3HVUXkXmziR5XJdpDXDo1P89jXsxutzCee+UN/dcFJpOVUc1qfSQSKXsKMUA9VKwEGBXNC9M5JCam+vfXmo1+a/bCWyOwty/NjERSVjGmg3GTM51RUVkLUxLIXlP2dmf27bQazgBoaZ01ySdXeXAn00T3xdcr6o2P9jD6M3uYVL8RQFTxc8rgrHeFM25/NUpKG/PB8+PwinfQo7yT0diAqFP5pNSaP1QWUFmMRPIRGec4e4FU2kWQ2dNJnqeKV021EmU0B1wu/B573woWdB/Ulst6n8AQ6Nxr5fgfluLFD1jRZoupJNEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4k1VVXIz/Dpm7FnajmXgMy0qcjb3LMJycU42n4T9eZU=;
 b=KZCaBqPV5ALc9i83n0SbfZGdpjgRBecNHkSYh4c1mNbBJvDULAl6x6UTFYgDQWhX7+VQ0Eh1Fcf+CadQpFEdeT5aFan99Js36B+Cx/92/0EshzQg09iK2PZpF/QED+/zw1Ar5/9m76XPJ35S0EWJijyi0ZyK/uj3/DAU2cMshFAtf6lBFLTPuiavMxr3rXDrXv32NkkckHrPAJ3eTZIrLo3uji3YdsPpLCV7XuMdzWbXZBX3zDE9aoyWJQQcDi1+6foY888UAv+kX0zMYF924SOe/xSoc8kHXK+b5a1X4bLWekbZAdkaF2eyEhSXcCvQKwaOwdS7qYtEd6dt5+NOeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB8720.namprd11.prod.outlook.com (2603:10b6:8:1aa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Wed, 29 Nov
 2023 19:53:11 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7025.022; Wed, 29 Nov 2023
 19:53:10 +0000
Date: Wed, 29 Nov 2023 11:53:08 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Message-ID: <20231129195308.GV1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231128102451.825242-1-balasubramani.vivekanandan@intel.com>
 <20231128160331.GK5757@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231128160331.GK5757@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR05CA0075.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB8720:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d4e68bc-e9c4-4472-b4c6-08dbf114d0c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vgWT4rvK580pv1vOIrSDYAzPLuaz0LvT0fRTfiXdhA0LcbjnQa46NzAk/s1xqX+hls5qZI1IFbVbncvecKZqg/LEdbpZ/fKRJMXk4y+sL76VEaOC8EjqiKs0BVS70KwYttz18B6DxORlMLcdKqJkkR2eCUMlftwnDWI9KVC+hKZ39X6qSuNoQAXCjJ14WiBd7MMMZOpQ51WrkWJo3R8B+FmvqJAny/cqvxNZ7BEYmkqP1LDs/Oz87o9Irbo/x2j4Smj6OrXUOeZVmGria7atIJor9w6QQSCjIW1Nj/L+hawkt7aHNAgEDtjJ+1xjie0FByVsBwVgYw+nH24Mv8rB5RoJSmtV+3uJIcVmjVZ3J/MZ2MOdAVXVVWvIgsh+SAL1bnCgjWUw7VhnUrFfLd48UCrbdDwnldjaJ6DaFkLCewCF2d600x3LwmP8jjaHFtA7MXg4xM9iEUd4DtB5sK/Lcfn503z7dK/GqBqoCHavB7gwvg+691ojDgnmuNMpvyKe1bvarh8rwY5GCI1QaKQb6UVjc5i2jzLpxphk107PpwP5QluMJE67B/wW8iT++/uG6MWVtphlp3Q3+MiiKG2n2JCynYY/TwUbjiqxmL0pJxWVo4ssFjRRaE02s2JwLY0x
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(376002)(346002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(38100700002)(5660300002)(202311291699003)(33656002)(26005)(1076003)(2906002)(86362001)(82960400001)(83380400001)(41300700001)(6486002)(8936002)(478600001)(6506007)(6512007)(4326008)(6862004)(8676002)(6636002)(316002)(66476007)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F58ug108z77eCus6rBACXARnNqNEg/ROY92/wyXql9tN99yneBLJI7o4drDF?=
 =?us-ascii?Q?LYI1pJBonZdL9QYLxo7nazzRU8VIKsbWFNGs1kO9G0riE5c/Koss309RuLud?=
 =?us-ascii?Q?UfZFWbn4sQ6DIlt2dP+OIawohVzokUuLQ4Lj9RMRI/ujpATOL9Il5Z2CVfIb?=
 =?us-ascii?Q?TjtNsUoZ4t+mbztbTmcuDMlVYzwgHEtW4UezDlI/FXN50544KvoOX5kY7h+n?=
 =?us-ascii?Q?PCZGF36H8jMfcPFY73MYFM1f+LG78Tc94bU9B9elApcW1N1DmUqI7l0YDm5C?=
 =?us-ascii?Q?l97mJF1klXZV+JEcPHCyBU3V4E9Cs5lyAx+wVckFXqC8qZAW3ntxHLOMLITQ?=
 =?us-ascii?Q?ki3mDqkTmR5Ujikcz36rbAmYFRxWv2E8DU28l9T94c52SSTHKjEedL5YzBDw?=
 =?us-ascii?Q?uNjtoMlfdGyaZGALUIeNtDsj7THAXUTLsMtjnYIzLXjhD+8sWOGNCDptHw+T?=
 =?us-ascii?Q?Pqx7vwlB4Pt9jOtBJntuR8tlonjF3sfAGtKtkujiXeHvW5Sxf1SMOarH7Fgz?=
 =?us-ascii?Q?sGHbc8NwwhKwdn5f8+vYBo8BFgEvKylnKWBcnAZYzsuWni6Kj51gLcVpxvrF?=
 =?us-ascii?Q?9WHRLnKfStrUYbyWku2H3tgjRYnt4HIIatoFklJ8r5aPIG7IAM7vS7nMqFtv?=
 =?us-ascii?Q?pAiR+SFnlK4wsMp18RraruVT8bkJ2IL7O+HQhixhOijY7wWPQqUGbIOEJPE6?=
 =?us-ascii?Q?gIQpoJb5APJ5vxED7AhWo47KnYPgoCmFDVrn46GiQ3/d9Nw6XyujwJ4a36XD?=
 =?us-ascii?Q?AKvOHBUPPV1s+qNAZbp7Nq4+BI1kxdiSFtxZYvt1ILEj9h35723XhpRukU0I?=
 =?us-ascii?Q?pI68vsMZrVnkxqSVtRxAa6lJkro4uCVJHNva7N2V+q9WnNTKGs0eoEsVC1EV?=
 =?us-ascii?Q?YHkwGBfbXGZM8uNYVv/K+FTx/ZD2v2qur3NiXOsZ+igkXUy099xeaXv3756/?=
 =?us-ascii?Q?a2ULvO4n8cF8WkvNT379//HJ1L5ZFtY1qzTeUGjxntwteDPj3aU3Uv1XurLT?=
 =?us-ascii?Q?8YArawavpshEkja2T6ixYDl7rbA4Yt5RVze9CeWnAN7vM54J7xMhYHSdZ6W7?=
 =?us-ascii?Q?91ghhYxb4QL8/Voge4vRjt5IYEzlVJ3zjFBoX3YuMg0q1y/oirKPTUxlNrTF?=
 =?us-ascii?Q?YHtB3sir3anJD0Dy5DHEw+RqGPgcHNX6TPHjQKQfP3V4RC9xElTWmaBjwp3F?=
 =?us-ascii?Q?P+eJ2MwaOWaj4KbQe43CG0v7YkBchHrTkhVJwYAMHB+ZcPKjKchULr46pLLu?=
 =?us-ascii?Q?DcjnHkkXER5Sx4KxWwhWedoe0NhmmIdE1sg/GiclSCaW6uLygTl5NMt3F518?=
 =?us-ascii?Q?AqkO2ZuUfa2eo++Mea5ruMTdkRWw9oHIi7DOYo3L8UUvzuSIDd1aU2Dtf/XJ?=
 =?us-ascii?Q?gKs05R5SKKv3PC5M6kMLcYtV74ESpJDlLcwPoAJ68CQUVLZasumSg0flN5gR?=
 =?us-ascii?Q?BjXZgN58Dd1m5yFFPOYmCoQjeM62ftx1LxsqjxMVVB1McARlQLm8prTCgkwr?=
 =?us-ascii?Q?pb4uGVCzetodGQT2rk/tp0AG5R9w9jfXva4ImMFZ8uFrXrSvg3Dhc3v3KGU1?=
 =?us-ascii?Q?Wp3QoThzTDy9pJrWuBHHm6LWwxDJIO6j6gid23mbhy++cOfasIT7OX5be/X2?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d4e68bc-e9c4-4472-b4c6-08dbf114d0c6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 19:53:10.8471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YPL9P0MKgvhMh4e/sItGpKU6U9mrCnn5L+Y8usfKj6qttjRLUrP4zEi+Qpw0pFqqWs4ZkunPFf/csKKMQsRtluBc0p2IColLptxo9V8felo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8720
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix IP version of the WAs
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

On Tue, Nov 28, 2023 at 08:03:31AM -0800, Matt Roper wrote:
> On Tue, Nov 28, 2023 at 03:54:51PM +0530, Balasubramani Vivekanandan wrote:
> > WAs 14011508470, 14011503030 were applied on IP versions beyond which
> > they are applicable. Fixed the IP version checks for these workarounds.
> > 
> > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

And applied to drm-intel-next.  Thanks for the patch.


Matt

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 18ff7f3639ff..5f091502719b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1697,14 +1697,14 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
> >  	if (resume)
> >  		intel_dmc_load_program(dev_priv);
> >  
> > -	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
> > -	if (DISPLAY_VER(dev_priv) >= 12)
> > +	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */
> > +	if (IS_DISPLAY_IP_RANGE(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
> >  		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
> >  			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
> >  			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
> >  
> >  	/* Wa_14011503030:xelpd */
> > -	if (DISPLAY_VER(dev_priv) >= 13)
> > +	if (DISPLAY_VER(dev_priv) == 13)
> >  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
> >  }
> >  
> > -- 
> > 2.25.1
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
