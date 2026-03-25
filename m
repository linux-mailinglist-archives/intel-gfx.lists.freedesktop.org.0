Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDxSET4fxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C20EB334CF2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D45C10E9AD;
	Thu, 26 Mar 2026 11:57:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ATJ+P0A/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3544C10E873
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 17:30:54 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id
 5614622812f47-4645dde00a7so910468b6e.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 10:30:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774459853; cv=none;
 d=google.com; s=arc-20240605;
 b=WKCfAVRQDyfn4MqX1rYez4undMfWN8CmoHTCo6McH+YqJrxMpKmzC6BIE7lDTJx+NH
 ZLNaAl+AW7madB1VBsNF9YhN0XInDYbBjIuHieqEQIA2Wgu6PogXMRRrSdRdgOzNymsW
 1BmiSHcPDq+VlyUrg50/aEv10EAe8ze5VKY0RJQETwbDbJj5+UY6xJwe9OruVLFhX5oL
 a+gX9c+ElBgn2xte8budXgaHSSIAZ8S/uCLa3CAx1uppmM/ORLvMz6TJtbHtuOaTunVb
 aZ0Rd06URDB6VfJ0iKNpXbDp9C92Om7SpX2tJgg28MRDGUdGAeXl/K80GNjO62oJh6ji
 +5hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=mrKv7ZviJV6tiOPoGmixaisgkXCdd0n5fjy9wgVggik=;
 fh=rdv+BJy8he1oTmv7/M3vo6DyUsqrrOz8XB/cjqcoACQ=;
 b=QxkH+gsM3vyDIxsZcbKftm5ZaadR2tTWKz/ePvzaAq3BFRXZZo641dA4em5cOYUwHt
 yrns/xcL8R7mNOoAldyb1fTosRLF1GQT1vpTdzAgjUSrE2jzkNgPSb/n5aMXHCd0xTbt
 1PrHSkzWCB1cjx1ilLXdO6LDvBGkMphTCAaBDovLWDeQRcRyceZCZpupqr16TGgiNyiZ
 R8q5CRpgGEAZAyYFJgvJjBHbk1XvQAnj2B+UrOmi2+0rANMyljzWnHP1M1Cb4pZZofJs
 qGK/QLpxxSd/abT6QoAQkG8mAgqB9q2jRVowmqS2QZOZePM5kryhLhE2WM3l2Lr0RfJU
 wxYA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774459853; x=1775064653; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=mrKv7ZviJV6tiOPoGmixaisgkXCdd0n5fjy9wgVggik=;
 b=ATJ+P0A/AHzbhcJneGGs3ioTfqfVEuEcztfPKTQv9dSeMzWTL0AgLqPMXpv+1Rqt1I
 XgYMBlUzRSF14v7HMcOyuTgSMlOepmc0k7ooKKZZhokTxvSsw9Jhex4AbxIqkn+FAFjn
 OX1gEQn+tU3birYY/5Y7VAzSSj+GulE6ZW5NsvBmb4ldhhAZ5eBQx6lXn2FBWpC41t44
 zrZwEVHyOe9NOnMWMymq6a4OBVSCFzxBjaOrw70w8ViIvsbAWu+sGKE7W31bThh+VPH1
 ApEPzVEtcCyQSblBYolgS3MxlrGByZ1cqbIfTuJlzYw+r6az7G+VOZ6XjcArUns6UZLS
 b/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774459853; x=1775064653;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mrKv7ZviJV6tiOPoGmixaisgkXCdd0n5fjy9wgVggik=;
 b=BywOFp/T4NpUnngIRNbE08HCUxmy4aCSqPduKjwDC3biu7lPSGyVwWWOsrsv0P1NWN
 E5jOeZoFC9S98FO7UDQSn8ySTorn9KT3GpdL5jdwdh7yfbQAylzqIUnzt8DQe2SfjvmH
 9eNiPOflh2Th8pqXW7AFvUm9RE3TC9PTioI1QKVCMnAoV96CutSK1LE3qrUhM/8hXvYs
 /V8gyrzKZ849q4jooBoE22ZvU3NMCYN3UQUSVPp4ZCxo9Mp2SHlzOeQojjQgn3L1sDfp
 w8uimIhi4Zd5DbtDmOwMDe6daEY6OPu1tANUNclpun28mkPCy4tVNFnrzSMwZEUIxUCP
 BGgg==
X-Forwarded-Encrypted: i=1;
 AJvYcCURhqlN9s0G3ld6xjq+69V4uIzxKFxA9/ptXXgVgtjGfHpe4fzuj9i9Cn924d20isD+5C/oJEEhYe8=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwFeiT70lH3cxf11aIACux38P+SdKvzoAEm4lAwyo/AjA3uGKwc
 A4JG48FHfBEwaXgqPZ96K54nInh4B9ZU95TXaFbaLvyYyIPbo486vZU564kssvEJ8h+Ldr5kSVy
 38A67PS4a6ESt92/Pdcrt5eO9svV0Ba4=
X-Gm-Gg: ATEYQzx55j37ra7Q4TqVQhhpteela14EMrdEJp/HCC4DGZrMJhcTcS2IWnC/vvUDjBC
 hs0OZA+/8lGYJpTEAlg+PpvbfHCyBw73lyomX81biq6PTI2NeI8ipRimpP7Em/N9gVGgX5WbgWg
 owZrHql4p/GBUfPDUV6bYwaG9lJ+EBGA2XTSBaqo/t6jwwNLpldyUr/pBNXLZNw1vrB94o7G5mE
 ycBVfylClv5kEdkjSPbNPR00lHuDGskgPe9cChy3JLVx9FxwoLMI/dt27Z5aauHe7vYojv+3vxr
 3DAJQdE=
