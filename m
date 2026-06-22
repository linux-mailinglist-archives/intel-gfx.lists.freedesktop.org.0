Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oQJ7D9VxOWpHtAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 19:33:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C27C6B17C1
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 19:33:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=pgQPT0ma;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB6E10E7BA;
	Mon, 22 Jun 2026 17:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DF210E7B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2026 17:33:05 +0000 (UTC)
Received: by mail-dl1-f53.google.com with SMTP id
 a92af1059eb24-1390f75d8bbso3779245c88.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2026 10:33:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782149585; cv=none;
 d=google.com; s=arc-20240605;
 b=edNFEf72mD5O622AvsI9GeEGuLKJ3CHO3IDU2Irr7r7942ZNAnMPonnMyL/gw6Q463
 m0zZFLXliFz9txnCGYhlvytYC478Tzytwo+yVaS81CWLdDE03v/K3ieF8U2XZfeYS/cS
 P+wUALg0qI2tPj5E4OHaMlFo6KTxt6ntYiok8IwKeb4v1FAopwIAWh1kh+ugd6xgrNg8
 Skvqx4MjbGP0d+NxBNUDf9sUa4oP0I0IwmRd3Jw/8hTqUyr5f+7OZRCTun0aDSZ6dV3S
 YGFXseALnUPFPPHDGxKsiXzEyHJI4pX2TfygvGkQTXskDQqIvgigw7dLkMOUyOltOhqD
 MpcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=m189siMGpQATgehzZD5A3PVqGeqotQKZygN7B0hsQio=;
 fh=gxUN1WoNhaDq+BEEOt96IP1HOVx1S1SzxHYYgXjepoI=;
 b=WLUGKQ8M4qzZ6smdnpLYO9udZrLLiop8EC6l+Ws5+x1+9NKOrHgBvI2q7kgY9yypgk
 f56bNK2Y+4tiWAFbP9UN9B4L8TlgWWFlHwICinzMiVpQw3tpNsWT8R5HgMTg+Di8EPJV
 zcutLsFG/Y91ijVT3ldGC2brD+jfkNeCd21kOpEc2Fv5/RzIUYIVXY9cyvRkxHWgu4Lr
 tSeFto0GAbECwwT7xKrIjiGAuC78KQze8gf7ahJXQPh/BhioE1X4LSgnhqvoBISBFbbm
 wXjqx5Co8rSMJ4x9mg+gcoexTYx2E022703xkoUdtXDfPh9MgrQ4Z3/ahfzAluBEwy90
 Bz8A==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782149585; x=1782754385; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=m189siMGpQATgehzZD5A3PVqGeqotQKZygN7B0hsQio=;
 b=pgQPT0maD232McPwlJsGGUMEv1/uTrjYdL+dQu/ZIfJGzUUEA7oZTR1vY79fJHyv4G
 drbgil9umyloGQqd+lHKm9oMI5//FjVAV4nX5bCnp7utl72BejTVcpxumU/FpOlJxJwN
 Wn4dnkMrjSjPsojC1dLlQ54S+McNr9tM7cJQamLt4XeH6Nk+kIRZAhdVrjb1SwuIUORn
 yjAUBpntqftd6dnhfBXF9yJellZyOpX2hQII2Clyq265C2Ey+5MQuPGC+85cSXI5get8
 QhyugDNMZUcfrRsMtbUgGFCMdr0Nr7oGYuzXw6glZ6j7woWySLgoliNBRYNWphBu4LJO
 688A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782149585; x=1782754385;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=m189siMGpQATgehzZD5A3PVqGeqotQKZygN7B0hsQio=;
 b=s3A9LKWm6tkeM1k7EFrRHtfJ2I0KNd/RTnLNzzwBGylVMvRznI2KQzF2LsBioCgafV
 lKKRUgDOdysYM9EZvk0vHVI8gE/b8W8v8wmuj9xt2b+MA+mKrM6ajKW+QNlea43uQ+ap
 BIZJueIke/Ra5Cg13apGNX5TAG5eVwsSZCv3eXyJ/oL6YBvTC78VyH5J2OQCtatKRmGy
 x9rQvE4j5OzeYQ1U6C67rQsW2EK7QteULgwS/0yKntsQFrR9gpG3gDH+TdtwvZxHGzgl
 uqoyzmMgx/UCWRYENq1zYgLV+6VUkGEADAU7sxs50SkKvhBfNas/vnF+gx87Pq0lnxM8
 xYcg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+GfDsEjOmSs6cs+XACBQocZYSQViulvFt8+iXdGadLL0EW7Jowrv4S3yOacWeYcEw5JwuqSsw7xt8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzPgrDfHv9xZEjhrap5lh8rfBcSxB6D9ezbHZkxWFIcaNVHgnK8
 B4Y5ElS4z6Ac4d1NtNOBFJLtNsjbGaiwkOYVF0kc6H7HnPlcMnokPQbS+gccyuk0LrqJwDXsj4e
 R+b9xylfIGKnC3PvkcjOomCsEutpsN40=
X-Gm-Gg: AfdE7cnUexFUFK1fqlOfjIWyRfo3I16h6sVW6v71QT4jVfd6atvjERRcFxObWnRyms8
 TQSmxVn8WneZ3iuXSEkfEo76c/Rgr6PJ1Vf33XgDsWpFOYHsLZStBKhyHpM4BTQUH1blgHiYiVP
 Y8mZQu203TAhDQV9QR3lPHoIdduGVXiwWPhKRBLdGef7S3iM+bk44KbSL8RwmG/gSUOtRfGpU5p
 9WaDs24l239CBkdDwXpc8uUhdQ7U+SyT0jgYUjFswenmXBC+8MAkq+tv+HpCbhGM85nwo3J4ezS
 yNHNmc+SK3XMSEIgzBXQAxnPkMFFk90=
