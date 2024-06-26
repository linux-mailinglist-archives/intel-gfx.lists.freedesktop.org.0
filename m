Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E565918A3C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 19:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A61010E975;
	Wed, 26 Jun 2024 17:42:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DmG051Tr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED00910E973;
 Wed, 26 Jun 2024 17:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719423757; x=1750959757;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=/FH5epRhu1wdg8Sn+LYg/WSyGOV5QYhQ3EQTygVCxOE=;
 b=DmG051TrIGfcNqcj++J0Ep4+iz+9nE4505BCS3B4hQtO5MaJIFvFOCc0
 d3W54o5aNc6Ms7+X0QhNKz9f2rTnft1swe5nNbFMV3V1Le0NsB2giPCKA
 Yh+MbhJWd2Y13OYKOuXop2ryuu/p2cbHLXZCLh4hOUob1bMOVW/IlT1zk
 QNQtrS83iV/zbzaVlSKS/ARUhwelc2M2UzvXvZ1DzRpxzb0ga4hrQlezM
 EVDAMcn1C4/8FtoKshCWkALUEG0yET+/RYXNKwho9ugvPF45sG2YBkaY3
 jQ/0me7R1r/aVrLRpa/90vsEHXLe1jpQIJEa34umzobuXptyaAa9SuCNz A==;
X-CSE-ConnectionGUID: BzkASTPPQE+bZEBI80Q6ww==
X-CSE-MsgGUID: ZDpXP0wKRtOv/zmw1RU4dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="20285579"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="20285579"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 10:42:36 -0700
X-CSE-ConnectionGUID: rgm+lYtTR469ns5wS/pbAg==
X-CSE-MsgGUID: ++S58BwyQAOV4CnE3bzNZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="43962121"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 10:42:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 10:42:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 10:42:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 10:42:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 10:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gx7oco8B8YhVDOH6hoDn+6OAOlAicGfZwTBesaPQ4q4AWLj8HGaeNF2eEACtrDQHggY9fWpia62Rju0OYoKUgfFlbgIhBtoAvhemH+lQpOsfUEPO4M4MdVrgR6vbLy8g1sD9rrAiDn7lJhlEgBuVwUQPY34Oha+T6CnkNc5JHHWnvA+LSuTxen2vrbkf65lTtZd4YbyrkwtTi9T4dP2m4Wpd+k7+YlDIfcnJ20qL4ddu1Pq1pju/ZYCsKfsgcdK1ichgmfmD+xFQZQVqVJCbbTZzXw8uZqsbna9rQYObmz/mFKCptxnQgqnGuy7ivc05OGZy7RgBq9TzHflBr8kQug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8R4VJRm7nZBtpc8peZ2JJlyl0Gwwzi8T/N0BQOG7V3Y=;
 b=ds5rud+AtuQFKqn7KQFwPZcJwXK3f5pveT8XzrqMrXdNHklfB1MjOpfLZZ9n6sJx6RrQSHWgUA0AXNvqlisw6AhnKGqW/w85t6yBj7xajySrYRHn6CA9jYOzZ0dayJAvgKxw7g0h3Vk9Z1U0JLldO5rXwy3Zks3htxMVT9LKkzltg3Wupu6vWl121u/OaJ2+1JVb8ufMdDC0MeRtPvwsshyz5gZhV1T1DAlAfjqXoBicJkkx3/HENxDwccuP9LrMEBp6IWLEBBogR5fQpYPhcR6E9+B0b+pj7lxSK14uaSMLoxlLjIzfQP1RGViuK7vMnK+kndhf6IiSC/1KwnUufw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB7101.namprd11.prod.outlook.com (2603:10b6:303:219::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Wed, 26 Jun
 2024 17:42:27 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%3]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 17:42:27 +0000
Date: Wed, 26 Jun 2024 10:42:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Matthew Auld <matthew.auld@intel.com>, <intel-xe@lists.freedesktop.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915: disable fbc due to Wa_16023588340
Message-ID: <20240626174224.GZ2906448@mdroper-desk1.amr.corp.intel.com>
References: <20240619143127.110045-3-matthew.auld@intel.com>
 <20240619143127.110045-4-matthew.auld@intel.com>
 <Znw5jj7YROnoWD9j@intel.com>
 <70fd9b0e-36a7-4247-914f-ac71c33fca7d@intel.com>
 <ZnxPKAIPax-95pyk@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZnxPKAIPax-95pyk@intel.com>
