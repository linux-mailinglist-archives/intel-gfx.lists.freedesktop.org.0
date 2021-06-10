Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB09B3A2E39
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 16:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C826EBFF;
	Thu, 10 Jun 2021 14:30:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9B46E3DF;
 Thu, 10 Jun 2021 14:30:18 +0000 (UTC)
IronPort-SDR: 4HL1JWuFaFgmAz/x4ytBsiBIyJLn8z48uj8jmrknfDy+Hs056qzGbVC7Ip1zeELvxauaoFkVhp
 RYSeCj8kKiMQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="205268239"
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="205268239"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 07:29:57 -0700
IronPort-SDR: CqbxeVTzHSnV4mW82zmiqTzAQw4SyA7B/76zpUXzQnUE6QC1QDpmbU9GAm7vCNgeujLfxXY/iE
 sK0JzxoJquPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,263,1616482800"; d="scan'208";a="441234105"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 10 Jun 2021 07:29:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 17:29:52 +0300
Date: Thu, 10 Jun 2021 17:29:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Werner Sembach <wse@tuxedocomputers.com>
Message-ID: <YMIh4G1CY8EYVEuI@intel.com>
References: <20210604171723.10276-1-wse@tuxedocomputers.com>
 <20210604171723.10276-5-wse@tuxedocomputers.com>
 <YLpjTMegcjT22vQE@intel.com>
 <bd6a27e7-3ae5-ecb1-2fef-e5f8c1b6a2ac@tuxedocomputers.com>
 <96d10ed0-f8a2-1d0b-62dd-9d6173722506@tuxedocomputers.com>
 <210b4108-74a7-bf42-eab8-b98239ce3f1a@tuxedocomputers.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <210b4108-74a7-bf42-eab8-b98239ce3f1a@tuxedocomputers.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Add handling for new
 "active bpc" property
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
Cc: sunpeng.li@amd.com, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
 alexander.deucher@amd.com, christian.koenig@amd.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 08, 2021 at 07:19:31PM +0200, Werner Sembach wrote:
> =

> Am 07.06.21 um 22:33 schrieb Werner Sembach:
> > Am 07.06.21 um 08:47 schrieb Werner Sembach:
> >>
> >> Am 04.06.21 um 19:30 schrieb Ville Syrj=E4l=E4:
> >>> On Fri, Jun 04, 2021 at 07:17:23PM +0200, Werner Sembach wrote:
> >>>> This commits implements the "active bpc" drm property for the Intel =

> >>>> GPU driver.
> >>>>
> >>>> Signed-off-by: Werner Sembach <wse@tuxedocomputers.com>
> >>>> ---
> >>>> =A0 drivers/gpu/drm/i915/display/intel_display.c | 13 +++++++++++++
> >>>> =A0 drivers/gpu/drm/i915/display/intel_dp.c=A0=A0=A0=A0=A0 |=A0 8 ++=
++++--
> >>>> =A0 drivers/gpu/drm/i915/display/intel_dp_mst.c=A0 |=A0 4 +++-
> >>>> =A0 drivers/gpu/drm/i915/display/intel_hdmi.c=A0=A0=A0 |=A0 4 +++-
> >>>> =A0 4 files changed, 25 insertions(+), 4 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c =

> >>>> b/drivers/gpu/drm/i915/display/intel_display.c
> >>>> index 64e9107d70f7..f7898d9d7438 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>>> @@ -10164,6 +10164,8 @@ static void intel_atomic_commit_tail(struct =

> >>>> intel_atomic_state *state)
> >>>> =A0=A0=A0=A0=A0 struct drm_i915_private *dev_priv =3D to_i915(dev);
> >>>> =A0=A0=A0=A0=A0 struct intel_crtc_state *new_crtc_state, *old_crtc_s=
tate;
> >>>> =A0=A0=A0=A0=A0 struct intel_crtc *crtc;
> >>>> +=A0=A0=A0 struct drm_connector *connector;
> >>>> +=A0=A0=A0 struct drm_connector_state *new_conn_state;
> >>>> =A0=A0=A0=A0=A0 u64 put_domains[I915_MAX_PIPES] =3D {};
> >>>> =A0=A0=A0=A0=A0 intel_wakeref_t wakeref =3D 0;
> >>>> =A0=A0=A0=A0=A0 int i;
> >>>> @@ -10324,6 +10326,17 @@ static void =

> >>>> intel_atomic_commit_tail(struct intel_atomic_state *state)
> >>>> =A0=A0=A0=A0=A0 }
> >>>> =A0=A0=A0=A0=A0 intel_runtime_pm_put(&dev_priv->runtime_pm, state->w=
akeref);
> >>>> =A0 +=A0=A0=A0 /* Extract information from crtc to communicate it to =

> >>>> userspace as connector properties */
> >>>> +=A0=A0=A0 for_each_new_connector_in_state(&state->base, connector, =

> >>>> new_conn_state, i) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0 struct drm_crtc *crtc =3D new_conn_state->crt=
c;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 if (crtc) {
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 new_crtc_state =3D =

> >>>> to_intel_crtc_state(drm_atomic_get_new_crtc_state(&state->base, =

> >>>> crtc));
> >>> intel_atomic_get_new_crtc_state()
> >> Thanks, will use that.
> >>>
> >>>> + new_conn_state->active_bpc =3D new_crtc_state->pipe_bpp / 3;
> >>>> +=A0=A0=A0=A0=A0=A0=A0 }
> >>>> +=A0=A0=A0=A0=A0=A0=A0 else
> >>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 new_conn_state->active_bpc =3D 0;
> >>>> +=A0=A0=A0 }
> >>> This also seems too late. I think the whole thing should be
> >>> done somewhere around the normal swap_state() stuff.
> >> Ok, will look into it.
> > So I tried to put it in intel_atomic_commit() after =

> > drm_atomic_helper_swap_state() and before =

> > INIT_WORK(&state->base.commit_work, intel_atomic_commit_work) (which =

> > creates a worker for intel_atomic_commit_tail), but somewhere in =

> > between, the connector_state seems to change: The bpc written with the =

> > for_each_new_connector_in_state() loop, gets discarded.
> =

> This was not the problem. Setting the drm property immutable made it =

> (also?) immutable from the driver context, which I didn't test separately.
> =

> Removed the immutable again and moved the loop.

Immutable props are special. See __drm_object_property_get_value().

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
