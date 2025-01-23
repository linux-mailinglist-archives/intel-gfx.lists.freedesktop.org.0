Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AEC4A1A22E
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 11:49:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7844710E7C7;
	Thu, 23 Jan 2025 10:49:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N4NSkwGa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99CA810E7C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 10:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737629380; x=1769165380;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+amEdqco3vyZZp2wTTczVmcm51Wy7djDV5A6qKlj+lE=;
 b=N4NSkwGaK70eBGfp2DZsoO/57QvdsG/MCpzHsAkS3ybqvEfozH/uRhTJ
 1OWMqLvwjNhLJ5ag/EzbWyBjL0OZVqeY3hJ9RJ8jYH9G0X487cKqezdg3
 vy31EWvAofWeiLhwVJobBAH74702MSXbTqEWv0w/0Mx769ybz6YGbhtmd
 2o4ZepbLOedGY6EJcci0H1/eIRwa2JSE2OZBgP9yLTI9ix1n7PILd3+gM
 q6ocJn71SSUPHCYuw1FWpFLrilpMU9I3WLoDQgZ6Sbr28YZywGGnWL7JL
 CCGNzgP/+hHNPwWHlFKpN/mk1CenVS3z6vL48x+WkHi1G8xraGnCa6lld w==;
X-CSE-ConnectionGUID: dagrkMLUQsSaqlk/cDxgbA==
X-CSE-MsgGUID: rJJMRdMnQ7KL7k0QzkRsSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="38036863"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="38036863"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 02:49:40 -0800
X-CSE-ConnectionGUID: oereupE1SEy37/YMGGQDfA==
X-CSE-MsgGUID: 7Q6ML7cjRRSkDK3Yro+DVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="144665983"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 02:49:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 02:49:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 02:49:39 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 02:49:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pe2i3qaE4ds2jrwv8NagEEKHv9zj9JjPrkODy+GMoCzk0VR25adhgglJxgq5e8pGz8F0LUT+t7O5QplViJQvFyEzsedIpgR5hMQvDq2VP7//jk2GlU2zCaT2crPpOCTeIQ533Z4SNBBKj8jVuYHSEbrqjogaR9NAKBQ6SBlOYrPEXnks3JaWRbqO6trrwsm4z58r/YiWFPjNwPIOPEERnUxlUmePNH24Jo0k/td0fD5Bcv1yc8i3Ke5IvXkFua8HamZD1nctR4I3xv1a4f/XusYSp/aCWCqN7/rShGG4jPHPDxcVb73ObLcG5KQHaHJSDtVNrFSkJWdQNpeBLT/Dhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oICqhg6nDTZsxxGHRFNqDn9WmC0tWGgl/lcdFLoOXXA=;
 b=EArR23LZ48RTRheZLTjk4Xm9AzhQM4z/9GIgI3CbEkMc5iT9tAcun3WJ2sVzyqYeXyPk9gaMmBlm5Aji4puibjzr9n+enXkipE/QoULHz9KaT3p+muOV22FkLwQG2+VBZV/ktiJObRc3Iuhd4ua+EMEieImC6KwagLwEVy1KbQh2PiJ/lSKzI4LMjLnj9+1Sjy/h4NiJz+WeBrPRHRwA67vqj6i7IYvIu4kAkX6IkAKuY4jWOgKnuSq6gv1tDTltVYYr8dmY3Km8tT/Ny6uIhsm+bHZbTNVsrJv6qLhcwGXt/GSXmvYqPifn1Bp5F4xrQcgxnswNSQq7mmTPExuhGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by SJ0PR11MB5769.namprd11.prod.outlook.com (2603:10b6:a03:420::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Thu, 23 Jan
 2025 10:49:37 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 10:49:37 +0000
Date: Thu, 23 Jan 2025 05:49:33 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Nitin Gote <nitin.r.gote@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, <krzysztof.niemiec@intel.com>,
 <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 3/8] drm/i915/gem: fix typos in i915/gem files
