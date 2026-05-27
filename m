Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WNRPBj6bFmq1ngcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 09:20:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706BB5E05D5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 09:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A424B10E74C;
	Wed, 27 May 2026 07:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="OarkKyxm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF42110E666
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 07:20:25 +0000 (UTC)
Received: by mail-ed1-f51.google.com with SMTP id
 4fb4d7f45d1cf-68852a4fc68so7226207a12.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 00:20:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779866424; cv=none;
 d=google.com; s=arc-20240605;
 b=D1JKhiml9AA3HxDtZbR6OKbpHJ2F8MMMYs6uWWHkODyEchN2A7RZwKkYAnYR7byoFx
 KcFqTymLo6Kx4LH/wtdNYrPR28gd17mhJlqj8s+9aQ0FruM9oGx2sIdEa0xWPKmq85RH
 BIoR2W4PcLMie2oDOrAKH7aD/+60m7a6+LiikAp6DyvoLiR730G9LUnnUnWUjA3EdPio
 cjJ9Pa5Yye+93LIf/rdVJwDZO10325tHEZVPi3lK17mzjavt/IUG4RZfQ5ACx7urxNz0
 ltklS1I4aEPfleSeKebwY7dKSxFZ1lbCfjPAGBDE02bCOU8Ro/br7s5Jo8q1tovrFa61
 tErw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=Yihrcx5+tTnyEep6Jw1k4ABEOabBJsZCZvcKUlGjkKc=;
 fh=6a/xZgTXOcMWLu5/njQeHKQqBY1gcZbYVIrKGTdv3lA=;
 b=J+pQQkVK8QldIK4RzT8YeDI5Ceqm6bwPSOO/83sv1c7GAa6AVow9U/E+YWEIBYlUYB
 RFe7Vwgl1sQQGbi8YTM2UlClRes4TEZJaSgFdksUmQK/qCb/SXqaoRzWJ1s8QJ/KUlPq
 lgynh3q0akmL/ZXMjgYDoanXbBPFCSouJrkHMLQR4Il9ajyV1yXJsbezIhR4hL/uWF9+
 kFntsEgZO5SzuRm3mcH0VI6ZGr5yGC4hhejEK1ouWNEkPZuWlJdrUhWRErUmUCqkmnqH
 3Vx4tRYn/hU15YbRvL93xOkhV6f8R74QWOqRDmPkPU0ujdValkwlm4RMaQ174v2Rsgfa
 f78A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1779866424; x=1780471224;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Yihrcx5+tTnyEep6Jw1k4ABEOabBJsZCZvcKUlGjkKc=;
 b=OarkKyxmRdTxK3cI3MDxpKG4YmxIjYMITPRaFscvhWpehpj/5pmoBLZQsNDyjtIH/6
 Cq4V8uoVFTkJsKB1N8DC5cFL+HZGzOYtmkL/a1druOJmMOmbUJyN/vulCMZKDlpZXjAm
 LPj8vUejFTHzsgrZB3KLOybrC8Ios08IihOIJW/XSYzM6lMfNepk65okLIBVQNvohOjf
 y1GO5A3EDShMDVrSyrY23Jow8hc2ntUbk7ZQ/ScP5u23AF9IW5y1USweUAMIqBK/zhAv
 6KqVWl/3oB1ghzVpvNV/GmkGMWiCHHqEb5C8Zos2LlKm2BZPA+hqLhbPn+Xl+TkHOsIE
 1TBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779866424; x=1780471224;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Yihrcx5+tTnyEep6Jw1k4ABEOabBJsZCZvcKUlGjkKc=;
 b=BtyYGMr0Hf0Qfcbl3LKEQnK+rKnRWJAcjcF28mC8Q3n/iosMWiivdNFHkVPzY6J9H7
 OFIPU3U6Gy8c8lOuYgniuxo/x5B0EVT7Uj2lvbHv9X1ecttMHlHn7eyr0SUmwV/C3MM2
 VjQxmeB2BwZlFBMyIcbSkQrj4YXCx4eBEQrrtI8lzlU8TQednhbxNWDEXO2+7dpHGb+5
 NVALDz1MIONVzFBL1ef4zWWdbpcKVmqi2R6XzMyAeZvpbM5pcXa1L1QdJf5egB/zZ30Y
 i/KWrR1L36iWtRh05G+OByN8oUT9/bmKIZ50HseR/o7XbEMiwrqXaIReohzZzDzyeUhg
 i3Mw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+pv/ZsgRtyKfQYKBqP5sfpuJN7F6FDr6Ba1Ig2XinLADi82V6yBLHezjP3nDaK5UfZ32nLhPZ34IY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwWLDMTCrvtiZ1x8XEVMPRRmw6dqXhG/Ahz/bswzw6P0Oz8RX1l
 J/N6NCqnOEKKkHbCD9jyjnHKdJy6ZEKaw4G5HcLr7RB9cgWoj7rj7iZmTdM+3uKtdbLjrODrGYt
 c3qH8eUJQ8NVdUYBX9g3v87zQbmYJ2+9CGRmIF+Yr
