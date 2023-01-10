Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BB96643BF
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 15:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7194B10E012;
	Tue, 10 Jan 2023 14:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9066410E012
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 14:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673362542; x=1704898542;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rUu2Xp6fLEBAfsPsJEiImlGe8UvO9208xUiYuiTz+pU=;
 b=LeMq4iXhu0CbkXQvJHSmezhTlfXZnOLFw56EakuSJ6NGldQ+YTjW5dgF
 bpOjzHvq5alQWLRBC5w/G1AIZ4ry3L6HqgHCwme4jApF0whTy+98wm30V
 knPPEXSglYERY3ZkeImffNzOJsOIqRqm3zgmvRGR77Iev4+7ZKLZ5ehWF
 zDIbaBIuCVtxbd4RulVmhzuH/vDQ04xX5FfV4CrXRwcCE2CEvRR0A4hAz
 ECzGm+hfTmol1E8oOnvx+kxkQdoL3mFbhepSi7TR/WLWttYrbP/AUI5Wn
 Jgzs+06vIl15SJQtAHvOVoki/lNDLYJaFlq8q5qrplzWrWShrOESmyG7i w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385465265"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="385465265"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 06:55:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="659020342"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="659020342"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 06:55:28 -0800
Date: Tue, 10 Jan 2023 16:55:21 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y718WXI5AImglLja@intel.com>
References: <20221219072919.27495-1-stanislav.lisovskiy@intel.com>
 <Y6GaWk/JrjodKyJj@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y6GaWk/JrjodKyJj@intel.com>
Subject: Re: [Intel-gfx] [PATCH] Copy highest enabled wm level to disabled
 wm levels for gen >= 12
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

On Tue, Dec 20, 2022 at 01:19:54PM +0200, Ville Syrjälä wrote:
> On Mon, Dec 19, 2022 at 09:29:19AM +0200, Stanislav Lisovskiy wrote:
> > There was a specific SW workaround requested, which should prevent
> > some watermark issues happening, which requires copying highest
> > enabled wm level to those disabled wm levels(bit 31 is of course
> > still needs to be cleared).
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index ae4e9e680c2e3..b12e11cd6e579 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -1591,6 +1591,13 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
> >  				wm->wm[level].lines = wm->wm[0].lines;
> >  				wm->wm[level].ignore_lines = wm->wm[0].ignore_lines;
> >  			}
> > +
> > +			/* Wa_14017887344 */
> > +			if (DISPLAY_VER(i915) >= 12 && level > 0) {
> > +				wm->wm[level].blocks = wm->wm[level - 1].blocks;
> > +				wm->wm[level].lines = wm->wm[level - 1].lines;
> > +				wm->wm[level].ignore_lines = wm->wm[level - 1].ignore_lines;
> > +			}
> 
> Hmm. Reading the parent hsd this smells at least partially as
> some kind of race in the Windows driver between async flip,
> wm1+ disable, and the PSR wm level override behaviour.
> 
> We never do async flip + wm1+ disable from the same commit
> which itself might be sufficient to avoid the issue. I
> didn't think that even worked, but maybe it sort of does
> if Windows attempts it. However since we don't do that we
> might never hit this. Not sure.
> 
> The PSR wm level override stuff we don't handle at all
> currently. I'm thinking that is something we should
> remedy first.
> 
> Also while thinking about how to unify this and the
> already existing wm1 w/a I realized that we don't 
> check if the wm level is actually enabled or not.
> So it's interfering with commit a301cb0fca2d ("drm/i915:
> Keep plane watermarks enabled more aggressively").
> My gut reaction is that we want a wm[level].enable
> check there, but I've not fully thought through the
> implications...

As I understand in order for this W/A to become essential,
following conditions should be combined:

1) We are doing async flips, with all WM levels > 0 being
   disabled(this all 0's are written to wm level registers)
2) PSR optimization has to be turned on(controlled in CHICKEN_DCPR_1 reg)
   This optimization enables the highest possible WM level, when PSR
   is used.
   This seems to get into contradiction with 1).
   We have actually already this W/A implemented to disable that optimization
   for small vblanks, however as I understand it isn't always enabled
   (it is enabled only for DG1/TGL for some reason in our code)
   so that's why we also set those WM level regs to some sane values.

But could be that we need to limit it to async flips only?

Stan


> 
> >  		}
> >  	}
> >  
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
