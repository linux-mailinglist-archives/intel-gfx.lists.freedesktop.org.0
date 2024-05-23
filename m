Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C378CD1BE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 14:06:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF86710E171;
	Thu, 23 May 2024 12:06:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1QHIHY+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94BC610E171
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 12:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716465973; x=1748001973;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gvG7vxjvm1pEpYZAnIgskU0kTWP54kQBuIMzClro23o=;
 b=D1QHIHY++r02Z1/abG28sUpusu+WOktkFYzFRcfuoUq/PKXsRTKSZZTS
 cZGfMmwRCa9oDaxBPFxP1dGQhT1fXWfbSbQ7JiU4Ui9hd7pOJDStlUM7H
 z/jv6KPrl8rSEJwsuHR+71etCdwJRsajcTGyxoBZlwRvQmRVRXSTNSCZ+
 VIlxVJASFldjlqpbLg9ZknVnH2j5hfKlfy3aFHYjN48lKWA81FbGAcWnW
 8EvHS6w2S+RKBnqVudk/TGzixm9g0CxeWnZVvqb2BVIfsD3T0RSyvVqH9
 vv271tWBxUqixFZ57DtN7/MkO2c1LOV2H2BOlhmvGG3UjMyrqYk3Fxu0p A==;
X-CSE-ConnectionGUID: 2cmCLK0LQJGpXomWpwh9sQ==
X-CSE-MsgGUID: U50OlWxXQ+u2JdgLSqRIqw==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13008933"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="13008933"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 05:06:12 -0700
X-CSE-ConnectionGUID: 9LCWs7AOSVSxJDaWzCs4cQ==
X-CSE-MsgGUID: 3+F11AgWSuKYs3YMzNdFRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33632899"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 05:06:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 15:06:09 +0300
Date: Thu, 23 May 2024 15:06:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/13] drm/i915: Define SEL_FETCH_PLANE registers via
 PICK_EVEN_2RANGES()
Message-ID: <Zk8xMdOVB7taPAUM@intel.com>
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-7-ville.syrjala@linux.intel.com>
 <87ikz4q46u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ikz4q46u.fsf@intel.com>
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

On Thu, May 23, 2024 at 12:15:53PM +0300, Jani Nikula wrote:
> On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Instead of that huge _PICK() let's use PICK_EVEN_2RANGES()
> > for the SEL_FETCH_PLANE registers. A bit more tedious to have
> > to define 8 raw register offsets for everything, but perhaps
> > a bit easier to understand since we use a standard mechanism
> > now instead of hand rolling the arithmetic.
> >
> > Also bloat-o-meter says:
> > add/remove: 0/0 grow/shrink: 0/3 up/down: 0/-326 (-326)
> > Function                                     old     new   delta
> > icl_plane_update_arm                         510     446     -64
> > icl_plane_disable_sel_fetch_arm.isra         158      54    -104
> > icl_plane_update_noarm                      1898    1740    -158
> > Total: Before=2574502, After=2574176, chg -0.01%
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I just don't understand the old one.
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_psr_regs.h | 45 ------------
> >  .../i915/display/skl_universal_plane_regs.h   | 68 +++++++++++++++++++
> >  2 files changed, 68 insertions(+), 45 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > index f0bd0a726d7a..289c371c98d1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
<snip>
> > @@ -367,4 +378,61 @@
> >  #define   PLANE_BUF_START_MASK			REG_GENMASK(11, 0)
> >  #define   PLANE_BUF_START(start)		REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
> >  
> > +#define _SEL_FETCH_PLANE_CTL_1_A		0x70890 /* mtl+ */

I noticed I had these bogus mtl+ comments here too, so changed
those to tgl+ while pushing.

Entire series is in now. Thanks for slogging through it.

-- 
Ville Syrjälä
Intel
