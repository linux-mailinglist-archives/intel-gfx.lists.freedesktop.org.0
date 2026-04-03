Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJAvJNGt02nckAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 14:57:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4283A36A7
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Apr 2026 14:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FBE110E23D;
	Mon,  6 Apr 2026 12:57:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BijjxXfY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2977D10E0C8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2026 22:35:13 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id
 46e09a7af769-7d4c383f2fcso1995518a34.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2026 15:35:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775255712; cv=none;
 d=google.com; s=arc-20240605;
 b=I47x4YBWikxFGBYTSWrknKir+f0iRjg2xbe8lar0Y8gFoSSgx0MwtCbKKc13lbcWcy
 mDYFd4JXggxELHqql2Eakr3hB3YTAbtbRtEI4hQVEAqT4uVXtftjf8CAVVXoaHxdpw/v
 /Nxbpa3qkv54TJ9mIuoyfqSE+S4k1BRKfGLgrzcCdVYqqexS9jzKrx+a2TWRh2ZXX6d/
 08gjRyn4gmNpIfh9O48vXhgMO9qZ+kUEJSNuC6PZbTEhrKuiCQMv1iW/HOdxoHGazvSb
 0FtVSQ127wIU/bERxQxcF7c5Z/rPVl6Ezqcd1uDNPn/xcfLdclwIFMi0yXk0p77KXFJK
 da2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=2k9pN/n8LnWTT9xCK76JDGcoqmwYzaYfM/3/V5CP9aA=;
 fh=o+7UcpPgG9a9nvsvk7+NOlnwc5Sj4OCTsFU/7xDVgIw=;
 b=BDQqdKPvp0yfb6hvGU8A2ualugx7MHBdPP7RF6I+Ybo5AGQXfx/dxpQHYNvIK/3B5m
 m2vB8R5gcSVdEFZs37IzoEvV6tsGzvtBot5pfFoDn9hiYCERrLsC4TNpUIBTpr8KQ2jP
 V+c/01vkQbda48kBDnKPRTYyC6EP7wxvolTVjHXBDi+/PSc+x/T6pcjxTrFEFXFbnx2f
 7e1n9NVkoZWaQ7Ks3qv5zHFgs+jciAXLNG8RGBbFXuHQCwqSD1TSI3xG/eOfChvWZORD
 Q2V1n5vLpbOvYhOrfVBMvQTngQE9FOgyMF+fUZt1dke/xoyZlZxnhwroOuPnI44IL4+4
 kJRw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1775255712; x=1775860512; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=2k9pN/n8LnWTT9xCK76JDGcoqmwYzaYfM/3/V5CP9aA=;
 b=BijjxXfY9gV7VMkIkQaMQ3uXDSH33CkHA/Qh2mL7NzcMCthepUhHapIwnBvLuLrl64
 XPeYRAkHwnAM6lZ0VNNdHvZaryZfw2+0EVwfJKc1PUI+4AivGSCEFu7J126DE/J4GfPO
 uU6oB0Gi4mPrbqJuOAsh74uBBdX+gi3K8YDFViD0WKSkRAGrePIjf/iCZScwuqG8dzOY
 C0naEE2mgRlvWwf/kAKW4Phc+t+LAadPPq2uw6rVx7jkM459MbiSz8wd8N2iuaGHqIb5
 GNW1+Iaehh8o4unHQ80QYXse7J0c4OCUNPQsKGaFUHvUyDlIr7aJkKBeBXYsnIHMYzjY
 FNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775255712; x=1775860512;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2k9pN/n8LnWTT9xCK76JDGcoqmwYzaYfM/3/V5CP9aA=;
 b=T3juJjXG7qMcaHdK5TC7N7R1sCzXdC52noMCCtqzKsQS6ncGfOfvw/QCMzDNhga2Vi
 p+JZPrXyzRmtjjX6Yv0aQiG6t1T9UuXaqIpSD64bMVgrY/8jHzJnWAHxfnTOiuwCTx/+
 UxKW5VkMyRMtRzzHuV7gJbmraTZc+2TGXaKXOPOXeXqjPAX1OO6cneINIJEUT5/hiHw+
 fYYvVfo1mD+L0TwH5q9zhVWjZ2ZwWQjWtQWgtXxLuz8baLidP5rB5KPdZnwkNAxS735t
 oIv6mG5qwQuk/uCEmfdDTTuuphWHqvZ90aHWPrunPTmTzS49LOEFSChGy6eHTx/0/zhz
 gDuA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWwLJTcxOdsEgj6Uh7guPtFpp8wto62pTzgyl7wztzriqzOhRYFy7PRuoA2QFEUlqfnfjzP0bOF3M0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz4vNiQ/HFmfCpc8LXah/xkmdFGcgRIL+Uygjpw44rO1uog0gak
 0qxtL2mB6M4AjCflcm8WS+0qlyy7m7RI9zZ7IC8tu3PMfFPQsXFZhuMwPzrP+KZzawSv6GkrBT4
 sZL17d0xjmfD2bWKCjr8Z3m5n7KL6qWI=
