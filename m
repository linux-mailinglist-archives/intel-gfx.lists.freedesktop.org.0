Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE608FF188
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:05:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CBBC10E9E6;
	Thu,  6 Jun 2024 16:05:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="caex5TzT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7416A10E9E6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689918; x=1749225918;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=91O/O17T6imrU45DGCEakKEJqFha8CK2DjwOUTuCXVc=;
 b=caex5TzT9iHoL4QSrwu9PaZ1h4pECFhYSpsTBQcBnF0cQfiQ7ArPOz5Z
 92hwhPgDcb2fyvgb7jlfCUqF44ToPCgMoVV389jonpw25XOS82e7FI6Is
 K6uLLe85P+/F6jqJ0Bt0OIJy2p35Oz8bFYMGuG3sqcHU+rseRXxbUKzpO
 Uc3HfBODpEkpJaH0qEk+lOGtWXA/xO+XgzePlYR/Sv2duiu8HsY5PjNE7
 bUUi7U+kfpyjLj0wNYeAjsKAEkNd4PCjvBNUjc1TAaiYoBfAm3grQ+MCk
 GbfBeyt3FC7CGCkj1EtjKPetwG7eggEhdD6rYWQufmoNbL+UFultGWpdJ Q==;
X-CSE-ConnectionGUID: PK7rWrZLRs2Qc9gBUsSixg==
X-CSE-MsgGUID: 9gr63/rnTie+OpdgLnQCBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18162935"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18162935"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:05:18 -0700
X-CSE-ConnectionGUID: C+O/8NZySW2xRgvLqyU2MA==
X-CSE-MsgGUID: mZS8OIAAQ5OjUF4dyKnVNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38464200"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:05:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:05:17 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lY95CYHgIfd+SPd791+e/OSi/9wVUhRHcisd34qrhQBFDXkNRzw8EfvKHOO15OQJFZPiJD4Hfmm7MTNhu5i/eOabQs9q6A+IcuH0U3HCA1M//pfVQsCWoaJAXo1abLCBbJop1FR9gxF7dz4wPTKrDGi8i+B3Cw9PdB8OXgMfNNKQ7u/a59cCpN6J+YjGlmL41MRe/n4rXq9BskYhJkYmSA9I9/nljcxJCROyIAMIQxSm1rLU2EsXj+uAy1vkGDfrObQ1WGURbcDiTNVTmIRe1vVtDNEvQRO4EvEjgJkn48XkexG5jLB2kLz1+nV9HFNW21m3UKwdJYjP4P+ok/tNSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s8byQjZRJdR5yc6IwExqIYqVi8L015GtvHd7+h4mHEw=;
 b=a+g29lH4/Tm0EFsBxwRAILd3QuSFxc9/gBQDxZQuazAn8CJC5pH6Bu+80xMrDqeoqFlbUbTi/kGZa76mUPQLEHlrJ5Utkbc6ZxwriYxox2scUmTKe4xKMDIq2Kef/R59pwhLi7Eg8Rn3WNGDAd09OnMefgm576Y4GNaIjoiNehixdI5ckEaBfjVfC/57gHIZVEEaLOT+gmY1b4PiJ71+Mh8pe2XHSeDGZFuF+bHV/k22bA5eQUg7km8ZeRbivIaH04Fqh+0B86RN0tZ6/dZmjyJ/7/4WH6ikUqXGQIfQCaP1enoblA0VgTdtyB13R3ADfZ7Sa4XL2jRwXpBQYJSS4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 16:05:14 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:05:14 +0000
