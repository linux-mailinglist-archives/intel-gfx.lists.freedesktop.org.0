Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OK6ILPxj+2nkagMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 17:53:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D0F4DDA8C
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 17:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B5B310E1DB;
	Wed,  6 May 2026 15:53:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="MW95WMFG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0EE210E554
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2026 15:53:28 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-bc1f3a393c0so503550866b.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 May 2026 08:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778082807; cv=none;
 d=google.com; s=arc-20240605;
 b=fW1YyCnUjirYF/TLrEiFlBNrWq+Wve+L28/xRmpC0ZfK3C/O0sg3WbeuXQqcr9HA2L
 aWwvDPan6nGhPDOdLgl+Lw4U9fLg0IY/sUWxSzem/EybF5asC8HwpJLvWAxyaSgyJGq0
 53CqmiHhT5sFgHv9VztAFv+tsKkqN/3U9D+yVPVfo+Mr7LJJFGFN2o0MJv1rNAqBK3Va
 pLxSv3ReXSqs8cpo+MU1UMmDvolkVVWKCfW81XBmkdYJ6rW8raYPxVF9A0akqQF3A2XZ
 DdBDvhSGEaPGaYjgvxUOVsOAH+eGuVKGJCNcYj0gGaTZsMhQJyyXsPck9VPb34rd/Gtd
 j4Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=KIYgRjk9TZxkJfyrHVrwU+TQTLgvwM+qPit1906gidA=;
 fh=vn3mECOBAr1TOiUy0U8Wrh6dUMcKXPVVDUJzCp68SGg=;
 b=b5o1tA+urGTWQMAUq7pyW5oeDBslGnUMLVyqxmafMaeDDJdnhsMmjatxcSeswlUwKl
 o7cqE8ZcwK9SBF6NRe8/djSN76YaUVk0c4gomAQxNEYddtybkw+BMBOp+0tTBkcIp3HT
 MUDwMZdTAW01lKNjn6DgBT7gg/FpLZ+3715ktJDBhNU/dKGmpWiqRWmowF2lyNj9DEYG
 w1eCPA2/bcoi+a4LJLYfT7HC3bddLJdZ/eYRjW09ybjJnMpWxaxKpMrdeWs/TSllhsIo
 C5pLDP30R9oermlf6fsA8TSbdUiGs3p/78yONcEE9QfAGzAGZc2QxSv6l4jRmCLC0yom
 N/wQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1778082807; x=1778687607;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=KIYgRjk9TZxkJfyrHVrwU+TQTLgvwM+qPit1906gidA=;
 b=MW95WMFGtLnkw0HppExtDg8Kz0en4Csv9VGCqiIGpsfcOzrJ/STSoVJuBJdYp/jRXq
 qKta3I4rpSzEApzt7IRsh0tLPDpTMaf0+fj6OT1wKhnr42w3DelDIlJkOX8h3FkkNFhb
 25daygeROWW6qI2uMyDdZ5uZQRbFFXj28oNQ6BDyXe29+wRYVqWPj7u/RcNdJCi5HekZ
 roho1oJ4DFrfm6gj6FNCKyo1+M39D6Jnbp2lNbxyQL9UTTeUHBPon5dyHpf0ruw68PKM
 gAwI2EEkfafA+cuyY7qIcBY2HPSVPc5Ogq2l6L2qK9xZDt54BwHNCUkjTAuw9wP2Tp4n
 /eaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778082807; x=1778687607;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KIYgRjk9TZxkJfyrHVrwU+TQTLgvwM+qPit1906gidA=;
 b=BPhkmZ+ePtGWxnLv5zYoWZwlQ4odTuDr/bGXIp5APSm8YM+guO/Im82LWKrJUFZLbv
 8gxaCjgCDU18xeEe0FGCDdpgBOXjkDn7ckNm/gKugJl+qmrGzmxCWVu4yvp+Z4zKKQC5
 hJkxNgh0J+Xdej8JKR8ip3XLJ0XjLgnV4aEJan433VesIcyHECkMqCWEiniaarmnWTOp
 JvWNnFuJHcRUS22QgL1fct4dHZVFIZLps0mSpBqYxrOubuZPcbsZs/K50Ze/2Y/t3U5P
 pwIrMb3ej7JKsOcV25HhcsosXXXOutjPgH5uppN30DCUJv1ED+ZQ8MB5RtfaA5CxYAHf
 NTww==
X-Forwarded-Encrypted: i=1;
 AFNElJ85PxnVt1Kr/Su5iSTvozWsXQ1omSxbpUJPS8T1BcZ8wF11TAeD8Sh5qmT8pOcmlnOyG5Tw8/gkYh0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxdDw5ZP7bPHvIhbUM+PBzTt46OB5qWtarJ+5/hlUyJRFC/hNkv
 +DsJUzkqnLMw4jCYKEUYnGie6XF3izxwWPhKYR0kJaCL0plx2QdG5ncnI/fb3gtExtZnOrlvTrZ
 sQs/MPJwpYU4CBf03Hg+9WgyNqn9iFwclsLUsaVbE
X-Gm-Gg: AeBDiesOLTkysOT0ENp00Og4p6DpA8mxJfrFyfUpMyObmyz6JUYG6bzNWSNBlpavK6C
 IBcTvMxnMyu32/65R2LOHqX+PvcjCcu3FU/Du+cZFTMf5ikT+Z1JjC80/VfVnqFrjjeeIutxItS
 5vSVaecHsGGpLoW8NJcASETLCtACtHCLisb0Gca6csfhyq3siYC3CRG3kNLI4vn2Kug5xg6LtX4
 7ImLEjM0M7vnqh9AzuUpziuf2QQEWyeySRiHlwykPEo4KzMoIVNOngFEWZJOKQwbGDXoeeIruXs
 O3tXiw8y2q4eSe//84HpurSkacxJud1Xevnyhoq60O7hUuhaKyB1/Cte3l4boNXs6VLwuumt+d2
 Yr52gl+VgHBCuYcyVXSrPk7vgNX8=
X-Received: by 2002:a17:906:99c3:b0:bc2:f4c9:7d1f with SMTP id
 a640c23a62f3a-bc56dc16da9mr216773966b.39.1778082806504; Wed, 06 May 2026
 08:53:26 -0700 (PDT)
MIME-Version: 1.0
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com>
 <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
 <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
 <172dd0cf-8e0b-4e00-a50e-708196928a7e@intel.com>
In-Reply-To: <172dd0cf-8e0b-4e00-a50e-708196928a7e@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Wed, 6 May 2026 08:53:14 -0700
X-Gm-Features: AVHnY4IZwGOhisaO_gCitgph2Y6VWyAwFcsQuKLWsJnETWL1KxNw6Un0_VobcvY
Message-ID: <CAMNLLoTKjz-Fg7Dp5R6_XG8PEcOAiDfPx+=UVeKkkRoBYeRYug@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jani.nikula@linux.intel.com
Content-Type: multipart/alternative; boundary="00000000000011971f0651282a86"
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
X-Rspamd-Queue-Id: D2D0F4DDA8C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop.org,m:jani.nikula@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

