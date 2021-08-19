Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 555163F1AC5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 15:41:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104BE6E989;
	Thu, 19 Aug 2021 13:40:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82c.google.com (mail-qt1-x82c.google.com
 [IPv6:2607:f8b0:4864:20::82c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83566E989
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 13:40:56 +0000 (UTC)
Received: by mail-qt1-x82c.google.com with SMTP id y9so4568243qtv.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 06:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DwWwwmUEPgigh+Vo5ir3Qar9dboir53ikN+9xBmYfGo=;
 b=YsHoW4Tz0ykLnslhMqbj0H0lqSkuehoglHPsyrKciOs+pwSCzsL1V3kg4vmcDwhTRT
 z4eFdbvKEkgCnSOGMPcBh6k2+F9wMU/Vkq5+7w+/ZVOvGsPFSbnM7hJnQMpl2ZjgfLwq
 oM5uWmm20BiJ5wU8hEdLsjueoIYz2FMBfCj2owrIenRtMMr33zviQ0MzD7952/dodCLi
 CxhHC11akNVHCIYWWQ8nkQwa4dOHT9ylpn2wGO50+1QEnZ3Qpcfk4wPKYvn9NdTINicP
 T4g3lP99H6a/TNRSC89MHvKshq2x9nhQl360l04UAnH2GLrFDBCzYHzJArLh3Opubouy
 H+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DwWwwmUEPgigh+Vo5ir3Qar9dboir53ikN+9xBmYfGo=;
 b=n/gah72yrfINvt0gwmprwZb7fm9EccvZfr3q9sbjnhE8CVQ5nMXwYCpYiB+8TC/xue
 8GhQIzFrhDGOxd+7kBfzQjpP5g5TndAuZmoI/KzlAWYr050DGZorav3Nbc7REl+fszME
 c13tBg0IvlSwtc2DvtYCaA2lM8sbT7CdmmRL7ZEu8eHB6jZ5Pzet/0ClDcz8XIFupyOV
 9+JeaL46XEhDrhPjzhvgbykYLLZbLbu90yDOqsUdAVi6nB9gcAKQ2OhpdmG3iQ+LhKZg
 1weSlCqAzaTt3ecwG7YC36PrcWGK2S861nKEgyngrpJUgOYNKpTzfOgWf+EFw1NVagvx
 SrZQ==
X-Gm-Message-State: AOAM532fFO2fr8FBYdL4chT9gAMWBmBadYqnS48AtD+mRFuyE9faB55Y
 k3Jegwx5xYyhCg7uKBcFo39aVRMa9H6E8ZRyrfrFlPJwlG3szA==
X-Google-Smtp-Source: ABdhPJwp6UGeywqoRPsoBkPaXxX6zSUNRPTxgdwBZhPeiwKQakmQQz3vvQMv36NWyeeFnzjccCUPJM3brLwef8nN5yA=
X-Received: by 2002:a05:622a:104c:: with SMTP id
 f12mr12608081qte.339.1629380455507; 
 Thu, 19 Aug 2021 06:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210816171444.105469-1-thomas.hellstrom@linux.intel.com>
 <162922127945.22607.17222314422938085017@emeril.freedesktop.org>
In-Reply-To: <162922127945.22607.17222314422938085017@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 19 Aug 2021 14:40:28 +0100
Message-ID: <CAM0jSHPVop9CsydR-7SFYxinUz0-M21WKQ3Muj017RoQA49PKw@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 lakshminarayana.vudum@intel.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915=3A_Ditch_the_i915=5Fgem=5Fww=5Fctx_loop_member_=28?=
	=?utf-8?q?rev2=29?=
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

On Tue, 17 Aug 2021 at 18:28, Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> Patch Details
> Series:drm/i915: Ditch the i915_gem_ww_ctx loop member (rev2)
> URL:https://patchwork.freedesktop.org/series/93711/
> State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20834/index.html
>
> CI Bug Log - changes from CI_DRM_10490_full -> Patchwork_20834_full
>
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_20834_full absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20834_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> Possible new issues
>
> Here are the unknown changes that may have been introduced in Patchwork_20834_full:
>
> IGT changes
>
> Possible regressions
>
> igt@kms_atomic_transition@plane-toggle-modeset-transition:
>
> shard-tglb: PASS -> INCOMPLETE

Lakshmi, this failure is unrelated.
