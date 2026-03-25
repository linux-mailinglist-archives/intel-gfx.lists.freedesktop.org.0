Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNuLFMvNw2lKuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2576324526
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A87310E864;
	Wed, 25 Mar 2026 11:58:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZfjM+Vkd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
 [209.85.210.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C530110E81A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 08:21:10 +0000 (UTC)
Received: by mail-ot1-f54.google.com with SMTP id
 46e09a7af769-7d55b97f358so1372213a34.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 01:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774426870; cv=none;
 d=google.com; s=arc-20240605;
 b=APoy1gm/IETbO/g8jZZYIB8WBa+5jmATVbV2nP7Vjaf9GdW/Mc2QX7Wo8THq0nJw6u
 xv65VqQJVRx2K45vEBYwED9InsDMFIInkVXRl8FvidhOiqDZ0pdDDkn0hBcrP5EnzhZf
 NdrCMQfXbvmxbUkJfLNa0iCbhHHzJeuHNETq4tBWAbcJKIBVn9RX2jLKdPYtZ6EXp0lx
 TwVic0RpRh7QS0KvE+yd8928qVC2C2YFmnkkAAD5vN0DtnQ3ZIUGmHocZK3TjU3PVTBy
 yueuLJaD7xTXavsyT3nl2HzvJwjbnNPAgHJHb7V1gmYVJAK1ndwvKC+V6YMp+WXXz0qD
 nrnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=lmlMzdTsIGDorh9X+EMSHVxDHXWPV7NeX8y2bW1CyiA=;
 fh=x33IyECuU9LPkhp2tImw0qyV1UVwBApPO0cbM6oTVDQ=;
 b=Wv63tNp7TuxAGkW++DjwCv8/59DoExb54OMHy6CQIBw4P2itFNIQmV+U2k0HSL5fYC
 W4Xikwc/81GRALvnlqv0uHhoUD7qB9VxCcEHAZU16M17C7NUsrt5FBqXF16tqGflxWc7
 DtOy5QWceXxWsy60wbkL+cLeKvQrFH+9dBUlOSmTJ2wh4kKr/k6/8xZ61ffFPEvZrRi7
 gTrNmo1EafLIE6pWPlSGYwRkN1l3Em8qEsQkihIIyQzYw5AB+W9uqaTsDUgG2sZb2j+W
 c7tpL8MoXvaTyuGlM8u56mMbi6yDETH8Br6semQQ/UwAk0iMRW83ibCfChe/egdO3lw9
 Gpxg==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774426870; x=1775031670; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=lmlMzdTsIGDorh9X+EMSHVxDHXWPV7NeX8y2bW1CyiA=;
 b=ZfjM+Vkd9JPXUaQHdYPYe+kAhIUZAcVEDLMkgtBzQMJRyKGTZ1wMhg2e8flyny/+SM
 lEsxGsh6dPmKHTGvwTqVwzMTfstquLo3A9/nHCwzPqiAz8MCRHRw9TDQs6xfjloSr2mO
 S3/MQggWIMiKgtoDcB1Soirec3GJAslM4gkv1ecmx9s06J+vULPCJrvxJVewZlspnKQ/
 1sOKujhmVfd6ys4ecQv5KxLik6nwtyzBDS36FStFgTQ6BDXTiRb1LYb5bqGwgSCDO7s1
 W7BS3t42FTR/VPcOpYTWpaFpuSTuj7fVkMCZIAvF20sgZvleDcP/l/qpATWZkRUmhzfd
 wDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774426870; x=1775031670;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lmlMzdTsIGDorh9X+EMSHVxDHXWPV7NeX8y2bW1CyiA=;
 b=MzjJhxRTsAzhxz0lKFCIHyi5p0c496g30woBNqcd2Ygm9Aeptp/yrvsM+cpKHSXtXw
 QWgO9iKsi4n3p7DGsV29sXfwc/KhSC6wJx6wtHVI0xQGSegd+w2qsdHV0+0nBoDU2jE2
 v92jJrpYDF0sPApcfIz+bsVWmKmYPwOr3BvNQzxAMveOmp6wQr5NJ3LDLKtds5Ta0Mgu
 LzTTBa5OLz2Hixa5z0cwWkOisWIaDgdXqiQu8niZio5ABl4V0le21BELod63kp+9/Qjn
 EBzSMBqZqbzcloppKmLlGx/OTAGGg+eNrScpkqpMuslIU4xNoeZM89ojYWZdyZF8q3fb
 9boA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUPxGvVrz2u/qPuMi84ra23BamgRSWfHRUGQySlSEYtSti6qeLQwJVY/qQSV1QgVkoDEYH5Gxp2P/w=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxqfKIUAMXsk7u8h6ByyAcS/sKs2MHdWpLXCT/Jxd7iZQG5Iw7m
 lA/mzbopl1+S5HImGxzrddewEkwPEguTLdt2H08Ln/2A2P3CxxQ0ZhfWOPtJwkS9mfx1YXddjYG
 emCfHMHjwlsTQZS3l9s6uH8OD7cdHJZA=
X-Gm-Gg: ATEYQzzqdUpIcoqpgAn45AusaaXDu1oOjc9Akb5df14JSDZXDF5x2hD7kMvZVx0gU2k
 C79BOCV91hlw9WRzQe2ZloOyJfssfmJVXeX2Ck8ibXhWVe9TL81WQYUEUyg6nPht6qPEuGQ/ly2
 LtWU1VmT9PfZDjnFeZPJmX1osNtoLQSqPawL8jXIn9JrV7er0JSPyAn4KmOpOCrWEI215DTeeVl
 nG8i+SEEs82NcjIZb2Wo9p77S8Rkj5u8SY/zudso/v/gBHr5U7/hGuY+siqJyA04On8UnEaH3UC
 9o+Q1Q==
X-Received: by 2002:a05:6830:3493:b0:7d8:7d95:fa59 with SMTP id
 46e09a7af769-7d9d648a53emr1432330a34.0.1774426869760; Wed, 25 Mar 2026
 01:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
In-Reply-To: <177442567303.11552.5320450093167124387@jlahtine-mobl>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Wed, 25 Mar 2026 09:20:58 +0100
X-Gm-Features: AaiRm50K3VEKRI_noKFYmYycYQSggh19V4ZcGKgt6M-RpiliamhLXRTojrNLA6Q
Message-ID: <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: gregkh@linuxfoundation.org, intel-gfx@lists.freedesktop.org, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, security@kernel.org
Content-Type: multipart/alternative; boundary="0000000000004087f7064dd4f337"
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
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:gregkh@linuxfoundation.org,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C2576324526
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000004087f7064dd4f337
Content-Type: text/plain; charset="UTF-8"

Hi Joonas,
Thank you for the detailed feedback. I apologize for the double tag and the
direct submission to Greg; I'm still refining my workflow.
I will:
Find the original commit for the Fixes: tag using git blame.
Amend the commit message to include the 'low-on-memory' context and remove
redundant code descriptions.
Capture the crash signature using dmesg/pstore as requested.
I'll submit v3 once I have the crash logs ready.
Best regards,
Yassine(toji1)

On Wed, Mar 25, 2026, 9:01 AM Joonas Lahtinen <
joonas.lahtinen@linux.intel.com> wrote:

> You somehow included [PATCH v2] twice in the subject line and directly
> sent it to Greg for some reason?
>
> Please maybe use git format-patch and review the resulting files or
> send-email with dry run option before sending.
>
> Quoting Yassine Mounir (2026-03-24 17:17:41)
> > Fix a race condition in Linux 7.0-rc2
>
> I don't believe this is a good way of putting it, it makes it sound like
> it got introduced in 7.0-rc2 and would be regression. Instead you could
> use git blame to find the patch that introduced the buggy code and
> supply a Fixes: tag.
>
> As for the commit message can just say "Fix a race condition where GEM ..."
>
> > where a GEM object could be freed
> > during relocation if userspace closes the handle concurrently.
>
> Maybe amend here that this only triggers on low-on-memory conditions.
>
> > The fix involves pinning the object lifetime using i915_gem_object_get()
> > before the relocation loop and releasing it via i915_gem_object_put()
> > in the common exit path (out label), ensuring symmetry in both success
> > and error paths.
>
> This we can see from the code, no need to describe it here.
>
> Please supply the UAF crash signature in some format as requested earlier.
> If you won't be able to enable KASAN, please do try to use netlink or
> pstore
> to capture the dmesg.
>
> Regards, Joonas
>
> > This v2 rebases the change to the new 'gem/' directory structure in
> > the current mainline tree and addresses potential memory leaks in
> > early error returns.
> >
> > Signed-off-by: Yassine Mounir <sosohero200@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index e7918f896..0468c0551 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -1528,6 +1528,7 @@ static int eb_relocate_vma(struct i915_execbuffer
> *eb, struct eb_vma *ev)
> >         if (unlikely(!access_ok(urelocs, remain * sizeof(*urelocs))))
> >                 return -EFAULT;
> >
> > +       i915_gem_object_get(ev->vma->obj);
> >         do {
> >                 struct drm_i915_gem_relocation_entry *r = stack;
> >                 unsigned int count =
> > @@ -1588,6 +1589,7 @@ static int eb_relocate_vma(struct i915_execbuffer
> *eb, struct eb_vma *ev)
> >                 urelocs += ARRAY_SIZE(stack);
> >         } while (remain);
> >  out:
> > +       i915_gem_object_put(ev->vma->obj);
> >         reloc_cache_reset(&eb->reloc_cache, eb);
> >         return remain;
> >  }
> > --
> > 2.53.0
> >
>

