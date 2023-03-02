Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F43C6A884E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:09:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70AE310E18C;
	Thu,  2 Mar 2023 18:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3554510E18C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677780549; x=1709316549;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wuetKYw4raf/AE4Jy/DN324U5lJZthLAaGxU7H2c2TQ=;
 b=CDOcUc9RN5jXDLelhe+L3yHbAojSkiMhUKlJvWqIpr2AD3uA7t5pTsO1
 K3ytJfIRyef18uFGZHsopxwH7Ss7qpmf0Kc5Mn9DJjfHTiUS19IDQOGcO
 SF/ZLVM5Q9HHjes14WGVkwcoGY41/BgA5FzR/7KVtDIJVfoOxglBBHO7N
 AcQNKpl0AhngT53mZV54e4d8TMjwqDFXzvkOBttYSX78KBKiGLcIlJ1Wr
 nORwwYnS3TRJYj6BHjMhSppBHOIi3gjKmpnN0VJWeQrWatFjGWH3uGOxT
 52sgIoPcGkneMQrocIn4ISICMIcrJgin7Tfs+YKswVXxs6Qj/PaZ850bR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="397395878"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="397395878"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:08:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="668347389"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="668347389"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 02 Mar 2023 10:08:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:08:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:08:18 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:08:18 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 2 Mar 2023 10:08:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EvcmhbCo/N7thCgwqfM+o0EempQzTu8Yr1L0Mf3Cl11V+9BW86UIMNwSyCUsvUABBVw6BAuzlG7Pa/FxpzgBs0g7UEWtVV6puuU/r3YuBHrlBdS6Y1rKNTqOLrYxFHYqb+jexJ0VOa6ZguGMZDesg+QdzRJ7BMnKq5K/XhsedD7/8+/wJjUysa7KslP0gbvKB8Lrkybs4FP+QKQsQCxYkkp9a8Sb0uQbJ2iq7lpkOuSja0h2nrBMywCF4CqLDwRs2xWAetQRZo7gNqgGe9f7WSPqLN0MLDsicwqdmY9VWOgQ9hpBjqGJ+CXOMaiVV4yp/4MhrL1hjD4B3MdoTwXQbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=00yfzu55m/1pQDD7n5CrLm421+ArxoaS2R/xEhtDaK0=;
 b=dSPpQK/iqUPnUulzPWdBzd74ys7EnngWNJMWeCI77txSWBO6b83orSFE5iYdscf5g4QMqGUDRvVF7x0P2kiHOHLo0NwKAIa8eW0FdHf4AaPBBYhWet1vxpwJKk65EA6cei5gg+jM2Xgv7VTpmH1G0zHiXRfZfLU4j68974Q7rLrsKJDQSoW+XqDlW6dMsGPY0XeI6b0MbFV86JxfsQNcU2xcpqh7lI61ULZKd2ygwLT2puZe3T9wA/ADeuhB5XVMtETe7k+tB9jc8Ay65JYfohz/CtX3WmNMQwZtnFeA0pFvY2oCNI5ASTczv7X909nwSwkjOChUTlP94hTE227jpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB8227.namprd11.prod.outlook.com (2603:10b6:8:184::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Thu, 2 Mar
 2023 18:08:17 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%8]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 18:08:16 +0000