X-ClientProxiedBy: SJ0PR03CA0283.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB7101:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c05e47a-ba05-4a0a-c61c-08dc96075840
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|1800799022|366014|376012;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?WGo6dV6vAXNfAaLsC1kfM4wXuY5Pofl0jrQL+x9JW4vQMdOxWwiVFYBl5X?=
 =?iso-8859-1?Q?j3g3iaTG6sR/hPyKr4beLdpacSxiytfV66Avin8RkcOJEX776e4UfWKyy2?=
 =?iso-8859-1?Q?CM4fFxKP+299dlmwYc+y1SmzPb+4IPa5/VSgtN/fRjOW1Gv/w8Avh4p1jy?=
 =?iso-8859-1?Q?27+9NvA/6KIEK/EpV92B5DE/leON4X2AEbPC+9GTL1ZmkqVpPxZ01OSTE2?=
 =?iso-8859-1?Q?IvHTl+Pm8Z6kYDSYTzQnFWCj+wKeHK/NaZgx35yxiipJerQfJKq4E5lGp3?=
 =?iso-8859-1?Q?CGijEJr7Y7SUDP18ABoUkYk0Yk1L9t29MoQdhHEgiz5jLlQoeA0MBYFgdO?=
 =?iso-8859-1?Q?t3Bfgz+vZzJhtHLLbB9Zo1K33K8+CK2lgtTbdYjaJaTdcFDf7am+4crk4P?=
 =?iso-8859-1?Q?pY1OzkxivejamienIQ5hU+boJgLD95JLCwjRb8ro/34iuDvN09kFoHDXeJ?=
 =?iso-8859-1?Q?hy5XzwtPYkxbYyYTKVGjlMSV8VKexyidvlgoPJ7bS6VJTa4X+NMWqzj9y+?=
 =?iso-8859-1?Q?YBtYNH7kxeX3bwMkdA2Zp/ec9Sh/xibxJILx6Lsm8t9iNaPlgSyzbEqKR8?=
 =?iso-8859-1?Q?B+g+sxZkED9WVIxhGSnAz2Avv2w71fudWysnee8rxadIds4HH6JUt8SI/C?=
 =?iso-8859-1?Q?QxcN0rsLQV5UgLan/zkcN5KtQk9sNmKo18crEJlIs0gsMhXDnUMHjA4tNY?=
 =?iso-8859-1?Q?nLiuA1ZtanCtI6vX9GrcbNxHwnHYB/PDfvNpNuFCBV2gyzIYPNQHRTEeyu?=
 =?iso-8859-1?Q?5aolpV5aErXz6eGeObG+1HWNJD8m1z5A3uChjchMkakQQxsyY4WI4Ek1jx?=
 =?iso-8859-1?Q?48QvKSEJ7KA1E4a4FryQ4PJQjSZqIBC0ozTw34e+q5WCZd1FvTyyoZ+TIw?=
 =?iso-8859-1?Q?nHTP8yYpZ8TFMZ/lZXlHuo+qepbDfRPU4ImaG5sw5L4LClDceL2guSBDVl?=
 =?iso-8859-1?Q?rhrNAPHBHjM+RJW93INavZ8TqIRx3d4eqDxcmJbw3tU9Tdq6w7plqjXjWV?=
 =?iso-8859-1?Q?zn6hSRsTYMaddgQNeBWgbBNrovKiniThTmRYTpKUMVtGbdokAE8xUET/XY?=
 =?iso-8859-1?Q?zBYwq/QshjdgMpqhdU1qvREIEasGqOgBeL+8SaLaCmzqnhYrMX4PGWDlBD?=
 =?iso-8859-1?Q?k87iG6VVt+KVEnZ3VIOFWnyQD3lZO7w5BLTTJCITxhLV0WodwBseFDfxpH?=
 =?iso-8859-1?Q?1cb7yXxBv0jCJBZMvS60B44IUS/Mgg9mD1QColK7VZoiZdPR2sBzVdtB9f?=
 =?iso-8859-1?Q?Qk5jJXu0OJ046Pc9i/4Ra4i+twBmPW1+lFxNDqBTRm3eqGcerm5uvseQW1?=
 =?iso-8859-1?Q?F8G21nzJA68DxBCBKsjD2aV/01l3qPvOVxdxnpSIJBj2dedl/UjcC2U0oo?=
 =?iso-8859-1?Q?0wrEuDm9jj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(1800799022)(366014)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?L8NMdlf1a22nWIgQo26K61zpWQy/QvSOnkSrnEuQmDhgDp/zD6IKGiNvPa?=
 =?iso-8859-1?Q?JFVPQBlpImULLJmuFcEJVpK0mr2bgFZhQOmGB7ku91OzPzFaByCbLAscXK?=
 =?iso-8859-1?Q?+Ng60UdPwnUsQY1cBS0+1Dgpr9456nTzSDT7P10rlADc2CKH1XoK6jjB/s?=
 =?iso-8859-1?Q?mWw5n1qE6r8oSYEeTeGh4//q/+5+k2WHlq4iRcX2PXXyIWUVJBLSYbQU7E?=
 =?iso-8859-1?Q?TXE8k/M6bIO93pZfaRY5wWkrHAgwkP0MsvGvxekc0x6L0GyFTUNRtrvoAP?=
 =?iso-8859-1?Q?0NHmJ9FnBYuM4NI21Up4TvGEHVut+n5g3MRGmnlhsnWLZbqZppW33nn0Wg?=
 =?iso-8859-1?Q?oAkZsUtyohWF/lHmorMa2nsa8ekL157AODxekpz+dhdolJ/to0gs8XNOTn?=
 =?iso-8859-1?Q?anNymiFX03yqwrBX/M6GPG63q2uD8XZe8KcEIN+2nYIH0HAe5GF6rGv3gp?=
 =?iso-8859-1?Q?YcWCJH8AVRMfRJVX79CuQNGQHk3Aoa8iuZlOYu++0j44xKoaND5iJHGCVC?=
 =?iso-8859-1?Q?vNe3R7nSRGLNmxe7TtkOmMqsggzO7wvLtb+FIx1mCtGG4yD3SYhbhlaj6j?=
 =?iso-8859-1?Q?mIUha0nrZFh05UUurLhCrNxCTOdIVh68RUHWMR4C0gqens+J40OwWh5fQM?=
 =?iso-8859-1?Q?8hDsA4CMvuUZ9FZyylq2iH7UhAR25woWUB+xw+PUbPIEyRoGJ42UMfBXxE?=
 =?iso-8859-1?Q?h6aJXn5OplPOERUSxn8AMhIHC8POG+kwkMLDJufbmgCt2rIudTZm6hYC26?=
 =?iso-8859-1?Q?ycwY+6KxtdzyPxwJpIo3p7SMiGV1IB1yvNsjIETyJ/ceoz3Yo2d2H/iMyU?=
 =?iso-8859-1?Q?+agAzOhezToREdzKdYmkQ3qnjDOsOS79ZMOvTX3MUERQjjapQph4CHKDk/?=
 =?iso-8859-1?Q?AYr6fJVM9m3+XdRbksM89RcXceHoWeuLRvTEpXvqJcLd5vlS170rpu1aae?=
 =?iso-8859-1?Q?NoFOQ26849zObwgpgHoH699ZoaymtvqEixu4H/ph5f4EonPyDL6iIW+xGf?=
 =?iso-8859-1?Q?whCna72CYL8vaJVYU4Dz3GVXRYH3inl5VHssQW1aeKW1+kBDoTK7jGK0J/?=
 =?iso-8859-1?Q?CH/dl5PoxE4Rpy1NM+FHZhESfdX/vxUOxAcnEJvWkKRiHiwjAcJzsawCce?=
 =?iso-8859-1?Q?A/s7byBjCINLk0DUEg764oWA0v0oOGmktEgX2TgnJsKWdrAgxlP7OnZjMq?=
 =?iso-8859-1?Q?rHoeYrUjwz5nD2zrE9PBtRUoFdMuteirfl9vEyp6DFjsO7p5kEUPdgk9t4?=
 =?iso-8859-1?Q?Miz19Hpbio5Ms5NUNv6zwtURQM+hqzp0l+2cws4C5wL1cFWIzFOUblkOMT?=
 =?iso-8859-1?Q?L6bl555cpyfoldB1g3yarPfJgjjkU2tSf1vkfGrOzkfcCz6T3PZtCbBwvi?=
 =?iso-8859-1?Q?37Ao1mMAkj/BeTk3CAidEuoS3R+RitoM/G7y7oCPI6dA0WCudGP+mStV82?=
 =?iso-8859-1?Q?mBZY5MjN68wnG51hyMcYqg739PFbZejvRFNwkgdgNe1eelVykDOcY30ZtS?=
 =?iso-8859-1?Q?qW28cD7joPVW0RhlBgdI+q2F7+syEU1Lo64HE2Rg4lphli6+DmMAAVGut3?=
 =?iso-8859-1?Q?rLPvL57P2ok3O7di3Dw1TgidUGve9gI7YKG4kk3FSLpGxeo7RhZC6qkxpG?=
 =?iso-8859-1?Q?P89nx7G1otL4m2dNPgLqGHFlpKTveG9tjufXOIb53P6fm6b6FWEZxLeQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c05e47a-ba05-4a0a-c61c-08dc96075840
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 17:42:27.0628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5s2YPBoEZqfIOcZtx1Yc/JR3uKIwmhNQ203RRkAgqvRz9cZK2LTt23mSfba+vs/zTZZ9j53iUM7EyndvhQ0anrd4zldv0lypAERXh44TF1o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7101
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

