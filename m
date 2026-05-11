Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SB1sGlk5AmrmpAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 22:17:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70464515A01
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 22:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF0410E280;
	Mon, 11 May 2026 20:17:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="jWjOt2Rd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5540E10E89E
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2026 20:17:25 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-bccb9dca1beso377790066b.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2026 13:17:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778530644; cv=none;
 d=google.com; s=arc-20240605;
 b=jZr9l0G8YBxPlFPt8FDpojyxQOyCz5EfigPsXbHMkIYnWF+V6mZeBuKagICVCg8AKC
 HoCL9yE3Dow5InamJj8znSat67/2Dm2MwNeOpjRBLlHhEgCw+m31whaNdSsPFGy65b1y
 jeWTcDzUMtQFLdXcNQGKQ/RLIN+vQF2irvStpbd9HqelP1aW09KqrPfHvGk2sNfikZOe
 oyFDd14OyeGbuco6xEyl0ILxiAQ8RMbtprp9H8Zv5r8cZHCIVceGy6er/RL274IfWtKY
 Hs2qOSkC6XRuVP1klhSRsz41q5tFE1j/BcNypi6O+a91P3aKV1E0AIzCdlcFvfZVsaq6
 G/gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=Nl0Py9kFqEGlkgJWwxupZj0ucyxJYIS6yCl+00BbtGk=;
 fh=0VLXhzc1HMBXjnqGpESvq1VFQZS3cC9S1H7gxnKx8YA=;
 b=Lwk0L9QFsvyAqm3P3GOtLlasA1whhxh45o3FIXfLdhCM/TU6SZaH1dj4pvtTAyYfR1
 Kx8Eo67EtSBWNxYoUc8q7ZFczXPPZoCp38pq1nvk73k9/1Zt3/Y/POfpxhYtlMD6o1u9
 W3mGXQO7fwd/AcXUzO6hId8o4zo5TI56gqFVEcI1lSTAdEUwHkufqBLYx9zDuaucDlA+
 3QTwL2g31BJ6iPRCZzugUg9RpLRP0of+NbMCA01jbIeXGbSBf8upgM5uK0qbOR5thbDo
 QHDq0cSF9zkflezxSQZr/U9XJ9xTKN3YFZ00LaZAZRNw6mrjJqsJL96baBaSZlJZ0bIu
 SE3Q==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1778530644; x=1779135444;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Nl0Py9kFqEGlkgJWwxupZj0ucyxJYIS6yCl+00BbtGk=;
 b=jWjOt2Rd13sa0nI+vR9twEnmN7YS4z6M+F2RiXk8CxTa7VVPRPdlx3H2Y3wDpnJk6r
 lr2KYLpvcJYQAkaMPLFAWlVSaUCOGKyO+8wa7+VvkzxgUXFU1m9edyT86VWN+kYcgUES
 qICwES1tjfUdQ8ewAM+erc29JhVhTn2j2951j8zx3iiDAWVpL0JAyO4oX56ZFgaUBgcX
 N72oEMRg/imk4WC3WbrCG68fewrTRh0OfDmxYQ2h7tDZDxpwX8mkJaaE4FIEeeTeLwO9
 UItd1R5wvjoYD8tYrd8P5pujwOCwgaOix8vk6Z9IFaVtHduNhH6k6oja9Ee/NyGelyfr
 4g0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778530644; x=1779135444;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nl0Py9kFqEGlkgJWwxupZj0ucyxJYIS6yCl+00BbtGk=;
 b=IjxlDYZdTsKZFqmUwIJKmJo0BoNdh6b9FwGqexQshn5Xt9mpcYcAlVABfOPz8gDMil
 NFDsyvRVIXBO0LWwRei0FK2AntsHgIC+AeiM0rmm3dWhNvpy6TVcmwwjXCsLLobXho7g
 cDFb7YMwM1V7+rSgzFOEGxPcbLRMAfoViwg/7r48Q5fMEXDDo2n89wPgZ54rrgYI3N81
 Aw2vvZUQnzjPKnMIlPgAr19vkDPjvbTA7hlizuE90rBC4lyrhZJjs3BOPreuLcJ6qHEY
 O+q4q9InFcoXUzJjfE/axguXbjH4HAncpnysGIui6B6JhLcbUrG+wUjQkFVpjYu/1TPo
 OWtA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/JPK6eS0w+2d3fK2c7n08pK6OgDXjgHfwhBr51rt7YSe1b2AgSbW4jTg7KsN3YnjCmQ/y6UL/aqks=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzT9GM2JhC4ZCLBde7bVMYPbHHAGWM+YycaA8gSsoEeFe3XtnqZ
 0+lDe+l5nI1OKz4O4teoJUSbCuqDNHNGnYsgAIizQO+K37hi9jHJ6Hz+lAbx9xQOIYh6+gA7gkU
 tUhCJeEqfZ+DJeV1XVq3mdrarzv3lslnYn0Jz508I
X-Gm-Gg: Acq92OHE1BN7CMgcJrQSI3vZ6LpSn7t7g7mhCKojg73U0KuW3awTQju/jybCEk+Hk2q
 hNY6CwHAgbV++szvEJWDyGhWpj03u+CbutyMICbtAvhOQwbSFVPgYIPSKByhfFj8fWa8Pyc02Qk
 EsKwQguZoM9MEmAlXHWYsqN64fkEGWpML9ibgNYO64mkBdoFBPElpjsqh8e0uTgGSLVqjVpDPst
 6/QeHPMTK38caSnkAzezFm+KKimWw6Ci5iJfS7RRlxgYbMQf4Jl4fK7oXtkTSIZrzifr9LdnVfA
 l2D7Pd3CatUk5IMRJVEBTG5LOz/ixX7tofENHaXB+lkQgGvALa/G49EP9qNuIojpD9G3E1OYMbb
 46ZqJ0rYt2UtQ/Mq/
X-Received: by 2002:a17:907:78a:b0:bcb:cc44:e144 with SMTP id
 a640c23a62f3a-bcc13c9659fmr631162666b.24.1778530642974; Mon, 11 May 2026
 13:17:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com>
 <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
 <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
 <172dd0cf-8e0b-4e00-a50e-708196928a7e@intel.com>
 <CAMNLLoTKjz-Fg7Dp5R6_XG8PEcOAiDfPx+=UVeKkkRoBYeRYug@mail.gmail.com>
 <ee4eef18-7901-4e5f-b914-65b01d1fe7fe@intel.com>
 <CAMNLLoQUwkk3QJOyHv2Lk30d=V3erJKrBcFsjkFXPE8dFmvgjA@mail.gmail.com>
 <a009c659-5070-4ea8-b904-6a54c06f73d6@intel.com>
In-Reply-To: <a009c659-5070-4ea8-b904-6a54c06f73d6@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Mon, 11 May 2026 13:17:09 -0700
X-Gm-Features: AVHnY4La1cdB4iIMVpfI29G1H8rTjwqlmcNrM5rfTc-AU7JRRNoTY8i4EZjAfTM
Message-ID: <CAMNLLoT4PVwDJda+pLfJrw+hPsB8WOwEf+PAd3FX8tU55Za+6Q@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jani.nikula@linux.intel.com, Sean Paul <seanpaul@google.com>
Content-Type: multipart/alternative; boundary="00000000000033826c0651906f0c"
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
X-Rspamd-Queue-Id: 70464515A01
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
	FORGED_RECIPIENTS(0.00)[m:ankit.k.nautiyal@intel.com,m:ville.syrjala@linux.intel.com,m:intel-xe@lists.freedesktop.org,m:jani.nikula@linux.intel.com,m:seanpaul@google.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-0.861];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid]
X-Rspamd-Action: no action

--00000000000033826c0651906f0c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Ankit. Its great that with these fixes we can get seamless switch
between 60 and 120 in both directions.
Do you have an ETA of when these will be ready to be sent to the M-L so we
cab review them and get them landed?

Regards
Manasi

On Fri, May 8, 2026 at 12:48=E2=80=AFAM Nautiyal, Ankit K <
ankit.k.nautiyal@intel.com> wrote:

>
> On 5/7/2026 11:35 PM, Manasi Navare wrote:
> > Thanks Ankit for the detailed feedback and analysis, please find some
> > comments below :
> >
> > On Thu, May 7, 2026 at 4:52=E2=80=AFAM Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com> wrote:
> >
> >
> >     On 5/6/2026 9:23 PM, Manasi Navare wrote:
> >     > Hi Ankit, Ville, Jani,
> >     >
> >     > Thank you for the patch and the discussion here. Please see some
> >     of my
> >     > comments/feedback below:
> >     >
> >     > On Wed, May 6, 2026 at 12:25=E2=80=AFAM Nautiyal, Ankit K
> >     > <ankit.k.nautiyal@intel.com> wrote:
> >     >
> >     >
> >     >     On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:
> >     >     >
> >     >     > On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
> >     >     >>
> >     >     >> On 4/29/2026 5:44 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> >     >     >>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal
> >     wrote:
> >     >     >>>> intel_panel_fixed_mode() intends to choose a fixed mode
> >     at or
> >     >     above
> >     >     >>>> the
> >     >     >>>> requested refresh rate for VRR panels, so the requested
> >     >     refresh can be
> >     >     >>>> reached by extending vblank.
> >     >     >>>>
> >     >     >>>> This is called in compute config to find the 'best' fixe=
d
> >     >     mode for a
> >     >     >>>> requested mode and also called during mode valid phase t=
o
> >     >     prune the
> >     >     >>>> unsupported fixed modes.
> >     >     >>>>
> >     >     >>>> For Non-VRR panels there is no issue:
> >     >     >>>> - When a user wants to do a full modeset (sets
> >     >     DRM_MODE_ALLOW_MODESET
> >     >     >>>>    flag) with a custom mode, the intel_panel_fixed_mode(=
)
> >     >     gives the
> >     >     >>>> mode
> >     >     >>>>    with refresh rate nearest to the requested mode.
> >     >     >>>> - Seamless switch to a lower mode is only possible if th=
e
> >     >     platform has
> >     >     >>>>    support for Double buffered MN and the sink is
> >     Seamless-DRRS
> >     >     >>>> capable.
> >     >     >>>>    In this case the user sets a lower refresh rate mode
> and
> >     >     doesn't
> >     >     >>>> set
> >     >     >>>>    the DRM_MODE_ALLOW_MODESET flag the
> >     intel_panel_fixed_mode()
> >     >     >>>> returns
> >     >     >>>>    again the fixed mode whose refresh rate is nearest
> >     to the
> >     >     requested
> >     >     >>>>    mode.
> >     >     >>>> - Since Duble buffered MN is not supported on LNL+, the
> >     seamless
> >     >     >>>> switch
> >     >     >>>>    is not possible for such panels from LNL+.
> >     >     >>>>
> >     >     >>>> For VRR panels the current logic has some issues:
> >     >     >>>> - For VRR panels intel_panel_fixed_mode() intends to
> >     choose a
> >     >     fixed
> >     >     >>>> mode
> >     >     >>>>    at or above the requested refresh rate so the request=
ed
> >     >     refresh
> >     >     >>>> can be
> >     >     >>>>    reached by extending vblank.
> >     >     >>>> - However, as per the current logic the helper can retur=
n
> a
> >     >     lower
> >     >     >>>> refresh
> >     >     >>>>    rate mode, if the lower refresh rate mode is first
> >     in the
> >     >     list
> >     >     >>>> of fixed
> >     >     >>>>    mode. Later, if the selected fixed mode's refresh
> >     rate < the
> >     >     >>>> requested
> >     >     >>>>    mode's refresh rate, then the requested rate is
> >     matched by
> >     >     >>>> extending
> >     >     >>>>    the vblank.
> >     >     >>>> - In case of a full modeset request with a custom mode
> this
> >     >     is not a
> >     >     >>>>    problem. But for the seamless switch features like
> >     LRR (Lower
> >     >     >>>> Refresh
> >     >     >>>>    Rate) and the Seamless-DRRS this creates a problem
> >     as this
> >     >     >>>> results in
> >     >     >>>>    change in vsync_start/end and resulting in a full
> >     modeset.
> >     >     >>>> - Furthermore, as with the Non-VRR panel case, the
> >     >     Seamless-DRRS is
> >     >     >>>> not
> >     >     >>>>    supported on LNL+, but for VRR panels, the vblank can
> be
> >     >     extended
> >     >     >>>>    similar to LRR case. But due to the above mentioned
> >     >     problem in the
> >     >     >>>>    intel_panel_fixed_mode() this also results in full
> >     modeset.
> >     >     >>>>
> >     >     >>>> To solve these problems for the VRR panels, identify if
> >     the user
> >     >     >>>> wants a
> >     >     >>>> full modeset or expects seamless switch. If seamless
> switch
> >     >     to a lower
> >     >     >>>> mode is desired, make intel_panel_fixed_mode() return
> >     the highest
> >     >     >>>> refresh rate mode, provided the requested rate is in vrr
> >     >     range. This
> >     >     >>>> will then be modified to extend the vblank to provide
> >     the desired
> >     >     >>>> refresh rate.
> >     >     >>>>
> >     >     >>>> This is particularly needed for DRRS panels on platforms
> >     >     without the
> >     >     >>>> double buffered M/N support (display version 20+), where
> >     >     seamless
> >     >     >>>> clock
> >     >     >>>> changes are not possible.
> >     >     >>>>
> >     >     >>>> To understand the user requirement for full
> >     modeset/seamless
> >     >     >>>> switch, the
> >     >     >>>> intel_panel_fixed_mode() and
> >     intel_panel_compute_config() need
> >     >     >>>> access to
> >     >     >>>> the connector state to check the allow_modeset flag.
> >     >     >>>>
> >     >     >>>> Add a nullable conn_state parameter to both. The
> mode_valid
> >     >     callers
> >     >     >>>> pass
> >     >     >>>> NULL since they have no atomic state and the
> compute_config
> >     >     callers
> >     >     >>>> pass
> >     >     >>>> their conn_state.
> >     >     >>>>
> >     >     >>>> Also remove the VRR check from is_best_fixed_mode()
> >     since the
> >     >     >>>> selection is
> >     >     >>>> handled upfront in intel_panel_fixed_mode().
> >     >     >>>>
> >     >     >>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.co=
m
> >
> >     >     >>>> ---
> >     >     >>>> drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
> >     >     >>>> drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
> >     >     >>>> drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
> >     >     >>>> drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
> >     >     >>>> drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
> >     >     >>>> drivers/gpu/drm/i915/display/intel_panel.c | 35
> >     >     >>>> +++++++++++-----------
> >     >     >>>> drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
> >     >     >>>> drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
> >     >     >>>> drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
> >     >     >>>>   9 files changed, 37 insertions(+), 34 deletions(-)
> >     >     >>>>
> >     >     >>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >     >>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >     >>>> index afbaa0465842..1efe81404d01 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >     >>>> @@ -1671,7 +1671,7 @@ static int
> >     gen11_dsi_compute_config(struct
> >     >     >>>> intel_encoder *encoder,
> >     >     >>>>       pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_R=
GB;
> >     >     >>>> pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >     >     >>>>   -    ret =3D intel_panel_compute_config(intel_connecto=
r,
> >     >     >>>> adjusted_mode);
> >     >     >>>> +    ret =3D intel_panel_compute_config(intel_connector,
> >     >     >>>> adjusted_mode, conn_state);
> >     >     >>>>       if (ret)
> >     >     >>>>           return ret;
> >     >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >     >     >>>> b/drivers/gpu/drm/i915/display/intel_dp.c
> >     >     >>>> index 35b8fb5740aa..f014ce28e69f 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >     >     >>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct
> >     drm_connector
> >     >     >>>> *_connector,
> >     >     >>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay)=
)
> >     >     >>>>           return MODE_H_ILLEGAL;
> >     >     >>>>   -    fixed_mode =3D intel_panel_fixed_mode(connector,
> >     mode);
> >     >     >>>> +    fixed_mode =3D intel_panel_fixed_mode(connector,
> >     mode, NULL);
> >     >     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> >     >     >>>>           status =3D intel_panel_mode_valid(connector,
> mode);
> >     >     >>>>           if (status !=3D MODE_OK)
> >     >     >>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct
> >     >     intel_encoder
> >     >     >>>> *encoder,
> >     >     >>>>       struct intel_connector *connector =3D
> >     >     >>>> intel_dp->attached_connector;
> >     >     >>>>       int ret =3D 0, link_bpp_x16;
> >     >     >>>>   -    fixed_mode =3D intel_panel_fixed_mode(connector,
> >     >     adjusted_mode);
> >     >     >>>> +    fixed_mode =3D intel_panel_fixed_mode(connector,
> >     >     adjusted_mode,
> >     >     >>>> conn_state);
> >     >     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> >     >     >>>> -        ret =3D intel_panel_compute_config(connector,
> >     >     adjusted_mode);
> >     >     >>>> +        ret =3D intel_panel_compute_config(connector,
> >     >     adjusted_mode,
> >     >     >>>> conn_state);
> >     >     >>>>           if (ret)
> >     >     >>>>               return ret;
> >     >     >>>>       }
> >     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >     >>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >     >>>> index 9005c1f5d857..a480bb79dca7 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >     >>>> @@ -64,7 +64,7 @@ enum drm_mode_status
> >     >     intel_dsi_mode_valid(struct
> >     >     >>>> drm_connector *connector,
> >     >     >>>>       struct intel_display *display =3D
> >     >     >>>> to_intel_display(connector->dev);
> >     >     >>>>       struct intel_connector *intel_connector =3D
> >     >     >>>> to_intel_connector(connector);
> >     >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(intel_connector, mode);
> >     >     >>>> + intel_panel_fixed_mode(intel_connector, mode, NULL);
> >     >     >>>>       int max_dotclk =3D display->cdclk.max_dotclk_freq;
> >     >     >>>>       enum drm_mode_status status;
> >     >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >     >>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >     >>>> index 405b33aca9dd..0ec25d895777 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >     >>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct
> >     drm_connector
> >     >     >>>> *_connector,
> >     >     >>>>       struct intel_connector *connector =3D
> >     >     >>>> to_intel_connector(_connector);
> >     >     >>>>       struct intel_dvo *intel_dvo =3D
> >     >     intel_attached_dvo(connector);
> >     >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(connector, mode);
> >     >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
> >     >     >>>>       int max_dotclk =3D display->cdclk.max_dotclk_freq;
> >     >     >>>>       int target_clock =3D mode->clock;
> >     >     >>>>       enum drm_mode_status status;
> >     >     >>>> @@ -259,7 +259,7 @@ static int
> >     intel_dvo_compute_config(struct
> >     >     >>>> intel_encoder *encoder,
> >     >     >>>>       struct intel_connector *connector =3D
> >     >     >>>> to_intel_connector(conn_state->connector);
> >     >     >>>>       struct drm_display_mode *adjusted_mode =3D
> >     >     >>>> &pipe_config->hw.adjusted_mode;
> >     >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(intel_dvo->attached_connector,
> >     >     >>>> adjusted_mode);
> >     >     >>>> + intel_panel_fixed_mode(intel_dvo->attached_connector,
> >     >     >>>> adjusted_mode, conn_state);
> >     >     >>>>         /*
> >     >     >>>>        * If we have timings from the BIOS for the
> >     panel, put
> >     >     them in
> >     >     >>>> @@ -270,7 +270,7 @@ static int
> >     intel_dvo_compute_config(struct
> >     >     >>>> intel_encoder *encoder,
> >     >     >>>>       if (fixed_mode) {
> >     >     >>>>           int ret;
> >     >     >>>>   -        ret =3D intel_panel_compute_config(connector,
> >     >     adjusted_mode);
> >     >     >>>> +        ret =3D intel_panel_compute_config(connector,
> >     >     adjusted_mode,
> >     >     >>>> conn_state);
> >     >     >>>>           if (ret)
> >     >     >>>>               return ret;
> >     >     >>>>       }
> >     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >     >>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >     >>>> index cc6d4bfcff10..2e30bc3f1e62 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >     >>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct
> >     drm_connector
> >     >     >>>> *_connector,
> >     >     >>>>       struct intel_display *display =3D
> >     >     >>>> to_intel_display(_connector->dev);
> >     >     >>>>       struct intel_connector *connector =3D
> >     >     >>>> to_intel_connector(_connector);
> >     >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(connector, mode);
> >     >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
> >     >     >>>>       int max_pixclk =3D display->cdclk.max_dotclk_freq;
> >     >     >>>>       enum drm_mode_status status;
> >     >     >>>>   @@ -460,7 +460,7 @@ static int
> >     >     intel_lvds_compute_config(struct
> >     >     >>>> intel_encoder *encoder,
> >     >     >>>>        * with the panel scaling set up to source from th=
e
> >     >     H/VDisplay
> >     >     >>>>        * of the original mode.
> >     >     >>>>        */
> >     >     >>>> -    ret =3D intel_panel_compute_config(connector,
> >     adjusted_mode);
> >     >     >>>> +    ret =3D intel_panel_compute_config(connector,
> >     adjusted_mode,
> >     >     >>>> conn_state);
> >     >     >>>>       if (ret)
> >     >     >>>>           return ret;
> >     >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.=
c
> >     >     >>>> b/drivers/gpu/drm/i915/display/intel_panel.c
> >     >     >>>> index 5e918ee0c8ea..65d017371d78 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> >     >     >>>> @@ -59,24 +59,13 @@
> intel_panel_preferred_fixed_mode(struct
> >     >     >>>> intel_connector *connector)
> >     >     >>>>                       struct drm_display_mode, head);
> >     >     >>>>   }
> >     >     >>>>   -static bool is_best_fixed_mode(struct intel_connector
> >     >     *connector,
> >     >     >>>> -                   int vrefresh, int fixed_mode_vrefres=
h,
> >     >     >>>> +static bool is_best_fixed_mode(int vrefresh, int
> >     >     fixed_mode_vrefresh,
> >     >     >>>>                      const struct drm_display_mode
> >     *best_mode)
> >     >     >>>>   {
> >     >     >>>>       /* we want to always return something */
> >     >     >>>>       if (!best_mode)
> >     >     >>>>           return true;
> >     >     >>>>   -    /*
> >     >     >>>> -     * With VRR always pick a mode with equal/higher th=
an
> >     >     requested
> >     >     >>>> -     * vrefresh, which we can then reduce to match the
> >     requested
> >     >     >>>> -     * vrefresh by extending the vblank length.
> >     >     >>>> -     */
> >     >     >>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
> >     >     >>>> - intel_vrr_is_in_range(connector, fixed_mode_vrefresh) =
&&
> >     >     >>>> -        fixed_mode_vrefresh < vrefresh)
> >     >     >>>> -        return false;
> >     >     >>>> -
> >     >     >>>>       /* pick the fixed_mode that is closest in terms of
> >     >     vrefresh */
> >     >     >>>>       return abs(fixed_mode_vrefresh - vrefresh) <
> >     >     >>>> abs(drm_mode_vrefresh(best_mode) - vrefresh);
> >     >     >>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struc=
t
> >     >     >>>> intel_connector *connector,
> >     >     >>>>     const struct drm_display_mode *
> >     >     >>>>   intel_panel_fixed_mode(struct intel_connector
> *connector,
> >     >     >>>> -               const struct drm_display_mode *mode)
> >     >     >>>> +               const struct drm_display_mode *mode,
> >     >     >>>> +               const struct drm_connector_state
> >     *conn_state)
> >     >     >>>>   {
> >     >     >>>>       const struct drm_display_mode *fixed_mode,
> >     *best_mode =3D
> >     >     NULL;
> >     >     >>>>       int vrefresh =3D drm_mode_vrefresh(mode);
> >     >     >>>>   +    /*
> >     >     >>>> +     * With VRR always pick the highest refresh rate
> mode,
> >     >     >>>> +     * which we can then reduce to match the requested
> >     >     >>>> +     * vrefresh by extending the vblank length.
> >     >     >>>> +     */
> >     >     >>>> +    if (conn_state && !conn_state->state->allow_modeset
> &&
> >     >     >>> The foo_state->state pointer should never be used. If
> >     you need
> >     >     the full
> >     >     >>> atomic state then plumb it through from the top.
> >     >     >>
> >     >     >> Hmm noted.
> >     >     >>
> >     >     >>
> >     >     >>>
> >     >     >>>> + intel_vrr_is_capable(connector) &&
> >     >     >>>> + intel_vrr_is_in_range(connector, vrefresh))
> >     >     >>>> +        return
> >     intel_panel_highest_vrefresh_mode(connector);
> >     >     >>> What we want is the fixed mode that matches the current
> >     >     adjusted mode
> >     >     >>> exactly except for vtotal, and I think we also want to
> >     >     maintain the
> >     >     >>> vsync pulse location relative to vtotal.
> >     >     >>
> >     >     >> Oh alright. I was thinking the issue is in the best mode
> >     logic
> >     >     which
> >     >     >> is resulting in lower mode getting picked when we wanted
> >     a higher
> >     >     >> mode as best fixed mode.
> >     >     >>
> >     >     >> I was under the impression that since the vsync start/end =
of
> >     >     lower is
> >     >     >> not the same with the higher mode and since this cannot be
> >     >     modified
> >     >     >> on the fly, it results in full modeset.
> >     >     >>
> >     >     >> However, as you said, vsync start/end can be modified
> >     indeed the
> >     >     >> problem becomes:
> >     >     >>
> >     >     >> - we are not scaling the vsync start/end similar to what
> >     we are
> >     >     doing
> >     >     >> for vtotal.
> >     >     >> - even if we do that, we need to remove the check for vsyn=
c
> >     >     start/end
> >     >     >> for fastboot.
> >     >     >>
> >     >     >> Another consideration is that is the vsync_start should be
> >     >     inside the
> >     >     >> vrr guardband, but I think if the vsync_start scales up
> >     then it
> >     >     will
> >     >     >> still be inside the guardband so we should be covered.
> >     >     >>
> >     >     >>
> >     >     >>>
> >     >     >>> We should in fact fix the vsync_start/end mess first.
> >     >     >>
> >     >     >> You mean the existing vsync_start/end change due to AS SDP
> >     >     thing? Or
> >     >     >> you mean the above mentioned scaling up?
> >     >     >>
> >     >     >>
> >     >     >>> We need to add
> >     >     >>> TRANS_VSYNC handling to the LRR codepaths and allow that
> >     to change
> >     >     >>> during fastsets. And intel_panel_compute_config() needs t=
o
> >     >     preserve
> >     >     >>> the vtotal-vsync distance when adjusting vtotal. I think
> >     that
> >     >     should
> >     >     >>> all be fine for DP since it doesn't really use
> >     TRANS_VSYNC for
> >     >     >>> anything.
> >     >     >>
> >     >     >> Hmm I think I got some direction here. Thanks for making i=
t
> >     >     clearer.
> >     >     >
> >     >     >
> >     >     > Hi Ville,
> >     >     >
> >     >     > Going through the Bspec, I have a query on the TRANS_VSYNC
> >     part.
> >     >     >
> >     >     > For NVL onwards, the TRANS_VSYNC seems to be deprecated. As=
 I
> >     >     > understand, this is no more used with VRR timing
> >     generator, instead
> >     >     > TRANS_VRR_VSYNC is used.
> >     >     > So we can avoid reading/writing it completely for
> >     platforms that
> >     >     > support VRR Timing Generator.
> >     >     >
> >     >     > But for platforms using the legacy timing generator, BSpec
> >     says
> >     >     > TRANS_VSYNC should not be changed while transcoder/port
> >     are enabled.
> >     >     > Given that, should we treat TRANS_VSYNC updates as
> >     modeset-only on
> >     >     > legacy TG platforms, and only allow the fastset path where
> VRR
> >     >     TG is
> >     >     > always used?
> >     >     >
> >     >     > Just wanted to make sure I=E2=80=99m interpreting your sugg=
estion
> >     correctly
> >     >     > before changing the fastset checks.
> >     >     >
> >     >     > Thanks,
> >     >     > Ankit
> >     >     >
> >     >
> >     >     Just an update:
> >     >
> >     >     Maintaining vtotal-vsync pulse seems to be working, along
> >     with the
> >     >     change to always use highest RR mode as best mode.
> >     >
> >     >
> >     > I see that the patch selects the highest refresh rate during
> >     > compute_config.
> >     > Would that be sufficient to allow VRR based fastset when userspac=
e
> >     > requests 60Hz at the initial modeset from userspace?
> >
> >
> >     With this patch we only select the highest refresh rate mode when
> >     allow_modeset is not set (i.e. seamless path).
> >     For the initial modeset from userspace, I think the allow_modeset i=
s
> >     set, so we still pick the nearest fixed mode for the requested
> >     refresh rate.
> >
> >     >
> >     > I think what we might need is that during the very first hand
> >     off to
> >     > the kernel driver, is when it always internally sets the crtc sta=
te
> >     > mode timings
> >     > for the highest refresh rate mode such that when the usersapce
> >     > requests to set the preferred mode of 60 Hz,
> >     > the mode or the crtc timings would be set the only difference
> >     would be
> >     > the Vtotal and it will meet the VRR fastset requirements and
> >     will be
> >     > able to achieve this 60 Hz using VRR
> >
> >     To clarify, there are two kinds of panels with fixed modes we need =
to
> >     consider here:
> >
> >     Type 1: Modes with different clocks (e.g. 60Hz @ 347MHz, 120Hz @
> >     695MHz)
> >
> >     "2880x1800": 60 347660 2880 2928 2960 3040 1800 1803 1809 1906
> >     0x48 0xa
> >     "2880x1800": 120 695310 2880 2928 2960 3040 1800 1803 1809 1906
> >     0x40 0xa
> >     For such panels, it is not possible to seamlessly switch from a
> >     lower RR
> >     mode to a higher RR mode, since at lower clock we cannot increase t=
he
> >     clock without a full modeset.
> >     But seamless switch from 120Hz to 60Hz can be achieved by running
> >     at the
> >     same (higher) clock and just extending the vtotal.
> >
> >     Type 2: Modes with same clock but different vtotal
> >
> >     "2880x1800": 60 709633 2880 2888 2920 3080 1800 3800 3816 3840
> >     0x48 0xa
> >
> >     "2880x1800": 120 709633 2880 2888 2920 3080 1800 1880 1896 1920
> >     0x40 0xa
> >
> >     Here the clock is the same, so we can go from higher RR to lower
> >     RR or
> >     vice versa just by changing the vtotal.
> >     Seamless switching is possible in both directions.
> >
> >
> > Yes correct, in our case this is how the modes are manifested, 120Hz
> > and 60Hz both have the same clock
> > However the preferred mode marked is 60Hz. However what we are
> > observing is that the seamless switch
> > is not happening from 60Hz to 120Hz and the userspace still puts both
> > these modes into separate config groups.
> >
> > So our proposal was that in case of the panels where both the panel
> > modes have same Pixel clock and only differ
> > in Vtotal, the panel should always set the highest refresh rate (with
> > or without Allow modeset ). So then lower refresh rate
> > 60 Hz can always be achieved using VRR seamlessly later when switch to
> > that mode is requested without allow modeset flag.
>
>
> Hmm currently we are not making any distinction between these two types
> of panels at the time of selecting the best fixed mode.
>
> If it makes sense, perhaps for VRR capable seamless DRRS panels (which
> have different clocks, same vtotal) we can avoid selecting High RR mode
> if the allow modeset flag is set.
>
> This will help users who really want to set lower RR mode with a lower
> clock can get the best fixed lower RR mode (if they set the allow
> modeset flag)
>
> For other VRR capable panels we can go always with high RR fixed mode
> irrespective of allow modeset flag.
>
> But I need to try this out and check if it works for different cases.
>
>
> >
> >     So if the initial modeset is at a lower RR:
> >     For Type 1: a full modeset is needed to go to higher RR. After
> >     that, any
> >     lower RR can be reached seamlessly.
> >     For Type 2: switching to higher RR and back to lower RR can both
> >     be done
> >     seamlessly.
> >
> >
> > For Type 2 panels, could we confirm that this switch is happening
> > correctly in both directions using
> > the kms_vrr test switching refresh rates in the other direction as well=
?
>
>
> Currently seamless switch to higher mode in this case was prevented by
> the vsync start/end change.
>
> As suggested by Ville, we need to remove the check for vsync start/end
> from fastset [1] and also preserve the distance between vtotal-vsync
> while adjusting vtotal [2].
>
> With these changes (sent only  to trybot) , the seamless switch is
> correctly taking place. I am working on these and will include these in
> next revision.
>
> Trybot
>
> [1] https://patchwork.freedesktop.org/patch/723253/?series=3D165364&rev=
=3D3
>
> [2] https://patchwork.freedesktop.org/patch/723036/?series=3D165364&rev=
=3D3
>
>
> Thanks,
>
> Ankit
>
> >
> > Regards
> > Manasi
> >
> >
> >
> >     >
> >     > From the userspace perspective, 60Hz will still be the preferred
> >     mode
> >     > as advertised by the panel, but internally if the driver can alwa=
ys
> >     > set the timings for the highest refresh rate, then switching from
> >     > lower refresh rate 60 Hz to higher refresh rate 120Hz would be
> >     > possible seamlessly.
> >
> >
> >     The problem with always programming the highest refresh rate
> >     timings on
> >     the initial modeset is Type 1 panels.
> >
> >     Suppose the user explicitly requests 60Hz (with allow_modeset flag)
> >     which on a Type 1 panel means 347MHz clock for power savings.
> >
> >     If the driver internally programs 120Hz @ 695MHz timings with vtota=
l
> >     extended to produce 60Hz output,
> >
> >     the user ends up running at the higher clock. This defeats the
> >     purpose
> >     of selecting the lower RR mode.
> >
> >     So in the patch I have gone with the approach:
> >
> >     If user sets allow_modeset, then do not go with highest RR mode, bu=
t
> >     find the best fixed mode as per existing logic.
> >
> >     But if it does not sets allow_modeset, then go with the highest RR
> >     mode
> >     (later adjust the vtotal).
> >
> >
> >     Regards,
> >
> >     Ankit
> >
> >
> >     >
> >     > Regards
> >     > Manasi
> >     >
> >     >
> >     >     I still need to address the comment about avoid
> >     >     deriving allow_modeset
> >     >     from connector state directly.
> >     >
> >     >     Cc:
> >     >
> >     >     Manasi Navare <navaremanasi@google.com>
> >     >
> >     >
> >     >     Regards,
> >     >
> >     >     Ankit
> >     >
> >     >
> >     >     >
> >     >     >>
> >     >     >>
> >     >     >> Regards,
> >     >     >>
> >     >     >> Ankit
> >     >     >>
> >     >     >>>
> >     >     >>> +
> >     >     >>>> list_for_each_entry(fixed_mode,
> >     >     >>>> &connector->panel.fixed_modes, head) {
> >     >     >>>>           int fixed_mode_vrefresh =3D
> >     >     drm_mode_vrefresh(fixed_mode);
> >     >     >>>>   -        if (is_best_fixed_mode(connector, vrefresh,
> >     >     >>>> +        if (is_best_fixed_mode(vrefresh,
> >     >     >>>> fixed_mode_vrefresh, best_mode))
> >     >     >>>>               best_mode =3D fixed_mode;
> >     >     >>>>       }
> >     >     >>>> @@ -213,10 +213,11 @@ enum drrs_type
> >     >     intel_panel_drrs_type(struct
> >     >     >>>> intel_connector *connector)
> >     >     >>>>   }
> >     >     >>>>     int intel_panel_compute_config(struct intel_connecto=
r
> >     >     *connector,
> >     >     >>>> -                   struct drm_display_mode
> *adjusted_mode)
> >     >     >>>> +                   struct drm_display_mode
> *adjusted_mode,
> >     >     >>>> +                   const struct drm_connector_state
> >     *conn_state)
> >     >     >>>>   {
> >     >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(connector, adjusted_mode);
> >     >     >>>> + intel_panel_fixed_mode(connector, adjusted_mode,
> >     conn_state);
> >     >     >>>>       int vrefresh, fixed_mode_vrefresh;
> >     >     >>>>       bool is_vrr;
> >     >     >>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct
> >     >     intel_connector
> >     >     >>>> *connector,
> >     >     >>>>                  const struct drm_display_mode *mode)
> >     >     >>>>   {
> >     >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(connector, mode);
> >     >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
> >     >     >>>>         if (!fixed_mode)
> >     >     >>>>           return MODE_OK;
> >     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
> >     >     >>>> b/drivers/gpu/drm/i915/display/intel_panel.h
> >     >     >>>> index 2f7a317995ea..c1189a20c8b2 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> >     >     >>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
> >     >     >>>> intel_panel_preferred_fixed_mode(struct intel_connector
> >     >     *connector);
> >     >     >>>>   const struct drm_display_mode *
> >     >     >>>>   intel_panel_fixed_mode(struct intel_connector
> *connector,
> >     >     >>>> -               const struct drm_display_mode *mode);
> >     >     >>>> +               const struct drm_display_mode *mode,
> >     >     >>>> +               const struct drm_connector_state
> >     *conn_state);
> >     >     >>>>   const struct drm_display_mode *
> >     >     >>>> intel_panel_downclock_mode(struct intel_connector
> >     *connector,
> >     >     >>>>                  const struct drm_display_mode
> >     *adjusted_mode);
> >     >     >>>> @@ -47,7 +48,8 @@ enum drm_mode_status
> >     >     >>>>   intel_panel_mode_valid(struct intel_connector
> *connector,
> >     >     >>>>                  const struct drm_display_mode *mode);
> >     >     >>>>   int intel_panel_compute_config(struct intel_connector
> >     >     *connector,
> >     >     >>>> -                   struct drm_display_mode
> >     *adjusted_mode);
> >     >     >>>> +                   struct drm_display_mode
> *adjusted_mode,
> >     >     >>>> +                   const struct drm_connector_state
> >     >     *conn_state);
> >     >     >>>>   void intel_panel_add_edid_fixed_modes(struct
> >     intel_connector
> >     >     >>>> *connector,
> >     >     >>>>                         bool use_alt_fixed_modes);
> >     >     >>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct
> >     intel_connector
> >     >     >>>> *connector);
> >     >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >     >>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >     >>>> index 2e1af9e869de..e07c1070a3ec 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >     >>>> @@ -797,7 +797,7 @@
> >     >     intel_sdvo_create_preferred_input_timing(struct
> >     >     >>>> intel_sdvo *intel_sdvo,
> >     >     >>>>         if (IS_LVDS(intel_sdvo_connector)) {
> >     >     >>>>           const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base,
> >     mode);
> >     >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base,
> mode,
> >     >     NULL);
> >     >     >>>>             if (fixed_mode->hdisplay !=3D args.width ||
> >     >     >>>> fixed_mode->vdisplay !=3D args.height)
> >     >     >>>> @@ -1396,11 +1396,11 @@ static int
> >     >     intel_sdvo_compute_config(struct
> >     >     >>>> intel_encoder *encoder,
> >     >     >>>> pipe_config->sdvo_tv_clock =3D true;
> >     >     >>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
> >     >     >>>>           const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base,
> >     mode);
> >     >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base,
> mode,
> >     >     >>>> conn_state);
> >     >     >>>>           int ret;
> >     >     >>>>             ret =3D
> >     >     >>>> intel_panel_compute_config(&intel_sdvo_connector->base,
> >     >     >>>> - adjusted_mode);
> >     >     >>>> + adjusted_mode, conn_state);
> >     >     >>>>           if (ret)
> >     >     >>>>               return ret;
> >     >     >>>>   @@ -1562,7 +1562,7 @@ static void
> >     intel_sdvo_pre_enable(struct
> >     >     >>>> intel_atomic_state *state,
> >     >     >>>>       /* lvds has a special fixed output timing. */
> >     >     >>>>       if (IS_LVDS(intel_sdvo_connector)) {
> >     >     >>>>           const struct drm_display_mode *fixed_mode =3D
> >     >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base,
> >     mode);
> >     >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base,
> mode,
> >     >     >>>> conn_state);
> >     >     >>>> intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
> >     >     >>>>       } else {
> >     >     >>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >     >>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >     >>>> index 76e8cd0f65a4..bfe465443d20 100644
> >     >     >>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >     >>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >     >>>> @@ -280,7 +280,7 @@ static int
> >     intel_dsi_compute_config(struct
> >     >     >>>> intel_encoder *encoder,
> >     >     >>>>       pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_R=
GB;
> >     >     >>>> pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >     >     >>>>   -    ret =3D intel_panel_compute_config(intel_connecto=
r,
> >     >     >>>> adjusted_mode);
> >     >     >>>> +    ret =3D intel_panel_compute_config(intel_connector,
> >     >     >>>> adjusted_mode, conn_state);
> >     >     >>>>       if (ret)
> >     >     >>>>           return ret;
> >     >     >>>>   --
> >     >     >>>> 2.45.2
> >     >
> >
>

--00000000000033826c0651906f0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Ankit. Its great that with these fixes we can ge=
t seamless switch between 60 and 120 in both directions.<div>Do you have an=
 ETA of when these will be ready to be sent to the M-L so we cab review the=
m and get them landed?</div><div><br></div><div>Regards</div><div>Manasi</d=
iv></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, May 8, 2026 at 12:48=E2=80=AFAM Nautiyal, =
Ankit K &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.com">ankit.k.nautiyal@=
intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><br>
On 5/7/2026 11:35 PM, Manasi Navare wrote:<br>
&gt; Thanks Ankit for the detailed feedback and analysis, please find some =
<br>
&gt; comments below :<br>
&gt;<br>
&gt; On Thu, May 7, 2026 at 4:52=E2=80=AFAM Nautiyal, Ankit K <br>
&gt; &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.com" target=3D"_blank">an=
kit.k.nautiyal@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/6/2026 9:23 PM, Manasi Navare wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Ankit, Ville, Jani,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Thank you for the patch and the discussion her=
e. Please see some<br>
&gt;=C2=A0 =C2=A0 =C2=A0of my<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; comments/feedback below:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On Wed, May 6, 2026 at 12:25=E2=80=AFAM Nautiy=
al, Ankit K<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.c=
om" target=3D"_blank">ankit.k.nautiyal@intel.com</a>&gt; wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0On 5/4/2026 6:47 PM, Nautiy=
al, Ankit K wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; On 4/29/2026 10:30 PM,=
 Nautiyal, Ankit K wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; On 4/29/2026 5:44 =
PM, Ville Syrj=C3=A4l=C3=A4 wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; On Tue, Apr 28=
, 2026 at 02:03:23PM +0530, Ankit Nautiyal<br>
&gt;=C2=A0 =C2=A0 =C2=A0wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_pane=
l_fixed_mode() intends to choose a fixed mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0at or<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0above<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; requested =
refresh rate for VRR panels, so the requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0refresh can be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; reached by=
 extending vblank.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; This is ca=
lled in compute config to find the &#39;best&#39; fixed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0mode for a<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; requested =
mode and also called during mode valid phase to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0prune the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; unsupporte=
d fixed modes.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; For Non-VR=
R panels there is no issue:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - When a u=
ser wants to do a full modeset (sets<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0DRM_MODE_ALLOW_MODESET<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 flag) with a custom mode, the intel_panel_fixed_mode()<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0gives the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 with refresh rate nearest to the requested mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - Seamless=
 switch to a lower mode is only possible if the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0platform has<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 support for Double buffered MN and the sink is<br>
&gt;=C2=A0 =C2=A0 =C2=A0Seamless-DRRS<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; capable.<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 In this case the user sets a lower refresh rate mode and<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0doesn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; set<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 the DRM_MODE_ALLOW_MODESET flag the<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_panel_fixed_mode()<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; returns<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 again the fixed mode whose refresh rate is nearest<br>
&gt;=C2=A0 =C2=A0 =C2=A0to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - Since Du=
ble buffered MN is not supported on LNL+, the<br>
&gt;=C2=A0 =C2=A0 =C2=A0seamless<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; switch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 is not possible for such panels from LNL+.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; For VRR pa=
nels the current logic has some issues:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - For VRR =
panels intel_panel_fixed_mode() intends to<br>
&gt;=C2=A0 =C2=A0 =C2=A0choose a<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0fixed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 at or above the requested refresh rate so the requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0refresh<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; can be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 reached by extending vblank.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - However,=
 as per the current logic the helper can return a<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0lower<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; refresh<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 rate mode, if the lower refresh rate mode is first<br>
&gt;=C2=A0 =C2=A0 =C2=A0in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; of fixed<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 mode. Later, if the selected fixed mode&#39;s refresh<br>
&gt;=C2=A0 =C2=A0 =C2=A0rate &lt; the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; requested<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 mode&#39;s refresh rate, then the requested rate is<br>
&gt;=C2=A0 =C2=A0 =C2=A0matched by<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; extending<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 the vblank.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - In case =
of a full modeset request with a custom mode this<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0is not a<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 problem. But for the seamless switch features like<br>
&gt;=C2=A0 =C2=A0 =C2=A0LRR (Lower<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Refresh<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 Rate) and the Seamless-DRRS this creates a problem<br>
&gt;=C2=A0 =C2=A0 =C2=A0as this<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; results in=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 change in vsync_start/end and resulting in a full<br>
&gt;=C2=A0 =C2=A0 =C2=A0modeset.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - Furtherm=
ore, as with the Non-VRR panel case, the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Seamless-DRRS is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; not<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 supported on LNL+, but for VRR panels, the vblank can be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0extended<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 similar to LRR case. But due to the above mentioned<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0problem in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0 intel_panel_fixed_mode() this also results in full<br>
&gt;=C2=A0 =C2=A0 =C2=A0modeset.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; To solve t=
hese problems for the VRR panels, identify if<br>
&gt;=C2=A0 =C2=A0 =C2=A0the user<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; wants a<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; full modes=
et or expects seamless switch. If seamless switch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0to a lower<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; mode is de=
sired, make intel_panel_fixed_mode() return<br>
&gt;=C2=A0 =C2=A0 =C2=A0the highest<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; refresh ra=
te mode, provided the requested rate is in vrr<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0range. This<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; will then =
be modified to extend the vblank to provide<br>
&gt;=C2=A0 =C2=A0 =C2=A0the desired<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; refresh ra=
te.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; This is pa=
rticularly needed for DRRS panels on platforms<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0without the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; double buf=
fered M/N support (display version 20+), where<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0seamless<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; clock<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; changes ar=
e not possible.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; To underst=
and the user requirement for full<br>
&gt;=C2=A0 =C2=A0 =C2=A0modeset/seamless<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; switch, th=
e<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_pane=
l_fixed_mode() and<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_panel_compute_config() need<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; access to<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; the connec=
tor state to check the allow_modeset flag.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Add a null=
able conn_state parameter to both. The mode_valid<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0callers<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; pass<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; NULL since=
 they have no atomic state and the compute_config<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0callers<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; pass<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; their conn=
_state.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Also remov=
e the VRR check from is_best_fixed_mode()<br>
&gt;=C2=A0 =C2=A0 =C2=A0since the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; selection =
is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; handled up=
front in intel_panel_fixed_mode().<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Signed-off=
-by: Ankit Nautiyal &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.com" targe=
t=3D"_blank">ankit.k.nautiyal@intel.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/icl_dsi.c=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/intel_dp.c=C2=A0=C2=A0=C2=A0 |=C2=A0 6 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/intel_dsi.c=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/intel_dvo.c=C2=A0=C2=A0 |=C2=A0 6 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/intel_lvds.c=C2=A0 |=C2=A0 4 +--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/intel_panel.c | 35<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; ++++++++++=
+-----------<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/intel_panel.h |=C2=A0 6 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/intel_sdvo.c=C2=A0 |=C2=A0 8 ++---<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gp=
u/drm/i915/display/vlv_dsi.c=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 9 f=
iles changed, 37 insertions(+), 34 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git=
 a/drivers/gpu/drm/i915/display/icl_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/icl_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index afba=
a0465842..1efe81404d01 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/icl_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/icl_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -1671,7=
 +1671,7 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0gen11_dsi_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_enco=
der *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 pipe_config-&gt;sink_format =3D INTEL_OUTPUT_FORMAT_R=
GB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; pipe_confi=
g-&gt;output_format =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=
=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_m=
ode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0 ret =3D intel_panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_m=
ode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 dif=
f --git a/drivers/gpu/drm/i915/display/intel_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/intel_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 35b8=
fb5740aa..f014ce28e69f 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/intel_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/intel_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -1588,7=
 +1588,7 @@ intel_dp_mode_valid(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0drm_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *_connecto=
r,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (intel_dp_hdisplay_bad(display, mode-&gt;hdisplay)=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return MODE_H_ILLEGAL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=
=C2=A0=C2=A0=C2=A0 fixed_mode =3D intel_panel_fixed_mode(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0 fixed_mode =3D intel_panel_fixed_mode(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (intel_dp_is_edp(intel_dp) &amp;&amp; fixed_mode) =
{<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 status =3D intel_panel_mode_v=
alid(connector, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (status !=3D MODE_OK)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -3577,9=
 +3577,9 @@ intel_dp_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_encoder<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *encoder,<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_dp-&=
gt;attached_connector;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int ret =3D 0, link_bpp_x16;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=
=C2=A0=C2=A0=C2=A0 fixed_mode =3D intel_panel_fixed_mode(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0 fixed_mode =3D intel_panel_fixed_mode(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (intel_dp_is_edp(intel_dp) &amp;&amp; fixed_mode) =
{<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(connec=
tor,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(connec=
tor,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retur=
n ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git=
 a/drivers/gpu/drm/i915/display/intel_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/intel_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 9005=
c1f5d857..a480bb79dca7 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/intel_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/intel_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -64,7 +=
64,7 @@ enum drm_mode_status<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_dsi_mode_valid(struct=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drm_connec=
tor *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_display *display =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_d=
isplay(connector-&gt;dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *intel_connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_c=
onnector(connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(intel_connector, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(intel_connector, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int max_dotclk =3D display-&gt;cdclk.max_dotclk_freq;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 enum drm_mode_status status;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 dif=
f --git a/drivers/gpu/drm/i915/display/intel_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/intel_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 405b=
33aca9dd..0ec25d895777 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/intel_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/intel_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -224,7 =
+224,7 @@ intel_dvo_mode_valid(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0drm_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *_connecto=
r,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_c=
onnector(_connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_dvo *intel_dvo =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_attached_dvo(connecto=
r);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(connector, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(connector, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int max_dotclk =3D display-&gt;cdclk.max_dotclk_freq;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int target_clock =3D mode-&gt;clock;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 enum drm_mode_status status;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -259,7 =
+259,7 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_dvo_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_enco=
der *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_c=
onnector(conn_state-&gt;connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode *adjusted_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; &amp;pipe_=
config-&gt;hw.adjusted_mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(intel_dvo-&gt;attached_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_m=
ode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(intel_dvo-&gt;attached_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_m=
ode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 * If we have timings from the BIOS for the<br>
&gt;=C2=A0 =C2=A0 =C2=A0panel, put<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0them in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -270,7 =
+270,7 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_dvo_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_enco=
der *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (fixed_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_conf=
ig(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(connec=
tor,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retur=
n ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git=
 a/drivers/gpu/drm/i915/display/intel_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/intel_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index cc6d=
4bfcff10..2e30bc3f1e62 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/intel_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/intel_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -396,7 =
+396,7 @@ intel_lvds_mode_valid(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0drm_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *_connecto=
r,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_display *display =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_d=
isplay(_connector-&gt;dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 struct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_c=
onnector(_connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(connector, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(connector, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int max_pixclk =3D display-&gt;cdclk.max_dotclk_freq;=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 enum drm_mode_status status;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 @@ =
-460,7 +460,7 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_lvds_compute_config(s=
truct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_enco=
der *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 * with the panel scaling set up to source from =
the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0H/VDisplay<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 * of the original mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0 ret =3D intel_panel_compute_config(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0 ret =3D intel_panel_compute_config(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 dif=
f --git a/drivers/gpu/drm/i915/display/intel_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/intel_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 5e91=
8ee0c8ea..65d017371d78 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/intel_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/intel_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -59,24 =
+59,13 @@ intel_panel_preferred_fixed_mode(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_conn=
ector *connector)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode, head);<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 }<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -st=
atic bool is_best_fixed_mode(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0*connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 int vrefresh, int fixed_mode_vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +static bo=
ol is_best_fixed_mode(int vrefresh, int<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0fixed_mode_vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0*best_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 /* we want to always return something */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (!best_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=
=C2=A0=C2=A0=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0 * With VRR always pick a mode with equal/higher than<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0 * vrefresh, which we can then reduce to match the<br>
&gt;=C2=A0 =C2=A0 =C2=A0requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0 * vrefresh by extending the vblank length.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0 if (intel_vrr_is_in_range(connector, vrefresh) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_vr=
r_is_in_range(connector, fixed_mode_vrefresh) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fixed_mode_vrefresh &lt; vrefresh)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 /* pick the fixed_mode that is closest in terms of<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0vrefresh */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return abs(fixed_mode_vrefresh - vrefresh) &lt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; abs(drm_mo=
de_vrefresh(best_mode) - vrefresh);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -84,15 =
+73,26 @@ static bool is_best_fixed_mode(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_conn=
ector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0 const struct drm_display_mode *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 int=
el_panel_fixed_mode(struct intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_display_mode *mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_display_mode *mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_connector_state<br>
&gt;=C2=A0 =C2=A0 =C2=A0*conn_state)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0*best_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int vrefresh =3D drm_mode_vrefresh(mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 +=
=C2=A0=C2=A0=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0 * With VRR always pick the highest refresh rate mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0 * which we can then reduce to match the requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0 * vrefresh by extending the vblank length.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0 if (conn_state &amp;&amp; !conn_state-&gt;state-&gt;allow_modeset=
 &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; The foo_state-=
&gt;state pointer should never be used. If<br>
&gt;=C2=A0 =C2=A0 =C2=A0you need<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0the full<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; atomic state t=
hen plumb it through from the top.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Hmm noted.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_vr=
r_is_capable(connector) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_vr=
r_is_in_range(connector, vrefresh))<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_panel_highest_vrefresh_mode(connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; What we want i=
s the fixed mode that matches the current<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0adjusted mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; exactly except=
 for vtotal, and I think we also want to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0maintain the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; vsync pulse lo=
cation relative to vtotal.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Oh alright. I was =
thinking the issue is in the best mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0logic<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0which<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; is resulting in lo=
wer mode getting picked when we wanted<br>
&gt;=C2=A0 =C2=A0 =C2=A0a higher<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; mode as best fixed=
 mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; I was under the im=
pression that since the vsync start/end of<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0lower is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; not the same with =
the higher mode and since this cannot be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0modified<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; on the fly, it res=
ults in full modeset.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; However, as you sa=
id, vsync start/end can be modified<br>
&gt;=C2=A0 =C2=A0 =C2=A0indeed the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; problem becomes:<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; - we are not scali=
ng the vsync start/end similar to what<br>
&gt;=C2=A0 =C2=A0 =C2=A0we are<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0doing<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; for vtotal.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; - even if we do th=
at, we need to remove the check for vsync<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0start/end<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; for fastboot.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Another considerat=
ion is that is the vsync_start should be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0inside the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; vrr guardband, but=
 I think if the vsync_start scales up<br>
&gt;=C2=A0 =C2=A0 =C2=A0then it<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0will<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; still be inside th=
e guardband so we should be covered.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; We should in f=
act fix the vsync_start/end mess first.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; You mean the exist=
ing vsync_start/end change due to AS SDP<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0thing? Or<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; you mean the above=
 mentioned scaling up?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; We need to add=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; TRANS_VSYNC ha=
ndling to the LRR codepaths and allow that<br>
&gt;=C2=A0 =C2=A0 =C2=A0to change<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; during fastset=
s. And intel_panel_compute_config() needs to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0preserve<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; the vtotal-vsy=
nc distance when adjusting vtotal. I think<br>
&gt;=C2=A0 =C2=A0 =C2=A0that<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0should<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; all be fine fo=
r DP since it doesn&#39;t really use<br>
&gt;=C2=A0 =C2=A0 =C2=A0TRANS_VSYNC for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; anything.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Hmm I think I got =
some direction here. Thanks for making it<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0clearer.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Ville,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Going through the Bspe=
c, I have a query on the TRANS_VSYNC<br>
&gt;=C2=A0 =C2=A0 =C2=A0part.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; For NVL onwards, the T=
RANS_VSYNC seems to be deprecated. As I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; understand, this is no=
 more used with VRR timing<br>
&gt;=C2=A0 =C2=A0 =C2=A0generator, instead<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; TRANS_VRR_VSYNC is use=
d.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; So we can avoid readin=
g/writing it completely for<br>
&gt;=C2=A0 =C2=A0 =C2=A0platforms that<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; support VRR Timing Gen=
erator.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; But for platforms usin=
g the legacy timing generator, BSpec<br>
&gt;=C2=A0 =C2=A0 =C2=A0says<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; TRANS_VSYNC should not=
 be changed while transcoder/port<br>
&gt;=C2=A0 =C2=A0 =C2=A0are enabled.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Given that, should we =
treat TRANS_VSYNC updates as<br>
&gt;=C2=A0 =C2=A0 =C2=A0modeset-only on<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; legacy TG platforms, a=
nd only allow the fastset path where VRR<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0TG is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; always used?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Just wanted to make su=
re I=E2=80=99m interpreting your suggestion<br>
&gt;=C2=A0 =C2=A0 =C2=A0correctly<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; before changing the fa=
stset checks.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt; Ankit<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Just an update:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Maintaining vtotal-vsync pu=
lse seems to be working, along<br>
&gt;=C2=A0 =C2=A0 =C2=A0with the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0change to always use highes=
t RR mode as best mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I see that the patch selects the highest refre=
sh rate during<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; compute_config.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Would that be sufficient to allow VRR based fa=
stset when userspace<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; requests 60Hz at the initial modeset from user=
space?<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0With this patch we only select the highest refresh =
rate mode when<br>
&gt;=C2=A0 =C2=A0 =C2=A0allow_modeset is not set (i.e. seamless path).<br>
&gt;=C2=A0 =C2=A0 =C2=A0For the initial modeset from userspace, I think the=
 allow_modeset is<br>
&gt;=C2=A0 =C2=A0 =C2=A0set, so we still pick the nearest fixed mode for th=
e requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0refresh rate.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; I think what we might need is that during the =
very first hand<br>
&gt;=C2=A0 =C2=A0 =C2=A0off to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; the kernel driver, is when it always internall=
y sets the crtc state<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; mode timings<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; for the highest refresh rate mode such that wh=
en the usersapce<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; requests to set the preferred mode of 60 Hz,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; the mode or the crtc timings would be set the =
only difference<br>
&gt;=C2=A0 =C2=A0 =C2=A0would be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; the Vtotal and it will meet the VRR fastset re=
quirements and<br>
&gt;=C2=A0 =C2=A0 =C2=A0will be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; able to achieve this 60 Hz using VRR<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0To clarify, there are two kinds of panels with fixe=
d modes we need to<br>
&gt;=C2=A0 =C2=A0 =C2=A0consider here:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Type 1: Modes with different clocks (e.g. 60Hz @ 34=
7MHz, 120Hz @<br>
&gt;=C2=A0 =C2=A0 =C2=A0695MHz)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;2880x1800&quot;: 60 347660 2880 2928 2960 304=
0 1800 1803 1809 1906<br>
&gt;=C2=A0 =C2=A0 =C2=A00x48 0xa<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;2880x1800&quot;: 120 695310 2880 2928 2960 30=
40 1800 1803 1809 1906<br>
&gt;=C2=A0 =C2=A0 =C2=A00x40 0xa<br>
&gt;=C2=A0 =C2=A0 =C2=A0For such panels, it is not possible to seamlessly s=
witch from a<br>
&gt;=C2=A0 =C2=A0 =C2=A0lower RR<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode to a higher RR mode, since at lower clock we c=
annot increase the<br>
&gt;=C2=A0 =C2=A0 =C2=A0clock without a full modeset.<br>
&gt;=C2=A0 =C2=A0 =C2=A0But seamless switch from 120Hz to 60Hz can be achie=
ved by running<br>
&gt;=C2=A0 =C2=A0 =C2=A0at the<br>
&gt;=C2=A0 =C2=A0 =C2=A0same (higher) clock and just extending the vtotal.<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Type 2: Modes with same clock but different vtotal<=
br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;2880x1800&quot;: 60 709633 2880 2888 2920 308=
0 1800 3800 3816 3840<br>
&gt;=C2=A0 =C2=A0 =C2=A00x48 0xa<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;2880x1800&quot;: 120 709633 2880 2888 2920 30=
80 1800 1880 1896 1920<br>
&gt;=C2=A0 =C2=A0 =C2=A00x40 0xa<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Here the clock is the same, so we can go from highe=
r RR to lower<br>
&gt;=C2=A0 =C2=A0 =C2=A0RR or<br>
&gt;=C2=A0 =C2=A0 =C2=A0vice versa just by changing the vtotal.<br>
&gt;=C2=A0 =C2=A0 =C2=A0Seamless switching is possible in both directions.<=
br>
&gt;<br>
&gt;<br>
&gt; Yes correct, in our case this is how the modes are manifested, 120Hz <=
br>
&gt; and 60Hz both have the same clock<br>
&gt; However the preferred mode marked is 60Hz. However what we are <br>
&gt; observing is that the seamless switch<br>
&gt; is not happening from 60Hz to 120Hz and the userspace still puts both =
<br>
&gt; these modes into separate config groups.<br>
&gt;<br>
&gt; So our proposal was that in case of the panels where both the panel <b=
r>
&gt; modes have same Pixel clock and only differ<br>
&gt; in Vtotal, the panel should always set the highest refresh rate (with =
<br>
&gt; or without Allow modeset ). So then lower refresh rate<br>
&gt; 60 Hz can always be achieved using VRR seamlessly later when switch to=
 <br>
&gt; that mode is requested without allow modeset flag.<br>
<br>
<br>
Hmm currently we are not making any distinction between these two types <br=
>
of panels at the time of selecting the best fixed mode.<br>
<br>
If it makes sense, perhaps for VRR capable seamless DRRS panels (which <br>
have different clocks, same vtotal) we can avoid selecting High RR mode <br=
>
if the allow modeset flag is set.<br>
<br>
This will help users who really want to set lower RR mode with a lower <br>
clock can get the best fixed lower RR mode (if they set the allow <br>
modeset flag)<br>
<br>
For other VRR capable panels we can go always with high RR fixed mode <br>
irrespective of allow modeset flag.<br>
<br>
But I need to try this out and check if it works for different cases.<br>
<br>
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0So if the initial modeset is at a lower RR:<br>
&gt;=C2=A0 =C2=A0 =C2=A0For Type 1: a full modeset is needed to go to highe=
r RR. After<br>
&gt;=C2=A0 =C2=A0 =C2=A0that, any<br>
&gt;=C2=A0 =C2=A0 =C2=A0lower RR can be reached seamlessly.<br>
&gt;=C2=A0 =C2=A0 =C2=A0For Type 2: switching to higher RR and back to lowe=
r RR can both<br>
&gt;=C2=A0 =C2=A0 =C2=A0be done<br>
&gt;=C2=A0 =C2=A0 =C2=A0seamlessly.<br>
&gt;<br>
&gt;<br>
&gt; For Type 2 panels, could we confirm that this switch is happening <br>
&gt; correctly in both directions using<br>
&gt; the kms_vrr test switching refresh rates in the other direction as wel=
l?<br>
<br>
<br>
Currently seamless switch to higher mode in this case was prevented by <br>
the vsync start/end change.<br>
<br>
As suggested by Ville, we need to remove the check for vsync start/end <br>
from fastset [1] and also preserve the distance between vtotal-vsync <br>
while adjusting vtotal [2].<br>
<br>
With these changes (sent only=C2=A0 to trybot) , the seamless switch is <br=
>
correctly taking place. I am working on these and will include these in <br=
>
next revision.<br>
<br>
Trybot<br>
<br>
[1] <a href=3D"https://patchwork.freedesktop.org/patch/723253/?series=3D165=
364&amp;rev=3D3" rel=3D"noreferrer" target=3D"_blank">https://patchwork.fre=
edesktop.org/patch/723253/?series=3D165364&amp;rev=3D3</a><br>
<br>
[2] <a href=3D"https://patchwork.freedesktop.org/patch/723036/?series=3D165=
364&amp;rev=3D3" rel=3D"noreferrer" target=3D"_blank">https://patchwork.fre=
edesktop.org/patch/723036/?series=3D165364&amp;rev=3D3</a><br>
<br>
<br>
Thanks,<br>
<br>
Ankit<br>
<br>
&gt;<br>
&gt; Regards<br>
&gt; Manasi<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; From the userspace perspective, 60Hz will stil=
l be the preferred<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; as advertised=C2=A0by the panel, but internall=
y if the driver can always<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; set the timings for the highest refresh rate, =
then switching from<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; lower refresh rate 60 Hz to higher refresh rat=
e 120Hz would be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; possible seamlessly.<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0The problem with always programming the highest ref=
resh rate<br>
&gt;=C2=A0 =C2=A0 =C2=A0timings on<br>
&gt;=C2=A0 =C2=A0 =C2=A0the initial modeset is Type 1 panels.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Suppose the user explicitly requests 60Hz (with all=
ow_modeset flag)<br>
&gt;=C2=A0 =C2=A0 =C2=A0which on a Type 1 panel means 347MHz clock for powe=
r savings.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0If the driver internally programs 120Hz @ 695MHz ti=
mings with vtotal<br>
&gt;=C2=A0 =C2=A0 =C2=A0extended to produce 60Hz output,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0the user ends up running at the higher clock. This =
defeats the<br>
&gt;=C2=A0 =C2=A0 =C2=A0purpose<br>
&gt;=C2=A0 =C2=A0 =C2=A0of selecting the lower RR mode.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0So in the patch I have gone with the approach:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0If user sets allow_modeset, then do not go with hig=
hest RR mode, but<br>
&gt;=C2=A0 =C2=A0 =C2=A0find the best fixed mode as per existing logic.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0But if it does not sets allow_modeset, then go with=
 the highest RR<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0(later adjust the vtotal).<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ankit<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Regards<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Manasi<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0I still need to address the=
 comment about avoid<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0deriving=C2=A0allow_modeset=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0from connector state direct=
ly.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Cc:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Manasi Navare &lt;<a href=
=3D"mailto:navaremanasi@google.com" target=3D"_blank">navaremanasi@google.c=
om</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0Ankit<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Ankit<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; list_for_e=
ach_entry(fixed_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; &amp;conne=
ctor-&gt;panel.fixed_modes, head) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int fixed_mode_vrefresh =3D<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0drm_mode_vrefresh(fixed_mod=
e);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (is_best_fixed_mode(connector=
, vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (is_best_fixed_mode(vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; fixed_mode=
_vrefresh, best_mode))<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 best_=
mode =3D fixed_mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -213,10=
 +213,11 @@ enum drrs_type<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_panel_drrs_type(struc=
t<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_conn=
ector *connector)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 }<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0 int intel_panel_compute_config(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0*connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode *adjusted_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode *adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connector_state<br>
&gt;=C2=A0 =C2=A0 =C2=A0*conn_state)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(connector, adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(connector, adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int vrefresh, fixed_mode_vrefresh;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 bool is_vrr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 @@ =
-414,7 +415,7 @@ intel_panel_mode_valid(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *connector=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 const struct drm_display_mode *mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(connector, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(connector, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!fixed_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return MODE_OK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git=
 a/drivers/gpu/drm/i915/display/intel_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/intel_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 2f7a=
317995ea..c1189a20c8b2 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/intel_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/intel_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -32,7 +=
32,8 @@ const struct drm_display_mode *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_pane=
l_preferred_fixed_mode(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0*connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 con=
st struct drm_display_mode *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 int=
el_panel_fixed_mode(struct intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_display_mode *mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_display_mode *mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_connector_state<br>
&gt;=C2=A0 =C2=A0 =C2=A0*conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 con=
st struct drm_display_mode *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_pane=
l_downclock_mode(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0*connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 const struct drm_display_mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0*adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -47,7 +=
48,8 @@ enum drm_mode_status<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 int=
el_panel_mode_valid(struct intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 const struct drm_display_mode *mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 int=
 intel_panel_compute_config(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0*connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0*adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 struct drm_display_mode *adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connector_state<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0*conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 voi=
d intel_panel_add_edid_fixed_modes(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *connector=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool use_alt_fixed_m=
odes);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 voi=
d intel_panel_add_vbt_lfp_fixed_mode(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *connector=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git=
 a/drivers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/intel_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 2e1a=
f9e869de..e07c1070a3ec 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/intel_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -797,7 =
+797,7 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_sdvo_create_preferred=
_input_timing(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_sdvo=
 *intel_sdvo,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_LVDS(intel_sdvo_connector)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode=
 *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(&amp;intel_sdvo_connector-&gt;base,<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(&amp;intel_sdvo_connector-&gt;base, mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (fixed_mode-&gt;hdis=
play !=3D args.width ||<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; fixed_mode=
-&gt;vdisplay !=3D args.height)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -1396,1=
1 +1396,11 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0intel_sdvo_compute_config(s=
truct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_enco=
der *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; pipe_confi=
g-&gt;sdvo_tv_clock =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 } else if (IS_LVDS(intel_sdvo_connector)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode=
 *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(&amp;intel_sdvo_connector-&gt;base,<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(&amp;intel_sdvo_connector-&gt;base, mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_pane=
l_compute_config(&amp;intel_sdvo_connector-&gt;base,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - adjusted=
_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + adjusted=
_mode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 retur=
n ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 @@ =
-1562,7 +1562,7 @@ static void<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_sdvo_pre_enable(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_atom=
ic_state *state,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 /* lvds has a special fixed output timing. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (IS_LVDS(intel_sdvo_connector)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode=
 *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_pa=
nel_fixed_mode(&amp;intel_sdvo_connector-&gt;base,<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_pa=
nel_fixed_mode(&amp;intel_sdvo_connector-&gt;base, mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_sdvo=
_get_dtd_from_mode(&amp;output_dtd, fixed_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 } else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git=
 a/drivers/gpu/drm/i915/display/vlv_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/=
gpu/drm/i915/display/vlv_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 76e8=
cd0f65a4..bfe465443d20 100644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/driv=
ers/gpu/drm/i915/display/vlv_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/driv=
ers/gpu/drm/i915/display/vlv_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -280,7 =
+280,7 @@ static int<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_dsi_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_enco=
der *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 pipe_config-&gt;sink_format =3D INTEL_OUTPUT_FORMAT_R=
GB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; pipe_confi=
g-&gt;output_format =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=
=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_m=
ode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=
=A0=C2=A0 ret =3D intel_panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_m=
ode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 --<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; 2.45.2<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
</blockquote></div>

--00000000000033826c0651906f0c--
