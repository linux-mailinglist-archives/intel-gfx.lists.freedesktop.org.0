Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E53586823
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 19:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7266E145;
	Thu,  8 Aug 2019 17:33:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E746E145
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 17:33:29 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id h8so3576743edv.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 10:33:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aHRrYgxi5dYeVejZ9eJmxito8jKyl5R0FwDFwun/R9A=;
 b=k23cd7KZ1qLJn0DmwAYiA82E3If3Xc/rBG7HqkqUlvHvZsDDbm3tHVcrY0aWZ0RriN
 ChI9VM4TXfsm9mbjokEHaM+cL6esvHn/rdLvlY4tL88iCTH4uvTp6m+egDweob1snap6
 P7rEW6kqbv4Rid9ruV1t5h48rJCHJdZZl66BS62nf6VvsImnEkbpl4f72Y8gGLlfMySQ
 4wMUCL/wD8HobA41P/1L5I2BL5T6OK4gkqH7LFm7ARoFcpWON5PVV7rxcZ9zW8exFDU0
 ug8W6RIgVkRY3DDOx5X7v8w537FiuhB8uj6a60eCtYzunBhj4F4kgCNkCkSEuoRznRXY
 2/fA==
X-Gm-Message-State: APjAAAVkGJKFU1GjrgKG+EQr4IUOkUbdsW2aT8Z6nrOJHjx23X7tJrYK
 LBt/FMesj5ij4AdviVpq0KN3e21n5v9T77ZCR5eFRw==
X-Google-Smtp-Source: APXvYqyhRxuH8091zs/GjFlvU+T8NOkiWdq2cJZcorX3p/hI57ESAP7W7NO8FlKN5xVKhWNGlZvHPUECLLP/hlsbY8s=
X-Received: by 2002:a17:906:6a89:: with SMTP id
 p9mr14470493ejr.44.1565285608107; 
 Thu, 08 Aug 2019 10:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190808163608.28419-1-chris@chris-wilson.co.uk>
 <CAOFGe94=pYgxJ_vDAG3iKYJkh1cJFTByiM4-vwy647sy+gX+fA@mail.gmail.com>
In-Reply-To: <CAOFGe94=pYgxJ_vDAG3iKYJkh1cJFTByiM4-vwy647sy+gX+fA@mail.gmail.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 8 Aug 2019 12:33:15 -0500
Message-ID: <CAOFGe95_=uAsR_1cANryAeB849gVf8gPei7wfzPjx1iBV_ZN=w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=aHRrYgxi5dYeVejZ9eJmxito8jKyl5R0FwDFwun/R9A=;
 b=mDUGw9pQRzgPdhTRWaf8f6mBUjd9gBGCuiM95gl+jSqoMBb7ZpEpVl3G2JLWFBznyW
 8Ur18Cg13YyJu76v4y7MrdmrqLnelJqwNTOUBGuOYGR4VAiSNmzITiK8FYBVqedVwS+H
 YWktdw4eiR4Erm3eqfyMUyo8I6Xs+cS2EjKhZZaEzxDKdSXtgs8HT/Ica9v1zqCKebCs
 crtfiSc0Bl0Q98DeTrCgLkwF+zBhz1kxR+5RpgPrw7WG8xF8NgOwWG2J5N3itR1+fNF8
 SrqXISZq+uB17pD6zBu5Vo0xah/p4y42OLkshMr9SgsNXS3Be52FnxyIYqcrJB4rRAW2
 EYWA==
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
Content-Type: multipart/mixed; boundary="===============0630991778=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0630991778==
Content-Type: multipart/alternative; boundary="000000000000a4c982058f9e7401"

--000000000000a4c982058f9e7401
Content-Type: text/plain; charset="UTF-8"

Note: This doesn't actually fix 110998.  I can still get a hard-hang with a
slightly different version of the reproducer example.  However, it does fix
the original and I suspect it will fix the UE4 editor hang in 110228

On Thu, Aug 8, 2019 at 12:30 PM Jason Ekstrand <jason@jlekstrand.net> wrote:

> This is consistent with what the Windows driver does and what I've heard
> from HW people.
>
> Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
>
> On Thu, Aug 8, 2019 at 11:36 AM Chris Wilson <chris@chris-wilson.co.uk>
> wrote:
>
>> This bit was fliped on for "syncing dependencies between camera and
>> graphics". BSpec has no recollection why, and it is causing
>> unrecoverable GPU hangs with Vulkan compute workloads.
>>
>> From BSpec, setting bit5 to 0 enables relaxed padding requiremets for
>> buffers, 1D and 2D non-array, non-MSAA, non-mip-mapped linear surfaces;
>> and *must* be set to 0h on skl+ to ensure "Out of Bounds" case is
>> suppressed.
>>
>> Reported-by: Jason Ekstrand <jason@jlekstrand.net>
>> Suggested-by: Jason Ekstrand <jason@jlekstrand.net>
>> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=110998
>> Fixes: 8424171e135c ("drm/i915/gen9: h/w w/a: syncing dependencies
>> between camera and graphics")
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Jason Ekstrand <jason@jlekstrand.net>
>> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v4.1+
>> ---
>>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
>>  1 file changed, 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> index 704ace01e7f5..b95c1d59a347 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -297,11 +297,6 @@ static void gen9_ctx_workarounds_init(struct
>> intel_engine_cs *engine,
>>                           FLOW_CONTROL_ENABLE |
>>                           PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
>>
>> -       /* Syncing dependencies between camera and graphics:skl,bxt,kbl */
>> -       if (!IS_COFFEELAKE(i915))
>> -               WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
>> -                                 GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC);
>> -
>>         /* WaEnableYV12BugFixInHalfSliceChicken7:skl,bxt,kbl,glk,cfl */
>>         /* WaEnableSamplerGPGPUPreemptionSupport:skl,bxt,kbl,cfl */
>>         WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,
>> --
>> 2.23.0.rc1
>>
>>

--000000000000a4c982058f9e7401
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Note: This doesn&#39;t actually fix 110998.=C2=A0 I can st=
ill get a hard-hang with a slightly different version of the reproducer exa=
mple.=C2=A0 However, it does fix the original and I suspect it will fix the=
 UE4 editor hang in 110228<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 12:30 PM Jason Ekstran=
d &lt;<a href=3D"mailto:jason@jlekstrand.net">jason@jlekstrand.net</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>This is consistent with what the Windows driver does and what=
 I&#39;ve heard from HW people.</div><div><br></div><div>Reviewed-by: Jason=
 Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" target=3D"_blank">jas=
on@jlekstrand.net</a>&gt;<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:36 AM Chris Wi=
lson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk" target=3D"_blank">chri=
s@chris-wilson.co.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">This bit was fliped on for &quot;syncing dependencies b=
etween camera and<br>
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

--000000000000a4c982058f9e7401--

--===============0630991778==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0630991778==--
