Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FDA2EF6E1
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 19:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7EC6E869;
	Fri,  8 Jan 2021 18:01:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6105D6E869
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 18:01:37 +0000 (UTC)
IronPort-SDR: o1DwR05Az463vZg1JMlxF1Fr8ejLngQR1jzLCbmwTqysKLSN7fqyx8W1Szs+JaZi+d7jzQ75Ja
 UK3EQmAoL1Kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="175056330"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="175056330"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:01:36 -0800
IronPort-SDR: OqQ5ltb+muuEbqXp2/Q9rRWbx3fCEi9ZitXiUixe5Ca9yOl2o1dh9SV/++yaV9dzHvi48ubwMF
 c1utt4lCIJnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="350945221"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 08 Jan 2021 10:01:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Jan 2021 20:01:33 +0200
Date: Fri, 8 Jan 2021 20:01:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/id/brG1KiFYV4q@intel.com>
References: <20210104203905.19248-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210104203905.19248-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable RPM wakeref assertions
 during driver shutdown
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

On Mon, Jan 04, 2021 at 08:39:05PM +0000, Chris Wilson wrote:
> As with the regular suspend paths, also disable the wakeref assertions
> as we disable the driver during shutdown.
> =

> Reported-by: Hans de Goede <hdegoede@redhat.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2899
> Fixes: fe0f1e3bfdfe ("drm/i915: Shut down displays gracefully on reboot")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Hans de Goede <hdegoede@redhat.com>

lgtm
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.c | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 249f765993f7..643a899b3b44 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1046,6 +1046,8 @@ static void intel_shutdown_encoders(struct drm_i915=
_private *dev_priv)
>  =

>  void i915_driver_shutdown(struct drm_i915_private *i915)
>  {
> +	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> +
>  	i915_gem_suspend(i915);
>  =

>  	drm_kms_helper_poll_disable(&i915->drm);
> @@ -1059,6 +1061,8 @@ void i915_driver_shutdown(struct drm_i915_private *=
i915)
>  =

>  	intel_suspend_encoders(i915);
>  	intel_shutdown_encoders(i915);
> +
> +	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  }
>  =

>  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
