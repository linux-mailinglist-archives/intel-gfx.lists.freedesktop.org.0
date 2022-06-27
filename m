Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8575455B96E
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 14:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BCAD112383;
	Mon, 27 Jun 2022 12:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AEE4112383
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 12:04:21 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id n10so3222632qkn.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 05:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gCxPaso8HcLOueFxSlKdpPyQS8PkJVWHqSuvbD5qamA=;
 b=nWguVsXVuQWlx0bL+ebLUFfw6KTYtb/ZJfWB2ihcJfU4sz7l4WjPE+GwNH1MsSu0o/
 1nzi/QGfZnLxK21GD8qEZrTHyxWoco+vxRwM9RQ/qQheb+fI5gnD+Uas7bYLRpSRdCt8
 NQ4wNE1kr/2QZiDDaTu7ONHCXnMe2ig4OcyG8FiZvKQ+aKNb+S4jTnwz7Ihq0UfjvIh4
 GjiuYxYUHUlSSD3KuPuU7MBIn8f0fHiRLSJGQyd4AcJDceN53fmKtm6MXJ+nfj3G/dqq
 HyH8043S+MSlMjpzTecSzE7+VbCqOdJNKooRXowzv3Juw0r02oXyOSkiJtUbBEW0g6Fo
 960A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gCxPaso8HcLOueFxSlKdpPyQS8PkJVWHqSuvbD5qamA=;
 b=TwnwHr7i88wQ4Js5ypZR8Ld1bBZRcpex5pqHiwcHDu/dNUPhfr/7XjqUcRzqHjIVDh
 +DAAynPsMpXk1imSWgQj54NW6PxGZdkdDCxLONLnm4+ZZruhOtSD8jYXkyRkgPPuDWT/
 q+HA8bX6bRoJvurzUNBGKhYOtK//XFbOpXe78DgciQdnzJ8nlB0AuObzIhqN3/znMtO3
 XdGMTznDf7aYXCmTkxzt1akkODgeJWvpvU/ARQTsQklpfSLT9gg6RhQgUsYTASdAl7mI
 RY0bBMI8JQUyE3A1IhP7pbQDSUUkITf+Ba410aarPBLhgUxuk53GRKxdEakZPh9Lf26J
 rapw==
X-Gm-Message-State: AJIora8YuWYeFWI8IXuKoaMaGP/VkGZqF7HWJaHr2317l+1HFCa2dtlo
 I4wt4Ef1uQSEj/1c4cF7Oj0TZBpb5upXLas8lHKN7hT8IQcJPA==
X-Google-Smtp-Source: AGRyM1snw7ST2YOjpAXhkjYqyYAUCAe94+JD5MAtJHWGAp6YCAcHo0n2qlhUA1ltETPeuGI3l5Q3OYOHAvK4FdwSag0=
X-Received: by 2002:ae9:f201:0:b0:6ae:d65e:92d7 with SMTP id
 m1-20020ae9f201000000b006aed65e92d7mr7356083qkg.519.1656331459517; Mon, 27
 Jun 2022 05:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220622155919.355081-1-matthew.auld@intel.com>
 <165633054960.11794.14647565731565927506@emeril.freedesktop.org>
In-Reply-To: <165633054960.11794.14647565731565927506@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 27 Jun 2022 13:03:52 +0100
Message-ID: <CAM0jSHNyAU6k3+UtwarShyMhTpig0cKtrbJMkXpEhFtvkPYgbg@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, 
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915=3A_tweak_the_ordering_in_cpu=5Fwrite=5Fneeds=5Fclf?=
	=?utf-8?q?lush?=
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

On Mon, 27 Jun 2022 at 12:49, Patchwork
<patchwork@emeril.freedesktop.org> wrote:
>
> Patch Details
> Series:drm/i915: tweak the ordering in cpu_write_needs_clflush
> URL:https://patchwork.freedesktop.org/series/105503/
> State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105503v1/index.html
>
> CI Bug Log - changes from CI_DRM_11795_full -> Patchwork_105503v1_full
>
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_105503v1_full absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_105503v1_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
>
> Participating hosts (13 -> 13)
>
> No changes in participating hosts
>
> Possible new issues
>
> Here are the unknown changes that may have been introduced in Patchwork_105503v1_full:
>
> IGT changes
>
> Possible regressions
>
> igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>
> shard-skl: NOTRUN -> FAIL +1 similar issue

