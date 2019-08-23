Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1E59B677
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 20:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F7E6E05F;
	Fri, 23 Aug 2019 18:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CF96E05F
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 18:54:02 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id w5so14898923edl.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 11:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JgYakpos3TcFXliPxhIVrjo97uA/mlzVwer1bKfmpNU=;
 b=NRKqpTaYWrf6DH4BZS/HSx942gXrPX+WcY73aFw9SEaDhzoV/oxnjob0nMFgbOcAB1
 VxUjxTjXi9WMcwI0/UPPPWhYTUAjGQBKca8i6riRzdter8sHmAYBrrUuno5cpBn0Haz5
 SG/waJWD3S2pfqV8hURfkiuHGyNpiTsOPnNfm68GCnyEAGMgBgEeM4q+LiLjfnm99Z+/
 IGir2JUqmj+k7nn1P8ISNzxyGgxlbtyvRPaCnATbyRFOanwhIlj8Ef8MqMogJEaNyLlG
 w83oHXDVyR+tFDBcCoJL8ynC4CPDyAB6MByYTqZZ7FmoniDQl1heKeTY6WrENlXToNLm
 oTPQ==
X-Gm-Message-State: APjAAAVKiJB9hDjeDd39RoIyz00+Vzf3NpvDVooJhJSEh8ggFz1+wGoJ
 OU1WK1PQBwAhRFL1dQbSR2t/5WmNcitjrmNB6Kr3TEp22/o=
X-Google-Smtp-Source: APXvYqzF51PH4w1d9JODuV5BRU7Pca3V08C2bQTVZeq+cUbt2y+F+/MLHGFevAgB/dZMJS5HOc5vGbY8qB46UF99RSQ=
X-Received: by 2002:a50:e001:: with SMTP id e1mr6164679edl.177.1566586441214; 
 Fri, 23 Aug 2019 11:54:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190808163608.28419-1-chris@chris-wilson.co.uk>
 <CAOFGe94=pYgxJ_vDAG3iKYJkh1cJFTByiM4-vwy647sy+gX+fA@mail.gmail.com>
 <CAOFGe95_=uAsR_1cANryAeB849gVf8gPei7wfzPjx1iBV_ZN=w@mail.gmail.com>
 <16c74a90268.27ad.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
 <CAOFGe94unbH3jj=vaw3Ntkir8Lj5=YntMOXTAQ9mH+dbXCiTKg@mail.gmail.com>
In-Reply-To: <CAOFGe94unbH3jj=vaw3Ntkir8Lj5=YntMOXTAQ9mH+dbXCiTKg@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 23 Aug 2019 13:53:50 -0500
Message-ID: <CAOFGe95wjMezeiO+1F73sV0W-wjFjpVYUpEmo_pnWzDpZ_jRgQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=JgYakpos3TcFXliPxhIVrjo97uA/mlzVwer1bKfmpNU=;
 b=HJ0H3ufJ+sscSCTnlEhzcErCUtHj2I4PuJArk3uwZKxWgPbIbJCwbmwJKvSEKGcUJe
 wht+pinwiZ59BJ1FF2P366YFlkNpmuof8bqXjHJ3J/Bpk/jTWEFJFXkUrYgFyXD5BF9z
 ZGur2WQqagBndDOFPkHaB0gYQDNeTRMV2m8+CwzwlHOwufL05GpvFzVysMhOMxegI6GZ
 44K5rasT0/awV2mg/RGSo7MSjDOi1eJ1//AnWjqLxIo3fWXa3BC8LmB3VA5AGhVIWh44
 woc03bJyyRVliI3or6v2etLT2S5Roo0mdtEZ9MiWlqvxjEN3nfNJALUvd93ByL7thwGg
 O0Cg==
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
Content-Type: multipart/mixed; boundary="===============1373805461=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1373805461==
Content-Type: multipart/alternative; boundary="00000000000056c0940590cd54c4"

--00000000000056c0940590cd54c4
Content-Type: text/plain; charset="UTF-8"

Bump?  Has this been landed or looked at beyond my review?

On Wed, Aug 14, 2019 at 1:40 PM Jason Ekstrand <jason@jlekstrand.net> wrote:

> I was going to ask the status of this and then I looked and realized that
> I never provided a commit message blrub.  Oops.  Here you go:
>
> On Broadwell, the sampler was changed to not require extra padding for
> simple (no arrays, mipmapping, or MSAA) 1D, 2D, and buffer surfaces.
> Setting the GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC bit in HALF_SLICE_CHICKEN3
> disables this and reverts the hardware to the HSW-era behaviour where the
> sampler over-fetches near the edges of the surface.  While the over-fetch
> does not cause faults due to the scratch page, it still means that more
> data than needed is getting pulled into the sampler cache.  If the
> over-fetch from the sampler on a BUFFER surface leaks over into an atomic
> on the L3$, hangs can occur.
>
> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=110228
>
> On Thu, Aug 8, 2019 at 11:35 PM Jason Ekstrand <jason@jlekstrand.net>
> wrote:
>
>> Also, I think we can provide a better commit message. I'll type something
>> in the morning when I can actually look stuff up and provide correct
>> references.
>>
>> On August 8, 2019 12:33:15 Jason Ekstrand <jason@jlekstrand.net> wrote:
>>
>>> Note: This doesn't actually fix 110998.  I can still get a hard-hang
>>> with a slightly different version of the reproducer example.  However, it
>>> does fix the original and I suspect it will fix the UE4 editor hang in
>>> 110228
>>>
>>> On Thu, Aug 8, 2019 at 12:30 PM Jason Ekstrand <jason@jlekstrand.net>
>>> wrote:
>>>
>>>> This is consistent with what the Windows driver does and what I've
>>>> heard from HW people.
>>>>
>>>> Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
>>>>
>>>> On Thu, Aug 8, 2019 at 11:36 AM Chris Wilson <chris@chris-wilson.co.uk>
>>>> wrote:
>>>>
>>>>> This bit was fliped on for "syncing dependencies between camera and
>>>>> graphics". BSpec has no recollection why, and it is causing
>>>>> unrecoverable GPU hangs with Vulkan compute workloads.
>>>>>
>>>>> From BSpec, setting bit5 to 0 enables relaxed padding requiremets for
>>>>> buffers, 1D and 2D non-array, non-MSAA, non-mip-mapped linear surfaces;
>>>>> and *must* be set to 0h on skl+ to ensure "Out of Bounds" case is
>>>>> suppressed.
>>>>>
>>>>> Reported-by: Jason Ekstrand <jason@jlekstrand.net>
>>>>> Suggested-by: Jason Ekstrand <jason@jlekstrand.net>
>>>>> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=110998
>>>>> Fixes: 8424171e135c ("drm/i915/gen9: h/w w/a: syncing dependencies
>>>>> between camera and graphics")
>>>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>>>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>>>>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>>>>> Cc: <stable@vger.kernel.org> # v4.1+
>>>>> ---
>>>>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
>>>>>  1 file changed, 5 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>>> index 704ace01e7f5..b95c1d59a347 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>>> @@ -297,11 +297,6 @@ static void gen9_ctx_workarounds_init(struct
>>>>> intel_engine_cs *engine,
>>>>>                           FLOW_CONTROL_ENABLE |
>>>>>                           PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
>>>>>
>>>>> -       /* Syncing dependencies between camera and
>>>>> graphics:skl,bxt,kbl */
>>>>> -       if (!IS_COFFEELAKE(i915))
>>>>> -               WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
>>>>> -                                 GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC);
>>>>> -
>>>>>         /* WaEnableYV12BugFixInHalfSliceChicken7:skl,bxt,kbl,glk,cfl */
>>>>>         /* WaEnableSamplerGPGPUPreemptionSupport:skl,bxt,kbl,cfl */
>>>>>         WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,
>>>>> --
>>>>> 2.23.0.rc1
>>>>>
>>>>>
>>

--00000000000056c0940590cd54c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Bump?=C2=A0 Has this been landed or looked at beyond my re=
view?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Aug 14, 2019 at 1:40 PM Jason Ekstrand &lt;<a href=3D"mail=
to:jason@jlekstrand.net">jason@jlekstrand.net</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I was go=
ing to ask the status of this and then I looked and realized that I never p=
rovided a commit message blrub.=C2=A0 Oops.=C2=A0 Here you go:</div><div><b=
r></div><div>On Broadwell, the sampler was changed to not require extra pad=
ding for simple (no arrays, mipmapping, or MSAA) 1D, 2D, and buffer surface=
s.=C2=A0 Setting the GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC bit in HALF_SLICE_=
CHICKEN3 disables this and reverts the hardware to the HSW-era behaviour wh=
ere the sampler over-fetches near the edges of the surface.=C2=A0 While the=
 over-fetch does not cause faults due to the scratch page, it still means t=
hat more data than needed is getting pulled into the sampler cache.=C2=A0 I=
f the over-fetch from the sampler on a BUFFER surface leaks over into an at=
omic on the L3$, hangs can occur.</div><div><br></div><div>Bugzilla: <a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110228" target=3D"_blan=
k">https://bugs.freedesktop.org/show_bug.cgi?id=3D110228</a></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, =
2019 at 11:35 PM Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net"=
 target=3D"_blank">jason@jlekstrand.net</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><u></u>

<div>
<div dir=3D"auto">
<div dir=3D"auto">Also, I think we can provide a better commit message. I&#=
39;ll type something in the morning when I can actually look stuff up and p=
rovide correct references.</div><div dir=3D"auto"><br></div>
<div id=3D"gmail-m_-3735639588675166938gmail-m_-6259061499944170341aqm-orig=
inal" style=3D"color:black">

<div class=3D"gmail-m_-3735639588675166938gmail-m_-6259061499944170341aqm-o=
riginal-body">
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
</blockquote></div>

--00000000000056c0940590cd54c4--

--===============1373805461==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1373805461==--
