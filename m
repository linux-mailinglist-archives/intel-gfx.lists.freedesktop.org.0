Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F17787475
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF5B892A1;
	Thu, 24 Aug 2023 15:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180DE892A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 15:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692891757; x=1724427757;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eZ5g7ZS38PlCXhw2a/NBz4TcL5O8ZjBSTpRAzlcsQOM=;
 b=lXLf98cuY1xDonngHJdx6ihHrHwHVCbFrlcCzdkrZWvdkRCILNPbub3J
 OkyvcN/ZuGc9NqxZ8F00HaMordtZ5v6RLe09KYzHCs+a8ohLwdf5/PsEO
 skaT7R0iLe4N17jDrxhAzomyNXi+eh5YS7Yo+aEQ/q1E8CCPus4ZQDMGV
 wk1IcaNS7JcnczONcvGcF08JsXoutyGJoZG3d0hKVQEna8q/4EvGdVGqj
 s+L5wpVt1UjGnuDKSsHmCw69X3ta6/vfopYQx3BlAIe7LP/8/qdGz4Bmj
 jeRrZsqtXwLlZsykLzRr4lpxF3UsIgLC0qIqs2Ox6ZEPBER+3PRl1MWtx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="371877490"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="371877490"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:42:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="766584069"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="766584069"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2023 08:42:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:42:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:42:34 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:42:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lehWqUO1tQQFaeGd54N9O1+TWXit1vtUeP4b8rU9epKB6n3oTOoDuv397TudNVkh7HJAQzzM05js5cUEZzEJdcY27KscZSA3FsfOIP6MkmSpixrj+8aKpVKI5ZNTs5HKCbCCTUGdKNVULbHwyaLhBXmXwrgda6V5OEfvEk7YqQEC1FxbNqaVdDPAhA11iq/cS8XEEvSM3sYMnddwI7Fm1SFVexlKpDrbgwdtiiPWe7AuJqr6YRifTgX0NrVzYcYRlIAEpESJPx6cOGjZMXMkGtjiNA1Y095Mqq5/2czjkNxdkJpD9cv1Q5iNCY2u+snlspahy8xyFwyOhpck+PduhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+IwnhbGgqee+IJrLPP9fna8fYkxKV4xRcfnbWBpM2UA=;
 b=h9+4CqB8wi06zLJW30TlUFqNZCKRiK3NjRGouCACVAhhOspam1W4e2ABOJlonjH4A2R634i4AN1y/m187T3NqasyeTthIIfLI6clwP1HSXmNQxyOd3KDHOo1RHaNFuzzbT8XPqlrUbnIpHegVpI81o4bhCN0uAUq0emg5UPG+ysFgbojF+OdSXoikB7MzNyH7cTboE4EcZDlr8bvkEf1MeZDvfo/8OuuOzd6WeMGU6DfnCsxbGD/cs3pWQdD6CpU5D4Jya4QIW/uP5Cg+iqVFPueDXzCKE+EbXsKKnS9ZDgSJ4Utc912G4n/dJ+m92tBQRyvc0LAfY3gHifMOGk2ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by SA1PR11MB8350.namprd11.prod.outlook.com (2603:10b6:806:387::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:42:32 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:42:32 +0000
Date: Thu, 24 Aug 2023 08:42:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20230824154228.GQ1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230824062840.2372872-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230824062840.2372872-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: BY3PR10CA0022.namprd10.prod.outlook.com
 (2603:10b6:a03:255::27) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|SA1PR11MB8350:EE_
X-MS-Office365-Filtering-Correlation-Id: ba6b493b-00ed-4403-db10-08dba4b8bb00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WXTR1CaysMuFgl9O+RSb+tMeBKF/canjiQrgcezS8jThP2GpSuBgFbRuOr3lJLJYmN0YpgKkZ6P3wyiD8CYUm5EPuKn76jlwy0hM/AL0UGP0QaCGE1KLwy/BfgYLsvU7790O6oBCTAgEauQRQbiVfrSwWO9HbBSmMR48PCBmTB6aRQ24j5icp8nHC+CAibjjyIYki/1TOXTUiYOHaxgGWPA1jVMiXhiRBH+f2IOF/pWyJDgLA/6Mp7R2Po4c/0Brus0NRwIXcRPiVTIlRwf1mTJZDsXlVp+SXYLxMjAObShLafusEXdWY6EoO08l2Mm+HPVhxnTWIfW46CTk/nJcuHUZFVOUFP9FKH06FjFWwN4Br95HPITtJApBZWmZrdw3EVLcs/7A15iS39LqFtlLHGzVYbazbCb9akx64F36klOInNQvFXuB5IBfFpnL51Ns2jCg/74/88bckn+kQTSEx6eDdbDmBNIEBk3DHSeiyHdE+L3G+ZWxS5xyfPgvxNhww2bT4HiAU2EAlysY/mjaOEWxijgnkSk9OiTeCXN+RmaGRrdylNijSOHLcxQDKowk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(366004)(136003)(186009)(1800799009)(451199024)(1076003)(5660300002)(8936002)(4326008)(8676002)(6862004)(83380400001)(15650500001)(33656002)(26005)(38100700002)(6666004)(82960400001)(66556008)(66946007)(66476007)(6636002)(316002)(478600001)(41300700001)(2906002)(6506007)(6512007)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fuzXopILxR8GpN+o2/2jMrBeqsOxyiWKjC6mTv07VwZKjbZy/zNscSfZCpy8?=
 =?us-ascii?Q?ygpdDuuiM0OjeYVY9Na57kePuCz83aONlwItD3ngL0lxsnQ0XPjQs4ZSzFPy?=
 =?us-ascii?Q?T1+AuctOrCQD5Dgvy1D0qJyHCctfSx3IsE5w0LttwCNAB3VESehVNpk8oWea?=
 =?us-ascii?Q?0HpezUInGyTNa3OWLhtFc6CcOwA2EPCGkJSsMKts5kxkyhTEwCMtlmChibQ3?=
 =?us-ascii?Q?BfBp0//+IBDSb6Z9MuOb9x7/6LthCPpRnrYJJoxfYNRRKKtgfz3rZG4C06Tk?=
 =?us-ascii?Q?QQ2rXDGBMKSPsk3RrTu6uAATFNOk/D5TPcLt2NCbIMMLQ77RlLeaFk2JcSvr?=
 =?us-ascii?Q?rZef6NQOK2scOIcTkfKfkKEoyxEZH6ebEUFLzO23goNzPXyTOBo5L6vG81WU?=
 =?us-ascii?Q?uTf9xUq+WRkovH19myByX1P9Z8GrQ89r0sZ4LffbZ88HfkHUP6qEAj1DJ5AQ?=
 =?us-ascii?Q?KTMknjmALKdahfI/8AAbDw9KNdCgWaF3qqop7iCxWDEManB4kQO1JbErdTcQ?=
 =?us-ascii?Q?xYHa47/1Zs58jMZVvVE/K1U4tgCPix6K04DIwQL/19N4gry8n+tgpMV62QFn?=
 =?us-ascii?Q?+kEgWoiFr2FWGTL6r+MW8BoPbQsPVMJDO7CONqSKWSzmxWeXqHL5PH/R942y?=
 =?us-ascii?Q?idW3O3nJat9T6+tSvERGvzhAc7jdtlnf4iwz2v77Abx02YecOdULkrinyER6?=
 =?us-ascii?Q?UizfnD8xs7hl7JWFtP3UpSjY2sPkfkmnef9ZQlMkxCW0gncj8dBm3rKC1rHC?=
 =?us-ascii?Q?VfdwFyfdDjGh+aP/epHUcDYFPeeXjMLia5BeJIR+GJ2gzrZj64N8UvUQt4h/?=
 =?us-ascii?Q?UXEHZ2C4S5m8kVfYuw6wxJau9ppKzli5PWHHLFOndDW+1VRHkNszSp1tyad5?=
 =?us-ascii?Q?s09t5uGdaezUc7kD6rDQkPJAArwGgLVwWZADgBoKNnM/2aWQsjnUmZ2grfVX?=
 =?us-ascii?Q?NzTENOACbQvgUB8yrpRueE6FzXedK8dSJ3XL3fsgVqCQFqrFds9VaseVbxze?=
 =?us-ascii?Q?+C7KTgJ+yfNZqQqfmnI2oM8S0QgpM99u9A635+2Bqc5HoKArzGDLFxNj8awd?=
 =?us-ascii?Q?6R6xIBKiGjLFFze/ZFVjJizIgp4TpRYMmBE6ESii91n5qLXJ6gWtJDTJa+X8?=
 =?us-ascii?Q?wkLX5KVfh3rTkDDnS+eTvyrwcD3hnK7OCEdQtkzWwJX0RQVqhDBRR1EQMst2?=
 =?us-ascii?Q?ZGgkKczOofUadk24p8FwcZsI1KzvqYNgGg2JUrPTy8vr2Qv7feZyFjUxruFX?=
 =?us-ascii?Q?HmcJHSko89ogfe1b5DKkWgE7Rnn7vPBNOP6/uwDyTUCVUsfsjbEDTFpMH14s?=
 =?us-ascii?Q?LHjngFMnn1wPSf8P+gW+Bq8oc5SwmkQxaLVTNL/4wDCNqeiBeFi0/pmDO7dN?=
 =?us-ascii?Q?6Drr/qepoOxmn4n/lBtF4XqZBWwhfMZ4I3bE3gt+h9sYQoG+aZSFmkslZ23Q?=
 =?us-ascii?Q?fu3oXHsuWUzmVEnpeaRvpnIdZuCz1gywZOo8NHDLuvVPK0nN3MrlEsMEDi4G?=
 =?us-ascii?Q?/iA/qMmfGKw2OsAdRH6Wutkh2FDj7Auz8K5T9syQZXm+LOCCtESpSTm8z+5R?=
 =?us-ascii?Q?oVjhE9N4DnE/iRoJRoR1l4LtuU/u0DRwAif5EF8x5ll9boJ/QDnPLUb0yrp9?=
 =?us-ascii?Q?2w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba6b493b-00ed-4403-db10-08dba4b8bb00
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:42:32.4019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JRzVh0kkkAH9KkBUTnvAgSWRxoejpxMl2EymKbJqihEs2PSJ+cefeuAffTAvBiXmaKRwwgVKIFVvPhYVnTMnSuMnzuevIRHN8+ve1xAmfiM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/rpl: Update pci ids for RPL P/U
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

On Thu, Aug 24, 2023 at 11:58:40AM +0530, Dnyaneshwar Bhadane wrote:
> Update pci device ids as per bspec for
> RPL P/U.
> Bpsec: 55376
> 
> v2:
> - Append new id's instead of replacing the existing in device
> id list define
> 
> v3:
> - Fixed the commit messege with revision details.
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

and applied to drm-intel-next.  Thanks for the patch.



Matt

> ---
>  include/drm/i915_pciids.h | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index e1e10dfbb661..21faa73db7ec 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -689,14 +689,18 @@
>  #define INTEL_RPLU_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA721, info), \
>  	INTEL_VGA_DEVICE(0xA7A1, info), \
> -	INTEL_VGA_DEVICE(0xA7A9, info)
> +	INTEL_VGA_DEVICE(0xA7A9, info), \
> +	INTEL_VGA_DEVICE(0xA7AC, info), \
> +	INTEL_VGA_DEVICE(0xA7AD, info)
>  
>  /* RPL-P */
>  #define INTEL_RPLP_IDS(info) \
>  	INTEL_RPLU_IDS(info), \
>  	INTEL_VGA_DEVICE(0xA720, info), \
>  	INTEL_VGA_DEVICE(0xA7A0, info), \
> -	INTEL_VGA_DEVICE(0xA7A8, info)
> +	INTEL_VGA_DEVICE(0xA7A8, info), \
> +	INTEL_VGA_DEVICE(0xA7AA, info), \
> +	INTEL_VGA_DEVICE(0xA7AB, info)
>  
>  /* DG2 */
>  #define INTEL_DG2_G10_IDS(info) \
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
