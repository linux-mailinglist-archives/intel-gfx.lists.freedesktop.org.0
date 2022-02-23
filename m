Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFC74C1CAB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 20:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120C110E21E;
	Wed, 23 Feb 2022 19:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7815B10E65E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 19:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645646029; x=1677182029;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RiEf5KWHwG0m1fkIxXao8udTE0Ticxq24EEOPe9QHCM=;
 b=Ca/ffl1C7XPKVLst0iApKjxyNBSNA4LWAr+TAnEzuu0N8nRs0zTZK7S+
 Qsg+WB3CXTuAo15Otv1fKuVCGI5CnXmgXna4eZHB+1x13Ao5QGvofGLhg
 uUSdxgOzZx0lKsMZoKmCGJPRWhlObJHryPrOPhXCTqvNYajm4bc8NGFol
 iS/XF4THUc345Qph1k/msoIROON1IcWNhF0mjFlLoAG7Aeerm6bHd0DAY
 StRw1V5rZ0csq+qlUnwYzd1uOklSj1NaADEqQaEJGSsnJDij8fNtWj5en
 61V1HMv6Mj7vJpRTl70OArpVZeQKj2tBZyCAbgzKuhBHpGs/ZzKStZe6o g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="338505512"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="338505512"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:53:49 -0800
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="543445259"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 11:53:49 -0800
Date: Wed, 23 Feb 2022 11:54:22 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220223195422.GB9839@labuser-Z97X-UD5H>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
 <20220223131315.18016-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220223131315.18016-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 01/13] drm/i915: Avoid negative shift due
 to bigjoiner_pipes==0
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
Cc: intel-gfx@lists.freedesktop.org, kernel test robot <oliver.sang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 23, 2022 at 03:13:03PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> bigjoiner_pipes==0 leads bigjoiner_master_pipe() to
> do BIT(ffs(0)-1) which is undefined behaviour. The code should
> actually still work fine since the only place we provoke
> that is intel_crtc_bigjoiner_slave_pipes() and it'll bitwise
> AND the result with 0, so doesn't really matter what we get
> out of bigjoiner_master_pipe(). But best not provoke undefined
> behaviour anyway.
> 
> Reported-by: kernel test robot <oliver.sang@intel.com>
> Fixes: a6e7a006f5d5 ("drm/i915: Change bigjoiner state tracking to use the pipe bitmask")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 80b19c304c43..f3f5f11a5abf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -346,7 +346,10 @@ static enum pipe bigjoiner_master_pipe(const struct intel_crtc_state *crtc_state
>  
>  u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state)
>  {
> -	return crtc_state->bigjoiner_pipes & ~BIT(bigjoiner_master_pipe(crtc_state));
> +	if (crtc_state->bigjoiner_pipes)
> +		return crtc_state->bigjoiner_pipes & ~BIT(bigjoiner_master_pipe(crtc_state));
> +	else
> +		return 0;
>  }
>  
>  bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
> -- 
> 2.34.1
> 
