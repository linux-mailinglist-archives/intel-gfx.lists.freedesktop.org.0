Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNtJHzucFmq1ngcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 09:24:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121FB5E0675
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 09:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B28C10E756;
	Wed, 27 May 2026 07:24:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="opMpjJBI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
 [209.85.218.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B925510E752
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 07:24:39 +0000 (UTC)
Received: by mail-ej1-f49.google.com with SMTP id
 a640c23a62f3a-bd2087858c4so2051885666b.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 00:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779866678; cv=none;
 d=google.com; s=arc-20240605;
 b=RGrt+6nyn3qOmXeCCZKbsmwn4Jd0a/QkZELaa1RYqDcuIzoynYtb6VpA8Rn7tgNOqB
 jN5r+iOxbml7T8qTCEYtOQ1nfOUlU14USC8aNgvD6YUPkBhZ6NWp6tT0DHaI3mLuwEs+
 qmsmaCiaVCAfPZvYUj6o3nY1Y6lEQl/w5wZOvJfcGjvoDS5ro4NZhJ6Ft9f/3q6k78uG
 y6jjJOH/UL3vz+5rraeCxYNTSIMC7Mh4mgNzeSEXXaCoGjLCzXvQvrCgNXLSXtkrhsip
 KAOH+MgOu16+i3S2ULvn1aTk2EyCybDqLxVYzw/hdeONn6UD2V+59zhHfi1aMiw4P5Gl
 4bOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=UHb/oFJuYkkTXytA5kRGkj7lGPcsOEW8fs36CkvCs2c=;
 fh=pMPUISil1r55/GKrJybfX0WGKpZkGiFHIanudmA5qIo=;
 b=UebKHlfRH576ovKjEmaL9cFbeF5ueoVvi1ZMyMyQoDSdbe7zFLcI7hCOo/m100qh16
 c2IAuxQ2pKg5VC+C5y4jwmyTGJ6nWjB0KdwctKNhVS2XC5SgPisXfc7rhi3wtSjaKoqV
 XYVI0mepWLMbGFRx12XHNnfxeOfHmj355eZTa+IrtRHPFX7hcAS5v1x26z0qo1XD3cZG
 gYRpd0cSKdyUrUIa021+xlYQ14Pw3TGEYxvAeafvdl4ZQzxQir3yXs+5m2adNBGqXGci
 OdJG0V47aUeiO9uDLaxUg9hpoRNxmINoFGEJjULvBqetOASgrcoLX+dzkgh/SpQSlfTA
 gLjQ==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1779866678; x=1780471478;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UHb/oFJuYkkTXytA5kRGkj7lGPcsOEW8fs36CkvCs2c=;
 b=opMpjJBIp94sBx+B7qOKCQXMseZvkP5Pktlj5O08sH7quEDmj7XXL5YeRvkRdDPNsw
 5T0t8DKFcF/qjKRGYs5PebHdmyoC47xEPDT91CPWkSggg3RzJeZks3x4MblZcFbVSl4y
 V3WzTcxgRsJ6tg6JivMoX4HUt/gt4RZccq4Q2xfchW9k9oQGq4JUTfvnSCtjv2KJNR4d
 VUXVLrk2V6Jd7CyDx598hwq/D2zftt9c9KnbazLEoyafIYI0a/q2icOixw1m3WZRMY6i
 MZ1aNJoCZcH2RRHHOBKVWkwHC7qM66PAg+8Kk/dDx0Kcpk8dOfmk8jbsS7yFvieJAc5P
 yuLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779866678; x=1780471478;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=UHb/oFJuYkkTXytA5kRGkj7lGPcsOEW8fs36CkvCs2c=;
 b=amGJUwidTuzsTCs8d2GMenVtOMvYB8bfDhiRHuoV3plHXBqIwmSF5b6P0IpAIwv2BD
 T5u5yngA+BucW8afJRvD2U5QU/iaRqAq9iTwFOtMRPqh2SEJMM6qKVmo5uAMrgdDZ2Zt
 C9msXoEVP+BvUoGR+l0XWL54fXqqZIyMccpWXzKWCK54yIV4PAjA63aLtZh5CgkJLC04
 MW0r8f2tYG5u5xxnn54QBCDQ+EPHH/9vZnmaJJLMdLCdeTUHEvnJu0ThEGbwEVPFRe6I
 pMUndaY5qz6BPWpEQQ7OURKf6sJjNG9kxM980lXd+TvGP6vEP5gqnAMIloFR59t7uSFv
 WRHA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8qAh26Op0fIp05daF3EnzVvqCWrsRlM7fCpEcJU1+kGhk+CaP1Un3VfP0W+pS8/u4+X9gaa2Eqk2M=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwpsJlH4n1TxtDimHAkokQtGpv/oTMYCiO1SoCKCI830wpenXtS
 teV1bnV4e9hQJeodaV6IsBL0kscbyly5rSwssK/h0OvSAS4GjUDvoIN+seqByDUmcF91nmgBdNm
 Q8wWq6V9RcFccoX4xPsnmMPp/4JPcgFyC3n9I4p5p
X-Gm-Gg: Acq92OGdxU+MesfyDAVVmp1mYaDTVrsOyVOQmDKUxz2n3Ep00Rd1uxSi4wTpz20PeEg
 IkxpUzCVeUEVCLEklPP5FiicD3ZjEvCxfG6owbfdFqtA4EgJ9UNEi1D5WwDcFdjjrf6EsHo5MDs
 5skWNcA36fPXRhmOisqciWbHekXLEbg3Mu/ByU92f4zoXL7KGuCJMQGjcj1W/e+UQJAF91UpKNl
 sC8LguoJ5/pzsZ52Lauvp3F9DV2ORUU0uv14e6dEZTnEwOWhhqyvX9mIXnDR7SW2PCCDBFhk7AJ
 1S5ySoK+qGOWPHr7RntzF3VFND5eD1G64TgT2jE/IMgTEFHdyRMz+bGRkU623fz5/Csd/YOV1tG
 Mop0WgnZtiMhzqVDL
X-Received: by 2002:a17:907:b59a:b0:bd3:893c:c44f with SMTP id
 a640c23a62f3a-bdd25fd111amr982141566b.19.1779866677452; Wed, 27 May 2026
 00:24:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <adgNxaFhbQaxC5E_@intel.com>
 <u4ononk4cpccx77gvlywtfen5rmyslvr72v7olkhdrjf65aqce@xo777vofhcan>
 <20260413141000.0e190dcc@kmaincent-XPS-13-7390>
 <3698b69f20481ff9c6fb1002b46f9862a1fdd03d@intel.com>
In-Reply-To: <3698b69f20481ff9c6fb1002b46f9862a1fdd03d@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Wed, 27 May 2026 00:24:25 -0700
X-Gm-Features: AVHnY4JySRBm-2P_CbFmaw_WGo2zCHSC-tgnDBB7us3VQxRDYsfxZLlA23v6OE0
Message-ID: <CAMNLLoQmwW-QkuiSyageGWBeuUDUVZWmWyXRD-vkAGZbg1kTzw@mail.gmail.com>
Subject: Re: [PATCH RFC 00/12] Add support for DisplayPort link training
 information report
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Kory Maincent <kory.maincent@bootlin.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Dave Airlie <airlied@redhat.com>, 
 Jesse Barnes <jbarnes@virtuousgeek.org>, Eric Anholt <eric@anholt.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Mark Yacoub <markyacoub@google.com>, Sean Paul <seanpaul@google.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, Simona Vetter <simona.vetter@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:kory.maincent@bootlin.com,m:dmitry.baryshkov@oss.qualcomm.com,m:ville.syrjala@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:airlied@redhat.com,m:jbarnes@virtuousgeek.org,m:eric@anholt.net,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:chris@chris-wilson.co.uk,m:thomas.petazzoni@bootlin.com,m:markyacoub@google.com,m:seanpaul@google.com,m:louis.chauvet@bootlin.com,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:si
 mona.vetter@ffwll.ch,m:jernejskrabec@gmail.com,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[bootlin.com,oss.qualcomm.com,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,bootlin.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,wikipedia.org:url,mail.gmail.com:mid,qualcomm.com:email]
X-Rspamd-Queue-Id: 121FB5E0675
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you Jani and Ville and others for your feedback on this approach.
I think adding the current negotiated link rate , lane count and DSC
status as part of a connector property is a great
way to standardize this instead of every driver adding a debugfs for
this same information.

Please find my comments for why OS would use this information as below:


On Mon, Apr 13, 2026 at 6:30=E2=80=AFAM Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>
> On Mon, 13 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
> > On Fri, 10 Apr 2026 00:36:09 +0300
> > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> >> On Thu, Apr 09, 2026 at 11:36:21PM +0300, Ville Syrj=C3=A4l=C3=A4 wrot=
e:
> >> > On Thu, Apr 09, 2026 at 07:08:16PM +0200, Kory Maincent wrote:
> >> > > DisplayPort link training negotiates the physical-layer parameters=
 needed
> >> > > for a reliable connection: lane count, link rate, voltage swing,
> >> > > pre-emphasis, and optionally Display Stream Compression (DSC). Cur=
rently,
> >> > > each driver exposes this state in its own way, often through
> >> > > driver-specific debugfs entries, with no standard interface for us=
erspace
> >> > > diagnostic and monitoring tools.
> >> > >
> >> > > This series introduces a generic, DRM-managed framework for exposi=
ng DP
> >> > > link training state as standard connector properties, modeled afte=
r the
> >> > > existing HDMI helper drmm_connector_hdmi_init().
> >> > >
> >> > > The new drmm_connector_dp_init() helper initializes a DP connector=
 and
> >> > > registers the following connector properties to expose the negotia=
ted link
> >> > > state to userspace:
> >> > >
> >> > > - num_lanes:      negotiated lane count (1, 2 or 4)
> >> > > - link_rate:      negotiated link rate
> >> > > - dsc_en:         whether Display Stream Compression is active
> >> > > - voltage_swingN: per-lane voltage swing level (lanes 0-3)
> >> > > - pre_emphasisN:  per-lane pre-emphasis level (lanes 0-3)
> >> >
> >> > I don't see why any real userspace would be interested in those (apa=
rt
> >> > from maybe DSC). If this is just for diagnostics and whatnot then I
> >> > think sysfs/debugfs could be a better fit.
> >>
> >> I'd agree here. Please consider implementing it as a debugfs interface=
,
> >> possibly reusing the Intel's format.
> >
> > Sorry, I completely forgot to include a paragraph explaining the ration=
ale
> > behind using DRM properties.
> >
> > This DisplayPort link information report was requested by OSes to allow=
 them to
