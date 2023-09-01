Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966BC78FBAD
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 12:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C4CE10E068;
	Fri,  1 Sep 2023 10:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12F510E068
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 10:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693563392; x=1725099392;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ixYSut+4pPLV+TrMuCotyHwohf1Ojacg8fsgjusKSig=;
 b=cLr5U4ZfjTOZo9c7nLnRxfpdBqODhVbnrTEL7jtgFPGoTk5wO26ut+Sp
 y+vB2eKoNxFp7kShqsCoXFa2D1vpXoSuRTFda847Kj0JAroEGtttqfdQg
 NdYmC85OuCgYbIhD2iRQs2Hi9HY+LMe3rZfH2AmB9MGaJBSfuGu2XOdVz
 chaRPhyLnpvXRWUIcqza8QMswUqiv8sf9cpV9wKUOSAtFl2KKO3rQUbG4
 jm8S8hjuiNT6CkI5xY4QvPf5f5HXel1w88S7h55QlBydpUPo7y6JaaBll
 wxS05g3yk4INr8d+2+Dy6uAE5JxV5bvnfam12HVGSaz3Pvqc6QEn9Crw7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="462554709"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="462554709"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 03:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="739883236"
X-IronPort-AV: E=Sophos;i="6.02,219,1688454000"; d="scan'208";a="739883236"
Received: from amirafax-mobl4.gar.corp.intel.com (HELO [10.249.254.147])
 ([10.249.254.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2023 03:16:25 -0700
Message-ID: <5b340552-e09b-48cb-0677-7f65f24ee6ce@linux.intel.com>
Date: Fri, 1 Sep 2023 12:16:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230831162643.20354-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20230831162643.20354-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use vblank worker to unpin old
 legacy cursor fb safely
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

Hey,


Den 2023-08-31 kl. 18:26, skrev Ville Syrjala:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> The cursor hardware only does sync updates, and thus the hardware
> will be scanning out from the old fb until the next start of vblank.
> So in order to make the legacy cursor fastpath actually safe we
> should not unpin the old fb until we're sure the hardware has
> ceased accessing it. The simplest approach is to just use a vblank
> work here to do the delayed unpin.
>
> Not 100% sure it's a good idea to put this onto the same high
> priority vblank worker as eg. our timing critical gamma updates.
> But let's keep it simple for now, and it we later discover that
> this is causing problems we can think about adding a lower
> priority worker for such things.
>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c   | 25 +++++++++++++++++--
>   .../drm/i915/display/intel_display_types.h    |  3 +++
>   2 files changed, 26 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index b342fad180ca..2bd1a79c6955 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -603,6 +603,16 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
>   	return format == DRM_FORMAT_ARGB8888;
>   }
>   
> +static void intel_cursor_unpin_work(struct kthread_work *base)
> +{
> +	struct drm_vblank_work *work = to_drm_vblank_work(base);
> +	struct intel_plane_state *plane_state =
> +		container_of(work, typeof(*plane_state), unpin_work);
> +
> +	intel_plane_unpin_fb(plane_state);
> +	intel_plane_destroy_state(plane_state->uapi.plane, &plane_state->uapi);
> +}
> +
>   static int
>   intel_legacy_cursor_update(struct drm_plane *_plane,
>   			   struct drm_crtc *_crtc,
> @@ -730,14 +740,25 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   
>   	local_irq_enable();
>   
> -	intel_plane_unpin_fb(old_plane_state);
> +	if (old_plane_state->hw.fb != new_plane_state->hw.fb) {
> +		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
> +				     intel_cursor_unpin_work);
> +
> +		drm_vblank_work_schedule(&old_plane_state->unpin_work,
> +					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> +					 false);
> +
> +		old_plane_state = NULL;
> +	} else {
> +		intel_plane_unpin_fb(old_plane_state);
> +	}

Maybe check if crtc is active and no modeset is happening? Similar to 
how the vblank worker is used in other cases. That should hopefully fix 
the cursor leak test.

Cheers,

~Maarten

