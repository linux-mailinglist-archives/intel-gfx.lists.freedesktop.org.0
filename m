Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ACF3F0248
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 13:11:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF736E530;
	Wed, 18 Aug 2021 11:11:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F2466E530
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 11:11:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="203499699"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="203499699"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 04:11:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="521016053"
Received: from mdbadill-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.92])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 04:10:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Lee Shawn C <shawn.c.lee@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>,
 Vandita Kulkarni <vandita.kulkarni@intel.com>,
 Cooper Chiou <cooper.chiou@intel.com>, William Tseng <william.tseng@intel.com>
In-Reply-To: <20210813024649.7197-1-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210812154237.13911-8-shawn.c.lee@intel.com>
 <20210813024649.7197-1-shawn.c.lee@intel.com>
Date: Wed, 18 Aug 2021 14:10:54 +0300
Message-ID: <87zgtfgg8x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v4] drm/i915/dsi: Send proper brightness value via
 MIPI DCS command
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

On Fri, 13 Aug 2021, Lee Shawn C <shawn.c.lee@intel.com> wrote:
> Driver has to swap the endian before send brightness level value
> to tcon.
>
> v2: Use __be16 instead of u16 to fix sparse warning.
>
> Reported-by: kernel test robot <lkp@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: William Tseng <william.tseng@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> index cd85520d36e2..71c2adfa8931 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
> @@ -66,10 +66,9 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
>  {
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
>  	struct mipi_dsi_device *dsi_device;
> -	u8 data = level;
> +	__be16 data = cpu_to_be16(level);

Just discussed this with Vandita. Both the set and get brightness need
to be adjusted, and the read/write size (one or two bytes) has to depend
on the precision. From MIPI DCS spec:

	Note: It is up to display manufacturer to determine the
	implementation of this register and background logic. Only one
	parameter shall be sent for devices that support 8-bit
	brightness levels. Two parameters shall be sent for devices that
	support between 9-bit and 16-bit brightness levels.

BR,
Jani.


>  	enum port port;
>  
> -	/* FIXME: Need to take care of 16 bit brightness level */
>  	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
>  		dsi_device = intel_dsi->dsi_hosts[port]->device;
>  		mipi_dsi_dcs_write(dsi_device, MIPI_DCS_SET_DISPLAY_BRIGHTNESS,

-- 
Jani Nikula, Intel Open Source Graphics Center
