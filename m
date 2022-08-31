Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 077BA5A7D6C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 14:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7F010E37C;
	Wed, 31 Aug 2022 12:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1E610E37C
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 12:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661949205; x=1693485205;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=G7TapU6O8BHm/+8+zssRzC8T8WqLhwyrTiz7437CmLc=;
 b=Aq0ju5mClfWj/jw/R+s0bv0g9S5Hzeqoabqu7XPIY5u1rnjNepoWdFbV
 1TCxYn+5h+C9z2O+XQk72ZdH7C9HmHs9C5O6PDJKoN9Hbu5Jyrh0zyhae
 DyD1fcGDY27eKN2PB+sKPl4G+GzmwJVj5/K09Tn0S5gwvhuny3Gm4K2tq
 asyiX1eX9h7f49mZl9+p6co0N4FcJmhKFd5o67u8BMGB8jbIAJBupPPAQ
 BnwiP0ksz1n0e530m6/lXcua+qeAqryeE8NbsAl7sJGlzFICVRFKkA0v0
 EenBvRnXkN9pDFLcBO7PL6HMcN2phH/w2qiQ9LJkKSkn6lAubU0gpMz1B g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="357152924"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="357152924"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 05:33:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="645216141"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 31 Aug 2022 05:33:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 Aug 2022 15:33:22 +0300
Date: Wed, 31 Aug 2022 15:33:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
Message-ID: <Yw9VEmw6sq0Bh/fE@intel.com>
References: <20220801151616.12644-1-shawn.c.lee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220801151616.12644-1-shawn.c.lee@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: clear plane color control
 register when turn plane off
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

On Mon, Aug 01, 2022 at 11:16:16PM +0800, Lee Shawn C wrote:
> Customer report abnormal display output while switch eDP off sometimes.
> In current display disable flow, plane will be off at first. Then turn
> eDP off and disable HW pipe line. We found the abnormal pixel comes
> after turn plane off. Clear plane color ctl register when driver disable
> plane can solve this symptom.
> 
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index caa03324a733..90977cfb7ebb 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -620,6 +620,8 @@ skl_plane_disable_arm(struct intel_plane *plane,
>  
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> +	if (DISPLAY_VER(dev_priv) >= 10)
> +		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);
>  }
>  
>  static void
> @@ -638,6 +640,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
>  	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>  	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>  	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
> +	intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), 0);

This makes no sense. The register value shouldn't even get latched
since you wrote the arming register (PLANE_SURF) before this one.

What platform is the problematic machine?

>  }
>  
>  static bool
> -- 
> 2.17.1

-- 
Ville Syrjälä
Intel
