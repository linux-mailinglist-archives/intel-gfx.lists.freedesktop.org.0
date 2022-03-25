Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2D54E7A49
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 19:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06B210E201;
	Fri, 25 Mar 2022 18:45:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5067A10E201
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 18:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648233939; x=1679769939;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=97xqyM1xp0eRbTZK6COi99jZtiLUkoSxeDgE2ddufwY=;
 b=ZpnbIXjY5yFoeAGFdjdpI8n7krjyeoCLXBBlEJN51DJVoNoJpvPdNZGV
 CBJpXifyki6zXh0gBgV+GMD9K4RoyA14DG2a9N+MJQYQL6o9xdT2oJMkj
 MM2kWGccZXiXJ3mbn/KN+hgcWx+1SiBz1bxXYn3isK3qClVrxn6LlFLOU
 ydIj+qxU5cMubQwuPMZf1xhlbMKqh3YL04TfoZm9VsZMUzWq6LclUJk6K
 xykVFWs20zGkw3sbypIDs8B2+FUZZQs4JabuoHTCKj5X5CCI/HIdZQ4xd
 GoOQ7n9hKDIzJpiA2ZeLBmy5CUfNo6j/dVEmNaM6vKc43+u2EeYr+hIR1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10297"; a="257525566"
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="257525566"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 11:45:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,211,1643702400"; d="scan'208";a="648352661"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 25 Mar 2022 11:45:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Mar 2022 20:45:35 +0200
Date: Fri, 25 Mar 2022 20:45:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Yj4NzzTX7uZCfTA2@intel.com>
References: <20220325183832.146472-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220325183832.146472-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] docs: gpu: i915.rst: Fix DRRS documentation
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 25, 2022 at 11:38:32AM -0700, José Roberto de Souza wrote:
> intel_drrs_enable() and intel_drrs_disable() were renamed to
> intel_drrs_activate() and intel_drrs_deactivate() in commit
> 54903c7a6b40 ("drm/i915: s/enable/active/ for DRRS") and it is
> causing warnings when generating the kernel documentation.
> 
> But as for a while DRRS has its own file, so here just let the tool
> generate the documentation for all exported and documented functions
> in intel_drrs.c.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  Documentation/gpu/i915.rst | 14 +-------------
>  1 file changed, 1 insertion(+), 13 deletions(-)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index bcaefc952764e..0f08693d05cdf 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -187,19 +187,7 @@ Display Refresh Rate Switching (DRRS)
>     :doc: Display Refresh Rate Switching (DRRS)
>  
>  .. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :functions: intel_drrs_enable
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :functions: intel_drrs_disable
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :functions: intel_drrs_invalidate
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :functions: intel_drrs_flush
> -
> -.. kernel-doc:: drivers/gpu/drm/i915/display/intel_drrs.c
> -   :functions: intel_drrs_init
> +   :internal:
>  
>  DPIO
>  ----
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
