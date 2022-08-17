Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9875967DF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 05:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43AA210E05F;
	Wed, 17 Aug 2022 03:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C9510E05F
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 03:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660708592; x=1692244592;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=YRBKGL/oahrUc7pcZsA8jyJJmjMlQEhs6qj0/t0k6G4=;
 b=O4CdCyGyuG0j3gbCCowCwA7DiyFF3hO6VCwRpM7mWm/PnlT/i/8/GTTO
 8GyD0/Zvmx6Vmhtqj9Xm8MrTc4C3kxXIbHMtKnh8BEfYdGL/dHVxuPPIu
 PQPL909wLojron2RoKBLvTYym7vCFrlFR+lI4XzT/9u7pVs4ja85PkYiD
 UwKoL8JyIdBjfIeMbeN6aZY4JuKzn/6yUcPSNsI9EgKf0GG+Z+9jhTTWw
 o9ZGPJA2P9CLdp/jikUNeVhGzAzvxfGVtZdg1kCVycarzY0Lgwa/1v06s
 rCLmdaY4PAWirvVNUY1T2gSSqRgoWgJQmNPUUr+aCuXeNuz3qLE/PDMxS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354138224"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="354138224"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 20:56:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="733536320"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 16 Aug 2022 20:56:31 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:56:31 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 20:56:31 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 20:56:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 20:56:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RP/SlKMYWQNdmj/TMfILPLhyEQRLll9d1V7/+nWQsIN/n3/TSAgcT/nsB+EASlB/NpJ5oP5FZH9eJsIUzDWeh4G50/zhOSlJLQD0j6i8bVeHM/2iDPrxfV7rkorGty+IMQrTGMI61kanAs83v3rK6hk8+BETfA43YMiI+cu5ADK43y+8zPFpEr6y8zTHmulZMePSDdCUsfUywcj7lBBpNBXxdk0P6VmrfBhLjgfjKDIdEVO+m6okeI0I/zG1B//FqXC/f6zLTe+HV/7sZikt8Vn36tjpn1xIbkXHUABVKMqoha8y9XZxV/099ZncfmVyT1lQGvuppuSbbMZZIkYwrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=03kmd3axepGEbBj81F6T8D5YfFNoBDGF1+TYvkbhuiE=;
 b=kFB5uY7CBXROGgcwVIl0j/CEmhy7yRWQTYC6m35gdrbs4pM0EGg6rgtQOP31Rthpig+8IR/6m/2I7NoT4X0jfptU8HwfwmKcKn+H+HhB/FFuLRMOypmGBYhoPoyoCZCBgI4zGMA9YjWzvhniNu6is4zyuyf4n44sFlLdTgkTdybq9WCyFqkXDHMOPvhV1Cb3wLvl659FYe4fH5UwHJvCykq0aajse8FGYlLV8qHSoVWBNxwe0ts8utWbOEdyxiAYO3ndLueTkW5O1WsL9YrWP8UCrFz9rqbEuhVp0SGtGiVwRcdHwMYyipxwH3YxeLrC+wvSC+cZP5KMu2XdVJ+7Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB3629.namprd11.prod.outlook.com (2603:10b6:208:f0::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 03:56:29 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 03:56:29 +0000
Date: Tue, 16 Aug 2022 20:56:26 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817035626.jbcfcy6f64bbdmhg@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0039.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e2fce39-6a51-466d-133c-08da800476e4
X-MS-TrafficTypeDiagnostic: MN2PR11MB3629:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /f8CykrUlnAyo2ZHue1O9y1W7xgpuB1oj3PgCFbCnyyIco9c5yiZmzxuplvvieOqWGJ4OLcEOfO5tI978uADmu2KIKj5N0SpxEAAu8XmpklFQqpIUWNHl/pIpPZk4nsCsOO0i7+D0eof3rcBFZFgsAY/O8TShwZE06Q8sAmjZriT0QlZ67OFu8yeCytiz416Cm9sHM4Vy/iIAZui/uBwWLE7tR+dj9iqzTCKqq3LOLm6QRdLZTF1N1HmP7GR9BHH7ksb1FKvCViENB7UhP30Gai1eqwcezE8n2iqZhQdTmFbaf+boNo9nlLa0KNA+bc/RekljKXjDXfhovZBDiQPzq7k7WtnWWx+cUXZyNozyxz4TwDkPhrRUOWT8p/QFUhfwlLSNwLQ5KKQkYKY6UCgVuBEVjolyrKhB0mzv53E3F9oFQvVZuls5k8IVovQBqF6ChOjWxH6SNFl/CWoUxN4IVv460Yq7dh9AUE497IrGYIBWWzsXx/PoFnlsSMsSkS0DBugk73II+HfYrQisLg4e5a5QNaa53sh9BK67oGkqtMyMZIOJvVzR85+GW0vdIGrpnKdTE89ypTTBoFvKn2mtm9Z/A5zfZui4sQz4cuUCKLCAMCF6CyENOlUrtqNSnFz+OZQ2iClA1wkD8qFiHT4SReUviGMyXFAKF2jkmRDEftzK2LNDWK4NfEdpoJ/CqUnorAj4L9nUgcKYQ9ieUfJJ9EPBkFZZLIHunM4FQ2MSs1WE4toOMcvXDior6dTtTwY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(136003)(39860400002)(396003)(346002)(4326008)(8676002)(66946007)(66476007)(66556008)(186003)(1076003)(6862004)(8936002)(5660300002)(86362001)(6636002)(316002)(2906002)(36756003)(83380400001)(6512007)(6506007)(6666004)(9686003)(26005)(82960400001)(41300700001)(6486002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IRW00uMxZzk2w50ROUKr9wSqTgWELjJ51IRrLjLrGvWMNvbcA2ZpDdJU3ltC?=
 =?us-ascii?Q?vETXjYVh8fVss4DLWN+4HAUifEMrWt6PLdsgfTDmJnwSthaE19lS5tnoIN07?=
 =?us-ascii?Q?GAaUeV557eztOJVqSIGykBeFz6bmSwWWp+ZENC2wZ+fBgzGV6hSqXezKyBcZ?=
 =?us-ascii?Q?cNPmO6N7O1bPBv/yxFUN3PrOPRJVdWdcIUj9jYXudgqhgvmKWS/tguVFIiJm?=
 =?us-ascii?Q?OwfJfYE0RH+8VK/VrQ7SQ4guuunkP4xZmSjsiWlfanYiTquaEHknEDgZeOSw?=
 =?us-ascii?Q?bOa2LgvRlCySN7rgO6Vkv4u183h+SK+zIVRwGRhvdAYvQNNm6LZlvFqwa7S7?=
 =?us-ascii?Q?Cw7zQTT9WWv0HjW20gCvyD9NZLmmoaRQJJ+F8y+/cTRIaOrH6QQ8wTs1D2GR?=
 =?us-ascii?Q?iJEfVIpTAFiLUt0xDLoug1KnAm/7uhvFQ1HAa/+T3JbHdJQg9m7ZZ8mTyz7X?=
 =?us-ascii?Q?+s/bTL870DLHMZg+DkaeCZguDcRKxokVgf61Q4KuN0IHPH/hPMNeq0/PVOty?=
 =?us-ascii?Q?C7v9Rh4/5s0k/1vrIFNNXYhxiP4Gbf+6x+tQovLjginmwCFXIo8uX9cpC0yP?=
 =?us-ascii?Q?UE5ZsdPk0bVVB9+ii0mUhESA4nxHAvQ1158nIly14JXO6C5+4ZoIyMqRXwO0?=
 =?us-ascii?Q?8oUSZ889QvGZw7pltk5ER01cdaJe0KPHKcdWI/+sTLfPitdurOCP/whyEUER?=
 =?us-ascii?Q?JK/KBnF8HvkolbsPq9Ha3eAna3Q5AtQ/vYof96pPiXVRqTqNx3PRCRiF3OXm?=
 =?us-ascii?Q?hTTWalnZ4cX08zRcifxopCMzApr18kKLroU0u4nFu5OnoH9HXUO1IOJX3Pfb?=
 =?us-ascii?Q?CjUoN09zXc7aIZv1O+YWiFXP78fsNr2tMWJ405RSmroijDp/oSEi5W55pwY1?=
 =?us-ascii?Q?eqpE+/hF3HXrlk2jAEVXsztv0SZqdb1RiNp0kfjVIST48BJcms2WgeoTpPAr?=
 =?us-ascii?Q?1XtwXoUT2Xo6hUYyEXG6T2Z8Q7J7s+rfAHZMovqbxd3Wq8anoVTwMjw/1t/y?=
 =?us-ascii?Q?i8rmoHjZEg4d6GSC0id3KRGzJvfDopuvsje0xBELKp0dM24IsolkUClVJC3T?=
 =?us-ascii?Q?gOeQ6CQ9JvNJ+0YSMWMy2ny6dKjoCD3FIZgCn33dSPQRJc6LrEl7OOJpuuj3?=
 =?us-ascii?Q?VrRzEqL8UI1d2UXWawpDDyxYYoQjVMFg/77/Nss0lL1FwLC6kU0/4XiZ9da/?=
 =?us-ascii?Q?mpAQOCWgbewWawiO3jzdzP8iYfbhKRgwEg/Nou5cjfRvVaj996FNmM1q4r9a?=
 =?us-ascii?Q?MJMEAHJRq3QdKytW5LtGLJIvRJVg02VU71rgKoSf2QO1W6LL832tWxJF/eJK?=
 =?us-ascii?Q?C7lBesSq29LRzxxtINJFnLqomOwnFyHAgw9UgshA7wS23ObTPPItkuLjqhmS?=
 =?us-ascii?Q?jAXq2nuYCqFU4/0FPkspkcvE0yPhSfYB7vaXTUobjYGzf6MtoAWmNPX6VfjP?=
 =?us-ascii?Q?mpn9wdhrjP91Ij0llQroDUPx1gFU29zE/solgPA3JK42CuuMPwSW/zReFeob?=
 =?us-ascii?Q?FOb/CiJhfFRiVG2fj8FM1GE0l72Bsqy8r3hL4/ZcxT7QgQwPcHFkH+mdu90d?=
 =?us-ascii?Q?fio85mHLhGMUP8d0HEVFYdW6R260gFwnQ1qe1C0qcytAZbhYWBYVF46odJl7?=
 =?us-ascii?Q?/g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e2fce39-6a51-466d-133c-08da800476e4
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 03:56:29.0478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yfbWBMEjvM4KwabnlzJ4k8txhe0IFglRC9qmajYeg137JVWzeARQ8j4e1Q5hik03i6uH3bFXcNVf8cuSc0Irxd+DkFO+bG8izIIJTArX+tg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3629
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
 members under display.gmbus
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 11, 2022 at 06:07:20PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +--
> .../gpu/drm/i915/display/intel_display_core.h | 23 ++++++++++
> drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
> drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 +++++++++----------
> drivers/gpu/drm/i915/i915_drv.h               | 16 -------
> drivers/gpu/drm/i915/i915_irq.c               |  4 +-
> drivers/gpu/drm/i915/i915_reg.h               | 14 +++---
> 7 files changed, 59 insertions(+), 52 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>index 6095f5800a2e..ea40c75c2986 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -2098,12 +2098,12 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
> 	 * functions use cdclk. Not all platforms/ports do,
> 	 * but we'll lock them all for simplicity.
> 	 */
>-	mutex_lock(&dev_priv->gmbus_mutex);
>+	mutex_lock(&dev_priv->display.gmbus.mutex);
> 	for_each_intel_dp(&dev_priv->drm, encoder) {
> 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>
> 		mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
>-				     &dev_priv->gmbus_mutex);
>+				     &dev_priv->display.gmbus.mutex);
> 	}
>
> 	intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe);
>@@ -2113,7 +2113,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>
> 		mutex_unlock(&intel_dp->aux.hw_mutex);
> 	}
>-	mutex_unlock(&dev_priv->gmbus_mutex);
>+	mutex_unlock(&dev_priv->display.gmbus.mutex);
>
> 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index 306584c038c9..fe19d4f9a9ab 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -6,7 +6,11 @@
> #ifndef __INTEL_DISPLAY_CORE_H__
> #define __INTEL_DISPLAY_CORE_H__
>
>+#include <linux/mutex.h>
> #include <linux/types.h>
>+#include <linux/wait.h>
>+
>+#include "intel_gmbus.h"
>
> struct drm_i915_private;
> struct intel_atomic_state;
>@@ -78,6 +82,25 @@ struct intel_display {
> 		/* Display internal color functions */
> 		const struct intel_color_funcs *color;
> 	} funcs;
>+
>+	/* Grouping using anonymous structs. Keep sorted. */

this maybe deserves to be a comment on top of struct intel_display.
Maybe alsos s/Grouping/Group/

regardless,


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
