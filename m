Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB0A4D9B5C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 13:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84CA10E48B;
	Tue, 15 Mar 2022 12:37:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2550F10E443
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 12:37:23 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id 1so14717778qke.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 05:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=obiUKSROv+EjjZ88t63YHBN5gS8FKQ3fOhDRu8AhgG0=;
 b=o05OVKQC7eA/iZPw83njohSZsxXyLzwOcPdAjkd13yauP6bT5Ys1Us217yMYlGyPDy
 JXkCe/nM26gjiIBiiXCYaXEk3w0GP2/XjYRfk7bYRbmtbh3BVEpyc/U66F0shE66q7vf
 Y//s9ODyR/8CDBOVYmJ0mHaw2pCZqPFtmzorpyDg+exnVYIwU0PCig0iA1iwhJxj85O/
 wu6ptwNEvw3tuipE/5SzuLOY64W1VzvktQpSSQHSlLuhnt3xQMSCSxncrzUeZtiDPAxe
 og9GOSBEmASkP5J6F/ngQ+wZKXEr1Y3Hq998c926mysGEFYu+9gNWVTvQRH9H1sNVNQH
 MYtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=obiUKSROv+EjjZ88t63YHBN5gS8FKQ3fOhDRu8AhgG0=;
 b=1bNM45JGjmDiTSEEEPAVf+BOCWPQCLpXKYI426+wLZjYY5OAdbqARguN4HH0c9qxeB
 Bqz1LaJ4x62mDmopQBHEqZJ9bofjy+m2s9iPUxIv3v4IdczR11sk+FaQzRK2wXUhQX3I
 LfTXmwLrbu4hDoQpqtGwB8Mr2TmoOJd1cwBsbvrug75OKR+NNMjNi3vEUl4HtBjDLNRh
 zYF426yXJ5jxEGVv4VE2uGKu9VHbDsYjmZbkIIbFLZWCUGLEEHGHtaIDV9WDIbhvw3S8
 1dxnaOeonosur43INkrY7RdTmcy8USEY12MuUfghN7md1BCCx18VN7M6D+KQi2ifPxvp
 D/5A==
X-Gm-Message-State: AOAM531RfsoncYmK8fM/096+ChUZvXJYSHh4qi8kFFAt6kramcNIyopP
 ELpI9Mrd93QO05O5Z3b9Xik+VqGrN9b16mV0asrada3lfzY=
X-Google-Smtp-Source: ABdhPJzACtk6u+VM2yGmmEWJK/nDcsiGN7CNFeCqae0JjRfkl1iAxv6+A2QNVqfKjoNHYLrR75TEIEmyk21DqgoWG8o=
X-Received: by 2002:a37:4cf:0:b0:67b:1821:f89a with SMTP id
 198-20020a3704cf000000b0067b1821f89amr17908463qke.7.1647347841809; Tue, 15
 Mar 2022 05:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220314112837.352931-1-matthew.auld@intel.com>
 <164727655275.20565.9510119570715695295@emeril.freedesktop.org>
In-Reply-To: <164727655275.20565.9510119570715695295@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 15 Mar 2022 12:36:55 +0000
Message-ID: <CAM0jSHN1o-EMtWwwVU0Nuo0gKafaVr2qS0sy0-SrTGzipSzC1A@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 lakshminarayana.vudum@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU29t?=
	=?utf-8?q?e_more_bits_for_small_BAR_enabling_=28rev4=29?=
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
Cc: Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 14 Mar 2022 at 16:49, Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> Patch Details
> Series:Some more bits for small BAR enabling (rev4)
> URL:https://patchwork.freedesktop.org/series/101052/
> State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22555/index.ht=
ml
>
> CI Bug Log - changes from CI_DRM_11358_full -> Patchwork_22555_full
>
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_22555_full absolutely need =
to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22555_full, please notify your bug team to allow =
them
> to document this new failure mode, which will reduce false positives in C=
I.
>
> Participating hosts (12 -> 12)
>
> No changes in participating hosts
>
> Possible new issues
>
> Here are the unknown changes that may have been introduced in Patchwork_2=
2555_full:
>
> IGT changes
>
> Possible regressions
>
> igt@kms_cursor_legacy@pipe-b-torture-bo:
>
> shard-glk: PASS -> INCOMPLETE

