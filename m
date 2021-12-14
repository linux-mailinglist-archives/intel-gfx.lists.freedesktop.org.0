Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB20474B7C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 20:05:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631FD8903B;
	Tue, 14 Dec 2021 19:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 433D88903B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 19:05:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="219743823"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="219743823"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 10:45:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="518393979"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 14 Dec 2021 10:44:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Dec 2021 20:44:44 +0200
Date: Tue, 14 Dec 2021 20:44:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbjmHEMUPdJYxxFX@intel.com>
References: <20211213134450.3082-5-ville.syrjala@linux.intel.com>
 <20211213151435.9700-1-ville.syrjala@linux.intel.com>
 <878rwo724r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <878rwo724r.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/fbc: Register per-crtc
 debugfs files
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

On Mon, Dec 13, 2021 at 09:09:40PM +0200, Jani Nikula wrote:
> On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Expose FBC debugfs files for each crtc. These may or may not point
> > to the same FBC instance depending on the platform.
> >
> > We leave the old global debugfs files in place until
> > igt catches up to the new per-crtc approach.
> >
> > v2: Take a trip via intel_crtc_debugfs_add() (Jani)
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  |  7 +++--
> >  drivers/gpu/drm/i915/display/intel_fbc.c      | 31 ++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_fbc.h      |  1 +
> >  3 files changed, 25 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 572445299b04..f4de004d470f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -2402,6 +2402,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
> >   */
> >  void intel_crtc_debugfs_add(struct drm_crtc *crtc)
> >  {
> > -	if (crtc->debugfs_entry)
> > -		crtc_updates_add(crtc);
> > +	if (!crtc->debugfs_entry)
> > +		return;
> 
> I think this is probably unnecessary, but that's for another patch.

I guess. Seems unlikely at best that we'd have failed to allocate
that.

-- 
Ville Syrjälä
Intel
