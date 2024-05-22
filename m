Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C878CC780
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 21:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4DCC10E30B;
	Wed, 22 May 2024 19:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mU5OA/2H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C5210E135;
 Wed, 22 May 2024 19:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716407613; x=1747943613;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jxYW0o32W0h7pNdmwBJ8vm47i08VNy1L8CziezMxgIM=;
 b=mU5OA/2H2Ci2D3G/u6zVxWD9R3tXQAZU9/OMBPCbZ4pz6sC5aOvHKn05
 irTbOzZ60avUODhedrMqHacI6aQmhZwakKLMHxCzJINt6U9Hn3IC10xEL
 vjua+1+6t85CF8XOuKAv/7AZneziXwcKoo47jqzpMcp9BvII8S8R0QY5b
 EGBRr3pIGy0NSXyjRCauL73TsAagCFAi/lOPlVSDdcf++u+E9V3EfWWP+
 YU4uohfPsxj6iK71szsLI5LBu2lskYLpAJO/OinCWk//EJflLSr1tnzCW
 L822YERY59Ln0IaZOCyT3bMQn5AJbG5zZqP1EOZ/aNMmA+G6KRc6Ywl/S g==;
X-CSE-ConnectionGUID: W2HKoWPySCOUFgAPOD1NeQ==
X-CSE-MsgGUID: pRJ36TiKTWO+IqW7QvJEZg==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="23823019"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="23823019"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 12:53:30 -0700
X-CSE-ConnectionGUID: gFU5gX/eS0uYKxnNRzZlrw==
X-CSE-MsgGUID: N7dxAQ3ARR20GxqxDnTOnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="37885712"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 12:53:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 12:53:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 12:53:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 12:53:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6lqA46kUHBAvRsCO/Tk5pmAbaXgy0TVYBuRkmnhMVnADWzgiZw2SG5JgAhtI5/YCe+/Cy5pRQ3x2bCENh7vlHzc4zJNLdNOjtT85hLn2GuAqC0v/RuBY3gdlWItXzJnhd3f2iWkRQHj34LE9UBvglmM9e/FQNgcuBEUSFT54aIpGdcxr4vYnSMMSB89rjabeUm4iN2jyrSqQl9/UuNcVkTz3IvxPs99y1S0zacusOE6C5ZaymvF66I3FqxQtJ6Psokvvy7ZJj8A4GOE5OA5f7w1pjrBls9a+jlaoblOh9QEGpTX84P9y45cD7jWedLKgbOue3rjieCqxX/1srAVXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XPnbFjLmF5nr/n0JxddePiqLUswyZlAkNQPHpgZJ9ps=;
 b=fwbE62iMvx9Ruvb3z9jP3oCLkg70WyuMzuacGInqpwjpdj8qcnrXnJuBY72ZqJtQ2nvFzqCXg/F3/XQY8dlVEI7miKNNz0iwB/H7KQI0d0GQd3FdNzAZateVNccbV0iXI68NjdAiQRKwEiI0cB9ZoiJKqmdKbYLs+EfbvIxOLmE+zH21/9wE3vKDgcnNxuz+cWcrQev7TjOs7CbG9YUkZJdGNtAqOjXlEEIMCwSLOULIlfBXtndLV3XGO/TgFUy0/TUsepsoWDRkbvZ5GG4jvqELEkB+4pFuMu8EHEBl5gfCra+rcNpz9zgrkUQQ7+n8myo6hVgyMDdimQyuKpZzDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA0PR11MB7955.namprd11.prod.outlook.com (2603:10b6:208:3dd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Wed, 22 May
 2024 19:53:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 19:53:26 +0000
Date: Wed, 22 May 2024 15:53:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: move params copy at probe earlier
Message-ID: <Zk5NM_XhBSjF3hFG@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <a0c3e74d824d8a7c02fa1461c3d5518a71171256.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a0c3e74d824d8a7c02fa1461c3d5518a71171256.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA0PR11MB7955:EE_
X-MS-Office365-Filtering-Correlation-Id: cad8db43-3ae7-4c1c-19f9-08dc7a98d85b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bmsRDZ3GpA6fPT5SkuVbSpIBDngONeJBExIgxoNikAaKUixDw/siAvgANVKA?=
 =?us-ascii?Q?+Q/yYeEGXGhDrOdyhSghtOiepmVkwncTORH9SBwfDjfnzCBKpyNp5vXQIlGf?=
 =?us-ascii?Q?viclrV/+Dd2Y9Jb124ILqfh+S9JULbm7RXl8baEpExYg0KixsuWeY8xxXo1E?=
 =?us-ascii?Q?45h0BYLLNeVhgtyzwv2i/8J6yYQ/mf05fXDeg5n9ZzPX2MKie+oEpOaUcE79?=
 =?us-ascii?Q?RwmuzKbiZmcPcwquJAtSnQQg72pRwdD+1Qou8sydWBe4Y+ajW/CH4EBrlZWy?=
 =?us-ascii?Q?Ej8ktDeR/B4eg0ISA33tt7OAxaLu0Z6LQNiBwrajbhsjIV+gEB2f64wYBxCa?=
 =?us-ascii?Q?89T95W8JbqFHISKN60cecZKaiboUpeeKcq/s/iMuCEQxkRSe9w5UfKrhqX0h?=
 =?us-ascii?Q?r8u72QaIBGJ3TO6SXsKE6dNsdw9QIAPN4LfjAu7ydcSin+BEvIWuR08h+s8t?=
 =?us-ascii?Q?zNiC4y241+qIyg6pTOlODjGgk3QSItuwB+ICUVOcpD1ogx8l7NCsYTx2G5sr?=
 =?us-ascii?Q?Lw1IcDG+ixsrFNSGw3zvFgJLo+iBCPXV7sQh5XE26pWaQWOz5nF0goySkybc?=
 =?us-ascii?Q?mw5xPZaAmT44uCpQFW25H/iBG7HlD6gw5ThECRF6kCZ8UlG7FkOy1BNXp1by?=
 =?us-ascii?Q?7hDyEVZPQnuwtSonRoYcsGJgeZAD0WwtgTDMs9Z3r5uVzYI44OhUf0FMCAeD?=
 =?us-ascii?Q?JaJ6YCND20OHMgKZZ6CxbWnpSD4UzVhjPbmLhQrOh+VpjDOsh7oCm1xtvhjZ?=
 =?us-ascii?Q?uURlrc77J89ZYMGjFj7AMC7ySgTZ/U2PHcGFrs/2uLmkRoOV/GY2U5fZ1zm7?=
 =?us-ascii?Q?B2GvXnpFeZw/ZiIWaXOKhJTIaVlHMr7KwJoADhHUU7L21RK0MUYcuDgI+7V5?=
 =?us-ascii?Q?6Wh8PYV5bm7Pknd5OFPya/HwSpp1z52T3MvgHTpsKR796vFfmh+qCAADNDn0?=
 =?us-ascii?Q?yw/qaYG+Ggbj/19RJv+xXW0i0q/vsNBCqX2rHvjlCVBQK89sGCfCJGoWg85G?=
 =?us-ascii?Q?7HllZCDFi1qXXlWKZtPZISAQUtDX5w0rwMHsYetaNyBI3mndCQHszahQQ90+?=
 =?us-ascii?Q?QV+lcMwXIiOPWQ8xb6M4IRhlAsusXNxTuaF7aS5CpEYNjUFl9NB/nJwlUw9y?=
 =?us-ascii?Q?KW9OzfLnlG9dW4wIRSxwh2jg4dAO+ich8xd0/x0JCsjlQmKxiQwx5w5RtcIz?=
 =?us-ascii?Q?lDNhxDWUrsN53lhNTL+ZAlK6t/WHye0oBnPoBA/bwgLXjRYC2QY1BLiChzJ/?=
 =?us-ascii?Q?BNPiJNodrUFt35YOVV4Uyk1bROupBmYVm4bZipVThA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J9gG/xL1pI7jgxStKA0MxNdIBXGWKXI+XVsX0OdIyBNp9j0MqKzmZFmD11zm?=
 =?us-ascii?Q?HAHoXOvbfdJr+ih/vZkSwJHzJrlm0qyAetdM24/Q6rwKrzByNW5gn/256uYi?=
 =?us-ascii?Q?iaHoq0C5/EVb35/ML1raGo5wUzETrtIz1m9S01jM9UzecLGXtu2q6HpG6/Is?=
 =?us-ascii?Q?cnMb5MH7/Zts5quT9DISElQxbu4qmMKbxWYuU7uiFdmDl621hdUCdYRxNs9h?=
 =?us-ascii?Q?/c2WCQvracw7v6cAPS6Ph1en/MrH7+xBq06ltYX7Bk4UxfL+XPtz6poQy7W1?=
 =?us-ascii?Q?xwuzIDD8xHJSBUmxQwaVVXMhXqmpZXtA9Iya+UXN2LrvfuDS+NY2QkDhcjH/?=
 =?us-ascii?Q?AU+wdI6KWycz+Ld8Cy7OE8BE7VKoR+qQ7cUoLerqSfON91sqAJXV+HkwOjQM?=
 =?us-ascii?Q?ek6wU/w7nO0WNF5AJRKB1Z7CAkN3/N10A8tTmgC0XwBgBrBqoCemKjH/Egoy?=
 =?us-ascii?Q?kEu9Ie/kAGyfwSQIKqHZTcPz6XRLuvWWvSvpS7b2CSvnK/NkB8KZ3LDJqMBA?=
 =?us-ascii?Q?ImF8G9Xt1uzGHHr6PHHlmuuaL3TJbx2GdXrQRhdYWZ0ZeHmiFVpni+VEdaVl?=
 =?us-ascii?Q?MbuYYKJCwGywyYtBZh8eQPNRYGGAgxREcqz1/pIG25eU/PRl5zZnc+8SVT+o?=
 =?us-ascii?Q?h3PfzkuUOoepqpC8j6Fs4EFcjfuCyMyOAo/uSvRro+i50KNsp4HOzFD8fG+V?=
 =?us-ascii?Q?19VXQ6rb27QYmV1+YMKrhQTzIn3je+9bUlcvzjF5B0tjXsCOdrl1fyXRp6RP?=
 =?us-ascii?Q?iUPGQ8O3pxuvPZ5hkPggekKSnwjw+T6/nim7+P0om1ijBkGPo/z3GQzE8Voe?=
 =?us-ascii?Q?qvMp4XTPmgZXxtJEvjXgVjKZrbxv3DlsKD9/J7yvhhmlvFrb36iGDPjs/Qi/?=
 =?us-ascii?Q?qBmAO+E5X9Atp+W5lgw1mqcgZqFTEA3uO7VDvT3fG1pZmjq4qvGWHrgUI9S8?=
 =?us-ascii?Q?P/FEFBAN2O3Fk2Ppyy4JQ/xcOKh/ySVD5WWKT/oZmfKJxkxys3gY/wHaEOaW?=
 =?us-ascii?Q?b49H9LCrdXBFzyCxCCCG8fdn0W+pSyHBPe9l12gRC1ELdxGygMBWZ36NrrOP?=
 =?us-ascii?Q?SXrQFZQGMJV7qeELeXor2OjcJRmXkHh368wTQlSfCqixNynVx1WdZOjANcpC?=
 =?us-ascii?Q?bqGQ3tQza7h9d5pZ4r6UEaHE9adQ/rS36TU+bJn6ocDYoOCSxdXfA8oGMlrx?=
 =?us-ascii?Q?hkrrB48f6yAwIdljvm364E4EBbkxCrP1JRa40+q1SU2btCpVckqCwT9wV8f+?=
 =?us-ascii?Q?RqKK+Z/6bPGCqBAdkeWRzxlK+gTSyebACI9xSDWV9CrjADCbOIkgXcY+OfYm?=
 =?us-ascii?Q?hTPfvtXPRupqIWWBtWbbTjUpsnpeZFv8IWqkU12nqisBhV68MUTKxrED4d/O?=
 =?us-ascii?Q?lZL9Lh8tNOEIUpdHfG1slOHMYx4ANmrXJMffjFPZFTOKD8ysT9GsAygL9cDk?=
 =?us-ascii?Q?K0jhbyG763aNRuxI3zR6k2PQQAdDsbxP3rCldmEDQpQX6hMmaGiXA/x9LaEz?=
 =?us-ascii?Q?8l9CUb0PUn/XRQcAKTKsz6l3EXJ+MPXhEzBz3SmcdETXUci8MTMf60OZ8fkW?=
 =?us-ascii?Q?3NpaxAAE8zLfHa6a2de8avo56D6IvodEfPFYvMOqSVUTDFHPuWV/eoK8Nojq?=
 =?us-ascii?Q?vQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cad8db43-3ae7-4c1c-19f9-08dc7a98d85b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 19:53:26.5786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6/W7NGhfdzn4VXkbtMF5BWl/LD7YbTPHdwaSzCnDXoR5h0ZbY19sGLAhuSCgtiItmhux6lwCwSWK0S1DU/+iOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7955
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

On Wed, May 22, 2024 at 08:33:38PM +0300, Jani Nikula wrote:
> Copy the parameters earlier to make subsequent changes easier.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index cf093bc0cb28..9edadc7270f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -936,6 +936,8 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	/* Add drm device backpointer as early as possible. */
>  	i915->display.drm = &i915->drm;
>  
> +	intel_display_params_copy(&i915->display.params);
> +
>  	if (HAS_GMD_ID(i915))
>  		info = probe_gmdid_display(i915, &ver, &rel, &step);
>  	else
> @@ -952,8 +954,6 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
>  		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
>  	}
> -
> -	intel_display_params_copy(&i915->display.params);

I confess I got lost on the macros there. But from what I could
see, none of the things in between these 2 points would change
anything related to the params that are getting copied here.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  }
>  
>  void intel_display_device_remove(struct drm_i915_private *i915)
> -- 
> 2.39.2
> 
