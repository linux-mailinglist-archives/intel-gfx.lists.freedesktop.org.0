Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A59644E91
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 23:38:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D8510E0B4;
	Tue,  6 Dec 2022 22:38:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 422A910E0B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 22:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670366285; x=1701902285;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B7z5nIoJLoMdUjosaytFSk8hSnDYU0uDR8qy+RrnY+4=;
 b=dHwZ3deL4tPvmAFWEQGT9ZmegfwUf8fl/Hipz3jBtgrZiJZCLzue7VLN
 ur35hnXYaaNI4syVbGWwKNn3P2A/q+4199S+iiDlP19Sp75fKUhZLLHRk
 LMS7kdAV3zeH7MkZdA8xVMECjauU8T9P0p9S5kwFtW7FQmG/uydjBra8j
 s7z3SAu2BREo45lEwrW5ROHH4S8qLVlRj7w1uC2k68J0Mw49HRKyESPoL
 hTwuUhpPe3FvU3MiO7zg/a9H9rkGi+nxDZKdjOZNJiHMbkiq3wlMynGQ6
 0Ni4Ibs4k2A7xlgvPTHEVqUAsSRNd9rcZeNIkFovllG+iNBIqRoqcDx70 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="378911922"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="378911922"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 14:38:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="975237286"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="975237286"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 06 Dec 2022 14:38:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 14:38:03 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 14:38:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 14:38:03 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 14:38:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJzYY3BxrjB0PiPniGVJ+VcSIYTr0bb38sRz3qXPqTMNWDvAhEsWkpEwa7jx44dVmQSzLu52yBQ/m1kSlDACZ9WRe0yArbHNsV8hJOGnB+n90esVmvDxat06CYipRCONY1y7OWRvjPgYN4CT5GzkAMbvVwH6l+4TbAhjOynRAIx8xY+clmYUj3dFU1GC0GViARJ6aw+i0jNOhdcZANSyTO/N3AeNwrhgnVH3eWDi8l6XCwDvIKLA7eoBu77uME8t+FVFhAh2hdY5oWmvZ/RcnJGSg7g6ab+yl+kWfp5gP1pQ2JU0K7yq2KIV5AdvFP20ydPW4IlI69U497LZour51Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vYxDeyvocAd6qB6wWOt0DWrhNtSEY58ocZg7Peced08=;
 b=cb1HwRZlzUTSl12HMJGT0//i0XNmAoO9qdENl7XghjE09fb90Udt7mc2IeVzFhXKrH/6bkYDJLWUNwHwCuZKcLXC++S0EVpjmPkl1KyYoJr96uTTNnXvBk5dQ0UXlveWDICHyK/Pft1S/CF6yMWP0djObHYrCj/eEHZhvz9DOnF+1e2dLdcdjapgAFV1QAyDeR5Nh2n++BZnutCLleYcBus5PpS5NG/cm8uBk637jq6JJP0ipF/7u25W7vU6GrAu7aOHst3MmKw7ASNEr+GpJG7xVUP5Ql5U/1zUaUCrMILccTMzMCvqs10CQpH83UMf2ImQ4vPs2VOLY0TYNVmIcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Tue, 6 Dec
 2022 22:38:01 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 22:38:01 +0000
Date: Tue, 6 Dec 2022 14:37:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
Message-ID: <Y4/ERhjgmKArf7No@mdroper-desk1.amr.corp.intel.com>
References: <3a47d428e1929942374b9eaead5372bfaaefdeed.1669629369.git.aravind.iddamsetty@intel.com>
 <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
