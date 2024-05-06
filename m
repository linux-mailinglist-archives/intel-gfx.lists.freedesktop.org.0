Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1438F8BD47A
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 20:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2539010F20C;
	Mon,  6 May 2024 18:20:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LBgogPBM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3773410F20C;
 Mon,  6 May 2024 18:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715019604; x=1746555604;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ayYLNYqxZpUfkQCRmmIViwpOz4J/OVzWvLJ33Vmj3Fs=;
 b=LBgogPBMPcPIQo84lCwB+2SKDR0Qfl0iedRgxrQTo+SOgurv6dCZO7O7
 zuG19IL0+fWSsQo46HtP9hM/vfRsmdcfgB5+N7cx118I1u4f4TayMA3Fd
 +KBhGKq4r+11ly3RyH+NTYTGXzeczcDT4BPfXZBOJf2e6AbBQLmntCCTP
 y4vWX/443/xa+MJXzvljtbhjvTjW+KzuFjvofrr4fqu/pqIG1peuVRjPB
 43+4suCn8XXk8GhAmwOVi3v0/lvdD/q4SNUlfgpdUGGedVRFl3bN3mUc0
 uGZEs2DEhzcNyHEQnm3eMVdjcGh66f3cYuIZFIKK+y0+njIUj2h8AfNae Q==;
X-CSE-ConnectionGUID: vH69jx16QiabNllLXZJ4Ug==
X-CSE-MsgGUID: GNBycAOjSOivPG9C++o3uA==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="21454471"
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="21454471"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 11:20:04 -0700
X-CSE-ConnectionGUID: VNFBSkEQRzu9zgc9C0JKUw==
X-CSE-MsgGUID: h/Tw2xPnQRaufGgSag9Q8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="28234255"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 11:20:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 21:19:59 +0300
Date: Mon, 6 May 2024 21:19:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915: Change intel_fbdev_fb_alloc() reuturn type
Message-ID: <ZjkfT8oUbiNYXTYS@intel.com>
References: <20240506125718.26001-1-ville.syrjala@linux.intel.com>
 <20240506125718.26001-8-ville.syrjala@linux.intel.com>
 <87pltzkotp.fsf@intel.com> <ZjkKo29TW8BhLq5z@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZjkKo29TW8BhLq5z@intel.com>
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

On Mon, May 06, 2024 at 07:51:47PM +0300, Ville Syrjälä wrote:
> On Mon, May 06, 2024 at 05:16:50PM +0300, Jani Nikula wrote:
> > 
> > *return in subject
> > 
> > On Mon, 06 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Change intel_fbdev_fb_alloc() to return struct intel_fb instead
> > > of struct drm_framebuffer. Let's us eliminate some annoying
> > > aliasing variables in the fbdev setup code.
> > 
> > You'll need to enable DRM_XE=m and DRM_XE_DISPLAY=y configs, this will
> > fail the build there. ;)
> 
> $ grep DRM_XE build_test/.config
> CONFIG_DRM_XE=m
> CONFIG_DRM_XE_DISPLAY=y
> 
> It actually builds just fine here, which is a bit
> surprising.

And the reason seems to be that xe has its own copy of
that header for some reason. So xe's intel_fbdev_fb.c will include
the xe header, but everything in i915 will include the i915 header.
The two could be talking about apples vs. oranges and the build
would never fail :/

-- 
Ville Syrjälä
Intel
