Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18D37D5C21
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 22:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD0A110E4B6;
	Tue, 24 Oct 2023 20:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com
 [209.85.160.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F1E10E4B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 20:08:27 +0000 (UTC)
Received: by mail-oa1-f46.google.com with SMTP id
 586e51a60fabf-1eb7a8d9610so288692fac.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 13:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698178106; x=1698782906;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=HEsMZu8Eqayi45LcxRtOZkFhUqbYnUdSwErTzQoK/I8=;
 b=OxfM7t712Q2+RWph6tkKgZgrkum5A6dtb1Z2Ki56C7JPCSVIT9eoRGEa63QEkdU8ZM
 IXD+pmNZaI2AAA8lkyYc1j3nl9NnX2VGZ9qs8pWuopzxZps0PCD3oP6XPvKR+Vt2QkNa
 y7K1Kh5I1gp7pOtkePrRf7Yn41rBDj9aJ2iJFHjoBYMRjWovuA99foaUBhb+XUJFnb0l
 eKmWHhGicgW+VeXvvw+M4tNXbfq9BzgI4fQxzZhtGxXGuzndpynxTQ0D5Rr/yk/ASoby
 u/vPFBfHXU/6QtUkrwxdL0N/HfAqsm59NDh1BNMxZH6yyeQAgYjaUXPrTM4W09MwNz4f
 rs1Q==
X-Gm-Message-State: AOJu0Yynz3ui3wokCRXqJYkVUf8N4LTPTwecwOvakN1hsRE9Rj67Eabu
 lJYDEMaIuC4nIjM4HyjBdsKsD8/NzM8F9tM/qdE=
X-Google-Smtp-Source: AGHT+IF3IKMVvXAvqIHlVk8xy2u/3N4jetWHGmHiTZ6ATMxW3MKPb5NHIxeV4cKTjgwWGWALKBR9CNSZHnzzLFeiMxU=
X-Received: by 2002:a05:6870:4d17:b0:1e9:8a7e:5893 with SMTP id
 pn23-20020a0568704d1700b001e98a7e5893mr15978010oab.5.1698178106255; Tue, 24
 Oct 2023 13:08:26 -0700 (PDT)
MIME-Version: 1.0
References: <20231004183455.27797-1-ville.syrjala@linux.intel.com>
 <20231024191719.4041-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231024191719.4041-1-ville.syrjala@linux.intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 24 Oct 2023 22:08:15 +0200
Message-ID: <CAJZ5v0i+96sV9DuLk31iBB-K8y=6i9Tq1ef893btCUkvetHVDA@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] powercap: intel_rapl: Downgrade BIOS
 locked limits pr_warn() to pr_debug()
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
Cc: linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-kernel@vger.kernel.org,
 Srinivas Pandruvada <srinivas.pandruvada@intel.com>,
 Zhang Rui <rui.zhang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 24, 2023 at 9:17=E2=80=AFPM Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Before the refactoring the pr_warn() only triggered when
> someone explicitly tried to write to a BIOS locked limit.
> After the refactoring the warning is also triggering during
> system resume. The user can't do anything about this so
> printing scary warnings doesn't make sense
>
> Keep the printk but make it pr_debug() instead of pr_warn()
> to make it clear it's not a serious issue.
>
> Cc: Zhang Rui <rui.zhang@intel.com>
> Cc: Wang Wendy <wendy.wang@intel.com>
> Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Cc: Srinivas Pandruvada <srinivas.pandruvada@intel.com>
> Fixes: 9050a9cd5e4c ("powercap: intel_rapl: Cleanup Power Limits support"=
)
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/powercap/intel_rapl_common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/inte=
l_rapl_common.c
> index 40a2cc649c79..2feed036c1cd 100644
> --- a/drivers/powercap/intel_rapl_common.c
> +++ b/drivers/powercap/intel_rapl_common.c
> @@ -892,7 +892,7 @@ static int rapl_write_pl_data(struct rapl_domain *rd,=
 int pl,
>                 return -EINVAL;
>
>         if (rd->rpl[pl].locked) {
> -               pr_warn("%s:%s:%s locked by BIOS\n", rd->rp->name, rd->na=
me, pl_names[pl]);
> +               pr_debug("%s:%s:%s locked by BIOS\n", rd->rp->name, rd->n=
ame, pl_names[pl]);
>                 return -EACCES;
>         }
>
> --

Applied, thanks!
