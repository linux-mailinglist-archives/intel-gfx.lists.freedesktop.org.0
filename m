Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966056C504E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 17:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF05B10E3CA;
	Wed, 22 Mar 2023 16:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C1D10E3C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 16:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679501833; x=1711037833;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PQapz2d63buGkMCgKWkV4Wop0sKeyODv58YMzBo673I=;
 b=XJ179lFRNXGDowBeEYzSUo4zyaiT1pe398ogbxw1w/T5Jm+qQnkiCAn7
 SXntwBNGn8gThVnKTirz3DKBkpzuyhbllZEjb1X9vbZTv5Hihe+eOUQh8
 tQbGf67o/4SFhNfJk54tC861vPEminhxo5A5uqJ4VdooDpkijWCZL14D0
 uYndhAGZbtWhUU+mKyMbXMgjCKHPY6Z9qfywm4hVosvcIrsD0w8sFoKCL
 Qp1EwqU3/Zkqydv5WYpBhkuQkDC7ewDicGHl3r6GQEEL2Hf6pUyYm+9ym
 OQ3gB69dCJo0oeYCe4xbxvSXGOkHLwjQeVwGHKQci7CmhmsI475Tq/jqb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="425546629"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="425546629"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 09:15:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="712286745"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="712286745"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 22 Mar 2023 09:15:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Mar 2023 18:15:41 +0200
Date: Wed, 22 Mar 2023 18:15:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <ZBsprRdvIKoC7Xyc@intel.com>
References: <20230320090522.9909-1-ville.syrjala@linux.intel.com>
 <9b0a61ad-2f02-b35d-9cd4-68367aa4a85c@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9b0a61ad-2f02-b35d-9cd4-68367aa4a85c@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915/dpt: Fix DPT+shmem combo and
 add i915.enable_dpt modparam
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

On Wed, Mar 22, 2023 at 05:15:56PM +0200, Juha-Pekka Heikkila wrote:
> Set look all ok,
> 
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Thanks.

> 
> I guess should start to think about how to write igt tests which would 
> target directly at dpt so this kind of issues wouldn't get missed.

Yeah, I was already thinking that we should try something like
that to see if we could catch the the DPT fault bug reliably by
invoking the shrinker directly while doing stuff with DPTs.

> 
> /Juha-Pekka
> 
> On 20.3.2023 11.05, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Avoid the shrinker evicting the DPT during hibernate and
> > causing an oops. This might also fix DPT induced display faults
> > during high memory pressure (though still don't have a real
> > theory how that could actually happen).
> > 
> > Also add a i915.enable_dpt modparam to disable DPT usage via
> > the chicken bit. This can be useful when trying to debug suspected
> > DPT issues.
> > 
> > Ville Syrjälä (6):
> >    drm/i915/dpt: Treat the DPT BO as a framebuffer
> >    drm/i915/dpt: Only do the POT stride remap when using DPT
> >    drm/i915/dpt: Introduce HAS_DPT()
> >    drm/i915: Add PLANE_CHICKEN registers
> >    drm/i915/dpt: Add a modparam to disable DPT via the chicken bit
> >    drm/i915: Move PLANE_BUG_CFG bit definitons to the correct place
> > 
> >   drivers/gpu/drm/i915/display/intel_display.c  |  6 +++++
> >   drivers/gpu/drm/i915/display/intel_dpt.c      | 23 +++++++++++++++++++
> >   drivers/gpu/drm/i915/display/intel_dpt.h      |  2 ++
> >   drivers/gpu/drm/i915/display/intel_fb.c       | 11 +++++----
> >   drivers/gpu/drm/i915/display/intel_fb.h       |  1 +
> >   .../drm/i915/display/skl_universal_plane.c    |  6 +++++
> >   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  2 +-
> >   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +++
> >   drivers/gpu/drm/i915/i915_drv.h               |  2 ++
> >   drivers/gpu/drm/i915/i915_params.c            |  3 +++
> >   drivers/gpu/drm/i915/i915_params.h            |  1 +
> >   drivers/gpu/drm/i915/i915_reg.h               | 21 +++++++++++++----
> >   12 files changed, 70 insertions(+), 11 deletions(-)
> > 

-- 
Ville Syrjälä
Intel
