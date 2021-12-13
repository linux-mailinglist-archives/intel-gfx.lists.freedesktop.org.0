Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD62E472CD9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 14:09:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0854010E7B4;
	Mon, 13 Dec 2021 13:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD4C10E7B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 13:09:23 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id 132so13767399qkj.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 05:09:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1rfj9D2kBKYvq+dbSdExgQzpbYMqZh5oI0QM7lfXvlU=;
 b=mrlBILidTeOnzZ6qHJYYX9Yc76VdhlIf4c+MB3aQY7LHiWjRpvVDUQbGhz0zzEiL/N
 mQvMqTnZIMZE3JE1ov+vWVzulFo+x3TViNv69aqFLA8WxsC4vm7/rb49K7BUWaFs6zqQ
 m+NKNXJ5c8xcZSE3iY1c+J4J5RAMp+O6dFm1VMZwICmSKJLq7vwsGZWuurc67Rx8AcyW
 BeQ9FwWoRgeuRyTRKAR+JyUcjtJhmZqcCzamVxW1vCdHy3BNqHeTdOOwBphNfRSr2n/Y
 b1HsvDDtVvqvDTqR/femiX7GqDV6CL3fcRKqcAOHseidHEO0lZ6XPx3TgRSxMoh9Nn3H
 UQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1rfj9D2kBKYvq+dbSdExgQzpbYMqZh5oI0QM7lfXvlU=;
 b=fYsBORIPz6dqca9mxJpI3R7finBFnF8bqiOPdsU2khHmKHzltBA76gpzddHYzpojkj
 V7NglbK6ip4ztn79RyqifaJ8rxm8l9awCxIHQVEAQiTAtjS7XgizEpi9IbFOYDVOQxUH
 yhs9pGS856G7xG63hGeAbIfIEFT4U9Dya6zTUL1fnhEFykwVqiSNoA8AuXGjnx2J+2LD
 obKEE+RG/ESXCxs8np6m2gBleS1ryV3MDxYCK3BsMPrwMInPYN9aeE7FJdl2NiOG0+4Y
 n+FO4ZNC9eBCRAZEtHRdsHSuNF/9Mcf4k3pPTL7r5iwuwDRWYM4e0IUA9LujkElTQgyg
 /qLg==
X-Gm-Message-State: AOAM530MdKIfctn97Fd+A5zLiX7tRcQgPysduSV4xTp2SzIVuVsXKF20
 fzUKEV/KC/igl6Hcjup14Di8sF8EcD5N7/XUO09b3sRjuoY=
X-Google-Smtp-Source: ABdhPJzd1B0cQREziPvSHRtev4dYc+qybYFOPTVMMAUXtm3iR2ZIAdhZoHn75+Woe0m0eHY5pgKRXAoTsrlwHdSS8eY=
X-Received: by 2002:a05:620a:4101:: with SMTP id
 j1mr32290908qko.593.1639400962134; 
 Mon, 13 Dec 2021 05:09:22 -0800 (PST)
MIME-Version: 1.0
References: <20211210195005.2582884-1-bob.beckett@collabora.com>
 <163924841158.10522.14374952010499804922@emeril.freedesktop.org>
In-Reply-To: <163924841158.10522.14374952010499804922@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 13 Dec 2021 13:08:55 +0000
Message-ID: <CAM0jSHNwn77Th9yZsn7OZtVB6wTMzL4NjbFw-qy0WxgpX=y7dQ@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 lakshminarayana.vudum@intel.com
Content-Type: multipart/alternative; boundary="000000000000fe15eb05d306c7e6"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915/ttm=3A_fix_large_buffer_population_trucation?=
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

--000000000000fe15eb05d306c7e6
Content-Type: text/plain; charset="UTF-8"

On Sat, 11 Dec 2021 at 18:46, Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* drm/i915/ttm: fix large buffer population trucation
> *URL:* https://patchwork.freedesktop.org/series/97881/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/index.html CI
> Bug Log - changes from CI_DRM_10988_full -> Patchwork_21826_full Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21826_full absolutely need
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21826_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> Participating hosts (10 -> 10)
>
> No changes in participating hosts
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_21826_full:
> IGT changes Possible regressions
>
>    -
>
>    igt@kms_big_fb@linear-64bpp-rotate-180:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb2/igt@kms_big_fb@linear-64bpp-rotate-180.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-iclb5/igt@kms_big_fb@linear-64bpp-rotate-180.html>
>    -
>
>    igt@kms_plane_cursor@pipe-a-viewport-size-64:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk1/igt@kms_plane_cursor@pipe-a-viewport-size-64.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-glk4/igt@kms_plane_cursor@pipe-a-viewport-size-64.html>
>
>
Lakshmi, these are both false positives. Patch in question is specific to
discrete platforms.


