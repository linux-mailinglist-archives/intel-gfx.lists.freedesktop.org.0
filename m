Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D408FF1F1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFBA410EA02;
	Thu,  6 Jun 2024 16:14:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j1sjmJMv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15E7B10EA02
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690487; x=1749226487;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uJfwmnGWivGK/6ZqcxKt+nro7X3Lqf4WtLEWsyGfn80=;
 b=j1sjmJMv5YEzo/csMJb3Z3XP2oTK5xxed30AqCQcKVU/cNtvvLqHZ/rd
 VmQ/JMuWinCbuaP7Eg3uOLkIdx6olzwTfcPAIY96GbG0EsnamAO/Ag2QH
 RoeH9XhcbIQxs5UBJrARG2hpdtEgXPUbgTFD76R2f/gzrxSVALnCCZA3d
 KLCXDGju/vzgc6mcVsKu+a1X+j/8pbCNSBg6krNo2USmFY18UXvZmUj1u
 MUZf26oFOUn7ET/2V+Dt0aHEdKGO8a5CMWI9K6lmq336NdkWqsyh2EKzR
 XOsTWTeQUiYXZVfPl+ESPBJVE90lkOqavR+xuCIXMIg5nUf+H50uzV/u1 A==;
X-CSE-ConnectionGUID: LXvuoxf/TDiUkMWe6AFyOw==
X-CSE-MsgGUID: 970niUXvQWi9Dv484uOsAA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18201118"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18201118"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:14:46 -0700
X-CSE-ConnectionGUID: BI0PCI77TFyoeLKF3E36wQ==
X-CSE-MsgGUID: 878q7mhgQRiVnxR8V4/18A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42960966"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:14:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:14:46 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:14:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:14:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lDLKamLgSq6F4yHfe3FCDghN0MECS6DYZfPJF1fIfRQ5WkwSIaSMOQcJFskhgrXXzVc/KB+6bzIJShzJHOWJeB4X7osMYGObmKh68/xdfXyXCpUr1Ft2urGd6Dq1rVLC+9v7UQucwY+oYRb/U+pjLHBzbA99KPBStx3bZqG2fBGmBMhIfE230kPhPEtwgdydUcubfNbs/aiqtWuuA0U3ZVu/yseSG2uPlG+YRYJe3tsPDHWNVCkB90WmC3t1rXpsY3dytMF68XUtWT0Mmy6gENY0iw16rg4bIzQLvA8pp6c2oKuBazLLmSKw7Pi70aSDJ+q5ihzSFJFAdpZtxoa0lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rG8s9tfuoKVUxg3EW4OjRkzaNkzLZuBUqmPo8H7om4=;
 b=EH7+E4P9OJ4bjpNxoJ+N6cQ4BpCwaoLwZfGK4RtpwKYknI2y1bRjoUBp5I0wW31Afs4Yz/zQxBFCWuDgcGvRe1Dgoz5YqNmAR5hfqMorFPgdVZLZp6OUgWc/bAOkadGDMZ2sfyRm5jloG69frU5sF4WKevVEsxcRrpfEyFKP0e7FeK4XkwFmIZ/OrOhPO014khznRAkvQUg2pB78uzM9I2UfOULTAIvuNPOiiT6c/SmGgAFTqwgOv0ELu71/e8zmwOqgJ3UViogZteaA79MZr7OXnesmcDD3+jhN3iZS4NF5ShBvEwPf3TQ4Flcz1Hm69KiZLzj3p52kuyFSLBMBLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:14:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:14:43 +0000
