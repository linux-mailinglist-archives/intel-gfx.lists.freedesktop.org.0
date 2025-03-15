Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A57A62388
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 02:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E3E10E37D;
	Sat, 15 Mar 2025 01:00:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J5lt+EUr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16BB810E37A
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 01:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742000413; x=1773536413;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=myGiZwqonXjrbfdLYa0s8MjLQORnkLJXu8mqTY6j4U0=;
 b=J5lt+EUrbTtzi00D0MpgTiNo+1o7VqWN2z2QOVe0uUbqdLEnYsRedntb
 sDUYbTlGF0lIENpB7WDTNLljpafXvTS244kUlzbdFucY6pK7kZAdhdwPY
 kUGQeRZiuziG6vFby6poAkEN/Gmr0/P2fR9p4R7gZnSNOrKXOIIJZavtB
 78uDjdtFthGf9kTh09+oK7Wz1xkOXgkt9Ujamgl2N5vGveWUZejH71q+B
 +6/41dQQYHo+6GyeKC4R51NSi+oFJODqnjVbUgOqyPQJRseQ+c8J5Lp58
 IzazQc5fwZYBgps1l+UQathhMMgSxCTY2ctKztMCsoxf8nJ8/8IvSfjZv w==;
X-CSE-ConnectionGUID: Ve/ihHvOQpCblTNu1Neumw==
X-CSE-MsgGUID: H6XI/LhMT3+byu79zlEhKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="54549761"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="54549761"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 18:00:12 -0700
X-CSE-ConnectionGUID: r7no+PV6S925ZeBC8uV92w==
X-CSE-MsgGUID: sThS01ioQcaXZ8/3J557Cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152370323"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 18:00:12 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 18:00:10 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 18:00:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 18:00:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lYfjTelTE5y1PyyO0XQZbUn2fTxJclloe/vpCzIEpEysf/52YPqjTWm/j0QtYhWaYqQxgcXoGe8CNaYJelq/peAV4x4EDnmaAfg0+CDb5Xd7Kl51c0GQ+fC3oWTUMdv1bOFgR7BbiqHNPpBz4joasBP54UTar5PCFxwqTxEPM7GabySGJhXFYzsebe+4Jb5Sh0RukErk+KzDP2AdNMCRPE4uA1UlqXTU6LhW4fr2TVwnP7NtCLi/QYJkN9HUapCULkNmNLq+BiToUpDgNwg4WsRriJB5xcnqOZrF3QXrENyecqVqEwLcpw3D961bjHfesjO5h/6ldCz5jojP5VYEWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+FVpW+7iPjG5RLX7iyMzoHe4f4gLySsc/JMGlK+vIrk=;
 b=X8uRcSxPhwaThPSLPm3lcDVj2KAFj5GmEeYFnV63q5C6eysTqrsd82+yRPLR4gm6tBaq8fa9dDM0/0jl5hiqy7O9Zf52AsLHibJO7HU0J18fzV2tv2YfKp5rvZId3M7fyyaotOl5IWfe3EeMzvtDq2lmGwZwomKWqW9IEZu6vhrm0I+dX6DsmYeeIEBV/OdkroRd674ao3jVrs6XkSkMinhbvsFAImL6AQZwNvucTRPOtdrOANpJJvHWHT3fU56hp853HV1OcJA0scy2KC0JffcsWsfIffqeFaDvO+NmVH25BOEtmPxQA3tUOM6sMdQULjrwWR3RKY87NJlIHRzBzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH8PR11MB7991.namprd11.prod.outlook.com (2603:10b6:510:25a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Sat, 15 Mar
 2025 01:00:08 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Sat, 15 Mar 2025
 01:00:08 +0000
Date: Fri, 14 Mar 2025 21:00:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, Karthik Poosa
 <karthik.poosa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/6] drm/i915/pm: Drop redundant pci stuff from
 suspend/resume paths
Message-ID: <Z9TRFed_0fxlKSW1@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250311195624.22420-7-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0155.namprd03.prod.outlook.com
 (2603:10b6:303:8d::10) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH8PR11MB7991:EE_
