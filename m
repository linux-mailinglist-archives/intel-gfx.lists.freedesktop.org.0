Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54783830CAB
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 19:23:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9C2C10E7AE;
	Wed, 17 Jan 2024 18:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B04D310E7AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 18:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705515782; x=1737051782;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=teYMc/GWXGIPPvcsKHAhnf1fQUToHy9mhua+fML/XmM=;
 b=Glz3vRebNWj54j8AZcl3Q6tNOqTLHzQoM8PV9y0lYcujjx2g6kqpJoAb
 rS84cd/AiUGXyxSHDl1VCFkul6Vjui9kKeO2y1RgMivng0uMMpbo/cF/o
 eyP3ccD+o9Xcz8wYAWk4xo3y37VplyZhizG4dD6fPMVU1KqGqIv7aeaYV
 KFqoLyjI81TJ0G/58zFG7ADmaV7rbJvh6UXdyIk0kkuMyvdjbXS3hlKgS
 jfWUADQTGdJvSynKD1E0nKcGT/NNl4MJDj0eR9SnPY8tThXrqqQpI4gWd
 yIJRCSS5wZv1Z34osoQi9jvuDw2NjwZC3fmSLrilcI1iIcwxu20yyoJ/H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7615971"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="7615971"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 10:23:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="1031422023"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="1031422023"
Received: from msznigir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.230])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 10:22:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Bhanuprakash Modem <bhanuprakash.modem@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [i-g-t 1/1] drm/i915/display: Dump display parameters to
 i915_display_capabilities
In-Reply-To: <20240117170503.3884942-1-bhanuprakash.modem@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240117170503.3884942-1-bhanuprakash.modem@intel.com>
Date: Wed, 17 Jan 2024 20:22:56 +0200
Message-ID: <87v87rq0ov.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 17 Jan 2024, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrot=
e:
> Include Display parameters in i915_display_capabilities debugfs.

Maybe remove them from i915_capabilities? What's the point in having
them in two places? (Or three, if you count the actual debugfs interface
to the params!)

>
> Cc: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 6f2d13c8ccf7..1eb296b5c38a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -625,6 +625,10 @@ static int i915_display_capabilities(struct seq_file=
 *m, void *unused)
>  	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>  	struct drm_printer p =3D drm_seq_file_printer(m);
>=20=20
> +	kernel_param_lock(THIS_MODULE);
> +	intel_display_params_dump(i915, &p);
> +	kernel_param_unlock(THIS_MODULE);

The kernel_param_lock/unlock are just cargo cult from the time these
were actually module parameters. They should be removed from
i915_capabilities as well.

BR,
Jani.

> +
>  	intel_display_device_info_print(DISPLAY_INFO(i915),
>  					DISPLAY_RUNTIME_INFO(i915), &p);

--=20
Jani Nikula, Intel
