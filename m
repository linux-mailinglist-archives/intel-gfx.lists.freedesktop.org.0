Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2736FDF05
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 15:48:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0000D10E4A8;
	Wed, 10 May 2023 13:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8DA310E04C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 13:48:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683726481; x=1715262481;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1XbLZi23HtE3JMe+4U5BVkh+GY7uOqUZrrBOT9zd2ak=;
 b=k6AnV6NPGGV09cs6/vORVY1Nhr8Ke1uj/dXE4HdetFWu5rbUwUYGFrCC
 4uAhGeW1T9HNhIA36wZMvWizIhKK83gu9jfX1dSkKDgRJP001BaP9c9wt
 /ABAJeXPgTjc1pBxe+WRS9GNNbDmb6XO5Nhy6psyEadTqRm/E1u6naRqL
 DLSzb27kKYSSVyuqZooRm9/OBbw1q3kamKO2fChZwDYRKJmTCE7w89Yre
 T7dPOtQqCVBaYhQAoxXGkJl+g88hU3fPBQUCax+Dwukb5KoeWkz8QZbaZ
 h9I3rqPj4hnQvO2O4+pG9x2eO0Q+oP03rR2gH0Q6FXReph5HF9JHScd9i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="436540281"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="436540281"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 06:48:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="699309312"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="699309312"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 10 May 2023 06:47:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 May 2023 16:47:57 +0300
Date: Wed, 10 May 2023 16:47:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZFugjfa1hDBa5Rgs@intel.com>
References: <20230509111441.4293-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230509111441.4293-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: WARN if not all pipes are in
 bigjoiner mask, when copying plane state
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 09, 2023 at 02:14:41PM +0300, Stanislav Lisovskiy wrote:
> There is a suspicion that we might not have all bigjoiner pipes
> set in correspodent mask, which leads to that not all crtc are added to the state,
> however because we are copying for instance crtc reference from master crtc
> to slave crtc, we might be trying to get it via intel_atomic_get_new_crtc_state,
> which might the return NULL.
> This is surely not a fix, but at least the WARN should give us some clue and
> "red light" when this happens.
> In future we might need to evaluate the logic of adding crtc to the state,
> to make sure that we always have all affected crtcs in the state,
> even though such functions already exist, there seem to be still some
> glitches in this logic.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.h      |  1 +
>  3 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 4125ee07a271..03cbd755261b 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -695,6 +695,19 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>  
>  		new_master_plane_state =
>  			intel_atomic_get_new_plane_state(state, master_plane);
> +
> +		/*
> +		 * We would be copying plane state from master crtc
> +		 * however if crtc_state->bigjoiner_pipes doesn't contain both
> +		 * master and slave, that means that quite likely we didn't call
> +		 * intel_atomic_get_crtc_state for both, which can cause issues,
> +		 * like intel_atomic_get_new_crtc_state returning NULL suddently,
> +		 * when we for example try to use hw.crtc from that plane state.
> +		 * This WARN might sched some light on out existing issues, also
> +		 * prevent others from happening in future.
> +		 */
> +		drm_WARN_ON(state->base.dev, intel_bigjoiner_num_pipes(new_crtc_state) < 2);

What you are doing here is basically just
 if (bigjoiner_pipes)
  	assert(bigjoiner_pipes != 1);
which is not going to catch anything.

We can trivially see that it will never happen given
how bigjoiner_pipes is initialized.

-- 
Ville Syrjälä
Intel
