Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BFBAC08D6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 11:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08CC510EC61;
	Thu, 22 May 2025 09:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d2M5uc5v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C1010EC61
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 09:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747906510; x=1779442510;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Z+jLKNsxkqIWqQE8myT0MpIZfPTXS0E7a1P5MPHCQjA=;
 b=d2M5uc5vzmexdh/SbuMcAf4/MnMiXfnPOZXc3I5vihPi9Ft/Xoy5Rh0l
 3AiK7m8Ss+fjvUgvIQJJ2yMfeIBTbofXEMZwGy86KJgFhZKEW2hGnyUgQ
 bEFYD9HUSJaP2AXqkN4CQqBpiZCK9IXxacd8IJbB1zzIMjdbi5wV/Hbbq
 aJTk3WlzJ+sjAGcD93DAG0ICjMGrkkrz7L2otYsTO/hnyueHdyyw/qmR+
 4hefmRn1tYkDLgxsMVsrUBZlk2iW7RuteEqBxhMvHPNakj/LdVYXBLCwI
 jusHCc5gWFP3SLwE1CsS+yu0I9Y9LaIYH64sYC2ZW9AGjFmDmejOVpRu/ w==;
X-CSE-ConnectionGUID: o8BIMEUsSTS7ExI59O7uJg==
X-CSE-MsgGUID: BQIziqUjSduPyTEboD1JAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="72446652"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="72446652"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:35:10 -0700
X-CSE-ConnectionGUID: j+Fzz2/8Q8qgd8dpaZ+2+w==
X-CSE-MsgGUID: WUskt9GISkaCGl1a8MdVKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="145666591"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.173])
 by orviesa005.jf.intel.com with SMTP; 22 May 2025 02:35:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 22 May 2025 12:35:05 +0300
Date: Thu, 22 May 2025 12:35:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Tvrtko Ursulin <tursulin@ursulin.net>,
 stable@vger.kernel.org, Matthew Auld <matthew.auld@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1
Message-ID: <aC7vyURBb6k8TqBI@intel.com>
References: <20250411144313.11660-1-ville.syrjala@linux.intel.com>
 <20250411144313.11660-2-ville.syrjala@linux.intel.com>
 <174789510455.12498.1410930072009074388@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <174789510455.12498.1410930072009074388@jlahtine-mobl>
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

On Thu, May 22, 2025 at 09:25:04AM +0300, Joonas Lahtinen wrote:
> (+ Tvrkto)
> 
> Quoting Ville Syrjala (2025-04-11 17:43:12)
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The intel-media-driver is currently broken on DG1 because
> > it uses EXEC_CAPTURE with recovarable contexts. Relax the
> > check to allow that.
> > 
> > I've also submitted a fix for the intel-media-driver:
> > https://github.com/intel/media-driver/pull/1920
> > 
> > Cc: stable@vger.kernel.org
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> > Testcase: igt/gem_exec_capture/capture-invisible
> > Fixes: 71b1669ea9bd ("drm/i915/uapi: tweak error capture on recoverable contexts")
> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index ca7e9216934a..ea9d5063ce78 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -2013,7 +2013,7 @@ static int eb_capture_stage(struct i915_execbuffer *eb)
> >                         continue;
> >  
> >                 if (i915_gem_context_is_recoverable(eb->gem_context) &&
> > -                   (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
> > +                   GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
> 
> The IS_DGFX check was there because the error capture is expected to be
> broken on anything with VRAM.

I don't care. It's a regression that prevents current userspace
from working.

> 
> If we have already submitted an userspace fix to remove that flag, that
> would be the right way to go.

There has a been an open pull request for that for who knows how long
without any action.

> 
> So reverting this for now.

*You* make sure a userspace fix actually gets released then.

-- 
Ville Syrjälä
Intel
