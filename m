Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC2F83A4FB
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 10:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BBD10E959;
	Wed, 24 Jan 2024 09:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D57E10E959
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706087733; x=1737623733;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=1/ME3NJRqKa7cUuuKNTBVd7POucNaE63qMASmPUCJfo=;
 b=WpZNeV3x04pNAQ+O6mOFkup0ceeDNhpmBdpzsHW66T0r6g2qQq3410rM
 p7T0SDjB3P+e2tNH+n4JsA3pDexHhwi+OmdBvZrRj9xdsR6PcBnk6aKRc
 3JLfnhGVTyYmlfHP3aBH2pjatZNIwXSvV1UNAXVnRYphe7xKR8Q8H9zif
 vz3lvZUhZJH+Xg1KkV3Y0byXxwUgEtrj1PPxcoxO8gwCl0q/sK28VzLno
 V/Jt+gXs1DChc2x+h1wU6hVvaFsMNfso8b/QvKIQOMoVeLzS/LQdx+U9C
 /VYfDWOjjQ2WegZp745mkErBILQhwFM6JIhEROQLYxb2Tcs7ypnQY2eU8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="9173848"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9173848"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 01:15:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="20669060"
Received: from komalav-mobl2.gar.corp.intel.com (HELO localhost)
 ([10.252.41.195])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 01:15:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Request modeset on initial commit to
 compute PSR state
In-Reply-To: <Za9zpJKDG_EMfROZ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240123071103.2147760-1-jouni.hogander@intel.com>
 <Za9tpxLhbrexGEDG@intel.com>
 <83b0e2b52e2bc8ab1f1ba7f296d7d3b08a0be249.camel@intel.com>
 <Za9zpJKDG_EMfROZ@intel.com>
Date: Wed, 24 Jan 2024 11:15:27 +0200
Message-ID: <87o7dbks7k.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 Jan 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Jan 23, 2024 at 07:57:00AM +0000, Hogander, Jouni wrote:
>> On Tue, 2024-01-23 at 09:41 +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
>> > On Tue, Jan 23, 2024 at 09:11:03AM +0200, Jouni H=C3=B6gander wrote:
>> > > We want to request full modeset in initial fast check to force PSR
>> > > state
>> > > computation. Otherwise PSR is not enabled on initial commit but on
>> > > first
>> > > commit with modeset or fastset. With this change Initial commit
>> > > will still
>> > > end up using fastset (unless something else requires full modeset)
>> > > as PSR
>> > > parameters are not anymore part of intel_pipe_config_compare.
>> >=20
>> > I think I'd prefer to go the oppostie direction and try to get all
>> > the full modeset stuff out from the initial commit. The only reason
>> > the initial commit was introduced was to compute the plane states
>> > due to lack of readout, and then it got extended due to various other
>> > hacks. Our goal is to inherit the state from the BIOS so ideally
>> > the whole initial_commit thing wouldn't even exist.
>>=20
>> Bios doesn't enable PSR. Do you think this would be better approach ?:
>>=20
>> https://patchwork.freedesktop.org/patch/575368/?series=3D129023&rev=3D1
>>=20
>> What we just need is something triggering intel_psr_compute_config +
>> psr enable. Maybe that could be separate function doing both and call
>> that from intel_initial_commit. If/when we get rid of that
>> intel_initial_commit: this function would be called by that new thing.
>
> I don't think we should do anything at all. PSR will get enabled by the
> first proper commit, if possible.

In general, I'm leaning the same way. Priorities:

1) Avoid full modeset at probe if at all possible.

2) Taking the above into account, enable as many power saving
   etc. features as possible at probe.

3) If a system needs more power savings (or other fancy features
   enabled), a) have them enabled by BIOS/GOP, or b) have the userspace
   do a modeset post-probe according to its policy. Don't force that
   policy on the kernel.

4) *Maybe* provide a way to force full modeset at probe as a policy
   option.


BR,
Jani.




>
>>=20
>> BR,
>>=20
>> Jouni H=C3=B6gander
>>=20
>> >=20
>> > >=20
>> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> > >=20
>> > > Fixes: a480dd59fe25 ("drm/i915/display: No need for full modeset
>> > > due to psr")
>> > > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > > ---
>> > > =C2=A0drivers/gpu/drm/i915/display/intel_dp.c=C2=A0 | 8 ++++++++
>> > > =C2=A0drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>> > > =C2=A0drivers/gpu/drm/i915/display/intel_psr.h | 3 +++
>> > > =C2=A03 files changed, 11 insertions(+), 3 deletions(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> > > b/drivers/gpu/drm/i915/display/intel_dp.c
>> > > index ab415f41924d..143981b91e8b 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > > @@ -3326,6 +3326,14 @@ bool intel_dp_initial_fastset_check(struct
>> > > intel_encoder *encoder,
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0fastset =3D false;
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> > > =C2=A0
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (CAN_PSR(intel_dp)) {
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing
>> > > full modeset to compute PSR state\
>> > > +n",
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 encoder->base.base.id, encoder-
>> > > >base.name);
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0crtc_state->uapi.mode_changed =3D true;
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0fastset =3D false;
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>> > > +
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return fastset;
>> > > =C2=A0}
>> > > =C2=A0
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> > > b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > index 1010b8c405df..b6db7dbfaf1a 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > @@ -173,9 +173,6 @@
>> > > =C2=A0 * irrelevant for normal operation.
>> > > =C2=A0 */
>> > > =C2=A0
>> > > -#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
>> > > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 (intel_dp)->psr.source_support)
>> > > -
>> > > =C2=A0#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)-
>> > > >psr.sink_panel_replay_support && \
>> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (inte=
l_dp)-
>> > > >psr.source_panel_replay_support)
>> > > =C2=A0
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
>> > > b/drivers/gpu/drm/i915/display/intel_psr.h
>> > > index cde781df84d5..3d9920ebafab 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> > > @@ -21,6 +21,9 @@ struct intel_encoder;
>> > > =C2=A0struct intel_plane;
>> > > =C2=A0struct intel_plane_state;
>> > > =C2=A0
>> > > +#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
>> > > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 (intel_dp)->psr.source_support)
>> > > +
>> > > =C2=A0bool intel_encoder_can_psr(struct intel_encoder *encoder);
>> > > =C2=A0void intel_psr_init_dpcd(struct intel_dp *intel_dp);
>> > > =C2=A0void intel_psr_pre_plane_update(struct intel_atomic_state *sta=
te,
>> > > --=20
>> > > 2.34.1
>> >=20
>>=20

--=20
Jani Nikula, Intel