Date: Thu, 2 Mar 2023 13:08:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <ZADmDGIJhtimyHwB@intel.com>
References: <20230302150550.51621-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230302150550.51621-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0058.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB8227:EE_
X-MS-Office365-Filtering-Correlation-Id: c8f04879-0607-47d1-1eec-08db1b49188f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bNtTD3GQule2KpVuG4yceokZgwJ/xxSkOdYH+83bmlIM8YiBmf/iV0MJlNjcR1gw+G263++hYH20nqcygSZdYvS7UjV5Tc6KrTbcfXTjbyCV6JyiNUA9nWSZFMWB0kwRXUjSnL64uwmTG7Jg2dU51D+LPYIm0WxpTfbl3aSzT/tVkb8LCBB7UkUUQs3/FsMCfGa1Vt5/MjEZv29uKSR8tgI/D9gMihFM42Gk4P30xO5io2aUp1W2KJr7Uhw1dHrlEPB8/+jmyrVVWnXJ4UsVXVv1We3ke81FZa+Bo2Ghk7TnGKQWq5GP7cT8EEQo9lP+f06F38QP85HwV+Qm0Tu6jlhpR2BP0agsApb2XPDANRrmyZjHzBhbNtgZLKq+CAVIr8ggmiVi2J1JzIA8bjIdKLYV6chuSi3DyJokZjpJCGNKovu/ISu3pnO+1iWiDHqTFh2214mCiNRSTmZdI/x42M9azMEh9WFWY0R/a12TvuvXrdzvzT7BkkLtQSyT/XXgQoDY2fLsnHuzlqN0zERWr/qqo1LvjOpGQiepv1GvaYp/l111QOYT7Pbp2enX18A7bTjYwZcuPH4+PQTrViqnGCh2n5T4/B2jn9+aB8gMiXtoHt14Ca6YdUUFCXM50QKYZFub/vUE3UWIwXmZB9hYSA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199018)(6636002)(36756003)(478600001)(186003)(5660300002)(38100700002)(6862004)(37006003)(6506007)(83380400001)(6512007)(6486002)(8936002)(26005)(2906002)(44832011)(86362001)(41300700001)(316002)(2616005)(66556008)(66476007)(82960400001)(4326008)(8676002)(66946007)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3QdiyuyEF5rYc43mJXxyV0HBTtxdaeVBB96sXtYqpuIfTYjCn3zHrYH23TtE?=
 =?us-ascii?Q?UGiOlGKfp1jF3mjrweQd348QWJZTddx3ICvXrry4nZookyvFR/pR7j0LDxFK?=
 =?us-ascii?Q?pnvX2IseLrGA5P5sw9gvgwGHa+I7+T/l1fIGLN64WeURLwSoxmRkYkE+0/NL?=
 =?us-ascii?Q?rGh/q46Vx1r9h2oq8brn9yQ/Vv3Idyfdl/tmBF9lfnO1YCdiLEQsK/eWtba6?=
 =?us-ascii?Q?hraeTXj/dC9HBJlyAA74gia67XlnQT6DHSUxUXASQ2MPC74kYic1ChlYyfkc?=
 =?us-ascii?Q?OD+VceGBcdK0J75PRXOAQWY8yjqsEUz2t21O5l1UBKLtA/tgoA3J9d9/QnbP?=
 =?us-ascii?Q?NFS7d8boMAI478G/YnkqyG98My2qSJUCnNC2bUMNVrPg2CZryi0D+6FSfXqR?=
 =?us-ascii?Q?M1CQJ0n/iV8hmge7fKBypfEPxMaT7onSiuRuS4f6BrOP2j536iTDWyCBKWn5?=
 =?us-ascii?Q?lF3yWFE+EjrRlNM6rcYZU1wh4Sza+SiPSOMrsaFPTeo+OMgpFT/fJY/3nQw3?=
 =?us-ascii?Q?fXZJDoaASAjDAtMFxtBBKEJ2mtVlOo8Ds2CXtWqvs655ffHo9WLFZ/0ZCfT1?=
 =?us-ascii?Q?FIfBBDBKpp57JQ3BSb8nhiSDZktKwnWnQILqBgykFa4khIzD2JKcI0Oq3IIQ?=
 =?us-ascii?Q?ssVb912U7R3ZiNmFEhXfwh23/0+B1PFfkwZcBnRDaVFVHxNdj/C4dKwstqU/?=
 =?us-ascii?Q?Ty5bmj3HD6uvDgSeTQPmFFsrMPY2E+aW//3XrK5T7KiMSNW+OhJWwPNIOyRO?=
 =?us-ascii?Q?4Vq/x4phf0EtSHecuveLIyVlkRyAW+4nEXQ0LBEnlkFDn6i+PoWQCEvCP1HH?=
 =?us-ascii?Q?JvGAfdu5XsozaGsx7P80GaqoWNQQ/aiYYzBmupbG7rcw+SSZ8+bmwQl3kNd+?=
 =?us-ascii?Q?VINc30hNm4aZZ+uCso/T2Uli7laRzD6g3fL40EttkVK/jHOdQLIU+ZkSCad+?=
 =?us-ascii?Q?XVqbc0FTirmj5v9kxUWa0pDhuOOhr2XQKbjbSZtIJqsXapwsjmf02krQwLcB?=
 =?us-ascii?Q?DVmQIwLhBi1Wv8da1xRr1oRtjL4NARYX/2VUz/QivTvcfICz5+UA5x2DFR2T?=
 =?us-ascii?Q?4gOv4UYjWw+ypFUhVP50hOGHvXLYmb9WTu1DsBSCs//W0VUqcjTE6P82zqjk?=
 =?us-ascii?Q?tpMP4BC6s1Z/W5i0GQcmwGwRA+yqLD7Owf7CbDTOg182DXDUhAjHuHAXVpQU?=
 =?us-ascii?Q?VQZ9zXNEZ/+ofbKWWTzo8oQQxJCklWyVhHV2bmRLmvMECEFn84Ohtux+Hahc?=
 =?us-ascii?Q?2j/eRXmpN08yPygrJO9DT5rkpqeVhjqA7EJEBe8kG2lGkEsS6eDa27zr4eGJ?=
 =?us-ascii?Q?V2egSH08+SfiTWjTmIL1uOF3NW7xF9KZAm9dr/XGC7guRzgeLlN3cAmxyS/8?=
 =?us-ascii?Q?hzK40pJ6czuhbcKw/oQsgo2WcoZeuWBTd7ANNBLMukHmdBeX6sZJ5bqZHa+6?=
 =?us-ascii?Q?tjWn16+Nq16zCwHo8bdd/fFWt7cktsgsZSnahbnqkVeq8aWlkhIH6DxZNhmh?=
 =?us-ascii?Q?1jgR7opHAn+MdJDMvwgCykWUdnaTGFIPA9EMEuLQpONKsaKJf55VAqqAEb2g?=
 =?us-ascii?Q?JtiQ0LyzxJDIjCcyXSmiZIRFck4rs6zvyG1qB1eQqHQfTGxxLtEITK8rW5Oa?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8f04879-0607-47d1-1eec-08db1b49188f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:08:16.6495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5aLaPPkIwZQwR7kFtLftc3OO4dURQXYIk8oDDoc7PSV+ErlYTnsKtpV5y0Vig1STNuTKy6Q5uJ8xRtkNWAd+cw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8227
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Load DMC on MTL
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

