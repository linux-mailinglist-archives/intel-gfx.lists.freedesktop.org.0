Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51DEDA08131
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 21:12:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3AA910E051;
	Thu,  9 Jan 2025 20:12:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b45qSMyT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7066D10E051
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 20:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736453524; x=1767989524;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=POqRaUu7Xw02tbSqh4r35D3IC34ae7+yfjxdSJuQRF0=;
 b=b45qSMyTwng9D+WWEFD5JE5L3X8VFfXHbkKRcY3gWh3BDVrWIX4byBzO
 7FqZNiTr1WKxJn5ipOSLat8E0mFGd2BPPV5/aMA/bQ0D+3DPxwrsX4qM3
 5s4UovzqRgYoqZLLi7b2UXQjuCtr+9F8LoLWFM6frp3sToZ7qSemOIYCb
 IBJ+TPzVyhJfA5wGz2bKWSI11AzJnpY2DzZpA28qeLDpIhizOjmTmtfyg
 QOk31xX5ZcP4K25HPhK2ovQ01NuPRWB5gexosFEgHAozw84xq6AlxIhI6
 kdpvaOQG0rpbg9uAGnzWE/rQfUqcIK8pVL8oFT8dfu4Oen1rmHSBSTbW1 g==;
X-CSE-ConnectionGUID: IL6nF6vQQoSWpqjKaXXZdA==
X-CSE-MsgGUID: 8rOQ5RFsT1upgH7b8+ND2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="40678177"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="40678177"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 12:12:01 -0800
X-CSE-ConnectionGUID: J/c+7XoXTGqn9FYGcA2REQ==
X-CSE-MsgGUID: gGwaFU8HRo6beXd4zRST7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="103314752"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 12:11:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 12:11:59 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 12:11:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 12:11:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BkgQKoN2B9oRuC4cUVe1dQyBSQoJvmKKiDTtZIrxQ6WqU7+40iw+r0q/oSJnhUBXI+LV6VDFfFqFZ8ZxRvuK7fSbxR/woyeU4UKPjRmmRMzwcUOJG3ZU8kPma5FNtedkh5N8f28PJjmYX/NmEhICcBdvDnvePUgxdEluSohX2xwfmXThC3l5SHbLizlr9VGLzxMPpAJsnm5pPUumNGczWkdvKStbvMcrkKD/RqS+2dsrXskObexv3fTw7flfFXYOxwMRgZCRb2A3xO61rlzJi86J2rEJQrd/GJ7Waxj682BS5AsaYsFXp4DJHBlsCRrue8jEfNoEauaUi0GFqU/ECQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wg6mA3yjSQ4DMT4fFsnZU2R7iykaFLQXvmO1UDaZceE=;
 b=OSfBmTIrFLwN5t/0ixDJbSbvCAePxv7DeFnCs7yLDO8KwQ5ndSViY0xp2jHjr+6zodbwZYMZZe8bWuJIN5+E6GSaNApmDTa+3OK3YBU7W9+vtO52s28JiZj65/6GZ+VoMKqToeULcLaFJqIDpWuxR49KaUaU+7C48sOt6Ws2TcMFxGrTRx+nFYRu7cTcRHSjVr6Oo4nZlRd3Dk9lRPdqjK1cOxBUCfVrk8w3FF2hvPQCD5L+WxTzjfnNDNtfrd0a+o3fL2JaHOLFsrgGpmS9Tce+6HqE5/ixEOH3bLuGZzfwRfHfX5CmJf/xxjdnaV5wTOshvxy4ZEUYvyatmhHYWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB6857.namprd11.prod.outlook.com (2603:10b6:510:1ed::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.13; Thu, 9 Jan
 2025 20:11:56 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 20:11:56 +0000
Date: Thu, 9 Jan 2025 12:11:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Francois Dugast
 <francois.dugast@intel.com>
Subject: Re: [PATCH] drm/xe/xe3: Generate and store the L3 bank mask
Message-ID: <20250109201153.GB4460@mdroper-desk1.amr.corp.intel.com>
References: <20250109200604.152106-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250109200604.152106-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR05CA0152.namprd05.prod.outlook.com
 (2603:10b6:a03:339::7) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB6857:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c2886e8-b9ab-4440-14cc-08dd30e9ddd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?W/z0DDVPwsWoNWqpZpT9ArmCkOL6W737Y4FqqsSMoJSYCN/7VOFnD42wL68M?=
 =?us-ascii?Q?oPkbzy3oinclRfnL8Mqg8Ry1Upfv0TPmuAka+DUZLkTWvQiMh8vHYjU3bB1e?=
 =?us-ascii?Q?IjWoa5mDkQ/DaPtUI56QKI+tJAFGuqJcdtdGXmp+lMxfhrVuHh3pqCWmIXCu?=
 =?us-ascii?Q?C7GUA8cFB16JBAbd84iVPts0/6dj0OSm6jCRW5QUSXxv/WlpxfdOK7jWYIs4?=
 =?us-ascii?Q?ocEPwqIK+4T/955rbU0P1hPfpfDpbHPTjKEcIQcjyp0zUK8h7IfJwBOOZqYA?=
 =?us-ascii?Q?omnm/6Wq+lDnjwVu0sgAHULLoBlrLkNw0qHyjt5simMCd/1/viaOMpbOV9v/?=
 =?us-ascii?Q?dlPb/fpyoedRUig1cjr85VHJnQrLsd7vNTh3Yz7UIUkgZlAAuj1Lb98CAESL?=
 =?us-ascii?Q?dB2oKYvKNqw/csU4YFNVW4kTz/Pyr7ek1KIpI21Vjh8W9QU7BHRf8dWXbuAp?=
 =?us-ascii?Q?WIao8td3uYzq3z+dlXeEe6YqGSJy6qgbacp2i19gLa/H6FmhpVHCxfFITs65?=
 =?us-ascii?Q?Iy9bbXna3YMd79xh3YAEILTyYS2wwohTXnaDdXr5/jmLJBCsg4yMiXu+1laA?=
 =?us-ascii?Q?Hs4wyw25GxqbTZFA27qTyn+ZV0irzRE+vOpTZDNSxuP8nI9t5ogY7y7D5sIW?=
 =?us-ascii?Q?TUaEjUcK/mAVHbnuzpSN6SFkViJJl6IU0IO468QrhPQrwi1FVRJiVy5YU7Wp?=
 =?us-ascii?Q?K83FidJeQLtFTXopACX/kw34Epr8VmAc0RNgHnlvU2oLsDXQwC1z+eawMlzd?=
 =?us-ascii?Q?DT3AOKCF/MCo3Sj1AeZNpFYHhjUUB3WSPl8iK0QDeekUnlfRa9WI+hiJmxDC?=
 =?us-ascii?Q?iaJjUNn2CYxzUVpSkShU5MpDlYHtqalWVswm1l5Uvl5yxmz9ZG1mhzkn0KTY?=
 =?us-ascii?Q?IyEo6I7hZqHKU88mj58j4Tbflxo5Xfheh8nCpzyTAFW7BOEW7lweyNSLqJ2k?=
 =?us-ascii?Q?7Nye4Upuaw+sBhDklqOegokmGCWY8aYYRT58zJhI8G29/vKRtHa/EZVyM4Qm?=
 =?us-ascii?Q?Gy2KlMqe9o4H5n34W0fy2DG02O/5cCetORgj8Pbn5xATDCmRpn2VrqwuhYkR?=
 =?us-ascii?Q?/CRWVXHrdHs2682jlvjutOnE/re5KSpd9OrX2WIDlGQ5a/IRDZA00fboZd+U?=
 =?us-ascii?Q?gZEMOthkcb4qDyKoAig1A+vooQWqCbn9LqKhCmQVw1D7okT1Mn9VdP3qaPUk?=
 =?us-ascii?Q?f3EIlmiwK3slmw28bOsVJykUe83BFA37kTVoEO+j41wFvas89y0s3zUEU2To?=
 =?us-ascii?Q?61Iwpadl7p0flyGyd1MIWeNlCHQZiu+BTLgv89MWneXbuD9YY6lBViEfiy24?=
 =?us-ascii?Q?9BR6qclxg+XCxbl4/mfXoA3orJjK8pAscFDPaH+MEeGbTeseLVqW8BsyVeED?=
 =?us-ascii?Q?MuDWg87HnuRJWeugVFw6Zrh3q29D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WCDsqXltwAPxVSBSNATS64dv9yncHBg6WMfoZQFt9Xg3reHNEzvd1hQ16zgc?=
 =?us-ascii?Q?MTDCmEkApGrJ19q/RsmwSafhogiKZTF1eCTexS3HIgara1SQVJOfe3uy8lK/?=
 =?us-ascii?Q?IKfHmn+eIGyAOAFDPxZUxm01OVAEVGibQDIubk9ULSYnaLkn1E1Vo3mD6Guw?=
 =?us-ascii?Q?iuxjQphI2/0sHT5DJZ9RQnmQygVjoBYMYyN2MZlE4ZVDunO514OZCU2CXFx3?=
 =?us-ascii?Q?JYsBb+ootqTtQanH9sBcziVINU2VY/LZOs0z5VrCUuiyFs+yVoBxsyqX4fwG?=
 =?us-ascii?Q?Kk9EFkEeCEk6GJUApePocNX8D6ClINqvZTpfmtFx8bG064JBYCh/scTL8q3c?=
 =?us-ascii?Q?zvZvsKaiO7Lj/y4rV19olwNt1GbajBI2rO6QYqzbnkrkkc8p+mlKpfdTeMbM?=
 =?us-ascii?Q?NJ3KfElzaow1/lvu0MnJgGSyN6UvCHPLYJ3iOdbLa2Y3aSSJih9685NWdJLb?=
 =?us-ascii?Q?4yiczh5Swz5a/y33Y2UN1JI/NDnZe4hHt6z481iHwNlDbzLsohM4gUwgIt0S?=
 =?us-ascii?Q?OAryWx2SmbHLQdkdKPhNscCgV+FkzwUDiWg+drzcwCJHDSucoJfs+07GBkUH?=
 =?us-ascii?Q?VFL9WF1FELgdhWO+2iL7xkJKM/vaEbysdgcRkJW3ajK5tPqhAH7SmidYH0Dg?=
 =?us-ascii?Q?jvNmzUAg++I+ce3ec23uiGNccZhaB/T/hvMaEFnYPwMFrt/R5FWEDTvEa4Ut?=
 =?us-ascii?Q?73k4ueqXkMKT+ytT9a8kEUgWLOk0mKqd4dDwWE8ecYI7hL6fSDFwIMQoYauN?=
 =?us-ascii?Q?n5I/bPL4690cH3BpTBuhnohlCLdfeYhOp7qu+KebQqgC6rjX9PMgGMt9YIrH?=
 =?us-ascii?Q?zaSJSmRhhVgDDYOplUwqmsClGNaIsoR8wl3omg61gf2yuAbIUogQe+XObxUM?=
 =?us-ascii?Q?ELrj3y/JVMIajzr4ntjQDbqigK/30DDvJ8Kp3e/DoetQ8DMMYH+v9QzT+nil?=
 =?us-ascii?Q?crwJ1FnRjqeAlC+2EcUOUgeO9Y5+yV6gLDXwC6KbkNZ4uNVbaoXOq2GTlTcm?=
 =?us-ascii?Q?CdvGp7XtM+WxC/DzxHtbdGdDhSja8iycipJfQHtDQl30OWnBp7s49T1npOwI?=
 =?us-ascii?Q?omGTb7gy8g73wJvDk47zpECmzVgHrBkZXdqAVL2adPIFejy1OBceq8bzNygk?=
 =?us-ascii?Q?BjDkNL6Dv5DfKUfYews2NGXJlkmcWHE5yzkbLOlbJ/caXY6yuPKKam8a9xzv?=
 =?us-ascii?Q?dWZY6sL/am8T7roBAPzx24rME8UZZcV7WLAHIIfJdFoQAzZ+dm8O2OzYO0y0?=
 =?us-ascii?Q?qsxBL3/gExj8Sd/6Gk9O7wZpba36LUwrCaDwEmaWKcnCyH29J11Z2D+N7j22?=
 =?us-ascii?Q?YqLau3Q2nzGxrdSx9wRAl90uRNVWP15dM44EQvL8LzDaa3VH9AuEBbUvpUVa?=
 =?us-ascii?Q?fxh2WBZWbZwEZLR8H64A0UwKvkJzfZgqHlwiMIxyXNk5WUWcwDHNTle4kjwm?=
 =?us-ascii?Q?ndfijFDWObGQWrU7on4yWKynLxjuE7+E74HcAM2QLCXUExYS6xqJiz8f5kS0?=
 =?us-ascii?Q?xS0buewPNFUQLvWTG0ogoZhYEiLJGz0oHfSUy+VSfq4Z0zVPNYe8h3XkIu3C?=
 =?us-ascii?Q?p4jkWdFC1FkU+XkDIQsE4bfsBAtyd9NIdotVlWRGGNB1hSyZxFiPNpzo9V/u?=
 =?us-ascii?Q?vA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c2886e8-b9ab-4440-14cc-08dd30e9ddd2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 20:11:56.4788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yLvZchjoBHztkMMmihWODVcjEGrZ+I3uLwa3TJi8y/2UKniiKMSDMZqaCkHBocTrUatm2NjdzOK2+a9bc4MYaGB25L07Skp9yZfBQOlFUYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6857
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

On Thu, Jan 09, 2025 at 12:06:04PM -0800, Matt Atwood wrote:
> From: Francois Dugast <francois.dugast@intel.com>
> 
> On Xe3, the register used to indicate which L3 banks are enabled on
> the system is a new one called MIRROR_L3BANK_ENABLE. Each bit
> represents one bank enabled in each node.
> Extend the existing topology code for Xe3 to read this register and
> generate the correct L3 bank mask, which can be read by user space
> throug the topology query.

It looks like this is sent to the wrong mailing list?  Please re-send to
the Xe list so that we can get proper CI results (and reviews by the
correct audience).


Matt

> 
> Bspec: 72573, 73439
> Signed-off-by: Francois Dugast <francois.dugast@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 +++
>  drivers/gpu/drm/xe/xe_gt_topology.c  | 16 +++++++++++++---
>  2 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index 162f18e975da..2a8794fde24f 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -221,6 +221,9 @@
>  
>  #define MIRROR_FUSE1				XE_REG(0x911c)
>  
> +#define MIRROR_L3BANK_ENABLE			XE_REG(0x9130)
> +#define   XE3_L3BANK_ENABLE			REG_GENMASK(31, 0)
> +
>  #define XELP_EU_ENABLE				XE_REG(0x9134)	/* "_DISABLE" on Xe_LP */
>  #define   XELP_EU_MASK				REG_GENMASK(7, 0)
>  #define XELP_GT_SLICE_ENABLE			XE_REG(0x9138)
> diff --git a/drivers/gpu/drm/xe/xe_gt_topology.c b/drivers/gpu/drm/xe/xe_gt_topology.c
> index df2042db7ee6..516c81e3b8dd 100644
> --- a/drivers/gpu/drm/xe/xe_gt_topology.c
> +++ b/drivers/gpu/drm/xe/xe_gt_topology.c
> @@ -129,7 +129,8 @@ static void
>  load_l3_bank_mask(struct xe_gt *gt, xe_l3_bank_mask_t l3_bank_mask)
>  {
>  	struct xe_device *xe = gt_to_xe(gt);
> -	u32 fuse3 = xe_mmio_read32(&gt->mmio, MIRROR_FUSE3);
> +	struct xe_mmio *mmio = &gt->mmio;
> +	u32 fuse3 = xe_mmio_read32(mmio, MIRROR_FUSE3);
>  
>  	/*
>  	 * PTL platforms with media version 30.00 do not provide proper values
> @@ -143,7 +144,16 @@ load_l3_bank_mask(struct xe_gt *gt, xe_l3_bank_mask_t l3_bank_mask)
>  	if (XE_WA(gt, no_media_l3))
>  		return;
>  
> -	if (GRAPHICS_VER(xe) >= 20) {
> +	if (GRAPHICS_VER(xe) >= 30) {
> +		xe_l3_bank_mask_t per_node = {};
> +		u32 meml3_en = REG_FIELD_GET(XE2_NODE_ENABLE_MASK, fuse3);
> +		u32 mirror_l3bank_enable = xe_mmio_read32(mmio, MIRROR_L3BANK_ENABLE);
> +		u32 bank_val = REG_FIELD_GET(XE3_L3BANK_ENABLE, mirror_l3bank_enable);
> +
> +		bitmap_from_arr32(per_node, &bank_val, 32);
> +		gen_l3_mask_from_pattern(xe, l3_bank_mask, per_node, 32,
> +					 meml3_en);
> +	} else if (GRAPHICS_VER(xe) >= 20) {
>  		xe_l3_bank_mask_t per_node = {};
>  		u32 meml3_en = REG_FIELD_GET(XE2_NODE_ENABLE_MASK, fuse3);
>  		u32 bank_val = REG_FIELD_GET(XE2_GT_L3_MODE_MASK, fuse3);
> @@ -155,7 +165,7 @@ load_l3_bank_mask(struct xe_gt *gt, xe_l3_bank_mask_t l3_bank_mask)
>  		xe_l3_bank_mask_t per_node = {};
>  		xe_l3_bank_mask_t per_mask_bit = {};
>  		u32 meml3_en = REG_FIELD_GET(MEML3_EN_MASK, fuse3);
> -		u32 fuse4 = xe_mmio_read32(&gt->mmio, XEHP_FUSE4);
> +		u32 fuse4 = xe_mmio_read32(mmio, XEHP_FUSE4);
>  		u32 bank_val = REG_FIELD_GET(GT_L3_EXC_MASK, fuse4);
>  
>  		bitmap_set_value8(per_mask_bit, 0x3, 0);
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
