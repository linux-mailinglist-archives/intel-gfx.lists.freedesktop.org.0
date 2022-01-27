Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 143A849DBA6
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 08:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EC310E681;
	Thu, 27 Jan 2022 07:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98C9710E5F5;
 Thu, 27 Jan 2022 07:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643268717; x=1674804717;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gM2pITKFqZQ7O87PD4X6QFYmqj46J2r/VrpSsHOTSss=;
 b=SAYjlx9jbIYUWUojp1tpUfx62chCqVMKiyLJ89pXBfPtmVwzCG1qLKcI
 XPanu58VyuA2lhOaRr8ihsB2gOtnJY3N0Xq4ODz90nRGHUBxu3UzgWRb8
 SKJGEGyq232KZHfVYs2ZPAHPZGfOgf0qhVvEQE2GgdmpolBMyO5Kpk0gW
 +pAaQo+8PQRdK5Zndq9ht9dlzhi9wzyuhpxd3HK3EOu9d1pGOJd1ATosE
 68yHORke+8ko4BfBZcwtqQXNb1Y8qMg5AyDYxQZuYh6AHH7KzoO46KZ0a
 gHpMSsWk1Kto500K/QkqEaCEhzLr8+8a1X7WgcE5z/weFSXmUxa8bx8zK w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246995595"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="246995595"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 23:31:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="674627912"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 26 Jan 2022 23:31:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 09:31:54 +0200
Date: Thu, 27 Jan 2022 09:31:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YfJKakOSpVPot0EG@intel.com>
References: <cover.1643130139.git.jani.nikula@intel.com>
 <aaeccfb4f2a8c0995f9b2f29e66829c486205712.1643130139.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aaeccfb4f2a8c0995f9b2f29e66829c486205712.1643130139.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/dp: add some new DPCD macros from
 DP 2.0 E11
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 25, 2022 at 07:03:41PM +0200, Jani Nikula wrote:
> Add some of the new additions from DP 2.0 E11.
> 
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  include/drm/dp/drm_dp_helper.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/drm/dp/drm_dp_helper.h b/include/drm/dp/drm_dp_helper.h
> index c499d735b992..69487bd8ed56 100644
> --- a/include/drm/dp/drm_dp_helper.h
> +++ b/include/drm/dp/drm_dp_helper.h
> @@ -560,6 +560,7 @@ struct drm_panel;
>  # define DP_TRAINING_PATTERN_DISABLE	    0
>  # define DP_TRAINING_PATTERN_1		    1
>  # define DP_TRAINING_PATTERN_2		    2
> +# define DP_TRAINING_PATTERN_2_CDS	    3	    /* 2.0 E11 */
>  # define DP_TRAINING_PATTERN_3		    3	    /* 1.2 */
>  # define DP_TRAINING_PATTERN_4              7       /* 1.4 */
>  # define DP_TRAINING_PATTERN_MASK	    0x3
> @@ -1350,6 +1351,7 @@ struct drm_panel;
>  # define DP_PHY_REPEATER_128B132B_SUPPORTED		    (1 << 0)
>  /* See DP_128B132B_SUPPORTED_LINK_RATES for values */
>  #define DP_PHY_REPEATER_128B132B_RATES			    0xf0007 /* 2.0 */
> +#define DP_PHY_REPEATER_EQ_DONE                             0xf0008 /* 2.0 E11 */

Wonder if we should look at that at some point? The spec doesn't really
say so. Or maybe we should just dump it out of the link training failed?

>  
>  enum drm_dp_phy {
>  	DP_PHY_DPRX,
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
