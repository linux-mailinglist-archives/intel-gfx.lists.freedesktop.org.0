Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EF1A6C585
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 22:57:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C138E10E050;
	Fri, 21 Mar 2025 21:57:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mo2+E4wn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276DC10E050
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742594220; x=1774130220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9kDxbt9MWzLx+QP0jPhqZiUYznBw2ld9N/tcceZfj9Y=;
 b=Mo2+E4wnIiSAQndncNWyTRwJ3bhkyySb6IqlHyFz/Eu9l1ke0SYrhNxN
 f7x/woh2siK/HhrDzQSqpI8Tj/wztGxt/+yjVvWZ1k7Pk89OJKKgO5FBG
 vbczMA7lP0YkEwEV0QvMgnZDiJPP+P3+Z5Zsl92zn/dlHZVioOnfep6JZ
 5sO7zfLAIpXkc/B4cV2vDaPBO/8niNx7oKZj7YaFFrYp+VAXURG5IH2kx
 L8de3Q5sr3TOUdfrpHZBCCzJ/3/Jn95fs181qmuViYcv9Pd2RN9+gEKgO
 PZI0j2BsYvsXyeWjauUOqlDyzfxcIRRg1voRhzzLcw3nC6F08OFgGQprr Q==;
X-CSE-ConnectionGUID: YDPCSRXHTT6JNumOh81e9g==
X-CSE-MsgGUID: oRqnMBCLSN6WPyAW40e+oA==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43600146"
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="43600146"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 14:56:51 -0700
X-CSE-ConnectionGUID: hNw8rU6ORBaBW7QKUfexBQ==
X-CSE-MsgGUID: c9FW7YxTQSivQmDfLkOnNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,266,1736841600"; d="scan'208";a="128735379"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 14:56:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 23:56:48 +0200
Date: Fri, 21 Mar 2025 23:56:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 01/16] meson.build: fix missing Xv dependencies
Message-ID: <Z93goLz2TuyyRBU6@intel.com>
References: <20250304155809.30399-1-info@metux.net>
 <20250304155809.30399-2-info@metux.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304155809.30399-2-info@metux.net>
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

On Tue, Mar 04, 2025 at 04:57:54PM +0100, Enrico Weigelt, metux IT consult wrote:
> libXv needs be be explicitly linked, otherwise getting error:
> 
>   FAILED: xvmc/libIntelXvMC.so.1.0.0
>   cc  -o xvmc/libIntelXvMC.so.1.0.0 xvmc/libIntelXvMC.so.1.0.0.p/intel_xvmc.c.o xvmc/libIntelXvMC.so.1.0.0.p/intel_xvmc_dump.c.o xvmc/libIntelXvMC.so.1.0.0.p/i915_xvmc.c.o xvmc/libIntelXvMC.so.1.0.0.p/i965_xvmc.c.o xvmc/libIntelXvMC.so.1.0.0.p/xvmc_vld.c.o xvmc/libIntelXvMC.so.1.0.0.p/intel_batchbuffer.c.o -Wl,--as-needed -Wl,--no-undefined -shared -fPIC -Wl,--start-group -Wl,-soname,libIntelXvMC.so.1 -pthread /usr/lib/x86_64-linux-gnu/libX11.so /usr/lib/x86_64-linux-gnu/libXvMC.so /usr/lib/x86_64-linux-gnu/libX11-xcb.so /usr/lib/x86_64-linux-gnu/libxcb.so /usr/lib/x86_64-linux-gnu/libxcb-util.so /usr/lib/x86_64-linux-gnu/libxcb-dri2.so /usr/lib/x86_64-linux-gnu/libdrm_intel.so /usr/lib/x86_64-linux-gnu/libdrm.so -Wl,--end-group
>   /usr/bin/ld: xvmc/libIntelXvMC.so.1.0.0.p/intel_xvmc.c.o: in function `XvMCCreateSurface':
>   /home/nekrad/src/xorg/drivers/xf86-video-intel/_build/../xvmc/intel_xvmc.c:432: undefined reference to `XvCreateImage'
>   /usr/bin/ld: xvmc/libIntelXvMC.so.1.0.0.p/intel_xvmc.c.o: in function `XvMCPutSurface':
>   /home/nekrad/src/xorg/drivers/xf86-video-intel/_build/../xvmc/intel_xvmc.c:666: undefined reference to `XvPutImage'
>   collect2: error: ld returned 1 exit status
> 
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>

This one was already fixed with
commit e6a4c4740c15 ("meson: Add dependency on xv")

> ---
>  src/legacy/i810/xvmc/meson.build | 1 +
>  xvmc/meson.build                 | 1 +
>  2 files changed, 2 insertions(+)
> 
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
