Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8277A4B7E78
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 04:25:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A677710E61A;
	Wed, 16 Feb 2022 03:25:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E0C10E61A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 03:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644981918; x=1676517918;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7iKCCtWpk3TCRqa9Wc7LN+uO7QqSCXUD2g1ZNAXJ00o=;
 b=A+Gao/pmQz9yBUc28Neh/plIcvJb2Z/WQKda1WC12q1RlXtKX/OM4mZn
 PmZJjAoNfe8E3J04vck2YpChufSbLqLU0RwWkQvFp01VxG2LV4zGyAK7U
 XpFuAckezmlM3iUAw/IuXp+KNJTx4Ix+bdgSxvQ2Z0mz93QPcOeguw+sh
 qgBDq4WjCAwS/MO0qfJLQ0MbmLTvPD6R+h+OOtb8OLxhaWoq9DuglyaSJ
 BhkxhA1ue7TC4DAAh0wPP1P542ZSBIWsUCuzu62YQSqSYPZ3Z1exySfIh
 wq7MfIJnup1ajwH9BE9GrQ1oBh/9AfM4+bq0UnKmfyS42bPYm9j5XfX+G A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="250714124"
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="250714124"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 19:25:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,371,1635231600"; d="scan'208";a="704114767"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 19:25:17 -0800
Date: Tue, 15 Feb 2022 19:25:36 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220216032530.GA24306@labuser-Z97X-UD5H>
References: <20220215183208.6143-1-ville.syrjala@linux.intel.com>
 <20220215183208.6143-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215183208.6143-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Fix cursor coordinates on
 bigjoiner slave
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

On Tue, Feb 15, 2022 at 08:31:57PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Adjust the cursor dst coordinates appripriately when it's on
> the bigjoiner slave pipe. intel_atomic_plane_check_clipping()
> already did this but with the cursor we discard those results
> (apart from uapi.visible and error checks) since the hardware
> will be doing the clipping for us.
> 
> v2: Rebase due to bigjoiner bitmask usage
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 2ade8fdd9bdd..3e80763aa828 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -152,6 +152,9 @@ static int intel_check_cursor(struct intel_crtc_state *crtc_state,
>  	/* Use the unclipped src/dst rectangles, which we program to hw */
>  	plane_state->uapi.src = src;
>  	plane_state->uapi.dst = dst;
> +	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> +		drm_rect_translate(&plane_state->uapi.dst,
> +				   -crtc_state->pipe_src_w, 0);

So this is basically to offset the cursor position from say 3860 to 0, 3861 to 1 ....7680 to 3860 for the right half
of the screen right?
And without this, it will just keep it at first rectangle?

Manasi

>  
>  	ret = intel_cursor_check_surface(plane_state);
>  	if (ret)
> -- 
> 2.34.1
> 