X-Gm-Gg: Acq92OGeefFfCjzhfcNafhRyBQOt4acAz4YgD2UVKHXv7pyHNSOyKJ8K4VRJzKSFSRz
 IWdfBodXb4CdDIQ8Iju71CvQA/eRRxEK4HB/kpLf2LUgq1xKJGAFZcYQw5oqfPvMmiMqnGd2nml
 1xGYGjOO0VSf7nfIqmzPfatH19q35Ox8GqyMeorGk+7n1nHWAmcBgt96ufNgTs9ZcG9nYvzMRPo
 miAcfjYpFBq9bN+6jiuJ3AlnkpBmjpJCEaLs3Q3T7dGTOUkiYTzU4FMBdBKHoZBtOjC2nKKm3xm
 EXWF97jyxT23Xgl8uaJDRckttJW/tJFxz9IortI1W/pQMZ0JCpWyqUOX4DO1v67t/etxzueM/+9
 XaEHLd/+fyUTN+YbT
X-Received: by 2002:a17:907:7703:b0:be2:11d7:8b05 with SMTP id
 a640c23a62f3a-be211d79063mr442526666b.24.1779866423574; Wed, 27 May 2026
 00:20:23 -0700 (PDT)
MIME-Version: 1.0
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <adgNxaFhbQaxC5E_@intel.com>
 <u4ononk4cpccx77gvlywtfen5rmyslvr72v7olkhdrjf65aqce@xo777vofhcan>
 <20260413141000.0e190dcc@kmaincent-XPS-13-7390>
 <3698b69f20481ff9c6fb1002b46f9862a1fdd03d@intel.com>