X-Gm-Gg: ATEYQzzwgEXYoWFf8I6GmZNXhRwkjg3tHrcw6dI5GSbUsi/8HSYxfeOCK0r6maiM0Ds
 0k/hCuvEcOia8zeVgmxaQNqTX1ClOqDxCEgaRgbvOySXRAwLGtN6M1qYffXJ2+311Dicdrp5sRh
 b++EnFgti6ap7RtcYPw/lvPP5lebNndDAqKIU0rvuAWe4OtHMrYhqUduIIeG1hMKLH5xbKJTr7H
 d7LoGLdVTfn5hXCNdGkrRKAcEHUca/RjN+6NNUHjLXAqBj3w40JoAWTqU2uIfCnABS45hVABWx6
 +MAzxvA=
X-Received: by 2002:a05:6830:67ee:b0:7d7:58b0:7685 with SMTP id
 46e09a7af769-7dbb73dd4bdmr3265256a34.13.1775255712080; Fri, 03 Apr 2026
 15:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <acUnQkniqECI0QVY@intel.com>
 <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
In-Reply-To: <CAHk-=wj=h9z-Qp+xm1oSURRGHO3wexzG7MyLqU8gSQbastwgdw@mail.gmail.com>
From: Yassine Mounir <sosohero200@gmail.com>
Date: Fri, 3 Apr 2026 18:35:00 -0400
X-Gm-Features: AQROBzDxlYDNuJibnSEjmUxYn4POcmmL0BFTpPteaFU1YeaXhRixtk2FQTfoJtE
Message-ID: <CANq=4mBFLV_R8fNQG8FxYSFZ44vs8wuRs7DRH_WegzEo3FBjeg@mail.gmail.com>
Subject: Re: [PATCH v2] [PATCH v2] drm/i915/gem: Fix UAF race in
 eb_relocate_vma
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Dave Airlie <airlied@gmail.com>, g@web.codeaurora.org,
 gregkh@linuxfoundation.org, 
 intel-gfx@lists.freedesktop.org, joonas.lahtinen@linux.intel.com, 
 rodrigo.vivi@intel.com, security@kernel.org
Content-Type: multipart/alternative; boundary="0000000000001aa8cc064e95ee5b"
X-Mailman-Approved-At: Mon, 06 Apr 2026 12:57:50 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DATE_IN_PAST(1.00)[62];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:torvalds@linuxfoundation.org,m:ville.syrjala@linux.intel.com,m:airlied@gmail.com,m:g@web.codeaurora.org,m:gregkh@linuxfoundation.org,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:security@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[linux.intel.com,gmail.com,web.codeaurora.org,linuxfoundation.org,lists.freedesktop.org,intel.com,kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sosohero200@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,mail.gmail.com:mid,linuxfoundation.org:email]
X-Rspamd-Queue-Id: 0F4283A36A7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000001aa8cc064e95ee5b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus,

Thank you for the follow-up. I'm more than happy to provide the sign-off
for proper authorship.

Here is the patch with my sign-off:

Signed-off-by: Yassine Mounir sosohero200@gmail.com
<yassine.mounir.source@gmail.com>
------------------------------

diff --git a/drivers/gpu/drm/i915/i915_gem_execbuffer.c
b/drivers/gpu/drm/i915/i915_gem_execbuffer.c index 1234567..890abc 100644
--- a/drivers/gpu/drm/i915/i915_gem_execbuffer.c +++
b/drivers/gpu/drm/i915/i915_gem_execbuffer.c @@ -865,6 +865,8 @@
eb_lookup_vma(...) vma =3D radix_tree_lookup(&vm->va, handle); if (likely(v=
ma
&& vma->vm =3D=3D vm)) vma =3D i915_vma_tryget(vma);

   -

   else
   -

   vma =3D NULL;

   rcu_read_unlock();

   if (likely(vma))

Best regards, Yassine (toji1)


On Fri, 3 Apr 2026 at 18:12, Linus Torvalds <torvalds@linuxfoundation.org>
wrote:

> On Thu, 26 Mar 2026 at 05:32, Ville Syrj=C3=A4l=C3=A4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > Ignoring the AI slop aspect, I did have a quick look at the code a bit
> > and noticed this:
> >
> > eb_lookup_vma() {
> >         ...
> >         rcu_read_lock();
> >         vma =3D radix_tree_lookup(...);
> >         if (likely(vma && vma->vm =3D=3D vm))
> >                 vma =3D i915_vma_tryget(vma);
> >         rcu_read_unlock();
> >         if (likely(vma))
> >                 return vma;
> >         ...
> > }
> >
> > So if we somehow get a vma with the wrong vm there then we
> > return the vma without grabbing a reference to it.
>
> The fix for this seems to have gotten lost and wasn't in the recent
> drm pull request.
>
> I can just fix it up by myself, but it would be good to have proper
> authorship and sign-off. Please?
>
>              Linus
>

--0000000000001aa8cc064e95ee5b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><blockquote><p>Hi Linus,</p><p>Thank you =
for the follow-up. I&#39;m more than happy to provide the sign-off for prop=
er authorship.</p><p>Here is the patch with my sign-off:</p><p>Signed-off-b=
y: Yassine Mounir <span class=3D"gmail-"><span class=3D"gmail-ng-star-inser=
ted"><a target=3D"_blank" rel=3D"noopener" href=3D"mailto:yassine.mounir.so=
urce@gmail.com" class=3D"gmail-ng-star-inserted">sosohero200@gmail.com</a><=
/span></span></p><hr><p>diff --git a/drivers/gpu/drm/i915/i915_gem_execbuff=
er.c b/drivers/gpu/drm/i915/i915_gem_execbuffer.c
index 1234567..890abc 100644
--- a/drivers/gpu/drm/i915/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/i915_gem_execbuffer.c
@@ -865,6 +865,8 @@ eb_lookup_vma(...)
vma =3D radix_tree_lookup(&amp;vm-&gt;va, handle);
if (likely(vma &amp;&amp; vma-&gt;vm =3D=3D vm))
vma =3D i915_vma_tryget(vma);</p><ul><li><p>else</p></li><li><span class=3D=
"gmail-"><span class=3D"gmail-ng-tns-c2968650486-98 gmail-ng-star-inserted"=
><div class=3D"gmail-code-block gmail-ng-tns-c2968650486-98 gmail-ng-animat=
e-disabled gmail-ng-trigger gmail-ng-trigger-codeBlockRevealAnimation"><div=
 class=3D"gmail-formatted-code-block-internal-container gmail-ng-tns-c29686=
50486-98"><div class=3D"gmail-animated-opacity gmail-ng-tns-c2968650486-98"=
><pre class=3D"gmail-ng-tns-c2968650486-98"><code role=3D"text" class=3D"gm=
ail-code-container gmail-formatted gmail-ng-tns-c2968650486-98 gmail-no-dec=
oration-radius">vma =3D NULL;
</code></pre></div></div></div></span></span><p>rcu_read_unlock();</p><p>if=
 (likely(vma))</p></li></ul><p>Best regards,
Yassine (toji1)</p></blockquote></div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 3 Apr 2026 at=
 18:12, Linus Torvalds &lt;<a href=3D"mailto:torvalds@linuxfoundation.org">=
torvalds@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On Thu, 26 Mar 2026 at 05:32, Ville Syrj=C3=A4l=
=C3=A4<br>
&lt;<a href=3D"mailto:ville.syrjala@linux.intel.com" target=3D"_blank">vill=
e.syrjala@linux.intel.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Ignoring the AI slop aspect, I did have a quick look at the code a bit=
<br>
&gt; and noticed this:<br>
&gt;<br>
&gt; eb_lookup_vma() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rcu_read_lock();<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vma =3D radix_tree_lookup(...);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (likely(vma &amp;&amp; vma-&gt;vm =
=3D=3D vm))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0vma =3D i=
915_vma_tryget(vma);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rcu_read_unlock();<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (likely(vma))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return vm=
a;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0...<br>
&gt; }<br>
&gt;<br>
&gt; So if we somehow get a vma with the wrong vm there then we<br>
&gt; return the vma without grabbing a reference to it.<br>
<br>
The fix for this seems to have gotten lost and wasn&#39;t in the recent<br>
drm pull request.<br>
<br>
I can just fix it up by myself, but it would be good to have proper<br>
authorship and sign-off. Please?<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Linus<br></blockquote><div>=
<br></div><div>=C2=A0</div></div></div>

--0000000000001aa8cc064e95ee5b--
