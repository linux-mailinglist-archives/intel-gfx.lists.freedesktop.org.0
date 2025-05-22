Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1529AC04A7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 08:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4209696D;
	Thu, 22 May 2025 06:35:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l9IMWJwY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 360A696C53
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 06:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747895706; x=1779431706;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=m4A3YbTzI4E54+bg9JPYO1LNUV5FBZ7b2BLMvLTu2GA=;
 b=l9IMWJwYsAdgCf/4hEZzxwIobIeursiFvd6dFKDkqad0KJnkxZkGzYmg
 mRNw1xwxmdSkB9rsROAIFl6jj+dNObPq3yr8SclGVEypmLzxSMqmyc00y
 VpES54Wr0KsR6CnhJTm82UKKZE2q1S28SRnyFOb0H8MPW9Gvp4DuT1q7Y
 6ceIwUpGF/XZW9HDKiiZeBx1LFD84NXVI2Pr5G5wsy8pP3NMYQu1F2/t+
 QrfWtWKzYz182M5PGGWVZ1HuudqZEOmAe4MZOcoFXQaS74TIShM4oqJ6Y
 zQ4VbU6vnjAhdZvdreyTCmrq9Ct82uYwq2kQZKIAnMAq51syLzKCU7Tx4 Q==;
X-CSE-ConnectionGUID: TLj64AIyR/urBrViZ9DBOg==
X-CSE-MsgGUID: PhDLsCr8RPyUCdnCfrPWjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49890701"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="49890701"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 23:35:05 -0700
X-CSE-ConnectionGUID: 71PcmtqlRkiV13QNC9RAXg==
X-CSE-MsgGUID: DPSoW1c4T6Oi3GvKxbw6NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="140328697"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.85])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 23:35:02 -0700
Date: Thu, 22 May 2025 08:35:00 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tursulin@ursulin.net>, stable@vger.kernel.org,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1
Message-ID: <aC7FlELcVQsHuRL_@ashyti-mobl2.lan>
References: <20250411144313.11660-1-ville.syrjala@linux.intel.com>
 <20250411144313.11660-2-ville.syrjala@linux.intel.com>
 <174789510455.12498.1410930072009074388@jlahtine-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <174789510455.12498.1410930072009074388@jlahtine-mobl>
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

Hi Joonas,

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
> 
> If we have already submitted an userspace fix to remove that flag, that
> would be the right way to go.

Oh! We need to add a comment there, though, because in the
future I expect someone else might decide to send the same patch.

Andi
