Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC499433E3C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 20:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A1E06E1E0;
	Tue, 19 Oct 2021 18:15:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A6466E1E0;
 Tue, 19 Oct 2021 18:15:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="292057550"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="292057550"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 11:15:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494226142"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 19 Oct 2021 11:15:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Oct 2021 21:15:02 +0300
Date: Tue, 19 Oct 2021 21:15:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lyude Paul <lyude@redhat.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <seanpaul@chromium.org>, open list <linux-kernel@vger.kernel.org>
Message-ID: <YW8LJrCi41BkterA@intel.com>
References: <20211006024018.320394-1-lyude@redhat.com>
 <20211006024018.320394-6-lyude@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211006024018.320394-6-lyude@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915: Clarify probing order in
 intel_dp_aux_init_backlight_funcs()
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

On Tue, Oct 05, 2021 at 10:40:18PM -0400, Lyude Paul wrote:
> Hooray! We've managed to hit enough bugs upstream that I've been able to
> come up with a pretty solid explanation for how backlight controls are
> actually supposed to be detected and used these days. As well, having the
> rest of the PWM bits in VESA's backlight interface implemented seems to
> have fixed all of the problematic brightness controls laptop panels that
> we've hit so far.
> 
> So, let's actually document this instead of just calling the laptop panels
> liars. As well, I would like to formally apologize to all of the laptop
> panels I called liars. I'm sorry laptop panels, hopefully you can all
> forgive me and we can move past this~
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> ---
>  .../drm/i915/display/intel_dp_aux_backlight.c    | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 91daf9ab50e8..04a52d6a74ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -455,11 +455,17 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>  	}
>  
>  	/*
> -	 * A lot of eDP panels in the wild will report supporting both the
> -	 * Intel proprietary backlight control interface, and the VESA
> -	 * backlight control interface. Many of these panels are liars though,
> -	 * and will only work with the Intel interface. So, always probe for
> -	 * that first.
> +	 * Since Intel has their own backlight control interface, the majority of machines out there
> +	 * using DPCD backlight controls with Intel GPUs will be using this interface as opposed to
> +	 * the VESA interface. However, other GPUs (such as Nvidia's) will always use the VESA
> +	 * interface. This means that there's quite a number of panels out there that will advertise
> +	 * support for both interfaces, primarily systems with Intel/Nvidia hybrid GPU setups.
> +	 *
> +	 * There's a catch to this though: on many panels that advertise support for both
> +	 * interfaces, the VESA backlight interface will stop working once we've programmed the
> +	 * panel with Intel's OUI - which is also required for us to be able to detect Intel's
> +	 * backlight interface at all. This means that the only sensible way for us to detect both
> +	 * interfaces is to probe for Intel's first, and VESA's second.
>  	 */

You know a lot more about this than I do.

Acked-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

>  	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector)) {
>  		drm_dbg_kms(dev, "Using Intel proprietary eDP backlight controls\n");
> -- 
> 2.31.1

-- 
Ville Syrj�l�
Intel