In-Reply-To: <3698b69f20481ff9c6fb1002b46f9862a1fdd03d@intel.com>
From: Manasi Navare <navaremanasi@google.com>
Date: Wed, 27 May 2026 00:20:11 -0700
X-Gm-Features: AVHnY4KnYobreH7-ThSQCNuAMjBh59KUEM83hVRy-c8a5B26QFf5ql2qRqgzYs0
Message-ID: <CAMNLLoT=UBZq9diRTR5cFQ+-hC__Rb=KtzxqQAns8R8G0iBTYw@mail.gmail.com>
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
Content-Type: multipart/alternative; boundary="000000000000ee012f0652c771e5"
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
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
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
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[navaremanasi@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[bootlin.com,oss.qualcomm.com,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,bootlin.com:email,mail.gmail.com:mid,intel.com:email,wikipedia.org:url]
X-Rspamd-Queue-Id: 706BB5E05D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000ee012f0652c771e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you Jani and Ville and others for your feedback on this approach.
I think adding the current negotiated link rate , lane count and DSC status
as part of a connector property is a great
way to standardize this instead of every driver adding a debugfs for this
same information.

Please find my comments for why OS would use this information as below:

On Mon, Apr 13, 2026 at 6:30=E2=80=AFAM Jani Nikula <jani.nikula@linux.inte=
l.com>
wrote:

> On Mon, 13 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
> > On Fri, 10 Apr 2026 00:36:09 +0300
> > Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> >> On Thu, Apr 09, 2026 at 11:36:21PM +0300, Ville Syrj=C3=A4l=C3=A4 wrot=
e:
> >> > On Thu, Apr 09, 2026 at 07:08:16PM +0200, Kory Maincent wrote:
> >> > > DisplayPort link training negotiates the physical-layer parameters
> needed
> >> > > for a reliable connection: lane count, link rate, voltage swing,
> >> > > pre-emphasis, and optionally Display Stream Compression (DSC).
> Currently,
> >> > > each driver exposes this state in its own way, often through
> >> > > driver-specific debugfs entries, with no standard interface for
> userspace
> >> > > diagnostic and monitoring tools.
> >> > >
> >> > > This series introduces a generic, DRM-managed framework for
> exposing DP
> >> > > link training state as standard connector properties, modeled afte=
r
> the
> >> > > existing HDMI helper drmm_connector_hdmi_init().
> >> > >
> >> > > The new drmm_connector_dp_init() helper initializes a DP connector
> and
> >> > > registers the following connector properties to expose the
> negotiated link
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
> > Sorry, I completely forgot to include a paragraph explaining the
> rationale
> > behind using DRM properties.
> >
> > This DisplayPort link information report was requested by OSes to allow
> them to
> > assess the capabilities of each DisplayPort connector on the system, an=
d
> to
> > guide users from the most to least capable ones. It will also enable th=
e
> OS to
> > warn the user when a cable is too long or experiencing noise (indicated
> by high
> > voltage swing and pre-emphasis levels).
>
> The selection of the number of lanes or link rate are at the discretion
> of the driver, or link policy manager in DP spec terms. It does not
> really convey the capabilities of the *connectors* but rather the
> current *link*. Ditto for enabling DSC.
>

I agree that it would be up to each driver to have a policy
on choosing link rate/lane count and when to enable DSC and then if it fail=
s
fallback to lower link rate/lane count as per the VESA spec.

Currently this information is only available through a debugfs and not
standard
across the drivers. However adding it as part of the connector property
would
be useful for the userspace, such as DRM HWC to use this information along
with the link status property to understand the reason for reduced
resolutions/modes
exposed to userspace.  This can be used to provide better diagnostics and
useful
information up to the end user.
DSC being enabled or not or what was the final negotiated link rate and
lane count
could be used to take smarter mode configuration handling choices in the
usersapce
For example for MST, if usersapce can know the negotiated link parameters
usersapce can be smarter in choosing resolutions on each of the downstream
sinks
based on the total link bandwidth between source and the hub.

At the end it just helps the OSs to provide better control to the user in
certain scenarios.
I agree that Voltage swing and pre emphasis values can be removed and we
can focus on adding property for link rate, lane count and dsc info like
enabled/disabled, compressed bpp etc.

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
> > Since this is information that OSes will consume on a regular basis,
> exposing
> > it directly as DRM properties seems the most appropriate approach.
>
>
>
>
>
> --
> Jani Nikula, Intel
>

--000000000000ee012f0652c771e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Jani and Ville and others for your feedback=
 on this approach.</div><div>I think adding the current negotiated link rat=
e , lane count and DSC status as part of a connector property is a great</d=
iv><div>way to standardize this instead of every driver adding a debugfs fo=
r this same information.</div><div><br></div><div>Please find my comments f=
or why OS would use this information as below:</div><br><div class=3D"gmail=
_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Apr 13, 2026 at 6:30=E2=80=AFAM Jani Nikula &lt;<a href=3D"mailto:jani.nik=
ula@linux.intel.com">jani.nikula@linux.intel.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">On Mon, 13 Apr 2026, Kory M=
aincent &lt;<a href=3D"mailto:kory.maincent@bootlin.com" target=3D"_blank">=
kory.maincent@bootlin.com</a>&gt; wrote:<br>
&gt; On Fri, 10 Apr 2026 00:36:09 +0300<br>
&gt; Dmitry Baryshkov &lt;<a href=3D"mailto:dmitry.baryshkov@oss.qualcomm.c=
om" target=3D"_blank">dmitry.baryshkov@oss.qualcomm.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; On Thu, Apr 09, 2026 at 11:36:21PM +0300, Ville Syrj=C3=A4l=C3=A4 =
wrote:<br>
&gt;&gt; &gt; On Thu, Apr 09, 2026 at 07:08:16PM +0200, Kory Maincent wrote=
:=C2=A0 <br>
&gt;&gt; &gt; &gt; DisplayPort link training negotiates the physical-layer =
parameters needed<br>
&gt;&gt; &gt; &gt; for a reliable connection: lane count, link rate, voltag=
e swing,<br>
&gt;&gt; &gt; &gt; pre-emphasis, and optionally Display Stream Compression =
(DSC). Currently,<br>
&gt;&gt; &gt; &gt; each driver exposes this state in its own way, often thr=
ough<br>
&gt;&gt; &gt; &gt; driver-specific debugfs entries, with no standard interf=
ace for userspace<br>
&gt;&gt; &gt; &gt; diagnostic and monitoring tools.<br>
&gt;&gt; &gt; &gt; <br>
&gt;&gt; &gt; &gt; This series introduces a generic, DRM-managed framework =
for exposing DP<br>
&gt;&gt; &gt; &gt; link training state as standard connector properties, mo=
deled after the<br>
&gt;&gt; &gt; &gt; existing HDMI helper drmm_connector_hdmi_init().<br>
&gt;&gt; &gt; &gt; <br>
&gt;&gt; &gt; &gt; The new drmm_connector_dp_init() helper initializes a DP=
 connector and<br>
&gt;&gt; &gt; &gt; registers the following connector properties to expose t=
he negotiated link<br>
&gt;&gt; &gt; &gt; state to userspace:<br>
&gt;&gt; &gt; &gt; <br>
&gt;&gt; &gt; &gt; - num_lanes:=C2=A0 =C2=A0 =C2=A0 negotiated lane count (=
1, 2 or 4)<br>
&gt;&gt; &gt; &gt; - link_rate:=C2=A0 =C2=A0 =C2=A0 negotiated link rate<br=
>
&gt;&gt; &gt; &gt; - dsc_en:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0whether Displ=
ay Stream Compression is active<br>
&gt;&gt; &gt; &gt; - voltage_swingN: per-lane voltage swing level (lanes 0-=
3)<br>
&gt;&gt; &gt; &gt; - pre_emphasisN:=C2=A0 per-lane pre-emphasis level (lane=
s 0-3)=C2=A0 <br>
&gt;&gt; &gt; <br>
&gt;&gt; &gt; I don&#39;t see why any real userspace would be interested in=
 those (apart<br>
&gt;&gt; &gt; from maybe DSC). If this is just for diagnostics and whatnot =
then I<br>
&gt;&gt; &gt; think sysfs/debugfs could be a better fit.=C2=A0 <br>
&gt;&gt; <br>
&gt;&gt; I&#39;d agree here. Please consider implementing it as a debugfs i=
nterface,<br>
&gt;&gt; possibly reusing the Intel&#39;s format.<br>
&gt;<br>
&gt; Sorry, I completely forgot to include a paragraph explaining the ratio=
nale<br>
&gt; behind using DRM properties.<br>
&gt;<br>
&gt; This DisplayPort link information report was requested by OSes to allo=
w them to<br>
&gt; assess the capabilities of each DisplayPort connector on the system, a=
nd to<br>
&gt; guide users from the most to least capable ones. It will also enable t=
he OS to<br>
&gt; warn the user when a cable is too long or experiencing noise (indicate=
d by high<br>
&gt; voltage swing and pre-emphasis levels).<br>
<br>
The selection of the number of lanes or link rate are at the discretion<br>
of the driver, or link policy manager in DP spec terms. It does not<br>
really convey the capabilities of the *connectors* but rather the<br>
current *link*. Ditto for enabling DSC.<br></blockquote><div><br></div><div=
>I agree that it would be up to each driver to have a policy</div><div>on c=
hoosing link rate/lane count and when to enable DSC and then if it fails</d=
iv><div>fallback to lower link rate/lane count as per the VESA spec.</div><=
div><br></div><div>Currently this information is only available through a d=
ebugfs and not standard</div><div>across the drivers. However adding it as =
part of the connector property would</div><div>be useful for the userspace,=
 such as DRM HWC to use this information along</div><div>with the link stat=
us property to understand the reason for reduced resolutions/modes</div><di=
v>exposed to userspace.=C2=A0 This can be used to provide better diagnostic=
s and useful=C2=A0</div><div>information up to the end user.=C2=A0</div><di=
v>DSC being enabled or not or what was the final negotiated link rate and l=
ane count</div><div>could be used to take smarter mode configuration handli=
ng choices in the usersapce</div><div>For example for MST, if usersapce can=
 know the negotiated link parameters</div><div>usersapce can be smarter in =
choosing resolutions on each of the downstream sinks</div><div>based on the=
 total link bandwidth between source and the hub.</div><div><br></div><div>=
At the end it just helps the OSs to provide better control to the user in c=
ertain scenarios.</div><div>I agree that Voltage swing and pre emphasis val=
ues can be removed and we</div><div>can focus on adding property for link r=
ate, lane count and dsc info like enabled/disabled, compressed bpp etc.</di=
v><div><br></div><div>Regards</div><div>Manasi=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
I don&#39;t think the voltage swing and pre-emphasis are really diagnostic<=
br>
measures either, but a response to measuring and adapting to the<br>
link. And if the link training failed, the driver may have already<br>
reduced the number of lanes and link rate to compensate. So you could<br>
appear to have the perfect link only because it was so bad at high link<br>
rate that it was reduced already.<br>
<br>
The policies may also vary from driver to driver, and possibly depending<br=
>
on what makes sense for the hardware (e.g. power consumption with or<br>
without DSC).<br>
<br>
I think &quot;link information report ... requested by OSs&quot; is vague, =
and I<br>
don&#39;t think the concept has been completely thought through. I can&#39;=
t see<br>
how you could present reliable and actionable information to the user<br>
with what the patch at hand provides. Or how it could work in a generic<br>
manner across drivers.<br>
<br>
Overall sounds like an XY problem [1]. We should focus on what you&#39;re<b=
r>
trying to achieve first, in userspace, and only then think about what<br>
the appropriate kernel mechanism should be.<br>
<br>
I don&#39;t think this is it.<br>
<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
[1] <a href=3D"https://en.wikipedia.org/wiki/XY_problem" rel=3D"noreferrer"=
 target=3D"_blank">https://en.wikipedia.org/wiki/XY_problem</a><br>
<br>
<br>
&gt;<br>
&gt; Since this is information that OSes will consume on a regular basis, e=
xposing<br>
&gt; it directly as DRM properties seems the most appropriate approach.<br>
<br>
<br>
<br>
<br>
<br>
-- <br>
Jani Nikula, Intel<br>
</blockquote></div></div>

--000000000000ee012f0652c771e5--
