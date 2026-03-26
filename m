Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPSpLpVhxWkJ+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 17:40:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D45F338932
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 17:40:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BC4710EAB4;
	Thu, 26 Mar 2026 16:40:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=fooishbar.org header.i=@fooishbar.org header.b="CCRnA2hF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com
 [209.85.219.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5681210EAB4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 16:40:45 +0000 (UTC)
Received: by mail-qv1-f54.google.com with SMTP id
 6a1803df08f44-89cd8596724so11787436d6.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2026 09:40:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774543244; cv=none;
 d=google.com; s=arc-20240605;
 b=EF7dh5zDMAIcqy+w6Cos0k5Pdw+2oFQvGWGNL5FbdZ3Ghh3JlFO2+QsnKkT8ErDfja
 IBJQVk09sf9jJMfCRCAr80lh+Qb3jYSCy/UJP1f9TsPwrD5WsKEoKQVgSV0yvx/+SbWw
 3y7e/5b6VveLys/rbNmQx0AXuLi5vXfUVQLK4iXM0VGFsze+AyhFfKUnEyyLp6cG6ukW
 pHecM6i8VY/5pReC4rnsDG8np2dbFaN7FE1+6O03UcSOiuI/PUGmsjrMn9pbI/pY4Vw8
 /xfD6mXz38D28j3bMfTCq4FjBULWu0o661pho7xOME3Wvpv8oTemlgGPwlIFXf5bDuDS
 gXAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=lMVh41/flJhHXUmskY74HI0cHDnV8XVUzcIyI3Tc5Ws=;
 fh=NluWaHQ0nqsZ8LRKq/Lw9UPQRTP5sxA6LY1vbjPq7JI=;
 b=Z2KIldlN9G6CgG1JeaBukn/zru9cW4J8QtyZq+LWQyChW1VGUbqqSGMfAWnpZd85B8
 XW6gC5PgxegSjxxH3CHJtcynSA4jWXNc2WEV5YhzQXmLDmWI5m0+BJZsenEMT/EIFD6b
 o+w00IX+EvnY8cgfAbzlxvMzpK/DxOb1VSktKT1tV2OR21l4g/ctrgnK3Lo6U2DD2Pyy
 ijmNfubNPfDf3Qts6Guvu3SBevRBVJ9Nybet/D+awY2Fdq5W6OaWBQVa9nppFSZTz/hv
 kXQfp0dqIpNTj1yN1kKBZqLA1h7V+UQgA7v6u4c0jSo7/NdeJJ7D00AmaYOr4aqBYp9o
 AVVg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1774543244; x=1775148044;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lMVh41/flJhHXUmskY74HI0cHDnV8XVUzcIyI3Tc5Ws=;
 b=CCRnA2hFRv8yoU+thC0FZQwtVam9IbfB8aV6s+OhgYJdS0vJd8AOFSWnEQwWzHMe9L
 aePWY1t4zBjB3WYdaBlCnj+PVARLWcFI7TWvh+B1EP1zeLVdxLgvo0LhzQLiLOeNrhZM
 dJD5LYifRu5evPeaQFgKLZJqu09YtC7PqoZTFsxBAc6PYs8CEsrceYOCqgze4z/eiImf
 0VeB0uNaK39cjl9V7+q4jRTc17s9jIUB2tABKoIfIXysGCumCPOWMyrh/OWujL+9BZBK
 qwo52qm/3B0Td1twsYG+1zYfqqNBHbtquKQY9NdLBe8GMJgB93XzV29gq+5KFOaDaM0C
 3Emg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774543244; x=1775148044;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=lMVh41/flJhHXUmskY74HI0cHDnV8XVUzcIyI3Tc5Ws=;
 b=TzIsNcMGCSrvTPd1xHaIP2HHP4ABN2hxSA60uQHuQ4QXdn3gMoifxbs+0ujpl1ydWM
 kO82QWitwA9mACOYKhpDYdcr1qrnpBXhSXKRQvRkV/7ywAm5G8hxp1Q0oU/P1RRDeDdj
 zmpDc4QLBGd2SuLgZkU21gC8KMOPb/ZLH/7Bp8G5MIDPUQTdgOoKi5nEYyvbw1L3i4Bg
 vos5Vtuh7xUa1XzwZSE1pUIn/tR238Z2RQbjObWHfwM2e+8gF0OWseG3bAiyA00182jo
 Zg/4X53SNQC6OFf49gt85Z+9gLeYba/Wk86+5AU4zPhoSZveSQHK/akVCdi4+ONJRZMy
 eltA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU1yp7JqooeGk6i4xs9bly3lVXB9s373SmKYhf5FCGuFCASvLQDSi6rhRPQyzdyc8vZumCQvMqr5ko=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwO6Ud8GCWE9Au6i0WWx8Mf+dFuphDzPHF4/3oPHgSAgHiYqArp
 QbhSgv9PuuVKmjOEK5eJXPJ4HQvX8MxxmvTHpD65DPoLbQ8B1z+IBMxhZbspXSDC/Cf5DxTPdBJ
 ddnGeXZyF2XFMHFoKXVxTotOhiaGCDE21Etl0BMk7Rg==
X-Gm-Gg: ATEYQzzDNQZ6DNidDwZRvQK98Mxk0RCUsycKby3otJf/vhhXddwngpsLxyVcfB4q4As
 qxWN/7b+vKLdd9qEHemucj8ROpHq6N8l6JVFjWE8wD2scQCBVK6C+O1PxD3UcxtVgWcjWZgCAvc
 ZoonY7iTx0nggmqPJfN6PD3wFMU0BGnmkM+7l9yVUDYKGJDqU3bMeSjZEE9DmcjM2l7PJlz/kSa
 1MQZ7IpJ/RHERa7VFu7vS7sOghUiGm6b5DLTWc4DhfUuxX/5OxC41RBCKeGSIO0fPJ2uPI9ryYG
 j2qF7E4=
X-Received: by 2002:a05:6214:d6f:b0:89c:866d:15c9 with SMTP id
 6a1803df08f44-89cc4b07bc2mr122325186d6.56.1774543244239; Thu, 26 Mar 2026
 09:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <20260325-neat-elegant-raven-ebc9ab@houat> <acPA60Ci3n_t__xF@intel.com>
 <3979783.tdWV9SEqCh@workhorse>
In-Reply-To: <3979783.tdWV9SEqCh@workhorse>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 26 Mar 2026 16:40:32 +0000
X-Gm-Features: AQROBzB2J1rLcK9oOY95uN7pO5Y8iJWro7kBrTyJSKQV06IZlwAC79afqJRLPi8
Message-ID: <CAPj87rMpu-ZL45_uNPcZe3gu8Eqn2ALp3r0zRgghvT08-6RGVg@mail.gmail.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, 
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 Werner Sembach <wse@tuxedocomputers.com>, Andri Yngvason <andri@yngvason.is>, 
 Marius Vlad <marius.vlad@collabora.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[fooishbar.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[fooishbar.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[daniel@fooishbar.org,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[42];
	FORGED_RECIPIENTS(0.00)[m:nicolas.frattaroli@collabora.com,m:mripard@kernel.org,m:ville.syrjala@linux.intel.com,m:harry.wentland@amd.com,m:sunpeng.li@amd.com,m:siqueira@igalia.com,m:alexander.deucher@amd.com,m:christian.koenig@amd.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:tzimmermann@suse.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:lumag@kernel.org,m:s.hauer@pengutronix.de,m:robh@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:kernel@collabora.com,m:amd-gfx@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:intel-xe@lists.freedesktop.org
 ,m:linux-doc@vger.kernel.org,m:wse@tuxedocomputers.com,m:andri@yngvason.is,m:marius.vlad@collabora.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[fooishbar.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@fooishbar.org,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[kernel.org,linux.intel.com,amd.com,igalia.com,gmail.com,ffwll.ch,suse.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,rock-chips.com,sntech.de,ursulin.net,pengutronix.de,lwn.net,linuxfoundation.org,collabora.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,tuxedocomputers.com,yngvason.is];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,collabora.com:email]
X-Rspamd-Queue-Id: 5D45F338932
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi there,

On Thu, 26 Mar 2026 at 12:44, Nicolas Frattaroli
<nicolas.frattaroli@collabora.com> wrote:
> On Wednesday, 25 March 2026 12:03:07 Central European Standard Time Ville=
 Syrj=C3=A4l=C3=A4 wrote:
> > But I'm not really concerned about documenting struct members.
> > What I'm talking about is the *uapi* docs. Surely userspace
> > will want to know what the new property actually does so the
> > uapi needs to be documented properly. And down the line some
> > new driver might also implement the wrong behaviour if there
> > is no clear specification.
> >
> > So I'm thinking (or perhaps hoping) the rule might be something like:
> > - YCbCr limited range
> > - RGB full range if "Broadcast RGB" property is not present
> > - RGB full or limited range based on the "Broadcast RGB" property
> >   if it's present
> >
> > I think the "Broadcast RGB" property itself might also be lacking
> > proper uapi docs, so that may need to be remedied as well.
>
> Alright, so in v12 I'll do the following:
>
> - Add a line to all YCBCR connector formats that specifies they're
>   limited range as long as Broadcast RGB is limited. Whether it's limited
>   range when Broadcast RGB is full is purposefully left undefined.
>   In the future, we can expand this to state they're limited range by
>   default unless some other property is set. If we're not re-using
>   Broadcast RGB for that, this will work out fine, because users who
>   don't know about the eventual new property won't have this behaviour
>   changed. If we do re-use "Broadcast RGB" for that, then only users
>   relying on things we explicitly left undefined will get surprise
>   full range YCBCR.
> - Add a line to the RGB connector format that specifies its range
>   depends on the "Broadcast RGB" property
>
> This is a bit of a mess, because it's entirely reasonable that a
> future YCBCR range property would want to default to full range
> so that users get the most color out of their monitors. But with
> this description of the connector color formats, we can't do that.
>
> If there are alternate suggestions, I'm open for them. We can't
> really rename "Broadcast RGB" but if I had a time machine, that'd
> be my first choice.

'Broadcast RGB' isn't what you want even if it could handle YUV, since
it also sets up colour transforms to modify the data ... so we need a
separate, orthogonal, property which only affects the HDMI infoframe,
rather than applying any transforms.

Cheers,
Daniel
