Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E3D75D16F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 20:36:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 293BD10E090;
	Fri, 21 Jul 2023 18:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7582510E6E9
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 18:36:29 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id
 af79cd13be357-76ae5b44426so36612585a.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 11:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1689964588; x=1690569388;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DHZrBLyt0tLPGB2RONofsO5b0sKazW7IdioBPKpibr4=;
 b=ytwwLc0h9YOdggPJlKlzbjecI9Apaj257sz7uh6CdFxqjlBYy6kFl3hoL19aMz1ixE
 bjQCKRyBT4MK/9YEtKbbYUrYrvhupezSMAn0l1U3eRtox0mHBMH5FC8NqjeF+v2RvVIz
 XSCXQQ2nkYX/WQIclOKo4E3JtA1scC4P8b1Y3c9E2DvbQBuOj2caQPcSv8lBr+mgTPrm
 cqIRAzctEgT2qC3ljrYOWWTx6vjlJExJdmAEamcjfrA6+yHHgaZ9KyAmTu6SHAaPNHqo
 SDB00c+8qxHmt0qIx9ZozvrPG/G06aPFhe8GZIa8IJNEGYPj6rgTg8hbfFi6gyUxZHWo
 Nt1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689964588; x=1690569388;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DHZrBLyt0tLPGB2RONofsO5b0sKazW7IdioBPKpibr4=;
 b=ABHE7h32AIpLXNBqHJ7CBcnXQfx8Mw+z4KMOuy/6tfWcfq+Nl3yoo3AYEimAwiXI/b
 p/ZtLKEtbgHFnepi5gErgn4ModiFybJoy5bIjocui1+r6lD8ZPXxf1KMoT+px+8rgks7
 OQP+DAMZsGbO+H3bBFCVsxo4bPlnnBa6ScIcR+9X7JjvoGgwI4kFG9oy9J99kegyo0dC
 94eFrn27MmJ5Bv1bpGjXHOqqBlegAAqRbWvOPGfrQxgSlfCO7fZZDuRL5uNFh4g/jdDS
 ZaFcbdJcuc9UnLflYMb/H87tZlKL/MCMRoHUUNbuI+1SAxOCIdjSUSZZ18ddRLreDgp/
 Uv6g==
X-Gm-Message-State: ABy/qLbfK1Y9lR70oMbVSmiHyLinX+Fx/RG6ShrN1WcY3Mu8m5kje/CX
 FBwZm77L9d7BOWKP0edp6i3nqz5yXQVlWb+CV9iDhw==
X-Google-Smtp-Source: APBJJlGh9fwuP4Vof6eGVvzXhgYaNFm3V3zmaLa3+SuKLBH80ZShDvbTVFMZ3OBxViOUWTYv8r04Cf1dx8bNV5mmmaM=
X-Received: by 2002:ad4:404f:0:b0:636:b0b5:3198 with SMTP id
 r15-20020ad4404f000000b00636b0b53198mr797212qvp.50.1689964588331; Fri, 21 Jul
 2023 11:36:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230718-nsecs_to_jiffies_timeout-constant-logical-operand-v1-0-36ed8fc8faea@kernel.org>
 <20230718-nsecs_to_jiffies_timeout-constant-logical-operand-v1-1-36ed8fc8faea@kernel.org>
In-Reply-To: <20230718-nsecs_to_jiffies_timeout-constant-logical-operand-v1-1-36ed8fc8faea@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 21 Jul 2023 11:36:17 -0700
Message-ID: <CAKwvOdkdjnNwBXKyp2ssq6iF9DMqJeWYyPOfTEFtLUoFhb79jg@mail.gmail.com>
To: Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/v3d: Avoid
 -Wconstant-logical-operand in nsecs_to_jiffies_timeout()
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
Cc: justinstitt@google.com, emma@anholt.net, trix@redhat.com,
 intel-gfx@lists.freedesktop.org, llvm@lists.linux.dev, patches@lists.linux.dev,
 mwen@igalia.com, dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 18, 2023 at 2:44=E2=80=AFPM Nathan Chancellor <nathan@kernel.or=
g> wrote:
>
> A proposed update to clang's -Wconstant-logical-operand to warn when the
> left hand side is a constant shows the following instance in
> nsecs_to_jiffies_timeout() when NSEC_PER_SEC is not a multiple of HZ,
> such as CONFIG_HZ=3D300:
>
>   In file included from drivers/gpu/drm/v3d/v3d_debugfs.c:12:
>   drivers/gpu/drm/v3d/v3d_drv.h:343:24: warning: use of logical '&&' with=
 constant operand [-Wconstant-logical-operand]
>     343 |         if (NSEC_PER_SEC % HZ &&
>         |             ~~~~~~~~~~~~~~~~~ ^
>   drivers/gpu/drm/v3d/v3d_drv.h:343:24: note: use '&' for a bitwise opera=
tion
>     343 |         if (NSEC_PER_SEC % HZ &&
>         |                               ^~
>         |                               &
>   drivers/gpu/drm/v3d/v3d_drv.h:343:24: note: remove constant to silence =
this warning
>   1 warning generated.
>
> Turn this into an explicit comparison against zero to make the
> expression a boolean to make it clear this should be a logical check,
> not a bitwise one.
>
> Link: https://reviews.llvm.org/D142609
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/gpu/drm/v3d/v3d_drv.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/v3d/v3d_drv.h b/drivers/gpu/drm/v3d/v3d_drv.=
h
> index b74b1351bfc8..7f664a4b2a75 100644
> --- a/drivers/gpu/drm/v3d/v3d_drv.h
> +++ b/drivers/gpu/drm/v3d/v3d_drv.h
> @@ -340,7 +340,7 @@ struct v3d_submit_ext {
>  static inline unsigned long nsecs_to_jiffies_timeout(const u64 n)
>  {
>         /* nsecs_to_jiffies64() does not guard against overflow */
> -       if (NSEC_PER_SEC % HZ &&
> +       if ((NSEC_PER_SEC % HZ) !=3D 0 &&
>             div_u64(n, NSEC_PER_SEC) >=3D MAX_JIFFY_OFFSET / HZ)
>                 return MAX_JIFFY_OFFSET;
>
>
> --
> 2.41.0
>


--=20
Thanks,
~Nick Desaulniers
