Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4564ABD542
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 12:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D22C10E45B;
	Tue, 20 May 2025 10:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FyNQk6qZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8AE610E45B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 May 2025 10:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747737565; x=1779273565;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=bpsUPNabj0En1k1mlj3/ElOtpq/RwnEYQQfdX4FqVMs=;
 b=FyNQk6qZ+TY28UVh+Ku5fgatKp3bAq/L26MJQgr52+H7yNBwC8spPccw
 YxcwssPw7yrkkpvwebZ5oLZP36GxVV51FFocVba665ErGrXyYgAEdc7wi
 Y0QFshHxXAVUY7ZxHXydN51DvNsiAOE2+Yf4VcnHJ2rIFwq5x3zt3idfo
 OYLfcX2rf3LCfNTPjDmzffMWWV+7hwfWaX+GupbD8CoivJC200zss5bRB
 f5JO0/hGzBqqya70sbRs18o5wRa4GmbyYynMI4nU9NDmxAZmrvON3gN9x
 M23Ex4sUSL25Av9WFb31Aq0yQWf/FzgevuJj7yJwU6H6NOqLqp7eWlPm7 g==;
X-CSE-ConnectionGUID: vp4gMR1DTM+jSTzjV7fKNA==
X-CSE-MsgGUID: AWyXYpFaSxuzOJ3S9raTOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49819639"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49819639"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 03:39:25 -0700
X-CSE-ConnectionGUID: NgQcGMe5SLm3jQUEHhtjPQ==
X-CSE-MsgGUID: 5E4CL2AZRq24hu8Q+24Jwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140660021"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.168])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 03:39:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: use drm_modeset_lock_assert_held() in
 intel_connector_get_pipe()
In-Reply-To: <20250520095408.1310440-1-luciano.coelho@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250520095408.1310440-1-luciano.coelho@intel.com>
Date: Tue, 20 May 2025 13:39:20 +0300
Message-ID: <87plg3tvl3.fsf@intel.com>
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

On Tue, 20 May 2025, Luca Coelho <luciano.coelho@intel.com> wrote:
> In the intel_connector_get_pipe() function, we check if
> connection_mutex is held and generate our own WARN_ON if that's the
> case.  Instead of generating a non-standard warning for a mutex issue,
> we should use the standard lockdep framework.
>
> Change the function to use drm_modeset_lock_assert_held() instead.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_connector.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
> index 6c81c9f2fd09..9a61c972dce9 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -209,8 +209,7 @@ enum pipe intel_connector_get_pipe(struct intel_connector *connector)
>  {
>  	struct intel_display *display = to_intel_display(connector);
>  
> -	drm_WARN_ON(display->drm,
> -		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
> +	drm_modeset_lock_assert_held(&display->drm->mode_config.connection_mutex);
>  
>  	if (!connector->base.state->crtc)
>  		return INVALID_PIPE;

-- 
Jani Nikula, Intel
