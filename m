Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FA9867F2B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 18:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2930410E494;
	Mon, 26 Feb 2024 17:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZUDcbKa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE38410E6EB
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 17:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708969646; x=1740505646;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=38kMwiJDVnRDotpMt/b39f2tpbpieDCKi/lfEeD0Pec=;
 b=jZUDcbKaRsa9wHivzp/rbVeSDUqC3ENjRdL+SRXMp7yJ5v310MnNTGFq
 vJsayPk4GK1bXfDzl0BtA2DjqoLZBOE8Kq1VBdc2BN3GtR3hrRNX8YuSc
 Ar7NZdHdoaEzp8VlOkw3QZc25Fjn0nxSKsl1oBj8/X2XN0p0etmZ4cuuk
 TKyijefmtjIvGtQeJ9RxbWgGxzJqaMeB4Tg/rXLVR/eRpEVgO5XSa4NZm
 lb1HBGB+59iMo8Zh74mOyXqcJlqHLXo2JhL92747jI74lGcN9qh2vRHl7
 UsUBIEk1pjSYXinR8bOD9RmMbWmFzzduh3L7rB5dvWofyvbNj3fbZQ/1G g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3119110"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3119110"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:47:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11484417"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:47:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 arun.r.murthy@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [PATCH] drm/i915/panelreplay: Move out psr_init_dpcd() from
 init_connector()
In-Reply-To: <20240222180824.3634193-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240222180824.3634193-1-animesh.manna@intel.com>
Date: Mon, 26 Feb 2024 19:47:23 +0200
Message-ID: <8734tfm82c.fsf@intel.com>
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

On Thu, 22 Feb 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Move psr_init_dpcd() from init-connector to connector-detect
> function.

Why?

The commit message *must* *always* answer the question why, unless the
reason is completely and utterly obvious (e.g. don't need to say why
typos need to be fixed).

BR,
Jani.

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 3 +++
>  drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 217196196e50..4553e1f5f1fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5709,6 +5709,9 @@ intel_dp_detect(struct drm_connector *connector,
>  		goto out;
>  	}
>  
> +	if (!intel_dp_is_edp(intel_dp))
> +		intel_psr_init_dpcd(intel_dp);
> +
>  	intel_dp_detect_dsc_caps(intel_dp, intel_connector);
>  
>  	intel_dp_configure_mst(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 72cadad09db5..6927785fd6ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2883,9 +2883,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
>  	if (!(HAS_PSR(dev_priv) || HAS_DP20(dev_priv)))
>  		return;
>  
> -	if (!intel_dp_is_edp(intel_dp))
> -		intel_psr_init_dpcd(intel_dp);
> -
>  	/*
>  	 * HSW spec explicitly says PSR is tied to port A.
>  	 * BDW+ platforms have a instance of PSR registers per transcoder but

-- 
Jani Nikula, Intel
