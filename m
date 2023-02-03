Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5793B68A712
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Feb 2023 00:52:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C1810E06F;
	Fri,  3 Feb 2023 23:52:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20E7D10E063
 for <Intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 23:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675468347; x=1707004347;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/zc7n7qVZtnp19LZHRf8fLuu5q8y/Js7gAG0G0PPf4o=;
 b=gZ0dr9NacN4EV0tVQQuCMa47Frffns+XTlDrCEBsxjvmAugrSylpm7sE
 hHWnHdQZQP6gd0VotWAPDx3RMHVZ+8+EnhmsjM6GPPm2Ptxkb4M27BXDZ
 kHNw0HgggoA1jOnVut64RJSVtWx3uNvgIXOQLW9tYg3n82SlyIuIr8Cok
 fkN8GY7xBFnsPOmOsZD2ZKfSDkXnPyuTKs1XJm85acy1uT1m7lUnlkcOE
 OyBEnafZDeH8VSk+2lNyhUxFoYFo5vWLWiM0kx4739pPBvNdgYnFj+hbQ
 /hFTkwHgkF1OdR7RwcMQE/NpdXDHPoJzKG1XsTIq6C9foRfwzUj3nhSdW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="327523965"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="327523965"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 15:52:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="643430509"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="643430509"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 03 Feb 2023 15:52:26 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 15:52:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 15:52:25 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 15:52:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 15:52:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gqFxiKGLSleMyRB8GCJWIO4qe+bAaEyX5xhrYnS+JSLARcXNiBoDK2rVg24ida6TqW66Ys9prdXHpt/M0xR0Xgz/8sn2AQ9LKA67ax3N1++/25SfMBS8h1A93AS43mV32Y1FBbKotAYkKpRP2clu6PoRHvN6kERdMdojkko7gxcuv3XElwQk1rWSJ8vXPcwZ3Hu31akuCVt4nO/s5FdsjUKesofNcXIkMxbq7KGPGmmNx8V0svl/hTZbKwZpO8YyaApLCKsYdQahyVfzeOWCQh5C/t+ZDYgNiLCFJf5m/0YyaJ7JO4Cbw+5K6lxDImmpcArVKsjHOH0In59jfORN8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cCqjRqDRr+/rFerQcmxIPgSTCfH8L0IyHARtwkUmJDU=;
 b=X3JcUTZCZ/9dx90x2lH/WjT0UvQpeI9QzLVeofHLqvD4wnR+07Cz6853BcU2pgkxn3LLQcDyX6PLmsfvmJMDxLWbZHD04C4zVm7u+8+7KX+gJOK403beFpj3Dvl0vbtYnvtVIgAWwWIYUEbidWhSwLYWdp4xGsvtM3005v/f1B7Qgix5fpWObXE+Qw8Bio7NmRWSiNz4AsDsVqUrHo9LsVNi5CpnPNVw0Uws4sd9rlrGvr6gWS53sTJvrPnOIvpr9DLqLP28ikYBasXcny2pR6l2eQYCoSPZjoL6wSZ4aA5LboxEva6z5XukmG/EM52rJlxDuUnKc/PvJyGKwSgKTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB8091.namprd11.prod.outlook.com (2603:10b6:8:182::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Fri, 3 Feb
 2023 23:52:23 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%7]) with mapi id 15.20.6064.031; Fri, 3 Feb 2023
 23:52:23 +0000
