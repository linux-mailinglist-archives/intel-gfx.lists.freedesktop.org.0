Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3848192C416
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF14510E650;
	Tue,  9 Jul 2024 19:49:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGl4xMpL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F76710E64F;
 Tue,  9 Jul 2024 19:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554585; x=1752090585;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=nlZcaZtTr3iC/+lkhYZnibdiG//v+VkvSzSgF2Mwy60=;
 b=jGl4xMpL3SJ+l8UP2IuCiFGwT+CD765ngry3A8q8KAc6ns0QVuPtZF8V
 zuSocnH1SiegEY0lhZK7rdSyriOoeW+rAOItByarEi7/NwhK7lO2YbKjC
 kJEG45yBiKgRLT3oihSiDA/d5mLUg7qKBXiho8M0jXQlkN+j//RGnwb6y
 aFyu+EXHefHRaTRJpBaM6KlRWMq/te28Zeo3GIOJlBYildLNXuhhrOLZ1
 uirkSBsgH8kF5ZgdAg4HoPrQ3u0zWlClEDtFzJUKRJ9la8xqkFYRNfgL/
 E/eqvYNlneemo/LbLWQPncs5Ipo7vx1socbmQSBO5C9C1oStGnE0YIffS A==;
X-CSE-ConnectionGUID: XjmAUIQeQ/SeAX04dXtKYg==
X-CSE-MsgGUID: KutFX5VFRz+m6ft82ZTklw==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17708998"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17708998"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:49:44 -0700
X-CSE-ConnectionGUID: 23PdXLGGRVi4d7hQOl7ndw==
X-CSE-MsgGUID: Drvaxk3NSxaFGHLRbn0BbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="48418893"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:49:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:49:43 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:49:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:49:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:49:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CsyA0kE6Dn7xXgcWVzhbQu11kcROYCf2BGUUY2Nl84hsvX1//Yye9It51b3SiMbRZXnctw40Aoj33w0i25Vtg692/0OJHON+unWJ3nWNjUMcosIZ35O+6+K5qbwXFQKIYbA41blT+Jws7+Ql/o2Quhz3kxkgXfxc64ev7fDDbizW3eC4nfbGuXPxGb6KaPrn1h/ea6bnNiF07cEbqZLcbxVfW2Ggi9qC8Dkv6kjuLwldQCDh63ETlOc89lzsiSbsIgOvWMUTAsptSYqcp5vggg+Ef476NbIWgD4LBva/uSoeItetYIkEkJTkS0pxAWZwycEv/QGcjJpbMbdQ74K89g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ewzQwU+U1suVYtb+2BI6973sawdg6lE8tPdk7/AWPog=;
 b=RwU9Of9ntegGNT7O1qq9HIEdm9164xulERm7NmdoX4+XmNndL3Aeee/MC0tkFmT2OmFJ7hOjq5JTjVylV3yJlGvhsuBurXb1OoHayYuDVPHvtXT+sEbEbL8HPn0zjdMS4+ceeIDWw5fyVBFUIAPc0+BGzn+TtQNvSna7dE0ePLzHChC3wC2StUfsrcIAIMAo4FQ4d8dFnXQkMOu3lYVjszWpZVZD7s9/DmaVjKUKWW8b/GEgvOrr9V22eloHFIbo+iy6tnJf2W5a05y/4sNKfXGDqQYWFM4F2UUEu61y789104cjntpGG1Zct4IYbUgVsccgWuvjtLkMh3sm0+2WtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 MW5PR11MB5785.namprd11.prod.outlook.com (2603:10b6:303:197::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 19:49:38 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:49:38 +0000
Date: Tue, 9 Jul 2024 15:49:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/20] drm/i915/fbc: Convert to intel_display, mostly
Message-ID: <Zo2USSCXVDDOqCvH@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR04CA0012.namprd04.prod.outlook.com
 (2603:10b6:a03:40::25) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|MW5PR11MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: 39b33192-7d20-4f9a-c948-08dca0504448
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?xCSKhxDX1T3a3P3a2/pKiGqP4ACfZx5H8GwS//Wl8hJETIOpzE06sh+c+0?=
 =?iso-8859-1?Q?+n60R/z1NmRpqUMGTkRp21PJ+8OU3ql+dJGgUAGS77Mlg6HybO8pG/Pw9k?=
 =?iso-8859-1?Q?XJMLwb/l8KzLQjfqvKcL9TEhDnB4TduwWuNbyyl4cfsz6XZFZKB/Oz+4Hn?=
 =?iso-8859-1?Q?cQ7rNeVcb9R5ne7hgKanEkobYK1F5B02PDFv2TnUJNWOJNo+2bRa8PATWs?=
 =?iso-8859-1?Q?Lfn7xOiFDVExEARB6CfNVLTC5J1uJ39RGaG9E2dan1OiIWZbKp7K3VERna?=
 =?iso-8859-1?Q?/qgqKyVoJQX+b5qBCyZWggtRWt9jNk26yhs/BJl355NCszhxey8U377aJk?=
 =?iso-8859-1?Q?OrpPLya1/h21bIicuzysg5L5h72Rq9IjoSyLnGRSSebibXDPv0DFFYhJVl?=
 =?iso-8859-1?Q?HG0dtEMR6X7quBDIjhHWjT6ml+VdJHpSxIT2EFAHkucctP+dOV6GEjRNdE?=
 =?iso-8859-1?Q?7cpSxi6mwjInPcJikYRG5jVw4MY4wEclOHQK7B/+I5uhwcDA1kAkh+CYqF?=
 =?iso-8859-1?Q?HGMVGD8qZGxxZ5NXlzoxAvVx0x032PhRSoIfHHOyYtA5ufRVJm9Lq16GiV?=
 =?iso-8859-1?Q?6WZVieVX01xwSsrYHHK0+luImlhwxEiLHkoB6XdIESonAWQNgmEHD2Eka2?=
 =?iso-8859-1?Q?XRc4b9a1Vv+pwmcibY1hkKkoITb0AzjxXfEhU6tQEWZQrJQRUePS3zlOJN?=
 =?iso-8859-1?Q?SbNgaBXU09eCRUQLjS33Fv2CzmEuhHn/j/PHXLs9pdxfY+kTMUjv7N0anb?=
 =?iso-8859-1?Q?b7l0Ffsm15VeePydFMTKzKyqSqK+EATrUc+K/4Cc+JwgC/jERBPyZNvr69?=
 =?iso-8859-1?Q?VQOZ5pbzpkZ5LlWfxp9Pj6La24CIbLuNVhke2gOqDWQbAqDZa/Fh203HgW?=
 =?iso-8859-1?Q?l8NdayeAxgY6Pc3V+zEptjfKLUSZVzWH8H0p49IyqJAdeHNNj1pVBc6SK9?=
 =?iso-8859-1?Q?r75MvYjN8vE7LMQECH1o+qol/6G1jq1KjLSPpZmvj9aN6MprYNx7qho4tR?=
 =?iso-8859-1?Q?vrhsenuUbMF5f/EvvkZQQ6Wy0Uz+U5J+prs7dag0lpG0svPOKM+y2k9WP8?=
 =?iso-8859-1?Q?BOR+L/+k40PzCemyGOoC99/VNLdjf95x09wQI92sc65ThNqC2ij+lmCp6f?=
 =?iso-8859-1?Q?drDXF0kdfV2UahVGDmCPQMqPJ7VXeUg+YJsFQw2J883yt1w1rfNw8V1CiT?=
 =?iso-8859-1?Q?RPlmj10csR6+LUxJASlObNKYAkZh+RUxY+LNU4CjCbjC9zgZ3kj4O7fcOo?=
 =?iso-8859-1?Q?s9hmAAulyMxCVKA6iDA73aI8PkVXtUcQkiZia2JdBmChVo4qLOEsTDCOLa?=
 =?iso-8859-1?Q?vBcnZ6I5gQKKvQLLlUxWM9RPx9KL/KJSO0bWP+NXW8Pqtvt0nijrzLSJXF?=
 =?iso-8859-1?Q?KzMiuQ2vWXc7tN8ZoQgP5TMDQUfU0Prw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?hxXcg1B1MbTRX/ckJrEPQHHu4dRdr+OZnSDABIGtK1kzkLh1khTYFdJlRU?=
 =?iso-8859-1?Q?jg9sr9f4otpeYEbToLjdlujp4/cWbEHBu0VtQR6As/u4+u0n530dMi+oHU?=
 =?iso-8859-1?Q?7uVAxv3Gwivr/ElyGl4eal9M8yavU+niewH0yRYbHOiVKnFvRiBMBrfKcW?=
 =?iso-8859-1?Q?HT6Gwn9RZPYXTfurqy1+EE3MQ0mBDPoLnHOQ9ZUdl7gMz3xgCgZzFlA7Hg?=
 =?iso-8859-1?Q?vKc69fkpBOQB11LnuAmNf2sawSeHuusQ3perj4Ul5+ZHGN5E22tAvbkF68?=
 =?iso-8859-1?Q?oA/JrUma7jyvKUt9+d3SRhvwWr3dh7bZxVgZs24L9xY6rET9YwSAfTa7aP?=
 =?iso-8859-1?Q?OdHQW6oUvbjylQwuJ0zFTN6SQcyvoESuPEYlPI54C2CczTifPRn+qOIkIu?=
 =?iso-8859-1?Q?ZlYDXkyZnHA8APvN8abCmrWyH6JPCPy4xrW7PBFr0A9R8mAPBWSvTSmIFp?=
 =?iso-8859-1?Q?Jg4SPrrhczT6dDNt1WrUPcTJ/ZRvvc8RkyhJZ98TUcWyzw14J2aoOF5vGf?=
 =?iso-8859-1?Q?lqdquMsCytcluzGuCQb6HWwpehdl2fcc0xuuUlzMILxWLaoxNCUbXFiwFL?=
 =?iso-8859-1?Q?6kecpFlCN6Kao9kabva7GqYxjxKL+glnahPhy+RwWK0aSNyxrf0ti726f6?=
 =?iso-8859-1?Q?VxlWehnzg9sYottnlPeWd1DJJFGasYfTEWijtifLeEmT15PRKZxrPFyw1+?=
 =?iso-8859-1?Q?M7VzPjoqwalOvs/6YSTtaRlkC0jsuFpQyTa94jAfAseA+TGoMkHHU9kAPQ?=
 =?iso-8859-1?Q?e/M63O4fZVxKDQVGaqAk0GwK6kwd4ko9Dj8MMmArFY6wLy981y/PH/Sw1z?=
 =?iso-8859-1?Q?1gcCHXWAU6Td+K+Z/Zs7JJEHYZPUlAKx/rV+QTC919NAsM6P8SydipLG8w?=
 =?iso-8859-1?Q?W8gaeyDj7Ng7vuBsqDTLL0OWSd3rfiSiHtQHfmkWuEl+e3kDJ7E/ewnzAw?=
 =?iso-8859-1?Q?iYdOH3L/OBRhWjDPVzOE+uCuDdLD7GtDmOJqKomI+LJPT2HjHEWEP1QRDH?=
 =?iso-8859-1?Q?QDBS+cx4/Ypn37cQ/sRB7kauTBro2nql/XCSRvlZGv8bSa5Z326MPcJ6VY?=
 =?iso-8859-1?Q?+NoL6AMo1di3qIvikvPhwRPXnpO3/cWAnfHGuuYMXJGYZ9cEC5gMUQXEmE?=
 =?iso-8859-1?Q?S/Dtp3DiOv1fnC2OaqGzyMTALgtgsqArSZGGjB/2nTA+Bk394uwUFm5XYX?=
 =?iso-8859-1?Q?M3o8CuqId/xWcd84gpXViFNXe/WsklSru/RMCeOWY/lAcrggHpHUelnUce?=
 =?iso-8859-1?Q?SUMB/L3Q5lnCnniLSSIlVYrb4wXpbn8L6go4jMmq+l2ghPSX5p9F3XYCks?=
 =?iso-8859-1?Q?qyBvZixMZLwiDfvM9Ih+2rNyPa0GHKO23Hj5D28FkQtYMwnkTAdjNfcXcu?=
 =?iso-8859-1?Q?KI1kGdyjTP7a7pRl1qzzfsnL50omLfQDl88EPSLGWWLLOE2Liro7xh6ijP?=
 =?iso-8859-1?Q?lrkfX2vAju+mY/L3YSPOG0kfyBDQTPzmEIF55t149e0tyz4fUDwYS+xa/s?=
 =?iso-8859-1?Q?e3Zz7191omFTlJfrq1rps9hvQjxcpYEBwHBvSSWlSAPuzqtzTxwE8bTrp9?=
 =?iso-8859-1?Q?A8lPJppFb5A4qSrA0h5pOE4P6DQUVEyw0xWZ6mK0DsJRUoKGXAW9q8lqVw?=
 =?iso-8859-1?Q?GNnEDgKUyv/nWrRrgTAzrY22SIVxa+a9ZnrgoClqxXSw8Koazl/aLTLQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b33192-7d20-4f9a-c948-08dca0504448
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:49:38.7888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rdlPpRbfhpCVjqUSwRwOjo44eEYaGRp5fGhStprFlYR43FLv3ue2y8VTPUNFNHzWImqLyE3qkXloLCquTJ00JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5785
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 05, 2024 at 05:52:36PM +0300, Ville Syrjala wrote:
> From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> 
> Switch the FBC code over to intel_display from i915, as
> much as possible. This is the future direction so that
> the display code can be shared between i915 and xe more
> cleanly.
> 
> Some of the platform checks and the stolen mem facing stiff
> still need i915 around though.
> 
> Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  |   4 +-
>  .../drm/i915/display/intel_display_driver.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 422 ++++++++++--------
>  drivers/gpu/drm/i915/display/intel_fbc.h      |  13 +-
>  .../drm/i915/display/intel_fifo_underrun.c    |   2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   2 +-
>  6 files changed, 239 insertions(+), 208 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 91757fed9c6d..5cf9b4af9adf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1008,7 +1008,7 @@ i915_fifo_underrun_reset_write(struct file *filp,
>  			return ret;
>  	}
>  
> -	intel_fbc_reset_underrun(dev_priv);
> +	intel_fbc_reset_underrun(&dev_priv->display);
>  
>  	return cnt;
>  }
> @@ -1063,7 +1063,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  	intel_bios_debugfs_register(i915);
>  	intel_cdclk_debugfs_register(i915);
>  	intel_dmc_debugfs_register(i915);
> -	intel_fbc_debugfs_register(i915);
> +	intel_fbc_debugfs_register(&i915->display);
>  	intel_hpd_debugfs_register(i915);
>  	intel_opregion_debugfs_register(i915);
>  	intel_psr_debugfs_register(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 794b4af38055..13e206ec450f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -265,7 +265,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  
>  	intel_init_quirks(display);
>  
> -	intel_fbc_init(i915);
> +	intel_fbc_init(display);
>  
>  	return 0;
>  
> @@ -607,7 +607,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
>  	destroy_workqueue(i915->display.wq.flip);
>  	destroy_workqueue(i915->display.wq.modeset);
>  
> -	intel_fbc_cleanup(i915);
> +	intel_fbc_cleanup(&i915->display);
>  }
>  
>  /* part #3: call after gem init */
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index ba9820d4b78f..de8caa69a0dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -61,13 +61,13 @@
>  #include "intel_fbc_regs.h"
>  #include "intel_frontbuffer.h"
>  
> -#define for_each_fbc_id(__dev_priv, __fbc_id) \
> +#define for_each_fbc_id(__display, __fbc_id) \
>  	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
> -		for_each_if(DISPLAY_RUNTIME_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))
> +		for_each_if(DISPLAY_RUNTIME_INFO(__display)->fbc_mask & BIT(__fbc_id))
>  
> -#define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
> -	for_each_fbc_id((__dev_priv), (__fbc_id)) \
> -		for_each_if((__fbc) = (__dev_priv)->display.fbc[(__fbc_id)])
> +#define for_each_intel_fbc(__display, __fbc, __fbc_id) \
> +	for_each_fbc_id((__display), (__fbc_id)) \
> +		for_each_if((__fbc) = (__display)->fbc[(__fbc_id)])
>  
>  struct intel_fbc_funcs {
>  	void (*activate)(struct intel_fbc *fbc);
> @@ -90,7 +90,7 @@ struct intel_fbc_state {
>  };
>  
>  struct intel_fbc {
> -	struct drm_i915_private *i915;
> +	struct intel_display *display;
>  	const struct intel_fbc_funcs *funcs;
>  
>  	/*
> @@ -151,7 +151,7 @@ static unsigned int _intel_fbc_cfb_stride(const struct intel_plane_state *plane_
>  /* minimum acceptable cfb stride in bytes, assuming 1:1 compression limit */
>  static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	unsigned int limit = 4; /* 1:4 compression limit is the worst case */
>  	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
>  	unsigned int width = drm_rect_width(&plane_state->uapi.src) >> 16;
> @@ -165,7 +165,7 @@ static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane
>  	 * Wa_16011863758: icl+
>  	 * Avoid some hardware segment address miscalculation.
>  	 */
> -	if (DISPLAY_VER(i915) >= 11)
> +	if (DISPLAY_VER(display) >= 11)
>  		stride += 64;
>  
>  	/*
> @@ -181,7 +181,7 @@ static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane
>  /* properly aligned cfb stride in bytes, assuming 1:1 compression limit */
>  static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
>  
>  	/*
> @@ -189,7 +189,7 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
>  	 * be 512 byte aligned. Aligning each line to 512 bytes guarantees
>  	 * that regardless of the compression limit we choose later.
>  	 */
> -	if (DISPLAY_VER(i915) >= 9)
> +	if (DISPLAY_VER(display) >= 9)
>  		return max(ALIGN(stride, 512), skl_fbc_min_cfb_stride(plane_state));
>  	else
>  		return stride;
> @@ -197,12 +197,12 @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_s
>  
>  static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	int lines = drm_rect_height(&plane_state->uapi.src) >> 16;
>  
> -	if (DISPLAY_VER(i915) == 7)
> +	if (DISPLAY_VER(display) == 7)
>  		lines = min(lines, 2048);
> -	else if (DISPLAY_VER(i915) >= 8)
> +	else if (DISPLAY_VER(display) >= 8)
>  		lines = min(lines, 2560);
>  
>  	return lines * intel_fbc_cfb_stride(plane_state);
> @@ -210,7 +210,7 @@ static unsigned int intel_fbc_cfb_size(const struct intel_plane_state *plane_sta
>  
>  static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	unsigned int stride_aligned = intel_fbc_cfb_stride(plane_state);
>  	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> @@ -223,28 +223,31 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
>  	 * we always need to use the override there.
>  	 */
>  	if (stride != stride_aligned ||
> -	    (DISPLAY_VER(i915) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR))
> +	    (DISPLAY_VER(display) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR))
>  		return stride_aligned * 4 / 64;
>  
>  	return 0;
>  }
>  
> -static bool intel_fbc_has_fences(struct drm_i915_private *i915)
> +static bool intel_fbc_has_fences(struct intel_display *display)
>  {
> +	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);

I was going to ask why __maybe_unused,
but then I remember about the xe compat-headers where below function is
defined to 0...


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> +
>  	return intel_gt_support_legacy_fencing(to_gt(i915));
>  }
>  
>  static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	unsigned int cfb_stride;
>  	u32 fbc_ctl;
>  
>  	cfb_stride = fbc_state->cfb_stride / fbc->limit;
>  
>  	/* FBC_CTL wants 32B or 64B units */
> -	if (DISPLAY_VER(i915) == 2)
> +	if (DISPLAY_VER(display) == 2)
>  		cfb_stride = (cfb_stride / 32) - 1;
>  	else
>  		cfb_stride = (cfb_stride / 64) - 1;
> @@ -278,21 +281,21 @@ static u32 i965_fbc_ctl2(struct intel_fbc *fbc)
>  
>  static void i8xx_fbc_deactivate(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	u32 fbc_ctl;
>  
>  	/* Disable compression */
> -	fbc_ctl = intel_de_read(i915, FBC_CONTROL);
> +	fbc_ctl = intel_de_read(display, FBC_CONTROL);
>  	if ((fbc_ctl & FBC_CTL_EN) == 0)
>  		return;
>  
>  	fbc_ctl &= ~FBC_CTL_EN;
> -	intel_de_write(i915, FBC_CONTROL, fbc_ctl);
> +	intel_de_write(display, FBC_CONTROL, fbc_ctl);
>  
>  	/* Wait for compressing bit to clear */
> -	if (intel_de_wait_for_clear(i915, FBC_STATUS,
> +	if (intel_de_wait_for_clear(display, FBC_STATUS,
>  				    FBC_STAT_COMPRESSING, 10)) {
> -		drm_dbg_kms(&i915->drm, "FBC idle timed out\n");
> +		drm_dbg_kms(display->drm, "FBC idle timed out\n");
>  		return;
>  	}
>  }
> @@ -300,32 +303,32 @@ static void i8xx_fbc_deactivate(struct intel_fbc *fbc)
>  static void i8xx_fbc_activate(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	int i;
>  
>  	/* Clear old tags */
>  	for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
> -		intel_de_write(i915, FBC_TAG(i), 0);
> +		intel_de_write(display, FBC_TAG(i), 0);
>  
> -	if (DISPLAY_VER(i915) == 4) {
> -		intel_de_write(i915, FBC_CONTROL2,
> +	if (DISPLAY_VER(display) == 4) {
> +		intel_de_write(display, FBC_CONTROL2,
>  			       i965_fbc_ctl2(fbc));
> -		intel_de_write(i915, FBC_FENCE_OFF,
> +		intel_de_write(display, FBC_FENCE_OFF,
>  			       fbc_state->fence_y_offset);
>  	}
>  
> -	intel_de_write(i915, FBC_CONTROL,
> +	intel_de_write(display, FBC_CONTROL,
>  		       FBC_CTL_EN | i8xx_fbc_ctl(fbc));
>  }
>  
>  static bool i8xx_fbc_is_active(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, FBC_CONTROL) & FBC_CTL_EN;
> +	return intel_de_read(fbc->display, FBC_CONTROL) & FBC_CTL_EN;
>  }
>  
>  static bool i8xx_fbc_is_compressing(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, FBC_STATUS) &
> +	return intel_de_read(fbc->display, FBC_STATUS) &
>  		(FBC_STAT_COMPRESSING | FBC_STAT_COMPRESSED);
>  }
>  
> @@ -333,7 +336,7 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
>  {
>  	struct intel_fbc_state *fbc_state = &fbc->state;
>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
> -	struct drm_i915_private *dev_priv = fbc->i915;
> +	struct drm_i915_private *dev_priv = to_i915(fbc->display->drm);
>  
>  	intel_de_write_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane),
>  			  intel_de_read_fw(dev_priv, DSPADDR(dev_priv, i9xx_plane)));
> @@ -341,13 +344,14 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
>  
>  static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	drm_WARN_ON(&i915->drm,
> +	drm_WARN_ON(display->drm,
>  		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
>  					  i915_gem_stolen_node_offset(&fbc->compressed_fb),
>  					  U32_MAX));
> -	drm_WARN_ON(&i915->drm,
> +	drm_WARN_ON(display->drm,
>  		    range_overflows_end_t(u64, i915_gem_stolen_area_address(i915),
>  					  i915_gem_stolen_node_offset(&fbc->compressed_llb),
>  					  U32_MAX));
> @@ -370,7 +374,7 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
>  {
>  	struct intel_fbc_state *fbc_state = &fbc->state;
>  	enum i9xx_plane_id i9xx_plane = fbc_state->plane->i9xx_plane;
> -	struct drm_i915_private *dev_priv = fbc->i915;
> +	struct drm_i915_private *dev_priv = to_i915(fbc->display->drm);
>  
>  	intel_de_write_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane),
>  			  intel_de_read_fw(dev_priv, DSPSURF(dev_priv, i9xx_plane)));
> @@ -403,7 +407,8 @@ static u32 g4x_dpfc_ctl_limit(struct intel_fbc *fbc)
>  static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 dpfc_ctl;
>  
>  	dpfc_ctl = g4x_dpfc_ctl_limit(fbc) |
> @@ -415,7 +420,7 @@ static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
>  	if (fbc_state->fence_id >= 0) {
>  		dpfc_ctl |= DPFC_CTL_FENCE_EN_G4X;
>  
> -		if (DISPLAY_VER(i915) < 6)
> +		if (DISPLAY_VER(display) < 6)
>  			dpfc_ctl |= DPFC_CTL_FENCENO(fbc_state->fence_id);
>  	}
>  
> @@ -425,43 +430,43 @@ static u32 g4x_dpfc_ctl(struct intel_fbc *fbc)
>  static void g4x_fbc_activate(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  
> -	intel_de_write(i915, DPFC_FENCE_YOFF,
> +	intel_de_write(display, DPFC_FENCE_YOFF,
>  		       fbc_state->fence_y_offset);
>  
> -	intel_de_write(i915, DPFC_CONTROL,
> +	intel_de_write(display, DPFC_CONTROL,
>  		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
>  }
>  
>  static void g4x_fbc_deactivate(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	u32 dpfc_ctl;
>  
>  	/* Disable compression */
> -	dpfc_ctl = intel_de_read(i915, DPFC_CONTROL);
> +	dpfc_ctl = intel_de_read(display, DPFC_CONTROL);
>  	if (dpfc_ctl & DPFC_CTL_EN) {
>  		dpfc_ctl &= ~DPFC_CTL_EN;
> -		intel_de_write(i915, DPFC_CONTROL, dpfc_ctl);
> +		intel_de_write(display, DPFC_CONTROL, dpfc_ctl);
>  	}
>  }
>  
>  static bool g4x_fbc_is_active(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, DPFC_CONTROL) & DPFC_CTL_EN;
> +	return intel_de_read(fbc->display, DPFC_CONTROL) & DPFC_CTL_EN;
>  }
>  
>  static bool g4x_fbc_is_compressing(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
> +	return intel_de_read(fbc->display, DPFC_STATUS) & DPFC_COMP_SEG_MASK;
>  }
>  
>  static void g4x_fbc_program_cfb(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  
> -	intel_de_write(i915, DPFC_CB_BASE,
> +	intel_de_write(display, DPFC_CB_BASE,
>  		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
>  }
>  
> @@ -477,43 +482,43 @@ static const struct intel_fbc_funcs g4x_fbc_funcs = {
>  static void ilk_fbc_activate(struct intel_fbc *fbc)
>  {
>  	struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  
> -	intel_de_write(i915, ILK_DPFC_FENCE_YOFF(fbc->id),
> +	intel_de_write(display, ILK_DPFC_FENCE_YOFF(fbc->id),
>  		       fbc_state->fence_y_offset);
>  
> -	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
> +	intel_de_write(display, ILK_DPFC_CONTROL(fbc->id),
>  		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
>  }
>  
>  static void ilk_fbc_deactivate(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	u32 dpfc_ctl;
>  
>  	/* Disable compression */
> -	dpfc_ctl = intel_de_read(i915, ILK_DPFC_CONTROL(fbc->id));
> +	dpfc_ctl = intel_de_read(display, ILK_DPFC_CONTROL(fbc->id));
>  	if (dpfc_ctl & DPFC_CTL_EN) {
>  		dpfc_ctl &= ~DPFC_CTL_EN;
> -		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
> +		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
>  	}
>  }
>  
>  static bool ilk_fbc_is_active(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL(fbc->id)) & DPFC_CTL_EN;
> +	return intel_de_read(fbc->display, ILK_DPFC_CONTROL(fbc->id)) & DPFC_CTL_EN;
>  }
>  
>  static bool ilk_fbc_is_compressing(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, ILK_DPFC_STATUS(fbc->id)) & DPFC_COMP_SEG_MASK;
> +	return intel_de_read(fbc->display, ILK_DPFC_STATUS(fbc->id)) & DPFC_COMP_SEG_MASK;
>  }
>  
>  static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  
> -	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id),
> +	intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
>  		       i915_gem_stolen_node_offset(&fbc->compressed_fb));
>  }
>  
> @@ -529,14 +534,14 @@ static const struct intel_fbc_funcs ilk_fbc_funcs = {
>  static void snb_fbc_program_fence(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	u32 ctl = 0;
>  
>  	if (fbc_state->fence_id >= 0)
>  		ctl = SNB_DPFC_FENCE_EN | SNB_DPFC_FENCENO(fbc_state->fence_id);
>  
> -	intel_de_write(i915, SNB_DPFC_CTL_SA, ctl);
> -	intel_de_write(i915, SNB_DPFC_CPU_FENCE_OFFSET, fbc_state->fence_y_offset);
> +	intel_de_write(display, SNB_DPFC_CTL_SA, ctl);
> +	intel_de_write(display, SNB_DPFC_CPU_FENCE_OFFSET, fbc_state->fence_y_offset);
>  }
>  
>  static void snb_fbc_activate(struct intel_fbc *fbc)
> @@ -548,10 +553,10 @@ static void snb_fbc_activate(struct intel_fbc *fbc)
>  
>  static void snb_fbc_nuke(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  
> -	intel_de_write(i915, MSG_FBC_REND_STATE(fbc->id), FBC_REND_NUKE);
> -	intel_de_posting_read(i915, MSG_FBC_REND_STATE(fbc->id));
> +	intel_de_write(display, MSG_FBC_REND_STATE(fbc->id), FBC_REND_NUKE);
> +	intel_de_posting_read(display, MSG_FBC_REND_STATE(fbc->id));
>  }
>  
>  static const struct intel_fbc_funcs snb_fbc_funcs = {
> @@ -566,20 +571,20 @@ static const struct intel_fbc_funcs snb_fbc_funcs = {
>  static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	u32 val = 0;
>  
>  	if (fbc_state->override_cfb_stride)
>  		val |= FBC_STRIDE_OVERRIDE |
>  			FBC_STRIDE(fbc_state->override_cfb_stride / fbc->limit);
>  
> -	intel_de_write(i915, GLK_FBC_STRIDE(fbc->id), val);
> +	intel_de_write(display, GLK_FBC_STRIDE(fbc->id), val);
>  }
>  
>  static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	u32 val = 0;
>  
>  	/* Display WA #0529: skl, kbl, bxt. */
> @@ -587,7 +592,7 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
>  		val |= CHICKEN_FBC_STRIDE_OVERRIDE |
>  			CHICKEN_FBC_STRIDE(fbc_state->override_cfb_stride / fbc->limit);
>  
> -	intel_de_rmw(i915, CHICKEN_MISC_4,
> +	intel_de_rmw(display, CHICKEN_MISC_4,
>  		     CHICKEN_FBC_STRIDE_OVERRIDE |
>  		     CHICKEN_FBC_STRIDE_MASK, val);
>  }
> @@ -595,7 +600,8 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
>  static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  {
>  	const struct intel_fbc_state *fbc_state = &fbc->state;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 dpfc_ctl;
>  
>  	dpfc_ctl = g4x_dpfc_ctl_limit(fbc);
> @@ -603,7 +609,7 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  	if (IS_IVYBRIDGE(i915))
>  		dpfc_ctl |= DPFC_CTL_PLANE_IVB(fbc_state->plane->i9xx_plane);
>  
> -	if (DISPLAY_VER(i915) >= 20)
> +	if (DISPLAY_VER(display) >= 20)
>  		dpfc_ctl |= DPFC_CTL_PLANE_BINDING(fbc_state->plane->id);
>  
>  	if (fbc_state->fence_id >= 0)
> @@ -617,35 +623,35 @@ static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
>  
>  static void ivb_fbc_activate(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	u32 dpfc_ctl;
>  
> -	if (DISPLAY_VER(i915) >= 10)
> +	if (DISPLAY_VER(display) >= 10)
>  		glk_fbc_program_cfb_stride(fbc);
> -	else if (DISPLAY_VER(i915) == 9)
> +	else if (DISPLAY_VER(display) == 9)
>  		skl_fbc_program_cfb_stride(fbc);
>  
> -	if (intel_fbc_has_fences(i915))
> +	if (intel_fbc_has_fences(display))
>  		snb_fbc_program_fence(fbc);
>  
>  	/* wa_14019417088 Alternative WA*/
>  	dpfc_ctl = ivb_dpfc_ctl(fbc);
> -	if (DISPLAY_VER(i915) >= 20)
> -		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
> +	if (DISPLAY_VER(display) >= 20)
> +		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
>  
> -	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
> +	intel_de_write(display, ILK_DPFC_CONTROL(fbc->id),
>  		       DPFC_CTL_EN | dpfc_ctl);
>  }
>  
>  static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
>  {
> -	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2(fbc->id)) & DPFC_COMP_SEG_MASK_IVB;
> +	return intel_de_read(fbc->display, ILK_DPFC_STATUS2(fbc->id)) & DPFC_COMP_SEG_MASK_IVB;
>  }
>  
>  static void ivb_fbc_set_false_color(struct intel_fbc *fbc,
>  				    bool enable)
>  {
> -	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL(fbc->id),
> +	intel_de_rmw(fbc->display, ILK_DPFC_CONTROL(fbc->id),
>  		     DPFC_CTL_FALSE_COLOR, enable ? DPFC_CTL_FALSE_COLOR : 0);
>  }
>  
> @@ -690,10 +696,10 @@ static bool intel_fbc_is_compressing(struct intel_fbc *fbc)
>  
>  static void intel_fbc_nuke(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  
>  	lockdep_assert_held(&fbc->lock);
> -	drm_WARN_ON(&i915->drm, fbc->flip_pending);
> +	drm_WARN_ON(display->drm, fbc->flip_pending);
>  
>  	trace_intel_fbc_nuke(fbc->state.plane);
>  
> @@ -720,29 +726,32 @@ static void intel_fbc_deactivate(struct intel_fbc *fbc, const char *reason)
>  	fbc->no_fbc_reason = reason;
>  }
>  
> -static u64 intel_fbc_cfb_base_max(struct drm_i915_private *i915)
> +static u64 intel_fbc_cfb_base_max(struct intel_display *display)
>  {
> -	if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
>  		return BIT_ULL(28);
>  	else
>  		return BIT_ULL(32);
>  }
>  
> -static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
> +static u64 intel_fbc_stolen_end(struct intel_display *display)
>  {
> +	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);
>  	u64 end;
>  
>  	/* The FBC hardware for BDW/SKL doesn't have access to the stolen
>  	 * reserved range size, so it always assumes the maximum (8mb) is used.
>  	 * If we enable FBC using a CFB on that memory range we'll get FIFO
>  	 * underruns, even if that range is not reserved by the BIOS. */
> -	if (IS_BROADWELL(i915) ||
> -	    (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)))
> +	if (IS_BROADWELL(to_i915(display->drm)) ||
> +	    (DISPLAY_VER(display) == 9 && !IS_BROXTON(to_i915(display->drm))))
>  		end = i915_gem_stolen_area_size(i915) - 8 * 1024 * 1024;
>  	else
>  		end = U64_MAX;
>  
> -	return min(end, intel_fbc_cfb_base_max(i915));
> +	return min(end, intel_fbc_cfb_base_max(display));
>  }
>  
>  static int intel_fbc_min_limit(const struct intel_plane_state *plane_state)
> @@ -750,8 +759,10 @@ static int intel_fbc_min_limit(const struct intel_plane_state *plane_state)
>  	return plane_state->hw.fb->format->cpp[0] == 2 ? 2 : 1;
>  }
>  
> -static int intel_fbc_max_limit(struct drm_i915_private *i915)
> +static int intel_fbc_max_limit(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	/* WaFbcOnly1to1Ratio:ctg */
>  	if (IS_G4X(i915))
>  		return 1;
> @@ -766,8 +777,9 @@ static int intel_fbc_max_limit(struct drm_i915_private *i915)
>  static int find_compression_limit(struct intel_fbc *fbc,
>  				  unsigned int size, int min_limit)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> -	u64 end = intel_fbc_stolen_end(i915);
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	u64 end = intel_fbc_stolen_end(display);
>  	int ret, limit = min_limit;
>  
>  	size /= limit;
> @@ -778,7 +790,7 @@ static int find_compression_limit(struct intel_fbc *fbc,
>  	if (ret == 0)
>  		return limit;
>  
> -	for (; limit <= intel_fbc_max_limit(i915); limit <<= 1) {
> +	for (; limit <= intel_fbc_max_limit(display); limit <<= 1) {
>  		ret = i915_gem_stolen_insert_node_in_range(i915, &fbc->compressed_fb,
>  							   size >>= 1, 4096, 0, end);
>  		if (ret == 0)
> @@ -791,15 +803,16 @@ static int find_compression_limit(struct intel_fbc *fbc,
>  static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
>  			       unsigned int size, int min_limit)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	int ret;
>  
> -	drm_WARN_ON(&i915->drm,
> +	drm_WARN_ON(display->drm,
>  		    i915_gem_stolen_node_allocated(&fbc->compressed_fb));
> -	drm_WARN_ON(&i915->drm,
> +	drm_WARN_ON(display->drm,
>  		    i915_gem_stolen_node_allocated(&fbc->compressed_llb));
>  
> -	if (DISPLAY_VER(i915) < 5 && !IS_G4X(i915)) {
> +	if (DISPLAY_VER(display) < 5 && !IS_G4X(to_i915(display->drm))) {
>  		ret = i915_gem_stolen_insert_node(i915, &fbc->compressed_llb,
>  						  4096, 4096);
>  		if (ret)
> @@ -810,12 +823,12 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
>  	if (!ret)
>  		goto err_llb;
>  	else if (ret > min_limit)
> -		drm_info_once(&i915->drm,
> +		drm_info_once(display->drm,
>  			      "Reducing the compressed framebuffer size. This may lead to less power savings than a non-reduced-size. Try to increase stolen memory size if available in BIOS.\n");
>  
>  	fbc->limit = ret;
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "reserved %llu bytes of contiguous stolen space for FBC, limit: %d\n",
>  		    i915_gem_stolen_node_size(&fbc->compressed_fb), fbc->limit);
>  	return 0;
> @@ -825,7 +838,8 @@ static int intel_fbc_alloc_cfb(struct intel_fbc *fbc,
>  		i915_gem_stolen_remove_node(i915, &fbc->compressed_llb);
>  err:
>  	if (i915_gem_stolen_initialized(i915))
> -		drm_info_once(&i915->drm, "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
> +		drm_info_once(display->drm,
> +			      "not enough stolen space for compressed buffer (need %d more bytes), disabling. Hint: you may be able to increase stolen memory size in the BIOS to avoid this.\n", size);
>  	return -ENOSPC;
>  }
>  
> @@ -836,14 +850,15 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
>  
>  static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	if (IS_SKYLAKE(i915) || IS_BROXTON(i915)) {
>  		/*
>  		 * WaFbcHighMemBwCorruptionAvoidance:skl,bxt
>  		 * Display WA #0883: skl,bxt
>  		 */
> -		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
> +		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_DISABLE_DUMMY0);
>  	}
>  
> @@ -853,24 +868,25 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  		 * WaFbcNukeOnHostModify:skl,kbl,cfl
>  		 * Display WA #0873: skl,kbl,cfl
>  		 */
> -		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
> +		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_NUKE_ON_ANY_MODIFICATION);
>  	}
>  
>  	/* Wa_1409120013:icl,jsl,tgl,dg1 */
> -	if (IS_DISPLAY_VER(i915, 11, 12))
> -		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
> +	if (IS_DISPLAY_VER(display, 11, 12))
> +		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
>  	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
> -	if (DISPLAY_VER(i915) >= 11 && !IS_DG2(i915))
> -		intel_de_rmw(i915, ILK_DPFC_CHICKEN(fbc->id),
> +	if (DISPLAY_VER(display) >= 11 && !IS_DG2(i915))
> +		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>  }
>  
>  static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>  		return;
> @@ -881,12 +897,12 @@ static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>  		i915_gem_stolen_remove_node(i915, &fbc->compressed_fb);
>  }
>  
> -void intel_fbc_cleanup(struct drm_i915_private *i915)
> +void intel_fbc_cleanup(struct intel_display *display)
>  {
>  	struct intel_fbc *fbc;
>  	enum intel_fbc_id fbc_id;
>  
> -	for_each_intel_fbc(i915, fbc, fbc_id) {
> +	for_each_intel_fbc(display, fbc, fbc_id) {
>  		mutex_lock(&fbc->lock);
>  		__intel_fbc_cleanup_cfb(fbc);
>  		mutex_unlock(&fbc->lock);
> @@ -938,15 +954,16 @@ static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
>  
>  static bool stride_is_valid(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(i915) >= 11)
> +	if (DISPLAY_VER(display) >= 11)
>  		return icl_fbc_stride_is_valid(plane_state);
> -	else if (DISPLAY_VER(i915) >= 9)
> +	else if (DISPLAY_VER(display) >= 9)
>  		return skl_fbc_stride_is_valid(plane_state);
> -	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
> +	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
>  		return g4x_fbc_stride_is_valid(plane_state);
> -	else if (DISPLAY_VER(i915) == 4)
> +	else if (DISPLAY_VER(display) == 4)
>  		return i965_fbc_stride_is_valid(plane_state);
>  	else
>  		return i8xx_fbc_stride_is_valid(plane_state);
> @@ -954,7 +971,7 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
>  
>  static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  
>  	switch (fb->format->format) {
> @@ -964,7 +981,7 @@ static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane
>  	case DRM_FORMAT_XRGB1555:
>  	case DRM_FORMAT_RGB565:
>  		/* 16bpp not supported on gen2 */
> -		if (DISPLAY_VER(i915) == 2)
> +		if (DISPLAY_VER(display) == 2)
>  			return false;
>  		return true;
>  	default:
> @@ -974,7 +991,8 @@ static bool i8xx_fbc_pixel_format_is_valid(const struct intel_plane_state *plane
>  
>  static bool g4x_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  
>  	switch (fb->format->format) {
> @@ -1009,11 +1027,12 @@ static bool lnl_fbc_pixel_format_is_valid(const struct intel_plane_state *plane_
>  
>  static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(i915) >= 20)
> +	if (DISPLAY_VER(display) >= 20)
>  		return lnl_fbc_pixel_format_is_valid(plane_state);
> -	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
> +	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
>  		return g4x_fbc_pixel_format_is_valid(plane_state);
>  	else
>  		return i8xx_fbc_pixel_format_is_valid(plane_state);
> @@ -1043,11 +1062,12 @@ static bool skl_fbc_rotation_is_valid(const struct intel_plane_state *plane_stat
>  
>  static bool rotation_is_valid(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (DISPLAY_VER(i915) >= 9)
> +	if (DISPLAY_VER(display) >= 9)
>  		return skl_fbc_rotation_is_valid(plane_state);
> -	else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
> +	else if (DISPLAY_VER(display) >= 5 || IS_G4X(i915))
>  		return g4x_fbc_rotation_is_valid(plane_state);
>  	else
>  		return i8xx_fbc_rotation_is_valid(plane_state);
> @@ -1061,19 +1081,20 @@ static bool rotation_is_valid(const struct intel_plane_state *plane_state)
>   */
>  static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	unsigned int effective_w, effective_h, max_w, max_h;
>  
> -	if (DISPLAY_VER(i915) >= 11) {
> +	if (DISPLAY_VER(display) >= 11) {
>  		max_w = 8192;
>  		max_h = 4096;
> -	} else if (DISPLAY_VER(i915) >= 10) {
> +	} else if (DISPLAY_VER(display) >= 10) {
>  		max_w = 5120;
>  		max_h = 4096;
> -	} else if (DISPLAY_VER(i915) >= 7) {
> +	} else if (DISPLAY_VER(display) >= 7) {
>  		max_w = 4096;
>  		max_h = 4096;
> -	} else if (IS_G4X(i915) || DISPLAY_VER(i915) >= 5) {
> +	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
>  		max_w = 4096;
>  		max_h = 2048;
>  	} else {
> @@ -1091,16 +1112,17 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *
>  
>  static bool intel_fbc_plane_size_valid(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	unsigned int w, h, max_w, max_h;
>  
> -	if (DISPLAY_VER(i915) >= 10) {
> +	if (DISPLAY_VER(display) >= 10) {
>  		max_w = 5120;
>  		max_h = 4096;
> -	} else if (DISPLAY_VER(i915) >= 8 || IS_HASWELL(i915)) {
> +	} else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(i915)) {
>  		max_w = 4096;
>  		max_h = 4096;
> -	} else if (IS_G4X(i915) || DISPLAY_VER(i915) >= 5) {
> +	} else if (IS_G4X(i915) || DISPLAY_VER(display) >= 5) {
>  		max_w = 4096;
>  		max_h = 2048;
>  	} else {
> @@ -1128,9 +1150,9 @@ static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
>  
>  static bool tiling_is_valid(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  
> -	if (DISPLAY_VER(i915) >= 9)
> +	if (DISPLAY_VER(display) >= 9)
>  		return skl_fbc_tiling_valid(plane_state);
>  	else
>  		return i8xx_fbc_tiling_valid(plane_state);
> @@ -1140,7 +1162,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc,
>  				   struct intel_plane *plane)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state->base.dev);
>  	const struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	const struct intel_plane_state *plane_state =
> @@ -1158,8 +1180,8 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  
>  	fbc_state->fence_y_offset = intel_plane_fence_y_offset(plane_state);
>  
> -	drm_WARN_ON(&i915->drm, plane_state->flags & PLANE_HAS_FENCE &&
> -		    !intel_fbc_has_fences(i915));
> +	drm_WARN_ON(display->drm, plane_state->flags & PLANE_HAS_FENCE &&
> +		    !intel_fbc_has_fences(display));
>  
>  	if (plane_state->flags & PLANE_HAS_FENCE)
>  		fbc_state->fence_id =  i915_vma_fence_id(plane_state->ggtt_vma);
> @@ -1173,7 +1195,7 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
>  
>  static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> +	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  
>  	/*
>  	 * The use of a CPU fence is one of two ways to detect writes by the
> @@ -1187,7 +1209,7 @@ static bool intel_fbc_is_fence_ok(const struct intel_plane_state *plane_state)
>  	 * so have no fence associated with it) due to aperture constraints
>  	 * at the time of pinning.
>  	 */
> -	return DISPLAY_VER(i915) >= 9 ||
> +	return DISPLAY_VER(display) >= 9 ||
>  		(plane_state->flags & PLANE_HAS_FENCE &&
>  		 i915_vma_fence_id(plane_state->ggtt_vma) != -1);
>  }
> @@ -1212,7 +1234,8 @@ static bool intel_fbc_is_ok(const struct intel_plane_state *plane_state)
>  static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  				 struct intel_plane *plane)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state->base.dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_plane_state *plane_state =
>  		intel_atomic_get_new_plane_state(state, plane);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> @@ -1233,7 +1256,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (!i915->display.params.enable_fbc) {
> +	if (!display->params.enable_fbc) {
>  		plane_state->no_fbc_reason = "disabled per module param or by default";
>  		return 0;
>  	}
> @@ -1271,14 +1294,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	 * Recommendation is to keep this combination disabled
>  	 * Bspec: 50422 HSD: 14010260002
>  	 */
> -	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_sel_update &&
> +	if (IS_DISPLAY_VER(display, 12, 14) && crtc_state->has_sel_update &&
>  	    !crtc_state->has_panel_replay) {
>  		plane_state->no_fbc_reason = "PSR2 enabled";
>  		return 0;
>  	}
>  
>  	/* Wa_14016291713 */
> -	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> +	if ((IS_DISPLAY_VER(display, 12, 13) ||
>  	     IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_C0)) &&
>  	    crtc_state->has_psr && !crtc_state->has_panel_replay) {
>  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
> @@ -1305,7 +1328,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (DISPLAY_VER(i915) < 20 &&
> +	if (DISPLAY_VER(display) < 20 &&
>  	    plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
>  	    fb->format->has_alpha) {
>  		plane_state->no_fbc_reason = "per-pixel alpha not supported";
> @@ -1327,14 +1350,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	 * having a Y offset that isn't divisible by 4 causes FIFO underrun
>  	 * and screen flicker.
>  	 */
> -	if (DISPLAY_VER(i915) >= 9 &&
> +	if (DISPLAY_VER(display) >= 9 &&
>  	    plane_state->view.color_plane[0].y & 3) {
>  		plane_state->no_fbc_reason = "plane start Y offset misaligned";
>  		return 0;
>  	}
>  
>  	/* Wa_22010751166: icl, ehl, tgl, dg1, rkl */
> -	if (DISPLAY_VER(i915) >= 11 &&
> +	if (DISPLAY_VER(display) >= 11 &&
>  	    (plane_state->view.color_plane[0].y +
>  	     (drm_rect_height(&plane_state->uapi.src) >> 16)) & 3) {
>  		plane_state->no_fbc_reason = "plane end Y offset misaligned";
> @@ -1410,7 +1433,7 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc,
>  				   struct intel_plane *plane)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state->base.dev);
>  	struct intel_fbc *fbc = plane->fbc;
>  	bool need_vblank_wait = false;
>  
> @@ -1436,7 +1459,7 @@ static bool __intel_fbc_pre_update(struct intel_atomic_state *state,
>  	 * and skipping the extra vblank wait before the plane update
>  	 * if at least one frame has already passed.
>  	 */
> -	if (fbc->activated && DISPLAY_VER(i915) >= 10)
> +	if (fbc->activated && DISPLAY_VER(display) >= 10)
>  		need_vblank_wait = true;
>  	fbc->activated = false;
>  
> @@ -1470,13 +1493,13 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
>  
>  static void __intel_fbc_disable(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  	struct intel_plane *plane = fbc->state.plane;
>  
>  	lockdep_assert_held(&fbc->lock);
> -	drm_WARN_ON(&i915->drm, fbc->active);
> +	drm_WARN_ON(display->drm, fbc->active);
>  
> -	drm_dbg_kms(&i915->drm, "Disabling FBC on [PLANE:%d:%s]\n",
> +	drm_dbg_kms(display->drm, "Disabling FBC on [PLANE:%d:%s]\n",
>  		    plane->base.base.id, plane->base.name);
>  
>  	__intel_fbc_cleanup_cfb(fbc);
> @@ -1553,7 +1576,7 @@ void intel_fbc_invalidate(struct drm_i915_private *i915,
>  	struct intel_fbc *fbc;
>  	enum intel_fbc_id fbc_id;
>  
> -	for_each_intel_fbc(i915, fbc, fbc_id)
> +	for_each_intel_fbc(&i915->display, fbc, fbc_id)
>  		__intel_fbc_invalidate(fbc, frontbuffer_bits, origin);
>  
>  }
> @@ -1592,7 +1615,7 @@ void intel_fbc_flush(struct drm_i915_private *i915,
>  	struct intel_fbc *fbc;
>  	enum intel_fbc_id fbc_id;
>  
> -	for_each_intel_fbc(i915, fbc, fbc_id)
> +	for_each_intel_fbc(&i915->display, fbc, fbc_id)
>  		__intel_fbc_flush(fbc, frontbuffer_bits, origin);
>  }
>  
> @@ -1617,7 +1640,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
>  			       struct intel_crtc *crtc,
>  			       struct intel_plane *plane)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state->base.dev);
>  	const struct intel_plane_state *plane_state =
>  		intel_atomic_get_new_plane_state(state, plane);
>  	struct intel_fbc *fbc = plane->fbc;
> @@ -1636,7 +1659,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
>  		__intel_fbc_disable(fbc);
>  	}
>  
> -	drm_WARN_ON(&i915->drm, fbc->active);
> +	drm_WARN_ON(display->drm, fbc->active);
>  
>  	fbc->no_fbc_reason = plane_state->no_fbc_reason;
>  	if (fbc->no_fbc_reason)
> @@ -1658,7 +1681,7 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
>  		return;
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "Enabling FBC on [PLANE:%d:%s]\n",
> +	drm_dbg_kms(display->drm, "Enabling FBC on [PLANE:%d:%s]\n",
>  		    plane->base.base.id, plane->base.name);
>  	fbc->no_fbc_reason = "FBC enabled but not active yet\n";
>  
> @@ -1676,10 +1699,10 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
>   */
>  void intel_fbc_disable(struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc->base.dev);
>  	struct intel_plane *plane;
>  
> -	for_each_intel_plane(&i915->drm, plane) {
> +	for_each_intel_plane(display->drm, plane) {
>  		struct intel_fbc *fbc = plane->fbc;
>  
>  		if (!fbc || plane->pipe != crtc->pipe)
> @@ -1724,7 +1747,8 @@ void intel_fbc_update(struct intel_atomic_state *state,
>  static void intel_fbc_underrun_work_fn(struct work_struct *work)
>  {
>  	struct intel_fbc *fbc = container_of(work, typeof(*fbc), underrun_work);
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	mutex_lock(&fbc->lock);
>  
> @@ -1732,7 +1756,7 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
>  	if (fbc->underrun_detected || !fbc->state.plane)
>  		goto out;
>  
> -	drm_dbg_kms(&i915->drm, "Disabling FBC due to FIFO underrun.\n");
> +	drm_dbg_kms(display->drm, "Disabling FBC due to FIFO underrun.\n");
>  	fbc->underrun_detected = true;
>  
>  	intel_fbc_deactivate(fbc, "FIFO underrun");
> @@ -1745,14 +1769,14 @@ static void intel_fbc_underrun_work_fn(struct work_struct *work)
>  
>  static void __intel_fbc_reset_underrun(struct intel_fbc *fbc)
>  {
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
>  
>  	cancel_work_sync(&fbc->underrun_work);
>  
>  	mutex_lock(&fbc->lock);
>  
>  	if (fbc->underrun_detected) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Re-allowing FBC after fifo underrun\n");
>  		fbc->no_fbc_reason = "FIFO underrun cleared";
>  	}
> @@ -1763,22 +1787,24 @@ static void __intel_fbc_reset_underrun(struct intel_fbc *fbc)
>  
>  /*
>   * intel_fbc_reset_underrun - reset FBC fifo underrun status.
> - * @i915: the i915 device
> + * @display: display
>   *
>   * See intel_fbc_handle_fifo_underrun_irq(). For automated testing we
>   * want to re-enable FBC after an underrun to increase test coverage.
>   */
> -void intel_fbc_reset_underrun(struct drm_i915_private *i915)
> +void intel_fbc_reset_underrun(struct intel_display *display)
>  {
>  	struct intel_fbc *fbc;
>  	enum intel_fbc_id fbc_id;
>  
> -	for_each_intel_fbc(i915, fbc, fbc_id)
> +	for_each_intel_fbc(display, fbc, fbc_id)
>  		__intel_fbc_reset_underrun(fbc);
>  }
>  
>  static void __intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
>  {
> +	struct drm_i915_private *i915 = to_i915(fbc->display->drm);
> +
>  	/*
>  	 * There's no guarantee that underrun_detected won't be set to true
>  	 * right after this check and before the work is scheduled, but that's
> @@ -1790,12 +1816,12 @@ static void __intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
>  	if (READ_ONCE(fbc->underrun_detected))
>  		return;
>  
> -	queue_work(fbc->i915->unordered_wq, &fbc->underrun_work);
> +	queue_work(i915->unordered_wq, &fbc->underrun_work);
>  }
>  
>  /**
>   * intel_fbc_handle_fifo_underrun_irq - disable FBC when we get a FIFO underrun
> - * @i915: i915 device
> + * @display: display
>   *
>   * Without FBC, most underruns are harmless and don't really cause too many
>   * problems, except for an annoying message on dmesg. With FBC, underruns can
> @@ -1807,12 +1833,12 @@ static void __intel_fbc_handle_fifo_underrun_irq(struct intel_fbc *fbc)
>   *
>   * This function is called from the IRQ handler.
>   */
> -void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
> +void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display)
>  {
>  	struct intel_fbc *fbc;
>  	enum intel_fbc_id fbc_id;
>  
> -	for_each_intel_fbc(i915, fbc, fbc_id)
> +	for_each_intel_fbc(display, fbc, fbc_id)
>  		__intel_fbc_handle_fifo_underrun_irq(fbc);
>  }
>  
> @@ -1825,15 +1851,17 @@ void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
>   * space to change the value during runtime without sanitizing it again. IGT
>   * relies on being able to change i915.enable_fbc at runtime.
>   */
> -static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
> +static int intel_sanitize_fbc_option(struct intel_display *display)
>  {
> -	if (i915->display.params.enable_fbc >= 0)
> -		return !!i915->display.params.enable_fbc;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (!HAS_FBC(i915))
> +	if (display->params.enable_fbc >= 0)
> +		return !!display->params.enable_fbc;
> +
> +	if (!HAS_FBC(display))
>  		return 0;
>  
> -	if (IS_BROADWELL(i915) || DISPLAY_VER(i915) >= 9)
> +	if (IS_BROADWELL(i915) || DISPLAY_VER(display) >= 9)
>  		return 1;
>  
>  	return 0;
> @@ -1844,9 +1872,10 @@ void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
>  	plane->fbc = fbc;
>  }
>  
> -static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
> +static struct intel_fbc *intel_fbc_create(struct intel_display *display,
>  					  enum intel_fbc_id fbc_id)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_fbc *fbc;
>  
>  	fbc = kzalloc(sizeof(*fbc), GFP_KERNEL);
> @@ -1854,19 +1883,19 @@ static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
>  		return NULL;
>  
>  	fbc->id = fbc_id;
> -	fbc->i915 = i915;
> +	fbc->display = display;
>  	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
>  	mutex_init(&fbc->lock);
>  
> -	if (DISPLAY_VER(i915) >= 7)
> +	if (DISPLAY_VER(display) >= 7)
>  		fbc->funcs = &ivb_fbc_funcs;
> -	else if (DISPLAY_VER(i915) == 6)
> +	else if (DISPLAY_VER(display) == 6)
>  		fbc->funcs = &snb_fbc_funcs;
> -	else if (DISPLAY_VER(i915) == 5)
> +	else if (DISPLAY_VER(display) == 5)
>  		fbc->funcs = &ilk_fbc_funcs;
>  	else if (IS_G4X(i915))
>  		fbc->funcs = &g4x_fbc_funcs;
> -	else if (DISPLAY_VER(i915) == 4)
> +	else if (DISPLAY_VER(display) == 4)
>  		fbc->funcs = &i965_fbc_funcs;
>  	else
>  		fbc->funcs = &i8xx_fbc_funcs;
> @@ -1876,36 +1905,36 @@ static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
>  
>  /**
>   * intel_fbc_init - Initialize FBC
> - * @i915: the i915 device
> + * @display: display
>   *
>   * This function might be called during PM init process.
>   */
> -void intel_fbc_init(struct drm_i915_private *i915)
> +void intel_fbc_init(struct intel_display *display)
>  {
>  	enum intel_fbc_id fbc_id;
>  
> -	i915->display.params.enable_fbc = intel_sanitize_fbc_option(i915);
> -	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
> -		    i915->display.params.enable_fbc);
> +	display->params.enable_fbc = intel_sanitize_fbc_option(display);
> +	drm_dbg_kms(display->drm, "Sanitized enable_fbc value: %d\n",
> +		    display->params.enable_fbc);
>  
> -	for_each_fbc_id(i915, fbc_id)
> -		i915->display.fbc[fbc_id] = intel_fbc_create(i915, fbc_id);
> +	for_each_fbc_id(display, fbc_id)
> +		display->fbc[fbc_id] = intel_fbc_create(display, fbc_id);
>  }
>  
>  /**
>   * intel_fbc_sanitize - Sanitize FBC
> - * @i915: the i915 device
> + * @display: display
>   *
>   * Make sure FBC is initially disabled since we have no
>   * idea eg. into which parts of stolen it might be scribbling
>   * into.
>   */
> -void intel_fbc_sanitize(struct drm_i915_private *i915)
> +void intel_fbc_sanitize(struct intel_display *display)
>  {
>  	struct intel_fbc *fbc;
>  	enum intel_fbc_id fbc_id;
>  
> -	for_each_intel_fbc(i915, fbc, fbc_id) {
> +	for_each_intel_fbc(display, fbc, fbc_id) {
>  		if (intel_fbc_hw_is_active(fbc))
>  			intel_fbc_hw_deactivate(fbc);
>  	}
> @@ -1914,11 +1943,12 @@ void intel_fbc_sanitize(struct drm_i915_private *i915)
>  static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>  {
>  	struct intel_fbc *fbc = m->private;
> -	struct drm_i915_private *i915 = fbc->i915;
> +	struct intel_display *display = fbc->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_plane *plane;
>  	intel_wakeref_t wakeref;
>  
> -	drm_modeset_lock_all(&i915->drm);
> +	drm_modeset_lock_all(display->drm);
>  
>  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  	mutex_lock(&fbc->lock);
> @@ -1931,7 +1961,7 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>  		seq_printf(m, "FBC disabled: %s\n", fbc->no_fbc_reason);
>  	}
>  
> -	for_each_intel_plane(&i915->drm, plane) {
> +	for_each_intel_plane(display->drm, plane) {
>  		const struct intel_plane_state *plane_state =
>  			to_intel_plane_state(plane->base.state);
>  
> @@ -1947,7 +1977,7 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>  	mutex_unlock(&fbc->lock);
>  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  
> -	drm_modeset_unlock_all(&i915->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
>  	return 0;
>  }
> @@ -2004,12 +2034,12 @@ void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc)
>  }
>  
>  /* FIXME: remove this once igt is on board with per-crtc stuff */
> -void intel_fbc_debugfs_register(struct drm_i915_private *i915)
> +void intel_fbc_debugfs_register(struct intel_display *display)
>  {
> -	struct drm_minor *minor = i915->drm.primary;
> +	struct drm_minor *minor = display->drm->primary;
>  	struct intel_fbc *fbc;
>  
> -	fbc = i915->display.fbc[INTEL_FBC_A];
> +	fbc = display->fbc[INTEL_FBC_A];
>  	if (fbc)
>  		intel_fbc_debugfs_add(fbc, minor->debugfs_root);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> index 6720ec8ee8a2..834b271505b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> @@ -13,6 +13,7 @@ struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_fbc;
>  struct intel_plane;
>  struct intel_plane_state;
> @@ -31,9 +32,9 @@ bool intel_fbc_pre_update(struct intel_atomic_state *state,
>  			  struct intel_crtc *crtc);
>  void intel_fbc_post_update(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc);
> -void intel_fbc_init(struct drm_i915_private *dev_priv);
> -void intel_fbc_cleanup(struct drm_i915_private *dev_priv);
> -void intel_fbc_sanitize(struct drm_i915_private *dev_priv);
> +void intel_fbc_init(struct intel_display *dev_priv);
> +void intel_fbc_cleanup(struct intel_display *dev_priv);
> +void intel_fbc_sanitize(struct intel_display *dev_priv);
>  void intel_fbc_update(struct intel_atomic_state *state,
>  		      struct intel_crtc *crtc);
>  void intel_fbc_disable(struct intel_crtc *crtc);
> @@ -43,9 +44,9 @@ void intel_fbc_invalidate(struct drm_i915_private *dev_priv,
>  void intel_fbc_flush(struct drm_i915_private *dev_priv,
>  		     unsigned int frontbuffer_bits, enum fb_op_origin origin);
>  void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane);
> -void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915);
> -void intel_fbc_reset_underrun(struct drm_i915_private *i915);
> +void intel_fbc_handle_fifo_underrun_irq(struct intel_display *display);
> +void intel_fbc_reset_underrun(struct intel_display *display);
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc);
> -void intel_fbc_debugfs_register(struct drm_i915_private *i915);
> +void intel_fbc_debugfs_register(struct intel_display *display);
>  
>  #endif /* __INTEL_FBC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index e5e4ca7cc499..8949fbb1cc60 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -440,7 +440,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
>  	}
>  
> -	intel_fbc_handle_fifo_underrun_irq(dev_priv);
> +	intel_fbc_handle_fifo_underrun_irq(&dev_priv->display);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index 7602cb30ebf1..6f85f5352455 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -966,7 +966,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
>  		}
>  	}
>  
> -	intel_fbc_sanitize(i915);
> +	intel_fbc_sanitize(&i915->display);
>  
>  	intel_sanitize_plane_mapping(i915);
>  
> -- 
> 2.44.2
> 
