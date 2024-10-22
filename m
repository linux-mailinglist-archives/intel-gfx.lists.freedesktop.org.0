Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62189A9B97
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 09:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5476F10E5FD;
	Tue, 22 Oct 2024 07:57:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gCOz06Ck";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5028510E5FC;
 Tue, 22 Oct 2024 07:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729583847; x=1761119847;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=HPTHHXVqmzxVmCdn4stWJnXtd3Arzho3oq/NlowBvxs=;
 b=gCOz06CkJWFqHWopUMj5AtFEoqPLmzMXp3aQO6wnVXsNJJ+E2i00rTr9
 +Y7fSHqKhBxVpKra46Wrqq8Gq2mfI4IU6A6GVasKfj8IcsVYJuVTwgelp
 bb52HI8fl6g520g++eRt3e3GXcbXibh4JQw4IyTzLxR53u4Pe8ZQPotpl
 DGH+KV+K9GoK+ztn/vuC1NayZ0cQna98+nb0dYkSZWMOhavjvlAqBmdn/
 LVw+UjIeFV1x/6TQMw7FvVFHsb/fiSbabpKF/gBBcE5PCc3EwVh5ByVMz
 gzKEZZKyyFblrMdM0KTUtrWPwvvEgIsnc+SOyRPHUioiB/NSqcMFieTB0 A==;
X-CSE-ConnectionGUID: dVgTbdnZRzqV+6jq6lJxFA==
X-CSE-MsgGUID: N6Pb6guJQIa+/GmvZCEl2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="40479257"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="40479257"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:46:39 -0700
X-CSE-ConnectionGUID: IUMfSnd9Tz20mJ34xFKJyQ==
X-CSE-MsgGUID: p4uvcva7T5ySA4llHrbKQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="110598444"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:46:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>, Himal Prasad Ghimiray
 <himal.prasad.ghimiray@intel.com>
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
In-Reply-To: <20241022072920.102033-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
Date: Tue, 22 Oct 2024 10:46:34 +0300
Message-ID: <877ca0y3z9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 22 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add check to remove HDCP2 compatibility from BMG as it does not
> have GSC which ends up causing warning when we try to get reference
> of GSC FW.
>
> Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requirement")
> Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..2c1d0ee8cec2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>  
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>  {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>  }
>  
>  bool intel_hdcp_gsc_check_status(struct intel_display *display)
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 231677129a35..efa3441c249c 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -8,6 +8,7 @@
>  #include <linux/delay.h>
>  
>  #include "abi/gsc_command_header_abi.h"
> +#include "i915_drv.h"

Hrmh, xe code should not include i915_drv.h.

>  #include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
>  #include "xe_bo.h"
> @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
>  
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>  {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>  }
>  
>  bool intel_hdcp_gsc_check_status(struct intel_display *display)

-- 
Jani Nikula, Intel
