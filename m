Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KovHJjU/GlvUQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 20:06:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6A14ED2BB
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 20:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D5210E255;
	Thu,  7 May 2026 18:06:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="OW/DA8Dz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A3A10E255
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 18:06:12 +0000 (UTC)
Received: by mail-ej1-f47.google.com with SMTP id
 a640c23a62f3a-bca0ff2f8dfso83315366b.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 May 2026 11:06:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778177170; cv=none;
 d=google.com; s=arc-20240605;
 b=Gf10bqAf1WpjgyGdZMnpQOovGMvH960JDKYrbiTTat03VaYEUrEpBEe8yyHXjb3NNZ
 ro7gON4CyX4q//pFBBI9tuJdrtiG0NRfEsSMfzZBfLItlbJRT3/YcRGf5dFKlyLRLnJ/
 jW4wKJyt1CZcJ/iSiKrUB7WuBXCkhAvoAr5ea2ucGygfVvkifNfh2HejRpDSW/oZY7dM
 1tY1imsxrISnOWYiLLVZmCEZ8QE2C3e/NnV25d2kGAsDqsRjklyprx+uWKnVTSnOx2cu
 p7mmFfLzWQ3OTNugS8nWN1aFit9OhMgug6fb+d0cNWdyeMvkaX+m5VOZJ1YroiUCKRG7
 sXtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=AdFfZaagA7au+HMMnStmrbBJtwm4FYDdqZDh5NSe53U=;
 fh=r+u3i++1HAVHUQ57ZU5WDRj8jcHBfNc3e/jdRiY0eq4=;
 b=d2Hw3qnwwNbW/bIg8Qc4RGbeJFqWnkb7WLm9jdpj0gIKUi3goC4g1fKZCUvn26vdCk
 gr0DmNX8SXoKhwKln5qEldfdm4Pejr+tTxLogDctPge8tC188bUgnK1VC6PVftVfXrMT
 HZAKwufEnf5e0dSvLSlZUgJFSuqE9DSdL2LisYypKIkCN6G7RqejLFPmksUyYQNMOc88
 Qt/vxmP4WFD6igQtG/TtqyleINGQi3V6z68HEzdhFDQvn9EzTAN1vHo6JkW1851pWI5H
 LgDSuI27DqTfisVm9gC50lZwJMn5HEC6AxbHokVOeNUmS+Fiq1vamdkIRFIw1krRudbg
 pMbw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1778177170; x=1778781970;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=AdFfZaagA7au+HMMnStmrbBJtwm4FYDdqZDh5NSe53U=;
 b=OW/DA8Dz4JsePob9ftZjRe153S7nFWi486Xj7zUs6mHlq0xyXZHkdaRsAJohQuvXkz
 5muvcocgaNLlgxpXyP2KTjCGEgkfySR6xqFzEkGOb4DkIMXt0FXeq3qX76fXJN3lxhlh
 tw3AhoLItT6i/xFqcQeX2Dhcfkt/1J9rgijMLGljFf99LjE4pdiJJSHq9gXS/GqkM5Mn
 9xo2Z1taNwzS/dhzq/fEYttJ5YcUS+ups+9/CkGDZL03OaI9gaWqouZUGBpw1G9FkH2b
 /uMFF3Uf9WTjmJ38+6WoOamsptpFUgqEaJvOzwasIiGL9o3G0E9vw8d0FPcbKrlR9u+U
 Q4CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778177170; x=1778781970;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AdFfZaagA7au+HMMnStmrbBJtwm4FYDdqZDh5NSe53U=;
 b=DnYkg2G6JDGo0kYbF6pgn3wAY0My+JrNnCHftIdkB7fRTMBDPp2zk3kD0uFLhdIWEF
 s7hxgbgh7F7OhcLoOAYMuo1/gU22nTx1KePZdDO5xFzOdBCq4uBRqqhQi/FZ1Qiefpqa
 4FJy1asQumN4oI6yFY1gsQyIDxUGEerYkXmjk3Rvzn0rg3V4y2Zv+LJtymNROO63t5Ft
 bmM0p8lmsGothvRTuieBriqLHaB1bnqPYRCCtkdW8Oz9iwRIMWOoK9qLC1Uk+KNQ1dzk
 9gzAvzDcTHcMsLw8noUCUG+Ru7RH3pVbw3ldZC0iDTw7w5EXUSF4t+FCCSIy8YNCEWi8
 JffQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8YuEi00j5XtLPG8upDNOXC68iodncXfG65xqQBu1Jy0U31cqH5J96IM4Jfdx+qDDjSMBCXBkx/Qn8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy62ectMIq9cALQ7u+NcAAg3lEyOq9DVxJAQGBrQ6sGPvMqJLqj
 M+lwLPrh9semZ4z6TdWxjEPX3fZuVWsd5gsqc5CwOnOrxESxITDPw3FJk29WLAcMf5n+qtfY3e9
 LxGb5z6ZR+YRgKav27abbIT4jr0VmtNcR1X3NUDzc
X-Gm-Gg: AeBDietGzrcbnjqYMXlWX989MUhkYTiXvqSGyqg0Xh0ogmJQ28Z9VaHn7zlGHdcAgi7
 8br5yVUkbl+cLj81z+lgym2qpKyEqFFP0vbZ1zc4V7zn1tJmJx9K0zE/TYDRxqiLkalhUT68qTX
 uZAHFqxVpDXYBi8vpFhWsIgSN/fW+mIJ58+ydTEPrL/UdHUBsx4xqvGzOTr0sPOUsXvn6AQWEsL
 9QYiU1eeYJ3ZB7NmGIYkcHw9MVsUhEALhhYogBGTTw3ADDmvkWL6ICyHtQtjhL4iccb1ip6mlrZ
 Zx9uRDlhYLrRYN/4jU8KgPujXGA6QVdMW+6f2p3HuYfwWAtIDdiUjIksahf2Kr4NpoaqtCmq1J8
 yqiV5geGWd/pxbJsi
X-Received: by 2002:a17:907:9802:b0:bc2:9733:9ecc with SMTP id
 a640c23a62f3a-bc56cd2ed45mr593436766b.32.1778177169667; Thu, 07 May 2026
 11:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260428083323.3745772-1-ankit.k.nautiyal@intel.com>
 <20260428083323.3745772-3-ankit.k.nautiyal@intel.com>
 <afH2DKWGJs5nmFwh@intel.com>
 <11998bff-4d5c-4a41-a9e8-312e90cbe1bf@intel.com>
 <8878f6d3-0d38-41f3-a0c5-2c229fd553ec@intel.com>
 <172dd0cf-8e0b-4e00-a50e-708196928a7e@intel.com>
 <CAMNLLoTKjz-Fg7Dp5R6_XG8PEcOAiDfPx+=UVeKkkRoBYeRYug@mail.gmail.com>
 <ee4eef18-7901-4e5f-b914-65b01d1fe7fe@intel.com>
In-Reply-To: <ee4eef18-7901-4e5f-b914-65b01d1fe7fe@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Thu, 7 May 2026 11:05:57 -0700
X-Gm-Features: AVHnY4Jhs7DSu4ZbQTU8FEAf-TuznzCYkW0NqK8GWqbCx3CPlom6NxvJxhAM61g
Message-ID: <CAMNLLoQUwkk3QJOyHv2Lk30d=V3erJKrBcFsjkFXPE8dFmvgjA@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/i915/intel_panel: Use highest refresh rate mode
 for seamless VRR changes
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 jani.nikula@linux.intel.com, Sean Paul <seanpaul@google.com>
Content-Type: multipart/alternative; boundary="0000000000008d0a3306513e229e"
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
X-Rspamd-Queue-Id: 7C6A14ED2BB
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

--0000000000008d0a3306513e229e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Ankit for the detailed feedback and analysis, please find some
comments below :

On Thu, May 7, 2026 at 4:52=E2=80=AFAM Nautiyal, Ankit K <ankit.k.nautiyal@=
intel.com>
wrote:

