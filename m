Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLEuLj6jGGrJlggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 22:19:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A615F85F6
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 22:19:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E19C810E6B9;
	Thu, 28 May 2026 20:19:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="jGtoLau4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com
 [209.85.160.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C54610E6B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 20:19:07 +0000 (UTC)
Received: by mail-oa1-f52.google.com with SMTP id
 586e51a60fabf-43acf1694daso7568592fac.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2026 13:19:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779999546; cv=none;
 d=google.com; s=arc-20240605;
 b=PMbCX/LKeIM0rDbbUhur2oPVdlyZjsn11YMLLgEKlJTjMiHmPmng6sOZ96Jhl0ux7v
 we+G+Y+ujmlIlcJr7GEK1x1ayezhH+hn+Fga9VVyXWfv1BaCJsJFH7Ybwx1H6aip3xOo
 9kKnc3uYilRm8GuyabNnCzQ4HMsjCaEHP56vjd1dK4jQ0OqfEqQlzRAM074hidPMx48J
 1DBlByxBTKjJvkm+BlUiNzvJJv6mtywLDuPlftzmim5qWZc6RXvVJzMRzgS5UyKG8APo
 LRMKUlfAzlIo70oRKG1zcXbHxdpu5odP29+eomrl2tSb3zqwyG+y/mZELJWPTAGU5kBH
 UQXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=NEzjnv+Kp0jO+B1kdAYqSGuPLxg2TUZ6vcH1EWXCMJY=;
 fh=ehCccpXcdQGmwi3JBPVQxvWpXGTJCV6ebL8L73J3iHI=;
 b=hhKerguMFrgUxVMUjXBedns4FcPFOxlDd3J5I1PFFB2G3OOCW6+F5dZ4JB0tZNKz9u
 k36/teNvLP7hAUadvvzhSlgU+fVefQEtYgrmctc2B3Y4rLq/Zo4haX7KYJdoiSt21jXE
 STGgF7R1Rtb7vCbj3BlGtse95zm9cf6mrVRISj1hMTl5VkYpflOTKQNRt0wwDTCB0kgm
 NmBUdHXJABbRUNR8lcpIUe5/4f3zDNhNi21e/FxFs0dWt6FkASo+2tWq5bdIXBuKsp+v
 vWpOzT+BclfX89YOwRb3M8duialI5Oh77x7UOSBNf3q0YGF9Q3piPKAvB7IVTZ/x20gO
 wEJw==; darn=lists.freedesktop.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1779999546; x=1780604346;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=NEzjnv+Kp0jO+B1kdAYqSGuPLxg2TUZ6vcH1EWXCMJY=;
 b=jGtoLau4ObJUQQ46MhY4fwxt6t44MbpIZdfvmFpCAJtiKbiIFQN5gH+tftF+D1WJn2
 nT80GajDnC57Dzf2S62ckHT+OwTC1krCwbUVrmITtJ0te7vMm8dKB06bFRhvT7DGGxJu
 Um6DrDdywt/FItfEIbQupEuiUqSyM8p3O02fbgU0b5r4f5HeFUrAsSVShtj2xQUiUVuQ
 z/PCsCVY11chDdV1MDUR6vr8ipuFiBp4M74Sj1wFm7DvGb/LqalD7lme9TRIDqQvoB6q
 ehQXl4WhVb8HVV/kPtPBSLZJ4yp5+a/p+Qr3DQLnBQH9i5+IAbvDDsAABhdqMae5Yipb
 nmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779999546; x=1780604346;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NEzjnv+Kp0jO+B1kdAYqSGuPLxg2TUZ6vcH1EWXCMJY=;
 b=igoEENdmCZ3dvzihOGRu8/2dBzimkx9HsilBAhqGjk05q9EmA1X2a87Uo68kgJzPgl
 6QHIo4vZAePbcmw3GMPSkbRq2fFJib0tsNHX9J2BN6g6L+9zM/J5Qy+b0uflRKYC9tUy
 khniBkJQkBrpAKaWmq+Jog7R6IALFBBDunO8tfsMKNwcL92AmmBLosfYwHMr8pOJIYDJ
 kRWs/+d6BnbjmiBMhRLqjMtTKKp+Nif2ijXLtSpJkfU/dYKVZnDBfoVUNmlIFs953JsP
 ElUCN0aOLegWEJkCxIToQArTvUHIAgEM397Q5BzeXBBImMcOYacbVgHyrwV0IyXwDzAb
 dunQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8O/6EULYd1yLvTUq+iM+3Zy/5zxgmUkqZpr/FnrAToGfChO8efWOxVYVJhDitQOIbfQrS1i+Yi/oc=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzkyShOnKKniUj5c0NYqfB0GhpfHRI33rxuvw1gJm3ng/wVdoYH
 IJdoqbkuHqcvQRAKbL9o5/ZtppDwLALFnDqQH3BEMb7+ZKLa4TflFvmo0wBAqERd6+gKsR2f+n1
 3OM2WVm65VHeZ6zX+MVgjsJzr1epRML5Jcx6AVSYg
X-Gm-Gg: Acq92OGmJvMrtgVvaKz2WBH0CLflvwn7sRwom90Hv+H90DDwZ3oYfS23IGeZkGVBWYN
 3YEbKgklHIBHh2hbhPFo863wqaOeIptCj+dQvaXInTY7YVMadoUBGRLLS9o9FZVqVJgEzhszKuZ
 Ms+G5n253xkJ0iwVF6uHo8aChXL00Sw/9jdjEOmyeKxnOQ7qwYwj9+uUYlPWf0k8w9eQEmpI/Uf
 ELBAwuptkpftMcqYazyn+E66K+GyQ8oF4SdE1jCGxVriC87Dfv6UTp/BEt7mHZSXHiGkyMFHeuX
 fpy0d2OGgnnz1aeyZ1af2sedw5ewyjnUVv19BryHmzAt9EnD/N4LVdy+bET9q7klVuBVQvvXQuG
 MMLE5fAnTF8Fzd30NIS/aMzgRlqpmmde8o8Ee8VX3fOAy1kP7DjtEKKP5ZfTKkkC3C1FVZ+o=
X-Received: by 2002:a05:6870:e08f:b0:43b:543c:5069 with SMTP id
 586e51a60fabf-43c85f2c4a1mr187366fac.15.1779999545649; Thu, 28 May 2026
 13:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <6d8e36e2aea806f9973b3c501aad4523f7316d6a@intel.com>
 <20260521194018.2445206-1-sean@poorly.run>
 <20260521194018.2445206-2-sean@poorly.run>
 <9b290b22-97a9-4ffc-9823-67efba98c70f@intel.com>
In-Reply-To: <9b290b22-97a9-4ffc-9823-67efba98c70f@intel.com>
From: Sean Paul <seanpaul@google.com>
Date: Thu, 28 May 2026 16:18:28 -0400
X-Gm-Features: AVHnY4Kao597dDx2SRbChuVFrf-Jrh9IUtXZpLh_1XKHqDfReuT3ymaWu95wqY8
Message-ID: <CAOw6vbLn+-iEk_Aky9r-TWuT3WXi4xkHZ3ZUDyX7EeKPKDpf1g@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/i915/color: Fix Pre-CSC degamma LUT bounds
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: Sean Paul <sean@poorly.run>, intel-gfx@lists.freedesktop.org, 
 jani.nikula@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000a05c6b0652e670b8"
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
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[google.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[seanpaul@google.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:chaitanya.kumar.borah@intel.com,m:sean@poorly.run,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:intel-xe@lists.freedesktop.org,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[poorly.run,lists.freedesktop.org,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[seanpaul@google.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[google.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 29A615F85F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--000000000000a05c6b0652e670b8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 27, 2026 at 1:23=E2=80=AFAM Borah, Chaitanya Kumar <
chaitanya.kumar.borah@intel.com> wrote:

> Hello Sean,
>
> On 5/22/2026 1:09 AM, Sean Paul wrote:
> > From: Sean Paul <seanpaul@google.com>
> >
> > Fix a typo in the loop condition in xelpd_program_plane_pre_csc_lut
> > for Segment 2 degamma programming, changing 'while (i++ > 130)' to
> > 'while (i++ < 130)'. Also clamp Segment 2 to the last user-provided
> > LUT entry value instead of hardcoding it to 1.0 (1 << 24) to fix
> > a step discontinuity.
>
> The commit message needs an update.
>

Ack.


> Is there an easy way to reproduce the problem you are seeing (e.g. IGT)?
>

Unfortunately I don't have an IGT test, it's reproducing readily with our
userspace.

Sean

I am wondering if we have to do the same on the pipe Gamma and Degamma.
>
> =3D=3D
> Chaitanya
>
> >
> > Link:
> https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.ru=
n/
> #v1
> > Signed-off-by: Sean Paul <seanpaul@google.com>
> >
> > Changes in v2:
> > - Split out into separate patches for pre/post csc fixes
> > - Dropped loop bounds fix in favor of [1]
> >
> > [1]-
> https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
> > ---
> >   drivers/gpu/drm/i915/display/intel_color.c | 5 +++--
> >   1 file changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> > index 90d5dc2ef3e4..469011c83f9b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -3953,6 +3953,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,
> >       enum plane_id plane =3D to_intel_plane(state->plane)->id;
> >       const struct drm_color_lut32 *pre_csc_lut =3D
> plane_state->hw.degamma_lut->data;
> >       u32 i, lut_size;
> > +     u32 lut_val =3D 1 << 24;
> >
> >       if (icl_is_hdr_plane(display, plane)) {
> >               lut_size =3D 128;
> > @@ -3963,7 +3964,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,
> >
> >               if (pre_csc_lut) {
> >                       for (i =3D 0; i < lut_size; i++) {
> > -                             u32 lut_val =3D
> drm_color_lut32_extract(pre_csc_lut[i].green, 24);
> > +                             lut_val =3D
> drm_color_lut32_extract(pre_csc_lut[i].green, 24);
> >
> >                               intel_de_write_dsb(display, dsb,
> >
> PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> > @@ -3975,7 +3976,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb
> *dsb,
> >                       do {
> >                               intel_de_write_dsb(display, dsb,
> >
> PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> > -                                                (1 << 24));
> > +                                                lut_val);
> >                       } while (i++ > 130);
> >               } else {
> >                       for (i =3D 0; i < lut_size; i++) {
>
>

--000000000000a05c6b0652e670b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 27,=
 2026 at 1:23=E2=80=AFAM Borah, Chaitanya Kumar &lt;<a href=3D"mailto:chait=
anya.kumar.borah@intel.com">chaitanya.kumar.borah@intel.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello Sean,<br>
<br>
On 5/22/2026 1:09 AM, Sean Paul wrote:<br>
&gt; From: Sean Paul &lt;<a href=3D"mailto:seanpaul@google.com" target=3D"_=
blank">seanpaul@google.com</a>&gt;<br>
&gt; <br>
&gt; Fix a typo in the loop condition in xelpd_program_plane_pre_csc_lut<br=
>
&gt; for Segment 2 degamma programming, changing &#39;while (i++ &gt; 130)&=
#39; to<br>
&gt; &#39;while (i++ &lt; 130)&#39;. Also clamp Segment 2 to the last user-=
provided<br>
&gt; LUT entry value instead of hardcoding it to 1.0 (1 &lt;&lt; 24) to fix=
<br>
&gt; a step discontinuity.<br>
<br>
The commit message needs an update.<br></blockquote><div><br></div><div>Ack=
.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Is there an easy way to reproduce the problem you are seeing (e.g. IGT)?<br=
></blockquote><div><br></div><div>Unfortunately I don&#39;t have an IGT tes=
t, it&#39;s reproducing readily with our userspace.</div><div><br></div><di=
v>Sean</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
I am wondering if we have to do the same on the pipe Gamma and Degamma.<br>
<br>
=3D=3D<br>
Chaitanya<br>
<br>
&gt; <br>
&gt; Link: <a href=3D"https://lore.kernel.org/intel-gfx/20260521180143.2143=
262-1-sean@poorly.run/" rel=3D"noreferrer" target=3D"_blank">https://lore.k=
ernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/</a> #v1<br>
&gt; Signed-off-by: Sean Paul &lt;<a href=3D"mailto:seanpaul@google.com" ta=
rget=3D"_blank">seanpaul@google.com</a>&gt;<br>
&gt; <br>
&gt; Changes in v2:<br>
&gt; - Split out into separate patches for pre/post csc fixes<br>
&gt; - Dropped loop bounds fix in favor of [1]<br>
&gt; <br>
&gt; [1]- <a href=3D"https://lore.kernel.org/r/20260519075245.383864-1-pran=
ay.samala@intel.com" rel=3D"noreferrer" target=3D"_blank">https://lore.kern=
el.org/r/20260519075245.383864-1-pranay.samala@intel.com</a><br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/gpu/drm/i915/display/intel_color.c | 5 +++--<br>
&gt;=C2=A0 =C2=A01 file changed, 3 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/=
drm/i915/display/intel_color.c<br>
&gt; index 90d5dc2ef3e4..469011c83f9b 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_color.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_color.c<br>
&gt; @@ -3953,6 +3953,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb=
 *dsb,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0enum plane_id plane =3D to_intel_plane(state=
-&gt;plane)-&gt;id;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0const struct drm_color_lut32 *pre_csc_lut =
=3D plane_state-&gt;hw.degamma_lut-&gt;data;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 i, lut_size;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0u32 lut_val =3D 1 &lt;&lt; 24;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (icl_is_hdr_plane(display, plane)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lut_size =3D 128=
;<br>
&gt; @@ -3963,7 +3964,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb=
 *dsb,<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (pre_csc_lut)=
 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0for (i =3D 0; i &lt; lut_size; i++) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0u32 lut_val =3D drm_color_lut32_extract(=
pre_csc_lut[i].green, 24);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lut_val =3D drm_color_lut32_extract(pre_=
csc_lut[i].green, 24);<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0intel_de_write_dsb(display, dsb,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0)=
,<br>
&gt; @@ -3975,7 +3976,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb=
 *dsb,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0do {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0intel_de_write_dsb(display, dsb,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0)=
,<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 (1 &lt;&lt; 24));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 lut_val);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0} while (i++ &gt; 130);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0for (i =3D 0; i &lt; lut_size; i++) {<br>
<br>
</blockquote></div></div>

--000000000000a05c6b0652e670b8--
