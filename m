Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC568CFF0F5
	for <lists+intel-gfx@lfdr.de>; Wed, 07 Jan 2026 18:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40C410E21C;
	Wed,  7 Jan 2026 17:19:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DWtz0+j+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A2F10E111
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jan 2026 17:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767806342; x=1799342342;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NKjjw/AWehGLeuuaX1+N0tiXUaUPYHzXd4w7EPh236I=;
 b=DWtz0+j+fQD8oRibkDLZnaWbDHkMACC8Tafpz52rSJH970ZIvEKyZP9c
 gpI4ITfTEKnkcKmbfgNxXZD3o+iwYuAhIvNT2pHSbPCaf+cnhT7IkvvX7
 6TpOTYLtWg5+2pTOhD0GcRWr5dg25B0kodLvWUQHOv8Ufh9YMcQ1PCEjW
 dUJk7JqeMBCtV/t/1FZssMV7Xq4SMXp9lT5IPCtrgBUTkK6BIyWpibLi8
 +c11AlEcB/S/vTwBORmwyDHhQAj5QF+Dz4BwusnDxYSAG5fJzBGy4jDHk
 BfR+aUq6/xC9jvMdLAvBNkbQDg89jeMzUnxHdHPpTvmUhIlCFKm+wuFkw Q==;