On Wed, Jun 26, 2024 at 01:26:00PM -0400, Rodrigo Vivi wrote:
> On Wed, Jun 26, 2024 at 05:17:41PM +0100, Matthew Auld wrote:
> > On 26/06/2024 16:53, Rodrigo Vivi wrote:
> > > On Wed, Jun 19, 2024 at 03:31:27PM +0100, Matthew Auld wrote:
> > > > On BMG-G21 we need to disable fbc due to complications around the WA.
> > > > 
> > > > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > > > Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org
> > > > ---
> > > >   drivers/gpu/drm/i915/display/intel_display_wa.h |  8 ++++++++
> > > >   drivers/gpu/drm/i915/display/intel_fbc.c        |  6 ++++++
> > > >   drivers/gpu/drm/xe/Makefile                     |  4 +++-
> > > >   drivers/gpu/drm/xe/display/xe_display_wa.c      | 16 ++++++++++++++++
> > > >   4 files changed, 33 insertions(+), 1 deletion(-)
> > > >   create mode 100644 drivers/gpu/drm/xe/display/xe_display_wa.c
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > > index 63201d09852c..be644ab6ae00 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
> > > > @@ -6,8 +6,16 @@
> > > >   #ifndef __INTEL_DISPLAY_WA_H__
> > > >   #define __INTEL_DISPLAY_WA_H__
> > > > +#include <linux/types.h>
> > > > +
> > > >   struct drm_i915_private;
> > > >   void intel_display_wa_apply(struct drm_i915_private *i915);
> > > > +#ifdef I915
> > > > +static inline bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915) { return false; }
> > > > +#else
> > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915);
> > > > +#endif
> > > 
> > > please avoid the ifdef I915 in new patches as we are trying to get away from that
> > > in favor of a clean separation.
> > 
> > Can you please share an example for the best way to do that here, with clean
> > separation?
> 
> hmmm... looking more to the patch now...
> I don't believe that the WA/RTP rule from Xe should leak into i915 to be honest.
> 
> It looks like we are trending to a separate intel-display.ko that shouldn't depend
> on driver's declarations like this.
> 
> Ideally I would also say that wa in the display code should relly on the 'D'
> (display-id) of the GMD-ID. But I see that this 16023588340 is for the 'G' ip.
> So, perhaps the display code should inspect the 'G' id from the device inside
> display code?

