Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCYdA8/Nw2nuuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B10B532452D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4372810E871;
	Wed, 25 Mar 2026 11:58:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h+fo6/H5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
 [209.85.210.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C264F10E6E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 14:38:36 +0000 (UTC)
Received: by mail-ot1-f47.google.com with SMTP id
 46e09a7af769-7d9b21d1461so2201689a34.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2026 07:38:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774363116; cv=none;
 d=google.com; s=arc-20240605;
 b=BLLZW93XscXuRaQuEemfhD2mrooiaIAaH19XqUA0eThLyuOYp3PsoIAXpRSxhkgxJO
 HBTw92ggUMcnpYtFDgV4DUVRPdaseZWmAlGuz12Ha8NJaWYAvkUcMgsNJNfWUXKWVWRo
 WYmBJVlF6rKV2yma5ybNePIw/SxYbs5LJdnmgp/7uZbfbmK/z/IlEyuqWcH5SUQUDgPL
 J1s4uaGABihbpGmZuJGzY0905n4Sx3k/XBNBlftJPHEUWUEs2vjyL7rfl6ZhmAFQ50v4
 CRwov2aG2H3lOflkxGjVAamzS5dav+OflMzm/tNuk9tHxsRmYF6YXjrgzzXG1fEwtVXW
 OXkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=Q2P2X5a3SvzdfNG+ptErUvhhDJG9k3IfKPvzAZtm4fo=;
 fh=t7VpN6WMhD3AbUOkfNaORR58zNSibwiBVzyOMyzecjY=;
 b=fzTC/2iBEw4nqAp9zEuXH3/dROL3kL2i8oZcwOExX7ImkvSmukQl/s0ikz0eBRoZkZ
 5sPJixjtDPnWcfdnbQ9raH1fgl+FPusEIxMKvzB3GwxRgt7QvKSXFV6NEF5fOoKtA9CS
 e2QAnRHKZYAb145jb3MCouXx257fnUnHsc4Y0Og0lvcX8R6NZi1xklOXjPi4E8eAyaqA
 8oWDoYkJSGUrNKwOM8SYrA/AlC6iMDlNEyfa6m+HVwHdJrFDGkNDwjSIaM6VtG5qXGEv
 l9gnPCHNm/fmVw36F3u8M+brgiHKUa8U0tbgb05Hld82fbOaq7IugoFMhEp182hoI6d1
 M1KA==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774363116; x=1774967916; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Q2P2X5a3SvzdfNG+ptErUvhhDJG9k3IfKPvzAZtm4fo=;
 b=h+fo6/H5cfCQ95Pqdm79/V0ZG5crJMTpofPBkMGK0PH20uagEXZTo0orgo8N1U96/p
 4W934uQtgBTd2B+xWMKePsWH9Az+k/rPfom7wkhOPASds9YuQPd+FMxfQFfjSedp0Q52
 xHVnq09QjNO7fsKQr4A4lofvkoym7eZt0zwuUnzduoHWeWC1XYJHf8J+75zmr/mIfqWp
 Umc4QV/PEwawnh56xEw4lWTyv14N5x6GIj0fMeNxnAFQj1U9SB32r7KPey33Kjdg8BuD
 R0P1dbDtP7QIpQFBCK+JdLin9SZVZwaxxdnBz5cFCO5GEMcfVWS1bIFmyK8bL+P6mltE
 UPRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774363116; x=1774967916;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Q2P2X5a3SvzdfNG+ptErUvhhDJG9k3IfKPvzAZtm4fo=;
 b=L4yPKiht9E46DP/5yPCrMEptMV3THqBp7xZ22sq14HV/4DlB06wFxGeqmxofB4xhG3
 o04/mK2K7H3UOcIJCxhGdDcZV9mdX8baym7U3cmOtffe8mg8UFJGVjGYHW2ZLz8FYqI4
 EBF2ghXIEAo+6t0OrAjT5eU7pjMq1oX1ET1UJdNvkW9ZtiM3eSpY00FVv+tT2S4Pt9ML
 cMhSkrE8PgVEBFlAZ5kuj/NO7P2LDYQwGimc84iajvZ+psnrge0lVVeOXOcZlpCQcFTS
 a8g9yptaAIhzyUv5h2dAX9tKT4LCVo6rFpEuL+B684ZhD7s/ay48RO8SvRBgspSi2bmV
 +d+Q==
X-Gm-Message-State: AOJu0Ywx/8uXpy0wvCmWqIv8X+RvCm+2UD3qsqJTgNGZbw6MujELpl4S
 2YYLzjDH5yz9C+vHWi0JThbehXvSiivQZ0u/pmV9RNfbm4GBd99GGyTeCxra/X9UEhzx+/BN7zq
 j7cn8rAWxdcM27nHHjYrbb7fegaxtsGI=
X-Gm-Gg: ATEYQzx5H9KtyiWtzRFzfeoZA60YXxL0BQHLjUNWNWlv6bqys/DZgNWtaWAi48/1I+9
 IpznIfbCsqvfHTzr4vwanwSo//SpLmeok31t5kKtExXx7JDg/rwXWrV02KU7yEGwi+7jkH3DyUx
 CdgtupBXKFzFk1MbixXqXPYRNtEfH/VCpuQvOIeTuP4+f89w13zXY+LaQBrC4a52OLPbZmSiW4X
 C+PQS7QuNjoBaf2GnDpAglnlIur5fNGjhgYZdITzJdDjb4Qr87D64bggqDvp2aNy/aH9d7jTqLr
 rktQ2Zi1sFxD1lLlbRQ=
X-Received: by 2002:a05:6830:2649:b0:7d9:d3f9:a82f with SMTP id
 46e09a7af769-7d9d4f5b9f3mr1417a34.10.1774363115506; Tue, 24 Mar 2026 07:38:35
 -0700 (PDT)
MIME-Version: 1.0
References: <20260324134718.27331-1-sosohero200@gmail.com>
 <2026032453-depletion-various-b39f@gregkh>
In-Reply-To: <2026032453-depletion-various-b39f@gregkh>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Tue, 24 Mar 2026 10:38:24 -0400
X-Gm-Features: AaiRm50cziF8olqPYG3fyV50MHL9v32hpyhvNyLU62jxWqIfwJZFnDUECBcvuGw
Message-ID: <CANq=4mC4ppxPYShPdQiZ6k44v5oue+NhcY8qXYBV6kEgoSWgiQ@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: Fix UAF race between relocation and GEM_CLOSE
To: Greg KH <gregkh@linuxfoundation.org>
Cc: intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com, 
 security@kernel.org, rodrigo.vivi@intel.com
Content-Type: multipart/alternative; boundary="00000000000033cf8f064dc61bc1"
X-Mailman-Approved-At: Wed, 25 Mar 2026 11:57:58 +0000
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:security@kernel.org,m:rodrigo.vivi@intel.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: B10B532452D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--00000000000033cf8f064dc61bc1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Hi Greg,*

*My apologies for the confusion. I realized I was developing against a
distribution kernel (6.18.12-kali). I understand now why the file paths do
not match the current upstream tree.*

*Regarding the logic: The race condition happens specifically during the
eb_relocate_entry call when a concurrent GEM_CLOSE drops the reference
count to zero. The i915_gem_object_get is intended to pin the object's
lifetime during this critical relocation window.*

*I will now rebase this fix against the latest drm-tip / mainline tree,
remove the 'Reported-by' tag as suggested, and submit a v2 for review.*

*Thank you for your guidance.* *Best regards,*

*Yassine (Toji1)*

Le mar. 24 mars 2026 =C3=A0 10:27, Greg KH <gregkh@linuxfoundation.org> a =
=C3=A9crit :

> On Tue, Mar 24, 2026 at 09:47:18AM -0400, Yassine Mounir wrote:
> > A use-after-free (UAF) vulnerability was identified in the i915 driver
> > within eb_relocate_vma. The issue arises from a race condition where
> > a concurrent DRM_IOCTL_GEM_CLOSE can drop the GEM object's reference
> > count to zero while the relocation thread is still processing entries.
> >
> > This results in the kernel attempting to access freed memory in
> > eb_relocate_entry, leading to a display pipeline hang and potential
> > system instability.
> >
> > Fix:
> > Wrap the relocation phase with i915_gem_object_get() and
> > i915_gem_object_put() to ensure the object remains valid throughout
> > the operation, even if user-space requests to close the handle.
> >
> > Reported-by: Yassine Mounir (Toji1) <sosohero200@gmail.com>
> > Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
>
> No need for a reported-by when you create and sign off on a change.
>
> > ---
> >  drivers/gpu/drm/i915/i915_gem_execbuffer.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > --- a/drivers/gpu/drm/i915/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/i915_gem_execbuffer.c
>
> There is no such file name in the current kernel tree, what version did
> you make this against?
>
>
> > @@ -1542,7 +1542,11 @@ eb_relocate_vma(struct i915_execbuffer *eb,
> struct i915_vma *vma)
> >               if (ret)
> >                       return ret;
> >
> > +             /* Hold a reference to prevent UAF during concurrent
> GEM_CLOSE */
> > +             i915_gem_object_get(vma->obj);
> >               ret =3D eb_relocate_entry(eb, vma, rel);
> > +             i915_gem_object_put(vma->obj);
> > +
>
> What prevents the object from going away right after the put call here?
>
> thanks,
>
> greg k-h
>

--00000000000033cf8f064dc61bc1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p><b>Hi Greg,</b></p><p><b>My apologies for the confusion=
. I realized I was developing against a distribution kernel (6.18.12-kali).=
 I understand now why the file paths do not match the current upstream tree=
.</b></p><p><b>Regarding the logic: The race condition happens specifically=
 during the <code>eb_relocate_entry</code> call when a concurrent <code>GEM=
_CLOSE</code> drops the reference count to zero. The <code>i915_gem_object_=
get</code> is intended to pin the object&#39;s lifetime during this critica=
l relocation window.</b></p><p><b>I will now rebase this fix against the la=
test <code>drm-tip</code> / <code>mainline</code> tree, remove the &#39;Rep=
orted-by&#39; tag as suggested, and submit a v2 for review.</b></p><p><b>Th=
ank you for your guidance.</b>
<b>Best regards,</b>=C2=A0</p><p><b>Yassine (Toji1)</b></p></div><br><div c=
lass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_=
attr">Le=C2=A0mar. 24 mars 2026 =C3=A0=C2=A010:27, Greg KH &lt;<a href=3D"m=
ailto:gregkh@linuxfoundation.org">gregkh@linuxfoundation.org</a>&gt; a =C3=
=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n Tue, Mar 24, 2026 at 09:47:18AM -0400, Yassine Mounir wrote:<br>
&gt; A use-after-free (UAF) vulnerability was identified in the i915 driver=
 <br>
&gt; within eb_relocate_vma. The issue arises from a race condition where <=
br>
&gt; a concurrent DRM_IOCTL_GEM_CLOSE can drop the GEM object&#39;s referen=
ce <br>
&gt; count to zero while the relocation thread is still processing entries.=
<br>
&gt; <br>
&gt; This results in the kernel attempting to access freed memory in <br>
&gt; eb_relocate_entry, leading to a display pipeline hang and potential <b=
r>
&gt; system instability.<br>
&gt; <br>
&gt; Fix:<br>
&gt; Wrap the relocation phase with i915_gem_object_get() and <br>
&gt; i915_gem_object_put() to ensure the object remains valid throughout <b=
r>
&gt; the operation, even if user-space requests to close the handle.<br>
&gt; <br>
&gt; Reported-by: Yassine Mounir (Toji1) &lt;<a href=3D"mailto:sosohero200@=
gmail.com" target=3D"_blank">sosohero200@gmail.com</a>&gt;<br>
&gt; Signed-off-by: Yassine Mounir &lt;<a href=3D"mailto:sosohero200@gmail.=
com" target=3D"_blank">sosohero200@gmail.com</a>&gt;<br>
<br>
No need for a reported-by when you create and sign off on a change.<br>
<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/i915/i915_gem_execbuffer.c | 4 ++++<br>
&gt;=C2=A0 1 file changed, 4 insertions(+)<br>
&gt; <br>
&gt; --- a/drivers/gpu/drm/i915/i915_gem_execbuffer.c<br>
&gt; +++ b/drivers/gpu/drm/i915/i915_gem_execbuffer.c<br>
<br>
There is no such file name in the current kernel tree, what version did<br>
you make this against?<br>
<br>
<br>
&gt; @@ -1542,7 +1542,11 @@ eb_relocate_vma(struct i915_execbuffer *eb, str=
uct i915_vma *vma)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0return ret;<br>
&gt;=C2=A0 <br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Hold a reference t=
o prevent UAF during concurrent GEM_CLOSE */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_object_get(v=
ma-&gt;obj);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D eb_reloc=
ate_entry(eb, vma, rel);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_object_put(v=
ma-&gt;obj);<br>
&gt; +<br>
<br>
What prevents the object from going away right after the put call here?<br>
<br>
thanks,<br>
<br>
greg k-h<br>
</blockquote></div>

--00000000000033cf8f064dc61bc1--
