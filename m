Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F63B45D23
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 17:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602FE10EC01;
	Fri,  5 Sep 2025 15:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJGjnoB9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F25D10E28D;
 Fri,  5 Sep 2025 15:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757087734; x=1788623734;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=epCUIihNhjZkAYVIwboCQ7fdxh+oQRriOndoJ/fvaRA=;
 b=cJGjnoB97k4WGwPEFLU0m6Aj06anulXCLXiQD4d/pSn2oL/p6c0y2fS8
 XKCODPoogkFPuRScIiqgmQ7mwx9O1ayBybCi3EpfCsUvGzqSkRGyROkv3
 Slyzpky3eG/51RyHONAxqHKN6/90a4KnVqo3VX55ui9ZSo0T7qYsaW8jC
 DWtTHJGr4rbPWjRvzh1AXOMyz9/LiUMyhaavxkpkJBsLOInerXoJehbNF
 xczq+2/I9nnG0mTF57oHS18dD4Cm1O7Whate7SiUkV82hp9LAcVPsncMG
 5AyPbgcrq/+DZkt4iwZng9CgrFXChPr6nBgAzV7MdlPsXlZ4qZJo7IvFd g==;
X-CSE-ConnectionGUID: HNSVSzVdRZy2LLrDANdkAw==
X-CSE-MsgGUID: /1NZqV3eTY698jJ88H3eFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="70818979"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="70818979"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 08:55:34 -0700
X-CSE-ConnectionGUID: lRWdO8HqTLq7QaVzZ4nHLA==
X-CSE-MsgGUID: t3SDJR1mSPCr/rD+ML2P7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="195853267"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 08:55:33 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 08:55:32 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 08:55:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.64)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 08:55:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cpv1ze+5jTirQkpmsDV8SJ0KiFOISHONKuizIx7EFhMOIUCfGaq89KnN5O/iM+kcwaoX1dXbXgv4WXFUGuKzLG0tlHykPdCDl8TZ6jagD0paU2SZfnQ+y76yi2LvSbF6wXoQtsouSuxTbFusvVHArlELxdRgVAMrtdSCUA2Th0jAp+o501u49oejmOtVybBuBWiNaj8wEo1atNfIhfkL0BBBNLmIdIk3oxGVstwSZp3D07ozr3iQCG5d/dVDvAe/Qjtc/YTEO0rMTGvX/EavoGp+3ixkQAa8wuzmxbsB+FTW/TOkPfaZG/oexqXgseHfm6q+T7hbBiyN55rJstghnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=69MhUDrrPOgNiOv5W4lGqNSp5if0lK1zMzPganggatQ=;
 b=dPnxYgQV1Gnps5/CyFvgkY3pElepSUZ++JxMJjcGRVmOkjUfdaszJv8FSr2/cONXZqAHRu+VqGRNUikv2Vgfffy98dQCcWCdQQyYVqNnAkI1rT5JH+WZhn6laA1ydRsqY5Z/bmrb5kvyfOX7aEbF+WGMghGDMo0/LoK3BRAE0fQDY/e2hQZFxrhFKGhL34yWDPNwHxfuKVRtJeSAYvunpi2zhdsQ4dYAmWOAdgIVkrZFg37DjUVSZ8O34ZjX8v4KsP8Gs5zxIh23zJOHdFlz4pXSmeUQ1CzbJ8CPRLTdJJ/ngOd4UVyRnHfMvqvikb/yotF0rp8AW9BGC/NdVp8pQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA3PR11MB9111.namprd11.prod.outlook.com (2603:10b6:208:57d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Fri, 5 Sep
 2025 15:55:25 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.9073.026; Fri, 5 Sep 2025
 15:55:25 +0000
Date: Fri, 5 Sep 2025 08:55:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/power: fix size for for_each_set_bit() in abox
 iteration
Message-ID: <20250905155523.GC5752@mdroper-desk1.amr.corp.intel.com>
References: <20250905104149.1144751-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250905104149.1144751-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR04CA0022.namprd04.prod.outlook.com
 (2603:10b6:a03:40::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA3PR11MB9111:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a560440-4582-4eeb-4e0e-08ddec94a0fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?LVewYsUzdHZl42rMa6Ql7D4oqAbyJZmCAIOF1+3FOHDyo5Re/hbMfFwknU?=
 =?iso-8859-1?Q?Wc7/D9EdZz7k2GmKMEkouO71CUVu5p0y3qAX+k624ovd/DMTWOkLPsX7qY?=
 =?iso-8859-1?Q?+UdHqTcI2vVOMC3Gbdc13VTM3GeOclXE1DzDIvQVBQdbP0tbOkXLJWpHZJ?=
 =?iso-8859-1?Q?g1mWDltHM19QyAgS0Tp3icaCCgELoLEdKo118bVcaoly1DN/XhM806ZaCI?=
 =?iso-8859-1?Q?IDN+Yq2P5+AEQDukUAkPkN6GaY3KG57QJ4gCJdF2jgLQbIlP4I1KvT2KeN?=
 =?iso-8859-1?Q?nQXw9Oi3dMGNoHbiXWjlBna/ZvjcxbpewoR6uroKe2J+98/2Pk2g/azDny?=
 =?iso-8859-1?Q?Uw97IxG5QwVdV9AJqX1K5OnDcU+t7+QPh0TwMU2YlZv8IxaglE6gAKciWL?=
 =?iso-8859-1?Q?9fxpvG1CfjF9CsuoTiNoa3teKbgobM61uF44eXac9IsbKl5305KbvzLSvr?=
 =?iso-8859-1?Q?CF/Ah7c0j/rcRs0awPdG9ZtY+RsrsFrmLOFF3Xv5JORmyheRSQIci9Al8T?=
 =?iso-8859-1?Q?LXXZ6KQJOJy30YKCmqQ7qmSioIC+xQ1cE9Fr96cnqa0v4ujVJ0fHYh8YE4?=
 =?iso-8859-1?Q?06M/EDp+oMBj66xAw6Hrk0YUSsU0uHpsBjmDfHpaI0a41sxPn5TbyQKE3R?=
 =?iso-8859-1?Q?6sfbcCwbC1sSxaKUrXZNsyEBjSQuOFMtN7L2a3mN8EJuRZdjwlR4P13lRL?=
 =?iso-8859-1?Q?/rKrhCCOpBAC+MSnrA1Ylg0EFaCafUVPD52fr79wCcNPdZdTp+biN34k9M?=
 =?iso-8859-1?Q?FCtJD15OF6vqwUSGY8K6+HmK7LkBWwiCXk7b6KCgAqIA4Lp8Crbl41hxa7?=
 =?iso-8859-1?Q?SZ6YwrOGOpquvowV9Wv60ZGC3ewaNkMwwY0qIUUgVMq/bpYRMAsvcAEFKe?=
 =?iso-8859-1?Q?Hq4NhXYY5Xnh74g02pgMkDd8IS0KAjgwweZmqmOy4NScy0KTYU+vp6AZPQ?=
 =?iso-8859-1?Q?EdteDqkkP/gFL7YsjYf2vcH3IJxua7qUOv81edBOkybRE2O1mBrR2Y7tnM?=
 =?iso-8859-1?Q?MCJ9hVKxJAWx6NMA41l3gX+7O0CZI1O32nIvt6Rm+smI2A5kV84nSEyilk?=
 =?iso-8859-1?Q?4HxzUwJ5AHrLb2RdNlN/QKCVcItjmWdSpDQDNwBAQVU9C6luk8OwuKCe7R?=
 =?iso-8859-1?Q?qve8GBI4YS5Bdp9uIYYn1UMt0OWwDRDtvQTk65sScK9pIVkvDtBHbTdBMF?=
 =?iso-8859-1?Q?+eBtBeIXns3bhkB89+lfEZRI/qFR2qYhy16/R3OpTM3yCN5rmXPf4Lvr5w?=
 =?iso-8859-1?Q?nH7EXzf1vpgjXi6nGumWJj20LswA6wnrs/OkHTGQlkl5QKNj3tuKc/ESa4?=
 =?iso-8859-1?Q?3iOusmWkkul96fT2XCqvzawK3kCoRCfrdf7Xj6YuG/V5yzMgEDIJyrX95j?=
 =?iso-8859-1?Q?raZ/K4QYL0dIlX/K7eqt3bA8oDw54e+zMwstKUiIRhy3ScTxvRNGnb8eM0?=
 =?iso-8859-1?Q?VQ6NUc7PBtcg283G8nWSQHK0BNRP+nxO3SyyUMvifn2nVRFdqukIbizj/p?=
 =?iso-8859-1?Q?M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?wDdjAySuhWH7JjrevRLLlD310etz4IkhaTBDwF4jW/Z+YYA3iyYsmC5iIB?=
 =?iso-8859-1?Q?6p4chK+jx8feUSAVANTwehUzcBQ38wX7P7xv6SmRYV0zPdNSiVFNljVDR2?=
 =?iso-8859-1?Q?SFpQz1TnPEMLuCDhWRNpVmRs8RLoxxtmwE61fUb8eEQ1Y9o5aXMR7JZdhK?=
 =?iso-8859-1?Q?1EazCt7DucB4sn75HUSP3HbaoUaOVIS5CORIToFq4KXdCdWUFQQK7R4F9U?=
 =?iso-8859-1?Q?qVx33anpOGF2+qOnRgShU271jTPqdkrX6/d8B7kl6aPpdF3uwofZ1xj71O?=
 =?iso-8859-1?Q?XIA5pMTfkiJSGEzp+FiMYPoCuhUFRxFP9Hh5ZZkK6ZcLInA/rv+j3MRuJH?=
 =?iso-8859-1?Q?D0dluFjltmYUe+ChEPizJfZSCZc+KTqjnQUYPT+gHNvzN6o1nD4EAcnArA?=
 =?iso-8859-1?Q?rXlDZOXevlBU9uwuUgRKx6TJWtt4G64fBAkQpZCGylXIa5yMGYZXHs+kqv?=
 =?iso-8859-1?Q?eFbkKmQhY6oeqPWBl5YSldJaEgFV//xJn1T15AxHKtLCWG13j2MVVqJhZJ?=
 =?iso-8859-1?Q?8MKYNEID2APzj9c6Ni3uY9oug6vgTDW2n/wkOzIIs5W6hYHJK9EQpocI+2?=
 =?iso-8859-1?Q?/4QWoGWJy/RmLnzBD2Dl0Sg3TmR5tBBntUTpagIUYyC/fx/wWjQrAsdvOz?=
 =?iso-8859-1?Q?ZW/VwKYWlSPG6fPUpeAGGc35J52BY7mjubVZ3z7i3f2WoMOQ54mOCKODz2?=
 =?iso-8859-1?Q?S/SCWNOrFmCDjUZKKr16npoi6yJsp6LWKRp9fU5thEcC7qpJ2dqeLp3kzK?=
 =?iso-8859-1?Q?KL4yLGQfWXO3bV1+EVpcOgmdXXlMRnYxTsE8rl21tUzNznSC6jPZxkoZy6?=
 =?iso-8859-1?Q?VviYDMymp1kBMqVjXp+VLrSGfg79LmIFIb5dgDgIWYDKGrSMNzWquGyiRb?=
 =?iso-8859-1?Q?1T3PlbUERLUe8E1nWuDyjCAlAde9750mvRUT8W1gigOXZjYAAT1C2i8cgh?=
 =?iso-8859-1?Q?UIUCdNj8nXeUzI5LA0fWbUXwwpu+IzevQ0u0KG4CrYg3j74cVLas+SFU+9?=
 =?iso-8859-1?Q?LlF3RPTfBXVRLrKKE1sziqQq2hb0L4jE8auFnr5+D467+dVH0d0oQpDdpX?=
 =?iso-8859-1?Q?16JhK0UCGbU6eRvnW39miWcvMVotp6VJ61CLU6nByFVnefAg5sNoTBamF7?=
 =?iso-8859-1?Q?30hVSlxVNYlvf+rSEkVwsCab8OYWOM2W2iH1C/rdNsBSJSMRkg7ZwPdo5W?=
 =?iso-8859-1?Q?wpKbKpDYnx9hQnLU1ORQH5DQw//QPPf03JGaCIX9WUcx6RXztwaIRJDZco?=
 =?iso-8859-1?Q?HCDDaPYpp4aw+iHPBcP+wBXcQm0++VfOZtxRRvF1aCEmGFEissP4PjC8SI?=
 =?iso-8859-1?Q?gGaiVtMSsXyVrPsydCr+so0VZH7rSz96a4hJ3xnVVtx+/C4dKUkvCNI918?=
 =?iso-8859-1?Q?yW3+jwFuuUir9r7PzJKSK/hQR1f43LqbygBNX2NmeiJCro2FNUKM6FXXYg?=
 =?iso-8859-1?Q?Cxv26Kt+a2iHlBh11lRY2/0tOBsNDuMdaWzdzIiJFdT+yTLlHb0hbhi/xl?=
 =?iso-8859-1?Q?2Y6ihzZpe8gNa2rSorlEMphscfYFKb4x4o14zeq8sg0R+wxg96aLe7kd/f?=
 =?iso-8859-1?Q?k1+WUwraVfVVCMPvtkOkfgxxOOFxt7j09njNeOGGhJsxEAP8FDmm6UQ3Sn?=
 =?iso-8859-1?Q?1W77We2o6ZQbNM+YUwSMyymxXkGxNugHAELufksBJYtVv5/QVhQaPR4Q?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a560440-4582-4eeb-4e0e-08ddec94a0fe
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2025 15:55:25.8234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GiJjfndqipKGwvbJEVZjQ8ebm8sfoeF/GQTqjmd0mLN2Sp3RYs8mNSV0reM7Z9LndbFWnRXYtWh3e/CiO4/12N+2G6itrXDjIFKBEI+8yA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9111
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

On Fri, Sep 05, 2025 at 01:41:49PM +0300, Jani Nikula wrote:
> for_each_set_bit() expects size to be in bits, not bytes. The abox mask
> iteration uses bytes, but it works by coincidence, because the local
> variable holding the mask is unsigned long, and the mask only ever has
> bit 2 as the highest bit. Using a smaller type could lead to subtle and
> very hard to track bugs.
> 
> Fixes: 62afef2811e4 ("drm/i915/rkl: RKL uses ABOX0 for pixel transfers")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: <stable@vger.kernel.org> # v5.9+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Good catch.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 7340d5a71673..6f56ce939f00 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1174,7 +1174,7 @@ static void icl_mbus_init(struct intel_display *display)
>  	if (DISPLAY_VER(display) == 12)
>  		abox_regs |= BIT(0);
>  
> -	for_each_set_bit(i, &abox_regs, sizeof(abox_regs))
> +	for_each_set_bit(i, &abox_regs, BITS_PER_TYPE(abox_regs))
>  		intel_de_rmw(display, MBUS_ABOX_CTL(i), mask, val);
>  }
>  
> @@ -1639,11 +1639,11 @@ static void tgl_bw_buddy_init(struct intel_display *display)
>  	if (table[config].page_mask == 0) {
>  		drm_dbg_kms(display->drm,
>  			    "Unknown memory configuration; disabling address buddy logic.\n");
> -		for_each_set_bit(i, &abox_mask, sizeof(abox_mask))
> +		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask))
>  			intel_de_write(display, BW_BUDDY_CTL(i),
>  				       BW_BUDDY_DISABLE);
>  	} else {
> -		for_each_set_bit(i, &abox_mask, sizeof(abox_mask)) {
> +		for_each_set_bit(i, &abox_mask, BITS_PER_TYPE(abox_mask)) {
>  			intel_de_write(display, BW_BUDDY_PAGE_MASK(i),
>  				       table[config].page_mask);
>  
> -- 
> 2.47.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
