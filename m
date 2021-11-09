Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 014B744A77C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 08:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 846FD6E02D;
	Tue,  9 Nov 2021 07:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFF2D6E02D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 07:23:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="213125534"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="213125534"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 23:23:02 -0800
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="503392456"
Received: from stkachen-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.216.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 23:23:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: William Tseng <william.tseng@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20211109065013.12717-1-william.tseng@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211109065013.12717-1-william.tseng@intel.com>
Date: Tue, 09 Nov 2021 09:22:57 +0200
Message-ID: <8735o57pym.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: transmit brightness command
 in HS state
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
Cc: William Tseng <william.tseng@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 09 Nov 2021, William Tseng <william.tseng@intel.com> wrote:
> In Video Mode, if DSI transcoder is set to transmit packets
> in LP Escape mode, screen flickering would be obseved when
> brightness commands are continuously and quickly transmitted
> to a panel.
>
> The problem may be resolved by changing the mode to transmit
> packets from Low Power to HS.
>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Lee Shawn C <shawn.c.lee@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Signed-off-by: William Tseng <william.tseng@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index f61ed82e8867..a71ef1eb598c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -81,6 +81,7 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
>  
>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
> +		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;

Frankly I forget how this is intended to be used, but feels like you
should maybe restore the flags afterwards.

BR,
Jani.

>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
>  				   &data, len);
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