Message-ID: <Z5IevfSnzJOkityM@intel.com>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-4-nitin.r.gote@intel.com>
 <Z4_H-1qhW1AjH_-m@intel.com>
 <173762888649.10294.11253060379071971587@jlahtine-mobl.ger.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <173762888649.10294.11253060379071971587@jlahtine-mobl.ger.corp.intel.com>
X-ClientProxiedBy: MW4PR03CA0153.namprd03.prod.outlook.com
 (2603:10b6:303:8d::8) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|SJ0PR11MB5769:EE_
X-MS-Office365-Filtering-Correlation-Id: 4a602b46-3adb-42fc-f81b-08dd3b9ba159
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pLE5PdJ9y6/TPS1n68Y09VNCJWLT62tvCQfoDniqdMMMyT3Zl8Tyi9uflSbK?=
 =?us-ascii?Q?nI9BHpHSZtLDDUQeOGxUYhNmeYH220ZRWgAeh42TVTVL57D5skFd5DGb1tnx?=
 =?us-ascii?Q?S7QVs+yO6bdoD39CAFKAB8mrbyuMeAVCKVef8jMbcXkPisscQ86aOg+GLIPy?=
 =?us-ascii?Q?8ZBzJSnPcahNcx4aCTf1fGllFeHV7ULmU7cDNE6sOoE9NfEzFtm5VVO8T1GU?=
 =?us-ascii?Q?Y/1TaErWRiLwy9kzHfwpvOyXvKMSbK/oAlhPRoEp7lZj5GjKzWE4WlXfAqAn?=
 =?us-ascii?Q?7jSGoV7A6DujMg2XO9JY98R+0hY+WPfYQKgsjmp9ZGaQhLtrGSzY8qX952Qg?=
 =?us-ascii?Q?7POlTkVLRJkxVvD2wE3jMJslvCiJ20UNAMbnXZa8hnNsuB4nm7V6TPdodBpg?=
 =?us-ascii?Q?zBaw2vOy8XAndYSOhBt0abnUiUuOk13ZqpkET/iPZXYApS8vMgPzVYfcVnZ2?=
 =?us-ascii?Q?VYHTen26Cq421DDq2i1qTl1EPgzKuyCIoWwkI18Ht1tQN353EuJ4+986m2eQ?=
 =?us-ascii?Q?zhqlmib5F2z8/ZZAM6KcUYqZj3TDqpDhae8w9JnuPy2TcefY02wyE47Hi6iV?=
 =?us-ascii?Q?HzbdH4ZWOkvuRnFRsuwLSRpWGEP/sontiJZg4hznIaKpZsac9OCz8A0kmw/9?=
 =?us-ascii?Q?v6H+fTCdw9EDqoYosn7t1NxkNdM7fA+cO3ZXdf3D2IC0CdDJI2MWhSkvgvzM?=
 =?us-ascii?Q?JP5zB49l2QfRlUCVebYjCL/YuOUWIxeFB1ri8DgZLXCGgPfb0z0yrn/Pvh4r?=
 =?us-ascii?Q?47RLVBMZkkwJ0vnXSdFBjwma4QmmaBuNOhvtnlz11SRV0rgoD0Uu4u0NHTlu?=
 =?us-ascii?Q?fGLgGYcsMbj7q85hVtLYTRuNfLaGLboyoKR6B3F+VhS6VwApWgpEj/Efvcb7?=
 =?us-ascii?Q?O6PTE7ypmHi8o95+XPj8F9y7BOEa9zxPMm7Mkvrqj2PkjsdoY2GrAVWkB09q?=
 =?us-ascii?Q?nqyhzuFF8vYXPr/clE/bUNsalDae1Yf5ky0V/EKekGBraHmkfIJCgiGIGLmz?=
 =?us-ascii?Q?1sl4wA6wHOvJ9B8+0ZMO8w+2kLDkEvtflk49KtZv+BcvWJT/boo99+36b54H?=
 =?us-ascii?Q?/Vc3hngekzGtB3dQzL/WlCa0DujEPv9YSal8kM6hHyzAVtLtQt7iA8QznYHR?=
 =?us-ascii?Q?/3SrfJB2xlgfneDd1f2bS0rKlzpo/JYZU3k69JW5ndK6Tz3QZXmjq3wiHyUr?=
 =?us-ascii?Q?kdMtCaeebd7gc//i21wPCum//cSG6mLa9ZiFPNliVnX90ZmOBVTHVocHMTz9?=
 =?us-ascii?Q?gDaR9EN1G+YBWX2zA/Ve+FrflrBBQeqeXlhT9cC47wVXMYtyl0/m5mf5MNDe?=
 =?us-ascii?Q?1ku78OQNC/8O6OtYORNZOKlLBu+FGHD6t2SVfwGxOAEFhdOtYj1dzf6XmKZs?=
 =?us-ascii?Q?0wZK5PunmhLhAeJmysJ0TNbM7+4k?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GTIh+EmFJIjPx8ohgR5vPXTJ3IsHafZh68PpOE4lKOvdysiUu3kd9tShZIdt?=
 =?us-ascii?Q?77uIhViMNo0fU0cRlj6ZKWM5/N8JJYfYEJF9ItcjyvPa1h1ZR6C05P9iEipr?=
 =?us-ascii?Q?PhAfL57Sy9ZsvkjOG8my+fhByD77Z3tSp+q95y6mHY1mNltNVoS9G5Z66asY?=
 =?us-ascii?Q?nzM7jo5/SUntjWTrR06HhNl3u4CodGJnMw3TVeIgZ/IvecfOAx/QQDrzKQNV?=
 =?us-ascii?Q?Mi1YEPJ4PYyCNLoD20vKNjWgjcRJP+gNx4/1qYKMLm8AQ3w5mrRPxpk9Fj8q?=
 =?us-ascii?Q?QHTRXOUxzX/rui7tIrHs4eMQb2dnuQfhRf/fjyYlz+3Br8P03u+bPiwpsGfl?=
 =?us-ascii?Q?pWLUmIb7bPojuIp2JiwFAnSNKf2+LUYJn8F5NYpvfBJjeCk7H7U/+7fnMzNZ?=
 =?us-ascii?Q?OoBK4dUHA1H1ry6IJq+9P2u/xbGilZ7KnCro32ScF+UVnVGvkcVemhGC2UUs?=
 =?us-ascii?Q?7S/hoF/zl16yl20nttU41IkJtH8Mo52uy5oB4nPhAZsSKaktEkjVEdQthrlJ?=
 =?us-ascii?Q?7CRvdMH6H3Bv5fbtbxgZ2UrNyW7GsF0cgWeO2HU9fJgRg6eEzsKtqmToAfZO?=
 =?us-ascii?Q?je3h9JB7HvrpHIjRKBNpexAyKt73t1CF4RZT5S6XGAAZNUk+Mc+yzf+KbvZ/?=
 =?us-ascii?Q?8toORoqSZ9d1Hfq45I7wO0rf2vqeQEBkej8kfcT5yXFqq46KqAcBEg4wWwAg?=
 =?us-ascii?Q?eGusB88PA9guQhgaJfIqDMYQGDaAcJHgWStpxbiI/UTEAA9ZGJI5fA5GNfQj?=
 =?us-ascii?Q?A5M4BnjtT5LdzeS5cwxgLuwgP2cdhWQhQrgxuksmDvilbWtj9PkUPgyz7sP8?=
 =?us-ascii?Q?8Phm4kto17vwvxlxQwK8o6z3jX3EWJ45CycTorQVhlU+WfBfg374wrPrV4o/?=
 =?us-ascii?Q?maSNwkj6jYE2sfyuCtRvI/rzfuMPypxqvNzmD2EGVDqQQ9hjiRMXiPqM7Iig?=
 =?us-ascii?Q?ylzVZbslMrXXNGmiua48zLYODXoDpC/1CKO8i/TAbGX0IxEfoX0lfa96xfCh?=
 =?us-ascii?Q?VYRfhkY0Zf9F6i4SJmH1BzhkcPI+YMzEtpZRjNPs95WVKjHaFBh2yBpE4CSe?=
 =?us-ascii?Q?OkBtGpO+e4krP1ZTvrsYCWxn17/8UU0WDsD/vrAkn0tdcV2gyvR0WH/iiAmO?=
 =?us-ascii?Q?W4AmwFouD0VDidjCwrouCgoydNgzYcK4QBh8Q32Ylp1uxNY76fD1GLmGl2TP?=
 =?us-ascii?Q?NZtmaAy7V+I6f3K5FDQKm5OaFb+T99u054Yhy/H8n2d4Rr82VGLHkU+pA8hE?=
 =?us-ascii?Q?WQCY460il5ow2DLct2qcTQe8cZwxLi+qmZ2HZ9NRyzWDxJjHD9jEpSXF9m6t?=
 =?us-ascii?Q?M82wOz3yOpcoWdG6VUFAo9YgSDp8bgB3ynr67Mve2CNDffe8mMcVY2UGAEKD?=
 =?us-ascii?Q?xZYAabqNTlyA/uB7RYGhU75ZHbOqa3rdDPaxkyLiMfLYp4bC4adwXlimMldB?=
 =?us-ascii?Q?aibA5AVZ4lFOROsMwCKXR4kboaz5HTDh4uw6f8PTrOLInhQWqrro99eaHmT6?=
 =?us-ascii?Q?1XVPwHML795Xl5vgea5llK5jmAETkcLlnHdPz1MsophyqwbWzpmOJoM+I5hb?=
 =?us-ascii?Q?5QMVaWBpCszQl6LSuqkrJfDhH8i7mzMJvTOWBPzl3njnO7uAI6U17PoTFxo7?=
 =?us-ascii?Q?Hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a602b46-3adb-42fc-f81b-08dd3b9ba159
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 10:49:37.1606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /kk7sAWuIrPZKxFJ7zi7zVTjOPKS9CH1W3Ru/WxQigUXxOLXpB1Yiec8uPhU3ktHyUHrIgqTZg9XISeikVqGNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5769
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

