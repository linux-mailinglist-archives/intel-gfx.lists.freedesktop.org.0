Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBE2D035A2
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 15:30:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817A910E750;
	Thu,  8 Jan 2026 14:30:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lHBUgqc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FE0B10E750;
 Thu,  8 Jan 2026 14:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767882646; x=1799418646;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=e0UJrLxSDvheFRwp4flFqeYLD/nbEKSdik7jQKEiZm0=;
 b=lHBUgqc+zwcmQAqxwKc06HcGlI1e3yFoI1H6VI2z4NwpmVV0+LjGSh1S
 obN2Gbp/kqVkfE/QXRxxFoF9QEyEWm9AHlCRxTPXXPy/gq8rLe7F3Fd2n
 jvd4u8fxz0V8iVPCToK1VGw5adaoFZuN911gWizZrXmKODzlOovhUupgm
 hncg+yLNSU+6/pLFIUkD2XvmaZVepHNs47Se3CFwrhYaK0fKE25cVG4g6
 lLWtjRVnufhwz7dmaicBzGNIoY8ovadWrXpaXsw7sQa5NdUSSv3OQ4ckM
 6eAGQXftrJdbwYp2145+YOgx3toDvNOgqzTMuMXXxnB+yAd2BKCT2Nvnf w==;
X-CSE-ConnectionGUID: b0bwhTXjSmiHnVPgja4u7g==
X-CSE-MsgGUID: 4vW+rNqGTnCzdjiREeigsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="72896807"
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="72896807"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:30:45 -0800
X-CSE-ConnectionGUID: 7apSXcuCSneYdoRW2fUe0A==
X-CSE-MsgGUID: 4SbPZcjiRFiJbicrCREhJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,211,1763452800"; d="scan'208";a="204084605"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 06:30:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:30:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 06:30:44 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.38) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 06:30:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Moe8A8wE2kQ87V2tf39C8nUx5lDVlaGzs7TtvVGChQeu4u9wc9sZ7Wrle+NbhQ6UOLT/SOnBlMEj1QvB7O4eC6SCgEmgOKW/jYW+XiWnX/8CmUgWkYAwvNauItBUEZyXS5mKPomBgzsYjJWfCOzZay82fHmSBd2xhd5ZVyEPhWsT41MztrlH6yRXodmQ5RDUDYnhzUJeskIu1n9l+9fijhO2Rvve3PwcrIKn2T1AxJNBR8C/cJ7NqBtJDO7laVA8d5NXS7RdTCqZBis7Mg+/zkFhN8wbPSI5lPuLIs3mO35Q9UnptXQnWDPVLYigfH9MBVBjqh1b5da4RlRHq5W0LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9PSDZbB/MigOOZ4qSvKA9zELe1bAOJiZKqAtiOKTFY=;
 b=WdEF/859h8CiJo3C/rPTYr1Vw7Csd605fv6KCXwET1wkKRM4I/6bS4FkBZSuKbdnVrutLv6h2maYya62wRMl63MXdlBvwV3fO8xlj5t5mf80U65/3Kkx5q+CIjlnKSyoe0G0xZ6oJQZFE1ZDVKud3lGOzvhgc2LvQgsnPdziVfOKdtG1MGO3WOpbxJycI+7TZYFoBtsrraF71ClkzgSHtDxM/MevMeclgsN9li4VYTdznn/tXmOxWu5Zf8egkOXioDWy8Buf8W4db9Ar2gEOlhG/+9sTDaaLQUrCFRvUl0ARrJyphERU44Gj+ln2/9BjWIjxIgQFDsB0plN0CICenw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9132.namprd11.prod.outlook.com (2603:10b6:208:56d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Thu, 8 Jan
 2026 14:30:42 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 14:30:41 +0000
Date: Thu, 8 Jan 2026 16:30:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2 11/15] drm/i915/cx0: Verify C10/C20 pll dividers
Message-ID: <aV-_iwPmDy7Xk74s@ideak-desk>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-12-mika.kahola@intel.com>
 <IA3PR11MB893760F05BC486300F40B951E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB893760F05BC486300F40B951E387A@IA3PR11MB8937.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO6P265CA0021.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ff::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9132:EE_