Fairly sure this is unrelated. Realistically this series should only
really change things for discrete.

>
> Known issues
>
> Here are the changes found in Patchwork_22555_full that come from known i=
ssues:
>
> CI changes
>
> Possible fixes
>
> boot:
>
> shard-glk: (PASS, PASS, PASS, PASS, PASS, PASS, FAIL, PASS, PASS, PASS, P=
ASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS=
, PASS, PASS) ([i915#4392]) -> (PASS, PASS, PASS, PASS, PASS, PASS, PASS, P=
ASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS=
, PASS, PASS, PASS, PASS, PASS)
>
> {shard-rkl}: (PASS, PASS, FAIL, PASS, PASS, PASS, PASS, PASS, PASS, PASS,=
 PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS) ([i915#5=
131]) -> (PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS,=
 PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS, PASS)
>
> IGT changes
>
> Issues hit
>
> igt@gem_ccs@block-copy-compressed:
>
> shard-tglb: NOTRUN -> SKIP ([i915#5325])
>
> shard-iclb: NOTRUN -> SKIP ([i915#5327])
>
> igt@gem_create@create-massive:
>
> shard-iclb: NOTRUN -> DMESG-WARN ([i915#4991]) +1 similar issue
>
> igt@gem_exec_balancer@parallel-contexts:
>
> shard-kbl: NOTRUN -> DMESG-WARN ([i915#5076])
>
> igt@gem_exec_fair@basic-none-share@rcs0:
>
> shard-iclb: PASS -> FAIL ([i915#2842])
>
> igt@gem_huc_copy@huc-copy:
>
> shard-tglb: PASS -> SKIP ([i915#2190])
>
> igt@gem_lmem_swapping@heavy-verify-multi:
>
> shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#4613])
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#4613])
>
> igt@gem_lmem_swapping@random-engines:
>
> shard-iclb: NOTRUN -> SKIP ([i915#4613]) +1 similar issue
>
> igt@gem_lmem_swapping@verify-random:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#4613]) +1 similar issue
>
> igt@gem_pxp@create-protected-buffer:
>
> shard-iclb: NOTRUN -> SKIP ([i915#4270]) +1 similar issue
>
> igt@gem_pxp@verify-pxp-stale-ctx-execution:
>
> shard-tglb: NOTRUN -> SKIP ([i915#4270])
>
> igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>
> shard-iclb: NOTRUN -> SKIP ([i915#768]) +2 similar issues
>
> igt@gem_userptr_blits@unsync-overlap:
>
> shard-iclb: NOTRUN -> SKIP ([i915#3297]) +1 similar issue
>
> igt@gen7_exec_parse@basic-offset:
>
> shard-tglb: NOTRUN -> SKIP ([fdo#109289])
>
> igt@gen7_exec_parse@chained-batch:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109289]) +3 similar issues
>
> igt@gen9_exec_parse@allowed-single:
>
> shard-skl: PASS -> DMESG-WARN ([i915#1436] / [i915#716])
>
> igt@gen9_exec_parse@batch-without-end:
>
> shard-iclb: NOTRUN -> SKIP ([i915#2856]) +1 similar issue
>
> igt@i915_pm_dc@dc6-psr:
>
> shard-iclb: PASS -> FAIL ([i915#454])
>
> igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#110892])
>
> igt@i915_suspend@fence-restore-untiled:
>
> shard-kbl: PASS -> DMESG-WARN ([i915#180])
>
> igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>
> shard-iclb: NOTRUN -> SKIP ([i915#3826])
>
> igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>
> shard-iclb: NOTRUN -> SKIP ([i915#5286]) +2 similar issues
>
> igt@kms_big_fb@4-tiled-8bpp-rotate-270:
>
> shard-tglb: NOTRUN -> SKIP ([i915#5286])
>
> igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#110725] / [fdo#111614]) +1 similar issue
>
> igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>
> shard-skl: NOTRUN -> FAIL ([i915#3743])
>
> igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#3777])
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3777])
>
> igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#3777])
>
> igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>
> shard-glk: PASS -> DMESG-WARN ([i915#118])
>
> igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#110723])
>
> igt@kms_ccs@pipe-a-crc-primary-basic-yf_tiled_ccs:
>
> shard-tglb: NOTRUN -> SKIP ([fdo#111615] / [i915#3689])
>
> igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>
> shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +1 similar issue
>
> igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +5 similar issues
>
> igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#3886])
>
> igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +3 similar issues
>
> igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [i915#3886]) +3 similar issues
>
> igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_rc_ccs:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271]) +87 similar issues
>
> igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_mc_ccs:
>
> shard-tglb: NOTRUN -> SKIP ([i915#3689])
>
> igt@kms_chamelium@dp-hpd-storm-disable:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +2 similar issues
>
> igt@kms_chamelium@hdmi-audio:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109284] / [fdo#111827]) +4 similar issue=
s
>
> igt@kms_chamelium@hdmi-crc-multiple:
>
> shard-kbl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827])
>
> igt@kms_chamelium@vga-hpd:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +11 similar issue=
s
>
> igt@kms_color@pipe-d-ctm-blue-to-red:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [i915#1149])
>
> igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>
> shard-apl: NOTRUN -> SKIP ([fdo#109271] / [fdo#111827]) +3 similar issues
>
> igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278] / [fdo#109284] / [fdo#111827])
>
> igt@kms_content_protection@dp-mst-type-1:
>
> shard-iclb: NOTRUN -> SKIP ([i915#3116])
>
> igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
>
> shard-tglb: NOTRUN -> SKIP ([i915#3359])
>
> igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
>
> shard-tglb: NOTRUN -> SKIP ([fdo#109279] / [i915#3359])
>
> igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271]) +45 similar issues
>
> igt@kms_cursor_edge_walk@pipe-d-256x256-left-edge:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109278]) +28 similar issues
>
> igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
>
> shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +20 similar issues
>
> igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>
> shard-glk: NOTRUN -> FAIL ([i915#72])
>
> igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109274] / [fdo#109278]) +1 similar issue
>
> igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>
> shard-skl: PASS -> FAIL ([i915#2346])
>
> igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>
> shard-skl: NOTRUN -> FAIL ([i915#2346] / [i915#533])
>
> igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>
> shard-snb: PASS -> SKIP ([fdo#109271]) +1 similar issue
>
> igt@kms_cursor_legacy@pipe-d-torture-bo:
>
> shard-glk: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>
> igt@kms_dp_tiled_display@basic-test-pattern:
>
> shard-iclb: NOTRUN -> SKIP ([i915#426])
>
> igt@kms_draw_crc@draw-method-xrgb2101010-render-4tiled:
>
> shard-iclb: NOTRUN -> SKIP ([i915#5287])
>
> igt@kms_dsc@basic-dsc-enable:
>
> shard-iclb: NOTRUN -> SKIP ([i915#3840])
>
> igt@kms_flip@2x-blocking-wf_vblank:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109274]) +4 similar issues
>
> igt@kms_flip@2x-flip-vs-fences-interruptible:
>
> shard-tglb: NOTRUN -> SKIP ([fdo#109274] / [fdo#111825]) +2 similar issue=
s
>
> igt@kms_flip@plain-flip-ts-check@a-edp1:
>
> shard-skl: PASS -> FAIL ([i915#2122])
>
> igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>
> shard-iclb: NOTRUN -> SKIP ([fdo#109280]) +23 similar issues
>
> igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
>
> shard-tglb: NOTRUN -> SKIP ([fdo#109280] / [fdo#111825]) +1 similar issue
>
> igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>
> shard-skl: NOTRUN -> FAIL ([i915#1188])
>
> igt@kms_hdr@static-toggle-suspend:
>
> shard-iclb: NOTRUN -> SKIP ([i915#3555])
>
> igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>
> shard-skl: NOTRUN -> SKIP ([fdo#109271] / [i915#533])
>
> igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>
> shard-skl: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>
> igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>
> shard-skl: NOTRUN -> FAIL ([i915#265])
>
> shard-apl: NOTRUN -> FAIL ([i915#265])
>
> igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>
> shard-glk: NOTRUN -> FAIL ([fdo#108145] / [i915#265])
>
> igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>
> shard-skl: [PASS][176] -> [FAIL][177] ([f
