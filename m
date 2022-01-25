Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C51449B375
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 13:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E446210F37F;
	Tue, 25 Jan 2022 12:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D681610F373;
 Tue, 25 Jan 2022 12:01:39 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id v5so8290184qto.7;
 Tue, 25 Jan 2022 04:01:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=II+NNc4ijT1aQAsmWV8eyKcdUSD0sDUcekUaJRvZ5qU=;
 b=IRRdfhieBE3EANcBzpFz9NCbvHu/K1rVAj/lLoxijBQPgDOAxp8iYlQ7CT6qioe10K
 L3y11EHt1W/xqvQ2D8Q9ZjiDAsKcHx0XMdy/z20+sIqX9hP6HpACqdl4gsM0l4+r+9sF
 WfLzt/I0WDlkoodCVuyg5+VKGLEeMAO9JILR6MrtfmcU7aMpEAqFIjjKx+/XBs8c9CEA
 /2KeRv7bApefcsWbRCv0tXDBqTYgIZN7gdf3YnE8NmxJ0ZILV1+VVcyZKADV+qKIgGIo
 Xa8p7XUbLdyFBlJ826UXGK2eqhvgCByCgeXykRzOHRKybtcwayk8PDa1axdwJIcFNxFn
 KsLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=II+NNc4ijT1aQAsmWV8eyKcdUSD0sDUcekUaJRvZ5qU=;
 b=XTH319CLx4cL3xr2Aim8gTRgHFr1QTSuJ9bGuvJI9bd6MNhHnxq1DslW4Fo1M+hsZ7
 gm31rGDUzVkccxfJbODl7ebFFkIYgWlQZ4NSBmL3VdAd3I6XuLliDqg125lnUihMmn1q
 8U4bG6csYcvhLvaIoYCrIK3QjSowds7t+EhKITD+hTZr7pVB7UzkmH9/Ae8gpIr2oq01
 lyuS6QpBhgKM4zNSrEl8A688XJTC4E38hR5W6ChZfVOfLJDIR8uzo4G+kdUqKHxxBDdg
 ImGBsgGIv3jF+bCZlylwLvq1xj50BdQa770K4cTyk7dNyYWoNqsM9bmRe6FDTsAB8EKx
 6SAw==
X-Gm-Message-State: AOAM533+Pnj1SfmJct+rR+ENKXwcjeiESE5HffknOjIHNDGRNqslfwwa
 UALtDA4UGGD3vD7PBdhfwec++VMSp2ROnsUUezeGrwqRlEA=
X-Google-Smtp-Source: ABdhPJzlfTV6L9XeicMDET5djT68GQzD7F9dctJQlbAcTbYe9MIbw4xO98FBJaW85CUFjsUud2hovV0bUyV8t4d0qi4=
X-Received: by 2002:a05:622a:1ba4:: with SMTP id
 bp36mr16089098qtb.455.1643112097464; 
 Tue, 25 Jan 2022 04:01:37 -0800 (PST)
MIME-Version: 1.0
References: <20220122000822.25616-1-matthew.brost@intel.com>
In-Reply-To: <20220122000822.25616-1-matthew.brost@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 25 Jan 2022 12:01:11 +0000
Message-ID: <CAM0jSHN+pgf_PvH-eec77_kxDdvjGGkeWWE0EcLw6uhR--bQWw@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Use less in contexts
 steal guc id test
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 22 Jan 2022 at 00:14, Matthew Brost <matthew.brost@intel.com> wrote:
>
> Using more guc_ids in the stealing guc id test has no real benefit.
> Tearing down lots of contexts all at the same time takes a bit of time
> due to the H2G / G2H ping-pong with the GuC. On some slower platforms
> this can cause timeous when flushing the test as the GT isn't idle when
> this ping-pong is happening. Reduce the number of guc ids to speed up
> the flushing of the test.
>
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/4821
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

This also appears to make the test pass on systems with a small LMEM
BAR(256M), where before it was just running out of memory,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/uc/selftest_guc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
> index d3327b802b761..a115894d5896e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/selftest_guc.c
> @@ -157,7 +157,7 @@ static int intel_guc_steal_guc_ids(void *arg)
>         wakeref = intel_runtime_pm_get(gt->uncore->rpm);
>         engine = intel_selftest_find_any_engine(gt);
>         sv = guc->submission_state.num_guc_ids;
> -       guc->submission_state.num_guc_ids = 4096;
> +       guc->submission_state.num_guc_ids = 512;
>
>         /* Create spinner to block requests in below loop */
>         ce[context_index] = intel_context_create(engine);
> --
> 2.34.1
>
