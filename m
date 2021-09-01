Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CE23FDEB5
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 17:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A4016E1FB;
	Wed,  1 Sep 2021 15:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 351D16E1FB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 15:32:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198341697"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="198341697"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 08:32:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="532238688"
Received: from josearun-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.212.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 08:32:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>, William Tseng <william.tseng@intel.com>
In-Reply-To: <20210901085445.427-6-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210901085445.427-1-shawn.c.lee@intel.com>
 <20210901085445.427-6-shawn.c.lee@intel.com>
Date: Wed, 01 Sep 2021 18:32:15 +0300
Message-ID: <871r68b9c0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/dsi: Read/write proper
 brightness value via MIPI DCS command
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

On Wed, 01 Sep 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> Driver has to swap the endian before send brightness level value
> to tcon.
>
> v2: Use __be16 instead of u16 to fix sparse warning.
> v3: Send one or two bytes brightness value depend on the precision.
>
> Reported-by: kernel test robot <lkp@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  .../drm/i915/display/intel_dsi_dcs_backlight.c    | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index 21ab9e1acb57..722411b5cb21 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -47,33 +47,36 @@ static u32 dcs_get_backlight(struct intel_connector *connector, enum pipe unused
>  {
>  	struct intel_encoder *encoder = intel_attached_encoder(connector);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> +	struct intel_panel *panel = &connector->panel;
>  	struct mipi_dsi_device *dsi_device;
> -	u8 data = 0;
> +	u8 data[2] = {0, 0};

	u8 data[2] = {};

>  	enum port port;

	size_t len = panel->backlight.max > U8_MAX ? 2 : 1;

>  
>  	/* FIXME: Need to take care of 16 bit brightness level */
>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
>  		mipi_dsi_dcs_read(dsi_device, MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
> -				  &data, sizeof(data));
> +				  &data,
> +				  (panel->backlight.max >> 8) ? sizeof(data) : 1);
>  		break;
>  	}
>  
> -	return data;
> +	return ((data[1] << 8) | data[0]);

Unnecessary braces around the whole thing.

>  }
>  
>  static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32 level)
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
> +	struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
>  	struct mipi_dsi_device *dsi_device;
> -	u8 data = level;
> +	__be16 data = cpu_to_be16(level);

I think it's confusing to use __be16 in set and u8 data[2] in get. Let's
just use u8 data[2] in both. Especially because this one will always
write 0 for len == 1 as it's big-endian data!

You may have to do something like to keep it clear:

	size_t len = panel->backlight.max > U8_MAX ? 2 : 1;

	if (len == 1) {
		data[0] = level;
	} else {
		data[0] = level >> 8;
		data[1] = level;
	}

>  	enum port port;
>  
> -	/* FIXME: Need to take care of 16 bit brightness level */
>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,
> -				   &data, sizeof(data));
> +				   &data,
> +				   (panel->backlight.max >> 8) ? sizeof(data) : 1);
>  	}
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
