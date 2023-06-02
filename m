Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE7772088D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 19:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F161010E064;
	Fri,  2 Jun 2023 17:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AAE510E064
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 17:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685727817; x=1717263817;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=q11VFS4yXeRr7h1GjHjk6WG682N7hjjXzhE8avNi9qY=;
 b=oE8hSn/kNYtB/AGbz/MK8V3hWwfy7Aqsvv5hKV22uMUbpwVILsF2Inw6
 ckxWhIrP+aJYir8+/ws9J+WMk67ZpfZwKK3wmjxHHl/sV1FgdxnGHPmIJ
 Ji+zZeAuqKJ5OgJ156odhPYdGB87Wut4RWXujo/k/i5R0dZ9U+32NJe5k
 jTENWERIjOsFvNweVLf0z6OkquaFgjwj9RXOOGqa7DRrWdcHYqb6l3KOV
 pRmkLZQaGk3Guhjf5LibcSTLk+CjsoCo3QqRrlwxeuH9FAM7jkTYYZeZ4
 /+iKJtNxSyppEK9pNQddgBOBzthEwLxFs1jSxx1W307usFW0ylGk3ah8h Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="384208207"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="384208207"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 10:43:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="685386628"
X-IronPort-AV: E=Sophos;i="6.00,213,1681196400"; d="scan'208";a="685386628"
Received: from jwerner6-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.111])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 10:43:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20230529113839.1966864-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230529113839.1966864-1-jani.nikula@intel.com>
Date: Fri, 02 Jun 2023 20:43:31 +0300
Message-ID: <875y85dakc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Fix a use-after-free
 when intel_edp_init_connector fails
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

On Mon, 29 May 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
> We enable the DP aux channel during probe, but may free the connector
> soon afterwards. Ensure the DP aux display power put (and any other
> async put for that matter) is completed before everything is freed, to
> prevent a use-after-free in icl_aux_pw_to_phy(), called from
> icl_combo_phy_aux_power_well_disable.
>
> v2 by Jani:
> - do a regular flush before freeing dig_port
>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> ---
>
> v2 of https://patchwork.freedesktop.org/patch/msgid/20221220094618.207126-1-maarten.lankhorst@linux.intel.com
>
> The encoder cleanup paths could use some cleanup and unification, but do
> what's needed here.

Pushed [1] instead, which I'd missed.

BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/20221222201804.1380963-1-maarten.lankhorst@linux.intel.com


> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c    | 2 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
>  2 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 112d91d81fdc..e8147c18fa93 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1379,6 +1379,8 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
>  	return true;
>  
>  err_init_connector:
> +	/* aync put accesses the dig_port, ensure it's done before free */
> +	intel_display_power_flush_work(dev_priv);
>  	drm_encoder_cleanup(encoder);
>  err_encoder_init:
>  	kfree(intel_connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index d1a9a3cf94b5..dfa1c44dc442 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4971,6 +4971,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	return;
>  
>  err:
> +	/* aync put accesses the dig_port, ensure it's done before free */
> +	intel_display_power_flush_work(dev_priv);
>  	drm_encoder_cleanup(&encoder->base);
>  	kfree(dig_port);
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