This is one of those rare cases where a GT-based workaround also has a
side effect of "oh, and you also need to disable FBC in the display
driver."  So as you said, the need to disable FBC is entirely tied to
details on the graphics side of the IP, not the display version.  :-(

So there are two options --- either you duplicate the logic to decide
whether the workaround applies in both the display driver and the core
(i915/Xe) driver, or you make the core driver the authoritative decision
maker for GT-based workarounds and give the display driver some way to
query the core driver.  The patch here is following the latter approach,
and for the short term future while display code just gets re-compiled
into each core driver, this seems to be an accurate implementation
(always false on i915 builds, and querying RTP for Xe builds).  As we
proceed with moving intel_display into its own standalone driver, we'll
need a more formal display<->core driver interface and it will probably
make sense to have a formal "query a GT workaround" entrypoint as part
of that interface so that we don't need to keep adding more one-off
"needs_XXXXX" for future workarounds that wind up in the same boat.


Matt

> 
> Jani, thoughts on this?
> 
> > 
> > I can add a new .c just for intel_display_needs_wa_16023588340 and move it
> > there, which then avoids the ifdef I think, but that then adds an entirely
> > new file just for this tiny stub. Unless I can dump it somewhere else?
> 
> One temporary workaround that I see without the ifdef I915 would be to
> declare this function in i915_drv.h so in xe you add to the compat-i915-headers
> instead of creating a new file there.
> 
> > 
> > > 
> > > > +
> > > >   #endif
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > index 67116c9f1464..8488f82143a4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > @@ -56,6 +56,7 @@
> > > >   #include "intel_display_device.h"
> > > >   #include "intel_display_trace.h"
> > > >   #include "intel_display_types.h"
> > > > +#include "intel_display_wa.h"
> > > >   #include "intel_fbc.h"
> > > >   #include "intel_fbc_regs.h"
> > > >   #include "intel_frontbuffer.h"
> > > > @@ -1237,6 +1238,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > > >   		return 0;
> > > >   	}
> > > > +	if (intel_display_needs_wa_16023588340(i915)) {
> > > > +		plane_state->no_fbc_reason = "Wa_16023588340";
> > > > +		return 0;
> > > > +	}
> > > > +
> > > >   	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
> > > >   	if (i915_vtd_active(i915) && (IS_SKYLAKE(i915) || IS_BROXTON(i915))) {
> > > >   		plane_state->no_fbc_reason = "VT-d enabled";
> > > > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > > > index 0e16e5029081..f7521fd5db4c 100644
> > > > --- a/drivers/gpu/drm/xe/Makefile
> > > > +++ b/drivers/gpu/drm/xe/Makefile
> > > > @@ -34,7 +34,8 @@ uses_generated_oob := \
> > > >   	$(obj)/xe_ring_ops.o \
> > > >   	$(obj)/xe_vm.o \
> > > >   	$(obj)/xe_wa.o \
> > > > -	$(obj)/xe_ttm_stolen_mgr.o
> > > > +	$(obj)/xe_ttm_stolen_mgr.o \
> > > > +	$(obj)/display/xe_display_wa.o \
> > > >   $(uses_generated_oob): $(generated_oob)
> > > > @@ -192,6 +193,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> > > >   	display/xe_display.o \
> > > >   	display/xe_display_misc.o \
> > > >   	display/xe_display_rps.o \
> > > > +	display/xe_display_wa.o \
> > > >   	display/xe_dsb_buffer.o \
> > > >   	display/xe_fb_pin.o \
> > > >   	display/xe_hdcp_gsc.o \
> > > > diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > > new file mode 100644
> > > > index 000000000000..68e3d1959ad6
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
> > > > @@ -0,0 +1,16 @@
> > > > +// SPDX-License-Identifier: MIT
> > > > +/*
> > > > + * Copyright © 2024 Intel Corporation
> > > > + */
> > > > +
> > > > +#include "intel_display_wa.h"
> > > > +
> > > > +#include "xe_device.h"
> > > > +#include "xe_wa.h"
> > > > +
> > > > +#include <generated/xe_wa_oob.h>
> > > > +
> > > > +bool intel_display_needs_wa_16023588340(struct drm_i915_private *i915)
> > > > +{
> > > > +	return XE_WA(xe_root_mmio_gt(i915), 16023588340);
> > > > +}
> > > > -- 
> > > > 2.45.1
> > > > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