X-MS-Office365-Filtering-Correlation-Id: f52d5c20-2173-4e3c-b348-08dd635cbb10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?5ZXbTuW+rX6aakmc1M7hacOWe5rnNx2dNPIYLaQovNS6y5ZbmcAxFibGeI?=
 =?iso-8859-1?Q?a/hSbJTwGMLUTkVOTDK21Y3BBLw0lT0xuR3GnZ55SvaEg3tkv1coKy064W?=
 =?iso-8859-1?Q?90TzNHjZ9Qkx0oFui3l1YAsAV4of8rJvtLeOKlMX5Q4hVeW7A3XUWYDw+D?=
 =?iso-8859-1?Q?uv4l4kvEn+N5fH27OVJTuWCMGGaLVO4rYUANUmYrYMNPowWjGBGqWKLmrU?=
 =?iso-8859-1?Q?UK8h0SuC7OHOdXeJgFw1MnJhj8H0ppF0gDcI1ev9UbT46M3xQynV+B6MNK?=
 =?iso-8859-1?Q?r6ZY9kY5F6zbdWcbegDKTOGAyJJmZ6zyVqsf8OEAJzPEUB1LDL0HxkNTQI?=
 =?iso-8859-1?Q?sQbgNZ5gKfo6QU9rVlIm0SEywwG+Q2Ymz70OBd6CMPvKPJTQ5EC88AvZIQ?=
 =?iso-8859-1?Q?ZsYDM4igIFLupr0liJZAsZjvtkJWwRlKVoZoEPpYhkQSAJYrcERGuuC/Ao?=
 =?iso-8859-1?Q?leOY5zSS0HzJYb7R3NDQwD2vgmCLSMGux6i+00beMa4K2Z3S3eehpxsLL0?=
 =?iso-8859-1?Q?3QyOuShbt7Z9Hh5uq/aeXCVapLRiRLNZgH8k0mLT/jdsXuKVvszc5PwKGT?=
 =?iso-8859-1?Q?cdetCn4eByJJeXG7TqW6NWol9pFz8lrhkV/p03KzDZX2s1++pPDVttk1NW?=
 =?iso-8859-1?Q?sr46vTwxDAChQKJKNNLuqU0JRd9lkmMK0IIw732t1txYLC81KZYT9y5oQQ?=
 =?iso-8859-1?Q?64wn3gHHEf7OffNtuhHFY9Fro4eIXs4AWhNvRD/58klUpefBP1M51Q6uIo?=
 =?iso-8859-1?Q?8nF+vaoJtTiXQA4nxbR9Je31IvnW3MfDzqKOKtkGH/FzyXMzVvYVnR84bN?=
 =?iso-8859-1?Q?2OvpdkzXUiODjWmqC1B5UfebbsQkvAEgt5My0uk1yGQqWcnNnZca2vLFVE?=
 =?iso-8859-1?Q?L2undhkcFOMoBU9mF4kanMtQhpl2x3fZGYJvHAzFqigYLrYjvMQjau9yN+?=
 =?iso-8859-1?Q?4yGjqUy9rb/ol75DAJqB5JdOaijdCddC/rt2CoYl61Td12tlhqK+KCHHjY?=
 =?iso-8859-1?Q?McOiIzq3/q9HrIdmTuawy2sStIg92rHkcOxkiFn170WZP5SldFiCoK1aKY?=
 =?iso-8859-1?Q?07/eQXYqmvoTTy42YXA0i41bojHC3ioegmtoiSduIzEhCm8TKD1ZWZnOeZ?=
 =?iso-8859-1?Q?9wB3UmYKT1tqbPOV9MpTTQSkTsHwSL80sfi4yP8WA7hqFGC2doNde9ktMs?=
 =?iso-8859-1?Q?3OIJ3SFL3JJVanJdOLEe0pFVsVmPTkX9LIu9XyTyUvdcOYFwpwJt7id1m2?=
 =?iso-8859-1?Q?Vl7WCi5106VgrbnCgabAYDi8ggDaTLjGfsFda5Gz84rRjpk1fgGWgPLh1S?=
 =?iso-8859-1?Q?DOp+5BUP/eahcAWYW6/GnKuPOYUHzaQ43a4TVEDsAzT3MNYeVvtMyjcx2Z?=
 =?iso-8859-1?Q?gfWwtQEV/HV0kIYUgcv+RZH9/ROcVchMXuC7PKMKiRZLtGa2b8C9JYxLSS?=
 =?iso-8859-1?Q?4bGVfnO3HJeMwpip?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?mq5tNdORq47uzasZ4jwWGGfZ1iJMriKhQGE0eFrkX9nRPDb9nHw4U/uOEx?=
 =?iso-8859-1?Q?up0xMdngE6s2LTLqq9x549P0DAVYBTHsibaVdPxuW4Bp3AKYEaBgkr+Zj6?=
 =?iso-8859-1?Q?LPEJbUtpZ7TIf2MC01AIwJhbz8eqyX8AHwm07nW81nPHmpLn1U9lbzupV+?=
 =?iso-8859-1?Q?+4V+1m5O39UxAyV+Itx1F1uOnySzdg5libyWHhQyWv3YwhVjwVmYvqus0A?=
 =?iso-8859-1?Q?7TaM/WxNPWFLyZcquf956MPIV8WaOOAtriAogN9e2wEsXT6TpW+BwztcuK?=
 =?iso-8859-1?Q?ghwVY8WJAq63cyujeLwsn3/qsJyyv80gmBnJm5q6BD5iSUQboP4glUu/mK?=
 =?iso-8859-1?Q?3tUF0aayGN08Fzz3OQGlHn7fR1QxoR/w1Ann574bPUvUfO5WQ35kOvxw++?=
 =?iso-8859-1?Q?K20atiYJSoP9S/gwnuiDSBT7G4BcIfnaDvKb4RxYOK4yzflZIdxfWXM7F2?=
 =?iso-8859-1?Q?Su9QktMSKggQyiIUjW81IbP1zri+9PGLe0xZQ7L5vLESe9RviraBTpLAxI?=
 =?iso-8859-1?Q?Lp8F8lhkEYUSeGIOkw+KAhDeAxtFHv74Jiv+FCKzWToB9DFNAPfxpYmW42?=
 =?iso-8859-1?Q?mhjYoZ2L8BjGtzM8ORk6CB9l2We2xmzlo2O5y86c1J7K0PR6YngWa0sioO?=
 =?iso-8859-1?Q?WUkbgYQSCTJJexJLu1ARuMb9E9jHRmLWPFdBzms9UxRZzassvsOcXwXNVw?=
 =?iso-8859-1?Q?wI0uXMqbQYDU2i4nSaSokKcaRqXCUVsdca6DXJ+69zI1E+Vj6tZ2stVg7H?=
 =?iso-8859-1?Q?OkC3dgtGFHKz+j9DHcWNcatv/McZKmQWVdQJZ5le45WKA8oARfmGn2hzBr?=
 =?iso-8859-1?Q?D1OVmFQEKKUVUO+v6z/qOo/l7swRro8hwgE2GLozKcbMcMjvQ5Oj9Y6A+V?=
 =?iso-8859-1?Q?u1+uwkHDn2IGr7iosp35YJKxWFiZfESEx0Oo20j2jSZ+eoKIbQqCgDpBsy?=
 =?iso-8859-1?Q?7xHRtCkE3lOvGrOqJfBCC8tFXR8oaFaGx9Otc/1T2SwyfGqr2xgS2CZhdZ?=
 =?iso-8859-1?Q?BVERpbRYns3VN0wVoQvqvj7x9BWFY/KoTSoQw9C/hP2pEYLQKXrL+SWI1F?=
 =?iso-8859-1?Q?bZd5BHlkbvQz69Paz9XV3Kbe+C/EmiNVWP/riFGGINzy4qJ8a9oIe6AYOr?=
 =?iso-8859-1?Q?R2K0oxnfbyp2QsjMCwebG6g97oMcxXOgSDlZyrcxvMTeBJHeaFbqXbEKMy?=
 =?iso-8859-1?Q?5ZmUmKO+C2x38bEh+rPFidpgHUpbGzztqGbhQDe0LIYHRcobEhSO0Riur4?=
 =?iso-8859-1?Q?8ufzhJo7z5WWrEyzBvH0qNk0BybF8A7+hNJo7Dpj1pOH/QKdpI4Jx8fqK2?=
 =?iso-8859-1?Q?IgkkkCZwBHANaExjAzfJJ42SNq2oDF8+/AKnG2QiVS5vpypU5YobSUC8uh?=
 =?iso-8859-1?Q?IQ+9btGUVKlOoswTk7IsjqxSFUM1aWwYMCelTF0unVN0+2OaribFz1vT2t?=
 =?iso-8859-1?Q?mhHU8ss84cQQ9Gf7l4b9hu3myANbJ4LEjEkg/vdqVT1TqIapfr5GpgQnVU?=
 =?iso-8859-1?Q?qTOZ5lCs3q8PWutrQLVjgbdoMtQxQZUvyvM9Qk6VkCHRlyGypm1AsF8Rog?=
 =?iso-8859-1?Q?IyLnLX/0sMpkcDfgdDC2uq11JN8bkvqMLMoNC3onKncSik+ChTKDVyGUop?=
 =?iso-8859-1?Q?LPYr3H8DOg54RUTp0ZG4jr8RtmwwU9CBWq5BprxgAmHG761MYl0mNXjw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f52d5c20-2173-4e3c-b348-08dd635cbb10
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2025 01:00:08.5459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ct5CQNGUHA3QojV6a+zzwfaPD1MQvAyd4tqSzsllA/MzNwhGnhWmEKfUPqBbYjk4EqwDPDDMAHcERp6uQlQT1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7991
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