X-MS-Office365-Filtering-Correlation-Id: e6f76527-63d4-42fb-cf42-08de4ec27fca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|10070799003|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3ap/UM7cMGe91U7V9cydf03xfgqds/c0z7eaQGLj5pUh0FstYVquWHvawyXo?=
 =?us-ascii?Q?5qohyKjWXt4MvJ5bSroRZNL5rbELDW6807bthHhrMuudTN76vHDcGlWYYeRF?=
 =?us-ascii?Q?MAB8hEautcNWkUKR2xuq5kabTCryMv5gNCSkUORfKZQFVNGrDZeOrX+jUZ3X?=
 =?us-ascii?Q?kmHbJ4uFR/0xbSrp+aNM0edZ+kNcHYnIGtyjuNnZyT/eLOJHlGY0blJAbxWn?=
 =?us-ascii?Q?6kXR2LMXRL/4y/O0CiCTSnxq8266xKYwWUpvTJPTJHcreC3xwIiHEWLTeM01?=
 =?us-ascii?Q?JKr+lgVPsRhfNR1tZq7rbPDee7eyIA8JrF2O193FtztgbRmkkLr8ktIHziKc?=
 =?us-ascii?Q?qVYYyyHXqBqA+DWsaBPz+66gAzXI7VhVyMtVgaiIslgukafuRFZ2Np8wl6hN?=
 =?us-ascii?Q?CsD58/1fMr1Y0RXj0GiUfmgUyblvB2ZmYwMSpz+O0jlnkRpLNo7BTXxtMdCg?=
 =?us-ascii?Q?0g+JN4Y+3DQQ5uidyVkZuq+eMZrmf9AbrNB2IM0s+VZPftsAOz2kHmq4lSo/?=
 =?us-ascii?Q?X4bKbLQm25ZOqotb/CkrdkzK5Ly9msNnCBoFoZuuIJgUxi5fJjQVE+rIQeWg?=
 =?us-ascii?Q?ORXu+XkimB20OtuEO+txr14uXPokBmcabscsxEBRXp3w5pAf2Nizgf1lFIDk?=
 =?us-ascii?Q?pOIdENVarTcFfmqEln7OEtTgeLfXdiq6MVSkyEsyATptyFeB26QM/FQCdvBc?=
 =?us-ascii?Q?rDU5bHF5usF/NoDNOGpwSjHJB6aklz40OW+cbkzdPFCFZWlZ/kGadmCAkYPz?=
 =?us-ascii?Q?4XlZ9Tx2tuVQhGiIM0IkTmgKRzcCLM/RbDRDgJxFCUHvVflvtpfnl+5dq9a5?=
 =?us-ascii?Q?YGrdlat6bH/qnmxTdNJBylUmhBXNSWUAWgbdamuEb/6k1qE+8DKgBU4+gOhq?=
 =?us-ascii?Q?VFixqLkp2MLWoJZFS1Z9kqBgtuhWNucUHeA9bQ4LJXdn15YShzyWED3zgF3y?=
 =?us-ascii?Q?KbACijM9EIG9wR77S1u3Db1uy09hVxSmkHKQ7y6n2DyipBz46KeWrVRW02Yx?=
 =?us-ascii?Q?KsUU/Udj5PZPFky54mn1sipP1Lg4bAI5XdV5s1RilXQbuNgQaJps/0pMH9Y1?=
 =?us-ascii?Q?L6PiFSfghQv/ELyMTWEQflNLvXzArZ0kkx1fIr7ZGVO8d51n0/YX9C9LQMYj?=
 =?us-ascii?Q?J138lWTBHBmFRTgtnnzq32/z/GMJN8GAUhzl2YaJeo7IZfN3rINx7L942Jus?=
 =?us-ascii?Q?VOm9g4oy/QjdruSg+JpGAHvGhidQCsqSx1xXDy61BFgrzaT6Zebj61vHTUWs?=
 =?us-ascii?Q?ulinH9Im+Ud+r2Cm26tEf6lnpR8LkJhQTHluZLbVgP4L6jgWy2UPDE1vteFi?=
 =?us-ascii?Q?fozRbqY3vrlBrUWfa6Dzh+kYY/3kPvfHw3aCXLgHJSwM8pUX8Qik+deUUU3m?=
 =?us-ascii?Q?GcdxlhfTfQHbb83Z/z0BHohelSH4ZoFx/vnlSku0Lkols6RJHqnZv8guzkW7?=
 =?us-ascii?Q?pI13omrTrEZ4HLigclVaETsXr7kCK6PC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ot9KKrccAiht0hvxorqATFHKU9OyK+TdyKUVTrxvYBSJlz2vT0drGMb5nlxD?=
 =?us-ascii?Q?Q+f+i/+qxOR8eyGo9CwLeYBJRV9Rbo/FuAtPv9Ww9W9JsF3pBRhI+FlXc5WO?=
 =?us-ascii?Q?VfhI3sS9V54SkVphRvL09VGayFD9eXv75v6GEogfN8BYRlfNg3gNSP76HxOl?=
 =?us-ascii?Q?U2lBLD1SvXGbeaJ47uSaleacRsBa0n5KItf6CRm927/OSa31Uio47kWsRksg?=
 =?us-ascii?Q?pxw1/2vumXUlwVK5DIDayYwqcHt6JSF8WyOrDcj4zU0JWjUH69XUf8lbHFpt?=
 =?us-ascii?Q?AGGPQUiLO1ta3KwqNWvKTsm6crzSJKvJ+iHF7g28GuhyaJtwh+VphcIo0iqN?=
 =?us-ascii?Q?+SKeeDBx+vgizlp4BM++8bmOVegzQkJtxiITwaO7e8LiGV1wFm74ajC9A8aJ?=
 =?us-ascii?Q?qrHaLhFi5860VtxsbfMZP3HGbL7+5WB85IaDcLxujsoVeWs/mrnf+y51pxsj?=
 =?us-ascii?Q?ToPWOixotv0yTHGwxzUvwbjoCcLYqReCaVG4BAbhpeyHJNU636W+06lbCDSs?=
 =?us-ascii?Q?NOLxH+6Pw5K+z0GouQZrjvIj7jihxyRbHpHewW3cwQGaraAw+pW3+u7Zi8hh?=
 =?us-ascii?Q?Sv8mKSHUcfGifUHdRH+Vl/gKX9TiQpkQre1jl1M5JVqHmDUJcgWUorzFE88Y?=
 =?us-ascii?Q?MoFPas8vNCtKleGvnM8y/UeEdnE8XRTv5uowG0TbAjxTRCylkon9O2db8OuU?=
 =?us-ascii?Q?w8EuI6DP5sJWyWAWAQEhMigZHO1VNJ4JWUL3gQIRLwO5uKe+WUKnJbKDvoOY?=
 =?us-ascii?Q?TG9GdEqsUEjASNBE6NlHO0pLhpYJo2UE4kTVOLd0o2R9Yfx7S+gKg5YuKMBJ?=
 =?us-ascii?Q?Ls1DjS4kjLKQR1DKx4+Tk9NI6vRV3HE7fdQg2dvXYvA+Ir6PDAw10g5e92dH?=
 =?us-ascii?Q?hdZ6pK9MFPtdNFrdgZ1VsvfyUa0jusUHxKy6KNyZ7ECz4r4k/N5U8lthZ2Lm?=
 =?us-ascii?Q?x1JGiPQoRTC+4zTNCmt4hVRiD1iRuEaVxPcihXAjk45lsMy5sHtgTmCgktsU?=
 =?us-ascii?Q?wllh8CDzG6nqmCLhi5w3Ugq+a0CJzVIlS7CTA/VLDi/aYYrh2kGKGAcf5wM0?=
 =?us-ascii?Q?bsWOlt8/pVbJRgy6lMZX7nsnUalXxfTT4YTLrUQa1fAMyYZGyMEYQ6WmjSk1?=
 =?us-ascii?Q?caHK4QC/KNFgrV0halAksYkGAhGnY7ROwYam+wMh/u+YBwh8GKjzeJRDSriW?=
 =?us-ascii?Q?Of0P8+Y/+fPXSzj2y1C72vEujKpw25o2Ttt12zu80+ZpNWynYINBCxZ6sIQB?=
 =?us-ascii?Q?ICEkCgjFI++zxwh44Ltu7V5ZG9aGjcY6fCmmTP1CjioaDx+8/C/N+n3UIVT3?=
 =?us-ascii?Q?jEbsTbnUM0+i9fFgRxTdk4QlDiAtq0OTeEdikGU/zfm1Jl2/ug2YMCDEVzvf?=
 =?us-ascii?Q?Xsw7QHLGC6c+a9bZ5fSklO+7x09HmT8mhMJom32YEzqjeH87zxZJOHP+skCA?=
 =?us-ascii?Q?118aUf4mtq70tJ+EQrflrTO4DsIV5YykhYFVegO8IwgaGB9Bb+Sw4RDITZl1?=
 =?us-ascii?Q?nNJbxGN+21y+bJbCKAMnx9tL19Aq5lwVDSItFK9GyFknUOuaBN8N5uI2O8mC?=
 =?us-ascii?Q?dPb2PcbPK7hvOQ6L/WQaZ4X0E7a0rhVHO9v5gCAC8w7mDa326X29wD21gi3t?=
 =?us-ascii?Q?vbcE4VPgc7u7qtmJAXUgEvoE05Tq5Q6JAp4Q5IkuQDrpQPIRpvf1jjLQK8rV?=
 =?us-ascii?Q?PGDR8+p7qFcpLsmOcal2RVpYE5dLrAmicxSlnnqjPTqAY0krc5TdawBTXbjh?=
 =?us-ascii?Q?IgDUA/BYOu/nqAfa4ybjD25iHOAYPZJmObrpmzVuJTPIYcX7eY9hMDqfUB2u?=
