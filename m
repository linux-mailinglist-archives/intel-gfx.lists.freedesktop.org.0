Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6952C9055
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2BB6E8D3;
	Mon, 30 Nov 2020 21:57:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DA66E8D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:57:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23168621-1500050 for multiple; Mon, 30 Nov 2020 21:57:08 +0000
MIME-Version: 1.0
In-Reply-To: <20201130212200.2811939-4-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
 <20201130212200.2811939-4-imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 21:57:07 +0000
Message-ID: <160677342757.12351.14998665573486802935@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Track power references taken
 for enabled CRTCs
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

Quoting Imre Deak (2020-11-30 21:21:54)
> Add wakeref tracking for display power domain references taken for
> enabled CRTCs.
> 
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 38 ++++++++-----------
>  .../drm/i915/display/intel_display_types.h    |  2 +-
>  2 files changed, 17 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d80d15d96d4c..a6043197171b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7575,25 +7575,25 @@ modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state)
>         enum intel_display_power_domain domain;
>         u64 domains, new_domains, old_domains;
>  
> -       old_domains = crtc->enabled_power_domains;
> -       crtc->enabled_power_domains = new_domains =
> -               get_crtc_power_domains(crtc_state);
> +       domains = get_crtc_power_domains(crtc_state);
>  
> -       domains = new_domains & ~old_domains;
> +       new_domains = domains & ~crtc->enabled_power_domains.mask;
> +       old_domains = crtc->enabled_power_domains.mask & ~domains;

new / old denote the changes.

>  
> -       for_each_power_domain(domain, domains)
> -               intel_display_power_get(dev_priv, domain);
> +       for_each_power_domain(domain, new_domains)
> +               intel_display_power_get_in_set(dev_priv,
> +                                              &crtc->enabled_power_domains,
> +                                              domain);
>  
> -       return old_domains & ~new_domains;
> +       return old_domains;

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