X-Received: by 2002:a05:6808:148d:b0:467:317:805a with SMTP id
 5614622812f47-46a0cf747f7mr4437457b6e.26.1774459852355; Wed, 25 Mar 2026
 10:30:52 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
 <177444763778.66558.14341959485998155867@jlahtine-mobl>
 <acQDZJFtsEtm183A@intel.com>
In-Reply-To: <acQDZJFtsEtm183A@intel.com>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Wed, 25 Mar 2026 13:30:41 -0400
X-Gm-Features: AaiRm53OkFoZZk1blclIXC2NACITSzyXexqJ_6MVzMnDsO2BoSixICD3Xw_4Slw
Message-ID: <CANq=4mDtmtz5ZFjCCoeAXEWN82J9m8+DLochsNc6BzfwJ6Pdpg@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="0000000000002af977064ddca186"
X-Mailman-Approved-At: Thu, 26 Mar 2026 11:57:38 +0000
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:gregkh@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[freedesktop.org:url,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Queue-Id: C20EB334CF2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000002af977064ddca186
Content-Type: text/plain; charset="UTF-8"

"Hi Rodrigo,

I am currently following your instructions to file the bug report on
GitLab. However, my new GitLab account is pending manual approval due to
the current spam restrictions on freedesktop.org. I have contacted the
admins for full permissions.

In the meantime, I have prepared all the logs (KASAN splat from vanilla
drm-tip and the clean dmesg from the patched version). As soon as the
account is active, I will post the link here.

Thank you for your patience."


On Wed, 25 Mar 2026 at 11:47, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:

> On Wed, Mar 25, 2026 at 04:07:17PM +0200, Joonas Lahtinen wrote:
> > Quoting Yassine Mounir (2026-03-25 10:20:58)
> > > Hi Joonas,
> > > Thank you for the detailed feedback. I apologize for the double tag
> and the
> > > direct submission to Greg; I'm still refining my workflow.
> >
> > Ok, then to level set some expectations:
> >
> > Have you actually confirmed that the code you have submitted compiles
> > and does fix the bug you reported?
> >
> > Expectation is that you run the reproducer on top of drm-tip and see a
> > crash where you pick the dmesg/KASAN splat from, then you run drm-tip
> > with the patch you have prepared and there is no crash.
>
> Exactly.
>
> Before any further submission, please let's get back to square 0 here.
>
> 0. Please file a bug to our gilab/issues:
> https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>
> Do that against the drm-tip branch and provide all the log information
> from your experiments.
>
> 1. If you have a proposed patch, also please confirm that it actually fix
> the issues that you are solving.
>
> 2. Whenever using AI to help you with the code please ensure you comply
> with this:
>
> Documentation/process/generated-content.rst
>
> Thanks,
> Rodrigo.
>
> >
> > Regards, Joonas
>

--0000000000002af977064ddca186
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote><p>&quot;Hi Rodrigo,</p><p>I am currently foll=
owing your instructions to file the bug report on GitLab.
However, my new GitLab account is pending manual approval due to the curren=
t spam restrictions on <a href=3D"http://freedesktop.org" target=3D"_blank"=
>freedesktop.org</a>. I have contacted the admins for full permissions.</p>=
<p>In the meantime, I have prepared all the logs (KASAN splat from vanilla =
drm-tip and the clean dmesg from the patched version). As soon as the accou=
nt is active, I will post the link here.</p><p>Thank you for your patience.=
&quot;</p></blockquote></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, 25 Mar 2026 at 11:47, Rodrigo Vivi &lt;<a hr=
ef=3D"mailto:rodrigo.vivi@intel.com" target=3D"_blank">rodrigo.vivi@intel.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On Wed, Mar 25, 2026 at 04:07:17PM +0200, Joonas Lahtinen wrote:<br>
&gt; Quoting Yassine Mounir (2026-03-25 10:20:58)<br>
&gt; &gt; Hi Joonas,<br>
&gt; &gt; Thank you for the detailed feedback. I apologize for the double t=
ag and the<br>
&gt; &gt; direct submission to Greg; I&#39;m still refining my workflow.<br=
>
&gt; <br>
&gt; Ok, then to level set some expectations:<br>
&gt; <br>
&gt; Have you actually confirmed that the code you have submitted compiles<=
br>
&gt; and does fix the bug you reported?<br>
&gt; <br>
&gt; Expectation is that you run the reproducer on top of drm-tip and see a=
<br>
&gt; crash where you pick the dmesg/KASAN splat from, then you run drm-tip<=
br>
&gt; with the patch you have prepared and there is no crash.<br>
<br>
Exactly.<br>
<br>
Before any further submission, please let&#39;s get back to square 0 here.<=
br>
<br>
0. Please file a bug to our gilab/issues:<br>
<a href=3D"https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bu=
gs.html" rel=3D"noreferrer" target=3D"_blank">https://drm.pages.freedesktop=
.org/intel-docs/how-to-file-i915-bugs.html</a><br>
<br>
Do that against the drm-tip branch and provide all the log information<br>
from your experiments.<br>
<br>
1. If you have a proposed patch, also please confirm that it actually fix<b=
r>
the issues that you are solving.<br>
<br>
2. Whenever using AI to help you with the code please ensure you comply<br>
with this:<br>
<br>
Documentation/process/generated-content.rst<br>
<br>
Thanks,<br>
Rodrigo.<br>
<br>
&gt; <br>
&gt; Regards, Joonas<br>
</blockquote></div>

--0000000000002af977064ddca186--
