Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F538DD23
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 20:40:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D1496E7C1;
	Wed, 14 Aug 2019 18:40:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F071E6E7C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 18:40:54 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id p28so148570edi.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 11:40:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1NV6vYN1ZmHqHmifqV2oQ0Y4uxet83DLxTZCduZxxcY=;
 b=K2bOuM4siJjWF9zvWkK0Wxg0/P1y4WhCyeA4nwLGoU8AlwiILUNpsLPfT0CYIFM/ao
 DJC3v24wrvHmc+QdSdN2C44oeXGWa67ZI5y2MN+Bq36STHqvgpaHIgu78BhFiDHoBM3j
 zLO6ObXUCtLW5DEDEEOR5z9zNT8iRyZz/aJqXidVVOixqK6t0VWyu6ZOpWA7fzCheWMl
 JZsltTdh8Ev5DhxzeW3ThvcRS+pDlAEp8iW5it8dpwQWRaGnQDO9NzwJUpZSg2dHqW/k
 RXwCD9hkaYjgeZ0y5+pg08tIxWIAdka3kpQaNHvF1fvQWhMOdG9+YS0reFgd9FZNEL2D
 /MjQ==
X-Gm-Message-State: APjAAAVKbZpTFxwIcEB42h7dvc63lsrBAmpfujylXXVCqxnr3vRJZ4D/
 TVfOuvsae8gazcB2536p7WuJI/F8KRBL9h5S/j7cmQ==
X-Google-Smtp-Source: APXvYqyjtF7kPWAydNgY33NuRwQt2AGQrxWVhK7KLNZktJYE38q0o7JDhaze5DFh8eGlHBBUT0Zsb3bVicnKWs09VQI=
X-Received: by 2002:a17:907:207a:: with SMTP id
 qp26mr1001433ejb.12.1565808053402; 
 Wed, 14 Aug 2019 11:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190808163608.28419-1-chris@chris-wilson.co.uk>
 <CAOFGe94=pYgxJ_vDAG3iKYJkh1cJFTByiM4-vwy647sy+gX+fA@mail.gmail.com>
 <CAOFGe95_=uAsR_1cANryAeB849gVf8gPei7wfzPjx1iBV_ZN=w@mail.gmail.com>
 <16c74a90268.27ad.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <16c74a90268.27ad.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 14 Aug 2019 13:40:41 -0500
Message-ID: <CAOFGe94unbH3jj=vaw3Ntkir8Lj5=YntMOXTAQ9mH+dbXCiTKg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=1NV6vYN1ZmHqHmifqV2oQ0Y4uxet83DLxTZCduZxxcY=;
 b=0N3PYkIbIbbkeMk80UGWDY+MB0A4F1wbI3asCcXXcX7SqTiiIYY+d9R7dLWiPj6Oks
 cyWAwxclv03R8rcurf4evSCb+wbvBsQPkU/bwDZBLl7BOKA+4s2spGGTJUux3oBFF2vh
 HxdUyVo7Laj9qvqLOKyClv3MTxLjLnAR5KpfHqbu9f6NxsUNf8nrF8dzsCp4gfHjGd1Z
 9WwtmE8+ma36DKhjfZk1z0EQG72D6l5fLZBaSf+/ebujSeaFcZd0tbchGIcvhjmsRDzF
 A69RLSy/P3TOtJ9OROFyvCyM1RBKbjxZFG3h0U5hx+ai8QlqgPiXo6EBnXDU6yPqiuJM
 fZFA==
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restore relaxed padding
 (OCL_OOB_SUPPRES_ENABLE) for skl+
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>, stable@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0350740079=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0350740079==
Content-Type: multipart/alternative; boundary="000000000000cf51fe059018188f"

--000000000000cf51fe059018188f
Content-Type: text/plain; charset="UTF-8"

I was going to ask the status of this and then I looked and realized that I
never provided a commit message blrub.  Oops.  Here you go:

On Broadwell, the sampler was changed to not require extra padding for
simple (no arrays, mipmapping, or MSAA) 1D, 2D, and buffer surfaces.
Setting the GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC bit in HALF_SLICE_CHICKEN3
disables this and reverts the hardware to the HSW-era behaviour where the
sampler over-fetches near the edges of the surface.  While the over-fetch
does not cause faults due to the scratch page, it still means that more
data than needed is getting pulled into the sampler cache.  If the
over-fetch from the sampler on a BUFFER surface leaks over into an atomic
on the L3$, hangs can occur.

Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=110228

