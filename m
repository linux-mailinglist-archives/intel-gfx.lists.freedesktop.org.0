Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E8A64B345
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 11:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1FD10E2FD;
	Tue, 13 Dec 2022 10:32:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4909F10E2FD
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 10:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670927526; x=1702463526;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DeuY4UxGCSAV+pEXu3EjcrpZo6mkG4UOJ2QkULW1Ybw=;
 b=WS7HwGm4qOvH6rJeOUexAUmxX7YPERaXj/3urF9iX+dmFe+k+40/KCu1
 lDayJhUax+eW+NTHNAIRrMEBQj9hcPC/DzwCKU0M/Qt5JNj85DjsuKhhl
 LluDitBuFNZIRQiVjdwCirGqUF5O4uX/AMJeb9tJC9qkVktAwptU75M+Q
 I88Sh3l/FwhqsiIYv4dyWp6Zvv4Xato8+mLGw3zA/LZNTS70MIUaiJi1d
 Ly3L7Biqiiwl0CWIARmcnclIjBM9NNceE2G2z5tVMxuJ9dthOjiS1vN2f
 YMaf9otCBx50g1dTv1g/EDlDGcuRircIllLpLveQbdSeqRw/oX3e9AUec g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="319244000"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="319244000"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:32:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="717198492"
X-IronPort-AV: E=Sophos;i="5.96,241,1665471600"; d="scan'208";a="717198492"
Received: from amicu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.19.220])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 02:32:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221213070158.2621403-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221213070158.2621403-1-suraj.kandpal@intel.com>
 <20221213070158.2621403-3-suraj.kandpal@intel.com>
Date: Tue, 13 Dec 2022 12:32:01 +0200
Message-ID: <87bko7y4pq.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915/hdcp: Keep cp fw agonstic
 naming convention
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
Cc: Tomas Winkler <tomas.winkler@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Dec 2022, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> From: Anshuman Gupta <anshuman.gupta@intel.com>
>
> Change the include/drm/i915_mei_hdcp_interface.h to
> include/drm/i915_cp_fw_hdcp_interface.h

If you want to make an hdcp interface naming agnostic to the
implementation details, why do we have to have "fw" in the naming, at
all?

Why is "cp" duplicated?

You're calling the file "i915 Content Protection Firmware High-bandwidth
Digital Content Protection Interface".

Why are the names *impossible* to pronounce?

I'd just make this "i915_hdcp_interface".


BR,
Jani.

>
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Acked-by: Tomas Winkler <tomas.winkler@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h          | 2 +-
>  drivers/misc/mei/hdcp/mei_hdcp.c                            | 2 +-
>  ...915_mei_hdcp_interface.h => i915_cp_fw_hdcp_interface.h} | 6 +++---
>  3 files changed, 5 insertions(+), 5 deletions(-)
>  rename include/drm/{i915_mei_hdcp_interface.h => i915_cp_fw_hdcp_interface.h} (97%)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 32e8b2fc3cc6..52d93e89b4c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -43,7 +43,7 @@
>  #include <drm/drm_rect.h>
>  #include <drm/drm_vblank.h>
>  #include <drm/drm_vblank_work.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_cp_fw_hdcp_interface.h>
>  #include <media/cec-notifier.h>
>  
>  #include "i915_vma.h"
> diff --git a/drivers/misc/mei/hdcp/mei_hdcp.c b/drivers/misc/mei/hdcp/mei_hdcp.c
> index e889a8bd7ac8..7e3cd3fd7f7b 100644
> --- a/drivers/misc/mei/hdcp/mei_hdcp.c
> +++ b/drivers/misc/mei/hdcp/mei_hdcp.c
> @@ -23,7 +23,7 @@
>  #include <linux/component.h>
>  #include <drm/drm_connector.h>
>  #include <drm/i915_component.h>
> -#include <drm/i915_mei_hdcp_interface.h>
> +#include <drm/i915_cp_fw_hdcp_interface.h>
>  
>  #include "mei_hdcp.h"
>  
> diff --git a/include/drm/i915_mei_hdcp_interface.h b/include/drm/i915_cp_fw_hdcp_interface.h
> similarity index 97%
> rename from include/drm/i915_mei_hdcp_interface.h
> rename to include/drm/i915_cp_fw_hdcp_interface.h
> index f441cbcd95a4..e5dc6b985b2f 100644
> --- a/include/drm/i915_mei_hdcp_interface.h
> +++ b/include/drm/i915_cp_fw_hdcp_interface.h
> @@ -6,8 +6,8 @@
>   * Ramalingam C <ramalingam.c@intel.com>
>   */
>  
> -#ifndef _I915_MEI_HDCP_INTERFACE_H_
> -#define _I915_MEI_HDCP_INTERFACE_H_
> +#ifndef _I915_CP_FW_HDCP_INTERFACE_H_
> +#define _I915_CP_FW_HDCP_INTERFACE_H_
>  
>  #include <linux/mutex.h>
>  #include <linux/device.h>
> @@ -181,4 +181,4 @@ struct i915_hdcp_comp_master {
>  	struct mutex mutex;
>  };
>  
> -#endif /* _I915_MEI_HDCP_INTERFACE_H_ */
> +#endif /* _I915_CP_FW_HDCP_INTERFACE_H_ */

-- 
Jani Nikula, Intel Open Source Graphics Center
