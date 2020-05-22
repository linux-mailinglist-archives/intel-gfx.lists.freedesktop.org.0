Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF58A1DE79D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 15:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118C56E9D3;
	Fri, 22 May 2020 13:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CA976E9D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 May 2020 13:05:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21260516-1500050 for multiple; Fri, 22 May 2020 14:05:26 +0100
MIME-Version: 1.0
In-Reply-To: <20200522125534.19935-1-stanislav.lisovskiy@intel.com>
References: <20200522125534.19935-1-stanislav.lisovskiy@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159015272616.32320.7673829907075394808@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 22 May 2020 14:05:26 +0100
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Fix includes and local vars
 order
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Stanislav Lisovskiy (2020-05-22 13:55:34)
> Removed duplicate include and fixed comment > 80 chars.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c    | 43 ++++++++++++----------
>  drivers/gpu/drm/i915/display/intel_bw.h    |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
>  drivers/gpu/drm/i915/intel_pm.c            |  3 +-
>  drivers/gpu/drm/i915/intel_pm.h            |  2 +-
>  6 files changed, 29 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 8d2f58e39595..db9ba8f922bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -5,13 +5,12 @@
>  
>  #include <drm/drm_atomic_state_helper.h>
>  
> +#include "intel_atomic.h"
>  #include "intel_bw.h"
> -#include "intel_pm.h"
> +#include "intel_cdclk.h"
>  #include "intel_display_types.h"
> -#include "intel_sideband.h"
> -#include "intel_atomic.h"
>  #include "intel_pm.h"
> -#include "intel_cdclk.h"
> +#include "intel_sideband.h"

There was also the accidental remove of a '\n' before
intel_bw_crtc_update()

> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index dda9bae02a86..643701cca6ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -23,10 +23,10 @@
>  
>  #include <linux/time.h>

\n between system and local includes

>  #include "intel_atomic.h"
> +#include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
> -#include "intel_bw.h"

2 more nits then
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
s/Reviewed/Critiqued/
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
