Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2999C9124
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 18:52:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AF810E0B1;
	Thu, 14 Nov 2024 17:52:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JBY0IYsZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C99A10E0B1;
 Thu, 14 Nov 2024 17:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731606754; x=1763142754;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QHMmZLdZUyomvFV49ZIQk01L45+MC3MCBO+y/WpMAxI=;
 b=JBY0IYsZsn/usnsLDgY0wvKwgG3VGRMm+0+GZzIizJTX7Z1qLn9GwknZ
 CbWsDnDnJCSj429SHK7aYL3unCbESqjyeKal9cScyaAZtPag2qu3YkYLZ
 hSpNFMLC8nLDbCFz4zYlK7MO1y72P6Bnt4itETNCf311o6tGczFZwlUw4
 mBNCiXZGpEUpmg+JBnSSbncaAy8pNE+xdP+qXSm/+D3LNcfal9x4AUUUp
 al/x7mcSKknLC6/dFr7bVzy2/yYFf8gRTncwHQxY5Uc91MvaTfTGTVdvY
 EkV8n7GxLvTuuB5V9SADPLKvmD3+MH5vHXj2ztntjH4oYlQN0JG+HprmR w==;
X-CSE-ConnectionGUID: CWGr8SEhT6KiBU+evSl6Hw==
X-CSE-MsgGUID: vujnuyTmQTOrrgsyWpVAWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31478574"
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="31478574"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 09:52:34 -0800
X-CSE-ConnectionGUID: Y942wqzrS/Scubwe1QJ8PQ==
X-CSE-MsgGUID: LVkKlYhcS4uw0eTykvJNlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="125814979"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 09:52:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 09:52:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 09:52:33 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 09:52:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NgVIa5kkVQETHyqRYEZzyJyEuy07UyiyR3YL+jLdC2yiXiQ0Rf3dh9FTF9qtY8IX2WOSrp7nQ6mOJeXfUN5PLqfmLuRvmdbo8NiWCx4qfhIXBeYu6wi/vt9lSQDVrBVY5MCrgWPcn+O/UPydQhrxbT13B81HETyqm7EXhgPngWz5DygKjmq/RgV8SPCsChDiosfykZqoMCGy3dwgzgExTZIo41bcsGHwsqhwAdAqtVsed9Tc5ehkECgK2wXse6PHePNww7Y3akkhep/1Yan1tBDbM/cnvDO6YoIHNCjgD0b4khDn+vqZmUJCdEmw7Hxtae1j5jRrgBUEdTMnXKiyhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B1Mp+cWwZ7GSBimoqDIj73SD31teHN5ao40kSaVhq8A=;
 b=oxw9vQ3/W2NlvDojTGeBpEpArCNbrEo7KNWFqAyt4XNVsln2d8JEWHKTmLso9qXPtSGYu+TWHSVv4sFIQfoe3agcyauxVVYsQVS/f0Yp/A4JotgO2YrdRWIGylRFxX6uPG/zI8I+GjaEGqcvaldcUYnc/dYWwoNLNe+8wjvrWl6CrcV+X85NAUiO+uuAmq90dm1W5N1wVpbETUZQhRKMluf463qjZsw3R41DyTX6/5spZHTsjJzxHLCVh79qvuJC7htE9WFndRzeVfGcVvh39TPzZqsTHWwc11xTZAilDsNv7e6CQMQ0ttWnfSh+++WbefbKwzp/795yexDmEZpZDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7135.namprd11.prod.outlook.com (2603:10b6:930:61::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Thu, 14 Nov
 2024 17:52:26 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 17:52:25 +0000
Date: Thu, 14 Nov 2024 12:52:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/5] drm/i915/plane: convert initial plane setup to
 struct intel_display
