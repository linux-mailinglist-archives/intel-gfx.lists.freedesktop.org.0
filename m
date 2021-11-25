Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFA545D851
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Nov 2021 11:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4DEC6E489;
	Thu, 25 Nov 2021 10:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E227F6E489
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 10:35:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="232986860"
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="232986860"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2021 02:35:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,263,1631602800"; d="scan'208";a="554602122"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 25 Nov 2021 02:35:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 25 Nov 2021 12:35:08 +0200
Date: Thu, 25 Nov 2021 12:35:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YZ9m3J8XOq++2V+q@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
 <0afc1d559c463fb5f9fc74b768df6a4e6bfcd2c6.1637588831.git.jani.nikula@intel.com>
 <YZ9kGqXSDTnTqeoG@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YZ9kGqXSDTnTqeoG@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/display: remove
 intel_wait_for_vblank()
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

On Thu, Nov 25, 2021 at 12:23:22PM +0200, Ville Syrjälä wrote:
> On Mon, Nov 22, 2021 at 03:51:03PM +0200, Jani Nikula wrote:
> > There are only three call sites remaining for
> > intel_wait_for_vblank(). Remove the function, and open code it to avoid
> > new users from showing up.
> > 
> > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c         | 2 +-
> >  drivers/gpu/drm/i915/display/intel_crt.c           | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++++--
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 8 --------
> >  4 files changed, 8 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 91c19e0a98d7..e3b863ee0bbb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1690,7 +1690,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  	intel_de_write(dev_priv, CDCLK_CTL, val);
> >  
> >  	if (pipe != INVALID_PIPE)
> > -		intel_wait_for_vblank(dev_priv, pipe);
> > +		drm_crtc_wait_one_vblank(&intel_get_crtc_for_pipe(dev_priv, pipe)->base);
> 
> That looks rather hideuous. I think I'd prefer to keep the wrapper.

I guess if we had an intel_crtc based version of the vblank wait
function it might not look so terrible.

We could also s/intel_get_crtc_for_pipe/intel_crtc_for_pipe/ to make it
a bit more succinct and look less like some refcounted thing.

-- 
Ville Syrjälä
Intel