On Thu, Jan 23, 2025 at 12:41:26PM +0200, Joonas Lahtinen wrote:
> Quoting Rodrigo Vivi (2025-01-21 18:14:51)
> > On Mon, Jan 20, 2025 at 01:45:12PM +0530, Nitin Gote wrote:
> > > Fix all typos in files under drm/i915/gem reported by codespell tool.
> > > 
> > > v2: Codespell won't catch it, but it should be
> > >     "user defined" and not "use defined". <Krzysztof Niemiec>
> > > 
> > > Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_context.c        | 6 +++---
> > >  drivers/gpu/drm/i915/gem/i915_gem_context_types.h  | 6 +++---
> > >  drivers/gpu/drm/i915/gem/i915_gem_domain.c         | 2 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 4 ++--
> > >  drivers/gpu/drm/i915/gem/i915_gem_region.c         | 2 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c       | 4 ++--
> > >  drivers/gpu/drm/i915/gem/i915_gem_tiling.c         | 2 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_ttm.c            | 2 +-
> > >  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c       | 2 +-
> > 
> > Joonas, Tvrtko, ack on taking this and the other gt related patch from this
> > series both in drm-intel-next?
> 
> That's fine by me. We can always cross-merge if there is an incoming
> conflict, which is not expected at this rate of patches in -gt-next.

Thanks, pushed this series to drm-intel-next

> 
> Regards, Joonas