--00000000000011971f0651282a86
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ankit, Ville, Jani,

Thank you for the patch and the discussion here. Please see some of my
comments/feedback below:

On Wed, May 6, 2026 at 12:25=E2=80=AFAM Nautiyal, Ankit K <
ankit.k.nautiyal@intel.com> wrote:

>
> On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:
> >
> > On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
> >>
> >> On 4/29/2026 5:44 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> >>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote:
> >>>> intel_panel_fixed_mode() intends to choose a fixed mode at or above
> >>>> the
> >>>> requested refresh rate for VRR panels, so the requested refresh can =
be
> >>>> reached by extending vblank.
> >>>>
> >>>> This is called in compute config to find the 'best' fixed mode for a
> >>>> requested mode and also called during mode valid phase to prune the
> >>>> unsupported fixed modes.
> >>>>
> >>>> For Non-VRR panels there is no issue:
> >>>> - When a user wants to do a full modeset (sets DRM_MODE_ALLOW_MODESE=
T
> >>>>    flag) with a custom mode, the intel_panel_fixed_mode() gives the
> >>>> mode
> >>>>    with refresh rate nearest to the requested mode.
> >>>> - Seamless switch to a lower mode is only possible if the platform h=
as
> >>>>    support for Double buffered MN and the sink is Seamless-DRRS
> >>>> capable.
> >>>>    In this case the user sets a lower refresh rate mode and doesn't
> >>>> set
> >>>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode()
> >>>> returns
> >>>>    again the fixed mode whose refresh rate is nearest to the request=
ed
> >>>>    mode.
> >>>> - Since Duble buffered MN is not supported on LNL+, the seamless
> >>>> switch
> >>>>    is not possible for such panels from LNL+.
> >>>>
> >>>> For VRR panels the current logic has some issues:
> >>>> - For VRR panels intel_panel_fixed_mode() intends to choose a fixed
> >>>> mode
> >>>>    at or above the requested refresh rate so the requested refresh
> >>>> can be
> >>>>    reached by extending vblank.
> >>>> - However, as per the current logic the helper can return a lower
> >>>> refresh
> >>>>    rate mode, if the lower refresh rate mode is first in the list
> >>>> of fixed
> >>>>    mode. Later, if the selected fixed mode's refresh rate < the
> >>>> requested
> >>>>    mode's refresh rate, then the requested rate is matched by
> >>>> extending
> >>>>    the vblank.
> >>>> - In case of a full modeset request with a custom mode this is not a
> >>>>    problem. But for the seamless switch features like LRR (Lower
> >>>> Refresh
> >>>>    Rate) and the Seamless-DRRS this creates a problem as this
> >>>> results in
> >>>>    change in vsync_start/end and resulting in a full modeset.
> >>>> - Furthermore, as with the Non-VRR panel case, the Seamless-DRRS is
> >>>> not
> >>>>    supported on LNL+, but for VRR panels, the vblank can be extended
> >>>>    similar to LRR case. But due to the above mentioned problem in th=
e
> >>>>    intel_panel_fixed_mode() this also results in full modeset.
> >>>>
> >>>> To solve these problems for the VRR panels, identify if the user
> >>>> wants a
> >>>> full modeset or expects seamless switch. If seamless switch to a low=
er
> >>>> mode is desired, make intel_panel_fixed_mode() return the highest
> >>>> refresh rate mode, provided the requested rate is in vrr range. This
> >>>> will then be modified to extend the vblank to provide the desired
> >>>> refresh rate.
> >>>>
> >>>> This is particularly needed for DRRS panels on platforms without the
> >>>> double buffered M/N support (display version 20+), where seamless
> >>>> clock
> >>>> changes are not possible.
> >>>>
> >>>> To understand the user requirement for full modeset/seamless
> >>>> switch, the
> >>>> intel_panel_fixed_mode() and intel_panel_compute_config() need
> >>>> access to
> >>>> the connector state to check the allow_modeset flag.
> >>>>
> >>>> Add a nullable conn_state parameter to both. The mode_valid callers
> >>>> pass
> >>>> NULL since they have no atomic state and the compute_config callers
> >>>> pass
> >>>> their conn_state.
> >>>>
> >>>> Also remove the VRR check from is_best_fixed_mode() since the
> >>>> selection is
> >>>> handled upfront in intel_panel_fixed_mode().
> >>>>
> >>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>> ---
> >>>>   drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
> >>>>   drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
> >>>>   drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
> >>>>   drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
> >>>>   drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
> >>>>   drivers/gpu/drm/i915/display/intel_panel.c | 35
> >>>> +++++++++++-----------
> >>>>   drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
> >>>>   drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
> >>>>   drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
> >>>>   9 files changed, 37 insertions(+), 34 deletions(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
> >>>> index afbaa0465842..1efe81404d01 100644
> >>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >>>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(struct
> >>>> intel_encoder *encoder,
> >>>>       pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >>>>       pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >>>>   -    ret =3D intel_panel_compute_config(intel_connector,
> >>>> adjusted_mode);
> >>>> +    ret =3D intel_panel_compute_config(intel_connector,
> >>>> adjusted_mode, conn_state);
> >>>>       if (ret)
> >>>>           return ret;
> >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >>>> b/drivers/gpu/drm/i915/display/intel_dp.c
> >>>> index 35b8fb5740aa..f014ce28e69f 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector
> >>>> *_connector,
> >>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> >>>>           return MODE_H_ILLEGAL;
> >>>>   -    fixed_mode =3D intel_panel_fixed_mode(connector, mode);
> >>>> +    fixed_mode =3D intel_panel_fixed_mode(connector, mode, NULL);
> >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> >>>>           status =3D intel_panel_mode_valid(connector, mode);
> >>>>           if (status !=3D MODE_OK)
> >>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel_encoder
> >>>> *encoder,
> >>>>       struct intel_connector *connector =3D
> >>>> intel_dp->attached_connector;
> >>>>       int ret =3D 0, link_bpp_x16;
> >>>>   -    fixed_mode =3D intel_panel_fixed_mode(connector, adjusted_mod=
e);
> >>>> +    fixed_mode =3D intel_panel_fixed_mode(connector, adjusted_mode,
> >>>> conn_state);
> >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> >>>> -        ret =3D intel_panel_compute_config(connector, adjusted_mode=
);
> >>>> +        ret =3D intel_panel_compute_config(connector, adjusted_mode=
,
> >>>> conn_state);
> >>>>           if (ret)
> >>>>               return ret;
> >>>>       }
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
> >>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
> >>>> index 9005c1f5d857..a480bb79dca7 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> >>>> @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct
> >>>> drm_connector *connector,
> >>>>       struct intel_display *display =3D
> >>>> to_intel_display(connector->dev);
> >>>>       struct intel_connector *intel_connector =3D
> >>>> to_intel_connector(connector);
> >>>>       const struct drm_display_mode *fixed_mode =3D
> >>>> -        intel_panel_fixed_mode(intel_connector, mode);
> >>>> +        intel_panel_fixed_mode(intel_connector, mode, NULL);
> >>>>       int max_dotclk =3D display->cdclk.max_dotclk_freq;
> >>>>       enum drm_mode_status status;
> >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> >>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
> >>>> index 405b33aca9dd..0ec25d895777 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> >>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector
> >>>> *_connector,
> >>>>       struct intel_connector *connector =3D
> >>>> to_intel_connector(_connector);
> >>>>       struct intel_dvo *intel_dvo =3D intel_attached_dvo(connector);
> >>>>       const struct drm_display_mode *fixed_mode =3D
> >>>> -        intel_panel_fixed_mode(connector, mode);
> >>>> +        intel_panel_fixed_mode(connector, mode, NULL);
> >>>>       int max_dotclk =3D display->cdclk.max_dotclk_freq;
> >>>>       int target_clock =3D mode->clock;
> >>>>       enum drm_mode_status status;
> >>>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct
> >>>> intel_encoder *encoder,
> >>>>       struct intel_connector *connector =3D
> >>>> to_intel_connector(conn_state->connector);
> >>>>       struct drm_display_mode *adjusted_mode =3D
> >>>> &pipe_config->hw.adjusted_mode;
> >>>>       const struct drm_display_mode *fixed_mode =3D
> >>>> - intel_panel_fixed_mode(intel_dvo->attached_connector,
> >>>> adjusted_mode);
> >>>> + intel_panel_fixed_mode(intel_dvo->attached_connector,
> >>>> adjusted_mode, conn_state);
> >>>>         /*
> >>>>        * If we have timings from the BIOS for the panel, put them in
> >>>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct
> >>>> intel_encoder *encoder,
> >>>>       if (fixed_mode) {
> >>>>           int ret;
> >>>>   -        ret =3D intel_panel_compute_config(connector, adjusted_mo=
de);
> >>>> +        ret =3D intel_panel_compute_config(connector, adjusted_mode=
,
> >>>> conn_state);
> >>>>           if (ret)
> >>>>               return ret;
> >>>>       }
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> >>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
> >>>> index cc6d4bfcff10..2e30bc3f1e62 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> >>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector
> >>>> *_connector,
> >>>>       struct intel_display *display =3D
> >>>> to_intel_display(_connector->dev);
> >>>>       struct intel_connector *connector =3D
> >>>> to_intel_connector(_connector);
> >>>>       const struct drm_display_mode *fixed_mode =3D
> >>>> -        intel_panel_fixed_mode(connector, mode);
> >>>> +        intel_panel_fixed_mode(connector, mode, NULL);
> >>>>       int max_pixclk =3D display->cdclk.max_dotclk_freq;
> >>>>       enum drm_mode_status status;
> >>>>   @@ -460,7 +460,7 @@ static int intel_lvds_compute_config(struct
> >>>> intel_encoder *encoder,
> >>>>        * with the panel scaling set up to source from the H/VDisplay
> >>>>        * of the original mode.
> >>>>        */
> >>>> -    ret =3D intel_panel_compute_config(connector, adjusted_mode);
> >>>> +    ret =3D intel_panel_compute_config(connector, adjusted_mode,
> >>>> conn_state);
> >>>>       if (ret)
> >>>>           return ret;
> >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> >>>> b/drivers/gpu/drm/i915/display/intel_panel.c
> >>>> index 5e918ee0c8ea..65d017371d78 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> >>>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct
> >>>> intel_connector *connector)
> >>>>                       struct drm_display_mode, head);
> >>>>   }
> >>>>   -static bool is_best_fixed_mode(struct intel_connector *connector,
> >>>> -                   int vrefresh, int fixed_mode_vrefresh,
> >>>> +static bool is_best_fixed_mode(int vrefresh, int fixed_mode_vrefres=
h,
> >>>>                      const struct drm_display_mode *best_mode)
> >>>>   {
> >>>>       /* we want to always return something */
> >>>>       if (!best_mode)
> >>>>           return true;
> >>>>   -    /*
> >>>> -     * With VRR always pick a mode with equal/higher than requested
> >>>> -     * vrefresh, which we can then reduce to match the requested
> >>>> -     * vrefresh by extending the vblank length.
> >>>> -     */
> >>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
> >>>> -        intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &&
> >>>> -        fixed_mode_vrefresh < vrefresh)
> >>>> -        return false;
> >>>> -
> >>>>       /* pick the fixed_mode that is closest in terms of vrefresh */
> >>>>       return abs(fixed_mode_vrefresh - vrefresh) <
> >>>>           abs(drm_mode_vrefresh(best_mode) - vrefresh);
> >>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct
> >>>> intel_connector *connector,
> >>>>     const struct drm_display_mode *
> >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
> >>>> -               const struct drm_display_mode *mode)
> >>>> +               const struct drm_display_mode *mode,
> >>>> +               const struct drm_connector_state *conn_state)
> >>>>   {
> >>>>       const struct drm_display_mode *fixed_mode, *best_mode =3D NULL=
;
> >>>>       int vrefresh =3D drm_mode_vrefresh(mode);
> >>>>   +    /*
> >>>> +     * With VRR always pick the highest refresh rate mode,
> >>>> +     * which we can then reduce to match the requested
> >>>> +     * vrefresh by extending the vblank length.
> >>>> +     */
> >>>> +    if (conn_state && !conn_state->state->allow_modeset &&
> >>> The foo_state->state pointer should never be used. If you need the fu=
ll
> >>> atomic state then plumb it through from the top.
> >>
> >> Hmm noted.
> >>
> >>
> >>>
> >>>> + intel_vrr_is_capable(connector) &&
> >>>> +        intel_vrr_is_in_range(connector, vrefresh))
> >>>> +        return intel_panel_highest_vrefresh_mode(connector);
> >>> What we want is the fixed mode that matches the current adjusted mode
> >>> exactly except for vtotal, and I think we also want to maintain the
> >>> vsync pulse location relative to vtotal.
> >>
> >> Oh alright. I was thinking the issue is in the best mode logic which
> >> is resulting in lower mode getting picked when we wanted a higher
> >> mode as best fixed mode.
> >>
> >> I was under the impression that since the vsync start/end of lower is
> >> not the same with the higher mode and since this cannot be modified
> >> on the fly, it results in full modeset.
> >>
> >> However, as you said, vsync start/end can be modified indeed the
> >> problem becomes:
> >>
> >> - we are not scaling the vsync start/end similar to what we are doing
> >> for vtotal.
> >> - even if we do that, we need to remove the check for vsync start/end
> >> for fastboot.
> >>
> >> Another consideration is that is the vsync_start should be inside the
> >> vrr guardband, but I think if the vsync_start scales up then it will
> >> still be inside the guardband so we should be covered.
> >>
> >>
> >>>
> >>> We should in fact fix the vsync_start/end mess first.
> >>
> >> You mean the existing vsync_start/end change due to AS SDP thing? Or
> >> you mean the above mentioned scaling up?
> >>
> >>
> >>> We need to add
> >>> TRANS_VSYNC handling to the LRR codepaths and allow that to change
> >>> during fastsets. And intel_panel_compute_config() needs to preserve
> >>> the vtotal-vsync distance when adjusting vtotal. I think that should
> >>> all be fine for DP since it doesn't really use TRANS_VSYNC for
> >>> anything.
> >>
> >> Hmm I think I got some direction here. Thanks for making it clearer.
> >
> >
> > Hi Ville,
> >
> > Going through the Bspec, I have a query on the TRANS_VSYNC part.
> >
> > For NVL onwards, the TRANS_VSYNC seems to be deprecated. As I
> > understand, this is no more used with VRR timing generator, instead
> > TRANS_VRR_VSYNC is used.
> > So we can avoid reading/writing it completely for platforms that
> > support VRR Timing Generator.
> >
> > But for platforms using the legacy timing generator, BSpec says
> > TRANS_VSYNC should not be changed while transcoder/port are enabled.
> > Given that, should we treat TRANS_VSYNC updates as modeset-only on
> > legacy TG platforms, and only allow the fastset path where VRR TG is
> > always used?
> >
> > Just wanted to make sure I=E2=80=99m interpreting your suggestion corre=
ctly
> > before changing the fastset checks.
> >
> > Thanks,
> > Ankit
> >
>
> Just an update:
>
> Maintaining vtotal-vsync pulse seems to be working, along with the
> change to always use highest RR mode as best mode.
>

I see that the patch selects the highest refresh rate during compute_config=
.
Would that be sufficient to allow VRR based fastset when userspace requests
60Hz at the initial modeset from userspace?

I think what we might need is that during the very first hand off to the
kernel driver, is when it always internally sets the crtc state mode timing=
s
for the highest refresh rate mode such that when the usersapce requests to
set the preferred mode of 60 Hz,
the mode or the crtc timings would be set the only difference would be the
Vtotal and it will meet the VRR fastset requirements and will be able to
achieve this 60 Hz using VRR

From the userspace perspective, 60Hz will still be the preferred mode as
advertised by the panel, but internally if the driver can always set the
timings for the highest refresh rate, then switching from lower refresh
rate 60 Hz to higher refresh rate 120Hz would be possible seamlessly.

Regards
Manasi

>
> I still need to address the comment about avoid deriving allow_modeset
> from connector state directly.
>
> Cc:
>
> Manasi Navare <navaremanasi@google.com>
>
>
> Regards,
>
> Ankit
>
>
> >
> >>
> >>
> >> Regards,
> >>
> >> Ankit
> >>
> >>>
> >>> +
> >>>>       list_for_each_entry(fixed_mode,
> >>>> &connector->panel.fixed_modes, head) {
> >>>>           int fixed_mode_vrefresh =3D drm_mode_vrefresh(fixed_mode);
> >>>>   -        if (is_best_fixed_mode(connector, vrefresh,
> >>>> +        if (is_best_fixed_mode(vrefresh,
> >>>>                          fixed_mode_vrefresh, best_mode))
> >>>>               best_mode =3D fixed_mode;
> >>>>       }
> >>>> @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type(struct
> >>>> intel_connector *connector)
> >>>>   }
> >>>>     int intel_panel_compute_config(struct intel_connector *connector=
,
> >>>> -                   struct drm_display_mode *adjusted_mode)
> >>>> +                   struct drm_display_mode *adjusted_mode,
> >>>> +                   const struct drm_connector_state *conn_state)
> >>>>   {
> >>>>       const struct drm_display_mode *fixed_mode =3D
> >>>> -        intel_panel_fixed_mode(connector, adjusted_mode);
> >>>> +        intel_panel_fixed_mode(connector, adjusted_mode, conn_state=
);
> >>>>       int vrefresh, fixed_mode_vrefresh;
> >>>>       bool is_vrr;
> >>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct intel_connector
> >>>> *connector,
> >>>>                  const struct drm_display_mode *mode)
> >>>>   {
> >>>>       const struct drm_display_mode *fixed_mode =3D
> >>>> -        intel_panel_fixed_mode(connector, mode);
> >>>> +        intel_panel_fixed_mode(connector, mode, NULL);
> >>>>         if (!fixed_mode)
> >>>>           return MODE_OK;
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
> >>>> b/drivers/gpu/drm/i915/display/intel_panel.h
> >>>> index 2f7a317995ea..c1189a20c8b2 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> >>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
> >>>>   intel_panel_preferred_fixed_mode(struct intel_connector *connector=
);
> >>>>   const struct drm_display_mode *
> >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
> >>>> -               const struct drm_display_mode *mode);
> >>>> +               const struct drm_display_mode *mode,
> >>>> +               const struct drm_connector_state *conn_state);
> >>>>   const struct drm_display_mode *
> >>>>   intel_panel_downclock_mode(struct intel_connector *connector,
> >>>>                  const struct drm_display_mode *adjusted_mode);
> >>>> @@ -47,7 +48,8 @@ enum drm_mode_status
> >>>>   intel_panel_mode_valid(struct intel_connector *connector,
> >>>>                  const struct drm_display_mode *mode);
> >>>>   int intel_panel_compute_config(struct intel_connector *connector,
> >>>> -                   struct drm_display_mode *adjusted_mode);
> >>>> +                   struct drm_display_mode *adjusted_mode,
> >>>> +                   const struct drm_connector_state *conn_state);
> >>>>   void intel_panel_add_edid_fixed_modes(struct intel_connector
> >>>> *connector,
> >>>>                         bool use_alt_fixed_modes);
> >>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector
> >>>> *connector);
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >>>> index 2e1af9e869de..e07c1070a3ec 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >>>> @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timing(struct
> >>>> intel_sdvo *intel_sdvo,
> >>>>         if (IS_LVDS(intel_sdvo_connector)) {
> >>>>           const struct drm_display_mode *fixed_mode =3D
> >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode, NULL);
> >>>>             if (fixed_mode->hdisplay !=3D args.width ||
> >>>>               fixed_mode->vdisplay !=3D args.height)
> >>>> @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_config(struct
> >>>> intel_encoder *encoder,
> >>>>           pipe_config->sdvo_tv_clock =3D true;
> >>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
> >>>>           const struct drm_display_mode *fixed_mode =3D
> >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
> >>>> conn_state);
> >>>>           int ret;
> >>>>             ret =3D
> >>>> intel_panel_compute_config(&intel_sdvo_connector->base,
> >>>> -                         adjusted_mode);
> >>>> +                         adjusted_mode, conn_state);
> >>>>           if (ret)
> >>>>               return ret;
> >>>>   @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(struct
> >>>> intel_atomic_state *state,
> >>>>       /* lvds has a special fixed output timing. */
> >>>>       if (IS_LVDS(intel_sdvo_connector)) {
> >>>>           const struct drm_display_mode *fixed_mode =3D
> >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
> >>>> conn_state);
> >>>>             intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
> >>>>       } else {
> >>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >>>> index 76e8cd0f65a4..bfe465443d20 100644
> >>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >>>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct
> >>>> intel_encoder *encoder,
> >>>>       pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >>>>       pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >>>>   -    ret =3D intel_panel_compute_config(intel_connector,
> >>>> adjusted_mode);
> >>>> +    ret =3D intel_panel_compute_config(intel_connector,
> >>>> adjusted_mode, conn_state);
> >>>>       if (ret)
> >>>>           return ret;
> >>>>   --
> >>>> 2.45.2
>

--00000000000011971f0651282a86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Ankit, Ville, Jani,</div><div><br=
></div><div>Thank you for the patch and the discussion here. Please see som=
e of my comments/feedback below:</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Wed, May 6, 2026 at 12:25=E2=80=AFAM Nau=
tiyal, Ankit K &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.com" target=3D"=
_blank">ankit.k.nautiyal@intel.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><br>
On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:<br>
&gt;<br>
&gt; On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 4/29/2026 5:44 PM, Ville Syrj=C3=A4l=C3=A4 wrote:<br>
&gt;&gt;&gt; On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote=
:<br>
&gt;&gt;&gt;&gt; intel_panel_fixed_mode() intends to choose a fixed mode at=
 or above <br>
&gt;&gt;&gt;&gt; the<br>
&gt;&gt;&gt;&gt; requested refresh rate for VRR panels, so the requested re=
fresh can be<br>
&gt;&gt;&gt;&gt; reached by extending vblank.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; This is called in compute config to find the &#39;best&#39=
; fixed mode for a<br>
&gt;&gt;&gt;&gt; requested mode and also called during mode valid phase to =
prune the<br>
&gt;&gt;&gt;&gt; unsupported fixed modes.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; For Non-VRR panels there is no issue:<br>
&gt;&gt;&gt;&gt; - When a user wants to do a full modeset (sets DRM_MODE_AL=
LOW_MODESET<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 flag) with a custom mode, the intel_panel_fix=
ed_mode() gives the <br>
&gt;&gt;&gt;&gt; mode<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 with refresh rate nearest to the requested mo=
de.<br>
&gt;&gt;&gt;&gt; - Seamless switch to a lower mode is only possible if the =
platform has<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 support for Double buffered MN and the sink i=
s Seamless-DRRS <br>
&gt;&gt;&gt;&gt; capable.<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 In this case the user sets a lower refresh ra=
te mode and doesn&#39;t <br>
&gt;&gt;&gt;&gt; set<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 the DRM_MODE_ALLOW_MODESET flag the intel_pan=
el_fixed_mode() <br>
&gt;&gt;&gt;&gt; returns<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 again the fixed mode whose refresh rate is ne=
arest to the requested<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 mode.<br>
&gt;&gt;&gt;&gt; - Since Duble buffered MN is not supported on LNL+, the se=
amless <br>
&gt;&gt;&gt;&gt; switch<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 is not possible for such panels from LNL+.<br=
>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; For VRR panels the current logic has some issues:<br>
&gt;&gt;&gt;&gt; - For VRR panels intel_panel_fixed_mode() intends to choos=
e a fixed <br>
&gt;&gt;&gt;&gt; mode<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 at or above the requested refresh rate so the=
 requested refresh <br>
&gt;&gt;&gt;&gt; can be<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 reached by extending vblank.<br>
&gt;&gt;&gt;&gt; - However, as per the current logic the helper can return =
a lower <br>
&gt;&gt;&gt;&gt; refresh<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 rate mode, if the lower refresh rate mode is =
first in the list <br>
&gt;&gt;&gt;&gt; of fixed<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 mode. Later, if the selected fixed mode&#39;s=
 refresh rate &lt; the <br>
&gt;&gt;&gt;&gt; requested<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 mode&#39;s refresh rate, then the requested r=
ate is matched by <br>
&gt;&gt;&gt;&gt; extending<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 the vblank.<br>
&gt;&gt;&gt;&gt; - In case of a full modeset request with a custom mode thi=
s is not a<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 problem. But for the seamless switch features=
 like LRR (Lower <br>
&gt;&gt;&gt;&gt; Refresh<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 Rate) and the Seamless-DRRS this creates a pr=
oblem as this <br>
&gt;&gt;&gt;&gt; results in<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 change in vsync_start/end and resulting in a =
full modeset.<br>
&gt;&gt;&gt;&gt; - Furthermore, as with the Non-VRR panel case, the Seamles=
s-DRRS is <br>
&gt;&gt;&gt;&gt; not<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 supported on LNL+, but for VRR panels, the vb=
lank can be extended<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 similar to LRR case. But due to the above men=
tioned problem in the<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0 intel_panel_fixed_mode() this also results in=
 full modeset.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; To solve these problems for the VRR panels, identify if th=
e user <br>
&gt;&gt;&gt;&gt; wants a<br>
&gt;&gt;&gt;&gt; full modeset or expects seamless switch. If seamless switc=
h to a lower<br>
&gt;&gt;&gt;&gt; mode is desired, make intel_panel_fixed_mode() return the =
highest<br>
&gt;&gt;&gt;&gt; refresh rate mode, provided the requested rate is in vrr r=
ange. This<br>
&gt;&gt;&gt;&gt; will then be modified to extend the vblank to provide the =
desired<br>
&gt;&gt;&gt;&gt; refresh rate.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; This is particularly needed for DRRS panels on platforms w=
ithout the<br>
&gt;&gt;&gt;&gt; double buffered M/N support (display version 20+), where s=
eamless <br>
&gt;&gt;&gt;&gt; clock<br>
&gt;&gt;&gt;&gt; changes are not possible.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; To understand the user requirement for full modeset/seamle=
ss <br>
&gt;&gt;&gt;&gt; switch, the<br>
&gt;&gt;&gt;&gt; intel_panel_fixed_mode() and intel_panel_compute_config() =
need <br>
&gt;&gt;&gt;&gt; access to<br>
&gt;&gt;&gt;&gt; the connector state to check the allow_modeset flag.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Add a nullable conn_state parameter to both. The mode_vali=
d callers <br>
&gt;&gt;&gt;&gt; pass<br>
&gt;&gt;&gt;&gt; NULL since they have no atomic state and the compute_confi=
g callers <br>
&gt;&gt;&gt;&gt; pass<br>
&gt;&gt;&gt;&gt; their conn_state.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Also remove the VRR check from is_best_fixed_mode() since =
the <br>
&gt;&gt;&gt;&gt; selection is<br>
&gt;&gt;&gt;&gt; handled upfront in intel_panel_fixed_mode().<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Signed-off-by: Ankit Nautiyal &lt;<a href=3D"mailto:ankit.=
k.nautiyal@intel.com" target=3D"_blank">ankit.k.nautiyal@intel.com</a>&gt;<=
br>
&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/icl_dsi.c=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/intel_dp.c=C2=A0=C2=A0=
=C2=A0 |=C2=A0 6 ++--<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/intel_dsi.c=C2=A0=C2=
=A0 |=C2=A0 2 +-<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/intel_dvo.c=C2=A0=C2=
=A0 |=C2=A0 6 ++--<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/intel_lvds.c=C2=A0 |=
=C2=A0 4 +--<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/intel_panel.c | 35 <br=
>
&gt;&gt;&gt;&gt; +++++++++++-----------<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/intel_panel.h |=C2=A0 =
6 ++--<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/intel_sdvo.c=C2=A0 |=
=C2=A0 8 ++---<br>
&gt;&gt;&gt;&gt; =C2=A0 drivers/gpu/drm/i915/display/vlv_dsi.c=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;&gt;&gt;&gt; =C2=A0 9 files changed, 37 insertions(+), 34 deletions(-)<=
br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c <br>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/icl_dsi.c<br>
&gt;&gt;&gt;&gt; index afbaa0465842..1efe81404d01 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/icl_dsi.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/icl_dsi.c<br>
&gt;&gt;&gt;&gt; @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(=
struct <br>
&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pipe_config-&gt;sink_format=
 =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pipe_config-&gt;output_form=
at =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_con=
fig(intel_connector, <br>
&gt;&gt;&gt;&gt; adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(int=
el_connector, <br>
&gt;&gt;&gt;&gt; adjusted_mode, conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn ret;<br>
&gt;&gt;&gt;&gt; =C2=A0 diff --git a/drivers/gpu/drm/i915/display/intel_dp.=
c <br>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_dp.c<br>
&gt;&gt;&gt;&gt; index 35b8fb5740aa..f014ce28e69f 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_dp.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_dp.c<br>
&gt;&gt;&gt;&gt; @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_conne=
ctor <br>
&gt;&gt;&gt;&gt; *_connector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (intel_dp_hdisplay_bad(d=
isplay, mode-&gt;hdisplay))<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn MODE_H_ILLEGAL;<br>
&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 fixed_mode =3D intel_panel_fixe=
d_mode(connector, mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 fixed_mode =3D intel_panel_fixed_mode(=
connector, mode, NULL);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (intel_dp_is_edp(intel_d=
p) &amp;&amp; fixed_mode) {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sta=
tus =3D intel_panel_mode_valid(connector, mode);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(status !=3D MODE_OK)<br>
&gt;&gt;&gt;&gt; @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct intel=
_encoder <br>
&gt;&gt;&gt;&gt; *encoder,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *con=
nector =3D <br>
&gt;&gt;&gt;&gt; intel_dp-&gt;attached_connector;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int ret =3D 0, link_bpp_x16=
;<br>
&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 fixed_mode =3D intel_panel_fixe=
d_mode(connector, adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 fixed_mode =3D intel_panel_fixed_mode(=
connector, adjusted_mode, <br>
&gt;&gt;&gt;&gt; conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (intel_dp_is_edp(intel_d=
p) &amp;&amp; fixed_mode) {<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_=
panel_compute_config(connector, adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_=
panel_compute_config(connector, adjusted_mode, <br>
&gt;&gt;&gt;&gt; conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(ret)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c <br>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_dsi.c<br>
&gt;&gt;&gt;&gt; index 9005c1f5d857..a480bb79dca7 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_dsi.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_dsi.c<br>
&gt;&gt;&gt;&gt; @@ -64,7 +64,7 @@ enum drm_mode_status intel_dsi_mode_vali=
d(struct <br>
&gt;&gt;&gt;&gt; drm_connector *connector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display *displ=
ay =3D <br>
&gt;&gt;&gt;&gt; to_intel_display(connector-&gt;dev);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *int=
el_connector =3D <br>
&gt;&gt;&gt;&gt; to_intel_connector(connector);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mo=
de *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(intel_connector, mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(intel_connector, mode, NULL);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int max_dotclk =3D display-=
&gt;cdclk.max_dotclk_freq;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum drm_mode_status status=
;<br>
&gt;&gt;&gt;&gt; =C2=A0 diff --git a/drivers/gpu/drm/i915/display/intel_dvo=
.c <br>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_dvo.c<br>
&gt;&gt;&gt;&gt; index 405b33aca9dd..0ec25d895777 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_dvo.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_dvo.c<br>
&gt;&gt;&gt;&gt; @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connec=
tor <br>
&gt;&gt;&gt;&gt; *_connector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *con=
nector =3D <br>
&gt;&gt;&gt;&gt; to_intel_connector(_connector);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_dvo *intel_dvo=
 =3D intel_attached_dvo(connector);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mo=
de *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, mode, NULL);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int max_dotclk =3D display-=
&gt;cdclk.max_dotclk_freq;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int target_clock =3D mode-&=
gt;clock;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum drm_mode_status status=
;<br>
&gt;&gt;&gt;&gt; @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(st=
ruct <br>
&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *con=
nector =3D <br>
&gt;&gt;&gt;&gt; to_intel_connector(conn_state-&gt;connector);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode *ad=
justed_mode =3D <br>
&gt;&gt;&gt;&gt; &amp;pipe_config-&gt;hw.adjusted_mode;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mo=
de *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(intel_dvo-&gt;attached_connector,=
 <br>
&gt;&gt;&gt;&gt; adjusted_mode);<br>
&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(intel_dvo-&gt;attached_connector,=
 <br>
&gt;&gt;&gt;&gt; adjusted_mode, conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * If we have timings =
from the BIOS for the panel, put them in<br>
&gt;&gt;&gt;&gt; @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(st=
ruct <br>
&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (fixed_mode) {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 ret;<br>
&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D=
 intel_panel_compute_config(connector, adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_=
panel_compute_config(connector, adjusted_mode, <br>
&gt;&gt;&gt;&gt; conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(ret)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c <br=
>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_lvds.c<br>
&gt;&gt;&gt;&gt; index cc6d4bfcff10..2e30bc3f1e62 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_lvds.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_lvds.c<br>
&gt;&gt;&gt;&gt; @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_conne=
ctor <br>
&gt;&gt;&gt;&gt; *_connector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_display *displ=
ay =3D <br>
&gt;&gt;&gt;&gt; to_intel_display(_connector-&gt;dev);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *con=
nector =3D <br>
&gt;&gt;&gt;&gt; to_intel_connector(_connector);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mo=
de *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, mode, NULL);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int max_pixclk =3D display-=
&gt;cdclk.max_dotclk_freq;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum drm_mode_status status=
;<br>
&gt;&gt;&gt;&gt; =C2=A0 @@ -460,7 +460,7 @@ static int intel_lvds_compute_c=
onfig(struct <br>
&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * with the panel scal=
ing set up to source from the H/VDisplay<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * of the original mod=
e.<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(con=
nector, adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(con=
nector, adjusted_mode, <br>
&gt;&gt;&gt;&gt; conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn ret;<br>
&gt;&gt;&gt;&gt; =C2=A0 diff --git a/drivers/gpu/drm/i915/display/intel_pan=
el.c <br>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_panel.c<br>
&gt;&gt;&gt;&gt; index 5e918ee0c8ea..65d017371d78 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_panel.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_panel.c<br>
&gt;&gt;&gt;&gt; @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struc=
t <br>
&gt;&gt;&gt;&gt; intel_connector *connector)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struc=
t drm_display_mode, head);<br>
&gt;&gt;&gt;&gt; =C2=A0 }<br>
&gt;&gt;&gt;&gt; =C2=A0 -static bool is_best_fixed_mode(struct intel_connec=
tor *connector,<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int vrefresh, int fixed=
_mode_vrefresh,<br>
&gt;&gt;&gt;&gt; +static bool is_best_fixed_mode(int vrefresh, int fixed_mo=
de_vrefresh,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struc=
t drm_display_mode *best_mode)<br>
&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* we want to always return=
 something */<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!best_mode)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn true;<br>
&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 /*<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 * With VRR always pick a mode wi=
th equal/higher than requested<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 * vrefresh, which we can then re=
duce to match the requested<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 * vrefresh by extending the vbla=
nk length.<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 */<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0 if (intel_vrr_is_in_range(connector, v=
refresh) &amp;&amp;<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_vrr_is_i=
n_range(connector, fixed_mode_vrefresh) &amp;&amp;<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fixed_mode_vre=
fresh &lt; vrefresh)<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return false;<=
br>
&gt;&gt;&gt;&gt; -<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* pick the fixed_mode that=
 is closest in terms of vrefresh */<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return abs(fixed_mode_vrefr=
esh - vrefresh) &lt;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 abs=
(drm_mode_vrefresh(best_mode) - vrefresh);<br>
&gt;&gt;&gt;&gt; @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct =
<br>
&gt;&gt;&gt;&gt; intel_connector *connector,<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0 const struct drm_display_mode *<br>
&gt;&gt;&gt;&gt; =C2=A0 intel_panel_fixed_mode(struct intel_connector *conn=
ector,<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *mode)<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *mode,<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connector_state *conn_state)<b=
r>
&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mo=
de *fixed_mode, *best_mode =3D NULL;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int vrefresh =3D drm_mode_v=
refresh(mode);<br>
&gt;&gt;&gt;&gt; =C2=A0 +=C2=A0=C2=A0=C2=A0 /*<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 * With VRR always pick the highe=
st refresh rate mode,<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 * which we can then reduce to ma=
tch the requested<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 * vrefresh by extending the vbla=
nk length.<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 */<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 if (conn_state &amp;&amp; !conn_state-=
&gt;state-&gt;allow_modeset &amp;&amp;<br>
&gt;&gt;&gt; The foo_state-&gt;state pointer should never be used. If you n=
eed the full<br>
&gt;&gt;&gt; atomic state then plumb it through from the top.<br>
&gt;&gt;<br>
&gt;&gt; Hmm noted.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; + intel_vrr_is_capable(connector) &amp;&amp;<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_vrr_is_i=
n_range(connector, vrefresh))<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return intel_p=
anel_highest_vrefresh_mode(connector);<br>
&gt;&gt;&gt; What we want is the fixed mode that matches the current adjust=
ed mode<br>
&gt;&gt;&gt; exactly except for vtotal, and I think we also want to maintai=
n the<br>
&gt;&gt;&gt; vsync pulse location relative to vtotal.<br>
&gt;&gt;<br>
&gt;&gt; Oh alright. I was thinking the issue is in the best mode logic whi=
ch <br>
&gt;&gt; is resulting in lower mode getting picked when we wanted a higher =
<br>
&gt;&gt; mode as best fixed mode.<br>
&gt;&gt;<br>
&gt;&gt; I was under the impression that since the vsync start/end of lower=
 is <br>
&gt;&gt; not the same with the higher mode and since this cannot be modifie=
d <br>
&gt;&gt; on the fly, it results in full modeset.<br>
&gt;&gt;<br>
&gt;&gt; However, as you said, vsync start/end can be modified indeed the <=
br>
&gt;&gt; problem becomes:<br>
&gt;&gt;<br>
&gt;&gt; - we are not scaling the vsync start/end similar to what we are do=
ing <br>
&gt;&gt; for vtotal.<br>
&gt;&gt; - even if we do that, we need to remove the check for vsync start/=
end <br>
&gt;&gt; for fastboot.<br>
&gt;&gt;<br>
&gt;&gt; Another consideration is that is the vsync_start should be inside =
the <br>
&gt;&gt; vrr guardband, but I think if the vsync_start scales up then it wi=
ll <br>
&gt;&gt; still be inside the guardband so we should be covered.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; We should in fact fix the vsync_start/end mess first.<br>
&gt;&gt;<br>
&gt;&gt; You mean the existing vsync_start/end change due to AS SDP thing? =
Or <br>
&gt;&gt; you mean the above mentioned scaling up?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt; We need to add<br>
&gt;&gt;&gt; TRANS_VSYNC handling to the LRR codepaths and allow that to ch=
ange<br>
&gt;&gt;&gt; during fastsets. And intel_panel_compute_config() needs to pre=
serve<br>
&gt;&gt;&gt; the vtotal-vsync distance when adjusting vtotal. I think that =
should<br>
&gt;&gt;&gt; all be fine for DP since it doesn&#39;t really use TRANS_VSYNC=
 for<br>
&gt;&gt;&gt; anything.<br>
&gt;&gt;<br>
&gt;&gt; Hmm I think I got some direction here. Thanks for making it cleare=
r.<br>
&gt;<br>
&gt;<br>
&gt; Hi Ville,<br>
&gt;<br>
&gt; Going through the Bspec, I have a query on the TRANS_VSYNC part.<br>
&gt;<br>
&gt; For NVL onwards, the TRANS_VSYNC seems to be deprecated. As I <br>
&gt; understand, this is no more used with VRR timing generator, instead <b=
r>
&gt; TRANS_VRR_VSYNC is used.<br>
&gt; So we can avoid reading/writing it completely for platforms that <br>
&gt; support VRR Timing Generator.<br>
&gt;<br>
&gt; But for platforms using the legacy timing generator, BSpec says <br>
&gt; TRANS_VSYNC should not be changed while transcoder/port are enabled.<b=
r>
&gt; Given that, should we treat TRANS_VSYNC updates as modeset-only on <br=
>
&gt; legacy TG platforms, and only allow the fastset path where VRR TG is <=
br>
&gt; always used?<br>
&gt;<br>
&gt; Just wanted to make sure I=E2=80=99m interpreting your suggestion corr=
ectly <br>
&gt; before changing the fastset checks.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Ankit<br>
&gt;<br>
<br>
Just an update:<br>
<br>
Maintaining vtotal-vsync pulse seems to be working, along with the <br>
change to always use highest RR mode as best mode.<br></blockquote><div><br=
></div><div>I see that the patch selects the highest refresh rate during co=
mpute_config.</div><div>Would that be sufficient to allow VRR based fastset=
 when userspace requests 60Hz at the initial modeset from userspace?</div><=
div><br></div><div>I think what we might need is that during the very first=
 hand off to the kernel driver, is when it always internally sets the crtc =
state mode timings</div><div>for the highest refresh rate mode such that wh=
en the usersapce requests to set the preferred mode of 60 Hz,=C2=A0</div><d=
iv>the mode or the crtc timings would be set the only difference would be t=
he Vtotal and it will meet the VRR fastset requirements and will be able to=
 achieve this 60 Hz using VRR</div><div><br></div><div>From the userspace p=
erspective, 60Hz will still be the preferred mode as advertised=C2=A0by the=
 panel, but internally if the driver can always set the timings for the hig=
hest refresh rate, then switching from lower refresh rate 60 Hz to higher r=
efresh rate 120Hz would be possible seamlessly.=C2=A0</div><div><br></div><=
div>Regards</div><div>Manasi</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
I still need to address the comment about avoid deriving=C2=A0allow_modeset=
 <br>
from connector state directly.<br>
<br>
Cc:<br>
<br>
Manasi Navare &lt;<a href=3D"mailto:navaremanasi@google.com" target=3D"_bla=
nk">navaremanasi@google.com</a>&gt;<br>
<br>
<br>
Regards,<br>
<br>
Ankit<br>
<br>
<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; Ankit<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; +<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 list_for_each_entry(fixed_m=
ode, <br>
&gt;&gt;&gt;&gt; &amp;connector-&gt;panel.fixed_modes, head) {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 fixed_mode_vrefresh =3D drm_mode_vrefresh(fixed_mode);<br>
&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (is_=
best_fixed_mode(connector, vrefresh,<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (is_best_fi=
xed_mode(vrefresh,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 fixed_mode_vrefresh, best_mode))<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 best_mode =3D fixed_mode;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt;&gt;&gt;&gt; @@ -213,10 +213,11 @@ enum drrs_type intel_panel_drrs_type=
(struct <br>
&gt;&gt;&gt;&gt; intel_connector *connector)<br>
&gt;&gt;&gt;&gt; =C2=A0 }<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0 int intel_panel_compute_config(struct intel_=
connector *connector,<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode=
 *adjusted_mode)<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode=
 *adjusted_mode,<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connec=
tor_state *conn_state)<br>
&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mo=
de *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, adjusted_mode, conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int vrefresh, fixed_mode_vr=
efresh;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool is_vrr;<br>
&gt;&gt;&gt;&gt; =C2=A0 @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct i=
ntel_connector <br>
&gt;&gt;&gt;&gt; *connector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *mode=
)<br>
&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mo=
de *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_panel_fi=
xed_mode(connector, mode, NULL);<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!fixed_mode)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn MODE_OK;<br>
&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/intel_panel.h <b=
r>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_panel.h<br>
&gt;&gt;&gt;&gt; index 2f7a317995ea..c1189a20c8b2 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_panel.h<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_panel.h<br>
&gt;&gt;&gt;&gt; @@ -32,7 +32,8 @@ const struct drm_display_mode *<br>
&gt;&gt;&gt;&gt; =C2=A0 intel_panel_preferred_fixed_mode(struct intel_conne=
ctor *connector);<br>
&gt;&gt;&gt;&gt; =C2=A0 const struct drm_display_mode *<br>
&gt;&gt;&gt;&gt; =C2=A0 intel_panel_fixed_mode(struct intel_connector *conn=
ector,<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *mode,<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connector_state *conn_state);<=
br>
&gt;&gt;&gt;&gt; =C2=A0 const struct drm_display_mode *<br>
&gt;&gt;&gt;&gt; =C2=A0 intel_panel_downclock_mode(struct intel_connector *=
connector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *adju=
sted_mode);<br>
&gt;&gt;&gt;&gt; @@ -47,7 +48,8 @@ enum drm_mode_status<br>
&gt;&gt;&gt;&gt; =C2=A0 intel_panel_mode_valid(struct intel_connector *conn=
ector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *mode=
);<br>
&gt;&gt;&gt;&gt; =C2=A0 int intel_panel_compute_config(struct intel_connect=
or *connector,<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode=
 *adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode=
 *adjusted_mode,<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connec=
tor_state *conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0 void intel_panel_add_edid_fixed_modes(struct intel_=
connector <br>
&gt;&gt;&gt;&gt; *connector,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 bool use_alt_fixed_modes);<br>
&gt;&gt;&gt;&gt; =C2=A0 void intel_panel_add_vbt_lfp_fixed_mode(struct inte=
l_connector <br>
&gt;&gt;&gt;&gt; *connector);<br>
&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c <br=
>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;&gt;&gt;&gt; index 2e1af9e869de..e07c1070a3ec 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;&gt;&gt;&gt; @@ -797,7 +797,7 @@ intel_sdvo_create_preferred_input_timi=
ng(struct <br>
&gt;&gt;&gt;&gt; intel_sdvo *intel_sdvo,<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_LVDS(intel_sd=
vo_connector)) {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(&amp;intel_sdvo_connector-&gt;bas=
e, mode);<br>
&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(&amp;intel_sdvo_connector-&gt;bas=
e, mode, NULL);<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if (fixed_mode-&gt;hdisplay !=3D args.width ||<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 fixed_mode-&gt;vdisplay !=3D args.height)<br>
&gt;&gt;&gt;&gt; @@ -1396,11 +1396,11 @@ static int intel_sdvo_compute_conf=
ig(struct <br>
&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pip=
e_config-&gt;sdvo_tv_clock =3D true;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else if (IS_LVDS(intel_sd=
vo_connector)) {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(&amp;intel_sdvo_connector-&gt;bas=
e, mode);<br>
&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(&amp;intel_sdvo_connector-&gt;bas=
e, mode, <br>
&gt;&gt;&gt;&gt; conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 ret;<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ret =3D <br>
&gt;&gt;&gt;&gt; intel_panel_compute_config(&amp;intel_sdvo_connector-&gt;b=
ase,<br>
&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 adjusted_mode, conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(ret)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;&gt;&gt;&gt; =C2=A0 @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_en=
able(struct <br>
&gt;&gt;&gt;&gt; intel_atomic_state *state,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* lvds has a special fixed=
 output timing. */<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_LVDS(intel_sdvo_conn=
ector)) {<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(&amp;intel_sdvo_connector-&gt;bas=
e, mode);<br>
&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(&amp;intel_sdvo_connector-&gt;bas=
e, mode, <br>
&gt;&gt;&gt;&gt; conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 intel_sdvo_get_dtd_from_mode(&amp;output_dtd, fixed_mode);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } else {<br>
&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c <br>
&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/vlv_dsi.c<br>
&gt;&gt;&gt;&gt; index 76e8cd0f65a4..bfe465443d20 100644<br>
&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display/vlv_dsi.c<br>
&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c<br>
&gt;&gt;&gt;&gt; @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(st=
ruct <br>
&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pipe_config-&gt;sink_format=
 =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pipe_config-&gt;output_form=
at =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_con=
fig(intel_connector, <br>
&gt;&gt;&gt;&gt; adjusted_mode);<br>
&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(int=
el_connector, <br>
&gt;&gt;&gt;&gt; adjusted_mode, conn_state);<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn ret;<br>
&gt;&gt;&gt;&gt; =C2=A0 --<br>
&gt;&gt;&gt;&gt; 2.45.2<br>
</blockquote></div></div>
</div>

--00000000000011971f0651282a86--
