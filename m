Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id V50nKbhxMmpB0AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:06:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A97D69841F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 12:06:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=YBCNELCM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804FE10EF49;
	Wed, 17 Jun 2026 10:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com
 [209.85.128.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA11410E6E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2026 11:10:23 +0000 (UTC)
Received: by mail-yw1-f180.google.com with SMTP id
 00721157ae682-7dd5b6ab9b9so4644877b3.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2026 04:10:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781608223; cv=none;
 d=google.com; s=arc-20240605;
 b=bkQOBJH+pOIiFLK3U9xWp+hELaao6f3H2H3d5sqChnBNE3bPvb22L7QG8pOhkIomHK
 ZFQ7jM2xFJLQ4xBZ5zlPrNzLJQSMiOsgb3/dnpt5/KIl325jKAB7kSoUSPBeupCijpW2
 Fm+dyeWj4wSnvbN52NzPkWJ5FHHPJRB+AaCSjZQQJjtWEVgn3SS9Oao3/Vs640Eh64qw
 OPEWvU2y/wFABbWBxqWQ2sR0NOZxwT1rCxnKBfumJNCzcdb3kj/Ykc6lEXnWQRwH8d5U
 mHAKyNZp5sHOyS4pbrHZB0mP7eb7ldooVul6bYlYi4uJLYqeMTik9o9fZE+HJciuh2ks
 mXew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=XnQGf3/5vCqgVWqxY/DGqYxzXTgm/RoqiCdxmqh6DjI=;
 fh=+XKpuXCurrxKHEt8xv5ru4jA/Smn4xT6YmXndJHo8FY=;
 b=fc9Ql1NdHleoCoPbohwQezGNdNsND+KqwohRN34Qc1liQG6L3tB0KZLntsDK6HFZDv
 O1PJcyxZg/7rB8BvQS7kqHMh6STHiCZTzH8Brr9a7YT/x47k4uRbAj1hyf0bRU/JfEb1
 ggY4myIv65KtJb3I9/sI6BoRgM8virIFj90QSFwwPXYqLjYa85+KYqEqChZYj3rFf6RI
 t2l49TiGlXle6ch2r3sbu9W1sAzfItRj8Yj9GXtjRQh8c6F7tAB1cxFu0BEd0yxPJfLK
 CyEneDKsOx1fDxwwkPXQ9L8y4C3HlALEVwyX7B0gx2Z+mNzixIebGLHla57a6mfwpg6S
 Ykpg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1781608223; x=1782213023; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=XnQGf3/5vCqgVWqxY/DGqYxzXTgm/RoqiCdxmqh6DjI=;
 b=YBCNELCMGkpbaySp97/fGqoguhpdq1WdGOdZN5pEHnjpoDWxTKMSNvPa4xNs8AIWJi
 uwDawC5rcw0sGBuA8ypNmRcATMa3UGN4UZjQWkQAe1kPj/eODKH2JeaUIOYFf1s5zWNk
 iSbAYFyWW64StBBU2sLAEoIEF358tZjV6bDI6S9od6UCxZCzh0KF4dLFYxD93ErGfkTW
 ykKM3TZODeA8lURwqrFYxl8EU1AAGvKwl2m1kfDUfCaHd6LWWWgvw+k3UoGv7MZBTTDS
 wUHdD9liJamaTvKzExzR/8cclIZMfOZTqloT1S+Ep6vF/34/Cl8pErHVPTDAE2jwJYh8
 UXAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781608223; x=1782213023;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XnQGf3/5vCqgVWqxY/DGqYxzXTgm/RoqiCdxmqh6DjI=;
 b=HYuKjJiEC0AeJZMRAELhrFukbM5SDCiAW3griIawICTSUNRUw8r8HI5KxruGZZPCrH
 aSE8IKISG3mtU3DmjYMiSHooKbg/CTQs/nJ0+MRG8tYs+9XcnsYsj7c+GbQWP16emDeJ
 h9Rqh5i67YuZcpLrY275hjS1Oe23SbfkudLht/ykUgRoOY3qpIpiWfCMzhvTwUGco/jN
 tGUslHAAw574FzPhcHXRcBop/bErord+eZ2XyVPhvTld7JmM9S+Vp7i54PBgIXb8pWI1
 YVcFoDDLc0XhYDA+DUvjWYRO7dtTH2xL7sDo5HHvdGSF0Nk6NUlctFgO4DEmnc4zt1Yn
 YoOw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/KAonNNlcMK8ET0KU3ZUruOqBcrj5v/uG9kvn0Dec/jG3nbN4kwtUMXT52JoRBfeVyATopfF8KWtg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yx1cI6tx7f4ZYptobC0x976s1GExX8K5GCcihA4JVAI7qFcAhyu
 axCSqC/raDgifvCS4Bsa9SIw4LC/fXxfsmiOiGjY+4rL4BJGVDXpvt9BEfTN+mUbiOfDntR0ROv
 S403zfFSmmkxkrrgnp+6KCf/pEbn0Zag=
X-Gm-Gg: Acq92OFF0H1tzYwaMy3T9mgRLuSQavUkFWyiEtThfmyljFHiSfl0uy8/VJKRmp3rTPF
 7dyPSPpcl0Rk0i7DkYYc3ZsLkebciXl9fNMxZGzlwn5xFRt4lCdGHXzoVgvrdOLKPK+J1qGp9A9
 ypV//pnkw3eubTiK1/bw7kt9J2Y22UYE6c5681D6JLVG+WKvEzgHVIlyPENmdCc7bt0JWyu0mG2
 GvSBhhW6yeewS3hI+rJ94qaiCMMBkomhLPmGNZ1i7OB/vHxWdURIzMKdG1LWz5CBw/zwhpQOaLj
 Xutisv+V4MT2yxQuJxeT72XsmCpedFg+9ClLxFV9EhnOk5mpfq10hJ4sbeuWsMM=
X-Received: by 2002:a05:690c:e3c9:b0:7f0:d73e:99b4 with SMTP id
 00721157ae682-7f7b9524a9amr111398567b3.7.1781608222575; Tue, 16 Jun 2026
 04:10:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260616-fec-v2-0-49a22680138c@intel.com>
 <9827508667e0b19e939284e7989a47df278667f7@intel.com>
In-Reply-To: <9827508667e0b19e939284e7989a47df278667f7@intel.com>
From: Stephen Fuhry <fuhrysteve@gmail.com>
Date: Tue, 16 Jun 2026 07:10:11 -0400
X-Gm-Features: AVVi8CfddeaXSDOf8qsmrNlny4rpNYBN6cmdcKLZIMrdtNAAvNLuHoROx0Tuz1w
Message-ID: <CAEraX5w2fFBkoEzCt3kK+rrWCsDxBtM+AX4=fmDFUAS-vJxMMA@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Unify fec enable/disable across the mst streams
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000003c504306545cfd34"
X-Mailman-Approved-At: Wed, 17 Jun 2026 10:06:45 +0000
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@linux.intel.com,m:arun.r.murthy@intel.com,m:intel-xe@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fuhrysteve@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,mail.gmail.com:mid,intel.com:email,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A97D69841F

--0000000000003c504306545cfd34
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jani,

I'm the user who reported the underlying bug -- happy to provide some
concrete grounding for why the problem is real and the fix is at the
right level.

The symptom: replug of a ThinkPad USB-C Dock Gen2 (DP-MST, two
monitors, DSC+FEC on both) triggers a cascade of ~40 fec_enable
fastset mismatches in a ~3 second window, forcing repeated full
modesets that cause a ~2 minute display cycling loop before the
topology settles. The cascade is visible in dmesg even on a clean
drm-tip build with no patches applied.

Arun's analysis is correct. The root cause is exactly the per-port /
per-stream mismatch he described: when only one MST stream is in the
atomic commit, intel_pipe_config_compare() computes fec_enable=3Dfalse
for that stream, but the sibling stream has already enabled FEC at the
HW level (DP_TP_CTL_FEC_ENABLE is link-wide), so the fastset check
fails and falls back to a full modeset. That modeset commits one
stream at a time, perpetuating the mismatch for the other stream on
the next check, and so on.

With both patches applied (tested on 7.0.10 + series/168418), the
replug is completely clean: zero fec_enable mismatches, no full
modeset, displays come back in normal hotplug time.

The complexity in the patch comes from the problem itself: FEC
genuinely is link-wide at HW but per-stream in the driver's state.
Any fix has to either unify the per-stream state before the fastset
comparison or avoid comparing the per-stream state for a per-link HW
bit. The unify approach Arun has here is the most direct way to make
the driver's state consistent with the hardware's invariant.

Stephen Fuhry

On Tue, Jun 16, 2026 at 4:01=E2=80=AFAM Jani Nikula <jani.nikula@linux.inte=
l.com>
wrote:

> On Tue, 16 Jun 2026, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > First version of the patch included only one patch i.e the ref count
> > https://patchwork.freedesktop.org/series/167664/
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> > Arun R Murthy (2):
> >       drm/i915/mst: Unify fec_enable across mst streams
> >       drm/i915/display: Refcount for fec enable/disable
> >
> >  drivers/gpu/drm/i915/display/intel_ddi.c           | 58
> ++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_ddi.h           |  1 +
> >  drivers/gpu/drm/i915/display/intel_display_types.h |  3 +
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c        | 70
> ++++++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 ++
> >  5 files changed, 138 insertions(+)
>
> Okay, this may seem a bit unfair, since I haven't dug deep into the
> problem, but I really have a hard time believing this level of
> complexity is required for FEC.
>
>
> BR,
> Jani.
>
>
> > ---
> > base-commit: c585a0a7e48a48aca80f7c0acb7294c7bf301bb7
> > change-id: 20260616-fec-82a3d27e0f11
> >
> > Best regards,
>
> --
> Jani Nikula, Intel
>

--0000000000003c504306545cfd34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jani,</div><div><br></div><div>I&#39;m the user wh=
o reported the underlying bug -- happy to provide some</div>concrete ground=
ing for why the problem is real and the fix is at the<br>right level.<br><b=
r>The symptom: replug of a ThinkPad USB-C Dock Gen2 (DP-MST, two<br>monitor=
s, DSC+FEC on both) triggers a cascade of ~40 fec_enable<br>fastset mismatc=
hes in a ~3 second window, forcing repeated full<br>modesets that cause a ~=
2 minute display cycling loop before the<br>topology settles. The cascade i=
s visible in dmesg even on a clean<br>drm-tip build with no patches applied=
.<br><br>Arun&#39;s analysis is correct. The root cause is exactly the per-=
port /<br>per-stream mismatch he described: when only one MST stream is in =
the<br>atomic commit, intel_pipe_config_compare() computes fec_enable=3Dfal=
se<br>for that stream, but the sibling stream has already enabled FEC at th=
e<br>HW level (DP_TP_CTL_FEC_ENABLE is link-wide), so the fastset check<br>=
fails and falls back to a full modeset. That modeset commits one<br>stream =
at a time, perpetuating the mismatch for the other stream on<br>the next ch=
eck, and so on.<br><br>With both patches applied (tested on 7.0.10 + series=
/168418), the<br>replug is completely clean: zero fec_enable mismatches, no=
 full<br>modeset, displays come back in normal hotplug time.<br><br>The com=
plexity in the patch comes from the problem itself: FEC<br>genuinely is lin=
k-wide at HW but per-stream in the driver&#39;s state.<br>Any fix has to ei=
ther unify the per-stream state before the fastset<br>comparison or avoid c=
omparing the per-stream state for a per-link HW<br>bit. The unify approach =
Arun has here is the most direct way to make<br>the driver&#39;s state cons=
istent with the hardware&#39;s invariant.<br><br>Stephen Fuhry</div><br><di=
v class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Jun 16, 2026 at 4:01=E2=80=AFAM Jani Nikula &lt;<a href=3D=
"mailto:jani.nikula@linux.intel.com">jani.nikula@linux.intel.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, 16 =
Jun 2026, Arun R Murthy &lt;<a href=3D"mailto:arun.r.murthy@intel.com" targ=
et=3D"_blank">arun.r.murthy@intel.com</a>&gt; wrote:<br>
&gt; First version of the patch included only one patch i.e the ref count<b=
r>
&gt; <a href=3D"https://patchwork.freedesktop.org/series/167664/" rel=3D"no=
referrer" target=3D"_blank">https://patchwork.freedesktop.org/series/167664=
/</a><br>
&gt;<br>
&gt; Signed-off-by: Arun R Murthy &lt;<a href=3D"mailto:arun.r.murthy@intel=
.com" target=3D"_blank">arun.r.murthy@intel.com</a>&gt;<br>
&gt; ---<br>
&gt; Arun R Murthy (2):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0drm/i915/mst: Unify fec_enable across mst st=
reams<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0drm/i915/display: Refcount for fec enable/di=
sable<br>
&gt;<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_ddi.c=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 58 ++++++++++++++++++<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_ddi.h=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 1 +<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_display_types.h |=C2=A0 3 +<b=
r>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_dp_mst.c=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 70 ++++++++++++++++++++++<br>
&gt;=C2=A0 drivers/gpu/drm/i915/display/intel_modeset_setup.c |=C2=A0 6 ++<=
br>
&gt;=C2=A0 5 files changed, 138 insertions(+)<br>
<br>
Okay, this may seem a bit unfair, since I haven&#39;t dug deep into the<br>
problem, but I really have a hard time believing this level of<br>
complexity is required for FEC.<br>
<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
&gt; ---<br>
&gt; base-commit: c585a0a7e48a48aca80f7c0acb7294c7bf301bb7<br>
&gt; change-id: 20260616-fec-82a3d27e0f11<br>
&gt;<br>
&gt; Best regards,<br>
<br>
-- <br>
Jani Nikula, Intel<br>
</blockquote></div>

--0000000000003c504306545cfd34--
