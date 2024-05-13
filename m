Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 416A18C3DE7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 11:14:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4584F10E557;
	Mon, 13 May 2024 09:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8126B10E577;
 Mon, 13 May 2024 09:14:51 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1s6Rle-00000000wcx-1E6c; Mon, 13 May 2024 12:14:48 +0300
Message-ID: <1c6f5528a6c439f991ae58dd642ff39445ee248a.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Date: Mon, 13 May 2024 12:14:45 +0300
In-Reply-To: <171538936901.2075631.8317465263858312106@8e613ede5ea5>
References: <20240510090502.667556-1-luciano.coelho@intel.com>
 <171538936901.2075631.8317465263858312106@8e613ede5ea5>
Content-Type: multipart/alternative; boundary="=-GFErl+8YzTuSyL4972pq"
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_MESSAGE,TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=4.0.1-pre1
Subject: Re: =?UTF-8?Q?=E2=9C=97?= Fi.CI.IGT: failure for
 Documentation/i915: remove kernel-doc for DMC wakelocks
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

--=-GFErl+8YzTuSyL4972pq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

There is no way that the tests that are failing in the shards have
anything to do with the small documentation change that is in my patch.
=C2=A0Can you please re-report?

Thanks!

--
Cheers,
Luca.


On Sat, 2024-05-11 at 01:02 +0000, Patchwork wrote:
> Patch Details
> Series:Documentation/i915: remove kernel-doc for DMC wakelocks
> URL:https://patchwork.freedesktop.org/series/133435/
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html
> CI Bug Log - changes from CI_DRM_14746_full -> Patchwork_133435v1_fullSum=
maryFAILURE
> Serious unknown changes coming with Patchwork_133435v1_full
> absolutely need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_133435v1_full, please notify your bug team
> ('I915-ci-infra@lists.freedesktop.org') to allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (9 -> 9)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_133435v1_full:
> IGT changesPossible regressions * igt@gem_eio@in-flight-10ms:shard-dg1: N=
OTRUN -> INCOMPLETE
>  * igt@kms_flip@flip-vs-panning-vs-hang@c-hdmi-a1:shard-glk: NOTRUN ->
>    INCOMPLETE
> Known issuesHere are the changes found in Patchwork_133435v1_full that co=
me from
> known issues:
> IGT changesIssues hit * igt@debugfs_test@basic-hwmon:shard-rkl: NOTRUN ->=
 SKIP (i915#9318)
>  * igt@drm_fdinfo@busy-idle@vcs1:shard-dg1: NOTRUN -> SKIP (i915#8414)
>    +4 other tests skip
>  * igt@gem_bad_reloc@negative-reloc-bltcopy:shard-dg2: NOTRUN -> SKIP
>    (i915#3281) +1 other test skip
>  * igt@gem_ccs@block-multicopy-compressed:shard-rkl: NOTRUN -> SKIP
>    (i915#9323)
>  * igt@gem_ccs@suspend-resume:shard-dg1: NOTRUN -> SKIP (i915#9323) +1
>    other test skip
>  * igt@gem_ctx_persistence@heartbeat-close:shard-dg1: NOTRUN -> SKIP
>    (i915#8555)
>  * igt@gem_ctx_sseu@engines:shard-dg2: NOTRUN -> SKIP (i915#280)
>  * igt@gem_ctx_sseu@mmap-args:shard-tglu: NOTRUN -> SKIP (i915#280)
>  * igt@gem_exec_balancer@bonded-sync:shard-dg1: NOTRUN -> SKIP
>    (i915#4771)
>  * igt@gem_exec_balancer@parallel-bb-first:shard-rkl: NOTRUN -> SKIP
>    (i915#4525)
>  * igt@gem_exec_fair@basic-pace:shard-dg1: NOTRUN -> SKIP (i915#3539)
>  * igt@gem_exec_fair@basic-pace@rcs0:shard-rkl: PASS -> FAIL
>    (i915#2842) +2 other tests fail
>  * igt@gem_exec_fence@submit67:shard-dg2: NOTRUN -> SKIP (i915#4812)
>  * igt@gem_exec_flush@basic-batch-kernel-default-wb:shard-dg1: NOTRUN -
>    > SKIP (i915#3539 / i915#4852) +2 other tests skip
>  * igt@gem_exec_flush@basic-uc-pro-default:shard-dg2: NOTRUN -> SKIP
>    (i915#3539 / i915#4852)
>  * igt@gem_exec_reloc@basic-gtt-wc-active:shard-rkl: NOTRUN -> SKIP
>    (i915#3281) +6 other tests skip
>  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:shard-dg1: NOTRUN -> SKIP
>    (i915#3281) +3 other tests skip
>  * igt@gem_fence_thrash@bo-copy:shard-dg2: NOTRUN -> SKIP (i915#4860)
>    +1 other test skip
>  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:shard-mtlp: NOTRUN ->
>    SKIP (i915#4613)
>  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:shard-dg2: PASS
>    -> FAIL (i915#10378)
>  * igt@gem_lmem_swapping@heavy-verify-random@lmem0:shard-dg1: PASS ->
>    INCOMPLETE (i915#10317 / i915#1982)
>  * igt@gem_lmem_swapping@massive:shard-tglu: NOTRUN -> SKIP (i915#4613)
>  * igt@gem_lmem_swapping@parallel-multi:shard-rkl: NOTRUN -> SKIP
>    (i915#4613) +2 other tests skip
>  * igt@gem_lmem_swapping@random:shard-glk: NOTRUN -> SKIP (i915#4613)
>  * igt@gem_lmem_swapping@smem-oom@lmem0:shard-dg2: PASS -> TIMEOUT
>    (i915#5493)
>  * igt@gem_mmap_gtt@basic-small-copy-odd:shard-dg1: NOTRUN -> SKIP
>    (i915#4077) +5 other tests skip
>  * igt@gem_mmap_gtt@basic-write-read-distinct:shard-dg2: NOTRUN -> SKIP
>    (i915#4077) +1 other test skip
>  * igt@gem_mmap_wc@write-read:shard-dg1: NOTRUN -> SKIP (i915#4083) +4
>    other tests skip
>  * igt@gem_partial_pwrite_pread@writes-after-reads-display:shard-dg2:
>    NOTRUN -> SKIP (i915#3282) +2 other tests skip
>  * igt@gem_pxp@reject-modify-context-protection-off-3:shard-dg1: NOTRUN
>    -> SKIP (i915#4270) +2 other tests skip
>  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:shard-dg2:
>    NOTRUN -> SKIP (i915#4270)
>  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:shard-rkl: NOTRUN
>    -> SKIP (i915#4270) +2 other tests skip
>  * igt@gem_readwrite@read-bad-handle:shard-rkl: NOTRUN -> SKIP
>    (i915#3282) +4 other tests skip
>  * igt@gem_readwrite@write-bad-handle:shard-dg1: NOTRUN -> SKIP
>    (i915#3282)
>  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:shard-dg2:
>    NOTRUN -> SKIP (i915#5190 / i915#8428) +1 other test skip
>  * igt@gem_unfence_active_buffers:shard-dg1: NOTRUN -> SKIP (i915#4879)
>  * igt@gem_userptr_blits@dmabuf-unsync:shard-dg1: NOTRUN -> SKIP
>    (i915#3297)
>  * igt@gem_userptr_blits@readonly-pwrite-unsync:shard-dg2: NOTRUN ->
>    SKIP (i915#3297)
>  * igt@gem_userptr_blits@sd-probe:shard-dg2: NOTRUN -> SKIP (i915#3297
>    / i915#4958)
>  * igt@gem_userptr_blits@unsync-unmap:shard-rkl: NOTRUN -> SKIP
>    (i915#3297)
>  * igt@gen9_exec_parse@allowed-single:shard-glk: NOTRUN -> ABORT
>    (i915#5566)
>  * igt@gen9_exec_parse@bb-large:shard-dg2: NOTRUN -> SKIP (i915#2856)
>  * igt@gen9_exec_parse@bb-oversize:shard-rkl: NOTRUN -> SKIP
>    (i915#2527) +1 other test skip
>  * igt@gen9_exec_parse@bb-secure:shard-dg1: NOTRUN -> SKIP (i915#2527)
>    +2 other tests skip
>  * igt@i915_module_load@reload-with-fault-injection:shard-snb: PASS ->
>    INCOMPLETE (i915#9849)
>  * igt@i915_pm_freq_api@freq-suspend:shard-rkl: NOTRUN -> SKIP
>    (i915#8399) +1 other test skip
>  * igt@i915_pm_rps@reset:shard-snb: PASS -> INCOMPLETE (i915#7790)
>  * igt@i915_query@hwconfig_table:shard-dg1: NOTRUN -> SKIP
>    (i915#6245)shard-rkl: NOTRUN -> SKIP (i915#6245)
>  * igt@i915_query@test-query-geometry-subslices:shard-dg1: NOTRUN ->
>    SKIP (i915#5723)
>  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:shard-dg1:
>    NOTRUN -> SKIP (i915#4212)
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-
>    1-y-rc-ccs-cc:shard-rkl: NOTRUN -> SKIP (i915#8709) +3 other tests
>    skip
>  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:shard-rkl: NOTRUN
>    -> SKIP (i915#9531)shard-dg1: NOTRUN -> SKIP (i915#9531)
>  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-
>    internal-panels:shard-rkl: NOTRUN -> SKIP (i915#1769 / i915#3555)
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:shard-rkl:
>    NOTRUN -> SKIP (i915#5286) +4 other tests skipshard-dg1: NOTRUN ->
>    SKIP (i915#4538 / i915#5286) +1 other test skip
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:shard-
>    mtlp: PASS -> FAIL (i915#5138)
>  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:shard-rkl: NOTRUN -> SKIP
>    (i915#3638) +1 other test skipshard-dg1: NOTRUN -> SKIP (i915#3638)
>  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:shard-dg2: NOTRUN -> SKIP
>    (i915#4538 / i915#5190) +1 other test skip
>  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:shard-dg2: NOTRUN ->
>    SKIP (i915#5190)
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:shard-dg1:
>    NOTRUN -> SKIP (i915#4538) +2 other tests skip
>  * igt@kms_big_joiner@basic-force-joiner:shard-dg1: NOTRUN -> SKIP
>    (i915#10656)
>  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2:shard-dg2:
>    NOTRUN -> SKIP (i915#10307 / i915#6095) +128 other tests skip
>  * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:shard-rkl: NOTRUN ->
>    SKIP (i915#10278)shard-dg1: NOTRUN -> SKIP (i915#10278)
>  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:shard-tglu:
>    NOTRUN -> SKIP (i915#6095) +7 other tests skip
>  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-
>    hdmi-a-1:shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#10434 /
>    i915#6095) +2 other tests skip
>  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-
>    1:shard-mtlp: NOTRUN -> SKIP (i915#6095) +3 other tests skip
>  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-
>    2:shard-rkl: NOTRUN -> SKIP (i915#6095) +49 other tests skip
>  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-
>    3:shard-dg1: NOTRUN -> SKIP (i915#6095) +79 other tests skip
>  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-
>    2:shard-glk: NOTRUN -> SKIP +108 other tests skip
>  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:shard-dg2: NOTRUN ->
>    SKIP (i915#7213) +3 other tests skip
>  * igt@kms_chamelium_color@ctm-0-50:shard-dg1: NOTRUN -> SKIP +22 other
>    tests skip
>  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:shard-rkl:
>    NOTRUN -> SKIP (i915#7828) +7 other tests skip
>  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:shard-dg2: NOTRUN -
>    > SKIP (i915#7828) +1 other test skip
>  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:shard-dg1: NOTRUN ->
>    SKIP (i915#7828) +3 other tests skip
>  * igt@kms_content_protection@content-type-change:shard-dg2: NOTRUN ->
>    SKIP (i915#9424)
>  * igt@kms_content_protection@dp-mst-lic-type-1:shard-dg1: NOTRUN ->
>    SKIP (i915#3299)
>  * igt@kms_content_protection@dp-mst-type-0:shard-tglu: NOTRUN -> SKIP
>    (i915#3116 / i915#3299)
>  * igt@kms_content_protection@uevent:shard-rkl: NOTRUN -> SKIP
>    (i915#7118 / i915#9424)
>  * igt@kms_cursor_crc@cursor-onscreen-32x10:shard-dg2: NOTRUN -> SKIP
>    (i915#3555) +1 other test skip
>  * igt@kms_cursor_crc@cursor-onscreen-512x170:shard-rkl: NOTRUN -> SKIP
>    (i915#3359)
>  * igt@kms_cursor_crc@cursor-onscreen-512x512:shard-dg1: NOTRUN -> SKIP
>    (i915#3359)
>  * igt@kms_cursor_crc@cursor-onscreen-max-size:shard-tglu: NOTRUN ->
>    SKIP (i915#3555)
>  * igt@kms_cursor_crc@cursor-random-32x32:shard-dg1: NOTRUN -> SKIP
>    (i915#3555) +4 other tests skip
>  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:shard-rkl: NOTRUN ->
>    SKIP (i915#3555) +5 other tests skip
>  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:shard-dg2: NOTRUN -
>    > SKIP (i915#3359)
>  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:shard-dg2:
>    NOTRUN -> SKIP (i915#5354) +10 other tests skip
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-
>    size:shard-rkl: NOTRUN -> SKIP (i915#4103) +1 other test skip
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-
>    size:shard-glk: PASS -> FAIL (i915#2346)
>  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:shard-dg2: NOTRUN ->
>    SKIP (i915#9227)
>  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:shard-rkl: NOTRUN ->
>    SKIP (i915#9723)
>  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:shard-dg1: NOTRUN -> SKIP
>    (i915#9723) +1 other test skip
>  * igt@kms_dp_aux_dev:shard-rkl: NOTRUN -> SKIP (i915#1257)
>  * igt@kms_feature_discovery@chamelium:shard-rkl: NOTRUN -> SKIP
>    (i915#4854)shard-dg1: NOTRUN -> SKIP (i915#4854)
>  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:shard-mtlp: NOTRUN ->
>    SKIP (i915#3637)
>  * igt@kms_flip@2x-flip-vs-fences:shard-dg1: NOTRUN -> SKIP (i915#8381)
>  * igt@kms_flip@2x-flip-vs-panning-interruptible:shard-dg2: NOTRUN ->
>    SKIP +7 other tests skip
>  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:shard-snb:
>    PASS -> FAIL (i915#2122)
>  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:shard-dg1:
>    NOTRUN -> SKIP (i915#9934) +2 other tests skip
>  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:shard-snb: PASS
>    -> DMESG-WARN (i915#11039)
>  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>    upscaling@pipe-a-valid-mode:shard-dg1: NOTRUN -> SKIP (i915#2587 /
>    i915#2672) +2 other tests skip
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>    downscaling@pipe-a-valid-mode:shard-dg2: NOTRUN -> SKIP (i915#2672)
>    +1 other test skip
>  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>    upscaling@pipe-a-valid-mode:shard-rkl: NOTRUN -> SKIP (i915#2672) +2
>    other tests skip
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-
>    upscaling@pipe-a-valid-mode:shard-dg2: NOTRUN -> SKIP (i915#2672 /
>    i915#3555)
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-
>    gtt:shard-rkl: NOTRUN -> SKIP +38 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-
>    gtt:shard-dg2: NOTRUN -> SKIP (i915#8708) +6 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-
>    render:shard-tglu: NOTRUN -> SKIP +8 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-
>    wc:shard-mtlp: NOTRUN -> SKIP (i915#1825)
>  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:shard-dg1: NOTRUN ->
>    SKIP (i915#5439)
>  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-
>    blt:shard-dg1: NOTRUN -> SKIP (i915#3458) +7 other tests skip
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-
>    pwrite:shard-rkl: NOTRUN -> SKIP (i915#3023) +19 other tests skip
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-plflip-blt:shard-
>    rkl: NOTRUN -> SKIP (i915#1825) +27 other tests skip
>  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:shard-dg2:
>    NOTRUN -> SKIP (i915#3458) +4 other tests skip
>  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:shard-dg1:
>    NOTRUN -> SKIP (i915#8708) +6 other tests skip
>  * igt@kms_hdr@static-toggle:shard-dg2: NOTRUN -> SKIP (i915#3555 /
>    i915#8228)
>  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:shard-rkl: NOTRUN
>    -> SKIP (i915#4070 / i915#4816)
>  * igt@kms_panel_fitting@legacy:shard-dg1: NOTRUN -> SKIP (i915#6301)
>  * igt@kms_plane_multiple@tiling-yf:shard-dg2: NOTRUN -> SKIP
>    (i915#3555 / i915#8806)
>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:shard-rkl:
>    NOTRUN -> FAIL (i915#8292)
>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:shard-dg1:
>    NOTRUN -> FAIL (i915#8292)
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-
>    format@pipe-a-hdmi-a-2:shard-rkl: NOTRUN -> SKIP (i915#9423) +3
>    other tests skip
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-
>    format@pipe-c-hdmi-a-1:shard-dg2: NOTRUN -> SKIP (i915#9423) +7
>    other tests skip
>  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-
>    a-hdmi-a-4:shard-dg1: NOTRUN -> SKIP (i915#9423) +7 other tests skip
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-
>    rotation@pipe-b-hdmi-a-2:shard-rkl: NOTRUN -> SKIP (i915#5176 /
>    i915#9423) +1 other test skip
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-
>    scaling@pipe-c-hdmi-a-3:shard-dg1: NOTRUN -> SKIP (i915#5235) +3
>    other tests skip
>  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-
>    25@pipe-a-hdmi-a-2:shard-dg2: NOTRUN -> SKIP (i915#5235 / i915#9423)
>    +15 other tests skip
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-
>    25@pipe-b-hdmi-a-1:shard-rkl: NOTRUN -> SKIP (i915#5235) +3 other
>    tests skip
>  * igt@kms_pm_dc@dc3co-vpb-simulation:shard-rkl: NOTRUN -> SKIP
>    (i915#9685)shard-dg1: NOTRUN -> SKIP (i915#9685)
>  * igt@kms_pm_dc@dc6-dpms:shard-tglu: PASS -> FAIL (i915#9295)
>  * igt@kms_pm_lpsp@screens-disabled:shard-dg1: NOTRUN -> SKIP
>    (i915#8430)
>  * igt@kms_pm_rpm@modeset-lpsp-stress:shard-rkl: NOTRUN -> SKIP
>    (i915#9519)shard-dg1: NOTRUN -> SKIP (i915#9519)
>  * igt@kms_psr@fbc-psr-basic:shard-dg2: NOTRUN -> SKIP (i915#1072 /
>    i915#9732) +6 other tests skip
>  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:shard-dg1: NOTRUN -> SKIP
>    (i915#1072 / i915#9732) +11 other tests skip
>  * igt@kms_psr@pr-cursor-plane-onoff:shard-rkl: NOTRUN -> SKIP
>    (i915#1072 / i915#9732) +17 other tests skip
>  * igt@kms_rotation_crc@exhaust-fences:shard-dg2: NOTRUN -> SKIP
>    (i915#4235)
>  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:shard-rkl: NOTRUN
>    -> SKIP (i915#5289)
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:shard-tglu:
>    PASS -> FAIL (i915#9196) +1 other test fail
>  * igt@kms_writeback@writeback-fb-id-xrgb2101010:shard-rkl: NOTRUN ->
>    SKIP (i915#2437 / i915#9412)
>  * igt@perf@gen8-unprivileged-single-ctx-counters:shard-rkl: NOTRUN ->
>    SKIP (i915#2436)
>  * igt@prime_udl:shard-mtlp: NOTRUN -> SKIP
>  * igt@prime_vgem@basic-fence-mmap:shard-dg2: NOTRUN -> SKIP (i915#3708
>    / i915#4077)
>  * igt@prime_vgem@basic-write:shard-rkl: NOTRUN -> SKIP (i915#3291 /
>    i915#3708)shard-dg1: NOTRUN -> SKIP (i915#3708) +1 other test skip
>  * igt@prime_vgem@fence-write-hang:shard-rkl: NOTRUN -> SKIP
>    (i915#3708)
>  * igt@sriov_basic@bind-unbind-vf:shard-dg2: NOTRUN -> SKIP (i915#9917)
>  * igt@sriov_basic@enable-vfs-autoprobe-off:shard-tglu: NOTRUN -> SKIP
>    (i915#9917)
>  * igt@v3d/v3d_submit_cl@bad-pad:shard-dg1: NOTRUN -> SKIP (i915#2575)
>    +4 other tests skip
>  * igt@v3d/v3d_submit_csd@bad-flag:shard-mtlp: NOTRUN -> SKIP
>    (i915#2575)
>  * igt@v3d/v3d_wait_bo@unused-bo-0ns:shard-dg2: NOTRUN -> SKIP
>    (i915#2575) +3 other tests skip
>  * igt@vc4/vc4_mmap@mmap-bad-handle:shard-dg2: NOTRUN -> SKIP
>    (i915#7711)
>  * igt@vc4/vc4_purgeable_bo@free-purged-bo:shard-tglu: NOTRUN -> SKIP
>    (i915#2575) +2 other tests skip
>  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:shard-dg1: NOTRUN ->
>    SKIP (i915#7711) +3 other tests skip
>  * igt@vc4/vc4_tiling@get-bad-flags:shard-rkl: NOTRUN -> SKIP
>    (i915#7711) +6 other tests skip
> Possible fixes * igt@drm_fdinfo@most-busy-check-all@rcs0:shard-rkl: FAIL =
(i915#7742)
>    -> PASS
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:shard-tglu: FAIL (i915#2842)
>    -> PASS
>  * igt@gem_exec_fair@basic-pace@vecs0:shard-rkl: FAIL (i915#2842) ->
>    PASS
>  * igt@gem_exec_suspend@basic-s4-devices@smem:shard-tglu: ABORT
>    (i915#7975 / i915#8213) -> PASS
>  * igt@i915_module_load@reload-with-fault-injection:shard-glk:
>    INCOMPLETE (i915#1982 / i915#9849) -> PASSshard-dg2: INCOMPLETE
>    (i915#9820 / i915#9849) -> PASS
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:shard-
>    mtlp: DMESG-FAIL (i915#2017) -> PASS
>  * igt@kms_big_fb@x-tiled-8bpp-rotate-180:shard-rkl: INCOMPLETE
>    (i915#9538) -> PASS
>  * igt@kms_cursor_legacy@torture-bo@pipe-a:shard-dg2: DMESG-WARN
>    (i915#10166) -> PASS
>  * igt@kms_flip@flip-vs-panning-vs-hang@a-edp1:shard-mtlp: INCOMPLETE
>    (i915#6113) -> PASS
>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-
>    wc:shard-snb: SKIP -> PASS +2 other tests pass
>  * igt@kms_pm_rpm@dpms-non-lpsp:shard-dg2: SKIP (i915#9519) -> PASS
>  * igt@kms_pm_rpm@modeset-non-lpsp-stress:shard-rkl: SKIP (i915#9519) -
>    > PASS
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2:shard-rkl:
>    FAIL (i915#9196) -> PASS
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:shard-tglu:
>    FAIL (i915#9196) -> PASS
> Warnings * igt@api_intel_bb@render-ccs:shard-dg2: INCOMPLETE -> FAIL
>    (i915#10380)
>  * igt@gem_eio@kms:shard-dg2: INCOMPLETE (i915#10513 / i915#1982) ->
>    INCOMPLETE (i915#10513)
>  * igt@i915_module_load@reload-with-fault-injection:shard-tglu:
>    INCOMPLETE (i915#10047 / i915#10887 / i915#9820) -> INCOMPLETE
>    (i915#10047 / i915#9820)
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-
>    blt:shard-dg2: SKIP (i915#10433 / i915#3458) -> SKIP (i915#3458)
>  * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:shard-dg2: SKIP (i915#1072 /
>    i915#9673 / i915#9732) -> SKIP (i915#1072 / i915#9732) +5 other
>    tests skip
>  * igt@kms_psr@psr-cursor-mmap-cpu:shard-dg2: SKIP (i915#1072 /
>    i915#9732) -> SKIP (i915#1072 / i915#9673 / i915#9732) +5 other
>    tests skip
> Build changes * Linux: CI_DRM_14746 -> Patchwork_133435v1
> CI-20190529: 20190529
> CI_DRM_14746: 0c99ca6cc719cf585be5945a455b68b66313b427 @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7846: 4a5fd4e7cb2798636f6464e2bd61399f3242b322 @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_133435v1: 0c99ca6cc719cf585be5945a455b68b66313b427 @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit


--=-GFErl+8YzTuSyL4972pq
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>Hi,</div><div><br></div><div>There is no way that the tests that=
 are failing in the shards have anything to do with the small documentation=
 change that is in my patch. &nbsp;Can you please re-report?</div><div><br>=
</div><div>Thanks!</div><div><br></div><div>--</div><div>Cheers,</div><div>=
Luca.</div><div><br></div><div><br></div><div>On Sat, 2024-05-11 at 01:02 +=
0000, Patchwork wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0=
 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div><b>Patch Detail=
s</b></div><div><table><tbody><tr><td><b>Series:</b></td><td>Documentation/=
i915: remove kernel-doc for DMC wakelocks</td></tr><tr><td><b>URL:</b></td>=
<td><a href=3D"https://patchwork.freedesktop.org/series/133435/">https://pa=
tchwork.freedesktop.org/series/133435/</a></td></tr><tr><td><b>State:</b></=
td><td>failure</td></tr> <tr><td><b>Details:</b></td><td><a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html">https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/index.html</a></td></tr><=
/tbody></table> </div><h1>CI Bug Log - changes from CI_DRM_14746_full -&gt;=
 Patchwork_133435v1_full</h1><h2>Summary</h2><p><strong>FAILURE</strong></p=
><p>Serious unknown changes coming with Patchwork_133435v1_full absolutely =
need to be<br> verified manually.</p><p>If you think the reported changes h=
ave nothing to do with the changes<br> introduced in Patchwork_133435v1_ful=
l, please notify your bug team ('I915-ci-infra@lists.freedesktop.org') to a=
llow them<br> to document this new failure mode, which will reduce false po=
sitives in CI.</p><h2>Participating hosts (9 -&gt; 9)</h2><p>No changes in =
participating hosts</p><h2>Possible new issues</h2><p>Here are the unknown =
changes that may have been introduced in Patchwork_133435v1_full:</p><h3>IG=
T changes</h3><h4>Possible regressions</h4><ul><li><p>igt@gem_eio@in-flight=
-10ms:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-16/igt@gem_eio@in-flight-10=
ms.html">INCOMPLETE</a></li></ul></li><li><p>igt@kms_flip@flip-vs-panning-v=
s-hang@c-hdmi-a1:</p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-glk6/igt@kms_flip@fl=
ip-vs-panning-vs-hang@c-hdmi-a1.html">INCOMPLETE</a></li></ul></li></ul><h2=
>Known issues</h2><p>Here are the changes found in Patchwork_133435v1_full =
that come from known issues:</p><h3>IGT changes</h3><h4>Issues hit</h4><ul>=
<li><p>igt@debugfs_test@basic-hwmon:</p><ul><li>shard-rkl: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-r=
kl-1/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9318">i915#9318</a>)</li></ul></l=
i><li><p>igt@drm_fdinfo@busy-idle@vcs1:</p><ul><li>shard-dg1: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shar=
d-dg1-15/igt@drm_fdinfo@busy-idle@vcs1.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>) +4 othe=
r tests skip</li></ul></li><li><p>igt@gem_bad_reloc@negative-reloc-bltcopy:=
</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_133435v1/shard-dg2-3/igt@gem_bad_reloc@negative-relo=
c-bltcopy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li></ul></li><li=
><p>igt@gem_ccs@block-multicopy-compressed:</p><ul><li>shard-rkl: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/=
shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323=
</a>)</li></ul></li><li><p>igt@gem_ccs@suspend-resume:</p><ul><li>shard-dg1=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_133435v1/shard-dg1-15/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323=
</a>) +1 other test skip</li></ul></li><li><p>igt@gem_ctx_persistence@heart=
beat-close:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt@gem_ctx_persist=
ence@heartbeat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li></ul></li><li><p>igt@=
gem_ctx_sseu@engines:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-3/igt@gem_ct=
x_sseu@engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/280">i915#280</a>)</li></ul></li><li><p>igt@gem_ctx_=
sseu@mmap-args:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-tglu-7/igt@gem_ctx_ss=
eu@mmap-args.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/280">i915#280</a>)</li></ul></li><li><p>igt@gem_exec_b=
alancer@bonded-sync:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt@gem_ex=
ec_balancer@bonded-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li></ul></li><li><p>i=
gt@gem_exec_balancer@parallel-bb-first:</p><ul><li>shard-rkl: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shar=
d-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>=
)</li></ul></li><li><p>igt@gem_exec_fair@basic-pace:</p><ul><li>shard-dg1: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
133435v1/shard-dg1-15/igt@gem_exec_fair@basic-pace.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539=
</a>)</li></ul></li><li><p>igt@gem_exec_fair@basic-pace@rcs0:</p><ul><li>sh=
ard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/s=
hard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-3=
/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) +2 other te=
sts fail</li></ul></li><li><p>igt@gem_exec_fence@submit67:</p><ul><li>shard=
-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_133435v1/shard-dg2-3/igt@gem_exec_fence@submit67.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4=
812</a>)</li></ul></li><li><p>igt@gem_exec_flush@basic-batch-kernel-default=
-wb:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@gem_exec_flush@basic-b=
atch-kernel-default-wb.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +2 other =
tests skip</li></ul></li><li><p>igt@gem_exec_flush@basic-uc-pro-default:</p=
><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_133435v1/shard-dg2-7/igt@gem_exec_flush@basic-uc-pro-de=
fault.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li></ul></li><li><p>igt@g=
em_exec_reloc@basic-gtt-wc-active:</p><ul><li>shard-rkl: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl=
-3/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 o=
ther tests skip</li></ul></li><li><p>igt@gem_exec_reloc@basic-wc-gtt-norelo=
c:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_133435v1/shard-dg1-16/igt@gem_exec_reloc@basic-wc-=
gtt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li></ul></li>=
<li><p>igt@gem_fence_thrash@bo-copy:</p><ul><li>shard-dg2: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-d=
g2-3/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other tes=
t skip</li></ul></li><li><p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</=
p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_133435v1/shard-mtlp-6/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4613">i915#4613</a>)</li></ul></li><li><p>igt@gem_lme=
m_swapping@heavy-verify-random-ccs@lmem0:</p><ul><li>shard-dg2: <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-dg2-2/igt@gem_l=
mem_swapping@heavy-verify-random-ccs@lmem0.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-10/ig=
t@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#103=
78</a>)</li></ul></li><li><p>igt@gem_lmem_swapping@heavy-verify-random@lmem=
0:</p><ul><li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14746/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-random@lmem0=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_133435v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-random@lm=
em0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/10317">i915#10317</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li></ul></li><li><p=
>igt@gem_lmem_swapping@massive:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-tglu-=
7/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li></ul></li>=
<li><p>igt@gem_lmem_swapping@parallel-multi:</p><ul><li>shard-rkl: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1=
/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613=
</a>) +2 other tests skip</li></ul></li><li><p>igt@gem_lmem_swapping@random=
:</p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_133435v1/shard-glk7/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4613">i915#4613</a>)</li></ul></li><li><p>igt@gem_lmem_swapping@smem-=
oom@lmem0:</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14746/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_133435v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEO=
UT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
5493">i915#5493</a>)</li></ul></li><li><p>igt@gem_mmap_gtt@basic-small-copy=
-odd:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@gem_mmap_gtt@basic-sm=
all-copy-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li></ul></li=
><li><p>igt@gem_mmap_gtt@basic-write-read-distinct:</p><ul><li>shard-dg2: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
33435v1/shard-dg2-3/igt@gem_mmap_gtt@basic-write-read-distinct.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077=
">i915#4077</a>) +1 other test skip</li></ul></li><li><p>igt@gem_mmap_wc@wr=
ite-read:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt@gem_mmap_wc@write=
-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4083">i915#4083</a>) +4 other tests skip</li></ul></li><li><p=
>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p><ul><li>shard-=
dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_133435v1/shard-dg2-3/igt@gem_partial_pwrite_pread@writes-after-reads-d=
isplay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li></ul></li><li><=
p>igt@gem_pxp@reject-modify-context-protection-off-3:</p><ul><li>shard-dg1:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_133435v1/shard-dg1-14/igt@gem_pxp@reject-modify-context-protection-off-3.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4270">i915#4270</a>) +2 other tests skip</li></ul></li><li><p>igt@ge=
m_pxp@verify-pxp-execution-after-suspend-resume:</p><ul><li>shard-dg2: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1334=
35v1/shard-dg2-3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4270">i915#4270</a>)</li></ul></li><li><p>igt@gem_pxp@verify-pxp-stale-=
buf-optout-execution:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-5/igt@gem_px=
p@verify-pxp-stale-buf-optout-execution.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 oth=
er tests skip</li></ul></li><li><p>igt@gem_readwrite@read-bad-handle:</p><u=
l><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_133435v1/shard-rkl-1/igt@gem_readwrite@read-bad-handle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3282">i915#3282</a>) +4 other tests skip</li></ul></li><li><p>igt@gem_=
readwrite@write-bad-handle:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt=
@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li></ul></li>=
<li><p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:</p><ul><li>sh=
ard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_133435v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-=
yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>=
</ul></li><li><p>igt@gem_unfence_active_buffers:</p><ul><li>shard-dg1: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1334=
35v1/shard-dg1-15/igt@gem_unfence_active_buffers.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879">i915#4879</a=
>)</li></ul></li><li><p>igt@gem_userptr_blits@dmabuf-unsync:</p><ul><li>sha=
rd-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_133435v1/shard-dg1-15/igt@gem_userptr_blits@dmabuf-unsync.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
297">i915#3297</a>)</li></ul></li><li><p>igt@gem_userptr_blits@readonly-pwr=
ite-unsync:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-3/igt@gem_userptr_blit=
s@readonly-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li></ul></li><li><p>=
igt@gem_userptr_blits@sd-probe:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-3=
/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958">i915#4958</a>)<=
/li></ul></li><li><p>igt@gem_userptr_blits@unsync-unmap:</p><ul><li>shard-r=
kl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_133435v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i=
915#3297</a>)</li></ul></li><li><p>igt@gen9_exec_parse@allowed-single:</p><=
ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_133435v1/shard-glk5/igt@gen9_exec_parse@allowed-single.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5566">i915#5566</a>)</li></ul></li><li><p>igt@gen9_exec_parse@bb-lar=
ge:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_133435v1/shard-dg2-3/igt@gen9_exec_parse@bb-large=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2856">i915#2856</a>)</li></ul></li><li><p>igt@gen9_exec_parse@bb-o=
versize:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-5/igt@gen9_exec_parse@bb-=
oversize.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li></ul></li><li>=
<p>igt@gen9_exec_parse@bb-secure:</p><ul><li>shard-dg1: NOTRUN -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-=
15/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other test=
s skip</li></ul></li><li><p>igt@i915_module_load@reload-with-fault-injectio=
n:</p><ul><li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14746/shard-snb5/igt@i915_module_load@reload-with-fault-injection.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_133435v1/shard-snb4/igt@i915_module_load@reload-with-fault-injectio=
n.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9849">i915#9849</a>)</li></ul></li><li><p>igt@i915_pm_freq_=
api@freq-suspend:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@i915_pm_fr=
eq_api@freq-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8399">i915#8399</a>) +1 other test skip</li></u=
l></li><li><p>igt@i915_pm_rps@reset:</p><ul><li>shard-snb: <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-snb6/igt@i915_pm_rps=
@reset.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_133435v1/shard-snb7/igt@i915_pm_rps@reset.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790=
">i915#7790</a>)</li></ul></li><li><p>igt@i915_query@hwconfig_table:</p><ul=
><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_133435v1/shard-dg1-14/igt@i915_query@hwconfig_table.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6245">i915#6245</a>)</li><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@i915_quer=
y@hwconfig_table.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6245">i915#6245</a>)</li></ul></li><li><p>igt@i915=
_query@test-query-geometry-subslices:</p><ul><li>shard-dg1: NOTRUN -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-=
dg1-15/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723=
</a>)</li></ul></li><li><p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-leg=
acy:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_addfb_basic@addfb2=
5-x-tiled-mismatch-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li></ul></li><li><p=
>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-=
ccs-cc:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-5/igt@kms_async_flips@asyn=
c-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709">i915=
#8709</a>) +3 other tests skip</li></ul></li><li><p>igt@kms_atomic@plane-pr=
imary-overlay-mutable-zpos:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@=
kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)<=
/li><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_atomic@plane-primary-overl=
ay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9531">i915#9531</a>)</li></ul></li><li><p>igt@kms_a=
tomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p><=
ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_133435v1/shard-rkl-1/igt@kms_atomic_transition@plane-all-=
modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a>)</li></ul></li><li><p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-=
rotate-0:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@kms_big_fb@4-tiled=
-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests s=
kip</li><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other t=
est skip</li></ul></li><li><p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-ro=
tate-180-hflip:</p><ul><li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_14746/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-mtlp-7/igt@kms_big_fb@4-t=
iled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>=
</ul></li><li><p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p><ul><li>shard-=
rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_133435v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
638">i915#3638</a>) +1 other test skip</li><li>shard-dg1: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg=
1-14/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</=
li></ul></li><li><p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p><ul><li>shar=
d-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_133435v1/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5190">i915#5190</a>) +1 other test skip</li></ul></li><li><p>=
igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p><ul><li>shard-dg2: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1=
/shard-dg2-3/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915=
#5190</a>)</li></ul></li><li><p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp=
-rotate-0:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_big_fb@yf-ti=
led-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +2 other test=
s skip</li></ul></li><li><p>igt@kms_big_joiner@basic-force-joiner:</p><ul><=
li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_133435v1/shard-dg1-15/igt@kms_big_joiner@basic-force-joiner.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/10656">i915#10656</a>)</li></ul></li><li><p>igt@kms_ccs@bad-aux-stri=
de-yf-tiled-ccs@pipe-d-hdmi-a-2:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-2=
/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i91=
5#10307</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6095">i915#6095</a>) +128 other tests skip</li></ul></li><li><p>igt@k=
ms_ccs@bad-rotation-90-4-tiled-xe2-ccs:</p><ul><li>shard-rkl: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shar=
d-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278">i915#102=
78</a>)</li><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_ccs@bad-rotation-9=
0-4-tiled-xe2-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/10278">i915#10278</a>)</li></ul></li><li><p>igt@k=
ms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:</p><ul><li>shard-tglu:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_133435v1/shard-tglu-7/igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi=
-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6095">i915#6095</a>) +7 other tests skip</li></ul></li><li><p>=
igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</=
p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_133435v1/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-ba=
sic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i91=
5#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6095">i915#6095</a>) +2 other tests skip</li></ul></li><li><p>igt@kms=
_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:</p><ul><li>sh=
ard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_133435v1/shard-mtlp-6/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen1=
2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</=
li></ul></li><li><p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-h=
dmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-1/igt@kms_ccs@random-ccs-=
data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 ot=
her tests skip</li></ul></li><li><p>igt@kms_ccs@random-ccs-data-4-tiled-mtl=
-rc-ccs@pipe-b-hdmi-a-3:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-13/igt@km=
s_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +79 other tests skip</li></ul></li><li><p>igt@kms_ccs@random-ccs=
-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:</p><ul><li>shard-glk: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435=
v1/shard-glk7/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hd=
mi-a-2.html">SKIP</a> +108 other tests skip</li></ul></li><li><p>igt@kms_cd=
clk@mode-transition@pipe-d-hdmi-a-3:</p><ul><li>shard-dg2: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-d=
g2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213=
</a>) +3 other tests skip</li></ul></li><li><p>igt@kms_chamelium_color@ctm-=
0-50:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_chamelium_color@c=
tm-0-50.html">SKIP</a> +22 other tests skip</li></ul></li><li><p>igt@kms_ch=
amelium_edid@hdmi-edid-change-during-suspend:</p><ul><li>shard-rkl: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v=
1/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/7828">i915#7828</a>) +7 other tests skip</li></ul></li><li><p>igt@kms_cha=
melium_frames@hdmi-cmp-planar-formats:</p><ul><li>shard-dg2: NOTRUN -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard=
-dg2-3/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#=
7828</a>) +1 other test skip</li></ul></li><li><p>igt@kms_chamelium_hpd@vga=
-hpd-for-each-pipe:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_cha=
melium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other test=
s skip</li></ul></li><li><p>igt@kms_content_protection@content-type-change:=
</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_133435v1/shard-dg2-7/igt@kms_content_protection@cont=
ent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9424">i915#9424</a>)</li></ul></li><li><p>igt@kms_c=
ontent_protection@dp-mst-lic-type-1:</p><ul><li>shard-dg1: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-d=
g1-15/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299=
</a>)</li></ul></li><li><p>igt@kms_content_protection@dp-mst-type-0:</p><ul=
><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_133435v1/shard-tglu-7/igt@kms_content_protection@dp-mst-ty=
pe-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li></ul></li><li><p>igt@km=
s_content_protection@uevent:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-1/igt=
@kms_content_protection@uevent.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</=
li></ul></li><li><p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p><ul><li>sh=
ard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_133435v1/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-32x10.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a>) +1 other test skip</li></ul></li><li><p>igt@kms_cu=
rsor_crc@cursor-onscreen-512x170:</p><ul><li>shard-rkl: NOTRUN -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-=
5/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</=
li></ul></li><li><p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p><ul><li>=
shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_133435v1/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-512x512=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3359">i915#3359</a>)</li></ul></li><li><p>igt@kms_cursor_crc@curso=
r-onscreen-max-size:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-tglu-7/igt@kms_c=
ursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li></ul></=
li><li><p>igt@kms_cursor_crc@cursor-random-32x32:</p><ul><li>shard-dg1: NOT=
RUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133=
435v1/shard-dg1-14/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a>) +4 other tests skip</li></ul></li><li><p>igt@kms_cursor_crc@cur=
sor-rapid-movement-32x10:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-1/igt@km=
s_cursor_crc@cursor-rapid-movement-32x10.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +5 ot=
her tests skip</li></ul></li><li><p>igt@kms_cursor_crc@cursor-rapid-movemen=
t-512x170:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-3/igt@kms_cursor_crc@cu=
rsor-rapid-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li></ul></li><li>=
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p><ul><li>shard-dg=
2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_133435v1/shard-dg2-3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/5354">i915#5354</a>) +10 other tests skip</li></ul></li><li><p>igt=
@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p><ul><li>s=
hard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_133435v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before=
-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li></=
ul></li><li><p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-vary=
ing-size:</p><ul><li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_14746/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-glk1/igt@kms_cursor_legac=
y@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346">i915#2346</a=
>)</li></ul></li><li><p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p><u=
l><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_133435v1/shard-dg2-8/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-h=
dmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9227">i915#9227</a>)</li></ul></li><li><p>igt@kms_dirtyfb@f=
bc-dirtyfb-ioctl@a-hdmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-3/igt=
@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>=
</ul></li><li><p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p><ul><li>shard-dg1: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
33435v1/shard-dg1-15/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9=
723</a>) +1 other test skip</li></ul></li><li><p>igt@kms_dp_aux_dev:</p><ul=
><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_133435v1/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#=
1257</a>)</li></ul></li><li><p>igt@kms_feature_discovery@chamelium:</p><ul>=
<li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_133435v1/shard-rkl-6/igt@kms_feature_discovery@chamelium.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4854">i915#4854</a>)</li><li>shard-dg1: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_=
feature_discovery@chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li></ul></li><li>=
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p><ul><li>shard-mtlp: NOTRU=
N -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13343=
5v1/shard-mtlp-6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i=
915#3637</a>)</li></ul></li><li><p>igt@kms_flip@2x-flip-vs-fences:</p><ul><=
li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_133435v1/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8381">i915#8381</a>)</li></ul></li><li><p>igt@kms_flip@2x-flip-vs-panning-i=
nterruptible:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-7/igt@kms_flip@2x-fl=
ip-vs-panning-interruptible.html">SKIP</a> +7 other tests skip</li></ul></l=
i><li><p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1:</p><ul><li=
>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1474=
6/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_133435v1/shard-snb7/igt@kms_flip@2x-plain-flip-fb-recreate@ab-vga1-hdmi-a1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2122">i915#2122</a>)</li></ul></li><li><p>igt@kms_flip@2x-single-b=
uffer-flip-vs-dpms-off-vs-modeset:</p><ul><li>shard-dg1: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1=
-14/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934"=
>i915#9934</a>) +2 other tests skip</li></ul></li><li><p>igt@kms_flip@flip-=
vs-suspend-interruptible@b-hdmi-a1:</p><ul><li>shard-snb: <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-snb2/igt@kms_flip@fli=
p-vs-suspend-interruptible@b-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-snb2/igt@kms_fl=
ip@flip-vs-suspend-interruptible@b-hdmi-a1.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11039">i915#11039<=
/a>)</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling@pipe-a-valid-mode:</p><ul><li>shard-dg1: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/=
shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rccc=
s-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2=
 other tests skip</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-32bpp-y=
tile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:</p><ul><li>sha=
rd-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_133435v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32=
bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672=
</a>) +1 other test skip</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p><ul><li>shard-=
rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_133435v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a>) +2 other =
tests skip</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to=
-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:</p><ul><li>shard-dg2: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
33435v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile=
gen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>)</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fl=
iptrack-mmap-gtt:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-5/igt@kms_frontb=
uffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +38 other =
tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-2p-prim=
scrn-pri-indfb-draw-mmap-gtt:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-3/ig=
t@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8708">i915#8708</a>) +6 other tests skip</li></ul></li><li><p>igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:</p><ul><li>sha=
rd-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_133435v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-prims=
crn-spr-indfb-draw-render.html">SKIP</a> +8 other tests skip</li></ul></li>=
<li><p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-=
wc:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_133435v1/shard-mtlp-6/igt@kms_frontbuffer_tracki=
ng@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</=
li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p><ul><l=
i>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_133435v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-tili=
ng-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5439">i915#5439</a>)</li></ul></li><li><p>igt@kms_frontbuffer_=
tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p><ul><li>shard-dg1: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1=
/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-b=
lt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3458">i915#3458</a>) +7 other tests skip</li></ul></li><li><p>ig=
t@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p><ul><l=
i>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_133435v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-prims=
crn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +19 other tests skip=
</li></ul></li><li><p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-pl=
flip-blt:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-1/igt@kms_frontbuffer_tr=
acking@psr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +27 ot=
her tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@psr-rgb565=
-draw-mmap-cpu:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-7/igt@kms_frontbuf=
fer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other=
 tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@psr-rgb565-dr=
aw-mmap-wc:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt@kms_frontbuffer=
_tracking@psr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +6 other tes=
ts skip</li></ul></li><li><p>igt@kms_hdr@static-toggle:</p><ul><li>shard-dg=
2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_133435v1/shard-dg2-2/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
228">i915#8228</a>)</li></ul></li><li><p>igt@kms_multipipe_modeset@basic-ma=
x-pipe-crc-check:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-1/igt@kms_multip=
ipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816=
</a>)</li></ul></li><li><p>igt@kms_panel_fitting@legacy:</p><ul><li>shard-d=
g1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_133435v1/shard-dg1-15/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6=
301</a>)</li></ul></li><li><p>igt@kms_plane_multiple@tiling-yf:</p><ul><li>=
shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_133435v1/shard-dg2-3/igt@kms_plane_multiple@tiling-yf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8806">i915#8806</a>)</li></ul></li><li><p>igt@kms_plane_scaling=
@intel-max-src-size@pipe-a-hdmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-r=
kl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292"=
>i915#8292</a>)</li></ul></li><li><p>igt@kms_plane_scaling@intel-max-src-si=
ze@pipe-a-hdmi-a-4:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt@kms_pla=
ne_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)<=
/li></ul></li><li><p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with=
-pixel-format@pipe-a-hdmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-3=
/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a=
-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9423">i915#9423</a>) +3 other tests skip</li></ul></li><l=
i><p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pi=
pe-c-hdmi-a-1:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-8/igt@kms_plane_sca=
ling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9423">i915#9423</a>) +7 other tests skip</li></ul></li><li><p>igt@kms_plane=
_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:</p><ul><=
li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_133435v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-f=
actor-0-5-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +7 oth=
er tests skip</li></ul></li><li><p>igt@kms_plane_scaling@plane-scaler-with-=
clipping-clamping-rotation@pipe-b-hdmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/=
shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotat=
ion@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5176">i915#5176</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +1 other tes=
t skip</li></ul></li><li><p>igt@kms_plane_scaling@planes-downscale-factor-0=
-25-unity-scaling@pipe-c-hdmi-a-3:</p><ul><li>shard-dg1: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1=
-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c=
-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5235">i915#5235</a>) +3 other tests skip</li></ul></li><l=
i><p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-=
a-hdmi-a-2:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-2/igt@kms_plane_scalin=
g@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">=
i915#5235</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9423">i915#9423</a>) +15 other tests skip</li></ul></li><li><p>igt@=
kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-=
1:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_133435v1/shard-rkl-5/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235=
</a>) +3 other tests skip</li></ul></li><li><p>igt@kms_pm_dc@dc3co-vpb-simu=
lation:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@kms_pm_dc@dc3co-vpb-=
simulation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9685">i915#9685</a>)</li><li>shard-dg1: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-d=
g1-14/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li><=
/ul></li><li><p>igt@kms_pm_dc@dc6-dpms:</p><ul><li>shard-tglu: <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-tglu-4/igt@kms_p=
m_dc@dc6-dpms.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_133435v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9295">i915#9295</a>)</li></ul></li><li><p>igt@kms_pm_lpsp@screens-disabled:=
</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8430">i915#8430</a>)</li></ul></li><li><p>igt@kms_pm_rpm@modeset=
-lpsp-stress:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@kms_pm_rpm@mod=
eset-lpsp-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9519">i915#9519</a>)</li><li>shard-dg1: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/s=
hard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)=
</li></ul></li><li><p>igt@kms_psr@fbc-psr-basic:</p><ul><li>shard-dg2: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1334=
35v1/shard-dg2-3/igt@kms_psr@fbc-psr-basic.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915=
#9732</a>) +6 other tests skip</li></ul></li><li><p>igt@kms_psr@fbc-psr2-sp=
rite-mmap-gtt:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@kms_psr@fbc-=
psr2-sprite-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other t=
ests skip</li></ul></li><li><p>igt@kms_psr@pr-cursor-plane-onoff:</p><ul><l=
i>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_133435v1/shard-rkl-5/igt@kms_psr@pr-cursor-plane-onoff.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9732">i915#9732</a>) +17 other tests skip</li></ul></li><li>=
<p>igt@kms_rotation_crc@exhaust-fences:</p><ul><li>shard-dg2: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shar=
d-dg2-7/igt@kms_rotation_crc@exhaust-fences.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i915#4235</a>)</l=
i></ul></li><li><p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p><=
ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_133435v1/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled=
-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5289">i915#5289</a>)</li></ul></li><li><p>igt@kms_un=
iversal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p><ul><li>shard-tglu: <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-tglu-9/igt=
@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-=
tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196"=
>i915#9196</a>) +1 other test fail</li></ul></li><li><p>igt@kms_writeback@w=
riteback-fb-id-xrgb2101010:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-1/igt@=
kms_writeback@writeback-fb-id-xrgb2101010.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#=
9412</a>)</li></ul></li><li><p>igt@perf@gen8-unprivileged-single-ctx-counte=
rs:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_133435v1/shard-rkl-5/igt@perf@gen8-unprivileged-s=
ingle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li></ul></li><li><p>igt@pr=
ime_udl:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_133435v1/shard-mtlp-6/igt@prime_udl.html">S=
KIP</a></li></ul></li><li><p>igt@prime_vgem@basic-fence-mmap:</p><ul><li>sh=
ard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_133435v1/shard-dg2-3/igt@prime_vgem@basic-fence-mmap.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"=
>i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4077">i915#4077</a>)</li></ul></li><li><p>igt@prime_vgem@basic-wri=
te:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@prime_vgem@basic-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3708">i915#3708</a>)</li><li>shard-dg1: NOTRUN -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard=
-dg1-14/igt@prime_vgem@basic-write.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other te=
st skip</li></ul></li><li><p>igt@prime_vgem@fence-write-hang:</p><ul><li>sh=
ard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_133435v1/shard-rkl-3/igt@prime_vgem@fence-write-hang.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"=
>i915#3708</a>)</li></ul></li><li><p>igt@sriov_basic@bind-unbind-vf:</p><ul=
><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_133435v1/shard-dg2-3/igt@sriov_basic@bind-unbind-vf.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9917">i915#9917</a>)</li></ul></li><li><p>igt@sriov_basic@enable-vfs-autop=
robe-off:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-tglu-7/igt@sriov_basic@enab=
le-vfs-autoprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li></ul></li><li><p>igt@=
v3d/v3d_submit_cl@bad-pad:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-15/igt@=
v3d/v3d_submit_cl@bad-pad.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +4 other tests skip<=
/li></ul></li><li><p>igt@v3d/v3d_submit_csd@bad-flag:</p><ul><li>shard-mtlp=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_133435v1/shard-mtlp-6/igt@v3d/v3d_submit_csd@bad-flag.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#=
2575</a>)</li></ul></li><li><p>igt@v3d/v3d_wait_bo@unused-bo-0ns:</p><ul><l=
i>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_133435v1/shard-dg2-3/igt@v3d/v3d_wait_bo@unused-bo-0ns.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2575">i915#2575</a>) +3 other tests skip</li></ul></li><li><p>igt@vc4/vc4_=
mmap@mmap-bad-handle:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-3/igt@vc4/vc=
4_mmap@mmap-bad-handle.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7711">i915#7711</a>)</li></ul></li><li><p>ig=
t@vc4/vc4_purgeable_bo@free-purged-bo:</p><ul><li>shard-tglu: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shar=
d-tglu-7/igt@vc4/vc4_purgeable_bo@free-purged-bo.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a=
>) +2 other tests skip</li></ul></li><li><p>igt@vc4/vc4_purgeable_bo@mark-u=
npurgeable-twice:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg1-14/igt@vc4/vc4_p=
urgeable_bo@mark-unpurgeable-twice.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/7711">i915#7711</a>) +3 other te=
sts skip</li></ul></li><li><p>igt@vc4/vc4_tiling@get-bad-flags:</p><ul><li>=
shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_133435v1/shard-rkl-3/igt@vc4/vc4_tiling@get-bad-flags.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/77=
11">i915#7711</a>) +6 other tests skip</li></ul></li></ul><h4>Possible fixe=
s</h4><ul><li><p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p><ul><li>shard-=
rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard=
-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742">i915#7742</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435=
v1/shard-rkl-5/igt@drm_fdinfo@most-busy-check-all@rcs0.html">PASS</a></li><=
/ul></li><li><p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p><ul><li>shard-tg=
lu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-=
tglu-9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v=
1/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li><=
/ul></li><li><p>igt@gem_exec_fair@basic-pace@vecs0:</p><ul><li>shard-rkl: <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-rkl-1=
/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rk=
l-3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li></ul></li><li><p>=
igt@gem_exec_suspend@basic-s4-devices@smem:</p><ul><li>shard-tglu: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-tglu-10/igt=
@gem_exec_suspend@basic-s4-devices@smem.html">ABORT</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8=
213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_133435v1/shard-tglu-7/igt@gem_exec_suspend@basic-s4-devices@smem.html">PA=
SS</a></li></ul></li><li><p>igt@i915_module_load@reload-with-fault-injectio=
n:</p><ul><li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14746/shard-glk7/igt@i915_module_load@reload-with-fault-injection.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9849">i915#9849</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-glk5/igt@i915_modu=
le_load@reload-with-fault-injection.html">PASS</a></li><li>shard-dg2: <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-dg2-2/igt=
@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
849">i915#9849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_133435v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-in=
jection.html">PASS</a></li></ul></li><li><p>igt@kms_big_fb@4-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip:</p><ul><li>shard-mtlp: <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-mtlp-8/igt@kms_big_fb@4-tile=
d-max-hw-stride-64bpp-rotate-0-hflip.html">DMESG-FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2017">i915#2017</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/s=
hard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html"=
>PASS</a></li></ul></li><li><p>igt@kms_big_fb@x-tiled-8bpp-rotate-180:</p><=
ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14746/shard-rkl-2/igt@kms_big_fb@x-tiled-8bpp-rotate-180.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/95=
38">i915#9538</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_133435v1/shard-rkl-3/igt@kms_big_fb@x-tiled-8bpp-rotate-180.htm=
l">PASS</a></li></ul></li><li><p>igt@kms_cursor_legacy@torture-bo@pipe-a:</=
p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_14746/shard-dg2-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/10166">i915#10166</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_133435v1/shard-dg2-7/igt@kms_cursor_legacy@torture-bo@pip=
e-a.html">PASS</a></li></ul></li><li><p>igt@kms_flip@flip-vs-panning-vs-han=
g@a-edp1:</p><ul><li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14746/shard-mtlp-8/igt@kms_flip@flip-vs-panning-vs-hang@a-=
edp1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-mtlp-6/igt@kms_flip@flip-vs=
-panning-vs-hang@a-edp1.html">PASS</a></li></ul></li><li><p>igt@kms_frontbu=
ffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p><ul><li>shard-snb:=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-snb=
6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html"=
>SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_133435v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-ind=
fb-draw-mmap-wc.html">PASS</a> +2 other tests pass</li></ul></li><li><p>igt=
@kms_pm_rpm@dpms-non-lpsp:</p><ul><li>shard-dg2: <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-dg2-10/igt@kms_pm_rpm@dpms-non=
-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9519">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lp=
sp.html">PASS</a></li></ul></li><li><p>igt@kms_pm_rpm@modeset-non-lpsp-stre=
ss:</p><ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_14746/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9519">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_133435v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.h=
tml">PASS</a></li></ul></li><li><p>igt@kms_universal_plane@cursor-fb-leak@p=
ipe-a-hdmi-a-2:</p><ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14746/shard-rkl-3/igt@kms_universal_plane@cursor-fb-l=
eak@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9196">i915#9196</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-rkl-6/igt@kms_univ=
ersal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html">PASS</a></li></ul></li><li=
><p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p><ul><li>shar=
d-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/sh=
ard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_133435v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@p=
ipe-d-hdmi-a-1.html">PASS</a></li></ul></li></ul><h4>Warnings</h4><ul><li><=
p>igt@api_intel_bb@render-ccs:</p><ul><li>shard-dg2: <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-dg2-4/igt@api_intel_bb@ren=
der-ccs.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_133435v1/shard-dg2-8/igt@api_intel_bb@render-ccs.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/10380">i915#10380</a>)</li></ul></li><li><p>igt@gem_eio@kms:</p><ul><li=
>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1474=
6/shard-dg2-4/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/10513">i915#10513</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
33435v1/shard-dg2-8/igt@gem_eio@kms.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513">i915#10513</a>)</l=
i></ul></li><li><p>igt@i915_module_load@reload-with-fault-injection:</p><ul=
><li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_14746/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/10047">i915#10047</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10887">i915#10887</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-tglu-=
10/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047">i9=
15#10047</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9820">i915#9820</a>)</li></ul></li><li><p>igt@kms_frontbuffer_tracki=
ng@fbcpsr-1p-primscrn-shrfb-plflip-blt:</p><ul><li>shard-dg2: <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-dg2-4/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#1=
0433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_133435v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1=
p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li></ul></li><li>=
<p>igt@kms_psr@fbc-psr2-sprite-mmap-cpu:</p><ul><li>shard-dg2: <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-dg2-11/igt@kms_p=
sr@fbc-psr2-sprite-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#=
9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_133435v1/shard-dg2-2/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9732">i915#9732</a>) +5 other tests skip</li></ul></li><li><p>igt@k=
ms_psr@psr-cursor-mmap-cpu:</p><ul><li>shard-dg2: <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_14746/shard-dg2-6/igt@kms_psr@psr-cursor-=
mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133435v1/shard-dg2-11/igt@kms_=
psr@psr-cursor-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732=
</a>) +5 other tests skip</li></ul></li></ul><h2>Build changes</h2><ul><li>=
Linux: CI_DRM_14746 -&gt; Patchwork_133435v1</li></ul><p>CI-20190529: 20190=
529<br> CI_DRM_14746: 0c99ca6cc719cf585be5945a455b68b66313b427 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br> IGT_7846: 4a5fd4e7cb2798636f6464e2bd61=
399f3242b322 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br> Pat=
chwork_133435v1: 0c99ca6cc719cf585be5945a455b68b66313b427 @ git://anongit.f=
reedesktop.org/gfx-ci/linux<br> piglit_4509: fdc5a4ca11124ab8413c7988896eec=
4c97336694 @ git://anongit.freedesktop.org/piglit</p></blockquote><div><br>=
</div><div><span></span></div></body></html>

--=-GFErl+8YzTuSyL4972pq--
