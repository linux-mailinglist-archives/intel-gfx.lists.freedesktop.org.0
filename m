Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 253F9A07E0D
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 17:49:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E7C10EE27;
	Thu,  9 Jan 2025 16:49:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VK0e55dj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2A710E47B;
 Thu,  9 Jan 2025 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736441363; x=1767977363;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=dlsy0s16pwFmUdcTAafo18j6VS9MgsD5XT7akPcO1wU=;
 b=VK0e55djbRwdVEGi2dpIBgpzDb0lJZosUgJrMyB7GFp05NGtd3cCpvnd
 /3to80YK/SZNuds5frnytf+7TL4vUcLTNOTq+tgod8U5MT07at1xN563H
 8N7wedGdxy+jZGIP1EdAU/g2h/TB2+ZirJwwehFj3nCFNSh/AVz78aeN2
 S9WOpKOUjXnG3zbDL4lbVn3QydOz1f8XG98ZaFaI6f6iLR3INc0DTRBeH
 axv9DpzkWFLjZ68SnnUZUD6rWzVDktOmjhyeZpq2DQpppg6tWBrC+9Iuy
 rdXpskLHhrom1GvDWxnkUFN2zuial3YjYLlAUYBiyQ+OAOiNVZwvZC6Ac w==;
X-CSE-ConnectionGUID: R4ATelyRS6K6MbGueLtlTw==
X-CSE-MsgGUID: e2JuCKARR2iYOCtHCrQ5gw==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="54259895"
X-IronPort-AV: E=Sophos;i="6.12,301,1728975600"; d="scan'208";a="54259895"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 08:49:22 -0800
X-CSE-ConnectionGUID: FKQZZV6ATW+QLDtiRm50wQ==
X-CSE-MsgGUID: NqLN/r9JSzKGGA288efliQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140769832"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 08:49:22 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 08:49:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 08:49:21 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 08:49:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PzMVI9bgj90rFlsjPtUj6C99IQ/RqckEnfLqO8RRiPsFbjfzlVKo2jkTz3dSyJ3Us4ufDV/bk5fD7M+AFe9ZdywY5Ck79fzl4jKFrHkTw+YRxFouibaEcev6HM/8qm4/d6L4bPchI8heqDGglwlrjC+y93p3SEBNiCtX9VNEqRRmBlaGjZX3Yp76MmPPVN797R/46Pkpv7a6tDOX+/r+HNd/H2lh4Mdr71Sqgr+CEDf2x7g2S9bOnzyHvVWDKtwdr22fohUtJw28hhp8VVBOyUbTejKUMXZAmYSjkmK/3J1UV0mTxSxMs/3cgKg+CBb1wVkJRZ0XWqGC+ajIjeFOTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eEL2diOCiRpw4HH0nh0/erlKGXA2PiWoBcyKQM84854=;
 b=XETYbUcl5XUyYyZqwkCVTL9gjJ6qZkoN9O3oh78ExOnzhI4V7UrG1jSGc7ROrzVQZXq6Te+Co6U1ZI/1wTU7bZY+UwOyrgZ3+rtE1crjfHGc9soIeqduDUWoElszftVf2Nd3jXxrCWBHiMjVHmgLgXriTwrGBV0v1W5C+dusHBCFkgzdCeOjvo+ZS1p8/uSiF7zgnSsq6JzClO1SzslRVQLfEuR/9eDM44r3FVyDHU8b+nxiWBzAHuFx9PE0/qmJDFEzPDBhjI6HujZFALf0aJCZlr/F4ZY3FeK0dGh8SSJL6ORUU9pJfnokBfUL5tRT83fdq0yk/nnNt+RtLQSW5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB7750.namprd11.prod.outlook.com (2603:10b6:208:442::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Thu, 9 Jan
 2025 16:49:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 16:49:18 +0000
Date: Thu, 9 Jan 2025 08:49:15 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Matt
 Atwood" <matthew.s.atwood@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/xe: remove unused xe_pciids.h harder, add missing
 PCI ID
Message-ID: <20250109164915.GA4460@mdroper-desk1.amr.corp.intel.com>
References: <20250109105032.2585416-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250109105032.2585416-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR01CA0070.prod.exchangelabs.com (2603:10b6:a03:94::47)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB7750:EE_
X-MS-Office365-Filtering-Correlation-Id: f1cb663d-af28-4148-d40e-08dd30cd8f48
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?AK3NGA5fvAgmbB1hhHRznQf9nEMofMiDjqfFezo+XE5Q2dSpwdkno+BqJu?=
 =?iso-8859-1?Q?wOZ9h57NRC7Nfz13vL20cOELE+OMev1HbpKObZIXBXgHqwY4AiLrSwwXHV?=
 =?iso-8859-1?Q?DZ1mqWnJk/nV/Y9j0pJQNtoMrkLsoDBCelCm2m0ui3C0DBzQU72laWUC23?=
 =?iso-8859-1?Q?2SjBSEeJBXPrWbYRWkIndJ2KUKvgfsz/TvQqhz4/veYpfGh4LKwdVbPdwd?=
 =?iso-8859-1?Q?33WGaw1g7LziBo0cfH5fjBfRr/Qdv25iPnS0ms9/DqvkwwtAo+L1lc77SO?=
 =?iso-8859-1?Q?MSIiVakFkahxJhSRJkG0lt2B2MDMo6m8gIlm3XNHmY0d+D6vuddWi74YPC?=
 =?iso-8859-1?Q?mlmFHYCZ+jFNGjZsYITzhWgpgo7Q8wcAEHO4DFmPc5nIHWEiJsYHUPaR24?=
 =?iso-8859-1?Q?GmE484eRj+1Jdbd8TK2DujQlXhShJLJvmKDms2DUUTAi+RxbnyPL7lLYqD?=
 =?iso-8859-1?Q?fqOsZxcn5Jxn4QoouiY3X90X5u2nFcUTPkDU8UzU2N/eyJKCfhbGITztHk?=
 =?iso-8859-1?Q?sCWzUgm2AQtI2leydd2KMU49jIurhACVLqkYebCJR0qgjEVdsYDxIWAING?=
 =?iso-8859-1?Q?ZN+Xy/HNFggxnKVTSK/L+E4kwS99smGHcH2hOD+mSqrix2XbXRwatf4Qmz?=
 =?iso-8859-1?Q?nelJFYdkTiWuyJK3mvQNhWtWCEbGhXS87XTqou0NAsFCEKNZ6X2C8s6pCJ?=
 =?iso-8859-1?Q?sh4rbCpxhoCuhzWRkwc+H8E5fTVuj3c3tXPVigwOXoIaxmpJvKDajNbfO0?=
 =?iso-8859-1?Q?UboFP2YBuHqbzXE4xht90k0/HMvmoQl0m5LQiP97BUGqvOXN0LEIp+YTov?=
 =?iso-8859-1?Q?DXS75IrBz6Di2E2nV8Fc62mW2R7IKa6++eVG27A6MWNLQwZjERYjQ/YAsd?=
 =?iso-8859-1?Q?qlfEZlPxvxOisAtu+lcPt/OuzDVNM7OEnSt4xuQMpC2KXp19ruQOCyN2m1?=
 =?iso-8859-1?Q?TwrRudjyBgKpIPDSOdUohgYR4FaUN5uenJ/0Bfv38nQ0PvA2gCoXV/XFZV?=
 =?iso-8859-1?Q?9ro2WdeDIpqCL4rMJTZuGtjn2yTGEIPPUkGOmVYQgx+JuhM/mAejYttMVe?=
 =?iso-8859-1?Q?S8K8Xd6Qtx7wH+RdUR2v7Uv+B3y7hEgAaccoVQ62tcyGE1dDHVbgKilMnk?=
 =?iso-8859-1?Q?USZ3HsX9oqPjsfGHh+rny0MQ1r6MATXRIE/OCR4bvtLevHRqylTJpv1JZn?=
 =?iso-8859-1?Q?3bx7fPnroOsyjai6mvLhx7KzOWi4BDe9mFMHyZ2pTsclCNSiLu7LwiDhvy?=
 =?iso-8859-1?Q?fdYxwwLim0T2e8+G9dtdT6w2EuQq5sS0fvYAE+ig3hsQMrwMWvRZMDllVW?=
 =?iso-8859-1?Q?90VEg8tNV4wyPF9FRY4WOk6S/yB5JRFyTzXqfLD7CmUgETrXwU04Fu+mB/?=
 =?iso-8859-1?Q?ykWo+EDu1mpms5ba5mcmiW6XivtZE0KayTqEJAbconP2HscAI/CIVMmpSY?=
 =?iso-8859-1?Q?AqHi+YOzCYfXRbZ6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:ca; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?l9etAizCLGolcQBawjK2ZIlOV0UtdUYiYNhRYsd9Kfi12K/ldbS/h3mtY0?=
 =?iso-8859-1?Q?X4XtdVtBX/tTyW32ZDJBvdi4+2Lc/hABCcl3ITiYGAuMbgvdKq86/mRQrQ?=
 =?iso-8859-1?Q?whn4iuTgcGSWxAD6ejFExXpwdBxJJWyIYCp3z9a575nuRre65gEC0x2CDq?=
 =?iso-8859-1?Q?uRQTb/GzoqJjfSnlWooa2jnCdyhJ5b+/4js51S/wgYfzieRwG4gm7rPLbt?=
 =?iso-8859-1?Q?bxfSHjicumW4axEfOJFUF6mjbzB3Qnzvofrpf3DTbqqPNMtVdcch3BUQ7n?=
 =?iso-8859-1?Q?viH6cDVaiq/GWuQhhdf2MQ/eNDWUpyXLOzY8NSGGssk4+2URiJl/dfd0v2?=
 =?iso-8859-1?Q?29B2qy5kHKULQRRMN1GAVjcIjKyW5uXgphTUeEZJf5i39gJNIQHNohRk47?=
 =?iso-8859-1?Q?Rf3iFi+4ow6Z8x/P/P50/Pc9v7jW8w3zNLGdguhScGy0ZlFoZ5v5wP/up1?=
 =?iso-8859-1?Q?S0GvAgH4UC9UwCZYGX+A3ZThzOfvPLIqMJ7OBLeE7Xl2+ze2L7nTllMvFa?=
 =?iso-8859-1?Q?uouA1yDzXP8VZkYuc3Peza6T9BhXqSBTgTjhX2G8Z/lHt9+DJFm0UjFZZC?=
 =?iso-8859-1?Q?I1iM7ZAm/4qr2Q08QmCXkCZfwlXdP5FDCAlg28/iN5S/bMLSJOvcmPor89?=
 =?iso-8859-1?Q?bnsZdCL7OoD83s8yjORfMaiMKv1v6DFu0ZhfWY77cHe4UfQh67+H2nrezT?=
 =?iso-8859-1?Q?GQ75YBt3SL6rakfS+PuL0nlR7jZ4/RjNU+NcR3oo4+MGyLnvGJDPIl27Rc?=
 =?iso-8859-1?Q?dcXkHjr6ZLcrJfpATrTVVcJgK8pNGnRnDBzglvgJwxFhVUJBQmxrVm5It9?=
 =?iso-8859-1?Q?6sRaQSOr+ClTPWOyZCn117oeLYz+GVKMo6mPbMHPwHBTtVu/kD/kVgP2Ka?=
 =?iso-8859-1?Q?BwEha1J7ZTq1DKUUSRDb/nKpqBotVLqANEZ8/nPquZ2L5xiZQrjGDOepIg?=
 =?iso-8859-1?Q?EiJ1PjaZ7/+9RhxtYj4QGxmp1WlzQ7bklX7YeuNa+7EkPIP7MJ+Mktop5j?=
 =?iso-8859-1?Q?2LVv91WVE5CkxIYubW49+ZT0/8x+iGtNj0Exw79fU/93N6GtJx4tfz1dZF?=
 =?iso-8859-1?Q?WSPdqAGNvlmXDY30F+mE2bqqtwBdl8Wxa8ZVy+d3Ft/DWJ+YuXlDsed21Q?=
 =?iso-8859-1?Q?NUBBGuxEssTCisHNv0GFDYca7XOrWCeA6biWiPIdr3I5YI9wnJx0vDSglf?=
 =?iso-8859-1?Q?2cjXwIzJd0iHZnpre5GxYJmmdKR0nrbBpsRyb66yu6UkuJB7XQYEC/ZSpZ?=
 =?iso-8859-1?Q?2SM6EvApQz8kG8fHeiaoxgw879lPzKfslVkZLgBEFR7TQdz26GOSgiX0Pn?=
 =?iso-8859-1?Q?xTe0JkQ32/c7cDwGdPwew+J3FG+c8p+Ta+jCdQW17yiNC4FotpDyursaDT?=
 =?iso-8859-1?Q?DD0jvuFFKpAeR6cXM9jsx49gkftBewdPQFXBx7Fyy74P5z19v1GwN5PAmz?=
 =?iso-8859-1?Q?tszjgdgdYGF4nInnQiacLGwZKTdB11pwGLR6Ni6NhTydqwftI+ELZoEpUA?=
 =?iso-8859-1?Q?KCZzcZgUOEiyslBB91igWo10Nz+7AH9GCLmKM7OgteSeeGpov1bTbb4MVC?=
 =?iso-8859-1?Q?UYc7evj3a73Frnp+0+POq/PpiXIM89MfRoFCJ/7Oz62aVH2qaAQfFlKdSK?=
 =?iso-8859-1?Q?k523apWinBF2q1GJPVlXcM0fc/Se4ZHOpmTi7bOhxpn9lIpwsrjHcRFw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1cb663d-af28-4148-d40e-08dd30cd8f48
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 16:49:18.8416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HRBAzbYXmatiwDo6SEja+g6DsieuD1NJj+Mf181zjPK0391fDz9y4ao1cNLi4+xqKXsfQpbiaB7BjZ+iRX45QX5w2zJmxjW49v3wMGX+1ZE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7750
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

On Thu, Jan 09, 2025 at 12:50:32PM +0200, Jani Nikula wrote:
> Commit 493454445c95 ("drm/xe: switch to common PCI ID macros") removed
> xe_pciids.h via drm-intel-next. In the mean time, commit ae78ec0a52c4
> ("drm/xe/ptl: Add another PTL PCI ID") added to xe_pciids.h via
> drm-xe-next.
> 
> The two commits were merged in commit 8f109f287fdc ("Merge drm/drm-next
> into drm-xe-next"), but xe_pciids.h wasn't removed, and the PCI ID
> wasn't added to pciids.h.
> 
> Remove xe_pciids.h, and add the PCI ID to pciids.h.
> 
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Fixes: 8f109f287fdc ("Merge drm/drm-next into drm-xe-next")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes: https://lore.kernel.org/r/20241125120921.1bbc1930@canb.auug.org.au
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> ---
> 
> The problem has now percolated to at least drm-xe-next, drm-intel-next,
> and drm-next. The conflict resolution in drm-tip adds the missing PCI ID
> to pciids.h, which also means this patch won't apply to drm-tip, only to
> the actual upstream branches.
> ---
>  include/drm/intel/pciids.h    |   3 +-
>  include/drm/intel/xe_pciids.h | 235 ----------------------------------
>  2 files changed, 2 insertions(+), 236 deletions(-)
>  delete mode 100644 include/drm/intel/xe_pciids.h
> 
> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
> index c6518b0992cf..77c826589ec1 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -858,6 +858,7 @@
>  	MACRO__(0xB092, ## __VA_ARGS__), \
>  	MACRO__(0xB0A0, ## __VA_ARGS__), \
>  	MACRO__(0xB0A1, ## __VA_ARGS__), \
> -	MACRO__(0xB0A2, ## __VA_ARGS__)
> +	MACRO__(0xB0A2, ## __VA_ARGS__), \
> +	MACRO__(0xB0B0, ## __VA_ARGS__)
>  
>  #endif /* __PCIIDS_H__ */
> diff --git a/include/drm/intel/xe_pciids.h b/include/drm/intel/xe_pciids.h
> deleted file mode 100644
> index 16d4b8bb590a..000000000000
> --- a/include/drm/intel/xe_pciids.h
> +++ /dev/null
> @@ -1,235 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2022 Intel Corporation
> - */
> -
> -#ifndef _XE_PCIIDS_H_
> -#define _XE_PCIIDS_H_
> -
> -/*
> - * Lists below can be turned into initializers for a struct pci_device_id
> - * by defining INTEL_VGA_DEVICE:
> - *
> - * #define INTEL_VGA_DEVICE(id, info) { \
> - *	0x8086, id,			\
> - *	~0, ~0,				\
> - *	0x030000, 0xff0000,		\
> - *	(unsigned long) info }
> - *
> - * And then calling like:
> - *
> - * XE_TGL_12_GT1_IDS(INTEL_VGA_DEVICE, ## __VA_ARGS__)
> - *
> - * To turn them into something else, just provide a different macro passed as
> - * first argument.
> - */
> -
> -/* TGL */
> -#define XE_TGL_GT1_IDS(MACRO__, ...)		\
> -	MACRO__(0x9A60, ## __VA_ARGS__),	\
> -	MACRO__(0x9A68, ## __VA_ARGS__),	\
> -	MACRO__(0x9A70, ## __VA_ARGS__)
> -
> -#define XE_TGL_GT2_IDS(MACRO__, ...)		\
> -	MACRO__(0x9A40, ## __VA_ARGS__),	\
> -	MACRO__(0x9A49, ## __VA_ARGS__),	\
> -	MACRO__(0x9A59, ## __VA_ARGS__),	\
> -	MACRO__(0x9A78, ## __VA_ARGS__),	\
> -	MACRO__(0x9AC0, ## __VA_ARGS__),	\
> -	MACRO__(0x9AC9, ## __VA_ARGS__),	\
> -	MACRO__(0x9AD9, ## __VA_ARGS__),	\
> -	MACRO__(0x9AF8, ## __VA_ARGS__)
> -
> -#define XE_TGL_IDS(MACRO__, ...)		\
> -	XE_TGL_GT1_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_TGL_GT2_IDS(MACRO__, ## __VA_ARGS__)
> -
> -/* RKL */
> -#define XE_RKL_IDS(MACRO__, ...)		\
> -	MACRO__(0x4C80, ## __VA_ARGS__),	\
> -	MACRO__(0x4C8A, ## __VA_ARGS__),	\
> -	MACRO__(0x4C8B, ## __VA_ARGS__),	\
> -	MACRO__(0x4C8C, ## __VA_ARGS__),	\
> -	MACRO__(0x4C90, ## __VA_ARGS__),	\
> -	MACRO__(0x4C9A, ## __VA_ARGS__)
> -
> -/* DG1 */
> -#define XE_DG1_IDS(MACRO__, ...)		\
> -	MACRO__(0x4905, ## __VA_ARGS__),	\
> -	MACRO__(0x4906, ## __VA_ARGS__),	\
> -	MACRO__(0x4907, ## __VA_ARGS__),	\
> -	MACRO__(0x4908, ## __VA_ARGS__),	\
> -	MACRO__(0x4909, ## __VA_ARGS__)
> -
> -/* ADL-S */
> -#define XE_ADLS_IDS(MACRO__, ...)		\
> -	MACRO__(0x4680, ## __VA_ARGS__),	\
> -	MACRO__(0x4682, ## __VA_ARGS__),	\
> -	MACRO__(0x4688, ## __VA_ARGS__),	\
> -	MACRO__(0x468A, ## __VA_ARGS__),	\
> -	MACRO__(0x468B, ## __VA_ARGS__),	\
> -	MACRO__(0x4690, ## __VA_ARGS__),	\
> -	MACRO__(0x4692, ## __VA_ARGS__),	\
> -	MACRO__(0x4693, ## __VA_ARGS__)
> -
> -/* ADL-P */
> -#define XE_ADLP_IDS(MACRO__, ...)		\
> -	MACRO__(0x46A0, ## __VA_ARGS__),	\
> -	MACRO__(0x46A1, ## __VA_ARGS__),	\
> -	MACRO__(0x46A2, ## __VA_ARGS__),	\
> -	MACRO__(0x46A3, ## __VA_ARGS__),	\
> -	MACRO__(0x46A6, ## __VA_ARGS__),	\
> -	MACRO__(0x46A8, ## __VA_ARGS__),	\
> -	MACRO__(0x46AA, ## __VA_ARGS__),	\
> -	MACRO__(0x462A, ## __VA_ARGS__),	\
> -	MACRO__(0x4626, ## __VA_ARGS__),	\
> -	MACRO__(0x4628, ## __VA_ARGS__),	\
> -	MACRO__(0x46B0, ## __VA_ARGS__),	\
> -	MACRO__(0x46B1, ## __VA_ARGS__),	\
> -	MACRO__(0x46B2, ## __VA_ARGS__),	\
> -	MACRO__(0x46B3, ## __VA_ARGS__),	\
> -	MACRO__(0x46C0, ## __VA_ARGS__),	\
> -	MACRO__(0x46C1, ## __VA_ARGS__),	\
> -	MACRO__(0x46C2, ## __VA_ARGS__),	\
> -	MACRO__(0x46C3, ## __VA_ARGS__)
> -
> -/* ADL-N */
> -#define XE_ADLN_IDS(MACRO__, ...)		\
> -	MACRO__(0x46D0, ## __VA_ARGS__),	\
> -	MACRO__(0x46D1, ## __VA_ARGS__),	\
> -	MACRO__(0x46D2, ## __VA_ARGS__),	\
> -	MACRO__(0x46D3, ## __VA_ARGS__),	\
> -	MACRO__(0x46D4, ## __VA_ARGS__)
> -
> -/* RPL-S */
> -#define XE_RPLS_IDS(MACRO__, ...)		\
> -	MACRO__(0xA780, ## __VA_ARGS__),	\
> -	MACRO__(0xA781, ## __VA_ARGS__),	\
> -	MACRO__(0xA782, ## __VA_ARGS__),	\
> -	MACRO__(0xA783, ## __VA_ARGS__),	\
> -	MACRO__(0xA788, ## __VA_ARGS__),	\
> -	MACRO__(0xA789, ## __VA_ARGS__),	\
> -	MACRO__(0xA78A, ## __VA_ARGS__),	\
> -	MACRO__(0xA78B, ## __VA_ARGS__)
> -
> -/* RPL-U */
> -#define XE_RPLU_IDS(MACRO__, ...)		\
> -	MACRO__(0xA721, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A1, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A9, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AC, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AD, ## __VA_ARGS__)
> -
> -/* RPL-P */
> -#define XE_RPLP_IDS(MACRO__, ...)		\
> -	MACRO__(0xA720, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A0, ## __VA_ARGS__),	\
> -	MACRO__(0xA7A8, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AA, ## __VA_ARGS__),	\
> -	MACRO__(0xA7AB, ## __VA_ARGS__)
> -
> -/* DG2 */
> -#define XE_DG2_G10_IDS(MACRO__, ...)		\
> -	MACRO__(0x5690, ## __VA_ARGS__),	\
> -	MACRO__(0x5691, ## __VA_ARGS__),	\
> -	MACRO__(0x5692, ## __VA_ARGS__),	\
> -	MACRO__(0x56A0, ## __VA_ARGS__),	\
> -	MACRO__(0x56A1, ## __VA_ARGS__),	\
> -	MACRO__(0x56A2, ## __VA_ARGS__),	\
> -	MACRO__(0x56BE, ## __VA_ARGS__),	\
> -	MACRO__(0x56BF, ## __VA_ARGS__)
> -
> -#define XE_DG2_G11_IDS(MACRO__, ...)		\
> -	MACRO__(0x5693, ## __VA_ARGS__),	\
> -	MACRO__(0x5694, ## __VA_ARGS__),	\
> -	MACRO__(0x5695, ## __VA_ARGS__),	\
> -	MACRO__(0x56A5, ## __VA_ARGS__),	\
> -	MACRO__(0x56A6, ## __VA_ARGS__),	\
> -	MACRO__(0x56B0, ## __VA_ARGS__),	\
> -	MACRO__(0x56B1, ## __VA_ARGS__),	\
> -	MACRO__(0x56BA, ## __VA_ARGS__),	\
> -	MACRO__(0x56BB, ## __VA_ARGS__),	\
> -	MACRO__(0x56BC, ## __VA_ARGS__),	\
> -	MACRO__(0x56BD, ## __VA_ARGS__)
> -
> -#define XE_DG2_G12_IDS(MACRO__, ...)		\
> -	MACRO__(0x5696, ## __VA_ARGS__),	\
> -	MACRO__(0x5697, ## __VA_ARGS__),	\
> -	MACRO__(0x56A3, ## __VA_ARGS__),	\
> -	MACRO__(0x56A4, ## __VA_ARGS__),	\
> -	MACRO__(0x56B2, ## __VA_ARGS__),	\
> -	MACRO__(0x56B3, ## __VA_ARGS__)
> -
> -#define XE_DG2_IDS(MACRO__, ...)		\
> -	XE_DG2_G10_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_DG2_G11_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_DG2_G12_IDS(MACRO__, ## __VA_ARGS__)
> -
> -#define XE_ATS_M150_IDS(MACRO__, ...)		\
> -	MACRO__(0x56C0, ## __VA_ARGS__),	\
> -	MACRO__(0x56C2, ## __VA_ARGS__)
> -
> -#define XE_ATS_M75_IDS(MACRO__, ...)		\
> -	MACRO__(0x56C1, ## __VA_ARGS__)
> -
> -#define XE_ATS_M_IDS(MACRO__, ...)		\
> -	XE_ATS_M150_IDS(MACRO__, ## __VA_ARGS__),\
> -	XE_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
> -
> -/* ARL */
> -#define XE_ARL_IDS(MACRO__, ...)		\
> -	MACRO__(0x7D41, ## __VA_ARGS__),	\
> -	MACRO__(0x7D51, ## __VA_ARGS__),        \
> -	MACRO__(0x7D67, ## __VA_ARGS__),	\
> -	MACRO__(0x7DD1, ## __VA_ARGS__),	\
> -	MACRO__(0xB640, ## __VA_ARGS__)
> -
> -/* MTL */
> -#define XE_MTL_IDS(MACRO__, ...)		\
> -	MACRO__(0x7D40, ## __VA_ARGS__),	\
> -	MACRO__(0x7D45, ## __VA_ARGS__),	\
> -	MACRO__(0x7D55, ## __VA_ARGS__),	\
> -	MACRO__(0x7D60, ## __VA_ARGS__),	\
> -	MACRO__(0x7DD5, ## __VA_ARGS__)
> -
> -/* PVC */
> -#define XE_PVC_IDS(MACRO__, ...)		\
> -	MACRO__(0x0B69, ## __VA_ARGS__),	\
> -	MACRO__(0x0B6E, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD4, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD5, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD6, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD7, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD8, ## __VA_ARGS__),	\
> -	MACRO__(0x0BD9, ## __VA_ARGS__),	\
> -	MACRO__(0x0BDA, ## __VA_ARGS__),	\
> -	MACRO__(0x0BDB, ## __VA_ARGS__),	\
> -	MACRO__(0x0BE0, ## __VA_ARGS__),	\
> -	MACRO__(0x0BE1, ## __VA_ARGS__),	\
> -	MACRO__(0x0BE5, ## __VA_ARGS__)
> -
> -#define XE_LNL_IDS(MACRO__, ...) \
> -	MACRO__(0x6420, ## __VA_ARGS__), \
> -	MACRO__(0x64A0, ## __VA_ARGS__), \
> -	MACRO__(0x64B0, ## __VA_ARGS__)
> -
> -#define XE_BMG_IDS(MACRO__, ...) \
> -	MACRO__(0xE202, ## __VA_ARGS__), \
> -	MACRO__(0xE20B, ## __VA_ARGS__), \
> -	MACRO__(0xE20C, ## __VA_ARGS__), \
> -	MACRO__(0xE20D, ## __VA_ARGS__), \
> -	MACRO__(0xE212, ## __VA_ARGS__)
> -
> -#define XE_PTL_IDS(MACRO__, ...) \
> -	MACRO__(0xB080, ## __VA_ARGS__), \
> -	MACRO__(0xB081, ## __VA_ARGS__), \
> -	MACRO__(0xB082, ## __VA_ARGS__), \
> -	MACRO__(0xB090, ## __VA_ARGS__), \
> -	MACRO__(0xB091, ## __VA_ARGS__), \
> -	MACRO__(0xB092, ## __VA_ARGS__), \
> -	MACRO__(0xB0A0, ## __VA_ARGS__), \
> -	MACRO__(0xB0A1, ## __VA_ARGS__), \
> -	MACRO__(0xB0A2, ## __VA_ARGS__), \
> -	MACRO__(0xB0B0, ## __VA_ARGS__)
> -
> -#endif
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
