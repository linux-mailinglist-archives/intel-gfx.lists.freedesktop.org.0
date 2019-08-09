Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D81EF870B1
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 06:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524C36ECFC;
	Fri,  9 Aug 2019 04:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com
 [IPv6:2607:f8b0:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A268C6ECFC
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 04:35:34 +0000 (UTC)
Received: by mail-ot1-x341.google.com with SMTP id l15so127843394otn.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 21:35:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
 :references:user-agent:subject:mime-version;
 bh=9rGxqPKWpjINdjJNaxdIKpY/Ornqli6j6NzDs3+ErDk=;
 b=PhaTGFVx07aAsIVqhlag62gB5qE1bfHkpwNwoNdAs+3ivJjrgamCbv1RtYbOgPwyEG
 LSjAb+OLiw/mHjTJ+m75LGIDgBitjBcLfEAU5L9591Ik0DkpW0XfhSNSs4i/g6UnWrYK
 n1jxOxlaOZQJfSr5lSUBW66x75omSyLNXg/NWXNCOIE4X0kJV6Uo35WMdiw3of3cX2Mt
 4oDZSFRe4Nd1ctlkAhpJhHGUwAMcTAyzsJuJC6Djbi0ewEWVZWqMiryWC6uRAZDn9SA+
 xH7Cl9eCECqTWFGuSrFt/st1Wd4jaznqfCYH5m713qyEff4wFPHvJcObGEf+sAxuAbJ3
 68LQ==
X-Gm-Message-State: APjAAAUTRmX6OIXmiiiAaaPg9udvDC2zKM3t6xMUKXHjtryw8N1+H+Rl
 e8JdbHzr0H35dQqRk2uwb/SgUw==
X-Google-Smtp-Source: APXvYqxH5dSE4fhzf1iOO88H7wU4YK31rTi5Ib1gjC8BoHjApGJlGlEEEkzCVYdhHdSDY4KBOC7d/w==
X-Received: by 2002:a02:b68f:: with SMTP id i15mr20723375jam.107.1565325333716; 
 Thu, 08 Aug 2019 21:35:33 -0700 (PDT)
Received: from [100.103.7.135] ([209.107.189.48])
 by smtp.gmail.com with ESMTPSA id m10sm175908797ioj.75.2019.08.08.21.35.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 21:35:32 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu, 08 Aug 2019 23:35:29 -0500
Message-ID: <16c74a90268.27ad.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
In-Reply-To: <CAOFGe95_=uAsR_1cANryAeB849gVf8gPei7wfzPjx1iBV_ZN=w@mail.gmail.com>
References: <20190808163608.28419-1-chris@chris-wilson.co.uk>
 <CAOFGe94=pYgxJ_vDAG3iKYJkh1cJFTByiM4-vwy647sy+gX+fA@mail.gmail.com>
 <CAOFGe95_=uAsR_1cANryAeB849gVf8gPei7wfzPjx1iBV_ZN=w@mail.gmail.com>
User-Agent: AquaMail/1.20.0-1462 (build: 102100002)
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:date:message-id:in-reply-to:references:user-agent
 :subject:mime-version;
 bh=9rGxqPKWpjINdjJNaxdIKpY/Ornqli6j6NzDs3+ErDk=;
 b=vpJxgHtDO2aACC8fYDZY/8TyRiUTJiNq6uobTa0JIgQmWPxY2dkLU/yiW+UZJADgLs
 EujkKeHoL0Ea78hWpylwXneBajpTf40/7G1VNkU1KaXG39SSP/ICPE9Zc/mMuE05VZfW
 mqiPGhe14j6FmGd2P7AQsIb0CtzhJ+LDzKq9u+L9h7pHebfKejCx66Htv9Koc1p/7xXh
 bBk28BPFXw7sbu+hQW5ZZGTLHkSuV9LeFXHM3BNvYDRjIzJdXy+jOjLtfR52IfAXzUK4
 yDBPLXdycCtjQH95wokM/bFml3xym0K2vQvxKcUrXkjEuvFfjOD7oQnBtHBfB4tE7Rw/
 SaNg==
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
Content-Type: multipart/mixed; boundary="===============1179605646=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a multi-part message in MIME format.
--===============1179605646==
Content-Type: multipart/alternative; boundary="----------16c74a903aa174427ad293f1b9"

This is a multi-part message in MIME format.
------------16c74a903aa174427ad293f1b9
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 8bit

Also, I think we can provide a better commit message. I'll type something 
in the morning when I can actually look stuff up and provide correct 
references.

On August 8, 2019 12:33:15 Jason Ekstrand <jason@jlekstrand.net> wrote:
> Note: This doesn't actually fix 110998.  I can still get a hard-hang with a 
> slightly different version of the reproducer example.  However, it does fix 
> the original and I suspect it will fix the UE4 editor hang in 110228
>
> On Thu, Aug 8, 2019 at 12:30 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
> This is consistent with what the Windows driver does and what I've heard 
> from HW people.
>
> Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
>
> On Thu, Aug 8, 2019 at 11:36 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> This bit was fliped on for "syncing dependencies between camera and
> graphics". BSpec has no recollection why, and it is causing
> unrecoverable GPU hangs with Vulkan compute workloads.
>
> From BSpec, setting bit5 to 0 enables relaxed padding requiremets for
> buffers, 1D and 2D non-array, non-MSAA, non-mip-mapped linear surfaces;
> and *must* be set to 0h on skl+ to ensure "Out of Bounds" case is
> suppressed.
>
> Reported-by: Jason Ekstrand <jason@jlekstrand.net>
> Suggested-by: Jason Ekstrand <jason@jlekstrand.net>
> Bugzilla: https://bugs.freedesktop.org/show_bug.cgi?id=110998
> Fixes: 8424171e135c ("drm/i915/gen9: h/w w/a: syncing dependencies between 
> camera and graphics")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v4.1+
> ---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
> 1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 704ace01e7f5..b95c1d59a347 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -297,11 +297,6 @@ static void gen9_ctx_workarounds_init(struct 
> intel_engine_cs *engine,
> FLOW_CONTROL_ENABLE |
> PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
>
> -       /* Syncing dependencies between camera and graphics:skl,bxt,kbl */
> -       if (!IS_COFFEELAKE(i915))
> -               WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
> -                                 GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC);
> -
> /* WaEnableYV12BugFixInHalfSliceChicken7:skl,bxt,kbl,glk,cfl */
> /* WaEnableSamplerGPGPUPreemptionSupport:skl,bxt,kbl,cfl */
> WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,
> --
> 2.23.0.rc1


------------16c74a903aa174427ad293f1b9
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.=
w3.org/TR/html4/loose.dtd">
<html>
<body>
<div dir=3D"auto">
<div dir=3D"auto">Also, I think we can provide a better commit message. I'l=
l type something in the morning when I can actually look stuff up and provi=
de correct references.</div><div dir=3D'auto'><br></div>
<div id=3D"aqm-original" style=3D"color: black;">
<!-- body start -->
<div class=3D"aqm-original-body">
<div style=3D"color: black;">
<p style=3D"color: black; font-size: 10pt; font-family: sans-serif; margin:=
 8pt 0;">On August 8, 2019 12:33:15 Jason Ekstrand &lt;jason@jlekstrand.net=
&gt; wrote:</p>
<blockquote type=3D"cite" class=3D"gmail_quote" style=3D"margin: 0 0 0 0.75=
ex; border-left: 1px solid #808080; padding-left: 0.75ex;">
<div dir=3D"ltr">Note: This doesn't actually fix 110998.&nbsp; I can still =
get a hard-hang with a slightly different version of the reproducer example=
.&nbsp; However, it does fix the original and I suspect it will fix the UE4=
 editor hang in 110228<br></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 12:30 PM Jason Ekstrand &l=
t;<a href=3D"mailto:jason@jlekstrand.net">jason@jlekstrand.net</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr"><div>This is consistent with what the Windows driver does and what I've=
 heard from HW people.</div><div><br></div><div>Reviewed-by: Jason Ekstrand=
 &lt;<a href=3D"mailto:jason@jlekstrand.net" target=3D"_blank">jason@jlekst=
rand.net</a>&gt;<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:36 AM Chris Wilson &lt;=
<a href=3D"mailto:chris@chris-wilson.co.uk" target=3D"_blank">chris@chris-w=
ilson.co.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">This bit was fliped on for "syncing dependencies between camera =
and<br>
graphics". BSpec has no recollection why, and it is causing<br>
unrecoverable GPU hangs with Vulkan compute workloads.<br>
<br>
From BSpec, setting bit5 to 0 enables relaxed padding requiremets for<br>
buffers, 1D and 2D non-array, non-MSAA, non-mip-mapped linear surfaces;<br>
and *must* be set to 0h on skl+ to ensure "Out of Bounds" case is<br>
suppressed.<br>
<br>
Reported-by: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" tar=
get=3D"_blank">jason@jlekstrand.net</a>&gt;<br>
Suggested-by: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" ta=
rget=3D"_blank">jason@jlekstrand.net</a>&gt;<br>
Bugzilla: <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110998"=
 rel=3D"noreferrer" target=3D"_blank">https://bugs.freedesktop.org/show_bug=
.cgi?id=3D110998</a><br>
Fixes: 8424171e135c ("drm/i915/gen9: h/w w/a: syncing dependencies between =
camera and graphics")<br>
Signed-off-by: Chris Wilson &lt;<a href=3D"mailto:chris@chris-wilson.co.uk"=
 target=3D"_blank">chris@chris-wilson.co.uk</a>&gt;<br>
Cc: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net" target=3D"_b=
lank">jason@jlekstrand.net</a>&gt;<br>
Cc: Mika Kuoppala &lt;<a href=3D"mailto:mika.kuoppala@linux.intel.com" targ=
et=3D"_blank">mika.kuoppala@linux.intel.com</a>&gt;<br>
Cc: &lt;<a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">stable@=
vger.kernel.org</a>&gt; # v4.1+<br>
---<br>
&nbsp;drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----<br>
&nbsp;1 file changed, 5 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/=
i915/gt/intel_workarounds.c<br>
index 704ace01e7f5..b95c1d59a347 100644<br>
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c<br>
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c<br>
@@ -297,11 +297,6 @@ static void gen9_ctx_workarounds_init(struct intel_eng=
ine_cs *engine,<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; FLOW_CONTROL_ENABLE |<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);<br>
<br>
-&nbsp; &nbsp; &nbsp; &nbsp;/* Syncing dependencies between camera and grap=
hics:skl,bxt,kbl */<br>
-&nbsp; &nbsp; &nbsp; &nbsp;if (!IS_COFFEELAKE(i915))<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;WA_SET_BIT_MASKED(H=
ALF_SLICE_CHICKEN3,<br>
-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;GEN9_DISABLE_OCL_OOB_SUPPRESS_L=
OGIC);<br>
-<br>
&nbsp; &nbsp; &nbsp; &nbsp; /* WaEnableYV12BugFixInHalfSliceChicken7:skl,bx=
t,kbl,glk,cfl */<br>
&nbsp; &nbsp; &nbsp; &nbsp; /* WaEnableSamplerGPGPUPreemptionSupport:skl,bx=
t,kbl,cfl */<br>
&nbsp; &nbsp; &nbsp; &nbsp; WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,<br>
-- <br>
2.23.0.rc1<br>
<br>
</blockquote></div>
</blockquote></div>
</blockquote>
</div>
</div>
<!-- body end -->

</div><div dir=3D"auto"><br></div>
</div></body>
</html>

------------16c74a903aa174427ad293f1b9--


--===============1179605646==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1179605646==--

