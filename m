Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D37A2F4AA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0048B892AA;
	Mon, 10 Feb 2025 17:07:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X2aJQXld";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EDEF892AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739207273; x=1770743273;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nb2W86cBThG091hp92HkYfPi5/dT2xX6TxMegQBPE70=;
 b=X2aJQXldk3Mj7QPDXIiCgVH2OmDnpzn8AjJ8gDl3QTyYL0Lu6vPa9Rav
 avpVBCc0YW+IWD7UUKjy4TYiGHv1OS/Pgm77yopMPapqxXxAgSxgAwBsb
 rtvbobkPBq36uJNlPbl/gnCRmCChpvgID336+Ooc/At0v/kyNXdnEff2h
 mgoqDuZyCQpeIyZEhx5qxiWn9uwrYM9c2ILdCe9MJg//43L9UVBAv4g4U
 tSWGV7vf9fCUfMkzgn42xv0/ZlXgYglSTOI9V5r/B7jrCrNhFT+zw30g8
 6BTTf+5+hnnuy20W12RyOpZMverqQ2lp6VQvLb8VBKG2OedieiffZtyS4 A==;
X-CSE-ConnectionGUID: /By33cBTSPGLsRwBJza5XQ==
X-CSE-MsgGUID: o2ORzsf+ShCAV2GiJSz8Dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39487104"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39487104"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:07:50 -0800
X-CSE-ConnectionGUID: rwY3t3T6SC2QhALwOGCErQ==
X-CSE-MsgGUID: rmAExrxURByhSEiiknafog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112471052"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:07:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:07:46 +0200
Date: Mon, 10 Feb 2025 19:07:46 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Povilas Kanapickas <povilas@radix.lt>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH xf86-video-intel] meson: Add dependency on xv
Message-ID: <Z6oyYgCu06vs_Lhk@intel.com>
References: <77434761-e627-4a82-8482-34e6cce79349@radix.lt>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <77434761-e627-4a82-8482-34e6cce79349@radix.lt>
X-Patchwork-Hint: comment
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

On Sat, Feb 08, 2025 at 12:24:26AM +0200, Povilas Kanapickas wrote:
> Symbols such as XvCreateImage, XvPutImage, XvGetPortAttribute come from
> libXv.so. Linking to this dependency directly fixes build errors on
> Debian Bookworm against xserver 21.1.

Thanks, pushed to master.

> ---
>  meson.build                      | 1 +
>  src/legacy/i810/xvmc/meson.build | 1 +
>  xvmc/meson.build                 | 1 +
>  3 files changed, 3 insertions(+)
> 
> diff --git a/meson.build b/meson.build
> index 227ca2eb..553902bb 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -157,6 +157,7 @@ endif
>  
>  with_xvmc = get_option('xvmc')
>  if with_xvmc
> +  dependency('xv', required : true)
>    dependency('xvmc', required : true)
>    dependency('dri2proto', required : true)
>    dependency('x11', required : true)
> diff --git a/src/legacy/i810/xvmc/meson.build b/src/legacy/i810/xvmc/meson.build
> index cd05f3ef..3505f15b 100644
> --- a/src/legacy/i810/xvmc/meson.build
> +++ b/src/legacy/i810/xvmc/meson.build
> @@ -4,6 +4,7 @@ shared_library('I810XvMC',
>  	       sources : 'I810XvMC.c',
>  	       dependencies : [
>  		 dependency('x11', required : true),
> +		 dependency('xv', required : true),
>  		 dependency('xvmc', required : true),
>  		 dependency('xorg-server', required : true),
>  		 dependency('libdrm', required : true),
> diff --git a/xvmc/meson.build b/xvmc/meson.build
> index 0ecc51e5..eeba2b66 100644
> --- a/xvmc/meson.build
> +++ b/xvmc/meson.build
> @@ -14,6 +14,7 @@ shared_library('IntelXvMC',
>  	       dependencies : [
>  		 dependency('threads', required : true),
>  		 dependency('x11', required : true),
> +		 dependency('xv', required : true),
>  		 dependency('xvmc', required : true),
>  		 dependency('xorg-server', required : true),
>  		 dependency('x11-xcb', required : true),
> -- 
> 2.39.5

-- 
Ville Syrjälä
Intel
