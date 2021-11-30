Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C43463074
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 11:01:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5BC76EC77;
	Tue, 30 Nov 2021 10:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF6D96EBB5
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 10:01:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10183"; a="260139658"
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="260139658"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 02:01:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,275,1631602800"; d="scan'208";a="654067538"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 30 Nov 2021 02:01:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Nov 2021 12:01:41 +0200
Date: Tue, 30 Nov 2021 12:01:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YaX2hVZsu/apAFev@intel.com>
References: <20211125202750.3263848-1-uma.shankar@intel.com>
 <20211125202750.3263848-3-uma.shankar@intel.com>
 <87ee6zj5nb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ee6zj5nb.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/xelpd: Enable Pipe Degamma
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

On Mon, Nov 29, 2021 at 06:19:52PM +0200, Jani Nikula wrote:
> On Fri, 26 Nov 2021, Uma Shankar <uma.shankar@intel.com> wrote:
> > Enable Pipe Degamma for XE_LPD. Extend the legacy implementation
> > to incorparate the extended lut size for XE_LPD.
> >
> > v2: Added a helper for degamma lut size (Ville)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 14 +++++++++++---
> >  1 file changed, 11 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> > index 42fe549ef6fe..de3ded1e327a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -808,6 +808,14 @@ static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
> >  	}
> >  }
> >  
> > +static int glk_degamma_lut_size(struct drm_i915_private *i915)
> > +{
> > +	if (DISPLAY_VER(i915) >= 13)
> > +		return 131;
> > +	else
> > +		return 35;
> > +}
> > +
> 
> Why do we have both a function with hardcoded values and device info
> members for this?

The device info stuff just needs to get nuked. The size of the LUTs
depends on the gamma mode which we already select dynamically (and
if/when we get thre new uapi ironed out it'll become even more
dynamic), so trying to represent it with a single number in device 
info is futile.

-- 
Ville Syrjälä
Intel