> > assess the capabilities of each DisplayPort connector on the system, an=
d to
> > guide users from the most to least capable ones. It will also enable th=
e OS to
> > warn the user when a cable is too long or experiencing noise (indicated=
 by high
> > voltage swing and pre-emphasis levels).
>
> The selection of the number of lanes or link rate are at the discretion
> of the driver, or link policy manager in DP spec terms. It does not
> really convey the capabilities of the *connectors* but rather the
> current *link*. Ditto for enabling DSC.

I agree that it would be up to each driver to have a policy
on choosing link rate/lane count and when to enable DSC and then if it fail=
s
fallback to lower link rate/lane count as per the VESA spec.

Currently this information is only available through a debugfs and not stan=
dard
across the drivers. However adding it as part of the connector property wou=
ld
be useful for the userspace, such as DRM HWC to use this information along
with the link status property to understand the reason for reduced
resolutions/modes
exposed to userspace.  This can be used to provide better diagnostics and u=
seful
information up to the end user.
DSC being enabled or not or what was the final negotiated link rate
and lane count
could be used to take smarter mode configuration handling choices in
the usersapce
For example for MST, if usersapce can know the negotiated link parameters
usersapce can be smarter in choosing resolutions on each of the downstream =
sinks
based on the total link bandwidth between source and the hub.