On Tue, Mar 11, 2025 at 09:56:24PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I don't think there should be any need for us to call any of
> pci_enable_device(), pci_disable_device() or pci_set_master()
> from the suspend/resume paths. The config space save/restore should
> take care of all of this.

Cc: Karthik Poosa <karthik.poosa@intel.com>

Karthik, I believe we should do the same on Xe and test this against that strange D3Cold bug on BMG


> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 31 ------------------------------
>  1 file changed, 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 503f1b6b694f..d3d1b2d082dd 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1092,7 +1092,6 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_display *display = &dev_priv->display;
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
>  	struct intel_gt *gt;
>  	int ret, i;
> @@ -1113,21 +1112,10 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  	if (ret) {
>  		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
>  		intel_display_power_resume_early(display);
> -
> -		goto fail;
>  	}
>  
>  	enable_rpm_wakeref_asserts(rpm);
>  
> -	if (!dev_priv->uncore.user_forcewake_count)
> -		intel_runtime_pm_driver_release(rpm);
> -
> -	pci_disable_device(pdev);
> -
> -	return 0;
> -
> -fail:
> -	enable_rpm_wakeref_asserts(rpm);
>  	if (!dev_priv->uncore.user_forcewake_count)
>  		intel_runtime_pm_driver_release(rpm);
>  
> @@ -1278,7 +1266,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_display *display = &dev_priv->display;
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	struct intel_gt *gt;
>  	int ret, i;
>  
> @@ -1292,24 +1279,6 @@ static int i915_drm_resume_early(struct drm_device *dev)
>  	 * similar so that power domains can be employed.
>  	 */
>  
> -	/*
> -	 * Note that pci_enable_device() first enables any parent bridge
> -	 * device and only then sets the power state for this device. The
> -	 * bridge enabling is a nop though, since bridge devices are resumed
> -	 * first. The order of enabling power and enabling the device is
> -	 * imposed by the PCI core as described above, so here we preserve the
> -	 * same order for the freeze/thaw phases.
> -	 *
> -	 * TODO: eventually we should remove pci_disable_device() /
> -	 * pci_enable_enable_device() from suspend/resume. Due to how they
> -	 * depend on the device enable refcount we can't anyway depend on them
> -	 * disabling/enabling the device.
> -	 */
> -	if (pci_enable_device(pdev))
> -		return -EIO;
> -
> -	pci_set_master(pdev);

We need more tests, but let's try it and clean things up.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> -
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
>  	ret = vlv_resume_prepare(dev_priv, false);
> -- 
> 2.45.3
> 
