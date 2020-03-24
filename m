Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA751191593
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 17:01:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5876E4A6;
	Tue, 24 Mar 2020 16:01:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798916E4A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 16:01:52 +0000 (UTC)
IronPort-SDR: UHiKfkYQPlStvqVH5Mi3Xf+s3cog+OKbG7aUpqMNel6hSe68SDc8xMt12B3944OmnC+BJJZTDA
 272dpBJH0SeQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 09:01:34 -0700
IronPort-SDR: HuY551oxwNBeDSQZm2Q5RwhS2cN3l7wBCZFTBdVDI75ZXnIZckCzXqDwJfRnHs0GpcIzw+z272
 jSYo+bTIbycw==
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="419940879"
Received: from kkarwows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.56.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 09:01:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200324132530.6204-4-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200324132530.6204-1-anshuman.gupta@intel.com>
 <20200324132530.6204-4-anshuman.gupta@intel.com>
Date: Tue, 24 Mar 2020 18:01:42 +0200
Message-ID: <875zetbv2x.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915: Add connector dbgfs for
 all connectors
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
Cc: ankit.k.nautiyal@intel.com, martin.peres@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Mar 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> Add connector debugfs attributes for each intel
> connector which is getting register.

Okay, so this is a good idea, and for that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> v2:
> - adding connector debugfs for each connector in
>   intel_connector_register() to fix CI failure for legacy connectors.

However, it's *not* a good idea for the purpose of registering the lpsp
debugfs file for every connector out there. There's no point in that, at
all. You need to register the file only when it makes sense in
intel_connector_debugfs_add(), and not for every conceivable connector
out there.

And your igt test absolutely *must* check if the debugfs is there or
not, and handle it gracefully.

BR,
Jani.

>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_connector.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_dp.c        | 3 ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c      | 3 ---
>  3 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
> index 903e49659f56..0cf5fe326a0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -33,6 +33,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_connector.h"
> +#include "intel_display_debugfs.h"
>  #include "intel_display_types.h"
>  #include "intel_hdcp.h"
>  
> @@ -123,6 +124,8 @@ int intel_connector_register(struct drm_connector *connector)
>  		goto err_backlight;
>  	}
>  
> +	intel_connector_debugfs_add(connector);
> +
>  	return 0;
>  
>  err_backlight:
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7f1a4e55cda1..c4352d013c29 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -48,7 +48,6 @@
>  #include "intel_audio.h"
>  #include "intel_connector.h"
>  #include "intel_ddi.h"
> -#include "intel_display_debugfs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
> @@ -6204,8 +6203,6 @@ intel_dp_connector_register(struct drm_connector *connector)
>  	if (ret)
>  		return ret;
>  
> -	intel_connector_debugfs_add(connector);
> -
>  	DRM_DEBUG_KMS("registering %s bus for %s\n",
>  		      intel_dp->aux.name, connector->kdev->kobj.name);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 39930232b253..2d4dced7143e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -44,7 +44,6 @@
>  #include "intel_audio.h"
>  #include "intel_connector.h"
>  #include "intel_ddi.h"
> -#include "intel_display_debugfs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dpio_phy.h"
> @@ -2813,8 +2812,6 @@ intel_hdmi_connector_register(struct drm_connector *connector)
>  	if (ret)
>  		return ret;
>  
> -	intel_connector_debugfs_add(connector);
> -
>  	intel_hdmi_create_i2c_symlink(connector);
>  
>  	return ret;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
