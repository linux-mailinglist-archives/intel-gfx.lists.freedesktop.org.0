Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA818362218
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 16:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F5DF6EB79;
	Fri, 16 Apr 2021 14:23:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4796EB79
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 14:23:47 +0000 (UTC)
IronPort-SDR: FCxlXGjqUEiu+MLsJdn1b/t8LK9ra0nZ2rwMAKij94klm5AA+F3hJgaJfwaIDR5Jy2s/24cl+v
 1GyCbLgOWksg==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="182171035"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="182171035"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 07:23:46 -0700
IronPort-SDR: c+FI3oydeo1UnYvVMy7D0CuxTiDIzFiG/ULHSqqKGuFXsu/k0ae4CcJ8Zv7aU0bzsx9FKqgiGB
 TrXX879pyXsQ==
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; d="scan'208";a="425615875"
Received: from lelicken-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.37.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 07:23:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>, Wolfram Sang <wsa@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
In-Reply-To: <20210414172916.2689361-7-hsinyi@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210414172916.2689361-1-hsinyi@chromium.org>
 <20210414172916.2689361-7-hsinyi@chromium.org>
Date: Fri, 16 Apr 2021 17:23:37 +0300
Message-ID: <87y2dicnpy.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v19 6/6] drm/i915/selftests: Rename
 functions names
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
Cc: devicetree@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-i2c@vger.kernel.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Apr 2021, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> pm_resume and pm_suspend might be conflict with the ones defined in
> include/linux/suspend.h. Rename pm_resume{suspend} to
> i915_pm_resume{suspend} since they are only used here.

I agree with the rationale here.

Do you need this to be part of your series, or shall we just pick this
up for i915? (We might consider renaming to something else or prefix the
functions with _ though, as we also have existing i915_pm_suspend and
i915_pm_resume elsewhere.)

BR,
Jani.

>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reported-by: kernel test robot <lkp@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_gem.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> index dc394fb7ccfa..525afda9d31f 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -94,7 +94,7 @@ static int pm_prepare(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> -static void pm_suspend(struct drm_i915_private *i915)
> +static void i915_pm_suspend(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> @@ -116,7 +116,7 @@ static void pm_hibernate(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static void pm_resume(struct drm_i915_private *i915)
> +static void i915_pm_resume(struct drm_i915_private *i915)
>  {
>  	intel_wakeref_t wakeref;
>  
> @@ -152,12 +152,12 @@ static int igt_gem_suspend(void *arg)
>  	if (err)
>  		goto out;
>  
> -	pm_suspend(i915);
> +	i915_pm_suspend(i915);
>  
>  	/* Here be dragons! Note that with S3RST any S3 may become S4! */
>  	simulate_hibernate(i915);
>  
> -	pm_resume(i915);
> +	i915_pm_resume(i915);
>  
>  	err = switch_to_context(ctx);
>  out:
> @@ -192,7 +192,7 @@ static int igt_gem_hibernate(void *arg)
>  	/* Here be dragons! */
>  	simulate_hibernate(i915);
>  
> -	pm_resume(i915);
> +	i915_pm_resume(i915);
>  
>  	err = switch_to_context(ctx);
>  out:

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
