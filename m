Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0E75B0FCE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 00:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7206F10E8D1;
	Wed,  7 Sep 2022 22:28:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2426E10E8D1
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 22:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662589731; x=1694125731;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tkr6xWVxXq6s2fb7P0oGHUmyn3sV1j9ERdWXrnCnVvw=;
 b=I/YWjmVSjIQ3zdYPBgletqyXbkIP9mVDYptFpwg1pYrwZfT5eTaLIM7A
 VrsR6UxaNrADuYVEEV0w7Q3+RGED3Sk2NCBfF327ThYmCbJoivgED/3rg
 ZGT8NaBaZcQmxD6DYJMwE1g9OblntROUt0WJc6bzUDKyEN7JkZ0TI8AV2
 AllHbN+wbYzVPkb6Q/Mw1jQV/wGeyanlLopZWipI78l1ZA7yYPjJ6iAWb
 66LNQJRhCUh/eYxI0kmhFtN5AEcM5MMixnTKqUyskkTE8TxPSyg6qML4v
 Lchiu6LmUJCkrvIVcj5SqWjHUZA2AK1wW2lhEjmGpgYlrf1qYeeH7EsQ1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297012578"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="297012578"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 15:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="614657470"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 07 Sep 2022 15:28:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 15:28:49 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 7 Sep 2022 15:28:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 7 Sep 2022 15:28:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 7 Sep 2022 15:28:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OkToYNOERmvlOkXEmpmv7yuFEkO11gp1B7cxfxuqR8nHT2NvGv+xP8cOUElGAoRv6/WpOZkzYaIUipRgHc+j4SEwzF0U5OLyNof6Ky6CGsoI7Rs2Qyh3xWk/ryxtQdzRYGcv0CNrPV1RPxCi2zdebovPxXXB4l0NPjxPoNgB3OsJTGrPjxf2xIw31H1UzxUtKS/kNSYogHUoPBtrHAp9tVJsaK54pMNUENHd594AygMzbBroRGkfYUAqgpqS+Eucp+8AwG7qPCQfJOxOmmxPcxVmVsJyovXNQrXdQ7FJrOa8Ay7fQiexqm4gpnLosr+DPN3cWWAvpYVkk/901cwkCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jRvwolFq62qWePsqPjZ4PT3mifrpZaniUxJydLAnfF4=;
 b=LDMAFveriq52CCW8waF2wonggeBykFurdGhD38yLIydB0853bDojPm+2hctpuC/exyNElYUSyRSuEuEmeWmRDssBztYi2YHSsFClT/CcujIbricOOxlnw43icLyfNmFObNE5FWTjLKUTgS1kl0+xBXp5eJb3weOw+I3m9ER3hbgGBfgvt2sxlMWSm9n78SYn1ZYtXTG1hb1zSAo6iS6g5sM5HCrukwNth4K7X2Uew7KT7dz4Dz98+K48HgVzGKjByJG6XO+MD30onNldWBgLbbkijlXleFQ71rIf7luLlY/ABDazNi4BXI03ytmbJg99q4Up7LYq6bwdcKK638AHNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DM6PR11MB3305.namprd11.prod.outlook.com (2603:10b6:5:5f::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.17; Wed, 7 Sep
 2022 22:28:33 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5588.015; Wed, 7 Sep 2022
 22:28:33 +0000
Date: Wed, 7 Sep 2022 15:28:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YxkbDoro6AFffXNe@mdroper-desk1.amr.corp.intel.com>
References: <20220907202606.1640377-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220907202606.1640377-1-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0198.namprd05.prod.outlook.com
 (2603:10b6:a03:330::23) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9fe96a4f-fc2f-415e-aaf3-08da91204c2b
X-MS-TrafficTypeDiagnostic: DM6PR11MB3305:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QkafoO5hNS8MvcrX5e1aGAcVgvpnIvQlI9nKIspOjuZEvK8w3mwu8Xg7xPx/66aLhkzvRAQbLCcr05F/mQjLnFoiPtHQG7k5e/5Mrm28nkneXDMJIYELUxYTDsIBvRPYbjZZ3NOISm1m5MFrj3ebqXqTNwVWqQDQdcAYGbILpLyqneczei1WQQt8B2Oz1w5mHLcT6PD9Ct9S5/sRrRlSSf5cUbLViU20lpRp+GevCWwKRvD8X/BqIWsN6faXYQiXpWUituAEXxUU6x2fIOeAon7wvBI4AdoF2FS9LO+dx0+B28shfr3Vt77xKU2xK8UtLUmxJYjiyJ/4z04F3WKUZX8gv5Wqj6VjeEReVwInooyQvpEXf5tips/3IHlgRmU35ajQ2tz+58LxLKFixEGGctzv7JjHCKuzYaLZA+Dfh8r2zPYSL8sbUNBQngQHLgsW+UJ/cFwTOTnHSethNIAOWQJ7E8lXB6RNyCiXkPiFbwLID+5sBWbxBr2/BYiwxLBc8ZJpwrULIYHcaEYlt3On1joYzIuH9SzLuwtJMOEkWdKed6KhWc1WoQwcr8Dh++LdqNHG/puPm9nZ5+FmkPS/8HehclcojKziBbHzmlFJcADoYcgM+ETUWs/HgTc+V4pdzJm9tFEltfHSyyd6yRxJl+P3LJQk9HV/jLPmPWGBT8ooY7lTe+jRj53gnepo334/4iifsqu/yqPemDVSn+D/NQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(136003)(396003)(346002)(39860400002)(478600001)(6636002)(66946007)(316002)(66556008)(6486002)(66476007)(54906003)(2906002)(86362001)(82960400001)(38100700002)(41300700001)(6506007)(26005)(6512007)(107886003)(4326008)(186003)(5660300002)(8676002)(6862004)(8936002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y3JJ88TmJlCsQESc6Ur2M03j0ndofft4vhD8NnZ8EmqQfyTf4cnvn4A7PQd4?=
 =?us-ascii?Q?nCmExRBLAUlXLahmCjh+ZFTFzF05A7V3DShkdxie9N7Grdpif7KG0uqr1hed?=
 =?us-ascii?Q?f1E4cAkLitn5hGKWXhQ37Vetk4C6AGodEHoTaPR24b6xDdhy4JxEyrjLhVuj?=
 =?us-ascii?Q?wIvfsANBrWNaHUqD3ZYb+SkAWim4javg9clLwicu55bPrzyfh/6bHG9WeMbZ?=
 =?us-ascii?Q?I1ArlwaV5SOdeWMZQanb1f/uKjVYlPBkfTBzgl49UsUW8biTqCCfv3KHiknv?=
 =?us-ascii?Q?gtPbedeBoNwM7NBY+6q7eKblNQylFjTuNFVXRT/t4dXxmHorzG22ZW0L3QIV?=
 =?us-ascii?Q?xyXc0o0AwOR2acM5L2zSg35r5ApBoFK8hzkg2hSDCUP3BpxMvrRiCBAu9uNb?=
 =?us-ascii?Q?VaPkchVxh/XKSKvt0wJRhUJaMQmMq4CB5XiHVEeTQ68Lt0EUmJvzHbb0Avrm?=
 =?us-ascii?Q?07Xqc2iEawJEjUm8GpKLYW0dJi0xPZpsgz39kZj9ALbJSxmmNfAq0Bp94qgy?=
 =?us-ascii?Q?UUvbC2IWnAcCCuNtvgo/3EgwrhOyV0hRZLAyCXt8vD9oCEmJJqdOYlsPbk0Z?=
 =?us-ascii?Q?ldfm2NBRXWSzXqkZix5erQmsjIzTd7sqAMVATYWUJNvhfn54b1Lv/P9wcYy8?=
 =?us-ascii?Q?ZyNDoH08jlzF8KsqTTptW5jfcYwU7RHVQpDvBcuPikoA6/p8Bh7kx+CJLm7N?=
 =?us-ascii?Q?JqeKfq9PxeFkSyUtbkqGONZNHsrE4qRN/MYYMYQH1E1H+HR5zqvDyJOyrviK?=
 =?us-ascii?Q?TxjTO9R1I1s5giX7LovxBqznfgKlRRqQX4fxnZH+zZoTIgG5rGNOFWIonaLT?=
 =?us-ascii?Q?JPB9KZOu0rr9E+wCJp7LBs2RwGD1o/0ouHF0mDhYJmGcmBV3G/D5tZG6IylQ?=
 =?us-ascii?Q?MYh8ExjwFxplXtEmI0xLmgV44PRAyEn/oX5nE+gMqGPZYrY3CXu8XZb6CdC/?=
 =?us-ascii?Q?b7QhGawMKphYiqXfz9q+nfmhpqM0dXEFYVozrVj1LNMpqCB00YUhlE9k/XWh?=
 =?us-ascii?Q?vrUCcJAj3rb9seSvOf+L7E90d0/YmogE6NVVCpI1Zv55onQacn1OLKmivvse?=
 =?us-ascii?Q?anJ51ztwFsIvZb6Yix/7/iFu2wvq0cTT0xdabtlvlFvjtI582U9bu6c5lQX+?=
 =?us-ascii?Q?57C/TJOMum3e2zRJ8OHokaou9CF56E0npl5Zu9hq7zMarCQKvY15LWeumFJW?=
 =?us-ascii?Q?2eqJG1sAmrPmErF44wwkBdifO40fmW0wn0SkhAQMHbRkoOSJaT55E8QfFWaf?=
 =?us-ascii?Q?1xaLoMHvrycouirMq9SlUGwjgkUDloSE6pKnYrkSKQqHWeISH4xC557q0W01?=
 =?us-ascii?Q?QsHxhRXBLRwCJpd0X7qVh/IJQCFhkL+5Hm/JuFGxXNaFqER/AKg6r/KS41SA?=
 =?us-ascii?Q?CiwANIckW9VDD/PQb+SsnzZeedmikX9o9HRmsbCY5IshF5A4oFFOYXeueYsy?=
 =?us-ascii?Q?DsWvABXLM+uk/KdEew0oFEluC3b+y9NuRF+DR/q78rrkTyAbE2rf0sB/GbIy?=
 =?us-ascii?Q?l3i6N1clP7wonn/6aIn/zN1kKNySPi955MaNc/vhpVIVdSiYJrqEgN56m39z?=
 =?us-ascii?Q?B4/bIN+FVbYXlFcvyZjwuVTNPppRMW/tgrXHLADPMNHR3JJoTpnWET5z/Btk?=
 =?us-ascii?Q?2g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fe96a4f-fc2f-415e-aaf3-08da91204c2b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2022 22:28:33.0820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jyqsABa10QSkVs+8RK+ekpbJ+zelOGwVtCKACP+ulIOSarjnhr4/QQLhKRia/3ma4/ib5KZW7dwa9Pr0HnVW57mRcbnTOX45QFzn3ycX8lc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3305
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/dg2: extend Wa_1409120013
 to DG2"
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

On Wed, Sep 07, 2022 at 01:26:06PM -0700, Lucas De Marchi wrote:
> This reverts commit 487970e8bb776c989013bb59d6cbb22e45b9afc6.
> 
> Updated bspec and workaround database note Wa_1409120013 is not needed
> for DG2 (or any Display 13) platform.

This should probably say "Xe_LPD" to use standard terminology.

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 210c1f78cc90..6ff0b80e69ac 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7614,9 +7614,9 @@ static void icl_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	/* Wa_1409120013:tgl,rkl,adl-s,dg1,dg2 */
> +	/* Wa_1409120013:tgl,rkl,adl-s,dg1 */

When adding new workarounds lately I've been dropping the platform
trailers since it's obvious enough from the next few lines of code (and
it's easy for the comments to get out of sync with the code).  I'd be
tempted to just shorten this to "/* Wa_1409120013 */" but up to you.

>  	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> -	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv) || IS_DG2(dev_priv))
> +	    IS_ALDERLAKE_S(dev_priv) || IS_DG1(dev_priv))

We could also go with

        if (DISPLAY_VER(dev_priv) == 12)

to simplify.

Anway, both of the code suggestions are optional; up to you whether you
think they're worth incorporating or not.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

with the small commit message tweak.


Matt

>  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
> -- 
> 2.37.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