X-MS-Exchange-AntiSpam-MessageData-1: BgP1+Ye2ohb1QA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f76527-63d4-42fb-cf42-08de4ec27fca
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 14:30:41.0037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h+YZMPJahK1RyFQxp61bz5m+rYfQcdTJSyrVCbds6W+7Ws74CwtTDgXkG0CZ6cSA5+yIodQG3KId2RIC2S8s1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9132
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 06, 2026 at 05:04:48AM +0000, Kandpal, Suraj wrote:
> > ...
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > index 3d9c580eb562..c0ac67f7b11f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > @@ -78,6 +78,7 @@ bool intel_mtl_tbt_pll_readout_hw_state(struct intel_display *display,
> >  					struct intel_dpll_hw_state *hw_state);
> > int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
> > 
> > +void intel_cx0pll_verify_plls(struct intel_display *display);
> >  void intel_cx0_pll_power_save_wa(struct intel_display *display); 
> > void
> > intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state); diff
> > --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > index 9aa84a430f09..7127bc2a0898 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> > @@ -4613,7 +4613,7 @@ void intel_dpll_init(struct intel_display *display)
> >  		dpll_mgr = &pch_pll_mgr;
> > 
> >  	if (!dpll_mgr)
> > -		return;
> > +		goto out_verify;
> > 
> >  	dpll_info = dpll_mgr->dpll_info;
> > 
> > @@ -4632,6 +4632,13 @@ void intel_dpll_init(struct intel_display *display)
> > 
> >  	display->dpll.mgr = dpll_mgr;
> >  	display->dpll.num_dpll = i;
> > +
> > +out_verify:
> > +	/*
> > +	 * TODO: Convert these to a KUnit test or dependent on a kconfig
> > +	 * debug option.
> > +	 */
> > +	intel_cx0pll_verify_plls(display);
> 
> According to me having this done during every boot does not make
> sense, maybe as a test it may but here having the driver Spend time
> doing these calculations for every table for all the rates seems like
> a waste.

The overhead of the calculation is insignificant. There is also a TODO:
comment above to move it to KUnit/debug test which would remove even
that insignificant overhead.

> Specially when you take into account that all these tables
> are static which means you have the values and the algorithm
> beforehand And before adding the static tables you can get this the
> algorithm tested against the table and fix it accordingly.  Also it
> should be the responsibility of anyone who adds any other static table
> to see if the clock matches.

The purpose is to make sure that no PLL table entries are changed,
breaking them, after they were initially added, even if the initally
added entry was verified manually, separately.

Additionally the function calculating the PLL clock value from the
PLL dividers and the inverse function calculating the PLL divider values
from the clock must be also checked and kept correct against any
potential future change that would break these functions.

> Regards,
> Suraj Kandpal
> 
> >  }
> > 
> >  /**
> > --
> > 2.34.1
> 
