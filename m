Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A316C2222
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 21:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B703010E319;
	Mon, 20 Mar 2023 20:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9266E10E313
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679342487; x=1710878487;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ub0lfUFF7yq8Sn4X1GfaEwjyQAfDIj1tWXLGmCSjgVg=;
 b=nGeXAQo7qXIYdB9bjZeLq9Hlar5JgKoapZ2t+6m4EaAYvej4JliuJOLi
 l0GCsc66cKqVVBAXPAEH2KmEts/87bnfiB/KeWTAm5pPfdgLgRXh/X4vk
 7ZdgK0d+Qb1JNuVKgzUL6EDlcQQfgNtLj7uzb2qkSQsEUlPHSwoy5/S//
 xpCncIedm+Dc7H0bNinc5pqOMo+cqc67iXyWZyrEiC9HfG9DiXBqY2TAE
 i0CY/oeNylIWvTbxU70eCegnpa+tupNlxkwy0cTK7k1yI4AQNyhJV6Ws+
 vCEKcWl/S7H1qDe+pSxUg0MmOx6IPoD+jJ5FdQv3Y2z/UHdKKGFGl0Xui w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="319165809"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="319165809"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 13:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="770325720"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="770325720"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 20 Mar 2023 13:01:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 22:01:24 +0200
Date: Mon, 20 Mar 2023 22:01:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZBi7lM6K22AK3VXo@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <20230316131724.359612-12-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316131724.359612-12-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/14] drm/i915/tc: Assume a TC port is
 legacy if VBT says the port has HDMI
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

On Thu, Mar 16, 2023 at 03:17:21PM +0200, Imre Deak wrote:
> Since an HDMI output can only be enabled in legacy mode on TC ports,
> assume that VBT is wrong and the port is legacy if VBT says the port is
> non-legacy and has HDMI.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c531fee888a49..e79da640759c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4494,6 +4494,13 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  			!intel_bios_encoder_supports_typec_usb(devdata) &&
>  			!intel_bios_encoder_supports_tbt(devdata);
>  
> +		if (!is_legacy && init_hdmi) {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "VBT says port %c is non-legacy TC and has HDMI, assume it's legacy TC\n",
> +				    port_name(port));
> +			is_legacy = true;
> +		}

Have we actually seen this in practice? And does the port then actually
work correctly?

If not then I think I'd just WARN an bail here.

> +
>  		intel_tc_port_init(dig_port, is_legacy);
>  
>  		encoder->update_prepare = intel_ddi_update_prepare;
> -- 
> 2.37.1

-- 
Ville Syrjälä
Intel
