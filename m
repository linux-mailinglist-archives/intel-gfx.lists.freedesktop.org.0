Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D18D0A826C3
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 15:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C7A10E8C5;
	Wed,  9 Apr 2025 13:53:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C+/Xgu0F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABA1A10E8C5;
 Wed,  9 Apr 2025 13:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744206823; x=1775742823;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=5vWtq5p/ZhyVbTjVJ2O/E5RN3eD+mL+10KkD7Y6M3m8=;
 b=C+/Xgu0FEY1Jov10yAni+OVbLXm+NnGYaJHLw8Lwv6PyH8WsyKahzYK7
 0gJNdaR3RL5RgOE3ZviAOySbRMOgKNhpVowcFpi9Hfy/3ZZbxz7HqwvzM
 feYGyPRo74CX0LtthijX7dm91kfLqCxUquIlIWzPNzuXbblAn1Y0Q85jf
 hGF/kDVrJ53gQ1Hb3Xb5lECcaSSiCdFVD6yY2dPtTEBIkU+tjwJWZ22CD
 MHB3/mRnkllmGr4Xi8U19sctsJYpydDTpIe/bTi+o5ZU5c3gmWEZiLegK
 Qo7eBew9dldNH+8XqmmeGZWjqMJbG7DM70XWoP6vb9dJSXujnA2NtWjhN w==;
X-CSE-ConnectionGUID: 2RmEqs6NTgORLxyr8qdnDQ==
X-CSE-MsgGUID: aUOyKEWIQmybSqVxSZi5gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45569378"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45569378"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 06:53:40 -0700
X-CSE-ConnectionGUID: SNKn87k4Sb2pLUL/DEHD4g==
X-CSE-MsgGUID: gt7+C0cuT+iQ/N04M1NlGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="128580086"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 06:53:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 9 Apr 2025 06:53:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 9 Apr 2025 06:53:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 9 Apr 2025 06:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xn8o2jKtTIC+aKppBhfgHipjfLMesclj1sFw+AHVXI6a7UrEs2UxBLVhq9bbSWr7FnwUcnApHkoQe2ZJHBBDorrmnddTzbqLzTc2SGzTgyiRtc0QD3hb28crc7PovSKsXZWAGC5Xr2TeK1OGPWuY+B9cm5OaIHAGFiVhGw4bm4q3gDkF2DLUK1hvorojg8DES3MkcQWaU4WjoKcy7VpKbfp1XVpz9VcLXzzTO5xedF/RByaEFnxuXmnelwRv4uUafuWJuh4sujo9ocunXkyTQHM0EcMOAiVK/0wu+8PjgHOWp1LrX4+6oLVfWOkfDfUZy0MjSgOOordPVb6X4iNdPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g/lywqWoVU3qsGyq6E9BmNGcfex7SqVFO2B3VuxV22U=;
 b=eBPGp+9cGNJhwCGdt4/+h1ExZQ8iP5lh8B40e4k+3Run2DeK3MNAxeBMnPh/qRD4wyQT8JTAlSZSiCeOuQg8qXAq3hc6QaWrIjC1EbIbSZyW3ldh5Xs7v09Rr+tEHgwJbGAWZT8xEVZSENZQu+7DHC5HLyxM5m4oI5rzo3KmaXdzKM9PuM2Vwm4FdQKU5AGgfNqyGjLMnfUAvfLvygrf6MjHoVZkiqvsYb+8yBlHzvQ2fxeatBf+HU9OLQZnSC0fn8PVua2b6k3qIvaFabzc3E2e6QrReaEsb9fZ7PRovr3sYeEIXKU23C37MKrzcOHUxymDON+jIcptQ5h5Yo6b2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB6841.namprd11.prod.outlook.com (2603:10b6:930:62::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.42; Wed, 9 Apr
 2025 13:53:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 13:53:09 +0000
Date: Wed, 9 Apr 2025 16:53:12 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 07/10] drm/i915/dp: Use an intel_connector pointer
 everywhere
Message-ID: <Z_Z7yJC4PvBUhTiP@ideak-desk.fi.intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
 <20250408214342.1953197-8-imre.deak@intel.com>
 <87wmbtwxix.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87wmbtwxix.fsf@intel.com>