On Thu, Aug 8, 2019 at 11:35 PM Jason Ekstrand <jason@jlekstrand.net> wrote:

> Also, I think we can provide a better commit message. I'll type something
> in the morning when I can actually look stuff up and provide correct
> references.
>
> On August 8, 2019 12:33:15 Jason Ekstrand <jason@jlekstrand.net> wrote:
>
>> Note: This doesn't actually fix 110998.  I can still get a hard-hang with
>> a slightly different version of the reproducer example.  However, it does
>> fix the original and I suspect it will fix the UE4 editor hang in 110228
>>
>> On Thu, Aug 8, 2019 at 12:30 PM Jason Ekstrand <jason@jlekstrand.net>
>> wrote:
>>
>>> This is consistent with what the Windows driver does and what I've heard
>>> from HW people.
>>>
>>> Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
>>>
>>> On Thu, Aug 8, 2019 at 11:36 AM Chris Wilson <chris@chris-wilson.co.uk>
>>> wrote:
>>>
>>>> This bit was fliped on for "syncing dependencies between camera and
>>>> graphics". BSpec has no recollection why, and it is causing
>>>> unrecoverable GPU hangs with Vulkan compute workloads.
>>>>
>>>> From BSpec, setting bit5 to 0 enables relaxed padding requiremets for
>>>> buffers, 1D and 2D non-array, non-MSAA, non-mip-mapped linear surfaces;
>>>> and *must* be set to 0h on skl+ to ensure "Out of Bounds" case is
>>>> suppressed.
>>>>
>>>> Reported-by: Jason Ekstrand <jason@jlekstrand.net>
>>>> Suggested-by: Jason Ekstrand <jason@jlekstrand.net>
>>>> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=110998
>>>> Fixes: 8424171e135c ("drm/i915/gen9: h/w w/a: syncing dependencies
>>>> between camera and graphics")
>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>>>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>>>> Cc: <stable@vger.kernel.org> # v4.1+
>>>> ---
>>>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
>>>>  1 file changed, 5 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> index 704ace01e7f5..b95c1d59a347 100644
>>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>> @@ -297,11 +297,6 @@ static void gen9_ctx_workarounds_init(struct
>>>> intel_engine_cs *engine,
>>>>                           FLOW_CONTROL_ENABLE |
>>>>                           PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
>>>>
>>>> -       /* Syncing dependencies between camera and graphics:skl,bxt,kbl
>>>> */
>>>> -       if (!IS_COFFEELAKE(i915))
>>>> -               WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
>>>> -                                 GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC);
>>>> -
>>>>         /* WaEnableYV12BugFixInHalfSliceChicken7:skl,bxt,kbl,glk,cfl */
>>>>         /* WaEnableSamplerGPGPUPreemptionSupport:skl,bxt,kbl,cfl */
>>>>         WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,
>>>> --
>>>> 2.23.0.rc1
>>>>
>>>>
>

--000000000000cf51fe059018188f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I was going to ask the status of this and then I look=
ed and realized that I never provided a commit message blrub.=C2=A0 Oops.=
=C2=A0 Here you go:</div><div><br></div><div>On Broadwell, the sampler was =
changed to not require extra padding for simple (no arrays, mipmapping, or =
MSAA) 1D, 2D, and buffer surfaces.=C2=A0 Setting the GEN9_DISABLE_OCL_OOB_S=
UPPRESS_LOGIC bit in HALF_SLICE_CHICKEN3 disables this and reverts the hard=
ware to the HSW-era behaviour where the sampler over-fetches near the edges=
 of the surface.=C2=A0 While the over-fetch does not cause faults due to th=
e scratch page, it still means that more data than needed is getting pulled=
 into the sampler cache.=C2=A0 If the over-fetch from the sampler on a BUFF=
ER surface leaks over into an atomic on the L3$, hangs can occur.</div><div=
><br></div><div>Bugzilla: <a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D110228">https://bugs.freedesktop.org/show_bug.cgi?id=3D110228</a><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Thu, Aug 8, 2019 at 11:35 PM Jason Ekstrand &lt;<a href=3D"mailto:jason@j=
lekstrand.net">jason@jlekstrand.net</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><u></u>

<div>
<div dir=3D"auto">
<div dir=3D"auto">Also, I think we can provide a better commit message. I&#=
39;ll type something in the morning when I can actually look stuff up and p=
rovide correct references.</div><div dir=3D"auto"><br></div>
<div id=3D"gmail-m_-6259061499944170341aqm-original" style=3D"color:black">

<div class=3D"gmail-m_-6259061499944170341aqm-original-body">
<div style=3D"color:black">
<p style=3D"color:black;font-size:10pt;font-family:sans-serif;margin:8pt 0p=
x">On August 8, 2019 12:33:15 Jason Ekstrand &lt;<a href=3D"mailto:jason@jl=
ekstrand.net" target=3D"_blank">jason@jlekstrand.net</a>&gt; wrote:</p>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.75ex;border-left:1px solid rgb(128,128,128);padding-left:0.75ex">
<div dir=3D"ltr">Note: This doesn&#39;t actually fix 110998.=C2=A0 I can st=
ill get a hard-hang with a slightly different version of the reproducer exa=
mple.=C2=A0 However, it does fix the original and I suspect it will fix the=
 UE4 editor hang in 110228<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 12:30 PM Jason Ekstran=
d &lt;<a href=3D"mailto:jason@jlekstrand.net" target=3D"_blank">jason@jleks=
trand.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div>This is consistent with what the Windows d=
river does and what I&#39;ve heard from HW people.</div><div><br></div><div=
>Reviewed-by: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" ta=
rget=3D"_blank">jason@jlekstrand.net</a>&gt;<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 =
at 11:36 AM Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk" ta=
rget=3D"_blank">chris@chris-wilson.co.uk</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">This bit was fliped on for &quot;sy=
ncing dependencies between camera and<br>
graphics&quot;. BSpec has no recollection why, and it is causing<br>
unrecoverable GPU hangs with Vulkan compute workloads.<br>
<br>
From BSpec, setting bit5 to 0 enables relaxed padding requiremets for<br>
buffers, 1D and 2D non-array, non-MSAA, non-mip-mapped linear surfaces;<br>
and *must* be set to 0h on skl+ to ensure &quot;Out of Bounds&quot; case is=
<br>
suppressed.<br>
<br>
Reported-by: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" tar=
get=3D"_blank">jason@jlekstrand.net</a>&gt;<br>
Suggested-by: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" ta=
rget=3D"_blank">jason@jlekstrand.net</a>&gt;<br>
Bugzilla: <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110998"=
 rel=3D"noreferrer" target=3D"_blank">https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110998</a><br>
Fixes: 8424171e135c (&quot;drm/i915/gen9: h/w w/a: syncing dependencies bet=
ween camera and graphics&quot;)<br>
Signed-off-by: Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk"=
 target=3D"_blank">chris@chris-wilson.co.uk</a>&gt;<br>
Cc: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" target=3D"_b=
lank">jason@jlekstrand.net</a>&gt;<br>
Cc: Mika Kuoppala &lt;<a href=3D"mailto:mika.kuoppala@linux.intel.com" targ=
et=3D"_blank">mika.kuoppala@linux.intel.com</a>&gt;<br>
Cc: &lt;<a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">stable@=
vger.kernel.org</a>&gt; # v4.1+<br>
---<br>
=C2=A0drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----<br>
=C2=A01 file changed, 5 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/=
i915/gt/intel_workarounds.c<br>
index 704ace01e7f5..b95c1d59a347 100644<br>
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c<br>
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c<br>
@@ -297,11 +297,6 @@ static void gen9_ctx_workarounds_init(struct intel_eng=
ine_cs *engine,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 FLOW_CONTROL_ENABLE |<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Syncing dependencies between camera and grap=
hics:skl,bxt,kbl */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (!IS_COFFEELAKE(i915))<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0WA_SET_BIT_MASKED(H=
ALF_SLICE_CHICKEN3,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GEN9_DISABLE_OCL_OOB_SUPPRESS_=
LOGIC);<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* WaEnableYV12BugFixInHalfSliceChicken7:skl,bx=
t,kbl,glk,cfl */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* WaEnableSamplerGPGPUPreemptionSupport:skl,bx=
t,kbl,cfl */<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,<br>
-- <br>
2.23.0.rc1<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote>
</div>
</div>


</div><div dir=3D"auto"><br></div>
</div></div>

</blockquote></div></div>

--000000000000cf51fe059018188f--

--===============0350740079==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0350740079==--