For sure unrelated. Patch only impacts discrete.

>
> Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
> {igt@kms_cursor_crc@cursor-offscreen@pipe-d-hdmi-a-1-32x10}:
>
> {shard-dg1}: NOTRUN -> SKIP +15 similar issues
>
> igt@kms_cursor_crc@cursor-rapid-movement@pipe-b-edp-1-32x32:
>
> {shard-rkl}: NOTRUN -> SKIP +3 similar issues
>
> New tests
>
> New tests have been introduced between CI_DRM_11795_full and Patchwork_105503v1_full:
>
> New IGT tests (7)
>
> igt@kms_cursor_edge_walk@right-edge@pipe-a-hdmi-a-3-128x128:
>
> Statuses : 1 pass(s)
> Exec time: [3.23] s
>
> igt@kms_cursor_edge_walk@right-edge@pipe-a-hdmi-a-3-256x256:
>
> Statuses : 1 pass(s)
> Exec time: [3.23] s
>
> igt@kms_cursor_edge_walk@right-edge@pipe-a-hdmi-a-3-64x64:
>
> Statuses : 1 pass(s)
> Exec time: [3.30] s
>
> igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-hdmi-a-3:
>
> Statuses : 1 pass(s)
> Exec time: [0.56] s
>
> igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-hdmi-a-3:
>
> Statuses : 1 pass(s)
> Exec time: [0.46] s
>
> igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-c-hdmi-a-3:
>
> Statuses : 1 pass(s)
> Exec time: [0.46] s
>
> igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-hdmi-a-3:
>
> Statuses : 1 pass(s)
> Exec time: [0.46] s
>
> Known issues
>
> Here are the changes found in Patchwork_105503v1_full that come from known issues:
>
> IGT changes
>
> Issues hit
>
> igt@gem_ctx_persistence@hang:
>
> shard-skl: NOTRUN -> SKIP (fdo#109271) +230 similar issues
>
> igt@gem_exec_balancer@parallel-balancer:
>
> shard-iclb: PASS -> SKIP (i915#4525)
>
> igt@gem_exec_fair@basic-none-share@rcs0:
>
> shard-glk: PASS -> FAIL (i915#2842)
>
> igt@gem_exec_fair@basic-none@vcs1:
>
> shard-kbl: PASS -> FAIL (i915#2842) +2 similar issues
>
> igt@gem_exec_fair@basic-pace-solo@rcs0:
>
> shard-tglb: PASS -> FAIL (i915#2842)
>
> igt@gem_exec_suspend@basic-s3@smem:
>
> shard-skl: PASS -> INCOMPLETE (i915#4939)
>
> igt@gem_lmem_swapping@heavy-verify-multi:
>
> shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#4613)
>
> shard-tglb: NOTRUN -> SKIP (i915#4613)
>
> igt@gem_lmem_swapping@smem-oom:
>
> shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#4613) +2 similar issues
>
> igt@gem_lmem_swapping@verify-random:
>
> shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#4613)
>
> igt@gem_pread@exhaustion:
>
> shard-kbl: NOTRUN -> WARN (i915#2658)
>
> igt@gem_pxp@regular-baseline-src-copy-readible:
>
> shard-tglb: NOTRUN -> SKIP (i915#4270)
>
> igt@gem_softpin@evict-snoop-interruptible:
>
> shard-iclb: NOTRUN -> SKIP (fdo#109312)
>
> igt@gen7_exec_parse@chained-batch:
>
> shard-tglb: NOTRUN -> SKIP (fdo#109289)
>
> igt@gen9_exec_parse@allowed-all:
>
> shard-glk: PASS -> DMESG-WARN (i915#5566 / i915#716) +1 similar issue
>
> igt@gen9_exec_parse@allowed-single:
>
> shard-apl: PASS -> DMESG-WARN (i915#5566 / i915#716)
>
> igt@gen9_exec_parse@shadow-peek:
>
> shard-iclb: NOTRUN -> SKIP (i915#2856)
>
> igt@i915_module_load@reload-no-display:
>
> shard-tglb: PASS -> DMESG-WARN (i915#2867)
>
> igt@i915_query@query-topology-unsupported:
>
> shard-tglb: NOTRUN -> SKIP (fdo#109302)
>
> igt@i915_suspend@forcewake:
>
> shard-kbl: PASS -> DMESG-WARN (i915#180) +1 similar issue
>
> igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>
> shard-iclb: NOTRUN -> SKIP (i915#5286)
>
> igt@kms_big_fb@linear-32bpp-rotate-270:
>
> shard-tglb: NOTRUN -> SKIP (fdo#111614)
>
> igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>
> shard-skl: NOTRUN -> FAIL (i915#3743)
>
> igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>
> shard-skl: NOTRUN -> FAIL (i915#3763)
>
> igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>
> shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#3886) +10 similar issues
>
> shard-iclb: NOTRUN -> SKIP (fdo#109278 / i915#3886) +1 similar issue
>
> igt@kms_ccs@pipe-b-crc-primary-basic-4_tiled_dg2_rc_ccs_cc:
>
> shard-tglb: NOTRUN -> SKIP (i915#6095) +1 similar issue
>
> igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs_cc:
>
> shard-tglb: NOTRUN -> SKIP (i915#3689 / i915#6095)
>
> igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>
> shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#3886) +4 similar issues
>
> igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>
> shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#3886) +2 similar issues
>
> shard-tglb: NOTRUN -> SKIP (i915#3689 / i915#3886) +1 similar issue
>
> igt@kms_ccs@pipe-d-bad-pixel-format-y_tiled_gen12_mc_ccs:
>
> shard-apl: NOTRUN -> SKIP (fdo#109271) +48 similar issues
>
> shard-tglb: NOTRUN -> SKIP (i915#3689) +1 similar issue
>
> igt@kms_chamelium@hdmi-audio-edid:
>
> shard-tglb: NOTRUN -> SKIP (fdo#109284 / fdo#111827) +2 similar issues
>
> igt@kms_chamelium@hdmi-hpd-storm-disable:
>
> shard-skl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +15 similar issues
>
> igt@kms_color_chamelium@pipe-b-gamma:
>
> shard-apl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +2 similar issues
>
> igt@kms_color_chamelium@pipe-d-gamma:
>
> shard-kbl: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +6 similar issues
>
> igt@kms_cursor_legacy@cursorb-vs-flipa@varying-size:
>
> shard-tglb: NOTRUN -> SKIP (fdo#109274 / fdo#111825) +10 similar issues
>
> igt@kms_draw_crc@draw-method-xrgb8888-blt-4tiled:
>
> shard-iclb: NOTRUN -> SKIP (i915#5287)
>
> igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:
>
> shard-tglb: NOTRUN -> SKIP (i915#5287)
>
> igt@kms_fbcon_fbt@fbc-suspend:
>
> shard-apl: PASS -> FAIL (i915#4767)
>
> igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
> shard-apl: PASS -> DMESG-WARN (i915#180) +1 similar issue
>
> igt@kms_force_connector_basic@force-load-detect:
>
> shard-iclb: NOTRUN -> SKIP (fdo#109285)
>
> igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
>
> shard-iclb: NOTRUN -> SKIP (fdo#109280)
>
> igt@kms_frontbuffer_tracking@fbc-tiling-4:
>
> shard-tglb: NOTRUN -> SKIP (i915#5439)
>
> igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>
> shard-tglb: NOTRUN -> SKIP (fdo#109280 / fdo#111825) +7 similar issues
>
> igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>
> shard-kbl: NOTRUN -> SKIP (fdo#109271) +65 similar issues
>
> igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>
> shard-kbl: PASS -> FAIL (i915#1188)
>
> igt@kms_hdr@static-toggle:
>
> shard-tglb: NOTRUN -> SKIP (i915#3555)
>
> igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>
> shard-skl: NOTRUN -> FAIL (fdo#108145 / i915#265) +1 similar issue
>
> igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>
> shard-skl: PASS -> FAIL (fdo#108145 / i915#265)
>
> igt@kms_plane_multiple@atomic-pipe-a-tiling-yf:
>
> shard-tglb: NOTRUN -> SKIP (fdo#111615) +1 similar issue
>
> igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-b-edp-1:
>
> shard-iclb: NOTRUN -> SKIP (i915#5176) +2 similar issues
>
> igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>
> shard-iclb: PASS -> SKIP (i915#5176) +1 similar issue
>
> igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>
> shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#658)
>
> igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>
> shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#658)
>
> shard-tglb: NOTRUN -> SKIP (i915#2920)
>
> igt@kms_psr2_su@frontbuffer-xrgb8888:
>
> shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#658) +2 similar issues
>
> igt@kms_psr@psr2_sprite_plane_move:
>
> shard-iclb: PASS -> SKIP (fdo#109441) +5 similar issues
>
> igt@kms_vblank@pipe-d-ts-continuation-suspend:
>
> shard-iclb: NOTRUN -> SKIP (fdo#109278)
>
> igt@kms_vblank@pipe-d-wait-idle:
>
> shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#533)
>
> igt@kms_writeback@writeback-check-output:
>
> shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#2437)
>
> igt@kms_writeback@writeback-invalid-parameters:
>
> shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#2437)
>
> igt@prime_nv_pcopy@test3_4:
>
> shard-tglb: NOTRUN -> SKIP (fdo#109291)
>
> igt@prime_vgem@coherency-gtt:
>
> shard-iclb: NOTRUN -> SKIP (fdo#109292 / fdo#109295)
>
> igt@sw_sync@sync_multi_timeline_wait:
>
> shard-skl: NOTRUN -> FAIL (i915#6140)
>
> igt@sysfs_clients@create:
>
> shard-skl: NOTRUN -> SKIP (fdo#109271 / i915#2994)
>
> igt@sysfs_clients@sema-50:
>
> shard-apl: NOTRUN -> SKIP (fdo#109271 / i915#2994) +1 similar issue
>
> igt@sysfs_clients@split-25:
>
> shard-kbl: NOTRUN -> SKIP (fdo#109271 / i915#2994) +1 similar issue
>
> Possible fixes
>
> igt@drm_read@short-buffer-nonblock:
>
> {shard-rkl}: SKIP (i915#4098) -> PASS
>
> igt@fbdev@unaligned-read:
>
> {shard-rkl}: SKIP (i915#2582) -> PASS
>
> igt@gem_ctx_exec@basic-nohangcheck:
>
> shard-tglb: FAIL (i915#6268) -> PASS
>
> igt@gem_ctx_persistence@engines-hostile@vcs0:
>
> {shard-dg1}: FAIL (i915#4883) -> PASS +1 similar issue
>
> igt@gem_exec_balancer@parallel-keep-submit-fence:
>
> shard-iclb: SKIP (i915#4525) -> PASS +2 similar issues
>
> igt@gem_exec_fair@basic-none-share@rcs0:
>
> shard-iclb: FAIL (i915#2842) -> PASS
>
> igt@gem_exec_fair@basic-pace-share@rcs0:
>
> {shard-rkl}: FAIL (i915#2842) -> PASS
>
> igt@gem_exec_fair@basic-pace@bcs0:
>
> shard-tglb: FAIL (i915#2842) -> PASS +1 similar issue
>
> igt@gem_exec_fair@basic-pace@vecs0:
>
> shard-kbl: FAIL (i915#2842) -> PASS +1 similar issue
>
> igt@gem_exec_fence@basic-busy@bcs0:
>
> {shard-rkl}: SKIP (i915#6251) -> PASS
>
> igt@gem_exec_reloc@basic-gtt-cpu-active:
>
> {shard-rkl}: SKIP (i915#3281) -> PASS +2 similar issues
>
> igt@gem_exec_whisper@basic-fds:
>
> shard-glk: DMESG-WARN (i915#118) -> PASS
>
> igt@gem_partial_pwrite_pread@reads-uncached:
>
> {shard-rkl}: SKIP (i915#3282) -> PASS +5 similar issues
>
> igt@gen9_exec_parse@allowed-single:
>
> shard-skl: DMESG-WARN (i915#5566 / i915#716) -> PASS
>
> igt@gen9_exec_parse@shadow-peek:
>
> {shard-rkl}: SKIP (i915#2527) -> PASS
>
> igt@i915_pm_rpm@fences:
>
> {shard-rkl}: SKIP (i915#1849) -> PASS
>
> igt@i915_pm_rpm@modeset-lpsp:
>
> {shard-rkl}: SKIP (i915#1397) -> PASS
>
> igt@i915_pm_rps@waitboost:
>
> {shard-rkl}: FAIL (i915#4016) -> PASS +1 similar issue
>
> igt@i915_suspend@forcewake:
>
> shard-tglb: INCOMPLETE -> PASS
>
> igt@kms_color@pipe-a-legacy-gamma-reset:
>
> {shard-rkl}: SKIP (i915#1849 / i915#4070 / i915#4098) -> PASS +1 similar issue
>
> igt@kms_cursor_crc@cursor-suspend@pipe-c-edp-1:
>
> shard-skl: INCOMPLETE -> PASS
>
> igt@kms_dp_aux_dev:
>
> {shard-rkl}: SKIP (i915#1257) -> PASS
>
> igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-untiled:
>
> {shard-rkl}: SKIP (fdo#111314 / i915#4098 / i915#4369) -> PASS +2 similar issues
>
> igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>
> shard-kbl: DMESG-WARN (i915#180) -> PASS +4 similar issues
>
> igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>
> shard-iclb: SKIP (i915#3701) -> PASS
>
> igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>
> {shard-rkl}: SKIP (i915#1849 / i915#4098) -> PASS +22 similar issues
>
> igt@kms_plane@plane-position-covered@pipe-b-planes:
>
> {shard-rkl}: SKIP (i915#3558) -> PASS +1 similar issue
>
> igt@kms_plane@plane-position-hole@pipe-b-planes:
>
> {shard-rkl}: SKIP (i915#1849 / i915#3558) -> PASS +1 similar issue
>
> igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>
> shard-skl: FAIL (fdo#108145 / i915#265) -> PASS
>
> igt@kms_plane_cursor@pipe-b-viewport-size-64:
>
> shard-iclb: DMESG-WARN (i915#4391) -> PASS +1 similar issue
>
> igt@kms_psr@psr2_sprite_mmap_gtt:
>
> shard-iclb: SKIP (fdo#109441) -> PASS +2 similar issues
>
> igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>
> shard-iclb: SKIP (i915#5519) -> PASS
>
> igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>
> shard-skl: DMESG-WARN (i915#1982) -> PASS
>
> igt@kms_universal_plane@cursor-fb-leak-pipe-b:
>
> {shard-rkl}: SKIP (i915#1845 / i915#4070 / i915#4098) -> PASS
>
> igt@kms_vblank@pipe-a-wait-forked-busy-hang:
>
> {shard-rkl}: SKIP (i915#1845 / i915#4098) -> PASS +18 similar issues
>
> igt@kms_vblank@pipe-b-ts-continuation-suspend:
>
> shard-apl: DMESG-WARN (i915#180) -> PASS
>
> igt@perf@polling-small-buf:
>
> shard-skl: FAIL (i915#1722) -> PASS
>
> igt@prime_mmap_kms@buffer-sharing:
>
> {shard-dg1}: DMESG-WARN (i915#5266) -> PASS
>
> igt@prime_vgem@basic-fence-flip:
>
> {shard-rkl}: SKIP (fdo#109295 / i915#3708 / i915#4098) -> PASS
>
> igt@prime_vgem@coherency-gtt:
>
> {shard-rkl}: SKIP (fdo#109295 / fdo#111656 / i915#3708) -> PASS
>
> Warnings
>
> igt@gem_eio@unwedge-stress:
>
> shard-tglb: TIMEOUT (i915#3063) -> FAIL (i915#5784)
>
> igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>
> shard-iclb: SKIP (i915#2920) -> SKIP (i915#658) +1 similar issue
>
> igt@kms_psr2_sf@plane-move-sf-dmg-area:
>
> shard-iclb: SKIP (fdo#111068 / i915#658) -> SKIP (i915#2920)
>
> igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>
> shard-iclb: SKIP (i915#658) -> SKIP (i915#2920)
>
> igt@runner@aborted:
>
> shard-apl: (FAIL, FAIL, FAIL) (i915#3002 / i915#4312 / i915#5257) -> (FAIL, FAIL, FAIL, FAIL, FAIL) (fdo#109271 / i915#180 / i915#3002 / i915#4312 / i915#5257)
>
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
> Build changes
>
> Linux: CI_DRM_11795 -> Patchwork_105503v1
>
> CI-20190529: 20190529
> CI_DRM_11795: 5a84eaf663caab407f4baf1cd854f1ebd5980d61 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6541: 02153f109bd422d93cfce7f5aa9d7b0e22fab13c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_105503v1: 5a84eaf663caab407f4baf1cd854f1ebd5980d61 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