Message-ID: <ZzY41udgvMJIqV9n@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
 <360fc078c5204f9199d31c207abc3ac3d9f918ed.1731347547.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <360fc078c5204f9199d31c207abc3ac3d9f918ed.1731347547.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0029.namprd05.prod.outlook.com
 (2603:10b6:303:2b::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7135:EE_
X-MS-Office365-Filtering-Correlation-Id: 4766c917-5095-4680-9b32-08dd04d51948
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BucuVr9IEqrg4MADBkGD8mL0mUqfck6l8tMGvRgHKCVwv7m4iQmqiYiHdm1U?=
 =?us-ascii?Q?xaieBDfIsAe3IlVR/0WNIsU1KF35qroRbj3CllGOmkMiFGyYrlJScDyU5wYw?=
 =?us-ascii?Q?oS6ZhYxPkCUw2JojqTeThpWi/3UM9SUkwQwXxlo4eixS1KIjfLfuaw0PknSa?=
 =?us-ascii?Q?N+pufG/hl1R4KkoBEhHcjSDuJNjs6M0uchtae5Y7mxuw8qSVjVVAD7AwQ+Xk?=
 =?us-ascii?Q?+l3sgyx6ZEmK9qaT9/+oSOM5qdJ++Z12395cNmvqBqH790/ZIT9Ut/2j0ynk?=
 =?us-ascii?Q?Yogapl3IVBxJp9vaC8Bh60YscuOHj9v22bcatzkchLwYRr4szST3nhAlqDPU?=
 =?us-ascii?Q?yJoBupqD+pYaVVp6PTjdLHv1C5L00aX4ZhBlO1E4TiMs22K2z7KS+FD8+wsG?=
 =?us-ascii?Q?EzhucB8K77u1an0m7sJEWyNPZwZyWpeCNEn17WImxC0FFDIVzajajrN8+nuZ?=
 =?us-ascii?Q?SJxP9QvgKVG8DgUks4w0LrgBEszsdfoUf5GLUdQxMEjxtPBKWtwyfMF75gmF?=
 =?us-ascii?Q?xg9msGINeaYTgOyotaJNOasGK7PwDE4CHhKFyZsDcIcWQXs3cEwlllkYgmaw?=
 =?us-ascii?Q?8Vzl4QxPLfoWuqXvS9b6TrGEo3u22rM9LumuCnOCr0mxYVowhWEuPgExV8/u?=
 =?us-ascii?Q?/3bTvSCNpwiWL7pMJLt0vXYgZY4hygMLmBPs78bOIu1PPNTkCMGY5w672KcQ?=
 =?us-ascii?Q?B9rMvFyo1tHh6BjVFQ1uaJW1dAIb0YNKLdOHtQAL+qhd1T8LTMbVZCG5Wx0w?=
 =?us-ascii?Q?T+dhKfjW6wAZxX4itYEoixnXWiuj5aNH5Hp9sioj/9fwF988X50gpGW0Zo8N?=
 =?us-ascii?Q?s9SsLdP4JCwhSYWpGQNMlhL4HqiwMu17JkxQ7u2wfc70UruSvCsjQCJLGD20?=
 =?us-ascii?Q?KCOWIdhkP8ZxA1THL4oNm1VfYkNsIiVedCgwfGjQqvD5AYG3+Op76PJE2xmo?=
 =?us-ascii?Q?Q6Gzm65OOFJ3QbevtjplUecIjLB9Md9caOgNkYq09QHP8FK+/UWOfeRWQmC3?=
 =?us-ascii?Q?fc7wU/mJrpRGGGTRsydeANMUHZ4Y6sMPKOKPsELJTuryeXRMPsxtpwKSAmSs?=
 =?us-ascii?Q?DtMHJ3ffHYw7DuWNV1V1LsPUhpyQlw/m76VYnVUakJ2kPh/0h40cLTMyAD3n?=
 =?us-ascii?Q?oNSTsdWlXznXmPGArbTJ1taqcgF/9E6R4SLgFKpsfFEZ28wMbUNZ2vemnjvl?=
 =?us-ascii?Q?VKDwgNAuw+uLiQ2NrfRUvlUas+ASF6yotLac/vCmLIEuNEZ7nIqwLGWkVtTa?=
 =?us-ascii?Q?uES5NAKg5nq5c1NZjcJtvWA4SsWLW1x40UpipsM4WsQgdnQ5FCxN2pLJGHLK?=
 =?us-ascii?Q?uEk0DuTY6uIM5GBxcTT5gCCy?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wNgTb9EVGh5LO/KoDFTAHAAXLWEzITCKJfk1ftZrSbQZtrTdMmJPzvjKTGF1?=
 =?us-ascii?Q?4WAlTFD8GNoZkUHEmaSAXtC7VIj+UDu6hRAKbqBTpI0PiOl8VkH5iIctPxE5?=
 =?us-ascii?Q?0qJ/u0fFoQ3eL2ADHTNJTMut+Ya3SmQJykqJQh8vZvqvs62LR/hTcqJYpgaQ?=
 =?us-ascii?Q?aE1wTSOhdXWkPo++RQfvuRHffvJIztcrXA6ubU8fiQwCFmP5pj3JM1I8NEeh?=
 =?us-ascii?Q?kuWffCzUAQ9wC4pXf5Ds/o3auD7mnKavimI1guKFzVkbF7VZQ+iqZdRi4VeO?=
 =?us-ascii?Q?fycRl8UrN/4geBWQF45gAkTUTOyP331sVURFHdZ2Uid02uwTQPdoiMZsC/18?=
 =?us-ascii?Q?RFsRJw7AcMja2cCvJ4PL28gAVoEVnKRslCZ6335xHm0W8kJl9HkOixsC5NUZ?=
 =?us-ascii?Q?dY8zLwuu3EfA/m/VEXTUYk8AXW8tKdS40WmlSVEvgXtkAeSewZXHwXr40fKv?=
 =?us-ascii?Q?w96BqV+kCReFZQelQHqbofwIpxP4iNyYGCD1DxbMMYPSbe0o49Vg9iEkr+0x?=
 =?us-ascii?Q?1Nnp412QalWi1VD1JgwsYLokVBlZ1RGz2ISi5cAv9gurhq78LfYLJcXXsOLc?=
 =?us-ascii?Q?pgfJPKaTx4m8vbkjdAYZ4R6aX1lSYimSid/u8CaPlB1j8B2oZzZxPqQDlF/S?=
 =?us-ascii?Q?93VsMVH6mBExapJ5v/UrgUWm3STTs2qOS9wr+veP2iGxpHeE808G78jJChPI?=
 =?us-ascii?Q?2q5/WsZ89WanI4dSLSUxcQz8JUy5MsJlx/K0XheNQeb5gQ9bfkG5bNBdGRug?=
 =?us-ascii?Q?6ZdWVonqHl76YbTIRGPHOre4WA2JlxfI/mE+LSoLoC63CNxnWnMeI4852OZ6?=
 =?us-ascii?Q?myS/4ZSZEkcYjh9OsFGZL5WjK73ZOa16VT9M730sr+pu0ppCMtM52NOULUvt?=
 =?us-ascii?Q?gIR4d8d429ESi17Bzj9pCjN/dDY4sS5gwgEvRZQsGcvKufn384W1XP1Ihz5K?=
 =?us-ascii?Q?0OzG0+/1gcaFX7Qj7g8es/RcMOHuLAQAroPOjx84sQm2+CbnHUFOPaa2WFKJ?=
 =?us-ascii?Q?MvtqVoQd403JfpEAlT/zMXFGnNEqLZ1V4rfnXEmRaPXGVSydr4kPDOVj06e0?=
 =?us-ascii?Q?RSd4g/L5V9TndPENkxns4EgSo0h33H/1wIvj1FZgPcBGMmZJ34JDAqQmoPx/?=
 =?us-ascii?Q?wi2X6HT98yx+tOT9rDXtSTaMHqmC+P+iNYXIzaYzSoHvnO1dDYLOWp+GWkT1?=
 =?us-ascii?Q?4CFRM8SZ77QRRjAIoDXMxT6+7efiAEroVPeq2d3h7YAUZiIC0yO+W5E2eIfA?=
 =?us-ascii?Q?CZ81BHR6UtKkQvDYOfwj4gdO14nMGIvWewlVlQxZOmXevQCtbyATM4cMftgY?=
 =?us-ascii?Q?9Ijr4nlv2rcx9o0APEl9iBQSPwnBsy3py1RqVowdWAHFG9yZCqhjUjqYHaYZ?=
 =?us-ascii?Q?U+SiBmxy01/chtv7WGX/jc6ATbV6x+iPkY4rHHudzQVPGczba6iXkaZOmgN0?=
 =?us-ascii?Q?mIr7xaSJxyoQ5vt/p/llgBcLAJOej7AIyJ6pg3eN/XIFQFUEAgwXfFznKjbo?=
 =?us-ascii?Q?1g4LpFdwgj6e9aO8eRUuim/8kXutPhcD2eKEG+3uOi66TBcINRSc0j3nTlIC?=
 =?us-ascii?Q?hGgHOMv8Uce40IKxI+9aGqBHOcUMpfaoBKaiit46ONhUK7659VSy0+2RoGKR?=
 =?us-ascii?Q?nA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4766c917-5095-4680-9b32-08dd04d51948
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 17:52:25.8061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K3gLLTjSYr8YpeOhZwP1TYFoZ+w0IJFDD2xUNxXtgUzGRIlBz0zqMRX51a5lc360axTWziSRomIJZ6kaYWHUyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7135
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

On Mon, Nov 11, 2024 at 07:53:32PM +0200, Jani Nikula wrote:
> struct intel_display replaces struct drm_i915_private as the main
> display device pointer. Convert initial plane setup to it, as much as
> possible.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   |  2 +-
>  .../drm/i915/display/intel_plane_initial.c    | 56 ++++++++++---------
>  .../drm/i915/display/intel_plane_initial.h    |  4 +-
>  drivers/gpu/drm/xe/display/xe_plane_initial.c |  8 +--
>  4 files changed, 37 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 5983570b510f..8daf48d2ba7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -472,7 +472,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  	intel_acpi_assign_connector_fwnodes(display);
>  	drm_modeset_unlock_all(dev);
>  
> -	intel_initial_plane_config(i915);
> +	intel_initial_plane_config(display);
>  
>  	/*
>  	 * Make sure hardware watermarks really match the state we read out.
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index 62401f6a04e4..6789b7f14095 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -20,10 +20,10 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
>  			      struct drm_framebuffer **fb,
>  			      struct i915_vma **vma)
>  {
> -	struct drm_i915_private *i915 = to_i915(this->base.dev);
> +	struct intel_display *display = to_intel_display(this);
>  	struct intel_crtc *crtc;
>  
> -	for_each_intel_crtc(&i915->drm, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct intel_plane *plane =
>  			to_intel_plane(crtc->base.primary);
>  		const struct intel_plane_state *plane_state =
> @@ -48,9 +48,10 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
>  }
>  
>  static bool
> -initial_plane_phys_lmem(struct drm_i915_private *i915,
> +initial_plane_phys_lmem(struct intel_display *display,
>  			struct intel_initial_plane_config *plane_config)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
>  	struct intel_memory_region *mem;
>  	dma_addr_t dma_addr;
> @@ -63,7 +64,7 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
>  
>  	pte = ioread64(gte);
>  	if (!(pte & GEN12_GGTT_PTE_LM)) {
> -		drm_err(&i915->drm,
> +		drm_err(display->drm,
>  			"Initial plane programming missing PTE_LM bit\n");
>  		return false;
>  	}
> @@ -75,7 +76,7 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
>  	else
>  		mem = i915->mm.stolen_region;
>  	if (!mem) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Initial plane memory region not initialized\n");
>  		return false;
>  	}
> @@ -85,13 +86,13 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
>  	 * ever be placed in the stolen portion.
>  	 */
>  	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
> -		drm_err(&i915->drm,
> +		drm_err(display->drm,
>  			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
>  			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
>  		return false;
>  	}
>  
> -	drm_dbg(&i915->drm,
> +	drm_dbg(display->drm,
>  		"Using dma_addr=%pa, based on initial plane programming\n",
>  		&dma_addr);
>  
> @@ -102,9 +103,10 @@ initial_plane_phys_lmem(struct drm_i915_private *i915,
>  }
>  
>  static bool
> -initial_plane_phys_smem(struct drm_i915_private *i915,
> +initial_plane_phys_smem(struct intel_display *display,
>  			struct intel_initial_plane_config *plane_config)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_memory_region *mem;
>  	u32 base;
>  
> @@ -112,7 +114,7 @@ initial_plane_phys_smem(struct drm_i915_private *i915,
>  
>  	mem = i915->mm.stolen_region;
>  	if (!mem) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Initial plane memory region not initialized\n");
>  		return false;
>  	}
> @@ -125,19 +127,22 @@ initial_plane_phys_smem(struct drm_i915_private *i915,
>  }
>  
>  static bool
> -initial_plane_phys(struct drm_i915_private *i915,
> +initial_plane_phys(struct intel_display *display,
>  		   struct intel_initial_plane_config *plane_config)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
> -		return initial_plane_phys_lmem(i915, plane_config);
> +		return initial_plane_phys_lmem(display, plane_config);
>  	else
> -		return initial_plane_phys_smem(i915, plane_config);
> +		return initial_plane_phys_smem(display, plane_config);
>  }
>  
>  static struct i915_vma *
> -initial_plane_vma(struct drm_i915_private *i915,
> +initial_plane_vma(struct intel_display *display,
>  		  struct intel_initial_plane_config *plane_config)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_memory_region *mem;
>  	struct drm_i915_gem_object *obj;
>  	struct drm_mm_node orig_mm = {};
> @@ -149,7 +154,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	if (plane_config->size == 0)
>  		return NULL;
>  
> -	if (!initial_plane_phys(i915, plane_config))
> +	if (!initial_plane_phys(display, plane_config))
>  		return NULL;
>  
>  	phys_base = plane_config->phys_base;
> @@ -168,7 +173,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
>  	    mem == i915->mm.stolen_region &&
>  	    size * 2 > i915->dsm.usable_size) {
> -		drm_dbg_kms(&i915->drm, "Initial FB size exceeds half of stolen, discarding\n");
> +		drm_dbg_kms(display->drm, "Initial FB size exceeds half of stolen, discarding\n");
>  		return NULL;
>  	}
>  
> @@ -176,7 +181,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  					       I915_BO_ALLOC_USER |
>  					       I915_BO_PREALLOC);
>  	if (IS_ERR(obj)) {
> -		drm_dbg_kms(&i915->drm, "Failed to preallocate initial FB in %s\n",
> +		drm_dbg_kms(display->drm, "Failed to preallocate initial FB in %s\n",
>  			    mem->region.name);
>  		return NULL;
>  	}
> @@ -254,7 +259,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	if (drm_mm_node_allocated(&orig_mm))
>  		drm_mm_remove_node(&orig_mm);
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "Initial plane fb bound to 0x%x in the ggtt (original 0x%x)\n",
>  		    i915_ggtt_offset(vma), plane_config->base);
>  
> @@ -271,8 +276,7 @@ static bool
>  intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  			      struct intel_initial_plane_config *plane_config)
>  {
> -	struct drm_device *dev = crtc->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_mode_fb_cmd2 mode_cmd = {};
>  	struct drm_framebuffer *fb = &plane_config->fb->base;
>  	struct i915_vma *vma;
> @@ -284,13 +288,13 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  	case I915_FORMAT_MOD_4_TILED:
>  		break;
>  	default:
> -		drm_dbg(&dev_priv->drm,
> +		drm_dbg(display->drm,
>  			"Unsupported modifier for initial FB: 0x%llx\n",
>  			fb->modifier);
>  		return false;
>  	}
>  
> -	vma = initial_plane_vma(dev_priv, plane_config);
> +	vma = initial_plane_vma(display, plane_config);
>  	if (!vma)
>  		return false;
>  
> @@ -303,7 +307,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
>  
>  	if (intel_framebuffer_init(to_intel_framebuffer(fb),
>  				   intel_bo_to_drm_bo(vma->obj), &mode_cmd)) {
> -		drm_dbg_kms(&dev_priv->drm, "intel fb init failed\n");
> +		drm_dbg_kms(display->drm, "intel fb init failed\n");
>  		goto err_vma;
>  	}
>  
> @@ -410,12 +414,12 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
>  		i915_vma_put(plane_config->vma);
>  }
>  
> -void intel_initial_plane_config(struct drm_i915_private *i915)
> +void intel_initial_plane_config(struct intel_display *display)
>  {
>  	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
>  	struct intel_crtc *crtc;
>  
> -	for_each_intel_crtc(&i915->drm, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct intel_initial_plane_config *plane_config =
>  			&plane_configs[crtc->pipe];
>  
> @@ -429,7 +433,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
>  		 * can even allow for smooth boot transitions if the BIOS
>  		 * fb is large enough for the active pipe configuration.
>  		 */
> -		i915->display.funcs.display->get_initial_plane_config(crtc, plane_config);
> +		display->funcs.display->get_initial_plane_config(crtc, plane_config);
>  
>  		/*
>  		 * If the fb is shared between multiple heads, we'll
> @@ -437,7 +441,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
>  		 */
>  		intel_find_initial_plane_obj(crtc, plane_configs);
>  
> -		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
> +		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
>  			intel_crtc_wait_for_next_vblank(crtc);
>  
>  		plane_config_fini(plane_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> index 64ab95239cd4..6c6aa717ed21 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
> @@ -6,8 +6,8 @@
>  #ifndef __INTEL_PLANE_INITIAL_H__
>  #define __INTEL_PLANE_INITIAL_H__
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
> -void intel_initial_plane_config(struct drm_i915_private *i915);
> +void intel_initial_plane_config(struct intel_display *display);
>  
>  #endif
> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> index 8c113463a3d5..2eb9633f163a 100644
> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
> @@ -275,12 +275,12 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
>  	}
>  }
>  
> -void intel_initial_plane_config(struct drm_i915_private *i915)
> +void intel_initial_plane_config(struct intel_display *display)
>  {
>  	struct intel_initial_plane_config plane_configs[I915_MAX_PIPES] = {};
>  	struct intel_crtc *crtc;
>  
> -	for_each_intel_crtc(&i915->drm, crtc) {
> +	for_each_intel_crtc(display->drm, crtc) {
>  		struct intel_initial_plane_config *plane_config =
>  			&plane_configs[crtc->pipe];
>  
> @@ -294,7 +294,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
>  		 * can even allow for smooth boot transitions if the BIOS
>  		 * fb is large enough for the active pipe configuration.
>  		 */
> -		i915->display.funcs.display->get_initial_plane_config(crtc, plane_config);
> +		display->funcs.display->get_initial_plane_config(crtc, plane_config);
>  
>  		/*
>  		 * If the fb is shared between multiple heads, we'll
> @@ -302,7 +302,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
>  		 */
>  		intel_find_initial_plane_obj(crtc, plane_configs);
>  
> -		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
> +		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
>  			intel_crtc_wait_for_next_vblank(crtc);
>  
>  		plane_config_fini(plane_config);
> -- 
> 2.39.5
> 
