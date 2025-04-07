Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0183BA7DF8C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 15:39:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BAD610E468;
	Mon,  7 Apr 2025 13:39:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kt68X3Cg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC0910E468;
 Mon,  7 Apr 2025 13:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744033153; x=1775569153;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=jc+ChvJ3Ypu9ADGlzH8Tr5H2PuM3radtsAIdZRejM2A=;
 b=kt68X3CggvEfntuPuoc3MEnLyUknkXqDQEQF8O+jfZ3tm4H9stkf/O8+
 DqWzThojr1srucLAZqIlsYiAHdnIfmWU/M9d+5KhNc+J3aM3PQE6EplXr
 cPpTptVaJmUzYV3Aqjo4m/5ElYMZrcseKWEuMLxsJkvy/OJeOvrxn6YmW
 aiRkPhd3b+qXPuoQWvLfPXCo6r4DQ9agrFFRGdn/lDIXba/y/TV8kfuTh
 7jHURUlQHHXYQlpVP+1059b2aiEt7AOWmdZ+e61ab5gdmo3Cd5mHHL5Se
 OJViiK1mKcrrvRDOr7b8v9iZx7FJKRvMn7KjGIFiSalaUxISq96LQ2Q+3 A==;
X-CSE-ConnectionGUID: nzWhwa4VSCOq7Opm6TMGLg==
X-CSE-MsgGUID: HKcOlRaPQeiw0Y0+JhVmLA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45309034"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45309034"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 06:39:12 -0700
X-CSE-ConnectionGUID: vDmoiVAFRY2DjJl9iq5gsg==
X-CSE-MsgGUID: bPwNJKIHQUuwLuLWjHLKFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="132933799"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 06:39:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 06:39:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 06:39:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 06:39:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OoFv8QM9gEo1ml/BZn7Hu0IG5fSnRmvH4UwQed1LxBctLWBiD20QiC0GHGaP3gyC2lHvC0Vwn5mEw39kgSa0zBPI3VL2kiCjD8EbArWIKckWUz/WhqDj8Ky8bwdecaCjf6U4hv908OHtNDAz5mUl4ap8wwCNRcE9O3H1eXfbSaWcqzC3tPm43RvhrOMBCRc2FIDvs2gJi52yzkvFkWgQ4ZK0bo4EpZMejzg8btw1eQNKezH3aI2cYGkGm4IHXlK3Pe2E/XIvmbw278BNJixMyEdDjnZwrA3nL2aBcUqWOoXzvkkmH6s+aPjbcOq5YJ42McjIGkVZyexVfSDlGuMaZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AbVfRIiKIOA7TLYvRwYDUE9U4ZFmAkvCt7Q0adsSKco=;
 b=HWcbsriafly8Erb3fwp8FRgC6BCkjoU+zMQIDMNzCmwwF4AHj2oM8ZWjIJ/AXWEfVeN6n+liIqK7/Gjh/DbKcBlHvdR8xfijvaJUQMJTgwMMhX8KFQDi661jCezhJKhjrPjYAnEN8fc9B1isNizYSrRisIMOdR0l1KGKijXz7v8th+JG6itnaiqkfMeKda/GbQWO6lUAt+tHwW4kyVJqjpsby14VklS5ouwCzXXyenInmGe/L9Ka8r/K/KjeX8LIeb23Ly+P9S486DUkQB/DyYntiet8w9h3RKJ0oqxCEkLpeG3K8AtHxE9y0FyemFxlHvFujzrBleOscaDvIAU+rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL3PR11MB6532.namprd11.prod.outlook.com (2603:10b6:208:38f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Mon, 7 Apr
 2025 13:39:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 13:39:05 +0000
Date: Mon, 7 Apr 2025 16:39:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 drm/i915/dp_mst: Clean up active stream count tracking
Message-ID: <Z_PVes5PV7uFwMDO@ideak-desk.fi.intel.com>
References: <20250404150310.1156696-1-imre.deak@intel.com>
 <174379416854.39422.4904550540965994947@e6b6f09ec485>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174379416854.39422.4904550540965994947@e6b6f09ec485>
X-ClientProxiedBy: DB9PR05CA0030.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL3PR11MB6532:EE_
X-MS-Office365-Filtering-Correlation-Id: fac8f7cc-60d1-4b2b-e13e-08dd75d9906e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GiNAK+iwjBRFOKYxquBLs5Ci7sWmss17Rf063esq9IAyoX8d4Tu8g+kI1joc?=
 =?us-ascii?Q?orOi5PryuiUp2VC28vemzPkN3jngOEXISzIvAQRmENxpg2YptZvtZVWKBPEt?=
 =?us-ascii?Q?NMchjqCvqD81yaHItQt8Arqcg0yekT4dXjq27oceEYFC2nuPIRSEYEHZNfl4?=
 =?us-ascii?Q?4i4hJ/0DnMLgOEOzUJOAWG+BSjsh47Wl30hCRk2Cxn30ahMFD+Kx1nyX1COj?=
 =?us-ascii?Q?3NMNvS3JcbqLi5PrulJAhZPOGpfBZ8u1u/kPjELHkIS6gOrjLaIHc2N+8w2l?=
 =?us-ascii?Q?SoCeDD6kUJH43zRKwizA6YqgHrx5zVpEuat4aixTsgBB2f/06VjxTiC4WhWA?=
 =?us-ascii?Q?yQ072Yu1OgZCbmYeZ4O0XOYnTvTWlt3s4Syw7vEpRljitFl8klS4O+AylNLo?=
 =?us-ascii?Q?T3nW2FvBVQIMV+KgplrfHxCCtY8tJFb8BhciUg7DYhigREBnkPYLQgMeQjKC?=
 =?us-ascii?Q?x2odZZs8G65E5VVZpCCxvBUNHMPzmQfkTxdiYMJRPUSfBc0knBWx46ylybde?=
 =?us-ascii?Q?GQRAyi3U2a1a22Bv7puh+e2zsziuMoyJNdyWcwhBpulhPDTrMt8WtEq0ZApd?=
 =?us-ascii?Q?OKfK+Fzadd4gHQPqNPzgZawUv3+NY0Q9zABd0JJ7vdeB6uitNtvsZ2mzyP4m?=
 =?us-ascii?Q?dGOIDZNkKXX+2wwMHHJdSTPvwHSED+3QibuzbUeSagiKK14wXiCtk0y6AFPn?=
 =?us-ascii?Q?mhBssk1J7Pgr3E7GUzjsRc0XTpZEzxFwZ9XLVP9rMrZz5dc+hlK8BYP0g9jU?=
 =?us-ascii?Q?rAV262TJrZIT6R+5mRASRUB+YG0jXrlpucyc9YtMZ9lUcyhlFwYw9j2QQCvG?=
 =?us-ascii?Q?Rj+29E0nIoIAzMTByLidBOEHvloVhOCFCdXQVscW/gHZwfqhsf076nbG/bEn?=
 =?us-ascii?Q?XkxortmQwex33otBO+RravW6g6PHNcN+KUUsQck2dCk3A7fU1RfpgPKW4Z4k?=
 =?us-ascii?Q?XqCqMBoTdxsT+0L0Irrt+Gq+wHhLIIqeMkYbGV3vcQxeP+FncQZ/eqFI2pSG?=
 =?us-ascii?Q?rrdJP5l6MvrpxuOlSrM9ukcGJyvTNGEndw2HVwhZ0Jff6h6r/T513O0agbuc?=
 =?us-ascii?Q?uDOYCgAhWf6vv1iQtQi8uw7+VWt0z4aaiEKO5glscZ4pX/tU/8mQ42myF7mh?=
 =?us-ascii?Q?2fW7Rux3t1ZBb3Im4vuY5FMVly5vNi+ysy4HolNFvwgj5XkQd6Y1SgIM3wxY?=
 =?us-ascii?Q?fPD1l4x7zTDPz/+2CF8zEpGjhsIeYPxfU7PCUEKN//7grzOyzX8/cjXB1XE6?=
 =?us-ascii?Q?Oku7tfy8WmoKotl8hOiK6yhjjdbvV3b/85MsVFDr417nmOLRgZxKXpVBVJ6w?=
 =?us-ascii?Q?p/HiwyhPNI4L99ojw+7Ox0c9Tf2S3fwKeVWNSc21nyuvCKUw4gYwwG3i2OEU?=
 =?us-ascii?Q?6siGxwE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hsKeAk0m8WZf0DRi+rcgS2/QvL7zd0yiZLyel4zhwHL01EAHJA1JgKeh9uuj?=
 =?us-ascii?Q?hYzjIOd4ifyIJgY+VzTws+JP6Meq9AeNbh8SSnLMgTZ31afoKtb5MDtqKiK7?=
 =?us-ascii?Q?S8GTbKcVqQ1I0Gco6ZH7EfOQs6o4tOTBrw+wkIARTgOjhEF51u/vF5qnvkWR?=
 =?us-ascii?Q?0FnClRKwPPoueaVjdnqc2/sBs86c9NXSGj1hC0U9Z1JGzmUMYMs15ZHj2MSN?=
 =?us-ascii?Q?oSP8WZY9UWEw7glsQaSeF1xTlL6Py1fbBrTJDe7ewkIJLKzH3UomKeHrpYIU?=
 =?us-ascii?Q?JMKaYwIKFexAlq7kPGefnKQrs9+gSG4mR80IqhCBv90JJpCPuYrLFqoGOQ4O?=
 =?us-ascii?Q?0Xb5kqXBYcw8tAMq+pxoiywlNHmq8ewIRg4oss4ZG1ErPe1SgNfyAGmG0Coo?=
 =?us-ascii?Q?TK9B/MAtWPaezM9M9iAWDyltlSNhLAW/kNZyjysbMtQ+74u1ir81VdXUQ9QF?=
 =?us-ascii?Q?31LMdI3n7nvTuBUFnsVg+CbAEsLBaZPNa/+WnJHGUWoonInTPKAzZn2t2n7p?=
 =?us-ascii?Q?PE9QeV8fBAiahbkR+C46vprGKHCNBvrYbakRZGhJ5qZHdBcVQspUcb/duNCk?=
 =?us-ascii?Q?RhMcb+52O2lfGtgewCInWfsF/Kk4SFJ4Zwv40h86BVttHrYURRhL/Hrc3iF7?=
 =?us-ascii?Q?DY0aR9bIdoVjAIsPC1WITx4gUw+8OUTFTzlGSzrv9oqMSgs+sY9Zn28F3a8+?=
 =?us-ascii?Q?JHd/qxqopKEgks3zOnjWhcLSaixhpdSYI+7i96PSi4EZJpoXIiiBjSXs95AD?=
 =?us-ascii?Q?5iM8lnBXYx/aM4Qj1RaYICcFIKaJFnDddpAn8eq7kGvsPGhxF++9M6If+afj?=
 =?us-ascii?Q?mS8Ur/6o+sWmN1go+k7aiyQT0MwqE4rTI/8v6rgApYX5Vxgz5lt1UL4j6lZA?=
 =?us-ascii?Q?q4BNNn8RWEXy+ZJZtkWZVf78YUZqXRScStWTYz9c5uq+BuePyXH1WlQ1lrPs?=
 =?us-ascii?Q?9JNoSb+s4B3NAKeys9uxbVAMr7QfDyCLjgeo81pmsrzaylRocOaB1KNTdFbm?=
 =?us-ascii?Q?u3A9KX4Vh2cJ5PBlgvSmsKbnK8RLxJvfOFgcndRKb8NCpGOEMpHMacvOtIob?=
 =?us-ascii?Q?R1Q9CRp1MaxKrmf/pt8y+Vch5njETCuCIVVKLy+c2tbJkLnVrqIbo6V2nMoT?=
 =?us-ascii?Q?MMe/uYxMIGZEI+/1iY4Dc+uwM/37arDaMzfozaOXWM5gEvhTCN+1I0E2US+G?=
 =?us-ascii?Q?vI+GHA7+hrgrmtxGtnXPE4uh8kZ7x+ppaIgTEm45NEjfH7NPUGgZ8XHg8H1l?=
 =?us-ascii?Q?p6sXvUeSmYwlXD3PGOjmGkRUl6uS+mCf6yXHpFon+MHNSPcyfLxmA1fpN9nJ?=
 =?us-ascii?Q?CGUctWpHwL2/b3g4RSqcNwCjY5ctco0A+OSIIsLD+6m/QzBvrOPGg+UGB2BU?=
 =?us-ascii?Q?pKj0+LHn6JyuHrdGaO/EgKuKRExHU8jYMLGboGbP4isKeF2HFZZ2sLQSUig3?=
 =?us-ascii?Q?Yy2dRcxCti8kOdNrAIzEZOjYjBOrBdYO4Ar8MGoa++jqVRwPTBEIu6zKhFpQ?=
 =?us-ascii?Q?DV6ddsMR4iGHsikIAtsQrABzSWTY8aacsVlOFilDOYdoJoU76br95FxAhMWv?=
 =?us-ascii?Q?GcC36NHX0WQVfJR07VhL0e0NKpKgwboOLhrsTZFx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fac8f7cc-60d1-4b2b-e13e-08dd75d9906e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 13:39:05.3361 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7paNYCahsI/7zYoQwoofhJ7xp1DGDRC8T/7sFLO16D1z2B1oR+ZN4BEw410Z04cLPnvCoqZ/ImRGqYlkXozfww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6532
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

On Fri, Apr 04, 2025 at 07:16:08PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Clean up active stream count tracking
> URL   : https://patchwork.freedesktop.org/series/147275/
> State : failure

Thanks for the review, patchset is pushed to drm-intel-next.

The failure is unrelated, see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16372_full -> Patchwork_147275v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_147275v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_147275v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_147275v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_plane_lowres@tiling-x@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][1] +3 other tests fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-14/igt@kms_plane_lowres@tiling-x@pipe-d-hdmi-a-4.html

