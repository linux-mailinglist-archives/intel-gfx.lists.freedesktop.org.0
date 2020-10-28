Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F014529CFE2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 13:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FB86E508;
	Wed, 28 Oct 2020 12:20:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58CF6E508
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 12:20:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22822845-1500050 for multiple; Wed, 28 Oct 2020 12:20:45 +0000
MIME-Version: 1.0
In-Reply-To: <20201028111731.137873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20201028111731.137873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 12:20:42 +0000
Message-ID: <160388764295.31056.16690430323368192220@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/jsl: Disable cursor clock gating
 in HDR mode
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
Cc: hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tejas Upadhyay (2020-10-28 11:17:31)
> Display underrun in HDR mode when cursor is enabled.
> RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> As per W/A 1604331009, Disable cursor clock gating in HDR mode.
> 
> Bspec : 33451
> 
> Cc: Souza Jose <jose.souza@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 32 ++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h              |  5 +++
>  2 files changed, 37 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f41b6f8b5618..73c4a43e6e31 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -541,6 +541,19 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
>                                intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
>  }
>  
> +/* Wa_1604331009:jsl */
> +static void
> +jsl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
> +                      bool enable)
> +{
> +       if (enable)
> +               intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> +                              intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | CURSOR_GATING_DIS);
> +       else
> +               intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
> +                              intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~CURSOR_GATING_DIS);

intel_de_rmw(i915, CLKGATE_DIS_PSL(pipe),
	CURSOR_GATING_DIS, enable ? CURSOR_GATING_DIS : 0);
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
