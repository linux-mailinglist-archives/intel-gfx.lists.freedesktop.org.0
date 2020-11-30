Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A672C903D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:48:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE5ED6E8CB;
	Mon, 30 Nov 2020 21:48:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBDE16E8CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:48:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23168591-1500050 for multiple; Mon, 30 Nov 2020 21:48:29 +0000
MIME-Version: 1.0
In-Reply-To: <20201130212200.2811939-3-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-3-imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 21:48:28 +0000
Message-ID: <160677290869.12351.18196304057123038582@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Factor out helpers to get/put
 a set of tracked power domains
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

Quoting Imre Deak (2020-11-30 21:21:53)
> Factor out helper functions to get/put a set of power domains that are
> tracked using their wakeref handles. The same is needed by the next
> patch adding tracking for enabled CRTC power domains.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 4aa0a09cf14f..64f4d57ff09b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -224,6 +224,13 @@ struct i915_power_domains {
>         struct i915_power_well *power_wells;
>  };
>  
> +struct intel_display_power_domain_set {
> +       uint64_t mask;

u64 mask
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