X-Received: by 2002:a05:7022:911:b0:138:576:fd with SMTP id
 a92af1059eb24-139a4eb44f1mr7617282c88.2.1782149584465; Mon, 22 Jun 2026
 10:33:04 -0700 (PDT)
MIME-Version: 1.0
References: <20260612144203.31715-1-ville.syrjala@linux.intel.com>
 <3d441831-71bc-49fd-823f-3af443e55b20@mailbox.org>
 <31da350f-adfc-4b2c-a7c5-5ed884ffd9ca@mailbox.org>
 <ai_40qUa-MVdbOEf@intel.com>
 <18f0c14b-f973-4e1a-948b-5274cc36895c@mailbox.org>
 <ajQ7W44qv28-i6Pq@intel.com>
 <159d862f-f06d-4ed7-bf81-082220cdfdd6@mailbox.org>
 <ajkY958UZbD1-5QQ@intel.com>
In-Reply-To: <ajkY958UZbD1-5QQ@intel.com>
From: Mario Kleiner <mario.kleiner.de@gmail.com>
Date: Mon, 22 Jun 2026 19:32:28 +0200
X-Gm-Features: AVVi8Ce7K_dQKtNJ32UEIGQhIj8B5c70Hqw4e2CZ5E3IdNQQg76f85ps776U4xw
Message-ID: <CAEsyxyjVqFv9xoebALSxzLj_7aKt3dw4dZHTB_JsSAbWPGsHPA@mail.gmail.com>
Subject: Re: [PATCH 0/4] drm/i915: Work harder to enable VRR based refresh
 rate changes on eDP
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, wayland-devel@lists.freedesktop.org
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,m:michel.daenzer@mailbox.org,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,m:wayland-devel@lists.freedesktop.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[mariokleinerde@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mariokleinerde@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FREEMAIL_FROM(0.00)[gmail.com];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C27C6B17C1

If I understand correctly, that this is essentially the same or very
similar to what AMD implemented in amdgpu-kms for VRR capable displays
as "freesync_video", then a thumbs up from the sideline from a happy
user of that amdgpu feature with a native X11 client on the native
X-Server :). Psychtoolbox uses that feature to allow users to select
fine-grained refresh rates on VRR capable displays, without need for
full modesets, ie. almost glitch free. Very useful for vision research
applications that benefit from unusual video refresh rates or the
ability to quickly switch at fine granularity.

The useful feature for us here is the ability to do this with a native
X11 client, using standard RandR api's on existing, unmodified, many
years old, native X-Server versions which generally don't use or
support atomic modesetting. Iow. the apps that don't live in a Wayland
native (or client atomic modesetting) world yet. We are restricted to
what standard X11 api's can do, or setting or reading a standard
connector property exposed as RandR output property - without the need
to first enhance the good ol' X-Server and then hope for a release of
said improved X-Server maybe years down the road - or never.

Psychtoolbox uses this since over a year, see the following commit if
interested:
https://github.com/Psychtoolbox-3/Psychtoolbox-3/commit/96970e6d98c9f6ee293=
f018186d3d898d27e77bb

I'm not saying a more advanced atomic modesetting based approach won't
be better / more flexible etc. Just that this is something that can
benefit real world use cases of people inhabiting non-Wayland world
quickly. Can do one thing without not doing the other thing.

Best
-mario

On Mon, Jun 22, 2026 at 1:14=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Fri, Jun 19, 2026 at 10:48:45AM +0200, Michel D=C3=A4nzer wrote:
> > On 6/18/26 20:39, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > On Tue, Jun 16, 2026 at 09:21:01AM +0200, Michel D=C3=A4nzer wrote:
> > >> On 6/15/26 15:06, Ville Syrj=C3=A4l=C3=A4 wrote:
> > >>>
> > >>> What we're doing here is selecting the actual timings to drive an i=
nternal laptop
> > >>> panel, given some random cooked up modeline from userspace.
> > >>
> > >> How can user space know what cooked-up modes it can (not) expect to =
work with this?
> > >
> > > Without VRR support it can only expect modes that have the same refre=
sh
> > > rate as one of the modes on the connector's mode list to work.
> >
> > This seems to contradict "For non-VRR panels we just pick the fixed mod=
e whose refresh rate is closest to the user specified mode, and reject the =
commit if it's not close enough (<=3D 1 Hz)" below.
> >
> >
> > >>> We pick the actual mode from the set of "fixed modes" (ie. the mode=
s
> > >>> that the panel/system itself has reported as supported via
> > >>> EDID/VBT/ACPI/etc.). For non-VRR panels we just pick the fixed mode
> > >>> whose refresh rate is closest to the user specified mode, and rejec=
t
> > >>> the commit if it's not close enough (<=3D 1 Hz).
> > >>
> > >> Can't programming different mode timings result in the panel blankin=
g intermittently?
> > >
> > > Userspace can specify that a modeset is not allowed, thus if the
> > > driver can't achieve the refresh rate change without blinks the
> > > commit will be rejected.
> >
> > How can the refresh rate change without a modeset (without VRR)?
>
> Given a capable eDP panel we can reprogram the dotclock/Mvid/Nvid
> atomically so that the refresh rate changes from one frame to another.
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
