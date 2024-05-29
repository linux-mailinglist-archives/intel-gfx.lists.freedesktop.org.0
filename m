Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFDE8D35C4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 13:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF7110E592;
	Wed, 29 May 2024 11:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B87211391B;
 Wed, 29 May 2024 11:47:54 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1sCHmX-00000001H2X-3pNf; Wed, 29 May 2024 14:47:52 +0300
Message-ID: <5372a425af11e882006347959d0d4006431f038c.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Date: Wed, 29 May 2024 14:47:49 +0300
In-Reply-To: <171695333118.2232184.3642898360822181817@8e613ede5ea5>
References: <20240528112901.476068-1-luciano.coelho@intel.com>
 <171695333118.2232184.3642898360822181817@8e613ede5ea5>
Content-Type: multipart/alternative; boundary="=-lLjnWggKBZt9Q1dzvW2K"
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_MESSAGE,TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
 autolearn=ham autolearn_force=no version=4.0.1-pre1
Subject: Re: =?UTF-8?Q?=E2=9C=97?= Fi.CI.IGT: failure for drm/i915: prevent
 some static analyzer warnings
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

--=-lLjnWggKBZt9Q1dzvW2K
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

All these 3 new issues are false positives and not related to this
patchset.

Can you please re-report it?

--
Cheers,
Luca.


On Wed, 2024-05-29 at 03:28 +0000, Patchwork wrote:
> Patch Details
> Series:drm/i915: prevent some static analyzer warnings
> URL:https://patchwork.freedesktop.org/series/134124/
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/index.html
> CI Bug Log - changes from CI_DRM_14831_full -> Patchwork_134124v1_fullSum=
maryFAILURE
> Serious unknown changes coming with Patchwork_134124v1_full
> absolutely need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_134124v1_full, please notify your bug team
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (9 -> 9)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_134124v1_full:
> IGT changesPossible regressions * igt@device_reset@cold-reset-bound:shard=
-dg2: NOTRUN -> SKIP
>  * igt@gem_spin_batch@legacy@blt:shard-snb: PASS -> ABORT
>  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-
>    blt:shard-dg1: PASS -> INCOMPLETE
> Known issuesHere are the changes found in Patchwork_134124v1_full that co=
me from
> known issues:
> IGT changesIssues hit * igt@drm_fdinfo@all-busy-idle-check-all:shard-dg1:=
 NOTRUN -> SKIP
