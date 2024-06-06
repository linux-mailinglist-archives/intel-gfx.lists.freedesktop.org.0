Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB708FF17E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:02:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A9D10E9E1;
	Thu,  6 Jun 2024 16:02:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TSF0yfrJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC5810E9E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689742; x=1749225742;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3Y1oitKd4dypsbycBPDbx3347WsVWwPXQldS1m/M7Do=;
 b=TSF0yfrJiJdTl7qhmX8gj/aPV54QRi0ySxSdo+GHK+miXmgRGYhSADmF
 qtQhslNo01zUjHXONlyMKgD0jBwjEoWfqZJdZukRf7Kwa3ub++ZDXfZl8
 +Qc1+wbhbqXu4hZIcaKszsW8ELRyBXKYsFJNbSwefxCU703z5gsEkf/g8
 8Oz4Jnq4ywnRQZbpXz7jZWvO+vINH2vrQz8zN/mXusK3hxqXSFRRyolIX
 dSt6VTV28z48/FqqLk5cEU0vnldO9AW9x0WVbWEJ+zeHrfQmPC2FnC5Ht
 Me9BK5DWZVvo41vy0A8tCaO1nYz5IrAuPl/Db3upHDVDz02s5i09M1Sp5 w==;
X-CSE-ConnectionGUID: j8HD8NzwSVO5PcoAG7GAPQ==
X-CSE-MsgGUID: MF13U5IDSTKTqnTBd3lJPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14178117"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14178117"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:02:22 -0700
X-CSE-ConnectionGUID: 8gSiX/pkSp+ao+pGZsaGFg==
X-CSE-MsgGUID: a/d0gReITpGqKqN+7OurUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38691189"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:02:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:02:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:02:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:02:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:02:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3rKk5Y3or7AZ1G0V8xdHAjOADk9UsLgtWC4RjXTZ4alO749T0FE+ysoMv72AauL4dynhkzpvddwdK+E2m21yzNQZVzv3MaWVpWsaGkXTftst/GlQ2v6JWrHGBkQK2fgD5rfq9I1cbnXjhniklFgO5nLyxsxJ+XQ9Se32qxIknTF3L1lVoO3LFJN2yv/qxlN+DwrXKAn35K9D+gfdQ44ud3HmkQAo2LkL/1WKRl+6jEBlUYDk6aliQ9N26Yw0beuTU3kN2VgoU94zjjHESz++uJ9b9tPFkM/raVjPt1Imq405QcUPDts5NkuGoVAWqV9rXPPOfeHOtE0uBz6kwx4Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BmoOrrAGKTBuveLyDdABM9PjPyBioa1Nqvmq44DwXk8=;
 b=ma9/Z40pk3F+kCTizOkxWjNdqpfd6j/2uJJHVM16+SGE7VNrVdsZh1aDCiRwnwUMmeL14o+CiZAIQS14wz78lVAXmVnS6H0J2fkindbDfaVtUs6igfTW1j/5BdKmqwJRSXG1VvlDbuChbFyVTE37I2wv48SvE9GkE+79VfRdAhArPTLKZMqhRB++nUf6uAnKnhq7lELVt1KreNCzaiegYO5gv6nA/IKGEtvSxbEs1fstscl5KFWFOWvEn8XLN5uj63Bq+GC9cBp00J7ikvf2NopnQt4CZqaSa2l5glWFkywrTFJDyq+ksLws6iyS4Fj0AegmfYHPk0ANyjtPRJQsvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6825.namprd11.prod.outlook.com (2603:10b6:806:2a0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Thu, 6 Jun
 2024 16:02:12 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:02:12 +0000
Date: Thu, 6 Jun 2024 12:02:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 32/65] drm/i915: pass dev_priv explicitly to CHV_CANVAS
Message-ID: <ZmHdgeYlHsrKr8KM@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <a48c7984a14412ef74af250d5bc2ea9097aa2222.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a48c7984a14412ef74af250d5bc2ea9097aa2222.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0358.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6825:EE_
X-MS-Office365-Filtering-Correlation-Id: 45638ba7-301d-428d-97cb-08dc864206b4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pq3dCaEjmKYnZIxkNJS6YjftzlCDr7j+xIDLhTVQGOSORtZpZJUhS1y3wCYe?=
 =?us-ascii?Q?CWYN3FF4OTpyFV6YA07uKLB9fFXrNHoM1OtzfekbuluzsVTCtdI6IHY2Iu+/?=
 =?us-ascii?Q?uiGyr2B4EafT845fiWppDnDvHhrCjEQ9fI6AHfqKPZ1aiKjsfs4dPq8X3den?=
 =?us-ascii?Q?aIcyhiTRsfHvuAjBzHa9NpWHWOD+S4sH4DoDRKLNjN9Sav2rtt4EgIVQA/jk?=
 =?us-ascii?Q?vwhnfQeBnuaMfGhpRXTrCm8mP40qjNV2921G4GTyrYajGnISK73OfmFVyMhA?=
 =?us-ascii?Q?IgDkm5x5r5OJPXalDAKmn1wAFllpQTXhiJdHa0PHqzv2N0sQQ4hFnucfF+xN?=
 =?us-ascii?Q?2CaBrYXIU//3+kmJbgwBgNyKluCQ1yA2adEw0Oia7hVod5H9t0Na+Gzs4Znd?=
 =?us-ascii?Q?/L0bXMujwaTNLVZ3YPfyVdfUdECnlQpZD5QN8dsPA3ku0C4mKZswI5/nrTOM?=
 =?us-ascii?Q?zGPp1yQPo5gpN/b2n3jVO3GxeFGPHoLSOj68PgY1eDg6w8UpyfnfRsYGdWTj?=
 =?us-ascii?Q?QrrVeKgM9QgoMZ67gZx0J/Ge6IecL+y93XZQrSIP2cgbpKwmILS+9wOr3nSA?=
 =?us-ascii?Q?ZaOTb7tFBVC0rDntyARBOuap60c0n4cdxLKcbNF78eWjPq/vp1PTwJ/fFeF5?=
 =?us-ascii?Q?DKAZJl5hjlrBC9DoCVskNlKIvCVyw32Nlf1r3WMb+QaLh9nqSSo47ggix/MJ?=
 =?us-ascii?Q?FAXAypi4w5dXLZF4SnFRVuIV0wC89tEknrrTdsHS2kiUNiyD016wJLAYAd2T?=
 =?us-ascii?Q?XKO5ZR30rR7KtN3u2UXUrtIpA+VMvL9ZuapbQGJZNzyaQtF/5ootStBBzQg8?=
 =?us-ascii?Q?z4fRJLI7oyKhqEybB/+K99vYMJUxdFQUXj+0i79h0BSIxYDdiOnleDRIFDK/?=
 =?us-ascii?Q?j9eOpA0gaNzUillIWXFVnKHwk6OtcmUzE3nCt4JnqgKL3Ihx/XDwSRrl4afd?=
 =?us-ascii?Q?WSQGHzXXhgVK64nCenZQ0PK/QYheiYIQ+W3G+BShruT8vHFO/Mm87J65/Yw2?=
 =?us-ascii?Q?aNKNbdREJ02nXv3hyB/JcoeXfaDU9AnrxaCPHXf3lG+tGdW8vOh6ON9nxffe?=
 =?us-ascii?Q?Ux+qBDUEUF657VdsDAE6Nz4PitS5bW/Nbbs5xAephvHkUvarotFibLI8Np8W?=
 =?us-ascii?Q?fD1v/d8jOyUosAByzeAELVPRgOR6/S18Rqbm6SbscoFjdwSvozGaiwv7QYOC?=
 =?us-ascii?Q?lCehC67/D202v1j2+3EebZjCakZCIS1hMmi36Kuh+5aFNGdZgNwR8nqh7ILO?=
 =?us-ascii?Q?e0sMqq66Eb1+2jfZf+TuNBnkAcbpLLUUulMeS0uDJ7keQZ9UIU3mXXLXMra9?=
 =?us-ascii?Q?5GA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gwJPA2sST3cuI2ZaYJ/2dJ5MINNKAEjlie9UvFOPVYSPEqGHpl849lEK8nGZ?=
 =?us-ascii?Q?7liDesfsEcMR+LvzW8+cGFBPK48FNGHRPdv/9XfSH1Rp64KwARhRbrMhJ/c4?=
 =?us-ascii?Q?FShe20osWDgjsb0r+IQaZ6Tr74hCCryxeUr+xr60o3z3b6u/2/76mDty3HOw?=
 =?us-ascii?Q?uWfZuuCI/Oq7b7O5GF3wmk4ZV/1b+HFNIG6A7WahofGxX2dRnkNCwItHomLB?=
 =?us-ascii?Q?z9dESVc42/c1kFRmvYwlBllLPoZKfrrdkoB2DaKsdOrFzeHJbWlfHicubOpx?=
 =?us-ascii?Q?VJuaT2l59Xu/HNcnhUuXi2VP7x5l4An9ciTHWtHbAWUIukV+gAHOnoUts5KF?=
 =?us-ascii?Q?rQh+D6JBzhte/s/+NdXODTHRlfhlU+RzuLjtU4S4SQmL5YNl7emOexvNyfnj?=
 =?us-ascii?Q?Fs8IxK3sXCpYX0BUfIWlZOrhK40k/REThGYab/sFSuX+XGrli66Xx5rulRDr?=
 =?us-ascii?Q?H/ktg58ajE8cBQpQkeO5C/mHHBYIOTcOqoKIglK0A2799P4Ly8ZWygnCh+lJ?=
 =?us-ascii?Q?7WahW0uDsx8YYDIdLd6QDBPmxjcIR7GxtHH7vYTNMo8lKpwUbNewJqyfAvrz?=
 =?us-ascii?Q?H6tjC0+sLNptkbOEO8+MvAmhZ1quMpzySW1CE4dx839a0zLxnz0Ak0s69XA4?=
 =?us-ascii?Q?0kQXoYmaCmYg1X45PUfLCiXULLyG6BnSqlivah6DVcx9XIY+1C8LUWa11rNK?=
 =?us-ascii?Q?R36woDlN2RsZsOOnIEKd+HPsCiTtWiufEj0ftRoorP1yprtle7uCkLC005+t?=
 =?us-ascii?Q?XzISBh5wwUxPbcWi1d1KdOhesU0qX3xfLJh2E9jU5ZFPpVrnI+dRR4ofOPRb?=
 =?us-ascii?Q?O2ryMQNLAMzSrJ160LHwLUstV4z4JN8zR90qT9VnjzZglZAQjBMVGQ4yZaqD?=
 =?us-ascii?Q?RUak0UFejM65KjYKr329w+7KEihE446BNtL/GkQVjiNSrF1uWekDnsPuBGwu?=
 =?us-ascii?Q?4oWahP4hIcFo1hzOKyjJHB7ZwcAxnf7AjAQiBSDokmqeaS7Xrl3JvVQd76Pc?=
 =?us-ascii?Q?qY8KdXDDHar9qVl8dtDDEa7X/hIlE16Eqwv6g+cMkLT05DH55vVD2hehroFT?=
 =?us-ascii?Q?stZbJqg10EvUaknMrSWNdxIN+W15EfqL2b9cTUHR4etls3XzjYK7dmkDmFwE?=
 =?us-ascii?Q?67Kwx9hprvyA+gw/lr/BJE+1p0p1TW37XpRh2c9VgfaQo0IHM2nyTB3w1gKa?=
 =?us-ascii?Q?XUxnGyP/EGKZGWykxnIgyJbvY7Ja4EnBahMjzqaZhRtm2cCWeJf/14m8xQEG?=
 =?us-ascii?Q?m2RemLrgUQP7Qvs8kL5jG9BqyESCz040+cDVPC+R35jVY5MnNPTKghgCm1Je?=
 =?us-ascii?Q?O0h830UIzIaKoRZC5nsV1kTG92cwm9W13ScMzhrMt7HDXa2UDYn2jVTJWFZt?=
 =?us-ascii?Q?Urabl9V+n9SEg70a1oW9/8FJzr6E/o/f64D8L9UEvDGh6yzP/uU0N//mabhV?=
 =?us-ascii?Q?mvX8C4lXkC7M8Gs4L6GHiRrg/DJOdMOpSGlSeSWsBkY8WMWJiQKchzwlyQkB?=
 =?us-ascii?Q?zHl2rRQiGNXK2PpBvHnV5/SaSrTa7+bDrSUn0iXuAfN9ygpZbnQ5Fb+MIreg?=
 =?us-ascii?Q?VfhUwNBVB+xylWRDkRIP3kFf+skUTtQ/R/kMPJ7R?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45638ba7-301d-428d-97cb-08dc864206b4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:02:12.0219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Scnr85CkaTUd8tcqhIY0Bf9wNACq9wlMQNMtacEOhYBxFQHh5uRi5HQ4FYKWeqDrzCxmO5fWio9CNIbLsaeIog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6825
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

On Tue, Jun 04, 2024 at 06:25:50PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the CHV_CANVAS register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a6d7928fbe37..241121b0b3ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2110,7 +2110,7 @@ static void valleyview_crtc_enable(struct intel_atomic_state *state,
>  	if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
>  		intel_de_write(dev_priv, CHV_BLEND(dev_priv, pipe),
>  			       CHV_BLEND_LEGACY);
> -		intel_de_write(dev_priv, CHV_CANVAS(pipe), 0);
> +		intel_de_write(dev_priv, CHV_CANVAS(dev_priv, pipe), 0);
>  	}
>  
>  	crtc->active = true;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ddfa77231426..8aa35bbb2e1b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2272,7 +2272,7 @@
>  #define   CHV_CANVAS_BLUE_MASK	REG_GENMASK(9, 0)
>  
>  #define CHV_BLEND(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _CHV_BLEND_A)
> -#define CHV_CANVAS(pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
> +#define CHV_CANVAS(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _CHV_CANVAS_A)
>  
>  /* Display/Sprite base address macros */
>  #define DISP_BASEADDR_MASK	(0xfffff000)
> -- 
> 2.39.2
> 