X-ClientProxiedBy: DUZPR01CA0107.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bb::25) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB6841:EE_
X-MS-Office365-Filtering-Correlation-Id: 16901a47-f4ac-477b-fbc3-08dd776ddc7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rJ4VZQ8U/8YASCseKBp5rtdOxkwOnVGLohLIa5dIGtROKNwjfe0kjVI0FuC3?=
 =?us-ascii?Q?bmR7Cj5YMf69tFuD6n+5VuiOxc2CN7QSC73k+dw9gTDDJjuHUu5hqAq4EPri?=
 =?us-ascii?Q?uQNkfAJWPHL98tTx6BEwJ36nA/Z78K+mgH0NCM/wBl4WF51pC60B4JuvPyHr?=
 =?us-ascii?Q?ZmAax4fJSEcujpPXzowuHuHfv5iYCSkOH/XK6dWBmcLrJgbkVdjCLEF9RKOT?=
 =?us-ascii?Q?gk8LBgPjZnEALDTMV4AABUHaoL6TCjrmShFAmrKKSo6y2ErXQo9uHeCN+1Qr?=
 =?us-ascii?Q?ok7jnaMlFCE8bNYCfNXkS4+eGcTJ23vD9EeHcHTsJVJr66gpn7qhqWgY//wr?=
 =?us-ascii?Q?2gWfQPra/tOKPu9B5hH+vZLpPsRaqOlZiJGnHUxX1iEizKHdr0Y7xhtAi98H?=
 =?us-ascii?Q?dmM+PktwN3mFe8qDmf+tgiqVZfR8Vpg5SJMrFGnZI5VLHCWTS8WebzR9Hamu?=
 =?us-ascii?Q?xerv8LXNMJIOLuz4b3eF+IOSsQkltffrKHaqGtNTOES0dgp2zIMhpE8raIr8?=
 =?us-ascii?Q?leZfa7F+0B1pRwrU8J2tWXbmly7r1UPgAXCbzqqY0CIBuewinzcCKYlcXbnG?=
 =?us-ascii?Q?JK1nwffbaCS4hb+Jw1MZ8Hd9yT/YY5T+aysboR9ID2j4plJapoQaJkuN21GI?=
 =?us-ascii?Q?ZG4riWYqoi/1yB1Hpwla1gJ8camKd3M8OcG9a4cCcPvCAr0Dtp/cML4XPz0i?=
 =?us-ascii?Q?heIhny7uCcYqY/d2guXSvq8HpqgjTmc1C0ljX+OyZDbLIYNur9UAdu8FI4Z3?=
 =?us-ascii?Q?VdkWz6pd5aWlSyEUCD8sbs6QkRPFuoaXy7C3+7p0z2+y04sZcycnjtqEWx+1?=
 =?us-ascii?Q?nfmcGaVeBSL5Pm75JNw6TV2FF1aodNHDkOp7O3ZyiLBW5r6LtnXG3iDPMisG?=
 =?us-ascii?Q?3Nti7UTcqW5RTzcsn64o90hGJWV9v0cslVwKvZ1ew5w2dY11Fji/EZml2JEG?=
 =?us-ascii?Q?Qa9mEQGmvntzOQAGX97iGbsZJcEOctb5mSHf+MoFwztT1AXH+EAIqWjWa61B?=
 =?us-ascii?Q?tXcndiNxseaI15GX1ddKnEyze5c+zjBVfEF5U/W+pGhZ31qZI9EC+j0Efhfp?=
 =?us-ascii?Q?m/XW0AZQbS3EG3vSwx5R9qMgeQGZUC4e35IvjgnCZ6oPif25EjWMlIPWss+X?=
 =?us-ascii?Q?c2G64a1FzJq+mtkWi4pGs3V/ZsiU2nL9PuN9zptS8AwOPznC+dBilRFCQXPK?=
 =?us-ascii?Q?xT9hDN9E1kiVadL9tFGSB7894vAIVavdUDFZnEcgIBmAYi123f58OXlSE0xM?=
 =?us-ascii?Q?AYKS7zoa5ynx7vDxR5NQPxaX0CSFgu98OHI1OcXN+elssMglUpoNdOqyeM3V?=
 =?us-ascii?Q?KYuXqUHScL4YUvfgOMsZHvrRWDDoG6TPrFGJU+sfCVB7onzX3gtWf81cxQuf?=
 =?us-ascii?Q?QpR3mLhc52oXcL+NqSqEXyl5MF71?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pfT22YQ9RDucEwyoQD0zeiSfeCHzm0tiITTjeMrFQ0R085CaAv9U5rA0d1ZB?=
 =?us-ascii?Q?bT+NWo/o6bictuk+KnACGFoXYpMUE4at2/8yMO4+gR/+n/9E0bZvOjNBbiTt?=
 =?us-ascii?Q?UG8MLffZ5UISqZVh0KddjZajDrkdflxguq+O00yO+WQxY0yfW3cHd0YLu5G2?=
 =?us-ascii?Q?wQLtA/X+pMBjV8FcdWCH5Pvt9rBFH5Nr00jx39k6lZHcJYnzp6UzNkV455YD?=
 =?us-ascii?Q?68eOMT8RCX0l7H/7CLzsglkui5IkGcCHfUFSPLCDLo4eURySPkZstqvdk22+?=
 =?us-ascii?Q?iAttf2Jp+PeFhNGGERmnUyd6lwZo7PbQyJBhR+FQLzzogqrX3OK0An1Cnjmu?=
 =?us-ascii?Q?AlLYUYlFSf4xzY+P2f+saH9Abm7eKts0f0vfyDIiv6NIZDWbaSuzYZhmg4Xg?=
 =?us-ascii?Q?X0MuC9Lnh6js9xoD/dh6KQJfgrTCQ7JQun3t522oMpWCCq4nz5HhFObTAPq9?=
 =?us-ascii?Q?v+GdM/SD/eJu5LE9iv57wQ/zkboGSz+h8ngUX1llImtRB9sM6xGixlbo7/wu?=
 =?us-ascii?Q?TbbHDiriKNEO/I4rvia0crVy9Gg+8XqrPqwoq9VPLpmhSzMoH+ErOl0yep9O?=
 =?us-ascii?Q?c0VNaFK/A3wcFVoSALGhMcd2v2XsfuH3IOJPrbggpUjH2ctgwXrARfq3plne?=
 =?us-ascii?Q?7OM6FH7j+HOKFXiUWr/LRMU/BkaKlSutFQhnmtCs1Cyk8e6fHxD9/Ktbm88V?=
 =?us-ascii?Q?t1BYEG1M8JeKuUD2iKC6VMJsa901/G2nHloBUpudqi78uXlzCDEHIxwj4Hu4?=
 =?us-ascii?Q?7RbKq5/GjRLc6m0xlVk/6BS2m2OLo3xp8uZruOc3c6KcA6deoHR9eX10g/28?=
 =?us-ascii?Q?sb5iCET5udgG3WdpXYfIjPp18RuvKJefWbp/il0xs8KFqgP42+tDZ2m49Rl1?=
 =?us-ascii?Q?lqvuLeNvMw7SDe1N5NjAlvIKxReSH6oPFvo7Zs2NuemCbVvQ22uGSFWA5gPh?=
 =?us-ascii?Q?uNBgefuj3CLIYhyeWq0r1ZubA4PlX5K5flzsVWuW1WPCA0Ut0f3/qJWZIoN+?=
 =?us-ascii?Q?13PVt5x+6aKXrNsP2SWsMiHlLCMBmapRNqxCX50Ohomc5f19bOiAUSJSyP6P?=
 =?us-ascii?Q?rUKESo/5Mc2v2x/XTtr2zKY/swWnFT784Wcle+CGNtD87cQnAqm6gtKQ5GlA?=
 =?us-ascii?Q?pMXDXSEk1nAV5zWT0Inxdzm64pu1lDlIs4kMQIeIMOluu5L+4LU48B6G4/Wg?=
 =?us-ascii?Q?0lgGyt/yj2U9GKdVcyUrLq0bj3X34arHhVySGdyJGySFawCgDGzuZSLHJFa7?=
 =?us-ascii?Q?wrnb0ySkiF/0TXRpKoeaTzrl5q6BJCZFcuXPe2jQSr+jl7Xygj6rOddrRfnt?=
 =?us-ascii?Q?KqUdYrH/7KDAOFLaZh6Ht+0pT+OOgMIh03DHXzrLAug6vTY3xHvY4PkzTrQv?=
 =?us-ascii?Q?D+ZuyyxLWvkOGLP1l0hv6mW+K1LXQ5UuVzgau0k0lWb8V8es4UGhY7fe1Tcw?=
 =?us-ascii?Q?rozWvQrEvGObsQRX0Fbm7kEdjzSKaAAXVGqyqPi5iaQnusSYMcp+LMrqQMDA?=
 =?us-ascii?Q?V00Zp8bsLeUFAyEVdN1QNGoaf84o0LP0pTOh4wKfTtlE+IJCuu07AuQc2D08?=
 =?us-ascii?Q?XhCeX1FUeOfBPcI/UfP2bK6YI4KPZmBF9zx4qQ86?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16901a47-f4ac-477b-fbc3-08dd776ddc7a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 13:53:09.1908 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1IYJjSKRjTWwPfVQ1fJBvNcf8hXKhSl3EUh6DVTxYjPblsI726krLK2XrRWFs+yJ5GDHLG9+wL1FhUkfM4FNdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6841
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

On Wed, Apr 09, 2025 at 11:26:46AM +0300, Jani Nikula wrote:
> On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> > Following the convention, convert intel_dp.c to use an intel_connector
> > pointer everywhere, calling this pointer connector. If the intel
> > connector must be casted from a drm_connector, call this pointer
> > _connector and use this pointer only for the casting.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> 
> > @@ -5979,21 +5982,22 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
> >  {
> >  	struct intel_display *display = to_intel_display(state);
> >  	struct drm_connector_list_iter conn_iter;
> > -	struct drm_connector *connector;
> > +	struct drm_connector *_connector;
> >  	int ret = 0;
> >  
> >  	drm_connector_list_iter_begin(display->drm, &conn_iter);
> > -	drm_for_each_connector_iter(connector, &conn_iter) {
> > +	drm_for_each_connector_iter(_connector, &conn_iter) {
> 
> for_each_intel_connector_iter()

Thanks, will change this.

> 
> 
> -- 
> Jani Nikula, Intel
