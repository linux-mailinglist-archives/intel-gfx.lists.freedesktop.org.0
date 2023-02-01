Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C7E686D7A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 18:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2C310E43F;
	Wed,  1 Feb 2023 17:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A8010E43C
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 17:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675274197; x=1706810197;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=u3fh6Ee/D0+x4xSd/sHjUe6WyFb+hrfGdJa62TmyhHs=;
 b=d7KA+80U4AxrVuc4xWcc5HSmpf+IhMaN9WOX/pton/x64lAnLfRUjNUw
 T0/PxxxrxZljO7Piqga+Xo7lnktyv5sZpvbx2I43XsJA5BXYgvTGS9n4Q
 Tb54D175isZAmrUxhUdqs/lAL1MQLa5ugcvDOju3EueojiA+xzN4Ti89m
 aR3f8wTQUazMaXsUwezTjGty9jb30yGDJvyThW6jnhSoUfbSBAuGfArk/
 bMu3iqCPegXKORFxSqLpVThpEfamZ8SqWI117ed5c2NhEYL4fmI6hhO2u
 AL+j0BeHbVkvmnG0IfF4tOJSNjjPV02J/1V5j23fMBE0dfPF39iAFSc/h Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="392800448"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="392800448"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:56:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="910391082"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="910391082"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:56:36 -0800
Date: Wed, 1 Feb 2023 19:56:28 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Y9qnzNTxDXRcjHrp@intel.com>
References: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Don't do the WM0->WM1 copy
 w/a if WM1 is already enabled
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

On Tue, Jan 31, 2023 at 02:21:24AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Due to a workaround we have to make sure the WM1 watermarks block/lines
> values are sensible even when WM1 is disabled. To that end we copy those
> values from WM0.
> 
> However since we now keep each wm level enabled on a per-plane basis
> it doesn't seem necessary to do that copy when we already have an
> enabled WM1 on the current plane. That is, we might be in a situation
> where another plane can only do WM0 (and thus needs the copy) but
> the current plane's WM1 is still perfectly valid (ie. fits into the
> current DDB allocation).
> 
> Skipping the copy could avoid reprogramming the plane's registers
> needlessly in some cases.
> 
> Fixes: a301cb0fca2d ("drm/i915: Keep plane watermarks enabled more aggressively")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 261cdab390b4..0c605034356f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1586,7 +1586,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  				skl_check_wm_level(&wm->wm[level], ddb);
>  
>  			if (icl_need_wm1_wa(i915, plane_id) &&
> -			    level == 1 && wm->wm[0].enable) {
> +			    level == 1 && !wm->wm[level].enable &&
> +			    wm->wm[0].enable) {
>  				wm->wm[level].blocks = wm->wm[0].blocks;
>  				wm->wm[level].lines = wm->wm[0].lines;
>  				wm->wm[level].ignore_lines = wm->wm[0].ignore_lines;

Took some time to remember once again the logic here :)
We probably need to make this more easily readable, because the comment
kinda suggests that we disable all wms starting from level + 1 here, while
we actually do also check with ddb allocation first.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> -- 
> 2.39.1
> 