>    -
>
> Known issues
>
> Here are the changes found in Patchwork_21826_full that come from known
> issues:
> CI changes Issues hit
>
>    - boot:
>       - shard-apl: (PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl3/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl3/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl3/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl4/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl4/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl7/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl7/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl4/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl4/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl7/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl7/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/boot.html>)
>       -> (PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl8/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl6/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl6/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl6/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl4/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl4/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl4/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl1/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl1/boot.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl1/boot.html>)
>       ([i915#4386])
>
> IGT changes Issues hit
>
>    -
>
>    igt@gem_ctx_persistence@engines-hostile-preempt:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-snb5/igt@gem_ctx_persistence@engines-hostile-preempt.html>
>       ([fdo#109271] / [i915#1099])
>    -
>
>    igt@gem_ctx_sseu@engines:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-tglb2/igt@gem_ctx_sseu@engines.html>
>       ([i915#280])
>    -
>
>    igt@gem_eio@unwedge-stress:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-tglb6/igt@gem_eio@unwedge-stress.html>
>       -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-tglb5/igt@gem_eio@unwedge-stress.html>
>       ([i915#3063] / [i915#3648])
>    -
>
>    igt@gem_exec_capture@pi@bcs0:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl8/igt@gem_exec_capture@pi@bcs0.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl7/igt@gem_exec_capture@pi@bcs0.html>
>       ([i915#4547])
>    -
>
>    igt@gem_exec_fair@basic-none@vecs0:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-pace@bcs0:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-pace@vcs1:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_schedule@pi-ringfull@vecs0:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl9/igt@gem_exec_schedule@pi-ringfull@vecs0.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl6/igt@gem_exec_schedule@pi-ringfull@vecs0.html>
>       ([i915#1982])
>    -
>
>    igt@gem_exec_whisper@basic-forked:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk8/igt@gem_exec_whisper@basic-forked.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-glk6/igt@gem_exec_whisper@basic-forked.html>
>       ([i915#118])
>    -
>
>    igt@gem_lmem_swapping@parallel-random-verify:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@gem_lmem_swapping@parallel-random-verify.html>
>       ([fdo#109271] / [i915#4613])
>    -
>
>    igt@gem_lmem_swapping@verify:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/igt@gem_lmem_swapping@verify.html>
>       ([fdo#109271] / [i915#4613])
>    -
>
>    igt@i915_pm_dc@dc6-dpms:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>       ([i915#454])
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>       ([fdo#109271] / [i915#3777])
>    -
>
>    igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271] / [i915#3886])
>    -
>
>    igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>       ([fdo#109271] / [i915#3886]) +5 similar issues
>    -
>
>    igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl3/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271]) +79 similar issues
>    -
>
>    igt@kms_cdclk@mode-transition:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_cdclk@mode-transition.html>
>       ([fdo#109271]) +82 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-a-degamma:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-snb5/igt@kms_color_chamelium@pipe-a-degamma.html>
>       ([fdo#109271] / [fdo#111827]) +2 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-b-ctm-0-75:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-0-75.html>
>       ([fdo#109271] / [fdo#111827]) +7 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-d-ctm-max:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm-max.html>
>       ([fdo#109271] / [fdo#111827]) +6 similar issues
>    -
>
>    igt@kms_content_protection@uevent:
>    - shard-kbl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_content_protection@uevent.html>
>       ([i915#2105])
>    -
>
>    igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl7/igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding.html>
>       ([fdo#109271]) +1 similar issue
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>       ([i915#2346])
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>       ([i915#180]) +5 similar issues
>    -
>
>    igt@kms_flip@flip-vs-suspend@c-dp1:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>       ([i915#636])
>    -
>
>    igt@kms_flip@plain-flip-fb-recreate@b-edp1:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html>
>       ([i915#2122]) +2 similar issues
>    -
>
>    igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>       ([i915#3701])
>    -
>
>    igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl6/igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs.html>
>       ([i915#1226])
>    -
>
>    igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-glk7/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html>
>       ([i915#2546])
>    -
>
>    igt@kms_frontbuffer_tracking@fbc-suspend:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>       ([i915#180]) +5 similar issues
>    -
>
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html>
>       ([fdo#109271]) +42 similar issues
>    -
>
>    igt@kms_hdr@bpc-switch-dpms:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html>
>       ([i915#1188])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>    - shard-kbl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>    - shard-kbl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html>
>       ([fdo#109271] / [i915#658])
>    -
>
>    igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html>
>       ([fdo#109271] / [i915#658]) +1 similar issue
>    -
>
>    igt@kms_vblank@pipe-a-ts-continuation-suspend:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       ([i915#180] / [i915#295])
>    -
>
>    igt@kms_writeback@writeback-check-output:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_writeback@writeback-check-output.html>
>       ([fdo#109271] / [i915#2437])
>    -
>
>    igt@perf@blocking:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl4/igt@perf@blocking.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-skl8/igt@perf@blocking.html>
>       ([i915#1542]) +1 similar issue
>    -
>
>    igt@sysfs_clients@create:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@sysfs_clients@create.html>
>       ([fdo#109271] / [i915#2994])
>
> Possible fixes
>
>    -
>
>    igt@drm_read@short-buffer-wakeup:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@drm_read@short-buffer-wakeup.html>
>       ([i915#1845] / [i915#4098]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@drm_read@short-buffer-wakeup.html>
>    -
>
>    igt@feature_discovery@psr2:
>    - {shard-rkl}: (SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@feature_discovery@psr2.html>,
>       SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@feature_discovery@psr2.html>)
>       ([i915#658]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@feature_discovery@psr2.html>
>    -
>
>    igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>    -
>
>    igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-kbl: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>       ([fdo#109271]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html>
>    -
>
>    igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>    -
>
>    igt@gem_exec_reloc@basic-scanout@vecs0:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html>
>       ([i915#3639]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@gem_exec_reloc@basic-scanout@vecs0.html>
>       +3 similar issues
>    -
>
>    igt@gem_exec_whisper@basic-contexts-all:
>    - shard-glk: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html>
>       ([i915#118]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-glk7/igt@gem_exec_whisper@basic-contexts-all.html>
>    -
>
>    igt@gem_mmap_wc@set-cache-level:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html>
>       ([i915#1850]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html>
>    -
>
>    igt@i915_pm_backlight@fade_with_suspend:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html>
>       ([i915#3012]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html>
>    -
>
>    igt@i915_pm_rpm@gem-execbuf:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html>
>       ([fdo#109308]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html>
>    -
>
>    igt@i915_pm_rpm@i2c:
>    - {shard-rkl}: (SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@i915_pm_rpm@i2c.html>,
>       SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@i915_pm_rpm@i2c.html>)
>       ([fdo#109308]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@i915_pm_rpm@i2c.html>
>    -
>
>    igt@i915_pm_rpm@modeset-lpsp:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html>
>       ([i915#1397]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html>
>       +1 similar issue
>    -
>
>    igt@i915_selftest@live@hangcheck:
>    - shard-snb: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-snb6/igt@i915_selftest@live@hangcheck.html>
>       ([i915#3921]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-snb5/igt@i915_selftest@live@hangcheck.html>
>    -
>
>    igt@kms_async_flips@async-flip-with-page-flip-events:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events.html>
>       ([i915#1845]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events.html>
>       +41 similar issues
>    -
>
>    igt@kms_color@pipe-a-ctm-green-to-red:
>    - {shard-rkl}: (SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_color@pipe-a-ctm-green-to-red.html>,
>       SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_color@pipe-a-ctm-green-to-red.html>)
>       ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_color@pipe-a-ctm-green-to-red.html>
>       +1 similar issue
>    -
>
>    igt@kms_color@pipe-b-legacy-gamma-reset:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_color@pipe-b-legacy-gamma-reset.html>
>       ([i915#1849] / [i915#4070]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_color@pipe-b-legacy-gamma-reset.html>
>       +8 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html>
>       ([fdo#112022] / [i915#4070]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html>
>       +6 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
>    - {shard-rkl}: (SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html>,
>       SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html>)
>       ([fdo#112022] / [i915#4070]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html>
>    -
>
>    igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
>    - {shard-rkl}: (SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html>,
>       SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html>)
>       ([i915#1849] / [i915#4070] / [i915#4098]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html>
>    -
>
>    igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>    - {shard-rkl}: (SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html>,
>       SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html>)
>       ([fdo#111825] / [i915#4070]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html>
>       +1 similar issue
>    -
>
>    igt@kms_cursor_legacy
>    @short-flip-before-cursor-atomic-transitions-varying-size:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html>
>       ([fdo#111825] / [i915#4070]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html>
>       +5 similar issues
>    -
>
>    igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:
>    - {shard-rkl}: (SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html>,
>       SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html>)
>       ([fdo#111314] / [i915#4098]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled.html>
>    -
>
>    igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html>
>       ([fdo#111314]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html>
>       +9 similar issues
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>    -
>
>       shard-kbl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       +5 similar issues
>       -
>
>       shard-apl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       +3 similar issues
>       -
>
>    igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html>
>       ([i915#2122]) -> PASS <https://intel>
>
>

--000000000000fe15eb05d306c7e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">On Sat, 11 Dec 2021 at 18:46, Patchwork &lt;<=
a href=3D"mailto:patchwork@emeril.freedesktop.org" target=3D"_blank">patchw=
ork@emeril.freedesktop.org</a>&gt; wrote:<br></div></div><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915/ttm: fix large buffer popula=
tion trucation</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97881/" target=3D"_blank">https://patchwork.freedesktop.org/series/978=
81/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21826/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21826/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_10988_full -&gt; Patchwork_21826_f=
ull</h1>
<h2>Summary</h2>
<p><b>FAILURE</b></p>
<p>Serious unknown changes coming with Patchwork_21826_full absolutely need=
 to be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_21826_full, please notify your bug team to allow =
them<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21826_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb2/igt@kms_big_fb@linear-64bpp-rotate-180.html" targ=
et=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21826/shard-iclb5/igt@kms_big_fb@linear-64bpp-rotate-180.ht=
ml" target=3D"_blank">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-64:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk1/igt@kms_plane_cursor@pipe-a-viewport-size-64.html"=
 target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21826/shard-glk4/igt@kms_plane_cursor@pipe-a-viewport-=
size-64.html" target=3D"_blank">FAIL</a></li></ul></li></ul></div></blockqu=
ote><div><br></div><div><div style=3D"font-family:monospace,monospace" clas=
s=3D"gmail_default">Lakshmi, these are both false positives. Patch in quest=
ion is specific to discrete platforms.</div><div style=3D"font-family:monos=
pace,monospace" class=3D"gmail_default"><br></div></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><ul><li><ul>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21826_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-apl6/boot.html" target=3D"_blank">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/boot.html=
" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_10988/shard-apl1/boot.html" target=3D"_blank">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl1/boot=
.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_10988/shard-apl1/boot.html" target=3D"_blank">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl2=
/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_10988/shard-apl2/boot.html" target=3D"_blank">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard=
-apl2/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_10988/shard-apl8/boot.html" target=3D"_blank">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/=
shard-apl8/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl8/boot.html" target=3D"_bl=
ank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0988/shard-apl3/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl3/boot.html" target=
=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10988/shard-apl3/boot.html" target=3D"_blank">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl4/boot.html" t=
arget=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_10988/shard-apl4/boot.html" target=3D"_blank">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl7/boot.h=
tml" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10988/shard-apl7/boot.html" target=3D"_blank">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl4/b=
oot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10988/shard-apl4/boot.html" target=3D"_blank">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-a=
pl7/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/boot.html" target=3D"_blank">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/sh=
ard-apl7/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10988/shard-apl6/boot.html" target=3D"_blan=
k">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_109=
88/shard-apl6/boot.html" target=3D"_blank">PASS</a>) -&gt; (<a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl8/boot.html" =
target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21826/shard-apl8/boot.html" target=3D"_blank">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl8/=
boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21826/shard-apl8/boot.html" target=3D"_blank">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/=
shard-apl8/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/boot.html" target=3D"=
_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21826/shard-apl7/boot.html" target=3D"_blank">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/boot.html"=
 target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21826/shard-apl6/boot.html" target=3D"_blank">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl6=
/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21826/shard-apl6/boot.html" target=3D"_blank">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826=
/shard-apl4/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl4/boot.html" target=3D=
"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21826/shard-apl4/boot.html" target=3D"_blank">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl3/boot.html=
" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21826/shard-apl3/boot.html" target=3D"_blank">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl=
3/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.html" target=3D"_blank">P=
ASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2182=
6/shard-apl2/boot.html" target=3D"_blank">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.html" target=
=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21826/shard-apl2/boot.html" target=3D"_blank">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl2/boot.h=
tml" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21826/shard-apl1/boot.html" target=3D"_blank">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-=
apl1/boot.html" target=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21826/shard-apl1/boot.html" target=3D"_blank=
">PASS</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hostile-preempt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-snb5/igt@gem_ctx_persistence@engines-ho=
stile-preempt.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#1099])=
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-tglb2/igt@gem_ctx_sseu@engines.html" ta=
rget=3D"_blank">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-tglb6/igt@gem_eio@unwedge-stress.html" target=3D"_blank=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21826/shard-tglb5/igt@gem_eio@unwedge-stress.html" target=3D"_blank">TI=
MEOUT</a> ([i915#3063] / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl8/igt@gem_exec_capture@pi@bcs0.html" target=3D"_blan=
k">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21826/shard-skl7/igt@gem_exec_capture@pi@bcs0.html" target=3D"_blank">=
INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21826/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html" target=
=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21826/shard-iclb6/igt@gem_exec_fair@basic-pace@bcs0.html" target=
=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21826/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html" target=
=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-ringfull@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl9/igt@gem_exec_schedule@pi-ringfull@vecs0.html" targ=
et=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21826/shard-skl6/igt@gem_exec_schedule@pi-ringfull@vecs0.ht=
ml" target=3D"_blank">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk8/igt@gem_exec_whisper@basic-forked.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21826/shard-glk6/igt@gem_exec_whisper@basic-forked.html" target=
=3D"_blank">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#4613])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl3/igt@gem_lmem_swapping@verify.html"=
 target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html" target=3D"_blank">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21826/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html" target=3D"_blank">FAIL</a>=
 ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / =
[i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-skl7/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271] =
/ [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i=
915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl3/igt@kms_ccs@pipe-d-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271])=
 +79 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_cdclk@mode-transition.html=
" target=3D"_blank">SKIP</a> ([fdo#109271]) +82 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-snb5/igt@kms_color_chamelium@pipe-a-deg=
amma.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm=
-0-75.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_color_chamelium@pipe-d-ctm=
-max.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_content_protection@uevent.=
html" target=3D"_blank">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-skl7/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-sliding.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html" =
target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21826/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-l=
egacy.html" target=3D"_blank">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21826/shard-apl7/igt@kms_flip@flip-vs-suspend-inte=
rruptible@c-dp1.html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21826/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html" target=
=3D"_blank">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html" t=
arget=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21826/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@b-e=
dp1.html" target=3D"_blank">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-iclb2/igt@kms_flip_scaled_c=
rc@flip-32bpp-ytile-to-32bpp-ytileccs.html" target=3D"_blank">SKIP</a> ([i9=
15#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_tiling@flip-change-tiling@dp-1-pipe-a-y-to-yf-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl6/igt@kms_flip_tiling@flip-change-ti=
ling@dp-1-pipe-a-y-to-yf-ccs.html" target=3D"_blank">DMESG-WARN</a> ([i915#=
1226])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk4/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.h=
tml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21826/shard-glk7/igt@kms_frontbuffer_tracking@fbc-=
modesetfrombusy.html" target=3D"_blank">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-suspend.html" tar=
get=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21826/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.=
html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-snb5/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-blt.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +42 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21826/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank">FA=
IL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#26=
5])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21826/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-co=
verage-7efc.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658=
])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-apl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#6=
58]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21826/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuatio=
n-suspend.html" target=3D"_blank">DMESG-WARN</a> ([i915#180] / [i915#295])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@kms_writeback@writeback-check-=
output.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl4/igt@perf@blocking.html" target=3D"_blank">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/=
shard-skl8/igt@perf@blocking.html" target=3D"_blank">FAIL</a> ([i915#1542])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21826/shard-kbl6/igt@sysfs_clients@create.html" tar=
get=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_read@short-buffer-wakeup:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@drm_read@short-buffer-wakeup.html" target=3D"=
_blank">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@drm_read@short-=
buffer-wakeup.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-4/igt@feature_discovery@psr2.html" target=3D"_blan=
k">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_109=
88/shard-rkl-2/igt@feature_discovery@psr2.html" target=3D"_blank">SKIP</a>)=
 ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21826/shard-rkl-6/igt@feature_discovery@psr2.html" target=3D"_blank"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html" tar=
get=3D"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21826/shard-iclb2/igt@gem_exec_fair@basic-no=
ne-share@rcs0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html" target=3D=
"_blank">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21826/shard-kbl4/igt@gem_exec_fair@basic-pace@vec=
s0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html" targe=
t=3D"_blank">FAIL</a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21826/shard-iclb8/igt@gem_exec_fair@basic-thro=
ttle@rcs0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@gem_exec_reloc@basic-scanout@vecs0.html" targ=
et=3D"_blank">SKIP</a> ([i915#3639]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@gem_exec_reloc@basic-sc=
anout@vecs0.html" target=3D"_blank">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-glk4/igt@gem_exec_whisper@basic-contexts-all.html" targ=
et=3D"_blank">DMESG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21826/shard-glk7/igt@gem_exec_whisper@ba=
sic-contexts-all.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html" target=3D"_=
blank">SKIP</a> ([i915#1850]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.ht=
ml" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html" tar=
get=3D"_blank">SKIP</a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@i915_pm_backlight@fade=
_with_suspend.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html" target=3D"_blan=
k">SKIP</a> ([fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21826/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html" tar=
get=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-4/igt@i915_pm_rpm@i2c.html" target=3D"_blank">SKIP=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10988/shar=
d-rkl-2/igt@i915_pm_rpm@i2c.html" target=3D"_blank">SKIP</a>) ([fdo#109308]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826=
/shard-rkl-6/igt@i915_pm_rpm@i2c.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp.html" target=3D"_bla=
nk">SKIP</a> ([i915#1397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21826/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html" ta=
rget=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-snb6/igt@i915_selftest@live@hangcheck.html" target=3D"_=
blank">INCOMPLETE</a> ([i915#3921]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21826/shard-snb5/igt@i915_selftest@live@hangch=
eck.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-eve=
nts.html" target=3D"_blank">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_async=
_flips@async-flip-with-page-flip-events.html" target=3D"_blank">PASS</a> +4=
1 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-green-to-red:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-2/igt@kms_color@pipe-a-ctm-green-to-red.html" targ=
et=3D"_blank">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-4/igt@kms_color@pipe-a-ctm-green-to-red.html" targe=
t=3D"_blank">SKIP</a>) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#409=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
26/shard-rkl-6/igt@kms_color@pipe-a-ctm-green-to-red.html" target=3D"_blank=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-legacy-gamma-reset:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@kms_color@pipe-b-legacy-gamma-reset.html" tar=
get=3D"_blank">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_colo=
r@pipe-b-legacy-gamma-reset.html" target=3D"_blank">PASS</a> +8 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen=
.html" target=3D"_blank">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/i=
gt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html" target=3D"_blank">PA=
SS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.=
html" target=3D"_blank">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_crc@pipe-a-cursor-256x85=
-sliding.html" target=3D"_blank">SKIP</a>) ([fdo#112022] / [i915#4070]) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shar=
d-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html" target=3D"_bl=
ank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge=
.html" target=3D"_blank">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-64x64-=
right-edge.html" target=3D"_blank">SKIP</a>) ([i915#1849] / [i915#4070] / [=
i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21826/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.htm=
l" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-l=
egacy.html" target=3D"_blank">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_cursor_legacy@basic-flip-=
before-cursor-legacy.html" target=3D"_blank">SKIP</a>) ([fdo#111825] / [i91=
5#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21826/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.h=
tml" target=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varyin=
g-size:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@kms_cursor_legacy@short-flip-before-cursor-at=
omic-transitions-varying-size.html" target=3D"_blank">SKIP</a> ([fdo#111825=
] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21826/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-=
atomic-transitions-varying-size.html" target=3D"_blank">PASS</a> +5 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-ytiled:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10988/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cp=
u-ytiled.html" target=3D"_blank">SKIP</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_10988/shard-rkl-4/igt@kms_draw_crc@draw-method-x=
rgb2101010-mmap-cpu-ytiled.html" target=3D"_blank">SKIP</a>) ([fdo#111314] =
/ [i915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21826/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu=
-ytiled.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-=
ytiled.html" target=3D"_blank">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-rkl-6/igt@kms_d=
raw_crc@draw-method-xrgb2101010-mmap-wc-ytiled.html" target=3D"_blank">PASS=
</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml" target=3D"_blank">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-kbl7/igt@kms_flip@fl=
ip-vs-suspend-interruptible@a-dp1.html" target=3D"_blank">PASS</a> +5 simil=
ar issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10988/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml" target=3D"_blank">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21826/shard-apl7/igt@kms_flip@fl=
ip-vs-suspend-interruptible@a-dp1.html" target=3D"_blank">PASS</a> +3 simil=
ar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10988/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html" target=3D"_blank">FAIL</a> ([i915#2122]) -&gt; <a href=3D"http=
s://intel" target=3D"_blank">PASS</a></li>
</ul>
</li>
</ul>

</div>

</blockquote></div></div>

--000000000000fe15eb05d306c7e6--
