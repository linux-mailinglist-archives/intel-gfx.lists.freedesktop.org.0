Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C96229337
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jul 2020 10:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7D86E7F5;
	Wed, 22 Jul 2020 08:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86F236E7F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jul 2020 08:13:29 +0000 (UTC)
IronPort-SDR: VM6bc0ROmvRtz86uc9CU7a56AoJ8UvfrZZGXg9gcWJpcA3oyU1dvtZv5HnDuGiOoFUkpgxFQOf
 lbLRYme2yQww==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="138371746"
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="138371746"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 01:13:29 -0700
IronPort-SDR: hgT758JX8OPlogINsSFsMmUQ58cV4kziGZoRcovV/8/l90WbXSUKBnoPmrvCuWJ1/jrV5jlobi
 c8SHRdHWzNZA==
X-IronPort-AV: E=Sophos;i="5.75,381,1589266800"; d="scan'208";a="284146412"
Received: from unknown (HELO [10.214.224.104]) ([10.214.224.104])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 01:13:27 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200721204001.12473-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <858b5101-1539-4577-50dd-2e25281dff34@linux.intel.com>
Date: Wed, 22 Jul 2020 09:13:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200721204001.12473-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Copy default modparams to mock
 i915_device
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/07/2020 21:40, Chris Wilson wrote:
> Since we use the module parameters stored inside the drm_i915_device
> itself, we need to ensure the mock i915_device also sets up the right
> defaults.
> 
> Fixes: 8a25c4be583d ("drm/i915/params: switch to device specific parameters")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/selftests/mock_gem_device.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index 9a46be05425a..ce4d4303229c 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -77,6 +77,7 @@ static void mock_device_release(struct drm_device *dev)
>   	drm_mode_config_cleanup(&i915->drm);
>   
>   out:
> +	i915_params_free(&i915->params);
>   	put_device(&i915->drm.pdev->dev);
>   	i915->drm.pdev = NULL;
>   }
> @@ -159,6 +160,8 @@ struct drm_i915_private *mock_gem_device(void)
>   	i915->drm.pdev = pdev;
>   	drmm_add_final_kfree(&i915->drm, i915);
>   
> +	i915_params_copy(&i915->params, &i915_modparams);
> +
>   	intel_runtime_pm_init_early(&i915->runtime_pm);
>   
>   	/* Using the global GTT may ask questions about KMS users, so prepare */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
