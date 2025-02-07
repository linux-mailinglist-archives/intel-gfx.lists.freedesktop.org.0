Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D26E6A2CEFC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 22:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA4C10E2EA;
	Fri,  7 Feb 2025 21:25:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q68Z0jTz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52DE10E0CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2025 21:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738963512; x=1770499512;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7L3ixYfTsaP7rFnG+ESE5SNyTo/GFA6XhfEUot2jRQ0=;
 b=Q68Z0jTzQ9JcvlPjeqOfrTIpsBZodeASvI6quEDbz+HJOXwcw3JQWnEY
 Y3IkEvUCn1pHSUv/grlJMM3Zg4hC63syAdQn4IKVfH+iPK4Ahc80SO3lJ
 9RsPPBgrs+RVsRlyxLB/8sb3sgYz1kS3FpMZhwQoz9Nlg1pv2BfoXGo3f
 hfsMVuKsGNQ58wosuXQB2MT5ztn/s9nLD6krT+mxQJaJOr7Ws4UHWCz2D
 bJAlpghsXH8t64ej6sFpiXTHhCm+UY0+bKqLhtIRLOkM6R4PAuRDd+o1f
 8GpualfjehtWMtw+2vkRpgjVYCZP0Rzd/WCHtGJwkCtaZUNtsT/i7xUcH w==;
X-CSE-ConnectionGUID: ZuFxEGWRSg2lBWbqQLKSzQ==
X-CSE-MsgGUID: KTIEInyHQ7qPC50cpgKr4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="62093888"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="62093888"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 13:25:12 -0800
X-CSE-ConnectionGUID: wiwX/1SFREOBN+/NqFV19g==
X-CSE-MsgGUID: dXIhrQO4RvKSxwp1Piw/6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111847039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 13:25:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Feb 2025 23:25:07 +0200
Date: Fri, 7 Feb 2025 23:25:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Povilas Kanapickas <povilas@radix.lt>
Cc: "xorg-devel@lists.x.org" <xorg-devel@lists.x.org>,
 intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Subject: Re: xf86-video-intel is broken and with MRs disables we can't fix it
Message-ID: <Z6Z6My8FcaLaLPu0@intel.com>
References: <1e5b5275-d194-4af0-8927-f5b93416a407@radix.lt>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1e5b5275-d194-4af0-8927-f5b93416a407@radix.lt>
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

On Fri, Feb 07, 2025 at 08:57:34PM +0200, Povilas Kanapickas wrote:
> Hi,
> 
> xf86-video-intel driver is currently cannot be compiled with released
> versions of X server. Simple reproduction steps: create Debian Bookworm
> container, download module sources and all required dependencies and try
> to build.

Builds fine on my Gentoo boxes here. What are the actual issues
you are seeing?

> 
> Debian Bookworm is pretty much the least exciting configuration
> possible. And the fact that xf86-video-intel cannot be compiled there is
> not good.
> 
> For almost any other driver this is not a problem, because it is
> possible to create a merge request on gitlab.freedesktop.org. Eventually
> simple maintenance and build-related merge requests are merged. However
> in the case of Intel driver, merge requests are disabled and the
> recommended way to submit patches is via intel-gfx@lists.freedesktop.org
> mailing list. Unfortunately, patches submitted so far are ignored there.

I've not seen any patches on the list. Care to point them out?

> 
> Given that the last commit to xf86-video-intel was 22 months ago, I
> suspect there's little interest from Intel to spend time maintaining the
> project.

You must be looking at some stale repo. My last commit was 
commit ce811e78882d9f31636351dfe65351f4ded52c74
Author:     Ville Syrjälä <ville.syrjala@linux.intel.com>
AuthorDate: Sat Mar 18 15:45:44 2023 +0200
Commit:     Ville Syrjälä <ville.syrjala@linux.intel.com>
CommitDate: Tue May 7 00:32:24 2024 +0300

> 
> What do you think about opening up merge requests on the repository so
> that at least the driver can be brought back to compilable state? Does
> anyone have other ideas how the current situation could be resolved?

I wouldn't want to deal with mrs for any high volume stuff, but
since this only gets the occasional fix I guess it could work.

-- 
Ville Syrjälä
Intel
