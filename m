Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C437C6EA8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AF110E4CB;
	Thu, 12 Oct 2023 12:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0236110E4CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697115563; x=1728651563;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LggCgaCNaM7HeV4wMweCGbI4dxGTjbMKHb4jB6u4Mf0=;
 b=ElA55NawSoVu23y2zWnyfE/bikNnDDqV1MSGr7reIVbe32BZivt4dTTY
 akbRjc46ksNwBzR4+QGoM7GM5QaHeSJkVAK+Ymx8WseOXuWgcxczz0lY0
 hqzUrX+5dB0/o9Y6minOp05PvY2nJoQY6eiz0e0dONho9ziR1z9L113E7
 hDeGTl1BvN9KHLEO5lDQsTFUzVrSOrxKwKD03BDym9m5C0Gi7WPxz93KY
 NznhBrxZqCQKqw00lVWstsJaYijrrfRz7fi25M+9wGRlbWn38om8f/MXq
 472Wetlsac9bQC1F8j0OTiFZt5510jaEpnUKNJBEYyaem+KhZaSnHT8X8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="388769246"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="388769246"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:59:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844994382"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="844994382"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:59:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:59:19 +0300
Date: Thu, 12 Oct 2023 15:59:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZSftp5lhcopr-ehQ@intel.com>
References: <20231011162102.1030354-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231011162102.1030354-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop including i915_utils.h from
 intel_runtime_pm.h
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

On Wed, Oct 11, 2023 at 07:21:02PM +0300, Jani Nikula wrote:
> Remove an unnecessary include.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i915/intel_runtime_pm.h
> index f79cda7a2503..be43614c73fd 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -11,8 +11,6 @@
>  
>  #include "intel_wakeref.h"
>  
> -#include "i915_utils.h"
> -
>  struct device;
>  struct drm_i915_private;
>  struct drm_printer;
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
