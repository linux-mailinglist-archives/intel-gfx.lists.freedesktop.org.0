Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8E682978E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 11:28:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D62E910E5AD;
	Wed, 10 Jan 2024 10:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F5510E5AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 10:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704882500; x=1736418500;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=hamr/3L6tL32e/EOM+9Cy0Ph1wDwu6i8flb/fa3rkzY=;
 b=Buldf2Prw8vymh+ACrb1PjWuvFVArhRAfDTgYrwE5+EKt8cqTyn8zxuY
 hQYftAvZ8KwXokhg9tNuVg2ApwaB/nt7UgjWenvCIr78ikOOTVhcv6xSZ
 /p9Tw3wiYD9RgF3mVZaCYrPRxZKNVXkkcd0Z97WIwhWhKgD721WI1zfck
 nlVDGo+ZzRLjd8oIxQqFT1/CI8zgxqypC1z5BB9ka4rLCDV6tdbaTTrEP
 UqSuExFf70I4ft3H71ou9zR6q/K966fZbPtdtYUA4YO8DfulZDXbrxB5V
 eJ3KLlqgV+D6yCM7dL9iILllMgQZZWHE6edFrYEZ5BdV6cS6CbxH9LrJw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="388917184"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="388917184"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:28:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="905485639"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="905485639"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.246.0.51])
 ([10.246.0.51])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:28:18 -0800
Message-ID: <8d17329f-39f6-472d-8723-6d964c811c11@intel.com>
Date: Wed, 10 Jan 2024 11:28:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/15] drm/i915: Disable the "binder"
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-6-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-6-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.12.2023 11:59, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Now that the GGTT PTE updates go straight to GSMBASE (bypassing
> GTTMMADR) there should be no more risk of system hangs? So the
> "binder" (ie. update the PTEs via MI_UPDATE_GTT) is no longer
> necessary, disable it.
> 
> TODO: MI_UPDATE_GTT might be interesting as an optimization
> though, so perhaps someone should look into always using it
> (assuming the GPU is alive and well)?
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gtt.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index 86f73fe558ca..5bc7a4fb7485 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -24,7 +24,7 @@
>   bool i915_ggtt_require_binder(struct drm_i915_private *i915)
>   {
>   	/* Wa_13010847436 & Wa_14019519902 */
> -	return MEDIA_VER_FULL(i915) == IP_VER(13, 0);
> +	return false && MEDIA_VER_FULL(i915) == IP_VER(13, 0);

I guess this is RFC :)
Maybe revert "drm/i915: Enable GGTT updates with binder in MTL" ???
CC more competent developer.
Nirmoy, any thoughts?

Regards
Andrzej


>   }
>   
>   static bool intel_ggtt_update_needs_vtd_wa(struct drm_i915_private *i915)

