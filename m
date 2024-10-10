Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 987839982DC
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 11:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CA310E10C;
	Thu, 10 Oct 2024 09:53:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RrM86IFN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86CCD10E10C;
 Thu, 10 Oct 2024 09:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728554022; x=1760090022;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qHkOQufQN1b/ihwEailnw1QFz3aZWDKEW/xeHOEXEic=;
 b=RrM86IFNZmqxfj+o9kTSfkd5d37kiQu0RANmpoN7J77UubuKdsY57SZh
 5/n/ejULhdahTtABWnuWshV7pzjN7Z8w30d8JJhYbzZn41Srssp0khjbI
 JZtdGHQ9UWfyrYGXeg9IAFjvviKDXxqn4ykiEy2ZWE6wuiX9VO6x227SE
 FQDhouoAJ33hcsp+xXQDLCsSWb+Xwf/esV7bwvAGWaQz39ajdi+Ll+MxQ
 UhDXh26yY0lXfCxmmUUbz29T9uUuWCh0KQzyQ2DCUCtVdqeaMBHJ1BJ4v
 XBl27pFDu056L59jVC99N1lm4zpGsk6kc8+e2a5WX9jmOCPTJJzuyIDIA g==;
X-CSE-ConnectionGUID: b0VOw4xlQ4WMecpP0m8z7g==
X-CSE-MsgGUID: nMizqPEWSDOKn/luaptCMA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="45415942"
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="45415942"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 02:53:42 -0700
X-CSE-ConnectionGUID: vWrDhl3/Q+mdZUlMDfXVBw==
X-CSE-MsgGUID: PF/sAB9ERmmmLNI6oRZEcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,192,1725346800"; d="scan'208";a="99870694"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.131])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2024 02:53:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 6/7] drm/i915/psr: Add VRR send push interface for PSR
 usage
In-Reply-To: <96da83312410aac2d9994778a503909e9267ec28.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241010053316.1580527-1-jouni.hogander@intel.com>
 <20241010053316.1580527-7-jouni.hogander@intel.com>
 <877cag8jvd.fsf@intel.com>
 <96da83312410aac2d9994778a503909e9267ec28.camel@intel.com>
Date: Thu, 10 Oct 2024 12:53:37 +0300
Message-ID: <87set4707y.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 10 Oct 2024, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Thu, 2024-10-10 at 11:03 +0300, Jani Nikula wrote:
>> On Thu, 10 Oct 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrot=
e:
>> > Add own interface for PSR usage to perform push on frontbuffer
>> > tracking
>> > invalidate and flush call backs. Use this new interface from PSR
>> > code.
>> >=20
>> > Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_psr.c |=C2=A0 7 ++++++-
>> > =C2=A0drivers/gpu/drm/i915/display/intel_vrr.c | 18 ++++++++++++++++++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_vrr.h |=C2=A0 4 ++++
>> > =C2=A03 files changed, 28 insertions(+), 1 deletion(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> > b/drivers/gpu/drm/i915/display/intel_psr.c
>> > index 5be8076475f0b..7959a33771b13 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > @@ -2326,8 +2326,13 @@ static void psr_force_exit(struct intel_dp
>> > *intel_dp)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * This workaround do =
not exist for platforms with display
>> > 10 or newer
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * but testing proved =
that it works for up display 13, for
>> > newer
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * than that testing w=
ill be needed.
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 *
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * In Lunarlake we can use =
TRANS_PUSH mechanism to force
>> > sending update
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * to sink.
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_de_write(display, CUR=
SURFLIVE(display, intel_dp-
>> > >psr.pipe), 0);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DISPLAY_VER(display) >=3D 2=
0 ?
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0intel_vrr_psr_send_push(display, cpu_transcoder) :
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0intel_de_write(display, CURSURFLIVE(display,
>> > intel_dp->psr.pipe), 0);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0void intel_psr2_program_trans_man_trk_ctl(const struct
>> > intel_crtc_state *crtc_state)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> > b/drivers/gpu/drm/i915/display/intel_vrr.c
>> > index 5925ade4591d4..d51830d173b61 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> > @@ -328,6 +328,24 @@ void intel_vrr_send_push(const struct
>> > intel_crtc_state *crtc_state)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 trans_push_=
val);
>> > =C2=A0}
>> > =C2=A0
>> > +/**
>> > + * intel_vrr_psr_send_push - Send push interface for PSR code
>> > + * @display: Intel display
>> > + * @cpu_transcoder: cpu_transcode
>> > + *
>> > + * This is for PSR usage to perform push on frontbuffer tracking
>> > invalidate and
>> > + * flush call back. PSR mutex should be taken by caller.
>> > + */
>> > +void intel_vrr_psr_send_push(struct intel_display *display,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 enum transcoder cpu_transcoder)
>> > +{
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(display) < =
20)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0return;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0intel_de_rmw(display, TRANS=
_PUSH(display, cpu_transcoder),
>> > 0,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 TRANS_PUSH_SEND | LNL_TRANS_P=
USH_PSR_PR_EN);
>> > +}
>> > +
>> > =C2=A0bool intel_vrr_is_push_sent(const struct intel_crtc_state
>> > *crtc_state)
>> > =C2=A0{
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_display *=
display =3D
>> > to_intel_display(crtc_state);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h
>> > b/drivers/gpu/drm/i915/display/intel_vrr.h
>> > index a75f159168c11..3da7ba12697ff 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> > @@ -12,6 +12,8 @@ struct drm_connector_state;
>> > =C2=A0struct intel_atomic_state;
>> > =C2=A0struct intel_connector;
>> > =C2=A0struct intel_crtc_state;
>> > +struct intel_display;
>> > +enum transcoder;
>> > =C2=A0
>> > =C2=A0bool intel_vrr_is_capable(struct intel_connector *connector);
>> > =C2=A0bool intel_vrr_is_in_range(struct intel_connector *connector, int
>> > vrefresh);
>> > @@ -25,6 +27,8 @@ bool intel_vrr_is_push_sent(const struct
>> > intel_crtc_state *crtc_state);
>> > =C2=A0void intel_vrr_disable(const struct intel_crtc_state
>> > *old_crtc_state);
>> > =C2=A0void intel_vrr_psr_frame_change_enable(const struct
>> > intel_crtc_state *crtc_state);
>> > =C2=A0void intel_vrr_psr_frame_change_disable(const struct
>> > intel_crtc_state *crtc_state);
>> > +void intel_vrr_psr_send_push(struct intel_display *display,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 enum transcoder cpu_transcoder);
>>=20
>> Nitpick, why not just make that parameter crtc_state like for all the
>> other functions?
>
> This is about to be used from frontbuffer flush/invalidate path as
> well. There we do not have crtc_state directly. I'll guess we could use
> current state of crtc. Do you think that would be better?=20

I wasn't aware of the potential future use. Just stick with this, at
least for now.

BR,
Jani.


>
> BR,
>
> Jouni H=C3=B6gander
>
>>=20
>> BR,
>> Jani.
>>=20
>> > =C2=A0void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>> > =C2=A0int intel_vrr_vmax_vblank_start(const struct intel_crtc_state
>> > *crtc_state);
>> > =C2=A0int intel_vrr_vmin_vblank_start(const struct intel_crtc_state
>> > *crtc_state);
>>=20
>

--=20
Jani Nikula, Intel