On Thu, Mar 02, 2023 at 12:05:50PM -0300, Gustavo Sousa wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> 
> Add support to load DMC on MTL.
> 
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index f70ada2357dc..dedf40cb85a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -60,6 +60,10 @@
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define MTL_DMC_PATH			DMC_PATH(mtl)
> +#define MTL_DMC_MAX_FW_SIZE		0x10000

I thought the goal was to sync on the display_verN_*_size...
Why is MTL size so different than the similar versions?
If being different is still a thing, why were we adding the
version sizes above and simply not go with the individual platform
then?

Btw, do we get the max size from spec or from the dmc release notes?

Thanks,
Rodrigo.

> +MODULE_FIRMWARE(MTL_DMC_PATH);
> +
>  #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
> @@ -943,7 +947,10 @@ void intel_dmc_init(struct drm_i915_private *dev_priv)
>  	 */
>  	intel_dmc_runtime_pm_get(dev_priv);
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (IS_METEORLAKE(dev_priv)) {
> +		dmc->fw_path = MTL_DMC_PATH;
> +		dmc->max_fw_size = MTL_DMC_MAX_FW_SIZE;
> +	} else if (IS_DG2(dev_priv)) {
>  		dmc->fw_path = DG2_DMC_PATH;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> -- 
> 2.39.2
> 