X-ClientProxiedBy: SJ0PR03CA0053.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cf2bfe8-4d41-4cd6-a99e-08dad7da87d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e6iImoHSZepeQQj7IbWyDwKtBIyITcwzKVKds8o869qekX+W6T3KfABXksjaJxH6eRuW2NmuIzwOJvQ91Cbbi2yB6Cau+dv+wuG+WiRgsDMTcdtdLt0kslLNdeO7oL4CWDBpWuolosUNvsaFVirhP8Wy5XefMISESw/kKQ76iaXEEwCnGHdbvlSfgmym2EFdsAVgGNDwIOudTaS46GrszPxl/DCsq5NMcAKNaD4QaYmpmDrIyeoigGlgrjj2qas8i4NbSERpNhj1zwIjP9qMiQGCdc+cmWQM4TLh5vFHz8xx0OkGvfi25Gt8FaUbpVKahTwqEMXXUs+0+wlsSNnCqvgizX67bBQa0Uiabh0UO7Codf5D4OosAIWMF/Wcz7xPC4LqQZSs2JRuDNgQDJVfAB9WX2ofK1CXLtNdiKENunDDTSxXL3x8TtcomeNPmCmgdTYJfjvtCNBzi52/VRfwEWRCeauMmisQ02Gimg99sIpNiiyPixHzsKQcIuc68ggMwc4byXczJqdN3ee4LPAwZ5KXcd4Q/XQTRDWUvHpmhiQxKcbz16CM1N2xXfx0F89uAiq6zL5Pl231/PxtKtch8FGY01z33n93iWaAkaiBv6+n9FGnil+Y6kZ9kwZU1CoYCw1/VIN9Zft6yoDYh2d9rQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199015)(316002)(6636002)(54906003)(6512007)(186003)(26005)(83380400001)(478600001)(41300700001)(6506007)(6666004)(8676002)(4326008)(66476007)(66556008)(66946007)(107886003)(2906002)(38100700002)(82960400001)(6486002)(6862004)(8936002)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GIlcRWr6LhJbqiFSHHoSFpsB6TwL3dDaTROMkF8OeLQRcbHUahYRYDl+AgTm?=
 =?us-ascii?Q?wFhn8QUxHhVEBOA3LIYLU5fePyPSHjOlhrY074FXtM1d0WyKYg+pwDCGkMqo?=
 =?us-ascii?Q?p88j8wwUlZ4wjs9gJtNngh2jm7SS73HxNieCDOC+pG+H6ils2YNzEerjnu75?=
 =?us-ascii?Q?4TKYB2rtSJVbyu8EQQNkWas/Yod9L4/vSz1IriNKlQJGb9+sNEgE6uvNv5+1?=
 =?us-ascii?Q?gqqBZ+grO+Uv7ZiiNJX3IGDDvg/noUzvWkbCb5wK+yi40zFMkiU0wt8kSJAS?=
 =?us-ascii?Q?KJxgJBwzx78P+xbNJx3npXGXnrMRa7I7Oe12DzNPhq5tc4YD/Y8aBgqZ7M4v?=
 =?us-ascii?Q?C5eGzGveYurQhjaz1R3CP8+RoRNXydjLIHXM03xTgq6zxwk69jl/kj49CiXo?=
 =?us-ascii?Q?YsWzGPuyTJGhZc254WWD3UkuCFIl2zAr1LHLcihGPiJvUcVK3I3IGdyTU5U/?=
 =?us-ascii?Q?t/gpKQKZxlFk1OUfvO7O5mYd6mhHMXL8HOjGf88o0vFLaKb96xwVtTsYUrZI?=
 =?us-ascii?Q?Tx3+pf22N43A+DQ37eOtLIOOVoG+zqsfxhrXrgtU+C4veuw6EpppfF+6YJ2O?=
 =?us-ascii?Q?19v6AV2Pe10KZtV4J9Rsj8iH17VgYaO5yDi18MY1nlKmW7l2wgpo5CqypxAp?=
 =?us-ascii?Q?r3yuYMMZVCLRs38K2Q0rs5SB/uYkViniG34+o5bpKr9R8XGm+9okazIBNcVg?=
 =?us-ascii?Q?Dr2gT/SeaU416bjlwrA/pw6JmGajBGfesa5NOzCe+wzsdnKhhuWTqs2mOI1v?=
 =?us-ascii?Q?RcncfEkEXD/2n2LF7AndNs9ZrYE4v4EdgMMIUylfwYhzF3BTl4gL1QvGsdSX?=
 =?us-ascii?Q?LVw5QU6ekTbRsbaqdivi0sHBreOr0Zb9TkgGagFEY55Mn6Nezvovdmhm3LmV?=
 =?us-ascii?Q?eX+JzvPSgUHmF3fGyxnbOLzTIcV48UsXs/lpkZP2yxkfq/+e8tVcKNChtjSY?=
 =?us-ascii?Q?Kkwhxca5EFYb4XFAX3ezJ3xpPL4GPYcyPv4U0cMs3Q7O1VE83mV3ZBd9c0i4?=
 =?us-ascii?Q?nFlY51cBfzACkn/fE8XnXgKcwsgddqubRZB93/1yL9WIXf6jrPcW+pLT/LcZ?=
 =?us-ascii?Q?LIBA+D5b78RAveMdw14ktFlEabjqUuvPPPh6dQw3NdG7lxKzWhUnF26udX+O?=
 =?us-ascii?Q?kknKxhlrh6vhnL3y4Ugv+yYoiXOpn3ncRufOyQNln/JIGaDv1roL2s3EzC2e?=
 =?us-ascii?Q?99A6uRpDQGQjcBc+7qfm6I5LL2NE/aPTkZn5VY0tjH1GBQX2cxErzsSzbP+N?=
 =?us-ascii?Q?G7JZhhrtQB0xH0tDu1hLqe4HV75ussOBf7ZbGIAFw8Av9lHIC+sFrEf9ugJw?=
 =?us-ascii?Q?glO9OpBESRJmE12Q4jAESizNTSV+2NQomQfcx/8mWutt5JgIDdQZm8Bqsfuf?=
 =?us-ascii?Q?cchEgFSimzqFMcqSXbaXboTaAkDn5UFfYwENxoSffnp7Oqtc54SPgTSQgx5Z?=
 =?us-ascii?Q?JVI9hm8VtcopXsgHVqJUNfQ/shyfk7qdsdppVxb5VFh285tsXz6Bw6PEZUDD?=
 =?us-ascii?Q?YqIZ1LhN0CT5W0aeqMwbqy0c3FVHb5Gf8x7+lnXi0mjdb/NtYBy+akgh7Wwn?=
 =?us-ascii?Q?wAmYwDlweL6cCOFKMYHC/vN3WTJuSzeRBPgzHsVkV6QGNlFo+kyUrufse2hy?=
 =?us-ascii?Q?Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cf2bfe8-4d41-4cd6-a99e-08dad7da87d3
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 22:38:01.0328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pM2nQfObFWlL5mPg4F07gy2dskmUY/SEh+s01WNKyYOkYMywqLXoIUhbOyzKPhaMcltxR1RbZ+Dnd4Exefm0QSExTsgXTJGhTW8tZRUny6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Define MOCS and PAT
 tables for MTL
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 06, 2022 at 01:07:26PM +0530, Aravind Iddamsetty wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> 
> On MTL due to the introduction of L4 cache, coherency and cacheability
> selections are different and also GT can no longer allocate on LLC. The
> MOCS/PAT tables needs an update.
> 
> BSpec: 44509, 45101, 44235

