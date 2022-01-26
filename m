Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB3249D4A4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 22:39:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EC8810E936;
	Wed, 26 Jan 2022 21:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F7310E936
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 21:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643233188; x=1674769188;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+179ZRID3Ymd2BdsuXKACVyC4LQCFo5nnzWXBpsDa88=;
 b=UXCvZ4lujg/Xw3NK85rnL6+RIgqlgiPiEGTRj8Dr9cczK6SgEVe1btJj
 C/BRBCORQ4tnHi9D61FyjSiCJYocnu5l5Fx0WyCCeG01UUn0D/fzqdRl8
 MOvTGiiY2sLf3BujTfO6f2JuDxTejH1szjYJwWjL2z36NXYQHkaVDwRaK
 bCqFMkZ2rLEWa1Fqnvhi6e/yA38MaSqPFGfM+U/P0wE2rD2lZyL6cXqTX
 ImS8TU50qifk3qXCinF5kHF+EPEsaEQFJS2LmjE9h2kjiJ0s4xyjxe7io
 9IYaD/Rt0PJz0acOCqtR6vayn2bXMB2r6m/E17Y7yCkzhJdNHz0ea7tfA w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="234033168"
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="234033168"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 13:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,319,1635231600"; d="scan'208";a="532884324"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 26 Jan 2022 13:39:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jan 2022 23:39:44 +0200
Date: Wed, 26 Jan 2022 23:39:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YfG/oE0BtS3lVKU9@intel.com>
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-7-ville.syrjala@linux.intel.com>
 <87a6fizhg3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87a6fizhg3.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Clean up PIPESRC defines
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

On Wed, Jan 26, 2022 at 04:42:52PM +0200, Jani Nikula wrote:
> On Fri, 12 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Use REG_GENMASK() & co. when dealing with PIPESRC.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c    | 4 ++--
> >  drivers/gpu/drm/i915/display/intel_display.c | 7 ++++---
> >  drivers/gpu/drm/i915/i915_reg.h              | 4 ++++
> >  3 files changed, 10 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > index 2194f74101ae..f586e39cb378 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -1048,8 +1048,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
> >  	plane_config->base = base;
> >  
> >  	val = intel_de_read(dev_priv, PIPESRC(pipe));
> > -	fb->width = ((val >> 16) & 0xfff) + 1;
> > -	fb->height = ((val >> 0) & 0xfff) + 1;
> 
> I guess the mask width change is worth noting in the commit message.

Aye. I added a few notes about this and the DSL stuff.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thanks. Series pushed to drm-intel-next.

-- 
Ville Syrjälä
Intel