>    (i915#8414)
>  * igt@drm_fdinfo@most-busy-check-all@bcs0:shard-dg2: NOTRUN -> SKIP
>    (i915#8414) +28 other tests skip
>  * igt@drm_fdinfo@virtual-busy-idle-all:shard-mtlp: NOTRUN -> SKIP
>    (i915#8414)
>  * igt@gem_ccs@block-copy-compressed:shard-rkl: NOTRUN -> SKIP
>    (i915#3555 / i915#9323)
>  * igt@gem_ccs@block-multicopy-compressed:shard-rkl: NOTRUN -> SKIP
>    (i915#9323)shard-mtlp: NOTRUN -> SKIP (i915#9323)
>  * igt@gem_ccs@ctrl-surf-copy-new-ctx:shard-dg1: NOTRUN -> SKIP
>    (i915#9323)
>  * igt@gem_create@create-ext-cpu-access-big:shard-mtlp: NOTRUN -> SKIP
>    (i915#6335)shard-rkl: NOTRUN -> SKIP (i915#6335)
>  * igt@gem_ctx_sseu@invalid-sseu:shard-dg1: NOTRUN -> SKIP (i915#280)
>  * igt@gem_exec_balancer@bonded-dual:shard-dg2: NOTRUN -> SKIP
>    (i915#4771)
>  * igt@gem_exec_balancer@parallel-balancer:shard-rkl: NOTRUN -> SKIP
>    (i915#4525) +2 other tests skip
>  * igt@gem_exec_capture@capture-invisible@lmem0:shard-dg2: NOTRUN ->
>    SKIP (i915#6334) +1 other test skip
>  * igt@gem_exec_capture@capture-invisible@smem0:shard-glk: NOTRUN ->
>    SKIP (i915#6334)
>  * igt@gem_exec_capture@many-4k-incremental:shard-tglu: NOTRUN -> FAIL
>    (i915#9606)
>  * igt@gem_exec_capture@many-4k-zero:shard-rkl: NOTRUN -> FAIL
>    (i915#9606)
>  * igt@gem_exec_fair@basic-none-share@rcs0:shard-tglu: PASS -> FAIL
>    (i915#2842)
>  * igt@gem_exec_fair@basic-pace:shard-mtlp: NOTRUN -> SKIP (i915#4473 /
>    i915#4771)
>  * igt@gem_exec_fair@basic-pace-share@rcs0:shard-rkl: PASS -> FAIL
>    (i915#2842)
>  * igt@gem_exec_fair@basic-pace-solo:shard-dg2: NOTRUN -> SKIP
>    (i915#3539)
>  * igt@gem_exec_fair@basic-pace@vcs0:shard-rkl: NOTRUN -> FAIL
>    (i915#2842)
>  * igt@gem_exec_fence@submit3:shard-mtlp: NOTRUN -> SKIP (i915#4812)
>  * igt@gem_exec_fence@submit67:shard-dg2: NOTRUN -> SKIP (i915#4812)
>  * igt@gem_exec_flush@basic-batch-kernel-default-uc:shard-dg2: NOTRUN -
>    > SKIP (i915#3539 / i915#4852) +1 other test skip
>  * igt@gem_exec_flush@basic-wb-ro-default:shard-dg1: NOTRUN -> SKIP
>    (i915#3539 / i915#4852)
>  * igt@gem_exec_reloc@basic-active:shard-dg2: NOTRUN -> SKIP
>    (i915#2575) +83 other tests skip
>  * igt@gem_exec_reloc@basic-cpu:shard-dg1: NOTRUN -> SKIP (i915#3281)
>    +2 other tests skip
>  * igt@gem_exec_reloc@basic-cpu-active:shard-mtlp: NOTRUN -> SKIP
>    (i915#3281) +3 other tests skip
>  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:shard-dg2: NOTRUN -> SKIP
>    (i915#3281) +6 other tests skip
>  * igt@gem_exec_reloc@basic-write-read:shard-rkl: NOTRUN -> SKIP
>    (i915#3281) +11 other tests skip
>  * igt@gem_exec_schedule@preempt-queue-contexts:shard-mtlp: NOTRUN ->
>    SKIP (i915#4537 / i915#4812)
>  * igt@gem_exec_schedule@preempt-queue-contexts-chain:shard-dg2: NOTRUN
>    -> SKIP (i915#4537 / i915#4812) +1 other test skip
>  * igt@gem_fence_thrash@bo-write-verify-none:shard-dg2: NOTRUN -> SKIP
>    (i915#4860)
>  * igt@gem_lmem_swapping@heavy-multi@lmem0:shard-dg1: PASS -> FAIL
>    (i915#10378)shard-dg2: PASS -> FAIL (i915#10378)
>  * igt@gem_lmem_swapping@massive:shard-dg2: NOTRUN -> SKIP (i915#9643)
>    +1 other test skip
>  * igt@gem_lmem_swapping@parallel-random-verify-ccs:shard-rkl: NOTRUN -
>    > SKIP (i915#4613) +2 other tests skipshard-glk: NOTRUN -> SKIP
>    (i915#4613) +2 other tests skip
>  * igt@gem_lmem_swapping@verify-random-ccs@lmem0:shard-dg1: NOTRUN ->
>    SKIP (i915#4565)
>  * igt@gem_media_vme:shard-mtlp: NOTRUN -> SKIP (i915#284)shard-rkl:
>    NOTRUN -> SKIP (i915#284)
>  * igt@gem_mmap_gtt@basic-small-copy-xy:shard-mtlp: NOTRUN -> SKIP
>    (i915#4077) +2 other tests skip
>  * igt@gem_mmap_gtt@hang:shard-dg2: NOTRUN -> SKIP (i915#4077) +6 other
>    tests skip
>  * igt@gem_mmap_wc@coherency:shard-mtlp: NOTRUN -> SKIP (i915#4083)
>  * igt@gem_mmap_wc@copy:shard-dg2: NOTRUN -> SKIP (i915#4083) +3 other
>    tests skip
>  * igt@gem_partial_pwrite_pread@writes-after-reads:shard-rkl: NOTRUN ->
>    SKIP (i915#3282) +5 other tests skip
>  * igt@gem_pread@bench:shard-mtlp: NOTRUN -> SKIP (i915#3282)
>  * igt@gem_pread@self:shard-dg2: NOTRUN -> SKIP (i915#3282) +2 other
>    tests skip
>  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:shard-
>    dg2: NOTRUN -> SKIP (i915#4270) +2 other tests skip
>  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:shard-rkl:
>    NOTRUN -> SKIP (i915#4270) +2 other tests skip
>  * igt@gem_pxp@protected-raw-src-copy-not-readible:shard-mtlp: NOTRUN -
>    > SKIP (i915#4270)
>  * igt@gem_pxp@regular-baseline-src-copy-readible:shard-dg1: NOTRUN ->
>    SKIP (i915#4270) +1 other test skip
>  * igt@gem_readwrite@read-bad-handle:shard-dg1: NOTRUN -> SKIP
>    (i915#3282)
>  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:shard-mtlp: NOTRUN
>    -> SKIP (i915#8428)
>  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:shard-dg2:
>    NOTRUN -> SKIP (i915#2575 / i915#5190) +1 other test skip
>  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:shard-dg2: NOTRUN ->
>    SKIP (i915#5190 / i915#8428) +5 other tests skip
>  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:shard-dg1: NOTRUN -> SKIP
>    (i915#4079)
>  * igt@gem_tiled_fence_blits@basic:shard-dg1: NOTRUN -> SKIP
>    (i915#4077) +3 other tests skip
>  * igt@gem_userptr_blits@access-control:shard-dg2: NOTRUN -> SKIP
>    (i915#3297)
>  * igt@gem_userptr_blits@coherency-unsync:shard-rkl: NOTRUN -> SKIP
>    (i915#3297) +1 other test skipshard-mtlp: NOTRUN -> SKIP (i915#3297)
>  * igt@gem_userptr_blits@dmabuf-sync:shard-glk: NOTRUN -> SKIP
>    (i915#3323)shard-rkl: NOTRUN -> SKIP (i915#3297 / i915#3323)
>  * igt@gem_userptr_blits@unsync-unmap:shard-tglu: NOTRUN -> SKIP
>    (i915#3297) +1 other test skip
>  * igt@gem_userptr_blits@unsync-unmap-after-close:shard-dg1: NOTRUN ->
>    SKIP (i915#3297)
>  * igt@gen9_exec_parse@batch-without-end:shard-dg1: NOTRUN -> SKIP
>    (i915#2527)
>  * igt@gen9_exec_parse@bb-chained:shard-rkl: NOTRUN -> SKIP (i915#2527)
>    +1 other test skipshard-mtlp: NOTRUN -> SKIP (i915#2856)
>  * igt@gen9_exec_parse@bb-secure:shard-tglu: NOTRUN -> SKIP (i915#2527
>    / i915#2856)
>  * igt@gen9_exec_parse@shadow-peek:shard-dg2: NOTRUN -> SKIP
>    (i915#2856) +2 other tests skip
>  * igt@i915_module_load@load:shard-rkl: NOTRUN -> SKIP (i915#6227)
>  * igt@i915_module_load@reload-with-fault-injection:shard-mtlp: PASS ->
>    ABORT (i915#10131 / i915#10887 / i915#9820)
>  * igt@i915_pipe_stress@stress-xrgb8888-ytiled:shard-mtlp: NOTRUN ->
>    SKIP (i915#8436)
>  * igt@i915_pm_freq_api@freq-basic-api:shard-rkl: NOTRUN -> SKIP
>    (i915#8399)
>  * igt@i915_pm_rpm@debugfs-read:shard-dg2: NOTRUN -> SKIP (i915#9980)
>    +1 other test skip
>  * igt@i915_query@hwconfig_table:shard-rkl: NOTRUN -> SKIP (i915#6245)
>  * igt@i915_query@query-topology-coherent-slice-mask:shard-dg2: NOTRUN
>    -> SKIP (i915#6188)
>  * igt@i915_query@test-query-geometry-subslices:shard-dg1: NOTRUN ->
>    SKIP (i915#5723)
>  * igt@i915_selftest@mock@memory_region:shard-dg2: NOTRUN -> DMESG-WARN
>    (i915#9311)shard-glk: NOTRUN -> DMESG-WARN (i915#9311)
>  * igt@kms_addfb_basic@clobberred-modifier:shard-dg2: NOTRUN -> SKIP
>    (i915#4212)
>  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:shard-dg1: NOTRUN -> SKIP
>    (i915#4538 / i915#5286)
>  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:shard-tglu: NOTRUN -> SKIP
>    (i915#5286)
>  * igt@kms_big_fb@4-tiled-addfb-size-overflow:shard-dg1: NOTRUN -> SKIP
>    (i915#5286)
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:shard-rkl:
>    NOTRUN -> SKIP (i915#5286) +5 other tests skip
>  * igt@kms_big_fb@linear-8bpp-rotate-90:shard-rkl: NOTRUN -> SKIP
>    (i915#3638) +2 other tests skip
>  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:shard-dg2: NOTRUN -> SKIP
>    (i915#5190) +4 other tests skip
>  * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:shard-mtlp: NOTRUN -> SKIP
>    +6 other tests skip
>  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:shard-dg2: NOTRUN -> SKIP
>    (i915#4538 / i915#5190) +7 other tests skip
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:shard-dg1:
>    NOTRUN -> SKIP (i915#4538)
>  * igt@kms_big_joiner@basic:shard-dg2: NOTRUN -> SKIP (i915#10656)
>  * igt@kms_big_joiner@invalid-modeset-force-joiner:shard-dg1: NOTRUN ->
>    SKIP (i915#10656)
>  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-
>    1:shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#10434 / i915#6095) +5
>    other tests skip
>  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-
>    4:shard-dg1: NOTRUN -> SKIP (i915#6095) +59 other tests skip
>  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-
>    2:shard-rkl: NOTRUN -> SKIP (i915#6095) +85 other tests skip
>  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-
>    1:shard-mtlp: NOTRUN -> SKIP (i915#6095) +15 other tests skip
>  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:shard-rkl:
>    NOTRUN -> SKIP (i915#10278)
>  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-
>    hdmi-a-1:shard-tglu: NOTRUN -> SKIP (i915#6095) +3 other tests skip
>  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-
>    1:shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#6095) +145 other
>    tests skip
>  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-
>    2:shard-glk: NOTRUN -> SKIP +204 other tests skip
>  * igt@kms_cdclk@mode-transition:shard-tglu: NOTRUN -> SKIP (i915#3742)
>  * igt@kms_cdclk@mode-transition-all-outputs:shard-dg2: NOTRUN -> SKIP
>    (i915#7213)
>  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:shard-dg2: NOTRUN ->
>    SKIP (i915#4087) +3 other tests skip
>  * igt@kms_chamelium_audio@dp-audio-edid:shard-dg2: NOTRUN -> SKIP
>    (i915#7828) +7 other tests skip
>  * igt@kms_chamelium_frames@dp-crc-single:shard-dg1: NOTRUN -> SKIP
>    (i915#7828) +1 other test skip
>  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:shard-tglu:
>    NOTRUN -> SKIP (i915#7828)
>  * igt@kms_chamelium_frames@hdmi-crc-single:shard-mtlp: NOTRUN -> SKIP
>    (i915#7828) +1 other test skip
>  * igt@kms_chamelium_hpd@dp-hpd:shard-rkl: NOTRUN -> SKIP (i915#7828)
>    +7 other tests skip
>  * igt@kms_content_protection@content-type-change:shard-dg2: NOTRUN ->
>    SKIP (i915#9424)
>  * igt@kms_content_protection@dp-mst-lic-type-0:shard-dg2: NOTRUN ->
>    SKIP (i915#3299)
>  * igt@kms_content_protection@dp-mst-type-1:shard-rkl: NOTRUN -> SKIP
>    (i915#3116)
>  * igt@kms_content_protection@lic-type-0:shard-rkl: NOTRUN -> SKIP
>    (i915#9424)
>  * igt@kms_content_protection@lic-type-1:shard-tglu: NOTRUN -> SKIP
>    (i915#6944 / i915#9424)
>  * igt@kms_content_protection@type1:shard-rkl: NOTRUN -> SKIP
>    (i915#7118 / i915#9424)
>  * igt@kms_cursor_crc@cursor-offscreen-max-size:shard-mtlp: NOTRUN ->
>    SKIP (i915#3555 / i915#8814)
>  * igt@kms_cursor_crc@cursor-onscreen-512x170:shard-rkl: NOTRUN -> SKIP
>    (i915#3359)
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-
>    size:shard-dg2: NOTRUN -> SKIP (i915#4103 / i915#4213)
>  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-
>    size:shard-dg1: NOTRUN -> SKIP +9 other tests skip
>  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:shard-rkl: NOTRUN ->
>    SKIP +48 other tests skipshard-mtlp: NOTRUN -> SKIP (i915#9809)
>  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-
>    transitions:shard-mtlp: NOTRUN -> SKIP (i915#4213)shard-rkl: NOTRUN
>    -> SKIP (i915#4103)
>  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:shard-rkl: NOTRUN -> SKIP
>    (i915#9723) +1 other test skip
>  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:shard-dg2: NOTRUN ->
>    SKIP (i915#9227)
>  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:shard-rkl:
>    NOTRUN -> SKIP (i915#3804)
>  * igt@kms_dsc@dsc-with-formats:shard-dg1: NOTRUN -> SKIP (i915#3555 /
>    i915#3840)
>  * igt@kms_fbcon_fbt@psr:shard-rkl: NOTRUN -> SKIP (i915#3955)
>  * igt@kms_feature_discovery@chamelium:shard-dg2: NOTRUN -> SKIP
>    (i915#4854)
>  * igt@kms_feature_discovery@display-2x:shard-dg2: NOTRUN -> SKIP
>    (i915#1839)
>  * igt@kms_feature_discovery@dp-mst:shard-rkl: NOTRUN -> SKIP
>    (i915#9337)
>  * igt@kms_feature_discovery@psr2:shard-tglu: NOTRUN -> SKIP (i915#658)
>  * igt@kms_flip@2x-modeset-vs-vblank-race:shard-tglu: NOTRUN -> SKIP
>    (i915#3637) +2 other tests skip
>  * igt@kms_flip@2x-plain-flip-fb-recreate:shard-mtlp: NOTRUN -> SKIP
>    (i915#3637) +1 other test skip
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-
>    downscaling@pipe-a-valid-mode:shard-rkl: NOTRUN -> SKIP (i915#2672)
>    +3 other tests skip
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>    upscaling@pipe-a-valid-mode:shard-dg2: NOTRUN -> SKIP (i915#2672) +2
>    other tests skip
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>    downscaling@pipe-a-default-mode:shard-mtlp: NOTRUN -> SKIP
>    (i915#8810)
>  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>    upscaling@pipe-a-valid-mode:shard-dg1: NOTRUN -> SKIP (i915#2587 /
>    i915#2672)
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-
>    upscaling@pipe-a-default-mode:shard-mtlp: NOTRUN -> SKIP (i915#2672
>    / i915#3555)
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-
>    gtt:shard-dg1: NOTRUN -> SKIP (i915#8708) +1 other test skip
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-
>    wc:shard-rkl: NOTRUN -> SKIP (i915#1825) +39 other tests skip
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-
>    render:shard-mtlp: NOTRUN -> SKIP (i915#1825) +7 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-
>    blt:shard-dg2: NOTRUN -> SKIP (i915#3458) +13 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-
>    wc:shard-rkl: NOTRUN -> SKIP (i915#3023) +20 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-
>    blt:shard-dg2: NOTRUN -> SKIP (i915#5354) +31 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:shard-dg2:
>    NOTRUN -> SKIP (i915#8708) +16 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:shard-dg2: NOTRUN ->
>    SKIP (i915#10055)
>  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-
>    render:shard-tglu: NOTRUN -> SKIP +18 other tests skip
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:shard-
>    dg1: NOTRUN -> SKIP (i915#3458) +3 other tests skip
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-
>    render:shard-dg2: NOTRUN -> SKIP (i915#10433 / i915#3458)
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-
>    gtt:shard-mtlp: NOTRUN -> SKIP (i915#8708) +3 other tests skip
>  * igt@kms_hdr@bpc-switch-dpms:shard-rkl: NOTRUN -> SKIP (i915#3555 /
>    i915#8228) +1 other test skip
>  * igt@kms_hdr@bpc-switch-suspend:shard-tglu: NOTRUN -> SKIP (i915#3555
>    / i915#8228)
>  * igt@kms_hdr@static-toggle:shard-dg2: NOTRUN -> SKIP (i915#3555 /
>    i915#8228) +2 other tests skip
>  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-
>    1:shard-glk: NOTRUN -> FAIL (i915#10647) +1 other test fail
>  * igt@kms_plane_multiple@tiling-yf:shard-rkl: NOTRUN -> SKIP
>    (i915#3555) +5 other tests skipshard-mtlp: NOTRUN -> SKIP (i915#3555
>    / i915#8806)
>  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:shard-rkl:
>    NOTRUN -> FAIL (i915#8292)
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-
>    format@pipe-b-hdmi-a-3:shard-dg2: NOTRUN -> SKIP (i915#9423) +11
>    other tests skip
>  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-
>    a-hdmi-a-4:shard-dg1: NOTRUN -> SKIP (i915#9423) +11 other tests
>    skip
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-
>    b-hdmi-a-1:shard-rkl: NOTRUN -> SKIP (i915#9423) +7 other tests skip
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-
>    rotation@pipe-b-hdmi-a-2:shard-rkl: NOTRUN -> SKIP (i915#5176 /
>    i915#9423) +1 other test skip
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-
>    25@pipe-b-hdmi-a-1:shard-rkl: NOTRUN -> SKIP (i915#5235) +5 other
>    tests skip
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-
>    4:shard-dg1: NOTRUN -> SKIP (i915#5235) +3 other tests skip
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-
>    25:shard-dg2: NOTRUN -> SKIP (i915#2575 / i915#9423) +1 other test
>    skip
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-
>    5@pipe-b-edp-1:shard-mtlp: NOTRUN -> SKIP (i915#5235) +2 other tests
>    skip
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-
>    5@pipe-d-edp-1:shard-mtlp: NOTRUN -> SKIP (i915#3555 / i915#5235)
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-
>    25@pipe-a-hdmi-a-3:shard-dg2: NOTRUN -> SKIP (i915#5235 / i915#9423)
>    +19 other tests skip
>  * igt@kms_pm_backlight@bad-brightness:shard-dg1: NOTRUN -> SKIP
>    (i915#5354)
>  * igt@kms_pm_dc@dc6-dpms:shard-dg2: NOTRUN -> SKIP (i915#5978)
>  * igt@kms_pm_dc@dc6-psr:shard-dg2: NOTRUN -> SKIP (i915#9685)
>  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:shard-dg2: NOTRUN -> SKIP
>    (i915#9519)shard-rkl: PASS -> SKIP (i915#9519) +2 other tests skip
>  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:shard-rkl: NOTRUN ->
>    SKIP (i915#9519) +1 other test skipshard-mtlp: NOTRUN -> SKIP
>    (i915#9519)
>  * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:shard-
>    dg2: NOTRUN -> SKIP +50 other tests skip
>  * igt@kms_psr2_su@page_flip-p010:shard-rkl: NOTRUN -> SKIP
>    (i915#9683)shard-mtlp: NOTRUN -> SKIP (i915#4348)
>  * igt@kms_psr@fbc-pr-primary-render:shard-dg2: NOTRUN -> SKIP
>    (i915#1072 / i915#9732) +17 other tests skip
>  * igt@kms_psr@fbc-psr2-sprite-blt:shard-dg1: NOTRUN -> SKIP (i915#1072
>    / i915#9732) +5 other tests skip
>  * igt@kms_psr@pr-cursor-mmap-gtt:shard-tglu: NOTRUN -> SKIP
>    (i915#9732) +3 other tests skip
>  * igt@kms_psr@pr-cursor-plane-move:shard-mtlp: NOTRUN -> SKIP
>    (i915#9688) +2 other tests skip
>  * igt@kms_psr@pr-sprite-mmap-gtt:shard-rkl: NOTRUN -> SKIP (i915#1072
>    / i915#9732) +18 other tests skip
>  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:shard-rkl:
>    NOTRUN -> SKIP (i915#9685)
>  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:shard-tglu: NOTRUN
>    -> SKIP (i915#5289)
>  * igt@kms_rotation_crc@primary-rotation-270:shard-dg2: NOTRUN -> SKIP
>    (i915#4235) +1 other test skip
>  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:shard-rkl: NOTRUN
>    -> SKIP (i915#5289)
>  * igt@kms_scaling_modes@scaling-mode-full-aspect:shard-dg1: NOTRUN ->
>    SKIP (i915#3555) +1 other test skip
>  * igt@kms_setmode@basic-clone-single-crtc:shard-dg2: NOTRUN -> SKIP
>    (i915#3555) +4 other tests skip
>  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:shard-dg2:
>    NOTRUN -> SKIP (i915#8623)
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:shard-snb:
>    PASS -> FAIL (i915#9196) +1 other test fail
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:shard-mtlp: PASS
>    -> FAIL (i915#9196)
>  * igt@kms_vrr@flip-basic-fastset:shard-dg2: NOTRUN -> SKIP (i915#9906)
>  * igt@kms_vrr@negative-basic:shard-rkl: NOTRUN -> SKIP (i915#3555 /
>    i915#9906)
>  * igt@kms_writeback@writeback-check-output:shard-glk: NOTRUN -> SKIP
>    (i915#2437)
>  * igt@kms_writeback@writeback-fb-id-xrgb2101010:shard-rkl: NOTRUN ->
>    SKIP (i915#2437 / i915#9412)shard-mtlp: NOTRUN -> SKIP (i915#2437 /
>    i915#9412)
>  * igt@kms_writeback@writeback-invalid-parameters:shard-tglu: NOTRUN ->
>    SKIP (i915#2437)
>  * igt@perf@oa-exponents:shard-dg2: NOTRUN -> SKIP (i915#5608) +6 other
>    tests skip
>  * igt@perf@per-context-mode-unprivileged:shard-rkl: NOTRUN -> SKIP
>    (i915#2435)
>  * igt@perf@polling@0-rcs0:shard-dg1: PASS -> FAIL (i915#10538)
>  * igt@perf@unprivileged-single-ctx-counters:shard-rkl: NOTRUN -> SKIP
>    (i915#2433)
>  * igt@perf_pmu@cpu-hotplug:shard-dg2: NOTRUN -> SKIP (i915#8850)
>  * igt@perf_pmu@most-busy-idle-check-all@rcs0:shard-rkl: PASS -> FAIL
>    (i915#4349)
>  * igt@prime_vgem@basic-fence-mmap:shard-dg2: NOTRUN -> SKIP (i915#3708
>    / i915#4077)
>  * igt@prime_vgem@fence-read-hang:shard-rkl: NOTRUN -> SKIP (i915#3708)
>  * igt@sriov_basic@bind-unbind-vf:shard-dg2: NOTRUN -> SKIP (i915#9917)
>  * igt@sriov_basic@enable-vfs-autoprobe-on:shard-rkl: NOTRUN -> SKIP
>    (i915#9917)
>  * igt@syncobj_wait@invalid-wait-zero-handles:shard-dg2: NOTRUN -> FAIL
>    (i915#9779)
>  * igt@v3d/v3d_submit_cl@multi-and-single-sync:shard-dg1: NOTRUN ->
>    SKIP (i915#2575) +2 other tests skip
>  * igt@v3d/v3d_submit_csd@bad-extension:shard-mtlp: NOTRUN -> SKIP
>    (i915#2575) +2 other tests skip
>  * igt@v3d/v3d_submit_csd@multi-and-single-sync:shard-tglu: NOTRUN ->
>    SKIP (i915#2575) +4 other tests skip
>  * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:shard-rkl:
>    NOTRUN -> SKIP (i915#7711) +7 other tests skip
>  * igt@vc4/vc4_purgeable_bo@mark-willneed:shard-dg1: NOTRUN -> SKIP
>    (i915#7711) +1 other test skip
>  * igt@vc4/vc4_tiling@set-bad-flags:shard-mtlp: NOTRUN -> SKIP
>    (i915#7711) +1 other test skip
>  * igt@vc4/vc4_tiling@set-bad-modifier:shard-dg2: NOTRUN -> SKIP
>    (i915#7711) +7 other tests skip
> Possible fixes * igt@gem_ctx_exec@basic-nohangcheck:shard-rkl: FAIL (i915=
#6268) ->
>    PASS
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:shard-rkl: FAIL (i915#2842) -
>    > PASS
>  * igt@gem_lmem_swapping@basic@lmem0:shard-dg2: FAIL (i915#10378) ->
>    PASS +1 other test pass
>  * igt@i915_module_load@reload-with-fault-injection:shard-dg2:
>    INCOMPLETE (i915#1982 / i915#9820 / i915#9849) -> PASS
>  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:shard-dg1: FAIL
>    (i915#3591) -> PASS
>  * igt@kms_flip@plain-flip-fb-recreate@a-vga1:shard-snb: FAIL
>    (i915#2122) -> PASS +1 other test pass
>  * igt@kms_pm_rpm@modeset-lpsp:shard-dg2: SKIP (i915#9519) -> PASS
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:shard-tglu:
>    FAIL (i915#9196) -> PASS
> Warnings * igt@device_reset@unbind-reset-rebind:shard-dg1: ABORT (i915#11=
164) -
>    > INCOMPLETE (i915#9408)
>  * igt@gem_create@create-ext-cpu-access-big:shard-dg2: ABORT
>    (i915#9846) -> INCOMPLETE (i915#9364)
>  * igt@i915_module_load@reload-with-fault-injection:shard-dg1: ABORT
>    (i915#9820) -> INCOMPLETE (i915#1982 / i915#9849)
>  * igt@kms_content_protection@mei-interface:shard-dg1: SKIP (i915#9433)
>    -> SKIP (i915#9424)
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-
>    pwrite:shard-dg2: SKIP (i915#3458) -> SKIP (i915#10433 / i915#3458)
>  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:shard-rkl: SKIP
>    (i915#4070 / i915#4816) -> SKIP (i915#4816)
>  * igt@kms_psr@fbc-psr-primary-mmap-gtt:shard-dg2: SKIP (i915#1072 /
>    i915#9673 / i915#9732) -> SKIP (i915#1072 / i915#9732) +1 other test
>    skip
>  * igt@perf@non-zero-reason@0-rcs0:shard-dg2: FAIL (i915#7484) -> FAIL
>    (i915#9100)
> Build changes * Linux: CI_DRM_14831 -> Patchwork_134124v1
> CI-20190529: 20190529
> CI_DRM_14831: 5ba74aaea55bf295898f2a4f69c59fe12e84e842 @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7872: baba9988c34c55977332044f3521cfbba80ca630 @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_134124v1: 5ba74aaea55bf295898f2a4f69c59fe12e84e842 @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit


--=-lLjnWggKBZt9Q1dzvW2K
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>Hi,</div><div><br></div><div>All these 3 new issues are false po=
sitives and not related to this patchset.</div><div><br></div><div>Can you =
please re-report it?</div><div><br></div><div>--</div><div>Cheers,</div><di=
v>Luca.</div><div><br></div><div><br></div><div>On Wed, 2024-05-29 at 03:28=
 +0000, Patchwork wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0=
 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div><b>Patch Deta=
ils</b></div><div><table><tbody><tr><td><b>Series:</b></td><td>drm/i915: pr=
event some static analyzer warnings</td></tr><tr><td><b>URL:</b></td><td><a=
 href=3D"https://patchwork.freedesktop.org/series/134124/">https://patchwor=
k.freedesktop.org/series/134124/</a></td></tr><tr><td><b>State:</b></td><td=
>failure</td></tr> <tr><td><b>Details:</b></td><td><a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/index.html">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_134124v1/index.html</a></td></tr></tbody=
></table> </div><h1>CI Bug Log - changes from CI_DRM_14831_full -&gt; Patch=
work_134124v1_full</h1><h2>Summary</h2><p><strong>FAILURE</strong></p><p>Se=
rious unknown changes coming with Patchwork_134124v1_full absolutely need t=
o be<br> verified manually.</p><p>If you think the reported changes have no=
thing to do with the changes<br> introduced in Patchwork_134124v1_full, ple=
ase notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow the=
m<br> to document this new failure mode, which will reduce false positives =
in CI.</p><h2>Participating hosts (9 -&gt; 9)</h2><p>No changes in particip=
ating hosts</p><h2>Possible new issues</h2><p>Here are the unknown changes =
that may have been introduced in Patchwork_134124v1_full:</p><h3>IGT change=
s</h3><h4>Possible regressions</h4><ul><li><p>igt@device_reset@cold-reset-b=
ound:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-11/igt@device_reset@cold-res=
et-bound.html">SKIP</a></li></ul></li><li><p>igt@gem_spin_batch@legacy@blt:=
</p><ul><li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14831/shard-snb4/igt@gem_spin_batch@legacy@blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shar=
d-snb5/igt@gem_spin_batch@legacy@blt.html">ABORT</a></li></ul></li><li><p>i=
gt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p><ul><li>=
shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831=
/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-b=
lt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_134124v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-1p-offscr=
en-pri-shrfb-draw-blt.html">INCOMPLETE</a></li></ul></li></ul><h2>Known iss=
ues</h2><p>Here are the changes found in Patchwork_134124v1_full that come =
from known issues:</p><h3>IGT changes</h3><h4>Issues hit</h4><ul><li><p>igt=
@drm_fdinfo@all-busy-idle-check-all:</p><ul><li>shard-dg1: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-d=
g1-18/igt@drm_fdinfo@all-busy-idle-check-all.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>)</=
li></ul></li><li><p>igt@drm_fdinfo@most-busy-check-all@bcs0:</p><ul><li>sha=
rd-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_134124v1/shard-dg2-2/igt@drm_fdinfo@most-busy-check-all@bcs0.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/8414">i915#8414</a>) +28 other tests skip</li></ul></li><li><p>igt@drm_fd=
info@virtual-busy-idle-all:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/ig=
t@drm_fdinfo@virtual-busy-idle-all.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8414">i915#8414</a>)</li></ul></=
li><li><p>igt@gem_ccs@block-copy-compressed:</p><ul><li>shard-rkl: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1=
/shard-rkl-2/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">=
i915#9323</a>)</li></ul></li><li><p>igt@gem_ccs@block-multicopy-compressed:=
</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_134124v1/shard-rkl-5/igt@gem_ccs@block-multicopy-com=
pressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9323">i915#9323</a>)</li><li>shard-mtlp: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtl=
p-3/igt@gem_ccs@block-multicopy-compressed.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li=
></ul></li><li><p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p><ul><li>shard-dg1:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_134124v1/shard-dg1-18/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i91=
5#9323</a>)</li></ul></li><li><p>igt@gem_create@create-ext-cpu-access-big:<=
/p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li><li>shard-rkl: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-r=
kl-5/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)<=
/li></ul></li><li><p>igt@gem_ctx_sseu@invalid-sseu:</p><ul><li>shard-dg1: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
34124v1/shard-dg1-18/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</=
a>)</li></ul></li><li><p>igt@gem_exec_balancer@bonded-dual:</p><ul><li>shar=
d-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-dg2-8/igt@gem_exec_balancer@bonded-dual.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771"=
>i915#4771</a>)</li></ul></li><li><p>igt@gem_exec_balancer@parallel-balance=
r:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@gem_exec_balancer@paralle=
l-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4525">i915#4525</a>) +2 other tests skip</li></ul></li><=
li><p>igt@gem_exec_capture@capture-invisible@lmem0:</p><ul><li>shard-dg2: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
34124v1/shard-dg2-8/igt@gem_exec_capture@capture-invisible@lmem0.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/63=
34">i915#6334</a>) +1 other test skip</li></ul></li><li><p>igt@gem_exec_cap=
ture@capture-invisible@smem0:</p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-glk7/igt=
@gem_exec_capture@capture-invisible@smem0.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>)</li>=
</ul></li><li><p>igt@gem_exec_capture@many-4k-incremental:</p><ul><li>shard=
-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-tglu-7/igt@gem_exec_capture@many-4k-incremental.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9606">i915#9606</a>)</li></ul></li><li><p>igt@gem_exec_capture@many-4k-z=
ero:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_134124v1/shard-rkl-2/igt@gem_exec_capture@many-4=
k-zero.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9606">i915#9606</a>)</li></ul></li><li><p>igt@gem_exec_fair@=
basic-none-share@rcs0:</p><ul><li>shard-tglu: <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14831/shard-tglu-7/igt@gem_exec_fair@basic-no=
ne-share@rcs0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_134124v1/shard-tglu-9/igt@gem_exec_fair@basic-none-sh=
are@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2842">i915#2842</a>)</li></ul></li><li><p>igt@gem_exec_fai=
r@basic-pace:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@gem_exec_fai=
r@basic-pace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4473">i915#4473</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4771">i915#4771</a>)</li></ul></li><li><=
p>igt@gem_exec_fair@basic-pace-share@rcs0:</p><ul><li>shard-rkl: <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-rkl-5/igt@gem_=
exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@gem_exec_f=
air@basic-pace-share@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2842">i915#2842</a>)</li></ul></li><li><p=
>igt@gem_exec_fair@basic-pace-solo:</p><ul><li>shard-dg2: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg=
2-4/igt@gem_exec_fair@basic-pace-solo.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a>)</li></ul=
></li><li><p>igt@gem_exec_fair@basic-pace@vcs0:</p><ul><li>shard-rkl: NOTRU=
N -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13412=
4v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915#2842=
</a>)</li></ul></li><li><p>igt@gem_exec_fence@submit3:</p><ul><li>shard-mtl=
p: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_134124v1/shard-mtlp-3/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812=
</a>)</li></ul></li><li><p>igt@gem_exec_fence@submit67:</p><ul><li>shard-dg=
2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_134124v1/shard-dg2-7/igt@gem_exec_fence@submit67.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812=
</a>)</li></ul></li><li><p>igt@gem_exec_flush@basic-batch-kernel-default-uc=
:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_134124v1/shard-dg2-2/igt@gem_exec_flush@basic-batch=
-kernel-default-uc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test=
 skip</li></ul></li><li><p>igt@gem_exec_flush@basic-wb-ro-default:</p><ul><=
li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_134124v1/shard-dg1-18/igt@gem_exec_flush@basic-wb-ro-default.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4852">i915#4852</a>)</li></ul></li><li><p>igt@gem_exe=
c_reloc@basic-active:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-11/igt@gem_e=
xec_reloc@basic-active.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +83 other tests skip</l=
i></ul></li><li><p>igt@gem_exec_reloc@basic-cpu:</p><ul><li>shard-dg1: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-dg1-18/igt@gem_exec_reloc@basic-cpu.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)=
 +2 other tests skip</li></ul></li><li><p>igt@gem_exec_reloc@basic-cpu-acti=
ve:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@gem_exec_reloc@basic-c=
pu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li></ul></li><l=
i><p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p><ul><li>shard-dg2: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124=
v1/shard-dg2-7/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#=
3281</a>) +6 other tests skip</li></ul></li><li><p>igt@gem_exec_reloc@basic=
-write-read:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-5/igt@gem_exec_reloc@=
basic-write-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a>) +11 other tests skip</li></ul=
></li><li><p>igt@gem_exec_schedule@preempt-queue-contexts:</p><ul><li>shard=
-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-contexts.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4812">i915#4812</a>)</li></ul></li><li><p>igt@gem_exec=
_schedule@preempt-queue-contexts-chain:</p><ul><li>shard-dg2: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shar=
d-dg2-2/igt@gem_exec_schedule@preempt-queue-contexts-chain.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i9=
15#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4812">i915#4812</a>) +1 other test skip</li></ul></li><li><p>igt@gem_=
fence_thrash@bo-write-verify-none:</p><ul><li>shard-dg2: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2=
-4/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</=
li></ul></li><li><p>igt@gem_lmem_swapping@heavy-multi@lmem0:</p><ul><li>sha=
rd-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/sh=
ard-dg1-17/igt@gem_lmem_swapping@heavy-multi@lmem0.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-d=
g1-17/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>=
)</li><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_14831/shard-dg2-3/igt@gem_lmem_swapping@heavy-multi@lmem0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-dg2-5/igt@gem_lmem_swapping@heavy-multi@lmem0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i91=
5#10378</a>)</li></ul></li><li><p>igt@gem_lmem_swapping@massive:</p><ul><li=
>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_134124v1/shard-dg2-11/igt@gem_lmem_swapping@massive.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/964=
3">i915#9643</a>) +1 other test skip</li></ul></li><li><p>igt@gem_lmem_swap=
ping@parallel-random-verify-ccs:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-6=
/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613=
</a>) +2 other tests skip</li><li>shard-glk: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-glk8/igt@gem_lm=
em_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 othe=
r tests skip</li></ul></li><li><p>igt@gem_lmem_swapping@verify-random-ccs@l=
mem0:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@gem_lmem_swapping@ver=
ify-random-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4565">i915#4565</a>)</li></ul></li><li><p>igt@=
gem_media_vme:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@gem_media_v=
me.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/284">i915#284</a>)</li><li>shard-rkl: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-5/igt@g=
em_media_vme.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/284">i915#284</a>)</li></ul></li><li><p>igt@gem_mmap_g=
tt@basic-small-copy-xy:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@ge=
m_mmap_gtt@basic-small-copy-xy.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests =
skip</li></ul></li><li><p>igt@gem_mmap_gtt@hang:</p><ul><li>shard-dg2: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-dg2-4/igt@gem_mmap_gtt@hang.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +6 othe=
r tests skip</li></ul></li><li><p>igt@gem_mmap_wc@coherency:</p><ul><li>sha=
rd-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_134124v1/shard-mtlp-3/igt@gem_mmap_wc@coherency.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915=
#4083</a>)</li></ul></li><li><p>igt@gem_mmap_wc@copy:</p><ul><li>shard-dg2:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_134124v1/shard-dg2-4/igt@gem_mmap_wc@copy.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +3 =
other tests skip</li></ul></li><li><p>igt@gem_partial_pwrite_pread@writes-a=
fter-reads:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-6/igt@gem_partial_pwri=
te_pread@writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests ski=
p</li></ul></li><li><p>igt@gem_pread@bench:</p><ul><li>shard-mtlp: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1=
/shard-mtlp-3/igt@gem_pread@bench.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li></ul></l=
i><li><p>igt@gem_pread@self:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt=
@gem_pread@self.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li></ul><=
/li><li><p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</=
p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_134124v1/shard-dg2-7/igt@gem_pxp@dmabuf-shared-protect=
ed-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests sk=
ip</li></ul></li><li><p>igt@gem_pxp@protected-encrypted-src-copy-not-readib=
le:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_134124v1/shard-rkl-2/igt@gem_pxp@protected-encryp=
ted-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other tests skip<=
/li></ul></li><li><p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p><u=
l><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@gem_pxp@protected-raw-src-copy-=
not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4270">i915#4270</a>)</li></ul></li><li><p>igt@gem_pxp@=
regular-baseline-src-copy-readible:</p><ul><li>shard-dg1: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg=
1-18/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270=
</a>) +1 other test skip</li></ul></li><li><p>igt@gem_readwrite@read-bad-ha=
ndle:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@gem_readwrite@read-ba=
d-handle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3282">i915#3282</a>)</li></ul></li><li><p>igt@gem_render_c=
opy@y-tiled-ccs-to-y-tiled-mc-ccs:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mt=
lp-3/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8=
428</a>)</li></ul></li><li><p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y=
-tiled:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-11/igt@gem_render_copy@y-t=
iled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 =
other test skip</li></ul></li><li><p>igt@gem_render_copy@y-tiled-to-vebox-y=
f-tiled:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@gem_render_copy@y-t=
iled-to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +5 other =
tests skip</li></ul></li><li><p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</=
p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@gem_set_tiling_vs_blt@tiled-=
to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4079">i915#4079</a>)</li></ul></li><li><p>igt@gem_tiled_fe=
nce_blits@basic:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@gem_tiled_=
fence_blits@basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li></ul=
></li><li><p>igt@gem_userptr_blits@access-control:</p><ul><li>shard-dg2: NO=
TRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
4124v1/shard-dg2-2/igt@gem_userptr_blits@access-control.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#=
3297</a>)</li></ul></li><li><p>igt@gem_userptr_blits@coherency-unsync:</p><=
ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_134124v1/shard-rkl-5/igt@gem_userptr_blits@coherency-unsy=
nc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3297">i915#3297</a>) +1 other test skip</li><li>shard-mtlp: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-mtlp-3/igt@gem_userptr_blits@coherency-unsync.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915=
#3297</a>)</li></ul></li><li><p>igt@gem_userptr_blits@dmabuf-sync:</p><ul><=
li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_134124v1/shard-glk8/igt@gem_userptr_blits@dmabuf-sync.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3323">i915#3323</a>)</li><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-6/igt@gem_userp=
tr_blits@dmabuf-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li></ul></=
li><li><p>igt@gem_userptr_blits@unsync-unmap:</p><ul><li>shard-tglu: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124=
v1/shard-tglu-7/igt@gem_userptr_blits@unsync-unmap.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297=
</a>) +1 other test skip</li></ul></li><li><p>igt@gem_userptr_blits@unsync-=
unmap-after-close:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@gem_user=
ptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li></ul></=
li><li><p>igt@gen9_exec_parse@batch-without-end:</p><ul><li>shard-dg1: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-dg1-18/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#=
2527</a>)</li></ul></li><li><p>igt@gen9_exec_parse@bb-chained:</p><ul><li>s=
hard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_134124v1/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527"=
>i915#2527</a>) +1 other test skip</li><li>shard-mtlp: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-=
3/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li></ul></li=
><li><p>igt@gen9_exec_parse@bb-secure:</p><ul><li>shard-tglu: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shar=
d-tglu-7/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#285=
6</a>)</li></ul></li><li><p>igt@gen9_exec_parse@shadow-peek:</p><ul><li>sha=
rd-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_134124v1/shard-dg2-4/igt@gen9_exec_parse@shadow-peek.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">=
i915#2856</a>) +2 other tests skip</li></ul></li><li><p>igt@i915_module_loa=
d@load:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@i915_module_load@loa=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6227">i915#6227</a>)</li></ul></li><li><p>igt@i915_module_load@re=
load-with-fault-injection:</p><ul><li>shard-mtlp: <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-mtlp-6/igt@i915_module_load@r=
eload-with-fault-injection.html">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-7/igt@i915_module_lo=
ad@reload-with-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/10131">i915#10131</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887">i915#10887</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/982=
0">i915#9820</a>)</li></ul></li><li><p>igt@i915_pipe_stress@stress-xrgb8888=
-ytiled:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@i915_pipe_stress@=
stress-xrgb8888-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8436">i915#8436</a>)</li></ul></li><li><p>ig=
t@i915_pm_freq_api@freq-basic-api:</p><ul><li>shard-rkl: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl=
-6/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li></u=
l></li><li><p>igt@i915_pm_rpm@debugfs-read:</p><ul><li>shard-dg2: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/=
shard-dg2-11/igt@i915_pm_rpm@debugfs-read.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9980">i915#9980</a>) +1 o=
ther test skip</li></ul></li><li><p>igt@i915_query@hwconfig_table:</p><ul><=
li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_134124v1/shard-rkl-2/igt@i915_query@hwconfig_table.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
45">i915#6245</a>)</li></ul></li><li><p>igt@i915_query@query-topology-coher=
ent-slice-mask:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@i915_query@q=
uery-topology-coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li></ul></l=
i><li><p>igt@i915_query@test-query-geometry-subslices:</p><ul><li>shard-dg1=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_134124v1/shard-dg1-18/igt@i915_query@test-query-geometry-subslices.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/5723">i915#5723</a>)</li></ul></li><li><p>igt@i915_selftest@mock@memory_r=
egion:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@i915_selftest@mock@me=
mory_region.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9311">i915#9311</a>)</li><li>shard-glk: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/=
shard-glk7/igt@i915_selftest@mock@memory_region.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311">i915#93=
11</a>)</li></ul></li><li><p>igt@kms_addfb_basic@clobberred-modifier:</p><u=
l><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_addfb_basic@clobberred-modifi=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4212">i915#4212</a>)</li></ul></li><li><p>igt@kms_big_fb@4-tiled=
-32bpp-rotate-0:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_big_fb=
@4-tiled-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li></ul=
></li><li><p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p><ul><li>shard-tglu=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_134124v1/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
6">i915#5286</a>)</li></ul></li><li><p>igt@kms_big_fb@4-tiled-addfb-size-ov=
erflow:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_big_fb@4-tiled-=
addfb-size-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li></ul></li><li><p>igt@k=
ms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p><ul><li>shard-rkl:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_134124v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-h=
flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5286">i915#5286</a>) +5 other tests skip</li></ul></li><li><p>=
igt@kms_big_fb@linear-8bpp-rotate-90:</p><ul><li>shard-rkl: NOTRUN -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-=
rkl-5/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 =
other tests skip</li></ul></li><li><p>igt@kms_big_fb@y-tiled-8bpp-rotate-27=
0:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_134124v1/shard-dg2-11/igt@kms_big_fb@y-tiled-8bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li></ul></li><=
li><p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p><ul><li>shard-mtlp: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-mtlp-3/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html">SKIP</a> +=
6 other tests skip</li></ul></li><li><p>igt@kms_big_fb@yf-tiled-8bpp-rotate=
-90:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-8bp=
p-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +7 other tests skip<=
/li></ul></li><li><p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180=
:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li></ul></li><li><p=
>igt@kms_big_joiner@basic:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@k=
ms_big_joiner@basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/10656">i915#10656</a>)</li></ul></li><li><p>igt=
@kms_big_joiner@invalid-modeset-force-joiner:</p><ul><li>shard-dg1: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v=
1/shard-dg1-18/igt@kms_big_joiner@invalid-modeset-force-joiner.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1065=
6">i915#10656</a>)</li></ul></li><li><p>igt@kms_ccs@bad-aux-stride-y-tiled-=
gen12-rc-ccs@pipe-d-hdmi-a-1:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/ig=
t@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307=
">i915#10307</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/10434">i915#10434</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests skip</li></u=
l></li><li><p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-=
4:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_ccs@bad-rotation-90-=
4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +59 other t=
ests skip</li></ul></li><li><p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-c=
cs@pipe-b-hdmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@kms_ccs@=
bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +85 other tests skip</li></ul></li><li><p>igt@kms_ccs@crc-primary-bas=
ic-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p><ul><li>shard-mtlp: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shar=
d-mtlp-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6095">i915#6095</a>) +15 other tests skip</li></ul></li><li><p>igt@k=
ms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:</p><ul><li>shard-rkl: NOTRU=
N -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13412=
4v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/10278">i915#10278</a>)</li></ul></li><li><p>igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p><ul><li>shard-tglu: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1=
/shard-tglu-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe=
-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li></ul></li>=
<li><p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p=
><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tile=
d-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)=
 +145 other tests skip</li></ul></li><li><p>igt@kms_ccs@random-ccs-data-y-t=
iled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:</p><ul><li>shard-glk: NOTRUN -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-=
glk7/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.ht=
ml">SKIP</a> +204 other tests skip</li></ul></li><li><p>igt@kms_cdclk@mode-=
transition:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-tglu-7/igt@kms_cdclk@mode=
-transition.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3742">i915#3742</a>)</li></ul></li><li><p>igt@kms_cdclk=
@mode-transition-all-outputs:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-2/ig=
t@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213">i915#7213</a>)</li></=
ul></li><li><p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p><ul><li>shar=
d-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-dg2-5/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4087">i915#4087</a>) +3 other tests skip</li></ul></li><li><p>igt@kms_=
chamelium_audio@dp-audio-edid:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-7=
/igt@kms_chamelium_audio@dp-audio-edid.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 othe=
r tests skip</li></ul></li><li><p>igt@kms_chamelium_frames@dp-crc-single:</=
p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-=
single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7828">i915#7828</a>) +1 other test skip</li></ul></li><li><p=
>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p><ul><li>shard-tglu=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_134124v1/shard-tglu-7/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/7828">i915#7828</a>)</li></ul></li><li><p>igt@kms_chamelium_frames=
@hdmi-crc-single:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@kms_cham=
elium_frames@hdmi-crc-single.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test ski=
p</li></ul></li><li><p>igt@kms_chamelium_hpd@dp-hpd:</p><ul><li>shard-rkl: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
134124v1/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828=
</a>) +7 other tests skip</li></ul></li><li><p>igt@kms_content_protection@c=
ontent-type-change:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_cont=
ent_protection@content-type-change.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li></ul></=
li><li><p>igt@kms_content_protection@dp-mst-lic-type-0:</p><ul><li>shard-dg=
2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_134124v1/shard-dg2-4/igt@kms_content_protection@dp-mst-lic-type-0.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3299">i915#3299</a>)</li></ul></li><li><p>igt@kms_content_protection@dp-m=
st-type-1:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-6/igt@kms_content_prote=
ction@dp-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li></ul></li><li><p>igt@k=
ms_content_protection@lic-type-0:</p><ul><li>shard-rkl: NOTRUN -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-=
3/igt@kms_content_protection@lic-type-0.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li></=
ul></li><li><p>igt@kms_content_protection@lic-type-1:</p><ul><li>shard-tglu=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_134124v1/shard-tglu-7/igt@kms_content_protection@lic-type-1.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944"=
>i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9424">i915#9424</a>)</li></ul></li><li><p>igt@kms_content_protecti=
on@type1:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@kms_content_protec=
tion@type1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li></ul></li><li><p>=
igt@kms_cursor_crc@cursor-offscreen-max-size:</p><ul><li>shard-mtlp: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124=
v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-offscreen-max-size.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8814">i915#8814</a>)</li></ul></li><li><p>igt@kms_cursor_crc@cursor=
-onscreen-512x170:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@kms_curso=
r_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li></ul></li><l=
i><p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p><=
ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_134124v1/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-fli=
p-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li=
></ul></li><li><p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions=
-varying-size:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_cursor_l=
egacy@cursora-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> +9 ot=
her tests skip</li></ul></li><li><p>igt@kms_cursor_legacy@cursorb-vs-flipa-=
legacy:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-5/igt@kms_cursor_legacy@cu=
rsorb-vs-flipa-legacy.html">SKIP</a> +48 other tests skip</li><li>shard-mtl=
p: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_134124v1/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9809">i915#9809</a>)</li></ul></li><li><p>igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions:</p><ul><li>shard-mtlp: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/=
shard-mtlp-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-tra=
nsitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4213">i915#4213</a>)</li><li>shard-rkl: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl=
-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4103">i915#4103</a>)</li></ul></li><li><p>igt@kms_dirtyfb@drrs-dirty=
fb-ioctl:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-2/igt@kms_dirtyfb@drrs-d=
irtyfb-ioctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9723">i915#9723</a>) +1 other test skip</li></ul></li>=
<li><p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p><ul><li>shard-dg2: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
134124v1/shard-dg2-2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
227">i915#9227</a>)</li></ul></li><li><p>igt@kms_dither@fb-8bpc-vs-panel-6b=
pc@pipe-a-hdmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-1/igt@kms_dith=
er@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li><=
/ul></li><li><p>igt@kms_dsc@dsc-with-formats:</p><ul><li>shard-dg1: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v=
1/shard-dg1-18/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i91=
5#3840</a>)</li></ul></li><li><p>igt@kms_fbcon_fbt@psr:</p><ul><li>shard-rk=
l: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_134124v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)<=
/li></ul></li><li><p>igt@kms_feature_discovery@chamelium:</p><ul><li>shard-=
dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_134124v1/shard-dg2-4/igt@kms_feature_discovery@chamelium.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854"=
>i915#4854</a>)</li></ul></li><li><p>igt@kms_feature_discovery@display-2x:<=
/p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_feature_discovery@displa=
y-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1839">i915#1839</a>)</li></ul></li><li><p>igt@kms_feature_disc=
overy@dp-mst:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-6/igt@kms_feature_di=
scovery@dp-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9337">i915#9337</a>)</li></ul></li><li><p>igt@kms_fe=
ature_discovery@psr2:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-tglu-7/igt@kms_=
feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li></ul></li><li><p>igt@=
kms_flip@2x-modeset-vs-vblank-race:</p><ul><li>shard-tglu: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-t=
glu-7/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +=
2 other tests skip</li></ul></li><li><p>igt@kms_flip@2x-plain-flip-fb-recre=
ate:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@kms_flip@2x-plain-fli=
p-fb-recreate.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3637">i915#3637</a>) +1 other test skip</li></ul></li=
><li><p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscal=
ing@pipe-a-valid-mode:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@kms_f=
lip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-=
mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2672">i915#2672</a>) +3 other tests skip</li></ul></li><li><p>=
igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling=
@pipe-a-valid-mode:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@kms_flip=
_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-vali=
d-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2672">i915#2672</a>) +2 other tests skip</li></ul></li><li><=
p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-=
a-default-mode:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@kms_flip_s=
caled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8810">i915#8810</a>)</li></ul></li><li><p>igt@kms_flip_scaled_crc@fl=
ip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p><ul><li>shard=
-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_134124v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16b=
pp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672=
</a>)</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bp=
p-ytilegen12rcccs-upscaling@pipe-a-default-mode:</p><ul><li>shard-mtlp: NOT=
RUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134=
124v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytileg=
en12rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>)</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-c=
ur-indfb-draw-mmap-gtt:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms=
_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"=
>i915#8708</a>) +1 other test skip</li></ul></li><li><p>igt@kms_frontbuffer=
_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p><ul><li>shard-rkl: NOT=
RUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134=
124v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-dr=
aw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/1825">i915#1825</a>) +39 other tests skip</li></ul></li>=
<li><p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:<=
/p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +7 other =
tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offs=
cren-pri-shrfb-draw-blt:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@kms=
_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i=
915#3458</a>) +13 other tests skip</li></ul></li><li><p>igt@kms_frontbuffer=
_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-wc:</p><ul><li>shard-rkl: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
134124v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-sh=
rfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3023">i915#3023</a>) +20 other tests skip</li></ul=
></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-plflip-b=
lt:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_frontbuffer_tracking=
@fbcpsr-2p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +31 other=
 tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-farfro=
mfence-mmap-gtt:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-7/igt@kms_frontbu=
ffer_tracking@fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +16=
 other tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-=
tiling-y:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_frontbuffer_tr=
acking@fbcpsr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/10055">i915#10055</a>)</li></ul></li><li><p>=
igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-render:</p><ul>=
<li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_134124v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-o=
ffscren-pri-indfb-draw-render.html">SKIP</a> +18 other tests skip</li></ul>=
</li><li><p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:<=
/p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_frontbuffer_tracking@ps=
r-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests =
skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-render:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@kms_front=
buffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#1=
0433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3458">i915#3458</a>)</li></ul></li><li><p>igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p><ul><li>shard-mtlp: NOTRUN -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/sha=
rd-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8708">i915#8708</a>) +3 other tests skip</li></ul></li><li><p>i=
gt@kms_hdr@bpc-switch-dpms:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@=
kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other=
 test skip</li></ul></li><li><p>igt@kms_hdr@bpc-switch-suspend:</p><ul><li>=
shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_134124v1/shard-tglu-7/igt@kms_hdr@bpc-switch-suspend.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
55">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8228">i915#8228</a>)</li></ul></li><li><p>igt@kms_hdr@static-to=
ggle:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@kms_hdr@static-toggle.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/8228">i915#8228</a>) +2 other tests skip</li></ul></l=
i><li><p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p=
><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_134124v1/shard-glk7/igt@kms_plane_alpha_blend@alpha-tra=
nsparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fa=
il</li></ul></li><li><p>igt@kms_plane_multiple@tiling-yf:</p><ul><li>shard-=
rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_134124v1/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i9=
15#3555</a>) +5 other tests skip</li><li>shard-mtlp: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-=
3/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806">i915#8806</a=
>)</li></ul></li><li><p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdm=
i-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-1/igt@kms_plane_scaling@int=
el-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8292">i915#8292</a>)</li></ul></li>=
<li><p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@=
pipe-b-hdmi-a-3:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-6/igt@kms_plane_s=
caling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9423">i915#9423</a>) +11 other tests skip</li></ul></li><li><p>igt@kms_pl=
ane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:</p><u=
l><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscal=
e-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +11=
 other tests skip</li></ul></li><li><p>igt@kms_plane_scaling@plane-scaler-u=
nity-scaling-with-rotation@pipe-b-hdmi-a-1:</p><ul><li>shard-rkl: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/=
shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@=
pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9423">i915#9423</a>) +7 other tests skip</li></ul><=
/li><li><p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotati=
on@pipe-b-hdmi-a-2:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-1/igt@kms_plan=
e_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5176">i915#5176</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9423">i915#9423</a>) +1 other test skip</li></ul></li><li=
><p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@=
pipe-b-hdmi-a-1:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-4/igt@kms_plane_s=
caling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/5235">i915#5235</a>) +5 other tests skip</li></ul></li><li><p>igt@kms_=
plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:</p><ul><li>shar=
d-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-=
0-25@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5235">i915#5235</a>) +3 other tests skip</li><=
/ul></li><li><p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor=
-0-25:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-11/igt@kms_plane_scaling@pl=
anes-upscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9=
423</a>) +1 other test skip</li></ul></li><li><p>igt@kms_plane_scaling@plan=
es-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:</p><ul><li>shard-mtlp: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
134124v1/shard-mtlp-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-=
factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/5235">i915#5235</a>) +2 other tests skip</l=
i></ul></li><li><p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-fac=
tor-0-5@pipe-d-edp-1:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@kms_=
plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-edp-1.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5235">i915#5235</a>)</li></ul></li><li><p>igt@kms_plane_sca=
ling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:</p><=
ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_134124v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale=
-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235">i915#5235=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
423">i915#9423</a>) +19 other tests skip</li></ul></li><li><p>igt@kms_pm_ba=
cklight@bad-brightness:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms=
_pm_backlight@bad-brightness.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li></ul></li><li=
><p>igt@kms_pm_dc@dc6-dpms:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-7/igt@=
kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5978">i915#5978</a>)</li></ul></li><li><p>igt@km=
s_pm_dc@dc6-psr:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_pm_dc@d=
c6-psr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9685">i915#9685</a>)</li></ul></li><li><p>igt@kms_pm_rpm@dpm=
s-mode-unset-non-lpsp:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@kms_p=
m_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>)</li><li>shard-r=
kl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-=
rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-4=
/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +2 ot=
her tests skip</li></ul></li><li><p>igt@kms_pm_rpm@modeset-non-lpsp-stress-=
no-wait:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-5/igt@kms_pm_rpm@modeset-=
non-lpsp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li=
><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_134124v1/shard-mtlp-3/igt@kms_pm_rpm@modeset-non-lpsp-stre=
ss-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9519">i915#9519</a>)</li></ul></li><li><p>igt@kms_psr2_s=
f@fbc-cursor-plane-move-continuous-exceed-sf:</p><ul><li>shard-dg2: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v=
1/shard-dg2-7/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf.ht=
ml">SKIP</a> +50 other tests skip</li></ul></li><li><p>igt@kms_psr2_su@page=
_flip-p010:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-5/igt@kms_psr2_su@page=
_flip-p010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9683">i915#9683</a>)</li><li>shard-mtlp: NOTRUN -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-=
mtlp-3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/4348">i915#4348</a>)</li></ul=
></li><li><p>igt@kms_psr@fbc-pr-primary-render:</p><ul><li>shard-dg2: NOTRU=
N -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13412=
4v1/shard-dg2-4/igt@kms_psr@fbc-pr-primary-render.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
732">i915#9732</a>) +17 other tests skip</li></ul></li><li><p>igt@kms_psr@f=
bc-psr2-sprite-blt:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_psr=
@fbc-psr2-sprite-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other te=
sts skip</li></ul></li><li><p>igt@kms_psr@pr-cursor-mmap-gtt:</p><ul><li>sh=
ard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_134124v1/shard-tglu-7/igt@kms_psr@pr-cursor-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732=
">i915#9732</a>) +3 other tests skip</li></ul></li><li><p>igt@kms_psr@pr-cu=
rsor-plane-move:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-mtlp-3/igt@kms_psr@p=
r-cursor-plane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9688">i915#9688</a>) +2 other tests skip</li></=
ul></li><li><p>igt@kms_psr@pr-sprite-mmap-gtt:</p><ul><li>shard-rkl: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124=
v1/shard-rkl-2/igt@kms_psr@pr-sprite-mmap-gtt.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i=
915#9732</a>) +18 other tests skip</li></ul></li><li><p>igt@kms_psr_stress_=
test@invalidate-primary-flip-overlay:</p><ul><li>shard-rkl: NOTRUN -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-=
rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685"=
>i915#9685</a>)</li></ul></li><li><p>igt@kms_rotation_crc@primary-4-tiled-r=
eflect-x-0:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-tglu-7/igt@kms_rotation_c=
rc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li></ul></li><=
li><p>igt@kms_rotation_crc@primary-rotation-270:</p><ul><li>shard-dg2: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235">i9=
15#4235</a>) +1 other test skip</li></ul></li><li><p>igt@kms_rotation_crc@p=
rimary-yf-tiled-reflect-x-0:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-6/igt=
@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)=
</li></ul></li><li><p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p><u=
l><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_134124v1/shard-dg1-18/igt@kms_scaling_modes@scaling-mode-f=
ull-aspect.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li></ul></li><l=
i><p>igt@kms_setmode@basic-clone-single-crtc:</p><ul><li>shard-dg2: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v=
1/shard-dg2-8/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>) +4 other tests skip</li></ul></li><li><p>igt@kms_tiled_display@basi=
c-test-pattern-with-chamelium:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4=
/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915=
#8623</a>)</li></ul></li><li><p>igt@kms_universal_plane@cursor-fb-leak@pipe=
-b-hdmi-a-1:</p><ul><li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14831/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@=
pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_134124v1/shard-snb7/igt@kms_universal_plane@cursor-=
fb-leak@pipe-b-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9196">i915#9196</a>) +1 other test fail</li=
></ul></li><li><p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p><=
ul><li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14831/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-d-=
edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9196">i915#9196</a>)</li></ul></li><li><p>igt@kms_vrr@flip-ba=
sic-fastset:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@kms_vrr@flip-ba=
sic-fastset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9906">i915#9906</a>)</li></ul></li><li><p>igt@kms_vrr@n=
egative-basic:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@kms_vrr@negat=
ive-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li></ul></li><li><p>i=
gt@kms_writeback@writeback-check-output:</p><ul><li>shard-glk: NOTRUN -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/sha=
rd-glk6/igt@kms_writeback@writeback-check-output.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a=
>)</li></ul></li><li><p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p><=
ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_134124v1/shard-rkl-5/igt@kms_writeback@writeback-fb-id-xr=
gb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li><li>shard-mtlp: NO=
TRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
4124v1/shard-mtlp-3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2=
437">i915#2437</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9412">i915#9412</a>)</li></ul></li><li><p>igt@kms_writeback@wr=
iteback-invalid-parameters:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-tglu-7/ig=
t@kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437">i915#2437</a>)</=
li></ul></li><li><p>igt@perf@oa-exponents:</p><ul><li>shard-dg2: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/s=
hard-dg2-11/igt@perf@oa-exponents.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/5608">i915#5608</a>) +6 other tes=
ts skip</li></ul></li><li><p>igt@perf@per-context-mode-unprivileged:</p><ul=
><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_134124v1/shard-rkl-2/igt@perf@per-context-mode-unprivileged=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2435">i915#2435</a>)</li></ul></li><li><p>igt@perf@polling@0-rcs0:=
</p><ul><li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14831/shard-dg1-13/igt@perf@polling@0-rcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg=
1-18/igt@perf@polling@0-rcs0.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/10538">i915#10538</a>)</li></ul></li><=
li><p>igt@perf@unprivileged-single-ctx-counters:</p><ul><li>shard-rkl: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1341=
24v1/shard-rkl-2/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i9=
15#2433</a>)</li></ul></li><li><p>igt@perf_pmu@cpu-hotplug:</p><ul><li>shar=
d-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-dg2-8/igt@perf_pmu@cpu-hotplug.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850">i915#885=
0</a>)</li></ul></li><li><p>igt@perf_pmu@most-busy-idle-check-all@rcs0:</p>=
<ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14831/shard-rkl-5/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134=
124v1/shard-rkl-1/igt@perf_pmu@most-busy-idle-check-all@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">=
i915#4349</a>)</li></ul></li><li><p>igt@prime_vgem@basic-fence-mmap:</p><ul=
><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_134124v1/shard-dg2-2/igt@prime_vgem@basic-fence-mmap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4077">i915#4077</a>)</li></ul></li><li><p>igt@prime_vgem@fe=
nce-read-hang:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@prime_vgem@fe=
nce-read-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3708">i915#3708</a>)</li></ul></li><li><p>igt@sriov_b=
asic@bind-unbind-vf:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@sriov_b=
asic@bind-unbind-vf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li></ul></li><li><p>igt@s=
riov_basic@enable-vfs-autoprobe-on:</p><ul><li>shard-rkl: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rk=
l-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</l=
i></ul></li><li><p>igt@syncobj_wait@invalid-wait-zero-handles:</p><ul><li>s=
hard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_134124v1/shard-dg2-2/igt@syncobj_wait@invalid-wait-zero-handles.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9779">i915#9779</a>)</li></ul></li><li><p>igt@v3d/v3d_submit_cl@mult=
i-and-single-sync:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@v3d/v3d_=
submit_cl@multi-and-single-sync.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +2 other tests=
 skip</li></ul></li><li><p>igt@v3d/v3d_submit_csd@bad-extension:</p><ul><li=
>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_134124v1/shard-mtlp-3/igt@v3d/v3d_submit_csd@bad-extension.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/2575">i915#2575</a>) +2 other tests skip</li></ul></li><li><p>igt@v3d/=
v3d_submit_csd@multi-and-single-sync:</p><ul><li>shard-tglu: NOTRUN -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard=
-tglu-7/igt@v3d/v3d_submit_csd@multi-and-single-sync.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#257=
5</a>) +4 other tests skip</li></ul></li><li><p>igt@vc4/vc4_purgeable_bo@ma=
rk-unpurgeable-check-retained:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-6=
/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711">i91=
5#7711</a>) +7 other tests skip</li></ul></li><li><p>igt@vc4/vc4_purgeable_=
bo@mark-willneed:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@vc4/vc4_p=
urgeable_bo@mark-willneed.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7711">i915#7711</a>) +1 other test skip</=
li></ul></li><li><p>igt@vc4/vc4_tiling@set-bad-flags:</p><ul><li>shard-mtlp=
: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_134124v1/shard-mtlp-3/igt@vc4/vc4_tiling@set-bad-flags.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711">i915=
#7711</a>) +1 other test skip</li></ul></li><li><p>igt@vc4/vc4_tiling@set-b=
ad-modifier:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-11/igt@vc4/vc4_tiling=
@set-bad-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/7711">i915#7711</a>) +7 other tests skip</li></ul=
></li></ul><h4>Possible fixes</h4><ul><li><p>igt@gem_ctx_exec@basic-nohangc=
heck:</p><ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14831/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
68">i915#6268</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_134124v1/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html">P=
ASS</a></li></ul></li><li><p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p><ul=
><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14831/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_134124v1/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a></li></ul></li><li><p>igt@gem_lmem_swapping@basic@lmem0:</p><ul><li>shar=
d-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/sha=
rd-dg2-7/igt@gem_lmem_swapping@basic@lmem0.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378">i915#10378</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1=
/shard-dg2-6/igt@gem_lmem_swapping@basic@lmem0.html">PASS</a> +1 other test=
 pass</li></ul></li><li><p>igt@i915_module_load@reload-with-fault-injection=
:</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14831/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9820">i915#9820</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9849">i915#9849</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2=
-7/igt@i915_module_load@reload-with-fault-injection.html">PASS</a></li></ul=
></li><li><p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p><ul><li>shard-=
dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard=
-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591">i915#3591=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
34124v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html">PASS=
</a></li></ul></li><li><p>igt@kms_flip@plain-flip-fb-recreate@a-vga1:</p><u=
l><li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_14831/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122">=
i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_134124v1/shard-snb6/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html=
">PASS</a> +1 other test pass</li></ul></li><li><p>igt@kms_pm_rpm@modeset-l=
psp:</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_14831/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519">i915=
#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_134124v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a></li></u=
l></li><li><p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p><u=
l><li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14831/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9196">i915#9196</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_134124v1/shard-tglu-8/igt@kms_universal_plane@cursor=
-fb-leak@pipe-a-hdmi-a-1.html">PASS</a></li></ul></li></ul><h4>Warnings</h4=
><ul><li><p>igt@device_reset@unbind-reset-rebind:</p><ul><li>shard-dg1: <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-dg1-13/=
igt@device_reset@unbind-reset-rebind.html">ABORT</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/11164">i915#11164</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shar=
d-dg1-18/igt@device_reset@unbind-reset-rebind.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9408">i915#9408=
</a>)</li></ul></li><li><p>igt@gem_create@create-ext-cpu-access-big:</p><ul=
><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14831/shard-dg2-8/igt@gem_create@create-ext-cpu-access-big.html">ABORT</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9846">i=
915#9846</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_134124v1/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9364">i915#9364</a>)</li></ul></li><li><p>igt@i915_module_load@relo=
ad-with-fault-injection:</p><ul><li>shard-dg1: <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-dg1-13/igt@i915_module_load@relo=
ad-with-fault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9820">i915#9820</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg1-18/igt@i9=
15_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849=
">i915#9849</a>)</li></ul></li><li><p>igt@kms_content_protection@mei-interf=
ace:</p><ul><li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_14831/shard-dg1-13/igt@kms_content_protection@mei-interface.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9433">i915#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_134124v1/shard-dg1-16/igt@kms_content_protection@mei-inte=
rface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9424">i915#9424</a>)</li></ul></li><li><p>igt@kms_frontbuffer=
_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:</p><ul><li>shard-dg2: <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-dg2-1=
0/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3458">i915#3458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_134124v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr=
-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458=
</a>)</li></ul></li><li><p>igt@kms_multipipe_modeset@basic-max-pipe-crc-che=
ck:</p><ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_14831/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-ch=
eck.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-rkl-3/igt@kms_multip=
ipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li></ul>=
</li><li><p>igt@kms_psr@fbc-psr-primary-mmap-gtt:</p><ul><li>shard-dg2: <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-dg2-11/=
igt@kms_psr@fbc-psr-primary-mmap-gtt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673">i915#9673=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_134124v1/shard-dg2-7/igt@kms_psr@fbc-psr-primary-mmap-gtt.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li></ul></li><li=
><p>igt@perf@non-zero-reason@0-rcs0:</p><ul><li>shard-dg2: <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14831/shard-dg2-8/igt@perf@non-z=
ero-reason@0-rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/7484">i915#7484</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_134124v1/shard-dg2-8/igt@perf@non-z=
ero-reason@0-rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9100">i915#9100</a>)</li></ul></li></ul><h2>Build=
 changes</h2><ul><li>Linux: CI_DRM_14831 -&gt; Patchwork_134124v1</li></ul>=
<p>CI-20190529: 20190529<br> CI_DRM_14831: 5ba74aaea55bf295898f2a4f69c59fe1=
2e84e842 @ git://anongit.freedesktop.org/gfx-ci/linux<br> IGT_7872: baba998=
8c34c55977332044f3521cfbba80ca630 @ https://gitlab.freedesktop.org/drm/igt-=
gpu-tools.git<br> Patchwork_134124v1: 5ba74aaea55bf295898f2a4f69c59fe12e84e=
842 @ git://anongit.freedesktop.org/gfx-ci/linux<br> piglit_4509: fdc5a4ca1=
1124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p><=
/blockquote><div><br></div><div><span></span></div></body></html>

--=-lLjnWggKBZt9Q1dzvW2K--