You might want to add 63882 to this list too since the GLOB_MOCS layout
changes below come from that page.

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gtt.c     | 23 +++++++-
>  drivers/gpu/drm/i915/gt/intel_gtt.h     |  9 +++
>  drivers/gpu/drm/i915/gt/intel_mocs.c    | 76 +++++++++++++++++++++++--
>  drivers/gpu/drm/i915/gt/selftest_mocs.c |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c         |  1 +
>  5 files changed, 105 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index e37164a60d37..428849248c34 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -467,6 +467,25 @@ void gtt_write_workarounds(struct intel_gt *gt)
>  	}
>  }
>  
> +static void mtl_setup_private_ppat(struct intel_uncore *uncore)
> +{
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(0),
> +			   MTL_PPAT_L4_0_WB);
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(1),
> +			   MTL_PPAT_L4_1_WT | MTL_2_COH_1W);
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(2),
> +			   MTL_PPAT_L4_3_UC | MTL_2_COH_1W);

Is the MTL_2_COH_1W on entries 1 & 2 correct?  When I look at the bspec
I see the coherency mode listed as 0 (no snoop) for these.


> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(3),
> +			   MTL_PPAT_L4_0_WB | MTL_2_COH_1W);
> +	intel_uncore_write(uncore, GEN12_PAT_INDEX(4),
> +			   MTL_PPAT_L4_0_WB | MTL_3_COH_2W);
> +
> +	/*
> +	 * Remaining PAT entries are left at the hardware-default
> +	 * fully-cached setting
> +	 */
> +}
> +
>  static void tgl_setup_private_ppat(struct intel_uncore *uncore)
>  {
>  	/* TGL doesn't support LLC or AGE settings */
> @@ -602,7 +621,9 @@ void setup_private_pat(struct intel_gt *gt)
>  
>  	GEM_BUG_ON(GRAPHICS_VER(i915) < 8);
>  
> -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
> +	if (IS_METEORLAKE(i915))
> +		mtl_setup_private_ppat(uncore);
> +	else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>  		xehp_setup_private_ppat(gt);
>  	else if (GRAPHICS_VER(i915) >= 12)
>  		tgl_setup_private_ppat(uncore);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index d1900fec6cd1..8a3e0a6793dd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -147,6 +147,15 @@ typedef u64 gen8_pte_t;
>  #define GEN8_PDE_IPS_64K BIT(11)
>  #define GEN8_PDE_PS_2M   BIT(7)
>  
> +#define MTL_PPAT_L4_CACHE_POLICY_MASK	REG_GENMASK(3, 2)
> +#define MTL_PAT_INDEX_COH_MODE_MASK	REG_GENMASK(1, 0)
> +#define MTL_PPAT_L4_3_UC	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 3)
> +#define MTL_PPAT_L4_1_WT	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 1)
> +#define MTL_PPAT_L4_0_WB	REG_FIELD_PREP(MTL_PPAT_L4_CACHE_POLICY_MASK, 0)
> +#define MTL_3_COH_2W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 3)
> +#define MTL_2_COH_1W	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 2)
> +#define MTL_0_COH_NON	REG_FIELD_PREP(MTL_PAT_INDEX_COH_MODE_MASK, 0)

We're not actually using this definition anywhere (we're just leaving
the 0's off completely in the table).  So we should either drop this
definition, or explicitly OR this into the non-coherent entries to make
it more explicit.

> +
>  enum i915_cache_level;
>  
>  struct drm_i915_gem_object;
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 69b489e8dfed..89570f137b2c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -40,6 +40,10 @@ struct drm_i915_mocs_table {
>  #define LE_COS(value)		((value) << 15)
>  #define LE_SSE(value)		((value) << 17)
>  
> +/* Defines for the tables (GLOB_MOCS_0 - GLOB_MOCS_16) */
> +#define _L4_CACHEABILITY(value)	((value) << 2)
> +#define IG_PAT(value)		((value) << 8)

Nit:  it would be nicer to move to our standard register notation

#define IGNORE_PAT                REG_BIT(8)
#define L4_CACHING_POLICY_MASK    REG_GENMASK(3, 2)
#define L4_0_WB			  REG_FIELD_PREP(L4_CACHING_POLICY_MASK, 0)
#define L4_1_WT			  REG_FIELD_PREP(L4_CACHING_POLICY_MASK, 1)
#define L4_2_RESERVED		  REG_FIELD_PREP(L4_CACHING_POLICY_MASK, 2)
#define L4_3_UC			  REG_FIELD_PREP(L4_CACHING_POLICY_MASK, 3)


> +
>  /* Defines for the tables (LNCFMOCS0 - LNCFMOCS31) - two entries per word */
>  #define L3_ESC(value)		((value) << 0)
>  #define L3_SCC(value)		((value) << 1)
> @@ -50,6 +54,7 @@ struct drm_i915_mocs_table {
>  /* Helper defines */
>  #define GEN9_NUM_MOCS_ENTRIES	64  /* 63-64 are reserved, but configured. */
>  #define PVC_NUM_MOCS_ENTRIES	3
> +#define MTL_NUM_MOCS_ENTRIES	16
>  
>  /* (e)LLC caching options */
>  /*
> @@ -73,6 +78,12 @@ struct drm_i915_mocs_table {
>  #define L3_2_RESERVED		_L3_CACHEABILITY(2)
>  #define L3_3_WB			_L3_CACHEABILITY(3)
>  
> +/* L4 caching options */
> +#define L4_0_WB			_L4_CACHEABILITY(0)
> +#define L4_1_WT			_L4_CACHEABILITY(1)
> +#define L4_2_RESERVED		_L4_CACHEABILITY(2)
> +#define L4_3_UC			_L4_CACHEABILITY(3)
> +
>  #define MOCS_ENTRY(__idx, __control_value, __l3cc_value) \
>  	[__idx] = { \
>  		.control_value = __control_value, \
> @@ -416,6 +427,57 @@ static const struct drm_i915_mocs_entry pvc_mocs_table[] = {
>  	MOCS_ENTRY(2, 0, L3_3_WB),
>  };
>  
> +static const struct drm_i915_mocs_entry mtl_mocs_table[] = {
> +	/* Error - Reserved for Non-Use */
> +	MOCS_ENTRY(0,
> +		   IG_PAT(0),
> +		   L3_LKUP(1) | L3_3_WB),
> +	/* Cached - L3 + L4 */
> +	MOCS_ENTRY(1,
> +		   IG_PAT(1),
> +		   L3_LKUP(1) | L3_3_WB),
> +	/* L4 - GO:L3 */
> +	MOCS_ENTRY(2,
> +		   IG_PAT(1),
> +		   L3_LKUP(1) | L3_1_UC),
> +	/* Uncached - GO:L3 */
> +	MOCS_ENTRY(3,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_LKUP(1) | L3_1_UC),
> +	/* L4 - GO:Mem */
> +	MOCS_ENTRY(4,
> +		   IG_PAT(1),
> +		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
> +	/* Uncached - GO:Mem */
> +	MOCS_ENTRY(5,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_LKUP(1) | L3_GLBGO(1) | L3_1_UC),
> +	/* L4 - L3:NoLKUP; GO:L3 */
> +	MOCS_ENTRY(6,
> +		   IG_PAT(1),
> +		   L3_1_UC),
> +	/* Uncached - L3:NoLKUP; GO:L3 */
> +	MOCS_ENTRY(7,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_1_UC),
> +	/* L4 - L3:NoLKUP; GO:Mem */
> +	MOCS_ENTRY(8,
> +		   IG_PAT(1),
> +		   L3_GLBGO(1) | L3_1_UC),
> +	/* Uncached - L3:NoLKUP; GO:Mem */
> +	MOCS_ENTRY(9,
> +		   IG_PAT(1) | L4_3_UC,
> +		   L3_GLBGO(1) | L3_1_UC),
> +	/* Display - L3; L4:WT */
> +	MOCS_ENTRY(14,
> +		   IG_PAT(1) | L4_1_WT,
> +		   L3_LKUP(1) | L3_3_WB),
> +	/* CCS - Non-Displayable */
> +	MOCS_ENTRY(15,
> +		   IG_PAT(1),
> +		   L3_GLBGO(1) | L3_1_UC),
> +};
> +
>  enum {
>  	HAS_GLOBAL_MOCS = BIT(0),
>  	HAS_ENGINE_MOCS = BIT(1),
> @@ -445,7 +507,13 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>  
>  	table->unused_entries_index = I915_MOCS_PTE;
> -	if (IS_PONTEVECCHIO(i915)) {
> +	if (IS_METEORLAKE(i915)) {
> +		table->size = ARRAY_SIZE(mtl_mocs_table);
> +		table->table = mtl_mocs_table;
> +		table->n_entries = MTL_NUM_MOCS_ENTRIES;
> +		table->uc_index = 9;
> +		table->unused_entries_index = 1;
> +	} else if (IS_PONTEVECCHIO(i915)) {
>  		table->size = ARRAY_SIZE(pvc_mocs_table);
>  		table->table = pvc_mocs_table;
>  		table->n_entries = PVC_NUM_MOCS_ENTRIES;
> @@ -646,9 +714,9 @@ void intel_mocs_init_engine(struct intel_engine_cs *engine)
>  		init_l3cc_table(engine->gt, &table);
>  }
>  
> -static u32 global_mocs_offset(void)
> +static u32 global_mocs_offset(struct intel_gt *gt)
>  {
> -	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
> +	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0)) + gt->uncore->gsi_offset;

We should probably split out the per-GT nature of MOCS into a prep patch
of its own; it's kind of hidden in this patch that's adding the new
MOCS/PAT table values.


Matt

>  }
>  
>  void intel_set_mocs_index(struct intel_gt *gt)
> @@ -671,7 +739,7 @@ void intel_mocs_init(struct intel_gt *gt)
>  	 */
>  	flags = get_mocs_settings(gt->i915, &table);
>  	if (flags & HAS_GLOBAL_MOCS)
> -		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
> +		__init_mocs_table(gt->uncore, &table, global_mocs_offset(gt));
>  
>  	/*
>  	 * Initialize the L3CC table as part of mocs initalization to make
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index f27cc28608d4..66b3c6fcf1f1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -137,7 +137,7 @@ static int read_mocs_table(struct i915_request *rq,
>  		return 0;
>  
>  	if (HAS_GLOBAL_MOCS_REGISTERS(rq->engine->i915))
> -		addr = global_mocs_offset();
> +		addr = global_mocs_offset(rq->engine->gt);
>  	else
>  		addr = mocs_offset(rq->engine);
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 414b4bfd514b..8e872cb89169 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1147,6 +1147,7 @@ static const struct intel_device_info mtl_info = {
>  	.has_flat_ccs = 0,
>  	.has_gmd_id = 1,
>  	.has_guc_deprivilege = 1,
> +	.has_llc = 0,
>  	.has_mslice_steering = 0,
>  	.has_snoop = 1,
>  	.__runtime.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