--0000000000004087f7064dd4f337
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Joonas,<div dir=3D"auto">Thank you for the detailed fe=
edback. I apologize for the double tag and the direct submission to Greg; I=
&#39;m still refining my workflow.</div><div dir=3D"auto">I will:</div><div=
 dir=3D"auto">Find the original commit for the Fixes: tag using git blame.<=
/div><div dir=3D"auto">Amend the commit message to include the &#39;low-on-=
memory&#39; context and remove redundant code descriptions.</div><div dir=
=3D"auto">Capture the crash signature using dmesg/pstore as requested.</div=
><div dir=3D"auto">I&#39;ll submit v3 once I have the crash logs ready.</di=
v><div dir=3D"auto">Best regards,</div><div dir=3D"auto">Yassine(toji1)</di=
v></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Mar 25, 2026, 9:01 AM Joonas Lahtinen &lt;<=
a href=3D"mailto:joonas.lahtinen@linux.intel.com">joonas.lahtinen@linux.int=
el.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">You somehow i=
ncluded [PATCH v2] twice in the subject line and directly<br>
sent it to Greg for some reason?<br>
<br>
Please maybe use git format-patch and review the resulting files or<br>
send-email with dry run option before sending.<br>
<br>
Quoting Yassine Mounir (2026-03-24 17:17:41)<br>
&gt; Fix a race condition in Linux 7.0-rc2<br>
<br>
I don&#39;t believe this is a good way of putting it, it makes it sound lik=
e<br>
it got introduced in 7.0-rc2 and would be regression. Instead you could<br>
use git blame to find the patch that introduced the buggy code and<br>
supply a Fixes: tag.<br>
<br>
As for the commit message can just say &quot;Fix a race condition where GEM=
 ...&quot;<br>
