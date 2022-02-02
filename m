Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C7A4A6E97
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 11:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADAF910E5BC;
	Wed,  2 Feb 2022 10:22:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E88E10E5BC
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 10:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643797365; x=1675333365;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mRX1p3tSSlmRm8sj+BP0IOY3seYXAHdAdAiQipX0ADk=;
 b=Q28uEJfh2Arn2Ze1WzcmlbWM5QoyXcoEUzuA18tXeQGqYlSw8HVoCETm
 7o8hkyWa3k4uumKxrx+PyXjSekXqKjJ4TyBZ1FycyM50eiyceTm+nBZYd
 9YZ4MN0UmKisQYKALS8gBBhE694NpHnOex2LDEglV8fBq7v+EMh5eYkx+
 GTVFNKRlswP0kjDz3b4XZUVR/r6v3WcL/QmSFOT04hZlWhhmBBVnt3iV1
 h4wpDV5wVscdngvgO9zameZgThftj+jmiFJTiK7NtX7J2oZ+px5SXYLPp
 S5QaoHJI6Ipt9pihZh3H97J58qlB8eHtmFxzGJImi2vTPBBcE2vXfe00k g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="228541437"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="228541437"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 02:22:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="583381887"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 02 Feb 2022 02:22:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Feb 2022 12:22:41 +0200
Date: Wed, 2 Feb 2022 12:22:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yfpbceq3zV3qIm3n@intel.com>
References: <20220110095740.166078-1-jani.nikula@intel.com>
 <20220110095740.166078-3-jani.nikula@intel.com>
 <YdxYvXfkOgTFFg+s@intel.com> <87pmoy8xdb.fsf@intel.com>
 <Yd7WmT4naDadKVoh@intel.com> <87iltxtyp4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87iltxtyp4.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/vga: switch to use VGA
 definitions from video/vga.h
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

On Wed, Feb 02, 2022 at 11:17:11AM +0200, Jani Nikula wrote:
> On Wed, 12 Jan 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Tue, Jan 11, 2022 at 10:55:44AM +0200, Jani Nikula wrote:
> >> On Mon, 10 Jan 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> >> > On Mon, Jan 10, 2022 at 11:57:39AM +0200, Jani Nikula wrote:
> >> >> The video/vga.h has macros for the VGA registers. Switch to use them.
> >> >> 
> >> >> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
> >> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> >> ---
> >> >>  drivers/gpu/drm/i915/display/intel_vga.c | 9 +++++----
> >> >>  1 file changed, 5 insertions(+), 4 deletions(-)
> >> >> 
> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
> >> >> index fa779f7ea415..43c12036c1fa 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> >> >> @@ -7,6 +7,7 @@
> >> >>  #include <linux/vgaarb.h>
> >> >>  
> >> >>  #include <drm/i915_drm.h>
> >> >> +#include <video/vga.h>
> >> >>  
> >> >>  #include "i915_drv.h"
> >> >>  #include "intel_de.h"
> >> >> @@ -34,9 +35,9 @@ void intel_vga_disable(struct drm_i915_private *dev_priv)
> >> >>  
> >> >>  	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
> >> >>  	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
> >> >> -	outb(SR01, VGA_SR_INDEX);
> >> >> -	sr1 = inb(VGA_SR_DATA);
> >> >> -	outb(sr1 | 1 << 5, VGA_SR_DATA);
> >> >> +	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I);
> >> >
> >> > Not a huge fan of some of these defines since now I have
> >> > no idea what register this is selecting.
> >> 
> >> It's a bit silly that we have our own macros for this stuff, but I get
> >> the point. Took me a while to figure the changes out because the macros
> >> in video/vga.h aren't even grouped in a helpful way.
> >> 
> >> I guess you'd prefer patch [1] over patches 3-4 in this series then? For
> >> me the main goal is to just reduce the size of i915_reg.h.
> >
> > I guess another option is to go with this and just
> > s/VGA_SEQ_CLOCK_MODE/0x01/ or something. I think the rest
> > of the defines are probably clear enough.
> 
> I dropped the ball here a bit. If I respin the same patches, but with
> the above line changed to one of these, is it okay? Which do you prefer?
> 
> 1)	outb(VGA_SEQ_CLOCK_MODE, VGA_SEQ_I); /* SR01 */
> 
> 2)	#define SR01 VGA_SEQ_CLOCK_MODE
> 	outb(SR01, VGA_SEQ_I);
> 
> 3)	outb(0x01, VGA_SEQ_I);

3 seems like the best option of these.

-- 
Ville Syrjälä
Intel
