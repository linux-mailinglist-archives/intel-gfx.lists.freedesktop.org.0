Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 728863A2D99
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 15:59:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC036ED42;
	Thu, 10 Jun 2021 13:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA6B6E484;
 Thu, 10 Jun 2021 13:59:12 +0000 (UTC)
IronPort-SDR: WxsThHDg4YHzPkVhQRS+9U5EtHDpNfwiFT95AIr2xOM9TFoNvT6uCmzJIuECgz0WNqiq+W9F6u
 0DKSIJsPk9xw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="266453632"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="266453632"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 06:59:10 -0700
IronPort-SDR: XHbZH+HZrj2U71+lkWuQxpimHe/PQ3EjXTtquyCEop8srNKuzKq5h0bcD+r324eNVIKQ7C+9DI
 Y2alSLaUCP4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="419721161"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 10 Jun 2021 06:59:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 16:59:05 +0300
Date: Thu, 10 Jun 2021 16:59:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <maxime@cerno.tech>
Message-ID: <YMIaqZnWTAiixwXJ@intel.com>
References: <20210608174320.37429-1-wse@tuxedocomputers.com>
 <20210608174320.37429-5-wse@tuxedocomputers.com>
 <20210610125036.33fpnaoz4xpiqslw@gilmour>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610125036.33fpnaoz4xpiqslw@gilmour>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 4/7] drm/i915/display: Add handling for
 new "active bpc" property
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
Cc: amd-gfx@lists.freedesktop.org, sunpeng.li@amd.com,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, airlied@linux.ie, tzimmermann@suse.de,
 alexander.deucher@amd.com, christian.koenig@amd.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 02:50:36PM +0200, Maxime Ripard wrote:
> Hi
> =

> On Tue, Jun 08, 2021 at 07:43:17PM +0200, Werner Sembach wrote:
> > This commits implements the "active bpc" drm property for the Intel GPU=
 driver.
> > =

> > Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_dp.c      |  8 ++++++--
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 +++-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c    |  4 +++-
> >  4 files changed, 26 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 64e9107d70f7..50c11b8770a7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -10388,6 +10388,9 @@ static int intel_atomic_commit(struct drm_devic=
e *dev,
> >  {
> >  	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
> >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> > +	struct drm_connector *connector;
> > +	struct drm_connector_state *new_conn_state;
> > +	int i;
> >  	int ret =3D 0;
> >  =

> >  	state->wakeref =3D intel_runtime_pm_get(&dev_priv->runtime_pm);
> > @@ -10456,6 +10459,17 @@ static int intel_atomic_commit(struct drm_devi=
ce *dev,
> >  	intel_shared_dpll_swap_state(state);
> >  	intel_atomic_track_fbs(state);
> >  =

> > +	/* Extract information from crtc to communicate it to userspace as co=
nnector properties */
> > +	for_each_new_connector_in_state(&state->base, connector, new_conn_sta=
te, i) {
> > +		struct intel_crtc *crtc =3D to_intel_crtc(new_conn_state->crtc);
> > +		if (crtc) {
> > +			struct intel_crtc_state *new_crtc_state =3D intel_atomic_get_new_cr=
tc_state(state, crtc);
> > +			new_conn_state->active_bpc =3D new_crtc_state->pipe_bpp / 3;
> > +		}
> > +		else
> > +			new_conn_state->active_bpc =3D 0;
> > +	}
> > +
> =

> This seems fairly intrusive, but also commit / commit_tail might not be
> the best place to put this, we want to support it at the connector
> level.
> =

> Indeed, this will cause some issue if your HDMI output is a bridge for
> example, where the commit will be in an entirely different driver that
> has no dependency on the HDMI controller one.
> =

> I think it would be best to do that assignment in atomic_check. That
> way, if the userspace does a commit with DRM_MODE_ATOMIC_TEST_ONLY it
> would know what the output state would have been like.

DRM_MODE_ATOMIC_TEST_ONLY isn't allowed to change anything.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