Date: Thu, 6 Jun 2024 12:14:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 57/65] drm/i915: pass dev_priv explicitly to PIPE_LINK_N2
Message-ID: <ZmHgce9cz17f1pPV@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <5267c167414fb46a25277c1c9a802f6ccf8de3c9.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5267c167414fb46a25277c1c9a802f6ccf8de3c9.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0377.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: ae0daeb0-6bb9-4080-dea2-08dc8643c6a1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5Fa1ThhSrxFU5fAftMSVX/dVnRX+IZV0/+rRZjZfDsae27yKe9iLrkGO+zrb?=
 =?us-ascii?Q?6c8ZHaGxUUTvkY72o0waFygSvX9sgqLoXYJwro9EOvPDYS/N0fJ1zXRc/nrP?=
 =?us-ascii?Q?wmUEHL3uf6fIM38pA5jbsuNsJyvLzpmyfeR9XPtYNYhyPnU6ffT+h2PNDihs?=
 =?us-ascii?Q?qvZzZdOwOrNzOFmeWMuWX2KFBXFMDIFAMVaeysDQtPbiGGmG3AvkTSHHMuJo?=
 =?us-ascii?Q?/4e0z5Vim2tb9pzcrbfa5eHV2EECpID+uatVsyq63iVSLkcwCA3w169CMzrQ?=
 =?us-ascii?Q?uXz8CukSCTfeygOj23budK6Ktj/5ZZHpXjJaIKBCiTEwiq8j3bqL9wNEqOec?=
 =?us-ascii?Q?5jyL1jxq5WXkOR1pEZltJ7gEcPqqEPGU0DWL1D8w2FIAxWGz5v5Cz6ysLpTx?=
 =?us-ascii?Q?LUj7nGofAYTzT+iN911MH1eyG7cBn0wATqw59FFQvg3QcsZqmcyTfbi2eAjY?=
 =?us-ascii?Q?NR50VSnDpZ424NUbDZru+zOOh9e73aQT2SEYFa+J9tX2NNANeurJDE4r2fxS?=
 =?us-ascii?Q?NIvIsvKQKswUgjxJjL+m6OkuUM62hRXy/bDhREffVPmSffYhAYnRqkhdjPlK?=
 =?us-ascii?Q?KibfVUZV91UkrtwbOpNfxlvFnPNd+5CETTtnylj4hQUfIXZpu6XvycfBmx9G?=
 =?us-ascii?Q?bHJG+cjBfRXrlFrORpf7bMlG34MUl2lZ/gAnPCNQrQTLJqCJxJ5ewKD4lR8U?=
 =?us-ascii?Q?llT9RjSZ6JtwYRvu1MbNWqX/hsQ9yDPtjl3C/YvQuRpzsB8s/wEdQgbgq09n?=
 =?us-ascii?Q?nakDfN9VxaRJT2Mysw6Hv4X9U8MnRhhWeNlD6ngJkvuM9HmCEHFMQa+OiI23?=
 =?us-ascii?Q?o57zoerPWaWm7rZBP0XZMPR7QialO3HMIerqxbbK/gGu5JX9P4gwwjQ8e5FS?=
 =?us-ascii?Q?tmXkL+cDwd8QnvFjAbDP2zqWW+AjgakryeeXPcunv/ikkZLItRUaAzssjKKY?=
 =?us-ascii?Q?tdNGeCGhwgVjKN214IqdO3QiiE2sZC78o4x6OW0D+GwDWF8W+Ep8Q6aYrSuM?=
 =?us-ascii?Q?YakPNJbkUwqkHYGkTOkzwCJCYIQTuH6tCIoRYlQ7g2IHm935S/nHMzV4H3aN?=
 =?us-ascii?Q?TDj8UrCEI19GZdqNiSlMNHFC4POnC9JeaQK3dbwfUf869lX9lXYPGWvVHRLK?=
 =?us-ascii?Q?FQ5EgzFi3Ze5YeIUVW/CCZLqo3nmiLIsgRcUm7AsKiQhq7F6kKunXUYLSW4U?=
 =?us-ascii?Q?Mj5jAOsgSUxT/WNvIV/04tuKZ/F5ma46YCZefHsYsJpsQjYbPdvYcq5ji+2H?=
 =?us-ascii?Q?M+7lXGKF/trVHr+H/EvMLoZeSMmhfZmYzobR5e6unnoXzwo0eC7ox7jIeCmo?=
 =?us-ascii?Q?ZEayZwyBKjPv2CX2ywCHMEBH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/GncnfgRYvxyLn9rJzEKiAjICLPSokNX1xV7vO4fibZ9iGfcQV5bXQLU1aFx?=
 =?us-ascii?Q?DFIOsu82K3pfDrKBzgLOqEkFzTiAEvrnfe/m0E6kgMFckEKsT6N2/X76nrQ9?=
 =?us-ascii?Q?CyXCHbO7mFnQoCJuhMuhyC3r42A4YP0WQic8JuOqsGcJkoWBH7ULMCcfa6gf?=
 =?us-ascii?Q?1g/88cLb2Dd2Zz1mBf0iPluDgzWSiXOKiyxhqmJvoY+W7xxp1U6SChJL5FGv?=
 =?us-ascii?Q?vaJ1OOHIvpznHyp5dARXFEf2/ypdAcdvvB5Fi23KkaqPHz3M6CcVIioFiBAw?=
 =?us-ascii?Q?wU+CnElyPGuj4Bm7Hj5po0eUXvrsDGlyXKGBxDlTvDVyw9NOZJrpavKo0vEn?=
 =?us-ascii?Q?hbCrS9jUjTWm10V7y2yoiQgpJR6J5gW7Ufnc4P5WWbtN6/47fIT+Zz2dFhoq?=
 =?us-ascii?Q?zRpYxG0fTLu3fIwEr4Xs9T9FLXoEY4Jyn6DFHhuD4CSLWeEz+SsMTnEEOtwT?=
 =?us-ascii?Q?kI+fx+cotfr83HHCBn2Xu53ropF8TjELbrrhEtekBQxFYzpuWpjwf8O1pg1B?=
 =?us-ascii?Q?rG/lMFnvuarC3M/RxqaIztQYHyanIY8ME4+sxZyU58BzI4Km/LTjeCHynYLB?=
 =?us-ascii?Q?3cgksZtAX1oZsea5bWw5EGbHItjxSDgJafD4+nw3Vv2rVJOViTgWxJWZ91Mg?=
 =?us-ascii?Q?hbRTvH08CNKjW09333t69IdUZYjudTQ4KTwH2KA9iNNSPxAFyom4MN+TUBTm?=
 =?us-ascii?Q?BnCWE9SJT7MkSSjkw9KYkJrVWig1goaEdWQJGs/48GO2dEScF5gOwVfzS+Fl?=
 =?us-ascii?Q?dcKL5cdFTPODLk0xgYYyi46zhuU8SwthaA7txam3rW/qCel9WVZZ/xPSy8M0?=
 =?us-ascii?Q?Z0ZoQvcUFTBgx+26zRt9VuIJqpKguqnZRiZt7+0SZ2HnVZj/p6gBZcqPwg0/?=
 =?us-ascii?Q?4E6vb146kAhgaL4KaYZhhQTwHpB+Ki2DVn4pvQYk774KIdSmdRebgSpIuU9W?=
 =?us-ascii?Q?fVuTJ6nGCth8ZkCLByBNpbuRi1qtvo4XspVSz/G0jY3qTi6yMyjyBw8nLW4k?=
 =?us-ascii?Q?37biZcveZIyE9wdREqMXVvEo6mCh70plfQ59zcSCbP6TLwPMk6WQEO2Kqa2Q?=
 =?us-ascii?Q?mreMIvG4/DVuPfJP9dyRhVx6j9mxH9R+yj4S9zC2W1HSTy0VnbvmgU4b1o2U?=
 =?us-ascii?Q?8+gf23izuvpfX0rBLgIq4OAY1kJWRRJHptVvZsZ5Xg6nyHz0VIsAEFKkUZEJ?=
 =?us-ascii?Q?VLb7UU2ceGl3gNeYkiuEF5cvjE/JMCxtej2wk85wdYvnre0LNoXra9+jhcy8?=
 =?us-ascii?Q?nlGCCV1gTkT+gZuNwXjEu629apvReLWHijH3fOZcYyCNtuk9Z486vGQbgYLw?=
 =?us-ascii?Q?FsYU+Ie4NJ3BHTU++HE9NRz66KMnuwsPp27Q69yW8dkAIwVmk93KSNfnJidl?=
 =?us-ascii?Q?9ZBFSgfesob8S1MiWTK0kKBC0hNDwF7E2aEE6j73aX3Wt2Tp156cKOTaAEnG?=
 =?us-ascii?Q?3KCg/x9YBXUJEPBxZJh/3C+l+ypHOWD1fBCXLUfU44mKmYp6ClowZGKvZ6yr?=
 =?us-ascii?Q?zfUEZqgCOToLBvyTQTnhMOP9XLbHli2Xrs6glDwQLYvcBECLloLNuE7Ua+5l?=
 =?us-ascii?Q?XcdY5Lm75pjbMKnyXqPXXrDpLTZGCOuLatWcxAwi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae0daeb0-6bb9-4080-dea2-08dc8643c6a1
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:14:43.5055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iI9Bbo8phMlrgnOPEYw+wO4A6oe6vxpyWMLdzzbNj8es/Z/JK6M42okFiWIHab7yhMTsWnaLtBRuGXIwOfc+Sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:15PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_LINK_N2 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
>  3 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 9df8e486a86e..952780028630 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2664,7 +2664,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  		      PIPE_DATA_M2(dev_priv, transcoder),
>  		      PIPE_DATA_N2(dev_priv, transcoder),
>  		      PIPE_LINK_M2(dev_priv, transcoder),
> -		      PIPE_LINK_N2(transcoder));
> +		      PIPE_LINK_N2(dev_priv, transcoder));
>  }
>  
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> @@ -3364,7 +3364,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
>  		      PIPE_DATA_M2(dev_priv, transcoder),
>  		      PIPE_DATA_N2(dev_priv, transcoder),
>  		      PIPE_LINK_M2(dev_priv, transcoder),
> -		      PIPE_LINK_N2(transcoder));
> +		      PIPE_LINK_N2(dev_priv, transcoder));
>  }
>  
>  static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 2a73ad779e26..70e549b38984 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2386,7 +2386,7 @@
>  #define PIPE_LINK_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
>  #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>  #define PIPE_LINK_M2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M2)
> -#define PIPE_LINK_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
> +#define PIPE_LINK_N2(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N2)
>  
>  /* CPU panel fitter */
>  /* IVB+ has 3 fitters, 0 is 7x5 capable, the other two only 3x3 */
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index d1a51ae042f1..955c9a33212a 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -273,7 +273,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
> +	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_B));
> @@ -281,7 +281,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
> +	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_C));
> @@ -289,7 +289,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
> +	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M2(dev_priv, TRANSCODER_EDP));
> @@ -297,7 +297,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPE_LINK_M1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_N1(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_LINK_M2(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(PIPE_LINK_N2(TRANSCODER_EDP));
> +	MMIO_D(PIPE_LINK_N2(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PF_CTL(PIPE_A));
>  	MMIO_D(PF_WIN_SZ(PIPE_A));
>  	MMIO_D(PF_WIN_POS(PIPE_A));
> -- 
> 2.39.2
> 