X-CSE-ConnectionGUID: xvptT/8CTHa+VqCbsEv+KQ==
X-CSE-MsgGUID: bbcIrtDrSVOQ3iexLHsZyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="69257588"
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="69257588"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 09:19:02 -0800
X-CSE-ConnectionGUID: kpY/u922Q9SKEbtePpoqrw==
X-CSE-MsgGUID: ItMkuMRBS7iO8qrapg/Cuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,208,1763452800"; d="scan'208";a="202890298"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2026 09:19:01 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 09:19:01 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 7 Jan 2026 09:19:01 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.22) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 7 Jan 2026 09:19:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rN02CdyaqRUA3KDvoDgmVSuYj0oiaUpqt0eanXX+AuScxMdijM28YeadFeW0m9oVsExS+zjR3wnO6chuqIXyppBCURDO+X2OVBciQdDaP6sU8iCQUma+UeqoJkDFfi+LL5lHO/vOVT4w9STw37/lhSGLA2912AhfqnugW0NTcMr7+Lg+UfiZPFIDdoi58epPVC8QP7/tChQqPItHgYKbIxcicVogyE9I7MDunS0ZL1b+V7fzGCRMSVQNr4+2Dfxfro0QfbDdTskZWoHiAkwtPGGT0RhVmZWZgp52OJnz6zdg53W6bejBwa2ifjsF121NnXiJQUykBJHuwFjzM0eNng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qsuuo8k7SOIWrgrMwPN0eE0FP9Gkw/FAbPJ1N9v9yoA=;
 b=PoaoXqcoldeYwQZEObJLuymh2+MM44l6NpgPsshTF8lTUOX7ZBLk7ZEcZjZIZ/Lv9RYo4H1egmAq+vZmC+jYnwCONtiA1djO9PZNx3k7bDyfMTEJxuEW3oyAj4hsJYnyXx6eaoIQJNZedk1ZZapvg32ZA3gSGUFdbLc3GClyzHbhKOP5wiT983QnZbm95jHfOc8k838eYS9RY4VK3AK2pe+i2bot/fczjcwZ3zItz53LUrUbu2D7TOUuVbroo+eDQ1X84rOWkySVIRzrI21tnVZ4xXgRHAFYlU/tOAQg5m0OQ9V+NweB10E3GT3PWUEKSaqe56r0+hYIwcGwEKlGuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB7820.namprd11.prod.outlook.com (2603:10b6:610:120::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Wed, 7 Jan
 2026 17:18:56 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9499.002; Wed, 7 Jan 2026
 17:18:56 +0000
Date: Wed, 7 Jan 2026 09:18:53 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fselftest?= =?utf-8?Q?=3A?= Add throttle
 reason diagnostics to RPS selftests (rev4)
Message-ID: <20260107171853.GP1180203@mdroper-desk1.amr.corp.intel.com>
References: <20251223101605.3304379-2-sk.anirban@intel.com>
 <176659036743.116264.13666946709299257306@a3b018990fe9>
 <2bc9dbda-17bc-4460-ae4d-118dd41fbff0@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2bc9dbda-17bc-4460-ae4d-118dd41fbff0@intel.com>
X-ClientProxiedBy: BYAPR21CA0001.namprd21.prod.outlook.com
 (2603:10b6:a03:114::11) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB7820:EE_
X-MS-Office365-Filtering-Correlation-Id: fe8ac4a1-3d7f-44cb-614f-08de4e10d6a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Q6BK5zqi5cEituNWRO4Z3wRre7JyzV9V4JKSbyH6ZzVFMuhxi0aYGeLJUUbu?=
 =?us-ascii?Q?o9ERXDeP4L9v0Y2oir0135IsjlSy1Gi/fcSyQBUcUujYzS75THksLbpKRXxn?=
 =?us-ascii?Q?O1H7ka8Yg0Xf5oEvm7ysd/Rk9bn0IZPXIEduO3HLuRYtBGzMRo7oZTKTSwoH?=
 =?us-ascii?Q?dMZ+6udFdNSW7St/Ad1GzDBOBnPtWdUvYpGKgaDyHzBbvdfSuwDC0Vud0LFe?=
 =?us-ascii?Q?UQ+Tgi2XF5ruCPslfzpchtg8KnAc7d96F03uFiFJh2ZMLn12KR3+KryppEt7?=
 =?us-ascii?Q?e4moeN5dC5f1EO81gE/GfTsXvdv64CRtTVT8K+SV91PHpjUXX1Hn9CqjAoli?=
 =?us-ascii?Q?bCgnM0tEpe6sUVhLNYOh+jtAoyxU4700OwDtDZG+GLT/WHn9gnXZzr4cgBn8?=
 =?us-ascii?Q?kdSEfnH1XfIFux6VraKDdDlvM1HXrsrOgE5ih/HExRYT8raz1wompJpLIhSc?=
 =?us-ascii?Q?QGVEblVv4aCKb/nmECYX6TUczrc/iyzzsSa1F6pW4e09Zdf4hdMzciDlO72f?=
 =?us-ascii?Q?8gGyk4TIdfACFGLJ7cQ4vr9+qvuE5f6DRtClwA0H6AZ94LQzFWU6YiL9v2+e?=
 =?us-ascii?Q?mWR3EQyy7Y/GkdpzSBpBhfWXLxtPo68ccAdFnwK9mME6g4GwsgkjxsT5KbE9?=
 =?us-ascii?Q?7VW7SgR9cb/4oXo0Nj+o4lRmVwAlwvmf98qowismBux7mZwvXyHqm8vSYN6H?=
 =?us-ascii?Q?PyBJVNnDK8BPHvLeXrceSPsjwQ5BKIIreK8UTQjcYbbOJLh4o6Q43Y0PWe3A?=
 =?us-ascii?Q?5FFKpOLs3YyJtYhm7DwMlEW922aNkb5A1V9DL8lS3Z982w4ged6dfcxrGxzb?=
 =?us-ascii?Q?m4VrTajae/GqcUbwBrbmKXrIUUQQM3RQGRY9qKd67i/litQLQTWTlHEUmSZp?=
 =?us-ascii?Q?3rmLe4Ulsk+FE2US/cHDbA+9nzClXcwAY1JLX4AQSbACXD8kSGwNspvJP/bX?=
 =?us-ascii?Q?mPI2XwYhc5nwtMufIdeWtze+WgcDaA3w2PfWYJMf2rS2H/AQQhWS/A9zsKGX?=
 =?us-ascii?Q?37suubJFosDg6HTJFJ0B52YJF/ue9pueeitNLjlgDOn1GJ6XPQcQYpUQZUfn?=
 =?us-ascii?Q?saD0PH7DQb+27ip2wIs5Twi/srUd3isq4ypaniaIijL0hYs3xa3LVXxAzRfM?=
 =?us-ascii?Q?9yiU88FIEGABr7aWmmXzz5FE+o/xZHWWoVodlk8hiUY47R5unZInnEAfmFH6?=
 =?us-ascii?Q?aQds+nGtBbyAb/GNlWMkzYYEwveYcYchGRTGT3Ax3HxN9x01Zj+9qReaN2zH?=
 =?us-ascii?Q?PtW6P79cc+gIc6VE3GXr/4BickAQGiYCVYp8r3MnqJ9/hkFORpfWExaWe8wL?=
 =?us-ascii?Q?tpuhXD5R4W/+5k9W9X69EAmc5VhvBhsN1ISHUXPmKd5aFvSA1dpH/RZ6v2Jt?=
 =?us-ascii?Q?be8ixDGWiaHXmd9l9AnpqwumPVSiOUUGeafgYs3T/cKOif8QsQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NA7M1t76+OUJonnDmXMJSICavbtEpvJEOfOP5uTMSPoRzlNlzb9aiQAYRzXJ?=
 =?us-ascii?Q?UaMtYoEMp2l1eewe6BYUQuLggcfb9ECRk6ZpEvLTjNAXb9sdP8XoGoMYs+Ah?=
 =?us-ascii?Q?gHf6K011vcsfxite77n9FOVSxuCYES9LGywUYqhck9hYjZncvUSTCW3+uxuY?=
 =?us-ascii?Q?g+mO2f4kL2DAHVR2+YN+Gaka9eLKbTT8mlBj1DBuZBrXrIILmWANURn/FlmQ?=
 =?us-ascii?Q?eVsvdY13rfVFs7JfxKbiuy3ZTk77t8r/5WhD3l+Xcub4EooeR4419UyInRMW?=
 =?us-ascii?Q?7PT6qsE6+UNGOJeu/FlZ+yVvdwACwPUeRyV7Pb4Vn28jB/Yg+UXKaATnUYsm?=
 =?us-ascii?Q?A7+N35FGfspXN6WbY90aFe0LAJSnAAYoUouUD/ligvuh5/vkyI6/cnj/2JHT?=
 =?us-ascii?Q?86hJo1fLm4/8O+4veXLdCGBXMf6S8dzwsmHWtQB4QSU51N6fK+HmRmH/K/yj?=
 =?us-ascii?Q?CMn3PCglkZBJBjeamyJWsi89wdWS3zeJrvMl4tOXMTM1lCVYhTUiAN6Ugx+C?=
 =?us-ascii?Q?SbKOoAC0oaBDDXZ084Om872iMmPlokR8RUvkdnn+kzU6Ycfi6rkoy5smXqP0?=
 =?us-ascii?Q?l4qe7Qxx94DCvWV3dW1upgz47NpfVuPf99Jan4AzkKcal38lh6qJCv4Xbxuq?=
 =?us-ascii?Q?zN05j4jGg/6o2pi2O2Nk0UhDTbtj4BqcAfnk7XFOmuQQpk+VlO29HkTt1w4r?=
 =?us-ascii?Q?vQXyoBIrTAs9vH3jq9ci73Wb8ndt0m/auktJm8HMDvmsiu4YYzIY54sIpW6h?=
 =?us-ascii?Q?lM1Q1padlAS/2QOBWWu6bNWZgCLSnUHPyqwIhpP6E+9ST56hNP9a4EhAceLd?=
 =?us-ascii?Q?yvZfvmycgINGrq/tMUqHA/Xm1xI6DyuHhrzbR9BH7AuozD8wI4io07tLMiSS?=
 =?us-ascii?Q?mU5QRT4rswqWjfgy0tRwKsgnpHc26Y23TIJS63dSHBYWQzRRG0X1dddj8w6R?=
 =?us-ascii?Q?yw+vJKM6e3ajmC0NvMldwaHU4v+++46ur+x4FCMw+JG3MHXs9MU+9a6HFPM1?=
 =?us-ascii?Q?4W1SPHE5WO8vvZ7ItkD843fN5K9FfRaSDVqVoJPFXOdNg2zmBxHUEfC6CNwr?=
 =?us-ascii?Q?e/LyuTeJylWCdqsBXysNwBXJWfxjT8wnQ2OMJceRHv/QJp+sr/lX44IMPWe9?=
 =?us-ascii?Q?ozpjCORHHWAULy9StmTlcW6rNvUDPdb1XxGOa940pXeYD6d5+vfeiE1EuXpn?=
 =?us-ascii?Q?3zYQRbZMe4pR9CjcDjPLE4COP3VO61qpkzkoVXAn5+jWbgGM8qVjweDTsiyB?=
 =?us-ascii?Q?oySSnSWV7tdL7l9rpvvRzevMQIGvh7N0CnNpYJRlrpG20+Yp8nZHAyUyI/BQ?=
 =?us-ascii?Q?Du32BTiE9+i2lUtXkABREWVv1RONFncj9WRZP001D7KvOSDoonO72KoTMLak?=
 =?us-ascii?Q?ow0qrHc7vAM7aUzO0lSufZsQduElhPiszL3Vnb5PQgx9PhNdNrrU8VNwsaX9?=
 =?us-ascii?Q?kXqS411u7a3TlsrsEymHQNLfnM9tyVj+/CJZeBYKYwd9gdR9IhuiFc8ayBfT?=
 =?us-ascii?Q?Ct/lI6HtuNlhGWPfRVF4JrzPiX9Bw5GXOUOO9RA+0j+nfuySjd2L69zoRsWX?=
 =?us-ascii?Q?X6Din/cTGBy0A4+GzrC5Bi9VhYx1l0MPrmZA8f4qYs6FVC9DqSv3qRZ8n51O?=
 =?us-ascii?Q?O7fS44SicFRCDVQe82WDF+yHM2g8O+RDamcjrLTvuyid0ixXqIGjqwZt+fB5?=
 =?us-ascii?Q?ibtE5kZLZoubQ6FMGwgRO4j+yfwHB11x/y9Qx9ss0SqKymImYJ+80+Xagt2p?=
 =?us-ascii?Q?eRXyybTQyHqjU0OjpMycnD+6jvp7X28=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe8ac4a1-3d7f-44cb-614f-08de4e10d6a3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2026 17:18:56.3999 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqXNr9OZ6RkdCpiAuldhadd7X+QHOjHTgoRC6ejs9k9xiJu9DMY7h42cOGS9BbDtrmPKCMrWXURp1IEE222nTo48b1u51i+bZCZkBx5Kny4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7820
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

On Wed, Jan 07, 2026 at 10:10:50PM +0530, Anirban, Sk wrote:
> Hi,
> 
> These errors are not related to my changes, please re-report.

Applied to drm-intel-gt-next.  Thanks for the patch and reviews.


Matt

> 
> Thanks,
> 
> Anirban
> 
> On 24-12-2025 09:02 pm, Patchwork wrote:
> > Project List - Patchwork *Patch Details*
> > *Series:* 	drm/i915/selftest: Add throttle reason diagnostics to RPS
> > selftests (rev4)
> > *URL:* 	https://patchwork.freedesktop.org/series/158666/
> > *State:* 	failure
> > *Details:*
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/index.html
> > 
> > 
> >   CI Bug Log - changes from CI_DRM_17733_full -> Patchwork_158666v4_full
> > 
> > 
> >     Summary
> > 
> > *FAILURE*
> > 
> > Serious unknown changes coming with Patchwork_158666v4_full absolutely
> > need to be
> > verified manually.
> > 
> > If you think the reported changes have nothing to do with the changes
> > introduced in Patchwork_158666v4_full, please notify your bug team
> > (I915-ci-infra@lists.freedesktop.org) to allow them
> > to document this new failure mode, which will reduce false positives in
> > CI.
> > 
> > 
> >     Participating hosts (9 -> 9)
> > 
> > No changes in participating hosts
> > 
> > 
> >     Possible new issues
> > 
> > Here are the unknown changes that may have been introduced in
> > Patchwork_158666v4_full:
> > 
> > 
> >       IGT changes
> > 
> > 
> >         Possible regressions
> > 
> >   * igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-edp-1:
> >       o shard-mtlp: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-mtlp-2/igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-edp-1.html>
> >         -> ABORT
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-mtlp-8/igt@kms_plane_alpha_blend@constant-alpha-mid@pipe-a-edp-1.html>
> > 
> > 
> >     New tests
> > 
> > New tests have been introduced between CI_DRM_17733_full and
> > Patchwork_158666v4_full:
> > 
> > 
> >       New IGT tests (8)
> > 
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.09] s
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-smem-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.04] s
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@tile4-compressed-compfmt0-lmem0-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.09] s
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@tile4-compressed-compfmt0-smem-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.02] s
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@tile64-compressed-compfmt0-lmem0-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.09] s
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@tile64-compressed-compfmt0-smem-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.02] s
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@xmajor-compressed-compfmt0-lmem0-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.09] s
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-compressed@xmajor-compressed-compfmt0-smem-lmem0-multicopy:
> > 
> >       o Statuses : 1 pass(s)
> >       o Exec time: [0.01] s
> > 
> > 
> >     Known issues
> > 
> > Here are the changes found in Patchwork_158666v4_full that come from
> > known issues:
> > 
> > 
> >       IGT changes
> > 
> > 
> >         Issues hit
> > 
> >  *
> > 
> >     igt@device_reset@cold-reset-bound:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@device_reset@cold-reset-bound.html>
> >         (i915#11078
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078>)
> >  *
> > 
> >     igt@gem_ccs@block-multicopy-inplace:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
> >         / i915#9323
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
> >  *
> > 
> >     igt@gem_ccs@ctrl-surf-copy-new-ctx:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html>
> >         (i915#9323
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html>
> >         (i915#9323
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
> >  *
> > 
> >     igt@gem_ccs@large-ctrl-surf-copy:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@gem_ccs@large-ctrl-surf-copy.html>
> >         (i915#13008
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008>)
> >  *
> > 
> >     igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
> > 
> >       o shard-dg2: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html>
> >         -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html>
> >         (i915#12392
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392>
> >         / i915#13356
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
> >  *
> > 
> >     igt@gem_ctx_persistence@heartbeat-close:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-close.html>
> >         (i915#8555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
> >  *
> > 
> >     igt@gem_ctx_sseu@engines:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_ctx_sseu@engines.html>
> >         (i915#280
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
> >  *
> > 
> >     igt@gem_eio@in-flight-suspend:
> > 
> >       o shard-glk: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk1/igt@gem_eio@in-flight-suspend.html>
> >         (i915#13390
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390>)
> >  *
> > 
> >     igt@gem_exec_balancer@parallel-out-fence:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@gem_exec_balancer@parallel-out-fence.html>
> >         (i915#4525
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html>
> >         (i915#4525
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
> >  *
> > 
> >     igt@gem_exec_capture@capture-invisible:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@gem_exec_capture@capture-invisible.html>
> >         (i915#6334
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gem_exec_flush@basic-wb-ro-before-default:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_exec_flush@basic-wb-ro-before-default.html>
> >         (i915#3539
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>
> >         / i915#4852
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
> >  *
> > 
> >     igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html>
> >         (i915#3281
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gem_exec_reloc@basic-cpu-read:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read.html>
> >         (i915#3281
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@gem_exec_suspend@basic-s3@smem:
> > 
> >       o shard-glk: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk1/igt@gem_exec_suspend@basic-s3@smem.html>
> >         (i915#13196
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196>
> >         / i915#13356
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
> >         +1 other test incomplete
> >  *
> > 
> >     igt@gem_fence_thrash@bo-write-verify-y:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_fence_thrash@bo-write-verify-y.html>
> >         (i915#4860
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
> >  *
> > 
> >     igt@gem_lmem_swapping@heavy-random:
> > 
> >       o shard-glk: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk1/igt@gem_lmem_swapping@heavy-random.html>
> >         (i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gem_lmem_swapping@parallel-random-verify-ccs:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
> >         (i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
> >         (i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gem_lmem_swapping@verify-ccs:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@gem_lmem_swapping@verify-ccs.html>
> >         (i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@gem_mmap@pf-nonblock:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_mmap@pf-nonblock.html>
> >         (i915#4083
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
> >  *
> > 
> >     igt@gem_mmap_gtt@zero-extend:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_mmap_gtt@zero-extend.html>
> >         (i915#4077
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@gem_pread@snoop:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@gem_pread@snoop.html>
> >         (i915#3282
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
> > 
> >       o shard-glk: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk1/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html>
> >         +191 other tests skip
> >  *
> > 
> >     igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html>
> >         (i915#5190
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>
> >         / i915#8428
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@gem_userptr_blits@invalid-mmap-offset-unsync:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html>
> >         (i915#3297
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
> >  *
> > 
> >     igt@gen3_render_tiledx_blits:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gen3_render_tiledx_blits.html>
> >         +6 other tests skip
> >  *
> > 
> >     igt@gen9_exec_parse@bb-oversize:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@gen9_exec_parse@bb-oversize.html>
> >         (i915#2527
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>
> >         / i915#2856
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
> >  *
> > 
> >     igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html>
> >         (i915#14073
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073>)
> >         +7 other tests skip
> >  *
> > 
> >     igt@i915_drm_fdinfo@virtual-busy-hang-all:
> > 
> >       o shard-dg1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-16/igt@i915_drm_fdinfo@virtual-busy-hang-all.html>
> >         (i915#14118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118>)
> >  *
> > 
> >     igt@i915_module_load@reload-no-display:
> > 
> >       o shard-tglu-1: NOTRUN -> DMESG-WARN
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@i915_module_load@reload-no-display.html>
> >         (i915#13029
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029>
> >         / i915#14545
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545>)
> >  *
> > 
> >     igt@i915_pm_rpm@system-suspend:
> > 
> >       o shard-glk: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk6/igt@i915_pm_rpm@system-suspend.html>
> >         (i915#13356
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
> >  *
> > 
> >     igt@i915_pm_rpm@system-suspend-execbuf:
> > 
> >       o shard-rkl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html>
> >         -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@i915_pm_rpm@system-suspend-execbuf.html>
> >         (i915#13356
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
> >         +1 other test incomplete
> >  *
> > 
> >     igt@i915_selftest@live@workarounds:
> > 
> >       o shard-mtlp: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-mtlp-2/igt@i915_selftest@live@workarounds.html>
> >         -> DMESG-FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-mtlp-2/igt@i915_selftest@live@workarounds.html>
> >         (i915#12061
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061>)
> >         +1 other test dmesg-fail
> >  *
> > 
> >     igt@kms_addfb_basic@basic-y-tiled-legacy:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
> >         (i915#4215
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215>
> >         / i915#5190
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
> >  *
> > 
> >     igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html>
> >         (i915#12454
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454>
> >         / i915#12712
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712>)
> >  *
> > 
> >     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html>
> >         (i915#1769
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >  *
> > 
> >     igt@kms_big_fb@4-tiled-8bpp-rotate-180:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html>
> >         (i915#5286
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
> >         (i915#5286
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> > 
> >       o shard-mtlp: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
> >         -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
> >         (i915#5138
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138>)
> >  *
> > 
> >     igt@kms_big_fb@linear-8bpp-rotate-270:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html>
> >         (i915#3638
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html>
> >         (i915#4538
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
> >         / i915#5190
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
> > 
> >       o shard-dg1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html>
> >         (i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +159 other tests skip
> >  *
> > 
> >     igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3.html>
> >         (i915#10307
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +109 other tests skip
> >  *
> > 
> >     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html>
> >         (i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +89 other tests skip
> >  *
> > 
> >     igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html>
> >         (i915#12313
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html>
> >         (i915#12313
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
> >  *
> > 
> >     igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html>
> >         (i915#10307
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
> >         / i915#10434
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
> > 
> >       o shard-rkl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html>
> >         -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html>
> >         (i915#12796
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796>)
> >  *
> > 
> >     igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:
> > 
> >       o shard-rkl: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html>
> >         (i915#12796
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796>)
> >  *
> > 
> >     igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
> > 
> >       o shard-glk: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk3/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html>
> >         (i915#12796
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796>
> >         / i915#14694
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694>)
> >         +1 other test incomplete
> >  *
> > 
> >     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html>
> >         (i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +29 other tests skip
> >  *
> > 
> >     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-3.html>
> >         (i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +39 other tests skip
> >  *
> > 
> >     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html>
> >         (i915#14098
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +47 other tests skip
> >  *
> > 
> >     igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html>
> >         (i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +29 other tests skip
> >  *
> > 
> >     igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
> > 
> >       o shard-glk10: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk10/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html>
> >         +107 other tests skip
> >  *
> > 
> >     igt@kms_cdclk@mode-transition:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_cdclk@mode-transition.html>
> >         (i915#3742
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
> >  *
> > 
> >     igt@kms_chamelium_edid@dp-edid-read:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_chamelium_edid@dp-edid-read.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_chamelium_frames@dp-crc-single:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         +4 other tests skip
> >  *
> > 
> >     igt@kms_chamelium_frames@dp-frame-dump:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_chamelium_hpd@hdmi-hpd-fast:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_chamelium_hpd@hdmi-hpd-fast.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_content_protection@atomic:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_content_protection@atomic.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7116
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_content_protection@atomic.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >  *
> > 
> >     igt@kms_content_protection@legacy@pipe-a-dp-3:
> > 
> >       o shard-dg2: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html>
> >         (i915#7173
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-offscreen-512x170:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html>
> >         (i915#13049
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
> > 
> >       o shard-rkl: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html>
> >         (i915#13566
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
> >         +2 other tests fail
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-sliding-32x10:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-32x10.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +1 other test skip
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-sliding-512x170:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html>
> >         (i915#13049
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-suspend:
> > 
> >       o shard-glk10: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html>
> >         (i915#12358
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358>
> >         / i915#14152
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152>
> >         / i915#7882
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882>)
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
> > 
> >       o shard-glk10: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html>
> >         (i915#12358
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358>
> >         / i915#14152
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152>)
> >  *
> > 
> >     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html>
> >         (i915#13046
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046>
> >         / i915#5354
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
> >  *
> > 
> >     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
> >         (i915#4103
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
> >  *
> > 
> >     igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html>
> >         +8 other tests skip
> >  *
> > 
> >     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html>
> >         (i915#3804
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
> >  *
> > 
> >     igt@kms_dp_aux_dev:
> > 
> >       o shard-dg2: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-11/igt@kms_dp_aux_dev.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-8/igt@kms_dp_aux_dev.html>
> >         (i915#1257
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_dp_aux_dev.html>
> >         (i915#1257
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_dp_aux_dev.html>
> >         (i915#1257
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
> >  *
> > 
> >     igt@kms_dp_link_training@non-uhbr-mst:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html>
> >         (i915#13749
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html>
> >         (i915#13749
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
> >  *
> > 
> >     igt@kms_fb_coherency@memset-crc:
> > 
> >       o shard-dg2: NOTRUN -> CRASH
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_fb_coherency@memset-crc.html>
> >         (i915#15351
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15351>)
> >         +1 other test crash
> >  *
> > 
> >     igt@kms_flip@2x-blocking-absolute-wf_vblank:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_flip@2x-blocking-absolute-wf_vblank.html>
> >         (i915#3637
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>
> >         / i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_flip@2x-busy-flip:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_flip@2x-busy-flip.html>
> >         (i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >  *
> > 
> >     igt@kms_flip@2x-flip-vs-dpms:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html>
> >         (i915#3637
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>
> >         / i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
> > 
> >       o shard-dg1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-16/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html>
> >         (i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >  *
> > 
> >     igt@kms_flip@2x-wf_vblank-ts-check:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_flip@2x-wf_vblank-ts-check.html>
> >         (i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >  *
> > 
> >     igt@kms_flip@dpms-vs-vblank-race:
> > 
> >       o shard-rkl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-4/igt@kms_flip@dpms-vs-vblank-race.html>
> >         -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_flip@dpms-vs-vblank-race.html>
> >         (i915#10826
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826>)
> >  *
> > 
> >     igt@kms_flip@dpms-vs-vblank-race@a-hdmi-a1:
> > 
> >       o shard-rkl: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_flip@dpms-vs-vblank-race@a-hdmi-a1.html>
> >         (i915#10826
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826>)
> >  *
> > 
> >     igt@kms_flip@flip-vs-suspend-interruptible:
> > 
> >       o shard-glk: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html>
> >         (i915#12314
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314>
> >         / i915#12745
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745>
> >         / i915#4839
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839>
> >         / i915#6113
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113>)
> >  *
> > 
> >     igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
> > 
> >       o shard-glk: NOTRUN -> INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html>
> >         (i915#12314
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314>
> >         / i915#12745
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745>)
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html>
> >         (i915#2587
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
> >         / i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html>
> >         (i915#2587
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
> >         / i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
> >         / i915#5190
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html>
> >         (i915#8708
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
> >         +5 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html>
> >         +27 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html>
> >         (i915#5354
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
> >         +7 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html>
> >         (i915#1825
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
> >         +3 other tests skip
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html>
> >         +27 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-blt.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3023
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >         +10 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >         +12 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
> > 
> >       o shard-dg1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html>
> >         (i915#8708
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_hdr@bpc-switch:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_hdr@bpc-switch.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
> >         / i915#8228
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
> >  *
> > 
> >     igt@kms_hdr@static-toggle:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_hdr@static-toggle.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
> >         / i915#8228
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
> >  *
> > 
> >     igt@kms_hdr@static-toggle-dpms:
> > 
> >       o shard-dg2: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-11/igt@kms_hdr@static-toggle-dpms.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-8/igt@kms_hdr@static-toggle-dpms.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
> >         / i915#8228
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
> >  *
> > 
> >     igt@kms_joiner@basic-force-ultra-joiner:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_joiner@basic-force-ultra-joiner.html>
> >         (i915#15458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>)
> >  *
> > 
> >     igt@kms_joiner@basic-max-non-joiner:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_joiner@basic-max-non-joiner.html>
> >         (i915#13688
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688>)
> >  *
> > 
> >     igt@kms_panel_fitting@atomic-fastset:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_panel_fitting@atomic-fastset.html>
> >         (i915#6301
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
> >  *
> > 
> >     igt@kms_plane_alpha_blend@constant-alpha-mid:
> > 
> >       o shard-mtlp: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-mtlp-2/igt@kms_plane_alpha_blend@constant-alpha-mid.html>
> >         -> ABORT
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-mtlp-8/igt@kms_plane_alpha_blend@constant-alpha-mid.html>
> >         (i915#13562
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562>)
> >  *
> > 
> >     igt@kms_plane_multiple@2x-tiling-4:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_plane_multiple@2x-tiling-4.html>
> >         (i915#13958
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
> >  *
> > 
> >     igt@kms_plane_multiple@2x-tiling-y:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-y.html>
> >         (i915#13958
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html>
> >         (i915#13958
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
> >  *
> > 
> >     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html>
> >         (i915#15329
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >  *
> > 
> >     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html>
> >         (i915#15329
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329>)
> >         +8 other tests skip
> >  *
> > 
> >     igt@kms_pm_backlight@brightness-with-dpms:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_pm_backlight@brightness-with-dpms.html>
> >         (i915#12343
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343>)
> >  *
> > 
> >     igt@kms_pm_dc@dc3co-vpb-simulation:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_pm_dc@dc3co-vpb-simulation.html>
> >         (i915#9685
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
> >  *
> > 
> >     igt@kms_pm_dc@dc6-dpms:
> > 
> >       o shard-rkl: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html>
> >         (i915#9295
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295>)
> >       o shard-tglu-1: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html>
> >         (i915#9295
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295>)
> >  *
> > 
> >     igt@kms_pm_lpsp@screens-disabled:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_pm_lpsp@screens-disabled.html>
> >         (i915#8430
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430>)
> >  *
> > 
> >     igt@kms_pm_rpm@modeset-lpsp-stress:
> > 
> >       o shard-dg2: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html>
> >         (i915#15073
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
> >         +1 other test skip
> >       o shard-rkl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress.html>
> >         (i915#15073
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
> > 
> >       o shard-glk: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk9/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         +4 other tests skip
> >  *
> > 
> >     igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_psr2_sf@pr-cursor-plane-update-sf:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         +4 other tests skip
> >  *
> > 
> >     igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
> > 
> >       o shard-glk10: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_psr2_su@page_flip-nv12:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_psr2_su@page_flip-nv12.html>
> >         (i915#9683
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_psr2_su@page_flip-nv12.html>
> >         (i915#9683
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
> >  *
> > 
> >     igt@kms_psr@fbc-psr-sprite-mmap-gtt:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_psr@fbc-psr-sprite-mmap-gtt.html>
> >         (i915#1072
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
> >         / i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_psr@fbc-psr2-primary-mmap-gtt:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html>
> >         (i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         +8 other tests skip
> >  *
> > 
> >     igt@kms_psr@psr2-cursor-mmap-gtt:
> > 
> >       o shard-rkl: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_psr@psr2-cursor-mmap-gtt.html>
> >         (i915#1072
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
> >         / i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         +5 other tests skip
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html>
> >         (i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         +9 other tests skip
> >  *
> > 
> >     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> > 
> >       o shard-tglu-1: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html>
> >         (i915#9685
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
> >  *
> > 
> >     igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html>
> >         (i915#5289
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
> >  *
> > 
> >     igt@kms_scaling_modes@scaling-mode-none:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_scaling_modes@scaling-mode-none.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_vblank@ts-continuation-dpms-suspend:
> > 
> >       o shard-rkl: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-7/igt@kms_vblank@ts-continuation-dpms-suspend.html>
> >         -> ABORT
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend.html>
> >         (i915#15132
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132>)
> >         +1 other test abort
> >  *
> > 
> >     igt@kms_vrr@flip-suspend:
> > 
> >       o shard-tglu: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@kms_vrr@flip-suspend.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >  *
> > 
> >     igt@kms_vrr@seamless-rr-switch-drrs:
> > 
> >       o shard-dg2: NOTRUN -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_vrr@seamless-rr-switch-drrs.html>
> >         (i915#9906
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
> >  *
> > 
> >     igt@perf_pmu@busy-double-start@vecs0:
> > 
> >       o shard-mtlp: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-mtlp-6/igt@perf_pmu@busy-double-start@vecs0.html>
> >         -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-mtlp-7/igt@perf_pmu@busy-double-start@vecs0.html>
> >         (i915#4349
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>)
> >  *
> > 
> >     igt@perf_pmu@busy-double-start@vecs1:
> > 
> >       o shard-dg2: PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html>
> >         -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html>
> >         (i915#4349
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>)
> >         +3 other tests fail
> >  *
> > 
> >     igt@perf_pmu@module-unload:
> > 
> >       o shard-tglu-1: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@perf_pmu@module-unload.html>
> >         (i915#14433
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433>)
> >       o shard-rkl: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@perf_pmu@module-unload.html>
> >         (i915#14433
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433>)
> >  *
> > 
> >     igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-5:
> > 
> >       o shard-tglu-1: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-5.html>
> >         (i915#12910
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910>)
> >         +9 other tests fail
> >  *
> > 
> >     igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-random:
> > 
> >       o shard-tglu: NOTRUN -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-10/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-random.html>
> >         (i915#12910
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910>)
> >         +18 other tests fail
> > 
> > 
> >         Possible fixes
> > 
> >  *
> > 
> >     igt@gem_exec_schedule@semaphore-noskip:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@gem_exec_schedule@semaphore-noskip.html>
> >         (i915#2575
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_exec_schedule@semaphore-noskip.html>
> >         +2 other tests pass
> >  *
> > 
> >     igt@gem_lmem_swapping@verify:
> > 
> >       o shard-dg2: WARN
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@gem_lmem_swapping@verify.html>
> >         (i915#15490
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15490>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_lmem_swapping@verify.html>
> >  *
> > 
> >     igt@gem_lmem_swapping@verify@lmem0:
> > 
> >       o shard-dg2: CRASH
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@gem_lmem_swapping@verify@lmem0.html>
> >         (i915#15490
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15490>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_lmem_swapping@verify@lmem0.html>
> >  *
> > 
> >     igt@i915_selftest@live:
> > 
> >       o shard-dg1: DMESG-FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@i915_selftest@live.html>
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@i915_selftest@live.html>
> >  *
> > 
> >     igt@i915_selftest@live@gem_contexts:
> > 
> >       o shard-dg1: DMESG-FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@i915_selftest@live@gem_contexts.html>
> >         (i915#15433
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@i915_selftest@live@gem_contexts.html>
> >  *
> > 
> >     igt@i915_selftest@live@workarounds:
> > 
> >       o shard-dg2: DMESG-FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@i915_selftest@live@workarounds.html>
> >         (i915#12061
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@i915_selftest@live@workarounds.html>
> >         +1 other test pass
> >  *
> > 
> >     igt@i915_suspend@debugfs-reader:
> > 
> >       o shard-rkl: INCOMPLETE
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@i915_suspend@debugfs-reader.html>
> >         (i915#4817
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-8/igt@i915_suspend@debugfs-reader.html>
> >  *
> > 
> >     igt@kms_addfb_basic@no-handle:
> > 
> >       o shard-dg1: DMESG-WARN
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@kms_addfb_basic@no-handle.html>
> >         (i915#4391
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391>
> >         / i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@kms_addfb_basic@no-handle.html>
> >  *
> > 
> >     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> > 
> >       o shard-mtlp: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
> >         (i915#5138
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
> >  *
> > 
> >     igt@kms_draw_crc@draw-method-pwrite:
> > 
> >       o shard-dg1: DMESG-WARN
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@kms_draw_crc@draw-method-pwrite.html>
> >         (i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@kms_draw_crc@draw-method-pwrite.html>
> >         +4 other tests pass
> >  *
> > 
> >     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
> > 
> >       o shard-glk: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
> >         (i915#13027
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
> >         +1 other test pass
> >  *
> > 
> >     igt@kms_flip@flip-vs-suspend:
> > 
> >       o shard-rkl: ABORT
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-1/igt@kms_flip@flip-vs-suspend.html>
> >         (i915#15132
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-7/igt@kms_flip@flip-vs-suspend.html>
> >         +1 other test pass
> >  *
> > 
> >     igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1:
> > 
> >       o shard-snb: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-snb5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html>
> >         (i915#10826
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-snb4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-vga1.html>
> >         +1 other test pass
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html>
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html>
> >         +7 other tests pass
> >  *
> > 
> >     igt@kms_hdr@bpc-switch-suspend:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_hdr@bpc-switch-suspend.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
> >         / i915#8228
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html>
> >  *
> > 
> >     igt@kms_hdr@static-toggle-suspend:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_hdr@static-toggle-suspend.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
> >         / i915#8228
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_hdr@static-toggle-suspend.html>
> >  *
> > 
> >     igt@kms_plane_scaling@intel-max-src-size:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_plane_scaling@intel-max-src-size.html>
> >         (i915#6953
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>
> >         / i915#9423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html>
> >  *
> > 
> >     igt@kms_pm_dc@dc5-dpms-negative:
> > 
> >       o shard-glk: DMESG-WARN
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-glk6/igt@kms_pm_dc@dc5-dpms-negative.html>
> >         (i915#118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-glk2/igt@kms_pm_dc@dc5-dpms-negative.html>
> >  *
> > 
> >     igt@kms_pm_rpm@dpms-lpsp:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15073
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html>
> >  *
> > 
> >     igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html>
> >         (i915#15073
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html>
> >  *
> > 
> >     igt@kms_pm_rpm@modeset-lpsp:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp.html>
> >         (i915#15073
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp.html>
> >         +1 other test pass
> >  *
> > 
> >     igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
> >         (i915#15073
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
> >         +1 other test pass
> >  *
> > 
> >     igt@perf_pmu@busy-double-start@ccs0:
> > 
> >       o shard-dg2: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-11/igt@perf_pmu@busy-double-start@ccs0.html>
> >         (i915#4349
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-8/igt@perf_pmu@busy-double-start@ccs0.html>
> >  *
> > 
> >     igt@perf_pmu@busy-double-start@vcs1:
> > 
> >       o shard-mtlp: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-mtlp-6/igt@perf_pmu@busy-double-start@vcs1.html>
> >         (i915#4349
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>)
> >         -> PASS
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-mtlp-7/igt@perf_pmu@busy-double-start@vcs1.html>
> > 
> > 
> >         Warnings
> > 
> >  *
> > 
> >     igt@api_intel_bb@object-reloc-keep-cache:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#8411
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html>
> >         (i915#8411
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gem_basic@multigpu-create-close:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gem_basic@multigpu-create-close.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#7697
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gem_basic@multigpu-create-close.html>
> >         (i915#7697
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
> >  *
> > 
> >     igt@gem_ctx_sseu@invalid-args:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html>
> >         (i915#280
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#280
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
> >  *
> > 
> >     igt@gem_exec_balancer@parallel-contexts:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@gem_exec_balancer@parallel-contexts.html>
> >         (i915#4525
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#4525
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
> >  *
> > 
> >     igt@gem_exec_reloc@basic-cpu-read-active:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@gem_exec_reloc@basic-cpu-read-active.html>
> >         (i915#2575
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_exec_reloc@basic-cpu-read-active.html>
> >         (i915#3281
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
> >  *
> > 
> >     igt@gem_exec_reloc@basic-write-gtt-noreloc:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@gem_exec_reloc@basic-write-gtt-noreloc.html>
> >         (i915#3281
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@gem_exec_reloc@basic-write-gtt-noreloc.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3281
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
> >         +5 other tests skip
> >  *
> > 
> >     igt@gem_exec_reloc@basic-write-read:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3281
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html>
> >         (i915#3281
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
> >         +5 other tests skip
> >  *
> > 
> >     igt@gem_exec_schedule@semaphore-power:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#7276
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html>
> >         (i915#7276
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276>)
> >  *
> > 
> >     igt@gem_huc_copy@huc-copy:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gem_huc_copy@huc-copy.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#2190
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gem_huc_copy@huc-copy.html>
> >         (i915#2190
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190>)
> >  *
> > 
> >     igt@gem_lmem_swapping@basic:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gem_lmem_swapping@basic.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gem_lmem_swapping@basic.html>
> >         (i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >  *
> > 
> >     igt@gem_lmem_swapping@parallel-multi:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html>
> >         (i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#4613
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
> >  *
> > 
> >     igt@gem_madvise@dontneed-before-pwrite:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gem_madvise@dontneed-before-pwrite.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3282
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gem_madvise@dontneed-before-pwrite.html>
> >         (i915#3282
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@gem_partial_pwrite_pread@writes-after-reads:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html>
> >         (i915#3282
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3282
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
> >  *
> > 
> >     igt@gem_pxp@hw-rejects-pxp-buffer:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html>
> >         (i915#13717
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html>
> >         (i915#13717
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gem_pxp@reject-modify-context-protection-off-1:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@gem_pxp@reject-modify-context-protection-off-1.html>
> >         (i915#2575
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gem_pxp@reject-modify-context-protection-off-1.html>
> >         (i915#4270
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
> >  *
> > 
> >     igt@gem_userptr_blits@unsync-unmap-cycles:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3297
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-cycles.html>
> >         (i915#3297
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@gen9_exec_parse@bb-start-out:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html>
> >         (i915#2527
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#2527
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
> >         +1 other test skip
> >  *
> > 
> >     igt@gen9_exec_parse@unaligned-access:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@gen9_exec_parse@unaligned-access.html>
> >         (i915#2575
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@gen9_exec_parse@unaligned-access.html>
> >         (i915#2856
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
> >  *
> > 
> >     igt@gen9_exec_parse@unaligned-jump:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@gen9_exec_parse@unaligned-jump.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#2527
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@gen9_exec_parse@unaligned-jump.html>
> >         (i915#2527
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
> >         +1 other test skip
> >  *
> > 
> >     igt@i915_pm_freq_api@freq-suspend:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#8399
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html>
> >         (i915#8399
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
> >         +1 other test skip
> >  *
> > 
> >     igt@i915_power@sanity:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@i915_power@sanity.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#7984
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@i915_power@sanity.html>
> >         (i915#7984
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984>)
> >  *
> > 
> >     igt@kms_big_fb@4-tiled-16bpp-rotate-270:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#5286
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html>
> >         (i915#5286
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
> >         (i915#5286
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#5286
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_big_fb@linear-64bpp-rotate-90:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html>
> >         (i915#3638
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-90.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3638
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
> >  *
> > 
> >     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
> >         (i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>
> >         / i915#4538
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
> >         (i915#4538
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>)
> >  *
> > 
> >     igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html>
> >         (i915#14098
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html>
> >         (i915#14098
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +5 other tests skip
> >  *
> > 
> >     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html>
> >         (i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +9 other tests skip
> >  *
> > 
> >     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html>
> >         (i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-13/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3.html>
> >         (i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-19/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html>
> >         (i915#12805
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-17/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html>
> >         (i915#12805
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805>
> >         / i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >  *
> > 
> >     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html>
> >         (i915#12313
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html>
> >         (i915#12313
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
> >  *
> > 
> >     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html>
> >         (i915#14098
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html>
> >         (i915#14098
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#6095
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
> >         +9 other tests skip
> >  *
> > 
> >     igt@kms_cdclk@mode-transition-all-outputs:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_cdclk@mode-transition-all-outputs.html>
> >         (i915#3742
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3742
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
> >  *
> > 
> >     igt@kms_chamelium_color@ctm-red-to-blue:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_chamelium_color@ctm-red-to-blue.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_chamelium_color@ctm-red-to-blue.html>
> >         +10 other tests skip
> >  *
> > 
> >     igt@kms_chamelium_frames@hdmi-crc-fast:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-fast.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-fast.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_chamelium_hpd@dp-hpd-storm:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@kms_chamelium_hpd@dp-hpd-storm.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-storm.html>
> >         (i915#11151
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#7828
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_content_protection@dp-mst-lic-type-0:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-0.html>
> >         (i915#3116
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3116
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
> >  *
> > 
> >     igt@kms_content_protection@legacy:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_content_protection@legacy.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >         -> FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_content_protection@legacy.html>
> >         (i915#7173
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
> >  *
> > 
> >     igt@kms_content_protection@lic-type-0:
> > 
> >       o shard-dg2: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-11/igt@kms_content_protection@lic-type-0.html>
> >         (i915#7173
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-8/igt@kms_content_protection@lic-type-0.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-4/igt@kms_content_protection@lic-type-0.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_content_protection@lic-type-0.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >  *
> > 
> >     igt@kms_content_protection@srm:
> > 
> >       o shard-dg2: FAIL
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-11/igt@kms_content_protection@srm.html>
> >         (i915#7173
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-8/igt@kms_content_protection@srm.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>)
> >  *
> > 
> >     igt@kms_content_protection@type1:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_content_protection@type1.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_content_protection@type1.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
> >         / i915#7162
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_content_protection@type1.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_content_protection@type1.html>
> >         (i915#6944
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
> >         / i915#7118
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
> >         / i915#9424
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-onscreen-512x512:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
> >         (i915#13049
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
> >         (i915#13049
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
> >         (i915#13049
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
> >         (i915#13049
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
> >  *
> > 
> >     igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html>
> >         (i915#13046
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046>
> >         / i915#5354
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
> >  *
> > 
> >     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html>
> >         (i915#4103
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#4103
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
> >  *
> > 
> >     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
> >         (i915#4103
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>
> >         / i915#4213
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213>)
> >  *
> > 
> >     igt@kms_dp_link_training@uhbr-sst:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html>
> >         (i915#13748
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_dp_link_training@uhbr-sst.html>
> >         (i915#13748
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748>)
> >  *
> > 
> >     igt@kms_dsc@dsc-fractional-bpp:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3840
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_dsc@dsc-fractional-bpp.html>
> >         (i915#3840
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
> >  *
> > 
> >     igt@kms_feature_discovery@chamelium:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_feature_discovery@chamelium.html>
> >         (i915#4854
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_feature_discovery@chamelium.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#4854
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854>)
> >  *
> > 
> >     igt@kms_feature_discovery@psr1:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_feature_discovery@psr1.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#658
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_feature_discovery@psr1.html>
> >         (i915#658
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658>)
> >  *
> > 
> >     igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html>
> >         (i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >  *
> > 
> >     igt@kms_flip@2x-flip-vs-panning:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_flip@2x-flip-vs-panning.html>
> >         (i915#9934
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >  *
> > 
> >     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html>
> >         (i915#2672
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html>
> >         (i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html>
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-cpu:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-cpu.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-cpu.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html>
> >         (i915#15104
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html>
> >         (i915#15104
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104>
> >         / i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>
> >         / i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3023
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3023
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
> >         +9 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#1825
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html>
> >         (i915#1825
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
> >         +19 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html>
> >         (i915#1825
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#1825
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
> >         +7 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>
> >         / i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html>
> >         (i915#10055
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html>
> >         (i915#10433
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
> >         / i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html>
> >         (i915#10433
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
> >         / i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html>
> >         (i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3023
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3023
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
> >         +5 other tests skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html>
> >         (i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html>
> >         (i915#10433
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
> >         / i915#15102
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>
> >         / i915#3458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
> >  *
> > 
> >     igt@kms_hdr@brightness-with-hdr:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html>
> >         (i915#12713
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html>
> >         (i915#13331
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331>)
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html>
> >         (i915#13331
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_hdr@brightness-with-hdr.html>
> >         (i915#12713
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
> >       o shard-tglu: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html>
> >         (i915#1187
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187>
> >         / i915#12713
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-tglu-9/igt@kms_hdr@brightness-with-hdr.html>
> >         (i915#12713
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
> >  *
> > 
> >     igt@kms_joiner@basic-ultra-joiner:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_joiner@basic-ultra-joiner.html>
> >         (i915#15458
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>)
> >  *
> > 
> >     igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html>
> >         (i915#13522
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html>
> >         (i915#13522
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >  *
> > 
> >     igt@kms_panel_fitting@legacy:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_panel_fitting@legacy.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#6301
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_panel_fitting@legacy.html>
> >         (i915#6301
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
> >  *
> > 
> >     igt@kms_pipe_stress@stress-xrgb8888-yftiled:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html>
> >         (i915#14712
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#14712
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712>)
> >  *
> > 
> >     igt@kms_plane_lowres@tiling-4:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_plane_lowres@tiling-4.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_plane_lowres@tiling-4.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >  *
> > 
> >     igt@kms_plane_lowres@tiling-yf:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_plane_lowres@tiling-yf.html>
> >         (i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_plane_multiple@2x-tiling-yf:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html>
> >         (i915#13958
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-yf.html>
> >         (i915#13958
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
> >  *
> > 
> >     igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html>
> >         (i915#15329
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15329
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329>)
> >         +3 other tests skip
> >  *
> > 
> >     igt@kms_pm_backlight@fade-with-suspend:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_pm_backlight@fade-with-suspend.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_pm_backlight@fade-with-suspend.html>
> >         (i915#5354
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_pm_rpm@pm-caching:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-13/igt@kms_pm_rpm@pm-caching.html>
> >         (i915#4077
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-17/igt@kms_pm_rpm@pm-caching.html>
> >         (i915#4077
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>
> >         / i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >  *
> > 
> >     igt@kms_prime@basic-crc-hybrid:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-5/igt@kms_prime@basic-crc-hybrid.html>
> >         (i915#6524
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#6524
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
> >  *
> > 
> >     igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-18/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>
> >         / i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >  *
> > 
> >     igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         +2 other tests skip
> >  *
> > 
> >     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html>
> >         (i915#11520
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
> >         +1 other test skip
> >  *
> > 
> >     igt@kms_psr@fbc-pr-cursor-blt:
> > 
> >       o shard-dg2: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg2-6/igt@kms_psr@fbc-pr-cursor-blt.html>
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg2-4/igt@kms_psr@fbc-pr-cursor-blt.html>
> >         (i915#1072
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
> >         / i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >  *
> > 
> >     igt@kms_psr@fbc-pr-cursor-plane-onoff:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_psr@fbc-pr-cursor-plane-onoff.html>
> >         (i915#1072
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_psr@fbc-pr-cursor-plane-onoff.html>
> >         (i915#1072
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
> >         / i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         +9 other tests skip
> >  *
> > 
> >     igt@kms_psr@psr2-primary-mmap-gtt:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-3/igt@kms_psr@psr2-primary-mmap-gtt.html>
> >         (i915#1072
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
> >         / i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-gtt.html>
> >         (i915#1072
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
> >         / i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#9732
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
> >         +7 other tests skip
> >  *
> > 
> >     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
> > 
> >       o shard-dg1: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-dg1-13/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html>
> >         (i915#5289
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-dg1-17/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html>
> >         (i915#4423
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>
> >         / i915#5289
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
> >  *
> > 
> >     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#5289
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html>
> >         (i915#5289
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
> >  *
> > 
> >     igt@kms_vrr@flip-dpms:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_vrr@flip-dpms.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#15243
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_vrr@flip-dpms.html>
> >         (i915#15243
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243>
> >         / i915#3555
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
> >  *
> > 
> >     igt@kms_vrr@seamless-rr-switch-virtual:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#9906
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-virtual.html>
> >         (i915#9906
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
> >  *
> > 
> >     igt@perf@per-context-mode-unprivileged:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#2435
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@perf@per-context-mode-unprivileged.html>
> >         (i915#2435
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435>)
> >  *
> > 
> >     igt@perf_pmu@rc6-all-gts:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#8516
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html>
> >         (i915#8516
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516>)
> >  *
> > 
> >     igt@prime_vgem@fence-write-hang:
> > 
> >       o shard-rkl: SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17733/shard-rkl-6/igt@prime_vgem@fence-write-hang.html>
> >         (i915#14544
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>
> >         / i915#3708
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
> >         -> SKIP
> >         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158666v4/shard-rkl-2/igt@prime_vgem@fence-write-hang.html>
> >         (i915#3708
> >         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
> > 
> > 
> >     Build changes
> > 
> >   * Linux: CI_DRM_17733 -> Patchwork_158666v4
> > 
> > CI-20190529: 20190529
> > CI_DRM_17733: cab246648fd89efbe8d20ed4c86e7fcebd7606da @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > IGT_8674: f38f4d8e9c65aff45ac807e646d06e38bc3193a2 @
> > https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> > Patchwork_158666v4: cab246648fd89efbe8d20ed4c86e7fcebd7606da @
> > git://anongit.freedesktop.org/gfx-ci/linux
> > piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> > git://anongit.freedesktop.org/piglit
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
