Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FC0622A95
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 12:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA9710E0D6;
	Wed,  9 Nov 2022 11:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B07510E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 11:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667993505; x=1699529505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HrZmHc7US1/V3wKEgc5kBsIhku9pgDAaWGOWF6DmsMw=;
 b=m8YStUEm1F082z3PVLV5dEaFqS4jIrM0VmzbUbnAeM9gJ/UqEPbgjH62
 CqvWrWwffHx/nO6+eHZMxmqVXLvn+n6UiS5kalGaM555o5/fYGeSqq4XD
 +8GLgJto/meQHMcPYogCmiokpubhphNneRgrLSnhAPbihNt4V9XIzTGNP
 RvjO6TTfFUMKL2wt2LryFHkij1Ehl9Wp3TMYxuR0DKQWqdq0AZwPqzYBp
 pdEvnQw+J/gRmvCfiJEB3bMVhpoxudd5LQTjKAK0ONjFUeJPtXh23xLFX
 l2W7aYgtjW3tBdiBRwA6hbDzflYbTIZttLq+1PJAP9yFFv5taxnajiDSn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312115590"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312115590"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 03:31:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636710408"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="636710408"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 09 Nov 2022 03:31:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 13:31:41 +0200
Date: Wed, 9 Nov 2022 13:31:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Y2uPnTDmboCF8j7c@intel.com>
References: <20221109111649.23062-1-ville.syrjala@linux.intel.com>
 <20221109111649.23062-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221109111649.23062-7-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Ignore LFP2 for now
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

On Wed, Nov 09, 2022 at 01:16:49PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> There are tons of ADL machines in the wild where the VBT has
> two child devices (eDP and HDMI) for port B. Our code can't
> handle that as the whole parse_ddi_port() stuff assumes a
> single child device per port. So even if we fix the PPS issues
> around the (typically) non-present second eDP port we still
> won't be able to use the HDMI port after the eDP init fails.
> 
> The easiest way to get the HDMI port operational is to just
> ignore the second eDP child device entirely. Dual eDP systems
> should be exceedingly rare anyway.

One thing I just realized when staring at the logs is that
the BIOS seems to leave the VDD on for the second PPS. So
with this patch we'll never actually turn it off :/

> 
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 31 ++++++++++++++++++++---
>  1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 64f927f6479d..1011ccc2836b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2705,10 +2705,33 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  	}
>  
>  	if (i915->display.vbt.ports[port]) {
> -		drm_dbg_kms(&i915->drm,
> -			    "More than one child device for port %c in VBT, using the first.\n",
> -			    port_name(port));
> -		return;
> +		const struct child_device_config *other_child =
> +			&i915->display.vbt.ports[port]->child;
> +
> +		/*
> +		 * FIXME: Temporary hack for many ADL machines where
> +		 * the VBT declares two eDPs, the second of which
> +		 * conflicts with an external HDMI port. Ideally
> +		 * we should fall back to consulting the HDMI port
> +		 * child device after the eDP init fails, but that
> +		 * does not work with the current port based
> +		 * i915->display.vbt.ports[] stuff.
> +		 *
> +		 * Hopefully this does not conflict with any other
> +		 * bogus VBT case...
> +		 */
> +		if (other_child->handle == DEVICE_HANDLE_LFP2 &&
> +		    child->handle != DEVICE_HANDLE_LFP2) {
> +			drm_dbg_kms(&i915->drm,
> +				    "More than one child device for port %c in VBT, using the last.\n",
> +				    port_name(port));
> +			i915->display.vbt.ports[port] = NULL;
> +		} else {
> +			drm_dbg_kms(&i915->drm,
> +				    "More than one child device for port %c in VBT, using the first.\n",
> +				    port_name(port));
> +			return;
> +		}
>  	}
>  
>  	sanitize_device_type(devdata, port);
> -- 
> 2.37.4

-- 
Ville Syrjälä
Intel