>
> On 5/6/2026 9:23 PM, Manasi Navare wrote:
> > Hi Ankit, Ville, Jani,
> >
> > Thank you for the patch and the discussion here. Please see some of my
> > comments/feedback below:
> >
> > On Wed, May 6, 2026 at 12:25=E2=80=AFAM Nautiyal, Ankit K
> > <ankit.k.nautiyal@intel.com> wrote:
> >
> >
> >     On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:
> >     >
> >     > On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote:
> >     >>
> >     >> On 4/29/2026 5:44 PM, Ville Syrj=C3=A4l=C3=A4 wrote:
> >     >>> On Tue, Apr 28, 2026 at 02:03:23PM +0530, Ankit Nautiyal wrote:
> >     >>>> intel_panel_fixed_mode() intends to choose a fixed mode at or
> >     above
> >     >>>> the
> >     >>>> requested refresh rate for VRR panels, so the requested
> >     refresh can be
> >     >>>> reached by extending vblank.
> >     >>>>
> >     >>>> This is called in compute config to find the 'best' fixed
> >     mode for a
> >     >>>> requested mode and also called during mode valid phase to
> >     prune the
> >     >>>> unsupported fixed modes.
> >     >>>>
> >     >>>> For Non-VRR panels there is no issue:
> >     >>>> - When a user wants to do a full modeset (sets
> >     DRM_MODE_ALLOW_MODESET
> >     >>>>    flag) with a custom mode, the intel_panel_fixed_mode()
> >     gives the
> >     >>>> mode
> >     >>>>    with refresh rate nearest to the requested mode.
> >     >>>> - Seamless switch to a lower mode is only possible if the
> >     platform has
> >     >>>>    support for Double buffered MN and the sink is Seamless-DRR=
S
> >     >>>> capable.
> >     >>>>    In this case the user sets a lower refresh rate mode and
> >     doesn't
> >     >>>> set
> >     >>>>    the DRM_MODE_ALLOW_MODESET flag the intel_panel_fixed_mode(=
)
> >     >>>> returns
> >     >>>>    again the fixed mode whose refresh rate is nearest to the
> >     requested
> >     >>>>    mode.
> >     >>>> - Since Duble buffered MN is not supported on LNL+, the seamle=
ss
> >     >>>> switch
> >     >>>>    is not possible for such panels from LNL+.
> >     >>>>
> >     >>>> For VRR panels the current logic has some issues:
> >     >>>> - For VRR panels intel_panel_fixed_mode() intends to choose a
> >     fixed
> >     >>>> mode
> >     >>>>    at or above the requested refresh rate so the requested
> >     refresh
> >     >>>> can be
> >     >>>>    reached by extending vblank.
> >     >>>> - However, as per the current logic the helper can return a
> >     lower
> >     >>>> refresh
> >     >>>>    rate mode, if the lower refresh rate mode is first in the
> >     list
> >     >>>> of fixed
> >     >>>>    mode. Later, if the selected fixed mode's refresh rate < th=
e
> >     >>>> requested
> >     >>>>    mode's refresh rate, then the requested rate is matched by
> >     >>>> extending
> >     >>>>    the vblank.
> >     >>>> - In case of a full modeset request with a custom mode this
> >     is not a
> >     >>>>    problem. But for the seamless switch features like LRR (Low=
er
> >     >>>> Refresh
> >     >>>>    Rate) and the Seamless-DRRS this creates a problem as this
> >     >>>> results in
> >     >>>>    change in vsync_start/end and resulting in a full modeset.
> >     >>>> - Furthermore, as with the Non-VRR panel case, the
> >     Seamless-DRRS is
> >     >>>> not
> >     >>>>    supported on LNL+, but for VRR panels, the vblank can be
> >     extended
> >     >>>>    similar to LRR case. But due to the above mentioned
> >     problem in the
> >     >>>>    intel_panel_fixed_mode() this also results in full modeset.
> >     >>>>
> >     >>>> To solve these problems for the VRR panels, identify if the us=
er
> >     >>>> wants a
> >     >>>> full modeset or expects seamless switch. If seamless switch
> >     to a lower
> >     >>>> mode is desired, make intel_panel_fixed_mode() return the
> highest
> >     >>>> refresh rate mode, provided the requested rate is in vrr
> >     range. This
> >     >>>> will then be modified to extend the vblank to provide the
> desired
> >     >>>> refresh rate.
> >     >>>>
> >     >>>> This is particularly needed for DRRS panels on platforms
> >     without the
> >     >>>> double buffered M/N support (display version 20+), where
> >     seamless
> >     >>>> clock
> >     >>>> changes are not possible.
> >     >>>>
> >     >>>> To understand the user requirement for full modeset/seamless
> >     >>>> switch, the
> >     >>>> intel_panel_fixed_mode() and intel_panel_compute_config() need
> >     >>>> access to
> >     >>>> the connector state to check the allow_modeset flag.
> >     >>>>
> >     >>>> Add a nullable conn_state parameter to both. The mode_valid
> >     callers
> >     >>>> pass
> >     >>>> NULL since they have no atomic state and the compute_config
> >     callers
> >     >>>> pass
> >     >>>> their conn_state.
> >     >>>>
> >     >>>> Also remove the VRR check from is_best_fixed_mode() since the
> >     >>>> selection is
> >     >>>> handled upfront in intel_panel_fixed_mode().
> >     >>>>
> >     >>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >     >>>> ---
> >     >>>> drivers/gpu/drm/i915/display/icl_dsi.c     |  2 +-
> >     >>>> drivers/gpu/drm/i915/display/intel_dp.c    |  6 ++--
> >     >>>> drivers/gpu/drm/i915/display/intel_dsi.c   |  2 +-
> >     >>>> drivers/gpu/drm/i915/display/intel_dvo.c   |  6 ++--
> >     >>>> drivers/gpu/drm/i915/display/intel_lvds.c  |  4 +--
> >     >>>> drivers/gpu/drm/i915/display/intel_panel.c | 35
> >     >>>> +++++++++++-----------
> >     >>>> drivers/gpu/drm/i915/display/intel_panel.h |  6 ++--
> >     >>>> drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 ++---
> >     >>>> drivers/gpu/drm/i915/display/vlv_dsi.c     |  2 +-
> >     >>>>   9 files changed, 37 insertions(+), 34 deletions(-)
> >     >>>>
> >     >>>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >>>> b/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >>>> index afbaa0465842..1efe81404d01 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> >     >>>> @@ -1671,7 +1671,7 @@ static int gen11_dsi_compute_config(stru=
ct
> >     >>>> intel_encoder *encoder,
> >     >>>>       pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >     >>>>       pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >     >>>>   -    ret =3D intel_panel_compute_config(intel_connector,
> >     >>>> adjusted_mode);
> >     >>>> +    ret =3D intel_panel_compute_config(intel_connector,
> >     >>>> adjusted_mode, conn_state);
> >     >>>>       if (ret)
> >     >>>>           return ret;
> >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >     >>>> b/drivers/gpu/drm/i915/display/intel_dp.c
> >     >>>> index 35b8fb5740aa..f014ce28e69f 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >     >>>> @@ -1588,7 +1588,7 @@ intel_dp_mode_valid(struct drm_connector
> >     >>>> *_connector,
> >     >>>>       if (intel_dp_hdisplay_bad(display, mode->hdisplay))
> >     >>>>           return MODE_H_ILLEGAL;
> >     >>>>   -    fixed_mode =3D intel_panel_fixed_mode(connector, mode);
> >     >>>> +    fixed_mode =3D intel_panel_fixed_mode(connector, mode, NU=
LL);
> >     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> >     >>>>           status =3D intel_panel_mode_valid(connector, mode);
> >     >>>>           if (status !=3D MODE_OK)
> >     >>>> @@ -3577,9 +3577,9 @@ intel_dp_compute_config(struct
> >     intel_encoder
> >     >>>> *encoder,
> >     >>>>       struct intel_connector *connector =3D
> >     >>>> intel_dp->attached_connector;
> >     >>>>       int ret =3D 0, link_bpp_x16;
> >     >>>>   -    fixed_mode =3D intel_panel_fixed_mode(connector,
> >     adjusted_mode);
> >     >>>> +    fixed_mode =3D intel_panel_fixed_mode(connector,
> >     adjusted_mode,
> >     >>>> conn_state);
> >     >>>>       if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> >     >>>> -        ret =3D intel_panel_compute_config(connector,
> >     adjusted_mode);
> >     >>>> +        ret =3D intel_panel_compute_config(connector,
> >     adjusted_mode,
> >     >>>> conn_state);
> >     >>>>           if (ret)
> >     >>>>               return ret;
> >     >>>>       }
> >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >>>> index 9005c1f5d857..a480bb79dca7 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> >     >>>> @@ -64,7 +64,7 @@ enum drm_mode_status
> >     intel_dsi_mode_valid(struct
> >     >>>> drm_connector *connector,
> >     >>>>       struct intel_display *display =3D
> >     >>>> to_intel_display(connector->dev);
> >     >>>>       struct intel_connector *intel_connector =3D
> >     >>>> to_intel_connector(connector);
> >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(intel_connector, mode);
> >     >>>> + intel_panel_fixed_mode(intel_connector, mode, NULL);
> >     >>>>       int max_dotclk =3D display->cdclk.max_dotclk_freq;
> >     >>>>       enum drm_mode_status status;
> >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >>>> index 405b33aca9dd..0ec25d895777 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> >     >>>> @@ -224,7 +224,7 @@ intel_dvo_mode_valid(struct drm_connector
> >     >>>> *_connector,
> >     >>>>       struct intel_connector *connector =3D
> >     >>>> to_intel_connector(_connector);
> >     >>>>       struct intel_dvo *intel_dvo =3D
> >     intel_attached_dvo(connector);
> >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(connector, mode);
> >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
> >     >>>>       int max_dotclk =3D display->cdclk.max_dotclk_freq;
> >     >>>>       int target_clock =3D mode->clock;
> >     >>>>       enum drm_mode_status status;
> >     >>>> @@ -259,7 +259,7 @@ static int intel_dvo_compute_config(struct
> >     >>>> intel_encoder *encoder,
> >     >>>>       struct intel_connector *connector =3D
> >     >>>> to_intel_connector(conn_state->connector);
> >     >>>>       struct drm_display_mode *adjusted_mode =3D
> >     >>>> &pipe_config->hw.adjusted_mode;
> >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(intel_dvo->attached_connector,
> >     >>>> adjusted_mode);
> >     >>>> + intel_panel_fixed_mode(intel_dvo->attached_connector,
> >     >>>> adjusted_mode, conn_state);
> >     >>>>         /*
> >     >>>>        * If we have timings from the BIOS for the panel, put
> >     them in
> >     >>>> @@ -270,7 +270,7 @@ static int intel_dvo_compute_config(struct
> >     >>>> intel_encoder *encoder,
> >     >>>>       if (fixed_mode) {
> >     >>>>           int ret;
> >     >>>>   -        ret =3D intel_panel_compute_config(connector,
> >     adjusted_mode);
> >     >>>> +        ret =3D intel_panel_compute_config(connector,
> >     adjusted_mode,
> >     >>>> conn_state);
> >     >>>>           if (ret)
> >     >>>>               return ret;
> >     >>>>       }
> >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >>>> index cc6d4bfcff10..2e30bc3f1e62 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> >     >>>> @@ -396,7 +396,7 @@ intel_lvds_mode_valid(struct drm_connector
> >     >>>> *_connector,
> >     >>>>       struct intel_display *display =3D
> >     >>>> to_intel_display(_connector->dev);
> >     >>>>       struct intel_connector *connector =3D
> >     >>>> to_intel_connector(_connector);
> >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(connector, mode);
> >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
> >     >>>>       int max_pixclk =3D display->cdclk.max_dotclk_freq;
> >     >>>>       enum drm_mode_status status;
> >     >>>>   @@ -460,7 +460,7 @@ static int
> >     intel_lvds_compute_config(struct
> >     >>>> intel_encoder *encoder,
> >     >>>>        * with the panel scaling set up to source from the
> >     H/VDisplay
> >     >>>>        * of the original mode.
> >     >>>>        */
> >     >>>> -    ret =3D intel_panel_compute_config(connector, adjusted_mo=
de);
> >     >>>> +    ret =3D intel_panel_compute_config(connector, adjusted_mo=
de,
> >     >>>> conn_state);
> >     >>>>       if (ret)
> >     >>>>           return ret;
> >     >>>>   diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> >     >>>> b/drivers/gpu/drm/i915/display/intel_panel.c
> >     >>>> index 5e918ee0c8ea..65d017371d78 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> >     >>>> @@ -59,24 +59,13 @@ intel_panel_preferred_fixed_mode(struct
> >     >>>> intel_connector *connector)
> >     >>>>                       struct drm_display_mode, head);
> >     >>>>   }
> >     >>>>   -static bool is_best_fixed_mode(struct intel_connector
> >     *connector,
> >     >>>> -                   int vrefresh, int fixed_mode_vrefresh,
> >     >>>> +static bool is_best_fixed_mode(int vrefresh, int
> >     fixed_mode_vrefresh,
> >     >>>>                      const struct drm_display_mode *best_mode)
> >     >>>>   {
> >     >>>>       /* we want to always return something */
> >     >>>>       if (!best_mode)
> >     >>>>           return true;
> >     >>>>   -    /*
> >     >>>> -     * With VRR always pick a mode with equal/higher than
> >     requested
> >     >>>> -     * vrefresh, which we can then reduce to match the
> requested
> >     >>>> -     * vrefresh by extending the vblank length.
> >     >>>> -     */
> >     >>>> -    if (intel_vrr_is_in_range(connector, vrefresh) &&
> >     >>>> -        intel_vrr_is_in_range(connector, fixed_mode_vrefresh)
> &&
> >     >>>> -        fixed_mode_vrefresh < vrefresh)
> >     >>>> -        return false;
> >     >>>> -
> >     >>>>       /* pick the fixed_mode that is closest in terms of
> >     vrefresh */
> >     >>>>       return abs(fixed_mode_vrefresh - vrefresh) <
> >     >>>> abs(drm_mode_vrefresh(best_mode) - vrefresh);
> >     >>>> @@ -84,15 +73,26 @@ static bool is_best_fixed_mode(struct
> >     >>>> intel_connector *connector,
> >     >>>>     const struct drm_display_mode *
> >     >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
> >     >>>> -               const struct drm_display_mode *mode)
> >     >>>> +               const struct drm_display_mode *mode,
> >     >>>> +               const struct drm_connector_state *conn_state)
> >     >>>>   {
> >     >>>>       const struct drm_display_mode *fixed_mode, *best_mode =
=3D
> >     NULL;
> >     >>>>       int vrefresh =3D drm_mode_vrefresh(mode);
> >     >>>>   +    /*
> >     >>>> +     * With VRR always pick the highest refresh rate mode,
> >     >>>> +     * which we can then reduce to match the requested
> >     >>>> +     * vrefresh by extending the vblank length.
> >     >>>> +     */
> >     >>>> +    if (conn_state && !conn_state->state->allow_modeset &&
> >     >>> The foo_state->state pointer should never be used. If you need
> >     the full
> >     >>> atomic state then plumb it through from the top.
> >     >>
> >     >> Hmm noted.
> >     >>
> >     >>
> >     >>>
> >     >>>> + intel_vrr_is_capable(connector) &&
> >     >>>> +        intel_vrr_is_in_range(connector, vrefresh))
> >     >>>> +        return intel_panel_highest_vrefresh_mode(connector);
> >     >>> What we want is the fixed mode that matches the current
> >     adjusted mode
> >     >>> exactly except for vtotal, and I think we also want to
> >     maintain the
> >     >>> vsync pulse location relative to vtotal.
> >     >>
> >     >> Oh alright. I was thinking the issue is in the best mode logic
> >     which
> >     >> is resulting in lower mode getting picked when we wanted a highe=
r
> >     >> mode as best fixed mode.
> >     >>
> >     >> I was under the impression that since the vsync start/end of
> >     lower is
> >     >> not the same with the higher mode and since this cannot be
> >     modified
> >     >> on the fly, it results in full modeset.
> >     >>
> >     >> However, as you said, vsync start/end can be modified indeed the
> >     >> problem becomes:
> >     >>
> >     >> - we are not scaling the vsync start/end similar to what we are
> >     doing
> >     >> for vtotal.
> >     >> - even if we do that, we need to remove the check for vsync
> >     start/end
> >     >> for fastboot.
> >     >>
> >     >> Another consideration is that is the vsync_start should be
> >     inside the
> >     >> vrr guardband, but I think if the vsync_start scales up then it
> >     will
> >     >> still be inside the guardband so we should be covered.
> >     >>
> >     >>
> >     >>>
> >     >>> We should in fact fix the vsync_start/end mess first.
> >     >>
> >     >> You mean the existing vsync_start/end change due to AS SDP
> >     thing? Or
> >     >> you mean the above mentioned scaling up?
> >     >>
> >     >>
> >     >>> We need to add
> >     >>> TRANS_VSYNC handling to the LRR codepaths and allow that to
> change
> >     >>> during fastsets. And intel_panel_compute_config() needs to
> >     preserve
> >     >>> the vtotal-vsync distance when adjusting vtotal. I think that
> >     should
> >     >>> all be fine for DP since it doesn't really use TRANS_VSYNC for
> >     >>> anything.
> >     >>
> >     >> Hmm I think I got some direction here. Thanks for making it
> >     clearer.
> >     >
> >     >
> >     > Hi Ville,
> >     >
> >     > Going through the Bspec, I have a query on the TRANS_VSYNC part.
> >     >
> >     > For NVL onwards, the TRANS_VSYNC seems to be deprecated. As I
> >     > understand, this is no more used with VRR timing generator, inste=
ad
> >     > TRANS_VRR_VSYNC is used.
> >     > So we can avoid reading/writing it completely for platforms that
> >     > support VRR Timing Generator.
> >     >
> >     > But for platforms using the legacy timing generator, BSpec says
> >     > TRANS_VSYNC should not be changed while transcoder/port are
> enabled.
> >     > Given that, should we treat TRANS_VSYNC updates as modeset-only o=
n
> >     > legacy TG platforms, and only allow the fastset path where VRR
> >     TG is
> >     > always used?
> >     >
> >     > Just wanted to make sure I=E2=80=99m interpreting your suggestion=
 correctly
> >     > before changing the fastset checks.
> >     >
> >     > Thanks,
> >     > Ankit
> >     >
> >
> >     Just an update:
> >
> >     Maintaining vtotal-vsync pulse seems to be working, along with the
> >     change to always use highest RR mode as best mode.
> >
> >
> > I see that the patch selects the highest refresh rate during
> > compute_config.
> > Would that be sufficient to allow VRR based fastset when userspace
> > requests 60Hz at the initial modeset from userspace?
>
>
> With this patch we only select the highest refresh rate mode when
> allow_modeset is not set (i.e. seamless path).
> For the initial modeset from userspace, I think the allow_modeset is
> set, so we still pick the nearest fixed mode for the requested refresh
> rate.
>
> >
> > I think what we might need is that during the very first hand off to
> > the kernel driver, is when it always internally sets the crtc state
> > mode timings
> > for the highest refresh rate mode such that when the usersapce
> > requests to set the preferred mode of 60 Hz,
> > the mode or the crtc timings would be set the only difference would be
> > the Vtotal and it will meet the VRR fastset requirements and will be
> > able to achieve this 60 Hz using VRR
>
> To clarify, there are two kinds of panels with fixed modes we need to
> consider here:
>
> Type 1: Modes with different clocks (e.g. 60Hz @ 347MHz, 120Hz @ 695MHz)
>
> "2880x1800": 60 347660 2880 2928 2960 3040 1800 1803 1809 1906 0x48 0xa
> "2880x1800": 120 695310 2880 2928 2960 3040 1800 1803 1809 1906 0x40 0xa
> For such panels, it is not possible to seamlessly switch from a lower RR
> mode to a higher RR mode, since at lower clock we cannot increase the
> clock without a full modeset.
> But seamless switch from 120Hz to 60Hz can be achieved by running at the
> same (higher) clock and just extending the vtotal.
>
> Type 2: Modes with same clock but different vtotal
>
> "2880x1800": 60 709633 2880 2888 2920 3080 1800 3800 3816 3840 0x48 0xa
>
> "2880x1800": 120 709633 2880 2888 2920 3080 1800 1880 1896 1920 0x40 0xa
>
> Here the clock is the same, so we can go from higher RR to lower RR or
> vice versa just by changing the vtotal.
> Seamless switching is possible in both directions.
>

Yes correct, in our case this is how the modes are manifested, 120Hz and
60Hz both have the same clock
However the preferred mode marked is 60Hz. However what we are observing is
that the seamless switch
is not happening from 60Hz to 120Hz and the userspace still puts both these
modes into separate config groups.

So our proposal was that in case of the panels where both the panel modes
have same Pixel clock and only differ
in Vtotal, the panel should always set the highest refresh rate (with or
without Allow modeset ). So then lower refresh rate
60 Hz can always be achieved using VRR seamlessly later when switch to that
mode is requested without allow modeset flag.


>
> So if the initial modeset is at a lower RR:
> For Type 1: a full modeset is needed to go to higher RR. After that, any
> lower RR can be reached seamlessly.
> For Type 2: switching to higher RR and back to lower RR can both be done
> seamlessly.
>

For Type 2 panels, could we confirm that this switch is happening correctly
in both directions using
the kms_vrr test switching refresh rates in the other direction as well?

Regards
Manasi

>
>
> >
> > From the userspace perspective, 60Hz will still be the preferred mode
> > as advertised by the panel, but internally if the driver can always
> > set the timings for the highest refresh rate, then switching from
> > lower refresh rate 60 Hz to higher refresh rate 120Hz would be
> > possible seamlessly.
>
>
> The problem with always programming the highest refresh rate timings on
> the initial modeset is Type 1 panels.
>
> Suppose the user explicitly requests 60Hz (with allow_modeset flag)
> which on a Type 1 panel means 347MHz clock for power savings.
>
> If the driver internally programs 120Hz @ 695MHz timings with vtotal
> extended to produce 60Hz output,
>
> the user ends up running at the higher clock. This defeats the purpose
> of selecting the lower RR mode.
>
> So in the patch I have gone with the approach:
>
> If user sets allow_modeset, then do not go with highest RR mode, but
> find the best fixed mode as per existing logic.
>
> But if it does not sets allow_modeset, then go with the highest RR mode
> (later adjust the vtotal).
>
>
> Regards,
>
> Ankit
>
>
> >
> > Regards
> > Manasi
> >
> >
> >     I still need to address the comment about avoid
> >     deriving allow_modeset
> >     from connector state directly.
> >
> >     Cc:
> >
> >     Manasi Navare <navaremanasi@google.com>
> >
> >
> >     Regards,
> >
> >     Ankit
> >
> >
> >     >
> >     >>
> >     >>
> >     >> Regards,
> >     >>
> >     >> Ankit
> >     >>
> >     >>>
> >     >>> +
> >     >>>>       list_for_each_entry(fixed_mode,
> >     >>>> &connector->panel.fixed_modes, head) {
> >     >>>>           int fixed_mode_vrefresh =3D
> >     drm_mode_vrefresh(fixed_mode);
> >     >>>>   -        if (is_best_fixed_mode(connector, vrefresh,
> >     >>>> +        if (is_best_fixed_mode(vrefresh,
> >     >>>> fixed_mode_vrefresh, best_mode))
> >     >>>>               best_mode =3D fixed_mode;
> >     >>>>       }
> >     >>>> @@ -213,10 +213,11 @@ enum drrs_type
> >     intel_panel_drrs_type(struct
> >     >>>> intel_connector *connector)
> >     >>>>   }
> >     >>>>     int intel_panel_compute_config(struct intel_connector
> >     *connector,
> >     >>>> -                   struct drm_display_mode *adjusted_mode)
> >     >>>> +                   struct drm_display_mode *adjusted_mode,
> >     >>>> +                   const struct drm_connector_state
> *conn_state)
> >     >>>>   {
> >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(connector, adjusted_mode);
> >     >>>> + intel_panel_fixed_mode(connector, adjusted_mode, conn_state)=
;
> >     >>>>       int vrefresh, fixed_mode_vrefresh;
> >     >>>>       bool is_vrr;
> >     >>>>   @@ -414,7 +415,7 @@ intel_panel_mode_valid(struct
> >     intel_connector
> >     >>>> *connector,
> >     >>>>                  const struct drm_display_mode *mode)
> >     >>>>   {
> >     >>>>       const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(connector, mode);
> >     >>>> + intel_panel_fixed_mode(connector, mode, NULL);
> >     >>>>         if (!fixed_mode)
> >     >>>>           return MODE_OK;
> >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
> >     >>>> b/drivers/gpu/drm/i915/display/intel_panel.h
> >     >>>> index 2f7a317995ea..c1189a20c8b2 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> >     >>>> @@ -32,7 +32,8 @@ const struct drm_display_mode *
> >     >>>>   intel_panel_preferred_fixed_mode(struct intel_connector
> >     *connector);
> >     >>>>   const struct drm_display_mode *
> >     >>>>   intel_panel_fixed_mode(struct intel_connector *connector,
> >     >>>> -               const struct drm_display_mode *mode);
> >     >>>> +               const struct drm_display_mode *mode,
> >     >>>> +               const struct drm_connector_state *conn_state);
> >     >>>>   const struct drm_display_mode *
> >     >>>>   intel_panel_downclock_mode(struct intel_connector *connector=
,
> >     >>>>                  const struct drm_display_mode *adjusted_mode)=
;
> >     >>>> @@ -47,7 +48,8 @@ enum drm_mode_status
> >     >>>>   intel_panel_mode_valid(struct intel_connector *connector,
> >     >>>>                  const struct drm_display_mode *mode);
> >     >>>>   int intel_panel_compute_config(struct intel_connector
> >     *connector,
> >     >>>> -                   struct drm_display_mode *adjusted_mode);
> >     >>>> +                   struct drm_display_mode *adjusted_mode,
> >     >>>> +                   const struct drm_connector_state
> >     *conn_state);
> >     >>>>   void intel_panel_add_edid_fixed_modes(struct intel_connector
> >     >>>> *connector,
> >     >>>>                         bool use_alt_fixed_modes);
> >     >>>>   void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connect=
or
> >     >>>> *connector);
> >     >>>> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >>>> index 2e1af9e869de..e07c1070a3ec 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> >     >>>> @@ -797,7 +797,7 @@
> >     intel_sdvo_create_preferred_input_timing(struct
> >     >>>> intel_sdvo *intel_sdvo,
> >     >>>>         if (IS_LVDS(intel_sdvo_connector)) {
> >     >>>>           const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
> >     NULL);
> >     >>>>             if (fixed_mode->hdisplay !=3D args.width ||
> >     >>>>               fixed_mode->vdisplay !=3D args.height)
> >     >>>> @@ -1396,11 +1396,11 @@ static int
> >     intel_sdvo_compute_config(struct
> >     >>>> intel_encoder *encoder,
> >     >>>>           pipe_config->sdvo_tv_clock =3D true;
> >     >>>>       } else if (IS_LVDS(intel_sdvo_connector)) {
> >     >>>>           const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
> >     >>>> conn_state);
> >     >>>>           int ret;
> >     >>>>             ret =3D
> >     >>>> intel_panel_compute_config(&intel_sdvo_connector->base,
> >     >>>> -                         adjusted_mode);
> >     >>>> +                         adjusted_mode, conn_state);
> >     >>>>           if (ret)
> >     >>>>               return ret;
> >     >>>>   @@ -1562,7 +1562,7 @@ static void intel_sdvo_pre_enable(stru=
ct
> >     >>>> intel_atomic_state *state,
> >     >>>>       /* lvds has a special fixed output timing. */
> >     >>>>       if (IS_LVDS(intel_sdvo_connector)) {
> >     >>>>           const struct drm_display_mode *fixed_mode =3D
> >     >>>> - intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
> >     >>>> + intel_panel_fixed_mode(&intel_sdvo_connector->base, mode,
> >     >>>> conn_state);
> >     >>>> intel_sdvo_get_dtd_from_mode(&output_dtd, fixed_mode);
> >     >>>>       } else {
> >     >>>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >>>> b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >>>> index 76e8cd0f65a4..bfe465443d20 100644
> >     >>>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >>>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> >     >>>> @@ -280,7 +280,7 @@ static int intel_dsi_compute_config(struct
> >     >>>> intel_encoder *encoder,
> >     >>>>       pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >     >>>>       pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >     >>>>   -    ret =3D intel_panel_compute_config(intel_connector,
> >     >>>> adjusted_mode);
> >     >>>> +    ret =3D intel_panel_compute_config(intel_connector,
> >     >>>> adjusted_mode, conn_state);
> >     >>>>       if (ret)
> >     >>>>           return ret;
> >     >>>>   --
> >     >>>> 2.45.2
> >
>

--0000000000008d0a3306513e229e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Ankit for the detailed feedback and analysis, =
please find some comments below :</div><br><div class=3D"gmail_quote gmail_=
quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 7, 2026 =
at 4:52=E2=80=AFAM Nautiyal, Ankit K &lt;<a href=3D"mailto:ankit.k.nautiyal=
@intel.com">ankit.k.nautiyal@intel.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><br>
On 5/6/2026 9:23 PM, Manasi Navare wrote:<br>
&gt; Hi Ankit, Ville, Jani,<br>
&gt;<br>
&gt; Thank you for the patch and the discussion here. Please see some of my=
 <br>
&gt; comments/feedback below:<br>
&gt;<br>
&gt; On Wed, May 6, 2026 at 12:25=E2=80=AFAM Nautiyal, Ankit K <br>
&gt; &lt;<a href=3D"mailto:ankit.k.nautiyal@intel.com" target=3D"_blank">an=
kit.k.nautiyal@intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0On 5/4/2026 6:47 PM, Nautiyal, Ankit K wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; On 4/29/2026 10:30 PM, Nautiyal, Ankit K wrote=
:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; On 4/29/2026 5:44 PM, Ville Syrj=C3=A4l=C3=
=A4 wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; On Tue, Apr 28, 2026 at 02:03:23PM +05=
30, Ankit Nautiyal wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_panel_fixed_mode() intends t=
o choose a fixed mode at or<br>
&gt;=C2=A0 =C2=A0 =C2=A0above<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; requested refresh rate for VRR pan=
els, so the requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0refresh can be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; reached by extending vblank.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; This is called in compute config t=
o find the &#39;best&#39; fixed<br>
&gt;=C2=A0 =C2=A0 =C2=A0mode for a<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; requested mode and also called dur=
ing mode valid phase to<br>
&gt;=C2=A0 =C2=A0 =C2=A0prune the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; unsupported fixed modes.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; For Non-VRR panels there is no iss=
ue:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - When a user wants to do a full m=
odeset (sets<br>
&gt;=C2=A0 =C2=A0 =C2=A0DRM_MODE_ALLOW_MODESET<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 flag) with a custom m=
ode, the intel_panel_fixed_mode()<br>
&gt;=C2=A0 =C2=A0 =C2=A0gives the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 with refresh rate nea=
rest to the requested mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - Seamless switch to a lower mode =
is only possible if the<br>
&gt;=C2=A0 =C2=A0 =C2=A0platform has<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 support for Double bu=
ffered MN and the sink is Seamless-DRRS<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; capable.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 In this case the user=
 sets a lower refresh rate mode and<br>
&gt;=C2=A0 =C2=A0 =C2=A0doesn&#39;t<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; set<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 the DRM_MODE_ALLOW_MO=
DESET flag the intel_panel_fixed_mode()<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; returns<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 again the fixed mode =
whose refresh rate is nearest to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - Since Duble buffered MN is not s=
upported on LNL+, the seamless<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; switch<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 is not possible for s=
uch panels from LNL+.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; For VRR panels the current logic h=
as some issues:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - For VRR panels intel_panel_fixed=
_mode() intends to choose a<br>
&gt;=C2=A0 =C2=A0 =C2=A0fixed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 at or above the reque=
sted refresh rate so the requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0refresh<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; can be<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 reached by extending =
vblank.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - However, as per the current logi=
c the helper can return a<br>
&gt;=C2=A0 =C2=A0 =C2=A0lower<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; refresh<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 rate mode, if the low=
er refresh rate mode is first in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0list<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; of fixed<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 mode. Later, if the s=
elected fixed mode&#39;s refresh rate &lt; the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 mode&#39;s refresh ra=
te, then the requested rate is matched by<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; extending<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 the vblank.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - In case of a full modeset reques=
t with a custom mode this<br>
&gt;=C2=A0 =C2=A0 =C2=A0is not a<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 problem. But for the =
seamless switch features like LRR (Lower<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Refresh<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 Rate) and the Seamles=
s-DRRS this creates a problem as this<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; results in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 change in vsync_start=
/end and resulting in a full modeset.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - Furthermore, as with the Non-VRR=
 panel case, the<br>
&gt;=C2=A0 =C2=A0 =C2=A0Seamless-DRRS is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; not<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 supported on LNL+, bu=
t for VRR panels, the vblank can be<br>
&gt;=C2=A0 =C2=A0 =C2=A0extended<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 similar to LRR case. =
But due to the above mentioned<br>
&gt;=C2=A0 =C2=A0 =C2=A0problem in the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0 intel_panel_fixed_mod=
e() this also results in full modeset.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; To solve these problems for the VR=
R panels, identify if the user<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; wants a<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; full modeset or expects seamless s=
witch. If seamless switch<br>
&gt;=C2=A0 =C2=A0 =C2=A0to a lower<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; mode is desired, make intel_panel_=
fixed_mode() return the highest<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; refresh rate mode, provided the re=
quested rate is in vrr<br>
&gt;=C2=A0 =C2=A0 =C2=A0range. This<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; will then be modified to extend th=
e vblank to provide the desired<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; refresh rate.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; This is particularly needed for DR=
RS panels on platforms<br>
&gt;=C2=A0 =C2=A0 =C2=A0without the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; double buffered M/N support (displ=
ay version 20+), where<br>
&gt;=C2=A0 =C2=A0 =C2=A0seamless<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; clock<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; changes are not possible.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; To understand the user requirement=
 for full modeset/seamless<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; switch, the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_panel_fixed_mode() and intel=
_panel_compute_config() need<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; access to<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; the connector state to check the a=
llow_modeset flag.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Add a nullable conn_state paramete=
r to both. The mode_valid<br>
&gt;=C2=A0 =C2=A0 =C2=A0callers<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; pass<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; NULL since they have no atomic sta=
te and the compute_config<br>
&gt;=C2=A0 =C2=A0 =C2=A0callers<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; pass<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; their conn_state.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Also remove the VRR check from is_=
best_fixed_mode() since the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; selection is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; handled upfront in intel_panel_fix=
ed_mode().<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; Signed-off-by: Ankit Nautiyal &lt;=
<a href=3D"mailto:ankit.k.nautiyal@intel.com" target=3D"_blank">ankit.k.nau=
tiyal@intel.com</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; ---<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/icl_d=
si.c=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/intel=
_dp.c=C2=A0=C2=A0=C2=A0 |=C2=A0 6 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/intel=
_dsi.c=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/intel=
_dvo.c=C2=A0=C2=A0 |=C2=A0 6 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/intel=
_lvds.c=C2=A0 |=C2=A0 4 +--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/intel=
_panel.c | 35<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++++++++++-----------<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/intel=
_panel.h |=C2=A0 6 ++--<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/intel=
_sdvo.c=C2=A0 |=C2=A0 8 ++---<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drivers/gpu/drm/i915/display/vlv_d=
si.c=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 9 files changed, 37 inserti=
ons(+), 34 deletions(-)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/=
display/icl_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/icl=
_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index afbaa0465842..1efe81404d01 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/icl_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/icl_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -1671,7 +1671,7 @@ static int g=
en11_dsi_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pip=
e_config-&gt;sink_format =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pip=
e_config-&gt;output_format =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 ret =3D=
 intel_panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 ret =3D intel_=
panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_mode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 diff --git a/drivers/gpu/dr=
m/i915/display/intel_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/int=
el_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 35b8fb5740aa..f014ce28e69f 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/intel_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/intel_dp.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -1588,7 +1588,7 @@ intel_dp_mod=
e_valid(struct drm_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(intel_dp_hdisplay_bad(display, mode-&gt;hdisplay))<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return MODE_H_ILLEGAL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 fixed_m=
ode =3D intel_panel_fixed_mode(connector, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 fixed_mode =3D=
 intel_panel_fixed_mode(connector, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(intel_dp_is_edp(intel_dp) &amp;&amp; fixed_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 status =3D intel_panel_mode_valid(connector, mode);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (status !=3D MODE_OK)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -3577,9 +3577,9 @@ intel_dp_com=
pute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_encoder<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_dp-&gt;attached_connector;<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 ret =3D 0, link_bpp_x16;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 fixed_m=
ode =3D intel_panel_fixed_mode(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 fixed_mode =3D=
 intel_panel_fixed_mode(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(intel_dp_is_edp(intel_dp) &amp;&amp; fixed_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ret =3D intel_panel_compute_config(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ret =3D intel_panel_compute_config(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/=
display/intel_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/int=
el_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 9005c1f5d857..a480bb79dca7 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/intel_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/intel_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -64,7 +64,7 @@ enum drm_mode_st=
atus<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_dsi_mode_valid(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; drm_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_display *display =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_display(connector-&gt;dev=
);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_connector *intel_connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_connector(connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(intel_con=
nector, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(intel_con=
nector, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 max_dotclk =3D display-&gt;cdclk.max_dotclk_freq;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enu=
m drm_mode_status status;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 diff --git a/drivers/gpu/dr=
m/i915/display/intel_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/int=
el_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 405b33aca9dd..0ec25d895777 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/intel_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/intel_dvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -224,7 +224,7 @@ intel_dvo_mode=
_valid(struct drm_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_connector(_connector);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_dvo *intel_dvo =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_attached_dvo(connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(connector=
, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(connector=
, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 max_dotclk =3D display-&gt;cdclk.max_dotclk_freq;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 target_clock =3D mode-&gt;clock;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enu=
m drm_mode_status status;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -259,7 +259,7 @@ static int int=
el_dvo_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_connector(conn_state-&gt;=
connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct drm_display_mode *adjusted_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; &amp;pipe_config-&gt;hw.adjusted_m=
ode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(intel_dvo=
-&gt;attached_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(intel_dvo=
-&gt;attached_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_mode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 /*<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 * If we have timings from the BIOS for the panel, put<br>
&gt;=C2=A0 =C2=A0 =C2=A0them in<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -270,7 +270,7 @@ static int int=
el_dvo_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(fixed_mode) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 ret =3D intel_panel_compute_config(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 ret =3D intel_panel_compute_config(connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/=
display/intel_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/int=
el_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index cc6d4bfcff10..2e30bc3f1e62 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/intel_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/intel_lvds.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -396,7 +396,7 @@ intel_lvds_mod=
e_valid(struct drm_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_display *display =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_display(_connector-&gt;de=
v);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 str=
uct intel_connector *connector =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; to_intel_connector(_connector);<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(connector=
, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(connector=
, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 max_pixclk =3D display-&gt;cdclk.max_dotclk_freq;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enu=
m drm_mode_status status;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 @@ -460,7 +460,7 @@ static =
int<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_lvds_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 * with the panel scaling set up to source from the<br>
&gt;=C2=A0 =C2=A0 =C2=A0H/VDisplay<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 * of the original mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0 ret =3D intel_=
panel_compute_config(connector, adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 ret =3D intel_=
panel_compute_config(connector, adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 diff --git a/drivers/gpu/dr=
m/i915/display/intel_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/int=
el_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 5e918ee0c8ea..65d017371d78 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/intel_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/intel_panel.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -59,24 +59,13 @@ intel_panel_pr=
eferred_fixed_mode(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_connector *connector)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 struct drm_display_mode, head);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -static bool is_best_fixed_=
mode(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0*connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 int vrefresh, int fixed_mode_vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +static bool is_best_fixed_mode(in=
t vrefresh, int<br>
&gt;=C2=A0 =C2=A0 =C2=A0fixed_mode_vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 const struct drm_display_mode *best_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* =
we want to always return something */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(!best_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 * With V=
RR always pick a mode with equal/higher than<br>
&gt;=C2=A0 =C2=A0 =C2=A0requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 * vrefre=
sh, which we can then reduce to match the requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 * vrefre=
sh by extending the vblank length.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0 if (intel_vrr_=
is_in_range(connector, vrefresh) &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_vrr_is_in_range(connector, fixed_mode_vrefresh) &amp;&amp;<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 fixed_mode_vrefresh &lt; vrefresh)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return false;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* =
pick the fixed_mode that is closest in terms of<br>
&gt;=C2=A0 =C2=A0 =C2=A0vrefresh */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret=
urn abs(fixed_mode_vrefresh - vrefresh) &lt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; abs(drm_mode_vrefresh(best_mode) -=
 vrefresh);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -84,15 +73,26 @@ static bool is=
_best_fixed_mode(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=A0 const struct drm_dis=
play_mode *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 intel_panel_fixed_mode(stru=
ct intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_displa=
y_mode *mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_displa=
y_mode *mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connec=
tor_state *conn_state)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode, *best_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0NULL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 vrefresh =3D drm_mode_vrefresh(mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 +=C2=A0=C2=A0=C2=A0 /*<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 * With V=
RR always pick the highest refresh rate mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 * which =
we can then reduce to match the requested<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 * vrefre=
sh by extending the vblank length.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0 */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 if (conn_state=
 &amp;&amp; !conn_state-&gt;state-&gt;allow_modeset &amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; The foo_state-&gt;state pointer should=
 never be used. If you need<br>
&gt;=C2=A0 =C2=A0 =C2=A0the full<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; atomic state then plumb it through fro=
m the top.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Hmm noted.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_vrr_is_capable(connector) =
&amp;&amp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 intel_vrr_is_in_range(connector, vrefresh))<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 return intel_panel_highest_vrefresh_mode(connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; What we want is the fixed mode that ma=
tches the current<br>
&gt;=C2=A0 =C2=A0 =C2=A0adjusted mode<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; exactly except for vtotal, and I think=
 we also want to<br>
&gt;=C2=A0 =C2=A0 =C2=A0maintain the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; vsync pulse location relative to vtota=
l.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Oh alright. I was thinking the issue is in=
 the best mode logic<br>
&gt;=C2=A0 =C2=A0 =C2=A0which<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; is resulting in lower mode getting picked =
when we wanted a higher<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; mode as best fixed mode.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; I was under the impression that since the =
vsync start/end of<br>
&gt;=C2=A0 =C2=A0 =C2=A0lower is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; not the same with the higher mode and sinc=
e this cannot be<br>
&gt;=C2=A0 =C2=A0 =C2=A0modified<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; on the fly, it results in full modeset.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; However, as you said, vsync start/end can =
be modified indeed the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; problem becomes:<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; - we are not scaling the vsync start/end s=
imilar to what we are<br>
&gt;=C2=A0 =C2=A0 =C2=A0doing<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; for vtotal.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; - even if we do that, we need to remove th=
e check for vsync<br>
&gt;=C2=A0 =C2=A0 =C2=A0start/end<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; for fastboot.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Another consideration is that is the vsync=
_start should be<br>
&gt;=C2=A0 =C2=A0 =C2=A0inside the<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; vrr guardband, but I think if the vsync_st=
art scales up then it<br>
&gt;=C2=A0 =C2=A0 =C2=A0will<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; still be inside the guardband so we should=
 be covered.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; We should in fact fix the vsync_start/=
end mess first.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; You mean the existing vsync_start/end chan=
ge due to AS SDP<br>
&gt;=C2=A0 =C2=A0 =C2=A0thing? Or<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; you mean the above mentioned scaling up?<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; We need to add<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; TRANS_VSYNC handling to the LRR codepa=
ths and allow that to change<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; during fastsets. And intel_panel_compu=
te_config() needs to<br>
&gt;=C2=A0 =C2=A0 =C2=A0preserve<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; the vtotal-vsync distance when adjusti=
ng vtotal. I think that<br>
&gt;=C2=A0 =C2=A0 =C2=A0should<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; all be fine for DP since it doesn&#39;=
t really use TRANS_VSYNC for<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; anything.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Hmm I think I got some direction here. Tha=
nks for making it<br>
&gt;=C2=A0 =C2=A0 =C2=A0clearer.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Hi Ville,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Going through the Bspec, I have a query on the=
 TRANS_VSYNC part.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; For NVL onwards, the TRANS_VSYNC seems to be d=
eprecated. As I<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; understand, this is no more used with VRR timi=
ng generator, instead<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; TRANS_VRR_VSYNC is used.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; So we can avoid reading/writing it completely =
for platforms that<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; support VRR Timing Generator.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; But for platforms using the legacy timing gene=
rator, BSpec says<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; TRANS_VSYNC should not be changed while transc=
oder/port are enabled.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Given that, should we treat TRANS_VSYNC update=
s as modeset-only on<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; legacy TG platforms, and only allow the fastse=
t path where VRR<br>
&gt;=C2=A0 =C2=A0 =C2=A0TG is<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; always used?<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Just wanted to make sure I=E2=80=99m interpret=
ing your suggestion correctly<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; before changing the fastset checks.<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt; Ankit<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Just an update:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Maintaining vtotal-vsync pulse seems to be working,=
 along with the<br>
&gt;=C2=A0 =C2=A0 =C2=A0change to always use highest RR mode as best mode.<=
br>
&gt;<br>
&gt;<br>
&gt; I see that the patch selects the highest refresh rate during <br>
&gt; compute_config.<br>
&gt; Would that be sufficient to allow VRR based fastset when userspace <br=
>
&gt; requests 60Hz at the initial modeset from userspace?<br>
<br>
<br>
With this patch we only select the highest refresh rate mode when <br>
allow_modeset is not set (i.e. seamless path).<br>
For the initial modeset from userspace, I think the allow_modeset is <br>
set, so we still pick the nearest fixed mode for the requested refresh rate=
.<br>
<br>
&gt;<br>
&gt; I think what we might need is that during the very first hand off to <=
br>
&gt; the kernel driver, is when it always internally sets the crtc state <b=
r>
&gt; mode timings<br>
&gt; for the highest refresh rate mode such that when the usersapce <br>
&gt; requests to set the preferred mode of 60 Hz,<br>
&gt; the mode or the crtc timings would be set the only difference would be=
 <br>
&gt; the Vtotal and it will meet the VRR fastset requirements and will be <=
br>
&gt; able to achieve this 60 Hz using VRR<br>
<br>
To clarify, there are two kinds of panels with fixed modes we need to <br>
consider here:<br>
<br>
Type 1: Modes with different clocks (e.g. 60Hz @ 347MHz, 120Hz @ 695MHz)<br=
>
<br>
&quot;2880x1800&quot;: 60 347660 2880 2928 2960 3040 1800 1803 1809 1906 0x=
48 0xa<br>
&quot;2880x1800&quot;: 120 695310 2880 2928 2960 3040 1800 1803 1809 1906 0=
x40 0xa<br>
For such panels, it is not possible to seamlessly switch from a lower RR <b=
r>
mode to a higher RR mode, since at lower clock we cannot increase the <br>
clock without a full modeset.<br>
But seamless switch from 120Hz to 60Hz can be achieved by running at the <b=
r>
same (higher) clock and just extending the vtotal.<br>
<br>
Type 2: Modes with same clock but different vtotal<br>
<br>
&quot;2880x1800&quot;: 60 709633 2880 2888 2920 3080 1800 3800 3816 3840 0x=
48 0xa<br>
<br>
&quot;2880x1800&quot;: 120 709633 2880 2888 2920 3080 1800 1880 1896 1920 0=
x40 0xa<br>
<br>
Here the clock is the same, so we can go from higher RR to lower RR or <br>
vice versa just by changing the vtotal.<br>
Seamless switching is possible in both directions.<br></blockquote><div><br=
></div><div>Yes correct, in our case this is how the modes are manifested, =
120Hz and 60Hz both have the same clock</div><div>However the preferred mod=
e marked is 60Hz. However what we are observing is that the seamless switch=
</div><div>is not happening from 60Hz to 120Hz and the userspace still puts=
 both these modes into separate config groups.</div><div><br></div><div>So =
our proposal was that in case of the panels where both the panel modes have=
 same Pixel clock and only differ</div><div>in Vtotal, the panel should alw=
ays set the highest refresh rate (with or without Allow modeset ). So then =
lower refresh rate</div><div>60 Hz can always be achieved using VRR seamles=
sly later when switch to that mode is requested without allow modeset flag.=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
So if the initial modeset is at a lower RR:<br>
For Type 1: a full modeset is needed to go to higher RR. After that, any <b=
r>
lower RR can be reached seamlessly.<br>
For Type 2: switching to higher RR and back to lower RR can both be done <b=
r>
seamlessly.<br></blockquote><div><br></div><div>For Type 2 panels, could we=
 confirm that this switch is happening correctly in both directions using</=
div><div>the kms_vrr test switching refresh rates in the other direction as=
 well?</div><div><br></div><div>Regards</div><div>Manasi=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
&gt;<br>
&gt; From the userspace perspective, 60Hz will still be the preferred mode =
<br>
&gt; as advertised=C2=A0by the panel, but internally if the driver can alwa=
ys <br>
&gt; set the timings for the highest refresh rate, then switching from <br>
&gt; lower refresh rate 60 Hz to higher refresh rate 120Hz would be <br>
&gt; possible seamlessly.<br>
<br>
<br>
The problem with always programming the highest refresh rate timings on <br=
>
the initial modeset is Type 1 panels.<br>
<br>
Suppose the user explicitly requests 60Hz (with allow_modeset flag) <br>
which on a Type 1 panel means 347MHz clock for power savings.<br>
<br>
If the driver internally programs 120Hz @ 695MHz timings with vtotal <br>
extended to produce 60Hz output,<br>
<br>
the user ends up running at the higher clock. This defeats the purpose <br>
of selecting the lower RR mode.<br>
<br>
So in the patch I have gone with the approach:<br>
<br>
If user sets allow_modeset, then do not go with highest RR mode, but <br>
find the best fixed mode as per existing logic.<br>
<br>
But if it does not sets allow_modeset, then go with the highest RR mode <br=
>
(later adjust the vtotal).<br>
<br>
<br>
Regards,<br>
<br>
Ankit<br>
<br>
<br>
&gt;<br>
&gt; Regards<br>
&gt; Manasi<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0I still need to address the comment about avoid<br>
&gt;=C2=A0 =C2=A0 =C2=A0deriving=C2=A0allow_modeset<br>
&gt;=C2=A0 =C2=A0 =C2=A0from connector state directly.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Cc:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Manasi Navare &lt;<a href=3D"mailto:navaremanasi@go=
ogle.com" target=3D"_blank">navaremanasi@google.com</a>&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Regards,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Ankit<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt; Ankit<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lis=
t_for_each_entry(fixed_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; &amp;connector-&gt;panel.fixed_mod=
es, head) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int fixed_mode_vrefresh =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0drm_mode_vrefresh(fixed_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 if (is_best_fixed_mode(connector, vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 if (is_best_fixed_mode(vrefresh,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; fixed_mode_vrefresh, best_mode))<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 best_mode =3D fixed_mode;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -213,10 +213,11 @@ enum drrs_ty=
pe<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_panel_drrs_type(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_connector *connector)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 }<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=A0 int intel_panel_comp=
ute_config(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0*connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 struct drm_display_mode *adjusted_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 struct drm_display_mode *adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_connector_state *conn_state)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(connector=
, adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(connector=
, adjusted_mode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int=
 vrefresh, fixed_mode_vrefresh;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boo=
l is_vrr;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 @@ -414,7 +415,7 @@ intel_p=
anel_mode_valid(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struc=
t drm_display_mode *mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 con=
st struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(connector=
, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(connector=
, mode, NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if (!fixed_mode)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return MODE_OK;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/=
display/intel_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/int=
el_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 2f7a317995ea..c1189a20c8b2 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/intel_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/intel_panel.h<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -32,7 +32,8 @@ const struct drm=
_display_mode *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 intel_panel_preferred_fixed=
_mode(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0*connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 const struct drm_display_mo=
de *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 intel_panel_fixed_mode(stru=
ct intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_displa=
y_mode *mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_displa=
y_mode *mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struct drm_connec=
tor_state *conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 const struct drm_display_mo=
de *<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 intel_panel_downclock_mode(=
struct intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struc=
t drm_display_mode *adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -47,7 +48,8 @@ enum drm_mode_st=
atus<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 intel_panel_mode_valid(stru=
ct intel_connector *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struc=
t drm_display_mode *mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 int intel_panel_compute_con=
fig(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0*connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 struct drm_display_mode *adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 struct drm_display_mode *adjusted_mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 const struct drm_connector_state<br>
&gt;=C2=A0 =C2=A0 =C2=A0*conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 void intel_panel_add_edid_f=
ixed_modes(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool use_alt_fixed_modes);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 void intel_panel_add_vbt_lf=
p_fixed_mode(struct intel_connector<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; *connector);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/=
display/intel_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/int=
el_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 2e1af9e869de..e07c1070a3ec 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/intel_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/intel_sdvo.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -797,7 +797,7 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_sdvo_create_preferred_input_timing(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_sdvo *intel_sdvo,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 if (IS_LVDS(intel_sdvo_connector)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(&amp;inte=
l_sdvo_connector-&gt;base, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(&amp;inte=
l_sdvo_connector-&gt;base, mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (fixed_mode-&gt;hdisplay !=3D args.width ||<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 fixed_mode-&gt;vdisplay !=3D =
args.height)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -1396,11 +1396,11 @@ static int=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0intel_sdvo_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 pipe_config-&gt;sdvo_tv_clock =3D true;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } e=
lse if (IS_LVDS(intel_sdvo_connector)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(&amp;inte=
l_sdvo_connector-&gt;base, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(&amp;inte=
l_sdvo_connector-&gt;base, mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 int ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_panel_compute_config(&amp;in=
tel_sdvo_connector-&gt;base,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 adjusted_mode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 @@ -1562,7 +1562,7 @@ stati=
c void intel_sdvo_pre_enable(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_atomic_state *state,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* =
lvds has a special fixed output timing. */<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(IS_LVDS(intel_sdvo_connector)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 const struct drm_display_mode *fixed_mode =3D<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; - intel_panel_fixed_mode(&amp;inte=
l_sdvo_connector-&gt;base, mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; + intel_panel_fixed_mode(&amp;inte=
l_sdvo_connector-&gt;base, mode,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_sdvo_get_dtd_from_mode(&amp;=
output_dtd, fixed_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } e=
lse {<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; diff --git a/drivers/gpu/drm/i915/=
display/vlv_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; b/drivers/gpu/drm/i915/display/vlv=
_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; index 76e8cd0f65a4..bfe465443d20 1=
00644<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; --- a/drivers/gpu/drm/i915/display=
/vlv_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +++ b/drivers/gpu/drm/i915/display=
/vlv_dsi.c<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; @@ -280,7 +280,7 @@ static int int=
el_dsi_compute_config(struct<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; intel_encoder *encoder,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pip=
e_config-&gt;sink_format =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pip=
e_config-&gt;output_format =3D INTEL_OUTPUT_FORMAT_RGB;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 -=C2=A0=C2=A0=C2=A0 ret =3D=
 intel_panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_mode);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; +=C2=A0=C2=A0=C2=A0 ret =3D intel_=
panel_compute_config(intel_connector,<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; adjusted_mode, conn_state);<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if =
(ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return ret;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; =C2=A0 --<br>
&gt;=C2=A0 =C2=A0 =C2=A0&gt;&gt;&gt;&gt; 2.45.2<br>
&gt;<br>
</blockquote></div></div>

--0000000000008d0a3306513e229e--
