Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3D47A93E1
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 13:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9C2610E5CE;
	Thu, 21 Sep 2023 11:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE2B10E5CC;
 Thu, 21 Sep 2023 11:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695296262; x=1726832262;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/eChMH4km1X10RI9fRsuqKUGU8Ofxq3VkLONpi7T2/o=;
 b=V/bCfGLfMKrCorS6y/XzFbCt2xYr0ke133tMvKptlz+NAekJsSjrF+le
 bcADOecX6XMouHj9hDhHAdb2Cq6aQegp+M2x2sUwlyQobXlTaf1ARNwEq
 CpoXvIlqvI855gpFpbJd8t8AVetqdN+eERv+TFVJlwQ1cVkn/N95AIw1/
 Fep9Xf8uY7B0OShDlEonQ1EEAdnXy9MLVWLwZzor6EhmIbDVhPunTvONM
 1m1aFkLZoEskye2Zwb5zSzY9SzEEnwYy/4rWAGTWuIUMmkfc9pbYLCsmB
 PU6q9Qj1rJy9kQre+XRHMR2iqykAcTENG1yrmTmbbmIWARbIq6YAg6mkX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="365549078"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="365549078"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 04:37:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="723715544"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="723715544"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga006.jf.intel.com with SMTP; 21 Sep 2023 04:37:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 21 Sep 2023 14:37:38 +0300
Date: Thu, 21 Sep 2023 14:37:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZQwrAp2paV0Y2WVk@intel.com>
References: <20230904115517.458662-1-vinod.govindapillai@intel.com>
 <20230904115517.458662-3-vinod.govindapillai@intel.com>
 <ZQGRH4aWpp078lBl@intel.com>
 <61df0ad61e419d4c59bfe6052a564e1a5e8a3f21.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <61df0ad61e419d4c59bfe6052a564e1a5e8a3f21.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/lnl: FBC is supported with
 per pixel alpha
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 21, 2023 at 08:34:35AM +0000, Govindapillai, Vinod wrote:
> On Wed, 2023-09-13 at 13:38 +0300, Ville Syrjälä wrote:
> > On Mon, Sep 04, 2023 at 02:55:17PM +0300, Vinod Govindapillai wrote:
> > > For LNL onwards, FBC can be supported on planes with per
> > > pixel alpha
> > > 
> > > Bspec: 69560
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index a3999ad95a19..c0e4caec03ea 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -1209,7 +1209,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > >                 return 0;
> > >         }
> > >  
> > > -       if (plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
> > > +       if (DISPLAY_VER(i915) < 20 &&
> > 
> > Bspec still says 15. Someone needs to figure this mess out for
> > all LNL patches.
> > 
> > > +           plane_state->hw.pixel_blend_mode != DRM_MODE_BLEND_PIXEL_NONE &&
> > >             fb->format->has_alpha) {
> > 
> > We would have already rejected the pixel format earlier, so atm this
> > check is redundant.
> 
> Hi,
> 
> Could you please clarify this.

pixel_format_is_valid()

-- 
Ville Syrjälä
Intel