At the end it just helps the OSs to provide better control to the user
in certain scenarios.
I agree that Voltage swing and pre emphasis values can be removed and we
can focus on adding property for link rate, lane count and dsc info
like enabled/disabled, compressed bpp etc.

Regards
Manasi



>
> I don't think the voltage swing and pre-emphasis are really diagnostic
> measures either, but a response to measuring and adapting to the
> link. And if the link training failed, the driver may have already
> reduced the number of lanes and link rate to compensate. So you could
> appear to have the perfect link only because it was so bad at high link
> rate that it was reduced already.
>
> The policies may also vary from driver to driver, and possibly depending
> on what makes sense for the hardware (e.g. power consumption with or
> without DSC).
>
> I think "link information report ... requested by OSs" is vague, and I
> don't think the concept has been completely thought through. I can't see
> how you could present reliable and actionable information to the user
> with what the patch at hand provides. Or how it could work in a generic
> manner across drivers.
>
> Overall sounds like an XY problem [1]. We should focus on what you're
> trying to achieve first, in userspace, and only then think about what
> the appropriate kernel mechanism should be.
>
> I don't think this is it.
>
>
> BR,
> Jani.
>
>
> [1] https://en.wikipedia.org/wiki/XY_problem
>
>
> >
> > Since this is information that OSes will consume on a regular basis, ex=
posing
> > it directly as DRM properties seems the most appropriate approach.
>
>
>
>
>
> --
> Jani Nikula, Intel
