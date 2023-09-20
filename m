Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 637BB7A7D17
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 14:06:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD75410E499;
	Wed, 20 Sep 2023 12:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B7D10E499
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 12:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695211588; x=1726747588;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=roB8tY56fNLZEDCUtfxsybOVirSYxsjXmmB5GUV8C7I=;
 b=jCbqjUbYz3U7tcNPVlMjiLA+JUKyiMs5hQq6f6hzG6sOgWbNAUC6MJY+
 q5vlS8Wzy/DOCe0G5eDXy8TItzqvLSulYmg/4cd+F5v734/QLKW/a7UQ8
 9PuQh6mWXZ4F4Mt0lM6NsTn6xrDwHJo/N7afv7FvkvHHGcFxR6iL3eFCC
 WtiG8yD/pLaVIJxuCIGrnzS7/Ushluc99lRhuyt71V2g+2X/YHhOSQK88
 qaGKe+djDrNGu06pYSFrBpOtBMEcvvx/afnnUyBqxe9M4XxrsjcGqAMp0
 qLpb22Im0OhibqbaFiRTllHJOWfkmSze/V9OzBNUuaNjlAglQF/wWBwc8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="379087205"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="379087205"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 05:06:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="861961435"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="861961435"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga002.fm.intel.com with SMTP; 20 Sep 2023 05:06:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Sep 2023 15:06:24 +0300
Date: Wed, 20 Sep 2023 15:06:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQrgQMdyqFdRUZPs@intel.com>
References: <20230920112901.3315876-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230920112901.3315876-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add a note about fec_enable with
 128b/132b
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

On Wed, Sep 20, 2023 at 02:29:01PM +0300, Jani Nikula wrote:
> Add a note that fec_enable actually means FEC is to be enabled
> explicitly. 128b/132b always has FEC enabled, the driver doesn't need to
> enable it separately, and fec_enable will be false.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 3c54fe2bfddd..f781a9755a52 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1364,7 +1364,12 @@ struct intel_crtc_state {
>  
>  	bool enhanced_framing;
>  
> -	/* Forward Error correction State */
> +	/*
> +	 * Forward Error Correction.
> +	 *
> +	 * Note: This will be false for 128b/132b, which will always have FEC
> +	 * enabled automatically.
> +	 */
>  	bool fec_enable;
>  
>  	bool sdp_split_enable;
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
