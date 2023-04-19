Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 529216E79CF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 14:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DA0010E96B;
	Wed, 19 Apr 2023 12:34:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69ACA10E972
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 12:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681907644; x=1713443644;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=J13QpHG1mnhHl0YY+AAeBJDyztn4NRn50GT/XaNHXow=;
 b=SucmLMdx5mAomviyGMH5yjrnrhBVijmYQGBjR65rwH3F7FvG7veL42bJ
 MP4+yIWfXAoZSPx1NIrStA4Dbf8lOeiDgHLXJC0O8MG/+avlu4rnI6U3c
 vTsLZxUz7g5HawDN+4bCE3ZQReHJAddzDJ/KoLg6O9pj86sMXMBDg4N/A
 ahzPG9eHccg9DYkov97WEH2u7Wct1u2iv+4MW+XaAw0SHkkKbilEHxYXQ
 yHZkawUSdfMkWleK2hYJiq/TmkVA5VzZ8MJOka4aKvBufcmdzPyu1rld0
 wnQfi2/FNzfzJufyOUTI7Ux61d7QGldjpPW6Mxg3q9vvVXFkRqJn6hmyn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="344184839"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="344184839"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 05:34:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="691492500"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="691492500"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 19 Apr 2023 05:33:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Apr 2023 15:33:58 +0300
Date: Wed, 19 Apr 2023 15:33:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZD/ftpzg9AbB3GMn@intel.com>
References: <20230419115449.422214-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230419115449.422214-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/wm: remove stale and unused
 ilk_wm_max_level() declaration
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

On Wed, Apr 19, 2023 at 02:54:49PM +0300, Jani Nikula wrote:
> The declaration was removed earlier, but got accidentally resurrected in
> i915xx_wm.[ch] refactoring. Remove harder.

i9xx_wm

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
> index a7875cbcd05a..b87ae369685a 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.h
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
> @@ -12,7 +12,6 @@ struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_plane_state;
>  
> -int ilk_wm_max_level(const struct drm_i915_private *i915);
>  bool ilk_disable_lp_wm(struct drm_i915_private *i915);
>  void ilk_wm_sanitize(struct drm_i915_private *i915);
>  bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
