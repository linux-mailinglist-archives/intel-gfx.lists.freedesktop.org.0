Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAC76EBDEC
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Apr 2023 10:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2547210E2F7;
	Sun, 23 Apr 2023 08:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 533 seconds by postgrey-1.36 at gabe;
 Sun, 23 Apr 2023 08:19:04 UTC
Received: from bmailout3.hostsharing.net (bmailout3.hostsharing.net
 [176.9.242.62])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796E810E2F7
 for <intel-gfx@lists.freedesktop.org>; Sun, 23 Apr 2023 08:19:04 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net",
 Issuer "RapidSSL Global TLS RSA4096 SHA256 2022 CA1" (verified OK))
 by bmailout3.hostsharing.net (Postfix) with ESMTPS id DB080100DA1A9;
 Sun, 23 Apr 2023 10:10:07 +0200 (CEST)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
 id A632317B1FB; Sun, 23 Apr 2023 10:10:07 +0200 (CEST)
Date: Sun, 23 Apr 2023 10:10:07 +0200
From: Lukas Wunner <lukas@wunner.de>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230423081007.GA2048@wunner.de>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <5807d1d2eb484ca90eceb4689261942a5ab3c8d1.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5807d1d2eb484ca90eceb4689261942a5ab3c8d1.1682077472.git.jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 10/13] drm/i915/lvds: switch to
 drm_edid_read_switcheroo()
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

On Fri, Apr 21, 2023 at 02:47:48PM +0300, Jani Nikula wrote:
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -943,17 +943,8 @@ void intel_lvds_init(struct drm_i915_private *i915)
>  	 */
>  	mutex_lock(&i915->drm.mode_config.mutex);
>  	if (vga_switcheroo_handler_flags() & VGA_SWITCHEROO_CAN_SWITCH_DDC) {
> -		const struct edid *edid;
> -
> -		/* FIXME: Make drm_get_edid_switcheroo() return drm_edid */
> -		edid = drm_get_edid_switcheroo(&connector->base,
> -					       intel_gmbus_get_adapter(i915, pin));
> -		if (edid) {
> -			drm_edid = drm_edid_alloc(edid, (edid->extensions + 1) * EDID_LENGTH);
> -			kfree(edid);
> -		} else {
> -			drm_edid = NULL;
> -		}
> +		drm_edid = drm_edid_read_switcheroo(&connector->base,
> +						    intel_gmbus_get_adapter(i915, pin));
>  	} else {
>  		drm_edid = drm_edid_read_ddc(&connector->base,
>  					     intel_gmbus_get_adapter(i915, pin));

No need for curly braces anymore, but regardless:

Reviewed-by: Lukas Wunner <lukas@wunner.de>
