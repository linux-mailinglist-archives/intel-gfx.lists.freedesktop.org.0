Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D7986807
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 19:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 909ED6E160;
	Thu,  8 Aug 2019 17:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 556046E145
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 17:30:41 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id k21so91720328edq.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Aug 2019 10:30:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MDekgO1LuUBekmt2K+HasyHy2gjX74HexZX0o56LYtU=;
 b=dehT4twBr66iMBva4ffaPOuTJjBclu0Z+aBoG63FDTK8PHne5Kqc7yLbiJWIlYvqr0
 JUTijmfrXG9fKRA/8TMbWbUBhz51OdGrt9ycG3j7Yn5KweqTJKiIEv3XkPbLmcyeQUb/
 SRH5YBxmuwo6UKuMasM00tBOlwJ3qoKgI1V51th2mkMTy7H1BlNCCWseHRygEE3mB+Rk
 Ayxn/1n0ERBP6xO1eec8Q/HlyWc95Ijz5zqPfX6HUddKcR86Bgza5tQ7KzyZcOaEI8xK
 8P8zkKjtzpP/zC4w3zXkivLY3m2SzUgcwjZDx70u7Nyu5FPXNUUWLwyeWo85tqjBK6af
 WBfQ==
X-Gm-Message-State: APjAAAXs0eIh3qhpKMh3BSwcmHoj3nd+YI6u6hK3AboxwwG01zdRJy5R
 JcUnGeJagW+b/+dYjT9FN+FFvT8Sr56X3YNLOPPUMA==
X-Google-Smtp-Source: APXvYqzWkgxowmD+X/8u/Jr+Br/QqxM5TbdV1A3t4Dmb9AfA5DKfl6hiqcGCClr7QC60nByZ/Rn2i86CofutiP/J3jc=
X-Received: by 2002:a17:906:a952:: with SMTP id
 hh18mr14546892ejb.289.1565285439812; 
 Thu, 08 Aug 2019 10:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190808163608.28419-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190808163608.28419-1-chris@chris-wilson.co.uk>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 8 Aug 2019 12:30:27 -0500
Message-ID: <CAOFGe94=pYgxJ_vDAG3iKYJkh1cJFTByiM4-vwy647sy+gX+fA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=MDekgO1LuUBekmt2K+HasyHy2gjX74HexZX0o56LYtU=;
 b=2ARdiGbx2CXi0U1cyu9BDic5GZrGu5iEO7ZcwdsR6dxCl9I/fHr6TatpZ/Y10y9C2N
 FXGw55b9MVxq5l/0sUtPza9JKuy0jePpP63klKJZQrJv0IX1mrieZLFwzaOenumwnSL8
 zNvsI+zJml3g5n3mIbicFMeA6Ufmrvfbd53dYzPLAL2yjiVhEMhjahUjWrc3nN1IKdhn
 ARR0r+DCm6eHr17a6oEzD20S/vpfsANoEvDJvNXtxLQuSnKcl7GQZw6grIdc/wCDMk7z
 cpa05AGrhjE+mButsmZw85eJgKb2B7yRoM+rhpBZo92cA50bOV1ERDOCbiALMhDvHgFN
 v7mg==
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
Content-Type: multipart/mixed; boundary="===============1033276864=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1033276864==
Content-Type: multipart/alternative; boundary="0000000000009cd88a058f9e6abe"

--0000000000009cd88a058f9e6abe
Content-Type: text/plain; charset="UTF-8"

This is consistent with what the Windows driver does and what I've heard
from HW people.

Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>

On Thu, Aug 8, 2019 at 11:36 AM Chris Wilson <chris@chris-wilson.co.uk>
wrote:

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
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 704ace01e7f5..b95c1d59a347 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -297,11 +297,6 @@ static void gen9_ctx_workarounds_init(struct
> intel_engine_cs *engine,
>                           FLOW_CONTROL_ENABLE |
>                           PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);
>
> -       /* Syncing dependencies between camera and graphics:skl,bxt,kbl */
> -       if (!IS_COFFEELAKE(i915))
> -               WA_SET_BIT_MASKED(HALF_SLICE_CHICKEN3,
> -                                 GEN9_DISABLE_OCL_OOB_SUPPRESS_LOGIC);
> -
>         /* WaEnableYV12BugFixInHalfSliceChicken7:skl,bxt,kbl,glk,cfl */
>         /* WaEnableSamplerGPGPUPreemptionSupport:skl,bxt,kbl,cfl */
>         WA_SET_BIT_MASKED(GEN9_HALF_SLICE_CHICKEN7,
> --
> 2.23.0.rc1
>
>

--0000000000009cd88a058f9e6abe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is consistent with what the Windows driver does =
and what I&#39;ve heard from HW people.</div><div><br></div><div>Reviewed-b=
y: Jason Ekstrand &lt;<a href=3D"mailto:jason@jlekstrand.net">jason@jlekstr=
and.net</a>&gt;<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Thu, Aug 8, 2019 at 11:36 AM Chris Wilson &lt;<=
a href=3D"mailto:chris@chris-wilson.co.uk">chris@chris-wilson.co.uk</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This bit=
 was fliped on for &quot;syncing dependencies between camera and<br>
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

--0000000000009cd88a058f9e6abe--

--===============1033276864==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1033276864==--
