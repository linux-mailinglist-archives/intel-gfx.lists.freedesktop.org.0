Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC01076EDFE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Aug 2023 17:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46BAC10E614;
	Thu,  3 Aug 2023 15:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C88A10E625
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Aug 2023 15:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691076277; x=1722612277;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=U6+/2AUq5sf/goWyZvoinLaDEj3EbVGhdNawLSW7Kmg=;
 b=BkGpabP6485R/rwgG+f1V/si8NRApC+EXjDBG2F9MzgM9PZ2NK/bf4sQ
 TZbaW7Ub3gEewghkYGREfK8i9ofATzP1+V7fRSpORZwQCg6XJ840KhvS6
 0aOb1mqxmvzMeOA169ZhlL/lfzbHHbAhObrr0SpqcuaP7lLUeI1SE0PjA
 fAqs3QybY4vnzuCOEILUUqUe8BE4+H0X2I/6Q0AAj8oU2OdCP8rOgN+bE
 yfmWBTZSS817Gf0lOvxOCHzO1u0D2vufvfmEXvJ/NAArZ2rt4hbm1VfXG
 RkjXeC4mFsKDNSFNhMjheEuyK3yLodkLCRZ5/m9OqBpaMid5D4HStnYxG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="354836393"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="354836393"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 08:24:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="903426446"
X-IronPort-AV: E=Sophos;i="6.01,252,1684825200"; d="scan'208";a="903426446"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2023 08:24:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230803143530.27601-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230803143530.27601-1-juhapekka.heikkila@gmail.com>
Date: Thu, 03 Aug 2023 18:24:05 +0300
Message-ID: <873510up2i.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/sdvo: ignore returned broken edid
 on intel_sdvo_tmds_sink_detect
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

On Thu, 03 Aug 2023, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> If drm_edid_raw returned NULL on error don't try accessing anything behind
> that NULL
>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 8298a86d1334..065e619f934f 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2097,7 +2097,7 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>  		const struct edid *edid = drm_edid_raw(drm_edid);
>  
>  		/* DDC bus is shared, match EDID to connector type */
> -		if (edid->input & DRM_EDID_INPUT_DIGITAL)
> +		if (edid && edid->input & DRM_EDID_INPUT_DIGITAL)
>  			status = connector_status_connected;
>  		else
>  			status = connector_status_disconnected;

-- 
Jani Nikula, Intel Open Source Graphics Center
