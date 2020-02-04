Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EAA151C8F
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 15:49:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DABF16F384;
	Tue,  4 Feb 2020 14:49:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E77C6F384
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 14:49:33 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 06:49:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,402,1574150400"; d="scan'208";a="311066167"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 04 Feb 2020 06:49:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Feb 2020 16:49:29 +0200
Date: Tue, 4 Feb 2020 16:49:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204144929.GT13686@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
 <30a2069f1b923ebd7b3451c96344397fa9c85823.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <30a2069f1b923ebd7b3451c96344397fa9c85823.1580823606.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: split
 i915_driver_modeset_remove() to pre/post irq uninstall
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 04, 2020 at 03:42:23PM +0200, Jani Nikula wrote:
> Push irq uninstall further up, by splitting i915_driver_modeset_remove()
> to two, the part with working irqs before irq uninstall, and the part
> after irq uninstall. No functional changes.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 5330a0f10e97..2ef4b8fc5f4c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -345,12 +345,15 @@ static int i915_driver_modeset_probe(struct drm_i91=
5_private *i915)
>  	return ret;
>  }
>  =

> +/* part #1: call before irq uninstall */
>  static void i915_driver_modeset_remove(struct drm_i915_private *i915)
>  {
>  	intel_modeset_driver_remove(i915);
> +}

I wonder if we can remove some layers of this cake eventually.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  =

> -	intel_irq_uninstall(i915);
> -
> +/* part #2: call after irq uninstall */
> +static void i915_driver_modeset_remove_noirq(struct drm_i915_private *i9=
15)
> +{
>  	intel_modeset_driver_remove_noirq(i915);
>  =

>  	intel_bios_driver_remove(i915);
> @@ -1591,6 +1594,10 @@ void i915_driver_remove(struct drm_i915_private *i=
915)
>  =

>  	i915_driver_modeset_remove(i915);
>  =

> +	intel_irq_uninstall(i915);
> +
> +	i915_driver_modeset_remove_noirq(i915);
> +
>  	i915_reset_error_state(i915);
>  	i915_gem_driver_remove(i915);
>  =

> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