<br>
&gt; where a GEM object could be freed<br>
&gt; during relocation if userspace closes the handle concurrently.<br>
<br>
Maybe amend here that this only triggers on low-on-memory conditions.<br>
<br>
&gt; The fix involves pinning the object lifetime using i915_gem_object_get=
()<br>
&gt; before the relocation loop and releasing it via i915_gem_object_put()<=
br>
&gt; in the common exit path (out label), ensuring symmetry in both success=
<br>
&gt; and error paths.<br>
<br>
This we can see from the code, no need to describe it here.<br>
<br>
Please supply the UAF crash signature in some format as requested earlier.<=
br>
If you won&#39;t be able to enable KASAN, please do try to use netlink or p=
store<br>
to capture the dmesg.<br>
<br>
Regards, Joonas<br>
<br>
&gt; This v2 rebases the change to the new &#39;gem/&#39; directory structu=
re in<br>
&gt; the current mainline tree and addresses potential memory leaks in<br>
&gt; early error returns.<br>
&gt; <br>
&gt; Signed-off-by: Yassine Mounir &lt;<a href=3D"mailto:sosohero200@gmail.=
com" target=3D"_blank" rel=3D"noreferrer">sosohero200@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++<br>
&gt;=C2=A0 1 file changed, 2 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/=
gpu/drm/i915/gem/i915_gem_execbuffer.c<br>
&gt; index e7918f896..0468c0551 100644<br>
&gt; --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c<br>
&gt; +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c<br>
&gt; @@ -1528,6 +1528,7 @@ static int eb_relocate_vma(struct i915_execbuffe=
r *eb, struct eb_vma *ev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (unlikely(!access_ok(urelocs, rema=
in * sizeof(*urelocs))))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -E=
FAULT;<br>
&gt;=C2=A0 <br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_object_get(ev-&gt;vma-&gt;obj);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0do {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct dr=
m_i915_gem_relocation_entry *r =3D stack;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned =
int count =3D<br>
&gt; @@ -1588,6 +1589,7 @@ static int eb_relocate_vma(struct i915_execbuffe=
r *eb, struct eb_vma *ev)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0urelocs +=
=3D ARRAY_SIZE(stack);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} while (remain);<br>
&gt;=C2=A0 out:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0i915_gem_object_put(ev-&gt;vma-&gt;obj);<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0reloc_cache_reset(&amp;eb-&gt;reloc_c=
ache, eb);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return remain;<br>
&gt;=C2=A0 }<br>
&gt; -- <br>
&gt; 2.53.0<br>
&gt;<br>
</blockquote></div>

--0000000000004087f7064dd4f337--