Date: Fri, 3 Feb 2023 15:52:21 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
Message-ID: <20230203235221.3mco5qq25va4labh@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20230203232020.1395644-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230203232020.1395644-1-clinton.a.taylor@intel.com>
X-ClientProxiedBy: SJ0PR03CA0085.namprd03.prod.outlook.com
 (2603:10b6:a03:331::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB8091:EE_
X-MS-Office365-Filtering-Correlation-Id: fe0e0175-69d3-46db-c216-08db0641b213
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p0j80i5V9v9cHYYf2BXHsA9gkRP6qf3/jgTJ9m1/GxSNDVnnb2bwsRZ8PE7diJp3IcTLb/wY5f8qDHLTn4Vm6lBHpLHCCFei2M0lTl/vGMwYxBPhaARuQ5kQYf10yhxHpIbEqoxTvBG+Khs60+Cb4EbbfTCN1VPiakJ7J6xF1vXFGOKPZRwJLicaFtDZbp/35WPEHJ49x/jmjq8yo7/XhjVPKsWzfvICzE8WAyb5A3pmVHdCAtiSyCjZRvfJXBjxQRrhLJIdAbLTeJRYEmgivDSJhm6WVTdNxxODjY6xJYHrKBTFDfgPGeKjFVkdPn9DnthZD+2/eTWn04u/xKP5EYNetML6raG2hj0OALOGnUJ04koflnnm+p+6bEmfViPJN6XhAF/gUZhg/OPlq6oVYw5S7FtG6rd4wpdVvmiqpB5Kma5EScwWlNu6eCBZ5gSya1G+9bthCjYZbmzyTr4qcevJOpD6hL2eJexcQ5yzeLxXq8VI9EGtPIGKVO1nBF0AtJXsny1gVRTh2zxJ9r2dZVEwXvutCN4uPMQNDErSS13QcM5vTDSwdFey0fELcnMgiaTevB21XNiuAPnxNM9khDihQ2rxkofYMEPIT5/HJV5ggLzr84g9Cz9IhV08YvNqBz37O87/WkK6GuHCAXs+8A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(136003)(346002)(396003)(39860400002)(376002)(366004)(451199018)(8936002)(5660300002)(6862004)(66556008)(8676002)(4326008)(66946007)(41300700001)(66476007)(6512007)(33716001)(9686003)(186003)(6506007)(1076003)(6636002)(83380400001)(86362001)(26005)(316002)(82960400001)(6486002)(38100700002)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZiRBIn/SOmp4eqhp6rBEZU1WiMfK3tlPnKAuy5ahMQgbtMRQwV4+MfaenuNf?=
 =?us-ascii?Q?F16Thhc07WIyp1rTHWd+QCnpwTaqYoBTPev5fdLf23JvA3qZAC1gpILI9/l7?=
 =?us-ascii?Q?qrqksFJJ4ch/1N+DvkuA5mmjyZmWPrKLQHH1ETeWXQij4Bq1yz1yxVqjb9GU?=
 =?us-ascii?Q?qn1FmlyPJ47UpYxctOCb5AvX4s602UUV0SqMDmKeKv9FBN1pSdwMAPgP1f5k?=
 =?us-ascii?Q?nZIp7X8S2VeN1u9sSiZHKesaY0U1Qgk/p5EjCq1ABv1OOkNR29ywTxXggwdW?=
 =?us-ascii?Q?wtnUPqWsjy7ZH7bPGIZ4C48xBvfDK3HUEyGK5rtPMOnZlJ8WngyGIeqKahGq?=
 =?us-ascii?Q?/+X6r2peUhKjE2/w/4PUY4DKuo6RmiOW8cnJnF0a6JuwgD9Ricnl1oY2BF0L?=
 =?us-ascii?Q?Lk7tQDYgQtAdnGMR79pG5y9MvnVAUPqDqcn1Y/2IEnwmH9SbYJhE2qzuTIZs?=
 =?us-ascii?Q?RTJESwRINXT/fpYH41lW1I6/cuGYT25RxQpnbfHaxz23ERwCkPyMsM/m12V5?=
 =?us-ascii?Q?phTci+prGD4xUNZKAHquPvBd8fXKR3dwZ3TagbmfrzsDlRGxlUgz1M0izvh8?=
 =?us-ascii?Q?mny9Og0kR9ZHehixHGG2NJ4MOsgbaIf6HkMF2X0MvQG8uD1iybsGWb7+xcEu?=
 =?us-ascii?Q?T+hwm0QI8xvecVCnpw36sZzor3Oh+P95O5UZZ3ARiQ1xSEX4Rqqt7/R6uirJ?=
 =?us-ascii?Q?q7LphdYRxF7FSLwxNQxXK0pqXAFnYyH7jm27bnnMbuwAnZufnX7zxXyrOUr4?=
 =?us-ascii?Q?OLDmczSkctjL5bi1fZVezkIJTXUDFrXvjy6Rrv4X1ClCf5oQ/x15l+7P1lw0?=
 =?us-ascii?Q?RU4fzITpIv1EgzE/X6hjx9d2O6r9OtzF/CccHebp6De+ffF1p/pIF1NN0dLN?=
 =?us-ascii?Q?2c95lRkzGIdYytqG8wPlLHPA/Wnhn6pw7+DKM2Bo50Obdc/byVUeLSRFrXir?=
 =?us-ascii?Q?VfG4SISV3R1wroXa5a1/KFYQiwDDvfKG7ODNObYc0xW6AIXQsAptZCGKJEgI?=
 =?us-ascii?Q?VCZp2bnG7s0NhaXuusGVsDWIbTAtZHc5jPV2DLly8H+HHf2cOzPgAGl7ZOLq?=
 =?us-ascii?Q?/O9gzRQhC8PnJKtQ71J3hjQu9WN1MeuZaCMYobEYiPangjDKCkuj2MJdombM?=
 =?us-ascii?Q?/9WQ+Bh6H1PO+InGF2ZoFZBOBYOSntmWc/E7JwYsn0ULs7EpXtZZe22jt1Sn?=
 =?us-ascii?Q?yQcx00aUC1PDSeqd52NVevhGIGzvUUu+TWOvWOW21vpmKPzkNbU5DJp9wucw?=
 =?us-ascii?Q?W86UlXf4S63u2hLZPfx7lzYQ1+ntyiYBmsdeyY+EitXFAfA5dfchbJPbxH7l?=
 =?us-ascii?Q?0uclilG/1JDTGq4jaartlAn6DbhPocaBzWSxA1WVxBh0q9dAGjB/ObQ0+nQP?=
 =?us-ascii?Q?Xhpru1hydWiLXvP31o89sXfOO/TsYcZ92eruGUODJVU/zXYc9QZAuG9FpxyU?=
 =?us-ascii?Q?Aj6krMfBaZtiZosvpAf/KGCqS/NY3R3tQVum3cOzPW+JZcYv2SjpewHLXK+8?=
 =?us-ascii?Q?g+I4KYJ3HHCEo2o/S0h7pnOl1nN7W0MiD912YVwAjlS8ACyu0jLTTUijcnwQ?=
 =?us-ascii?Q?6Ad4P1OUPl9PK5vxtderajoMiFlAyDi3Prj/wu71W/AzJoHEG/9QaoskYrtk?=
 =?us-ascii?Q?Cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe0e0175-69d3-46db-c216-08db0641b213
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 23:52:23.7086 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1apZeJ3wTo2PrhsOPe58jLs+bo6BC7OFR2Va4WcWfpf5V4K4sJIWWdQob2dcbGduxL+2qOyoeYRg49ixfJqyBGD6TXiMa6//ufBLCAGXaXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8091
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: DGFX uses direct VBT pin
 mapping
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 03, 2023 at 03:20:20PM -0800, Clint Taylor wrote:
>DDC pin mapping for DGFX cards uses direct VBT pin mapping
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 5 +++--
> 1 file changed, 3 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>index e6ca51232dcf..c1fcf4d53471 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -2189,14 +2189,15 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> 	const u8 *ddc_pin_map;
> 	int n_entries;
>
>+	if (IS_DGFX(i915))
>+		return vbt_pin;
>+
> 	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
> 		ddc_pin_map = adlp_ddc_pin_map;
> 		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
> 	} else if (IS_ALDERLAKE_S(i915)) {
> 		ddc_pin_map = adls_ddc_pin_map;
> 		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
>-	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>-		return vbt_pin;
> 	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
> 		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
> 		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>-- 
>2.25.1
>
