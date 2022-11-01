Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BE261548B
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 22:58:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3599088867;
	Tue,  1 Nov 2022 21:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF0810E430
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 21:58:46 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id cg5so1476669qtb.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Nov 2022 14:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qSBIQvF6GvftCT2u5IUdt8coCLdy2kcvUnCo0F6KVro=;
 b=kJVZ5Zz+/RrXtHCXXKACUDOd+LxhVCcT9eqGc3ik+zV9/b/mC2pe2FZYptpTHBHUsF
 4CZ5gzZm9zjFCstgtbd2RwI+0KURjDNDKE9bRRTuSTh1IhVEWPCm71ccBXN8bRq3gZb3
 8ixufZ+LaaL4nuonRDpODTEU+CdYTwdxUCoX8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:in-reply-to:references:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qSBIQvF6GvftCT2u5IUdt8coCLdy2kcvUnCo0F6KVro=;
 b=MFlW3+BJeP8M5Xf4LH4Lx2SL6QyjkJP4+OegaAyLWEGmLyF4HFbdn4a32M6ELcNQ2P
 K7/lKcywN34CVhxw/OlKqpl4UBKxpHrXcgu/zB0kXlk7vTk8GlUwD4t6WZSyX7CaI9hb
 MISABd6Hhd86Xt5l85xNJmstKd9V7RwyKoXT6Z8Gu436/J73U2Pyut37BbWsCcINMkqO
 PJLFildf16Q+TjM4Pf5TBmtPjQ5rjH3ubi1rnQQhha6GAUXTVDutpkzuu+0hHW9GjOnn
 uO1/sy/yXDg0/gikrCBxyAhZYmDBmHvD57yQatjYg0mXjuhgnVnPqaGavPZGe6XpXJKs
 PTxQ==
X-Gm-Message-State: ACrzQf1CO2yfpurXShBjYEIVSGAUNSdBHT8sHjqAs7S0leunN2DUHej9
 lB2uUJ6LiXBkexz2698/3bLQc5BW2JqFmg==
X-Google-Smtp-Source: AMsMyM55VjWNN88n4oYrl3OGDLWddFHZWou8i9UUXtR3faebcznHvMbGcj8OY0JiJgLg7k4VO7uQeA==
X-Received: by 2002:ac8:7f94:0:b0:39c:dd8f:59f3 with SMTP id
 z20-20020ac87f94000000b0039cdd8f59f3mr16757459qtj.46.1667339924909; 
 Tue, 01 Nov 2022 14:58:44 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com.
 [209.85.219.172]) by smtp.gmail.com with ESMTPSA id
 l19-20020a05620a211300b006fa4cac54a4sm1305605qkl.133.2022.11.01.14.58.44
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Nov 2022 14:58:44 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id f205so19010932yba.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Nov 2022 14:58:44 -0700 (PDT)
X-Received: by 2002:a25:7382:0:b0:6cb:818d:15d1 with SMTP id
 o124-20020a257382000000b006cb818d15d1mr19589561ybc.95.1667339923862; Tue, 01
 Nov 2022 14:58:43 -0700 (PDT)
MIME-Version: 1.0
References: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
 <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
In-Reply-To: <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
From: Brian Norris <briannorris@chromium.org>
Date: Tue, 1 Nov 2022 14:58:32 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
Message-ID: <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915=3A_Set_PROBE=5FPREFER=5FASYNCHRONOUS?=
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

On Fri, Oct 28, 2022 at 5:24 PM Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> Patch Details
> Series:drm/i915: Set PROBE_PREFER_ASYNCHRONOUS
> URL:https://patchwork.freedesktop.org/series/110277/
> State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
>
> CI Bug Log - changes from CI_DRM_12317 -> Patchwork_110277v1
>
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_110277v1 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110277v1, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html

For the record, I have almost zero idea what to do with this. From
what I can tell, most (all?) of these failures are flaky(?) already
and are probably not related to my change.

But if someone believes to actually be a blocking issue with my patch,
let me know, and I can see if I can figure out a better answer than
that.

Thanks,
Brian
