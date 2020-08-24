Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8E924F2B0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 08:43:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6923B6E0DA;
	Mon, 24 Aug 2020 06:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C126E0DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 06:43:47 +0000 (UTC)
IronPort-SDR: z7QpqWfU/dv+g8Jp3DWOeBzp+lSNJUnh1EbTtET7jl4kIIDWlteDbu8wNIMELM4JOU5yEVCYe0
 v9ZS9/rfCgHQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="240667399"
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; d="scan'208";a="240667399"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2020 23:43:46 -0700
IronPort-SDR: klL0uP6RUoIJ2JLokQECerpYwUmMWBe6ugT0/ZYtPsyLN9c4Fz/W5MBJfDvH8ofvmbFtPKeX2w
 a4ar71GychTA==
X-IronPort-AV: E=Sophos;i="5.76,347,1592895600"; d="scan'208";a="298595805"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2020 23:43:45 -0700
Date: Mon, 24 Aug 2020 12:02:19 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Nischal Varide <nischal.varide@intel.com>
Message-ID: <20200824063218.GC25390@intel.com>
References: <20200819043409.26010-1-nischal.varide@intel.com>
 <20200819043409.26010-4-nischal.varide@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819043409.26010-4-nischal.varide@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/5]
 Critical-KlockWork-Fix-intel_tv.c-Possible-Null
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-08-19 at 10:04:08 +0530, Nischal Varide wrote:
> This patch fixes the Critical Klock work Error and in this case a
> Possible Null Pointer Dereference has been addressed with a Null check
> before dereferencing
> 
> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tv.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index 777032d9697b..5600d146ae81 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1836,17 +1836,20 @@ static int intel_tv_atomic_check(struct drm_connector *connector,
>  	struct drm_connector_state *old_state;
>  
>  	new_state = drm_atomic_get_new_connector_state(state, connector);
> -	if (!new_state->crtc)
> -		return 0;
> -
>  	old_state = drm_atomic_get_old_connector_state(state, connector);
>  	new_crtc_state = drm_atomic_get_new_crtc_state(state, new_state->crtc);
>  
> +	if (!(old_state && new_state && new_crtc_state))
> +		return 0;
> +
> +	if (!new_state->crtc)
> +		return 0;
> +
>  	if (old_state->tv.mode != new_state->tv.mode ||
> -	    old_state->tv.margins.left != new_state->tv.margins.left ||
> -	    old_state->tv.margins.right != new_state->tv.margins.right ||
> -	    old_state->tv.margins.top != new_state->tv.margins.top ||
> -	    old_state->tv.margins.bottom != new_state->tv.margins.bottom) {
> +		old_state->tv.margins.left != new_state->tv.margins.left ||
> +		old_state->tv.margins.right != new_state->tv.margins.right ||
> +		old_state->tv.margins.top != new_state->tv.margins.top ||
> +		old_state->tv.margins.bottom != new_state->tv.margins.bottom) {
This seems unwanted changes.
Thanks,
Anshuman.
>  		/* Force a modeset. */
>  
>  		new_crtc_state->connectors_changed = true;
> -- 
> 2.26.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