Date: Thu, 6 Jun 2024 12:05:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 37/65] drm/i915: pass dev_priv explicitly to _TRANSBCONF
Message-ID: <ZmHeOIWpoP5jJb5i@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <070a8e7d9e7c5f875b071138e60ac3d0008493da.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <070a8e7d9e7c5f875b071138e60ac3d0008493da.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0051.namprd07.prod.outlook.com
 (2603:10b6:a03:60::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 1495d280-15f9-41c7-07d9-08dc864273ae
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0ZT2Jge+YvSyVG+xPSG07sGAMNrEOUSteQ9TiQWkGyBoB6K0jerGdO0kDNu9?=
 =?us-ascii?Q?jvOQL4p8yniH/fo0yBCH0AAVpF/DisiheCqMJQ6+/bflRxwCrs/+p5z2WyB5?=
 =?us-ascii?Q?aFXjWApnjmHxzDa0NFsM6oilNLm08BXjcRFSfyqiLXyPsQ1dXHhegZyeyf00?=
 =?us-ascii?Q?u/uPBDUhW92sJNlAH/37FiZ/lvp8oFTxBLIVNNlhQn+kSUOj+/g6nf7AGUgH?=
 =?us-ascii?Q?2JwThcqYPRLqjnvK5HV3LjMzC1zeSdDVR2ztzhrhycyYeEWC/yrMvLUwhJwR?=
 =?us-ascii?Q?y88+SFjO3aS5uqoRPYNOTQMPaZW5WPJeOthyjH9LZbrj0f6EYAslRjB78EHy?=
 =?us-ascii?Q?OH+UZoCMdqQwIg7+FCUWOdmU3CRZEpJmOwaLwGHaXWZdd5VY46rje43JtaWs?=
 =?us-ascii?Q?it1N3V49De1bVzHlr2QUqipFo+0VCXNG1dtlaGoJwefAUpeeGUAmNdJO0V66?=
 =?us-ascii?Q?AzCG7GLaaahDJb71TOB48E41IIDgNnxJow0q90A8G8Ud8xZnQrpA6x4sobAQ?=
 =?us-ascii?Q?pxC6IC8vVZr2gzGxWbCVO4rOKGUfHjubwxsmLHhDfb1zO+AALmLE5Y6BAG49?=
 =?us-ascii?Q?41LCwZ5lqGUfTDKAxvDXD9Ztekx+b8bhYKUJHBKPRSBaRrvpxTpnKlK1rZgg?=
 =?us-ascii?Q?aqZWY44ausnWQQBOxJZKcxKx4AP6vmGDtkviwE17IMg1IC1mdW3Rx7fFPTpP?=
 =?us-ascii?Q?GO8fIsiKvSpVUAjS0GPbPuqzJl3QxcqHjY2nM/EFG5c5/o1xWrdpW4p9CHzB?=
 =?us-ascii?Q?L/uY/cckh2B7oboqUXE7vjkwC1oaxLKwredov0/HDBHeN0wIKg2NC4AYT7f9?=
 =?us-ascii?Q?PaEasD2igEvPNBt9pOzD62j/g6zcdyQZHETeWAW/osSFFMtNfwuugndMeYyo?=
 =?us-ascii?Q?HL4lZoS8abOz+J9PjKhjK3as+pbe+8h1aA5EcES2+6n2rIu2OfOI9DHgK0+Z?=
 =?us-ascii?Q?pg05y1BcNSqN+RtETvtYYPguYYy2hxEC3d4dWFcPuUCJKmjRjrL4JlCAhEUy?=
 =?us-ascii?Q?eaVhxko4c+CzsBYUA/EXYAXJOwXmfio5XSIdAtF3ybcWl0bPxxdZjyR/GWS/?=
 =?us-ascii?Q?IjquCGI1LRHtVk3YELf6UU1ifz+3ib8bCs+Wzqtzgt6cXciRmsA8zDmz63Xl?=
 =?us-ascii?Q?koH+YZSo5GSKx7wCbu4NtmxekVl/gzVZ7WrEw/0oyATFdlqUNKtnHdll6Px6?=
 =?us-ascii?Q?SVZAmq+lDc9kFg77utfLFYBg3bu4KJb+In7tysYVxm5a/sVuEklBJeOTPS8D?=
 =?us-ascii?Q?PT58N+jg7QUkiyXFWyHo1tRdnpgGSy6v3evPGSYzi2yvXnAkOtvG7dnEkdqO?=
 =?us-ascii?Q?HlVxKj47Np+0j3tJcYDN/dQn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+hTwv+ZtoW2GHopAtFBNXhWRn/PyuO6sgVfICsaKS148MLSK/GlN5daGncQj?=
 =?us-ascii?Q?btxGBGFA4bkPfOXzwk+CvMnC6pdPxm8VZ+dtshjAo8Td1mMGXQdd/IJ+fuy5?=
 =?us-ascii?Q?3ircgzQd/m/TtjA4+qFwIaBwW3KhPrul0CCKDr04vvxolsZo9ntDc+LOF+Af?=
 =?us-ascii?Q?iEUGj8us2npk4oq50wZ0Tv4PiSIQEuohA+w5fXQ4MKslAATZoAMqpviI2jxS?=
 =?us-ascii?Q?m0AjBAIv0uGZgcAgajMJk90JQXvZeKBWZ06zvo9ETFjD5lBFkCk8narQrDOR?=
 =?us-ascii?Q?piDvsBeZt32Lt9DjtiNVIo+rZZUxcFwhr8iuK0vys1f8ifvEUNHaPAIiIDaR?=
 =?us-ascii?Q?rBMz1AZY8i15KCvvaVmGonqDzyouy2sMzDEKzS4wuf1T/QddPqFMebiyesWj?=
 =?us-ascii?Q?Hz4T+dgaYA2Eu3axFTNx9xKGEMdonzLyBAQWrgR96ZWNf/pGgU+k59OWNqc5?=
 =?us-ascii?Q?Kxr4OtzsLXa/vcCdAM2rHWTfs8oNz/8CvuiCFqrsDM0hYpDsUciqZEodw4pH?=
 =?us-ascii?Q?hQM/qbYRaqLxv8UXU6VLzkWg3WXyVWAOJXJ8Fvubommt6ca/L6kDpGW78kFS?=
 =?us-ascii?Q?m95NLH+0SWtq5B83LFD0/+E9CuMvRStd3yidDKy05MXSJfu1FmLLfAqSKY07?=
 =?us-ascii?Q?5x6iCtbuS9MW4QgzTuB9sF4R4bdfMy9od3q6lf/SHm33hQWcC+SXS3BF/LU/?=
 =?us-ascii?Q?dVIJNGV4z6aYSyYJQIBNdFl6pQrIhei7Yd7yQIXOxgsUCR14tLSWdmAyThMs?=
 =?us-ascii?Q?Yu2Y8SQQ/aJzEg3lLgk5cVxXmHq00flYlOMKM+U7XxvZf5oHaWyGfbpnRT8/?=
 =?us-ascii?Q?DMJ2P0uZSnx/w3D3eJHhmLC68DSHut2dAw3tnpL4kR9do/KZ2Tm22SZSDq65?=
 =?us-ascii?Q?5IhYY0UVPiXa/gbEkXUSQGCwQ9EQAlLFnUKlc5TTWS0tPtMzW69MHDxH59sB?=
 =?us-ascii?Q?KKhrAa1jeq4vNhlxMlYBgPrn+/XX9TMYRfVzU71IEtDj0eyrKimxs9/Pqqu4?=
 =?us-ascii?Q?DnTL/G+IUeKjI4xtk3cC3OTtZaUaESj1OzjvVBaOaaRAGa/BTStC94c+YzIN?=
 =?us-ascii?Q?pDPXoQJGTlbHeqnwzMezN9pAr8G4J1qwMhJg+B5qReprEspanGZ478l51Q8u?=
 =?us-ascii?Q?DbxrG+Ue0xe0cv44wp1elbJYDFRJPSB4tfOUjZBE1Z+ki4aF//K0ggqafNzk?=
 =?us-ascii?Q?ZTjqwg7eSguCMh7B2rPx+maDXWYoYbqlwabbwer+7mX07rn7XG0QpOzJzBvT?=
 =?us-ascii?Q?hFI3XsB2noKitpLrnAaP5gzWmdhipRqCcODVS5xZOvzt0Or4v3HKxohvPPw1?=
 =?us-ascii?Q?kUn90qUjdUvMDwnIirkRNhDh2M1W7PYjMT8wddRq9935toEUWrQMVR/8QvUe?=
 =?us-ascii?Q?Z5DdO5Oxl59YN0B5Oi5pRRrwuh4cK9IDMVm8CUeKwUtwxbXxDXMM6oCQsZmg?=
 =?us-ascii?Q?ZJi1cmuyfP4AE32IrYioFaOIauRB8GAuDXdffe4ttwH5zTrKHoZZL4MeL4Fa?=
 =?us-ascii?Q?bKF/jxeL3Tr/qDdKt4ddR2yvhWIpD5teVFxXmepan16B7DQ5KWpwxXqEUPi8?=
 =?us-ascii?Q?jUoKqHxMX2Di+ETPC3cmUErZuZVpk4MWT9soXxg6?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1495d280-15f9-41c7-07d9-08dc864273ae
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:05:14.8275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TJv8aCGVt8iHVVIC0mA3pGofDU/ct6PwdBwFOyWFNbXv0zrJ5oL4P5wxa36azgW59xGZsg6/sFCxPpgvy3X1JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

On Tue, Jun 04, 2024 at 06:25:55PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _TRANSBCONF register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0a2111b0cd98..8dd4b5a72b22 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2297,7 +2297,7 @@
>  
>  /* Pipe B */
>  #define _PIPEBDSL(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
> -#define _TRANSBCONF		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
> +#define _TRANSBCONF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)

ditto


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
>  #define _PIPEBFRAMEHIGH		0x71040
>  #define _PIPEBFRAMEPIXEL	0x71044
> -- 
> 2.39.2
> 