There is no DP output on this host, so the DP only changes are not
related to the above issue. It's a CRC error on HDMI, I can see the
following related looking open tickets:

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12469
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238

> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - shard-mtlp:         [DMESG-FAIL][2] ([i915#12061]) -> [ABORT][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-7/igt@i915_selftest@live.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-7/igt@i915_selftest@live.html

There is only eDP connected on this host and I can't see how the only
relevant change to it - renaming the intel_dp::link_trained flag - could
be an issue.

In fact I can't see what's the reason of the failure, no WARNs are
visible at least in the log.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_147275v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@isolation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][4] ([i915#8414]) +7 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@drm_fdinfo@isolation.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8414])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][8] -> [INCOMPLETE][9] ([i915#13356])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#6335])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#8562])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@gem_create@create-ext-set-pat.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#8562])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [PASS][15] -> [ABORT][16] ([i915#10030] / [i915#7975] / [i915#8213])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-tglu-2/igt@gem_eio@hibernate.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-10/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#4771])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#4525]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#4525]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-1:       NOTRUN -> [SKIP][20] ([i915#4525])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#6334]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_exec_capture@capture-invisible.html
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#6334]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_fence@concurrent:
>     - shard-dg2-9:        NOTRUN -> [SKIP][23] ([i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_exec_fence@concurrent.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4812])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#3711])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][27] ([i915#3539])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-active:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +2 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_exec_reloc@basic-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3281]) +4 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#3281]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-cpu-active.html
>     - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#3281])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#4537] / [i915#4812])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-dg2:          [PASS][33] -> [ABORT][34] ([i915#7975] / [i915#8213]) +1 other test abort
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4860])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][36] ([i915#4860]) +2 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4860])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#4613]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#4613]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][41] ([i915#4613]) +2 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_mmap@short-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4083]) +2 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_mmap@short-mmap.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4077]) +5 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#4083]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4083]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@gem_mmap_wc@fault-concurrent.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-dg2-9:        NOTRUN -> [SKIP][46] ([i915#3282]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][47] ([i915#12964])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#13398]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#4270])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_pxp@reject-modify-context-protection-off-2.html
>     - shard-rkl:          [PASS][50] -> [TIMEOUT][51] ([i915#12917] / [i915#12964]) +2 other tests timeout
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-2.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#5190] / [i915#8428]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-linear:
>     - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-linear.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#8428])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-rkl:          [PASS][55] -> [INCOMPLETE][56] ([i915#13809])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-4/igt@gem_softpin@noreloc-s3.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-3/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3282]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][58] ([i915#4079])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#4077]) +4 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_tiled_swapping@non-threaded.html
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4077])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@gem_tiled_swapping@non-threaded.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2-9:        NOTRUN -> [SKIP][61] ([i915#4879])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#3297])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#3297]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3282] / [i915#3297])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3297] / [i915#4880])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3281] / [i915#3297])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_workarounds@reset:
>     - shard-mtlp:         [PASS][67] -> [ABORT][68] ([i915#13193]) +1 other test abort
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-4/igt@gem_workarounds@reset.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-7/igt@gem_workarounds@reset.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#2856])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gen9_exec_parse@allowed-single.html
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#2527])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#2856])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu:         NOTRUN -> [SKIP][72] ([i915#2527] / [i915#2856])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#2527] / [i915#2856]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#2856])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#8399])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [PASS][76] -> [FAIL][77] ([i915#3591]) +1 other test fail
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#4387])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][80] -> [SKIP][81] ([i915#7984])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-8/igt@i915_power@sanity.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-8/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#6188])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#5723])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][84] -> [INCOMPLETE][85] ([i915#4817])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][86] ([i915#13502] / [i915#4817])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-glk1/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][87] ([i915#4212])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][88] ([i915#4215] / [i915#5190])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4212]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#8709]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#8709]) +3 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-12/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#8709]) +7 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#1769] / [i915#3555])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4:
>     - shard-dg1:          [PASS][94] -> [FAIL][95] ([i915#5956]) +1 other test fail
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-19/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#5286]) +3 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][97] ([i915#5286]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][98] -> [FAIL][99] ([i915#5138])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#5286]) +2 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3638]) +1 other test skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][102] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg2-9:        NOTRUN -> [SKIP][104] ([i915#5190])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#10307] / [i915#6095]) +156 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][106] ([i915#12313])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#6095]) +29 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#12313]) +2 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#6095]) +24 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#12313])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          [PASS][111] -> [DMESG-WARN][112] ([i915#12964]) +18 other tests dmesg-warn
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#12805])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#6095]) +82 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#6095]) +19 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-c-dp-3.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#10307] / [i915#6095]) +24 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#6095]) +44 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#6095]) +155 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#13783]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2-9:        NOTRUN -> [SKIP][121] +6 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_chamelium_frames@dp-crc-fast.html
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#11151] / [i915#7828])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-fast:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_chamelium_hpd@dp-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#7118] / [i915#9424])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#7173])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#9424])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_content_protection@mei-interface.html
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#9424])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#13049])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][133] ([i915#13566])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-256x85:
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#8814])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#3555]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#13049])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-dg2-9:        NOTRUN -> [SKIP][137] ([i915#13049])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3555]) +2 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-32x10.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#3555]) +3 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_edge_walk@256x256-left-edge@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][140] ([i915#12964]) +4 other tests dmesg-warn
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_cursor_edge_walk@256x256-left-edge@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][141] ([i915#4103] / [i915#4213])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][142] +12 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#9809])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][145] +40 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][146] ([i915#13046] / [i915#5354]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#9067])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#9067])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [PASS][149] -> [FAIL][150] ([i915#2346])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-glk5/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#9723])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#9723])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#13691])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-dg2-9:        NOTRUN -> [SKIP][154] ([i915#13748])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#13707])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#8812])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#3555] / [i915#3840])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_dsc@dsc-basic.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#3555] / [i915#3840]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][159] ([i915#3840] / [i915#9688])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#3555] / [i915#3840])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests:
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#13798])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][162] ([i915#13798]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3955])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#3469])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#2065] / [i915#4854])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#9337])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#9337])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#9934]) +2 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#3637]) +2 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9934]) +1 other test skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8381])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][172] ([i915#9934]) +2 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3637]) +2 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-edp1:
>     - shard-mtlp:         [PASS][174] -> [FAIL][175] ([i915#13734]) +1 other test fail
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-2/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-3/igt@kms_flip@wf_vblank-ts-check@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#2672] / [i915#3555]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#2587] / [i915#2672]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#2672] / [i915#3555])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#2587] / [i915#2672])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#2672] / [i915#3555] / [i915#5190])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#2672])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][182] ([i915#2672] / [i915#3555]) +1 other test skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_flip_tiling@flip-change-tiling:
>     - shard-rkl:          [PASS][184] -> [DMESG-WARN][185] ([i915#12917] / [i915#12964])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-8/igt@kms_flip_tiling@flip-change-tiling.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-1/igt@kms_flip_tiling@flip-change-tiling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#8708]) +6 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#5354]) +11 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-snb:          [PASS][188] -> [SKIP][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-dg2-9:        NOTRUN -> [FAIL][190] ([i915#6880])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][191] ([i915#3458]) +5 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][192] ([i915#8708]) +7 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][193] +58 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#1825]) +17 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
>     - shard-snb:          NOTRUN -> [SKIP][195] +28 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#3458]) +4 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#3023]) +7 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#8708]) +1 other test skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#5354]) +6 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#1825]) +4 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#6118])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#3555] / [i915#8228])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#1187] / [i915#12713])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#3555] / [i915#8228])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [PASS][205] -> [SKIP][206] ([i915#3555] / [i915#8228])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#3555] / [i915#8228])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#12388])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#1839])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][210] +7 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#13958]) +1 other test skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][212] ([i915#3555] / [i915#8806])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-tglu:         [PASS][213] -> [SKIP][214] ([i915#6953])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-tglu-3/igt@kms_plane_scaling@intel-max-src-size.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-5/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#12247]) +8 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#12247]) +2 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#12247] / [i915#3555])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#12247] / [i915#6953])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c:
>     - shard-tglu-1:       NOTRUN -> [SKIP][219] ([i915#12247]) +12 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] ([i915#9812])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#9685])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#9685]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-dg2-9:        NOTRUN -> [SKIP][223] ([i915#3828])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-mtlp:         NOTRUN -> [SKIP][224] ([i915#9519])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [PASS][225] -> [SKIP][226] ([i915#9519]) +2 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html
>     - shard-rkl:          [PASS][227] -> [SKIP][228] ([i915#9519]) +1 other test skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#9519])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#9519])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#6524] / [i915#6805])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_prime@basic-crc-hybrid.html
>     - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#6524])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][233] ([i915#11520]) +2 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#11520]) +5 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#12316]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#9808])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#11520]) +2 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#11520]) +3 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#11520]) +3 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][240] ([i915#9683])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-pr-no-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_psr@fbc-pr-no-drrs.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#9688]) +6 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_psr@fbc-psr-cursor-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@fbc-psr-cursor-render:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-render.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#9732]) +16 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@pr-sprite-plane-move:
>     - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#9732]) +9 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_psr@pr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr-suspend:
>     - shard-dg2-9:        NOTRUN -> [SKIP][246] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_psr@psr-suspend.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][247] ([i915#9685])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#12755])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#3555]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8809])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][251] ([i915#3555]) +2 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#8623])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#8623])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][254] ([i915#3555] / [i915#8808])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-5/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#9906])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [PASS][256] -> [SKIP][257] ([i915#3555] / [i915#9906])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-10/igt@kms_vrr@negative-basic.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#9906])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#9906])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#9906])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2-9:        NOTRUN -> [SKIP][261] ([i915#2437])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#2437])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-2/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@blocking@0-rcs0:
>     - shard-tglu:         [PASS][263] -> [FAIL][264] ([i915#10538]) +1 other test fail
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-tglu-2/igt@perf@blocking@0-rcs0.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-3/igt@perf@blocking@0-rcs0.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#7387])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@mi-rpc:
>     - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#2434])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@interrupts:
>     - shard-rkl:          [PASS][267] -> [FAIL][268] ([i915#13977])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-5/igt@perf_pmu@interrupts.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-1/igt@perf_pmu@interrupts.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-mtlp:         [PASS][269] -> [INCOMPLETE][270] ([i915#13520] / [i915#13825])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-7/igt@perf_pmu@module-unload.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-7/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#8516])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt0.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][272] ([i915#8516])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#3708] / [i915#4077])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][274] ([i915#3708])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][275] ([i915#12910]) +19 other tests fail
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2-9:        NOTRUN -> [SKIP][276] ([i915#4818])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [ABORT][277] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][278]
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-10/igt@gem_eio@hibernate.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-6/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@wait-immediate:
>     - shard-mtlp:         [ABORT][279] ([i915#13193]) -> [PASS][280] +2 other tests pass
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-4/igt@gem_eio@wait-immediate.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-6/igt@gem_eio@wait-immediate.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-rkl:          [ABORT][281] ([i915#7975] / [i915#8213]) -> [PASS][282] +1 other test pass
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [SKIP][283] ([i915#4270]) -> [PASS][284]
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-5/igt@gem_pxp@fail-invalid-protected-context.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          [TIMEOUT][285] ([i915#12917] / [i915#12964]) -> [PASS][286] +1 other test pass
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-4/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-tglu:         [FAIL][287] ([i915#12941]) -> [PASS][288]
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-6/igt@gem_tiled_swapping@non-threaded.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-dg1:          [FAIL][289] ([i915#3591]) -> [PASS][290]
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-rkl:          [INCOMPLETE][291] -> [PASS][292]
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-3/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][293] ([i915#13821]) -> [PASS][294]
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-snb6/igt@i915_pm_rps@reset.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-snb4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [DMESG-FAIL][295] ([i915#12061]) -> [PASS][296] +1 other test pass
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-5/igt@i915_selftest@live@workarounds.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-3/igt@i915_selftest@live@workarounds.html
>     - shard-mtlp:         [DMESG-FAIL][297] ([i915#12061]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][299] -> [PASS][300] +1 other test pass
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-tglu-10/igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-1.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-3/igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@linear-addfb:
>     - shard-dg1:          [DMESG-WARN][301] ([i915#4391] / [i915#4423]) -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-15/igt@kms_big_fb@linear-addfb.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-19/igt@kms_big_fb@linear-addfb.html
> 
>   * igt@kms_cursor_crc@cursor-random-128x42:
>     - shard-tglu:         [FAIL][303] ([i915#13566]) -> [PASS][304] +3 other tests pass
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-tglu-8/igt@kms_cursor_crc@cursor-random-128x42.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-tglu-9/igt@kms_cursor_crc@cursor-random-128x42.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>     - shard-rkl:          [FAIL][305] ([i915#2346]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          [SKIP][307] ([i915#13749]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-6/igt@kms_dp_link_training@non-uhbr-sst.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-10/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][309] ([i915#11832] / [i915#13734]) -> [PASS][310] +3 other tests pass
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-snb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][311] ([i915#13027]) -> [PASS][312] +1 other test pass
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank:
>     - shard-glk:          [DMESG-WARN][313] ([i915#118]) -> [PASS][314] +1 other test pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-glk6/igt@kms_flip@flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1:
>     - shard-snb:          [INCOMPLETE][315] ([i915#12314]) -> [PASS][316] +1 other test pass
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-snb4/igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-snb5/igt@kms_flip@flip-vs-rmfb-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate:
>     - shard-rkl:          [FAIL][317] ([i915#13734]) -> [PASS][318] +1 other test pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_flip@plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-dg2:          [FAIL][319] ([i915#13734]) -> [PASS][320]
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-7/igt@kms_flip@wf_vblank-ts-check.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-8/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [FAIL][321] ([i915#6880]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - shard-rkl:          [DMESG-WARN][323] ([i915#12964]) -> [PASS][324] +6 other tests pass
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
>     - shard-dg1:          [DMESG-WARN][325] ([i915#4423]) -> [PASS][326] +3 other tests pass
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][327] ([i915#9519]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs:
>     - shard-dg1:          [SKIP][329] ([i915#4423] / [i915#6095]) -> [SKIP][330] ([i915#6095]) +1 other test skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-15/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-19/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
>     - shard-dg1:          [SKIP][331] ([i915#11151] / [i915#4423] / [i915#7828]) -> [SKIP][332] ([i915#11151] / [i915#7828])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-15/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-19/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][333] ([i915#9424]) -> [FAIL][334] ([i915#7173])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-6/igt@kms_content_protection@lic-type-0.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-10/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
>     - shard-dg1:          [SKIP][335] ([i915#3458] / [i915#4423]) -> [SKIP][336] ([i915#3458])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-dg2:          [SKIP][337] ([i915#3458]) -> [SKIP][338] ([i915#10433] / [i915#3458]) +1 other test skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][339] ([i915#10433] / [i915#3458]) -> [SKIP][340] ([i915#3458]) +1 other test skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][341] ([i915#4423] / [i915#8708]) -> [SKIP][342] ([i915#8708]) +1 other test skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][343] ([i915#13331]) -> [SKIP][344] ([i915#12713])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg2-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-glk:          [INCOMPLETE][345] ([i915#13476]) -> [INCOMPLETE][346] ([i915#12756] / [i915#13409] / [i915#13476])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][347] -> [INCOMPLETE][348] ([i915#12756])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][349] ([i915#3361]) -> [FAIL][350] ([i915#9295])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-1/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][351] ([i915#9519]) -> [SKIP][352] ([i915#12916])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr@fbc-psr-cursor-blt:
>     - shard-dg1:          [SKIP][353] ([i915#1072] / [i915#9732]) -> [SKIP][354] ([i915#1072] / [i915#4423] / [i915#9732])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-18/igt@kms_psr@fbc-psr-cursor-blt.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-12/igt@kms_psr@fbc-psr-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-cpu:
>     - shard-dg1:          [SKIP][355] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][356] ([i915#1072] / [i915#9732])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16372/shard-dg1-12/igt@kms_psr@fbc-psr-primary-mmap-cpu.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/shard-dg1-15/igt@kms_psr@fbc-psr-primary-mmap-cpu.html
> 
>   
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12941]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13502]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13502
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13798]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798
>   [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13825
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#13977]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13977
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3711
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16372 -> Patchwork_147275v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16372: 15ac66651307aa3178e5ff8fc7d62b97f2092d09 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8307: a4e3c079328d3bfb2f071eae5ed93db3334c8cc9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_147275v1: 15ac66651307aa3178e5ff8fc7d62b97f2092d09 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147275v1/index.html
