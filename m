Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D4622894
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 11:36:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20CCB10E541;
	Wed,  9 Nov 2022 10:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77D4410E541
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 10:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667990209; x=1699526209;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Rewm5LrsI+2tII5lDoDAmHQpnQwMT2jj2/AyygbuXKM=;
 b=VA6F7k1VreWItZ6V0LXMp9JU2opSwMvCDvVrVLiJDx4lAPZ8VLouGrJ6
 nojBDX++6yJWzg1tvI2L4wdMxfw0li+XF+wiUxIc18++2/1sw3OaEdVsS
 CeyydTkiKU6jip8CvRuyx1QVmRpriCElTX6Cg4Fv7YanaaL6AZEUaF1TW
 okwlsDOlMyB+PuIlTyAPDRGxQEqUCWDNsHlHdZj1nSSFHiL32cBg/SAq5
 QtCisoSX3kNf0a61VtUZK+S6tx/+7PKB3HP8glq1goFl9SfNkpO9BoHR8
 sYC3+uZ3WS8bts16qRggA57I4easPiZcj6rGZkkaYYWqFhqGqnD9L7owN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="290661928"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="290661928"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:36:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="587722640"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="587722640"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:36:47 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nischal Varide <nischal.varide@intel.com>,
 intel-gfx@lists.freedesktop.org, nischal.varide@intel.com
In-Reply-To: <20221109040324.17675-1-nischal.varide@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221109040324.17675-1-nischal.varide@intel.com>
Date: Wed, 09 Nov 2022 12:36:44 +0200
Message-ID: <87r0yc76tf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: mode clock check related
 to max dotclk frequency
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

On Wed, 09 Nov 2022, Nischal Varide <nischal.varide@intel.com> wrote:
> A check on mode->clock to see if is greater than i915->max_dotclk_freq
> or greater than 2 * (i915_max_dotclk_freq) in case of big-joiner and
> return an -EINVAL in both the cases

The commit message should explain *why* the change is being done.

>
> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7400d6b4c587..813f4c369dda 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -995,6 +995,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		bigjoiner = true;
>  		max_dotclk *= 2;
>  	}
> +
> +	if (mode->clock > max_dotclk)
> +		return -EINVAL;
> +

The return type of this function is enum drm_mode_status, which
indicates the reason for rejecting the mode. It's not a negative error
code.

Near the top of the function we have "target_clock = mode->clock;"
making the above identical to the check we already have below. Apart
from the incorrect return code.

What are you trying to do?

BR,
Jani.


>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;




-- 
Jani Nikula, Intel Open Source Graphics Center
