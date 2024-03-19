Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 314D887FCAC
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 12:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03D010F9DB;
	Tue, 19 Mar 2024 11:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1772 seconds by postgrey-1.36 at gabe;
 Tue, 19 Mar 2024 11:16:03 UTC
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0365C10F9DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Mar 2024 11:16:02 +0000 (UTC)
Received: from 91-156-7-239.elisa-laajakaista.fi ([91.156.7.239]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1rmWz9-00000002TrV-3aSi; Tue, 19 Mar 2024 12:46:26 +0200
Message-ID: <7eb4daed46a34f4f033a7b8dac6cb4f485e108b4.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Date: Tue, 19 Mar 2024 12:46:12 +0200
In-Reply-To: <171045821170.794417.173081501593313116@8e613ede5ea5>
References: <20240314065221.1181158-1-luciano.coelho@intel.com>
 <171045821170.794417.173081501593313116@8e613ede5ea5>
Content-Type: multipart/alternative; boundary="=-25yNLIAhaxTupZEEJ6rB"
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_MESSAGE,TVD_RCVD_IP,URIBL_BLOCKED autolearn=ham
 autolearn_force=no version=4.0.0
Subject: Re: =?UTF-8?Q?=E2=9C=97?= Fi.CI.IGT: failure for drm/xe/display:
 fix type of intel_uncore_read*() functions
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

--=-25yNLIAhaxTupZEEJ6rB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

FTR, this failure is not related to my patch. =C2=A0It seems to be happenin=
g
sporadically on this machine.

--
Cheers,
Luca.

On Thu, 2024-03-14 at 23:16 +0000, Patchwork wrote:
> Patch Details
> Series:drm/xe/display: fix type of intel_uncore_read*() functions
> URL:https://patchwork.freedesktop.org/series/131122/
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/index.html
> CI Bug Log - changes from CI_DRM_14429_full -> Patchwork_131122v1_fullSum=
maryFAILURE
> Serious unknown changes coming with Patchwork_131122v1_full
> absolutely need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_131122v1_full, please notify your bug team
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (9 -> 8)Missing (1): shard-snb-0=20
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_131122v1_full:
> IGT changesPossible regressions * igt@kms_flip@2x-flip-vs-blocking-wf-vbl=
ank@ab-vga1-hdmi-a1:shard-
>    snb: PASS -> ABORT
> Known issuesHere are the changes found in Patchwork_131122v1_full that co=
me from
> known issues:
> IGT changesIssues hit * igt@api_intel_bb@blit-reloc-purge-cache:shard-dg2=
: NOTRUN -> SKIP
>    (i915#8411)
>  * igt@debugfs_test@basic-hwmon:shard-mtlp: NOTRUN -> SKIP (i915#9318)
>  * igt@drm_fdinfo@busy-hang@rcs0:shard-mtlp: NOTRUN -> SKIP (i915#8414)
>    +5 other tests skip
>  * igt@drm_fdinfo@most-busy-idle-check-all@vecs1:shard-dg2: NOTRUN ->
>    SKIP (i915#8414) +19 other tests skip
>  * igt@drm_fdinfo@virtual-idle:shard-rkl: PASS -> FAIL (i915#7742) +2
>    other tests fail
>  * igt@gem_basic@multigpu-create-close:shard-tglu: NOTRUN -> SKIP
>    (i915#7697) +1 other test skip
>  * igt@gem_busy@semaphore:shard-mtlp: NOTRUN -> SKIP (i915#3936)
>  * igt@gem_close_race@multigpu-basic-threads:shard-dg2: NOTRUN -> SKIP
>    (i915#7697)
>  * igt@gem_create@create-ext-set-pat:shard-dg1: NOTRUN -> SKIP
>    (i915#8562)
>  * igt@gem_ctx_exec@basic-nohangcheck:shard-tglu: PASS -> FAIL
>    (i915#6268)
>  * igt@gem_ctx_persistence@file:shard-snb: NOTRUN -> SKIP (i915#1099)
>    +1 other test skip
>  * igt@gem_ctx_persistence@heartbeat-hang:shard-dg2: NOTRUN -> SKIP
>    (i915#8555)
>  * igt@gem_ctx_sseu@mmap-args:shard-dg1: NOTRUN -> SKIP (i915#280)
>  * igt@gem_eio@unwedge-stress:shard-snb: NOTRUN -> FAIL (i915#8898)
>  * igt@gem_exec_balancer@bonded-dual:shard-mtlp: NOTRUN -> SKIP
>    (i915#4771) +1 other test skip
>  * igt@gem_exec_capture@many-4k-zero:shard-dg2: NOTRUN -> FAIL
>    (i915#9606)
>  * igt@gem_exec_fair@basic-none-share:shard-dg2: NOTRUN -> SKIP
>    (i915#3539 / i915#4852) +2 other tests skip
>  * igt@gem_exec_fair@basic-none-solo@rcs0:shard-rkl: PASS -> FAIL
>    (i915#2842)
>  * igt@gem_exec_fair@basic-pace:shard-mtlp: NOTRUN -> SKIP (i915#4473 /
>    i915#4771)
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:shard-glk: NOTRUN -> FAIL
>    (i915#2842)
>  * igt@gem_exec_fence@submit3:shard-dg2: NOTRUN -> SKIP (i915#4812) +1
>    other test skip
>  * igt@gem_exec_flush@basic-uc-ro-default:shard-dg1: NOTRUN -> SKIP
>    (i915#3539 / i915#4852) +1 other test skip
>  * igt@gem_exec_gttfill@multigpu-basic:shard-mtlp: NOTRUN -> SKIP
>    (i915#7697)shard-dg1: NOTRUN -> SKIP (i915#7697)
>  * igt@gem_exec_reloc@basic-gtt-cpu-active:shard-dg2: NOTRUN -> SKIP
>    (i915#3281) +4 other tests skip
>  * igt@gem_exec_reloc@basic-gtt-noreloc:shard-mtlp: NOTRUN -> SKIP
>    (i915#3281) +4 other tests skip
>  * igt@gem_exec_reloc@basic-scanout:shard-dg1: NOTRUN -> SKIP
>    (i915#3281) +3 other tests skip
>  * igt@gem_exec_schedule@preempt-queue:shard-dg2: NOTRUN -> SKIP
>    (i915#4537 / i915#4812)
>  * igt@gem_exec_schedule@preempt-queue-contexts-chain:shard-mtlp:
>    NOTRUN -> SKIP (i915#4537 / i915#4812) +1 other test skip
>  * igt@gem_exec_schedule@semaphore-power:shard-dg1: NOTRUN -> SKIP
>    (i915#4812) +1 other test skip
>  * igt@gem_fence_thrash@bo-write-verify-threaded-none:shard-dg1: NOTRUN
>    -> SKIP (i915#4860) +1 other test skip
>  * igt@gem_lmem_swapping@heavy-multi:shard-tglu: NOTRUN -> SKIP
>    (i915#4613) +1 other test skip
>  * igt@gem_lmem_swapping@heavy-random@lmem0:shard-dg1: NOTRUN -> FAIL
>    (i915#10378)
>  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:shard-mtlp: NOTRUN ->
>    SKIP (i915#4613) +3 other tests skip
>  * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:shard-dg2: PASS ->
>    FAIL (i915#10378)
>  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:shard-dg1:
>    NOTRUN -> SKIP (i915#4565)
>  * igt@gem_lmem_swapping@verify-random-ccs:shard-glk: NOTRUN -> SKIP
>    (i915#4613)
>  * igt@gem_media_vme:shard-dg2: NOTRUN -> SKIP (i915#284)
>  * igt@gem_mmap@basic-small-bo:shard-mtlp: NOTRUN -> SKIP (i915#4083)
>    +3 other tests skip
>  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:shard-dg2: NOTRUN -> SKIP
>    (i915#4077) +6 other tests skip
>  * igt@gem_mmap_gtt@fault-concurrent-x:shard-dg1: NOTRUN -> SKIP
>    (i915#4077) +1 other test skip
>  * igt@gem_mmap_wc@bad-object:shard-dg2: NOTRUN -> SKIP (i915#4083) +3
>    other tests skip
>  * igt@gem_partial_pwrite_pread@reads:shard-dg2: NOTRUN -> SKIP
>    (i915#3282) +3 other tests skip
>  * igt@gem_pwrite@basic-exhaustion:shard-glk: NOTRUN -> WARN
>    (i915#2658)
>  * igt@gem_pxp@create-regular-context-1:shard-mtlp: NOTRUN -> SKIP
>    (i915#4270)
>  * igt@gem_pxp@display-protected-crc:shard-dg1: NOTRUN -> SKIP
>    (i915#4270)
>  * igt@gem_pxp@reject-modify-context-protection-off-3:shard-snb: NOTRUN
>    -> SKIP +136 other tests skip
>  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:shard-tglu:
>    NOTRUN -> SKIP (i915#4270)
>  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:shard-dg2:
>    NOTRUN -> SKIP (i915#4270)
>  * igt@gem_readwrite@read-write:shard-mtlp: NOTRUN -> SKIP (i915#3282)
>    +4 other tests skip
>  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:shard-dg2: NOTRUN -> SKIP
>    (i915#5190) +4 other tests skip
>  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:shard-mtlp: NOTRUN
>    -> SKIP (i915#8428) +5 other tests skip
>  * igt@gem_set_tiling_vs_gtt:shard-dg1: NOTRUN -> SKIP (i915#4079)
>  * igt@gem_tiled_pread_pwrite:shard-dg2: NOTRUN -> SKIP (i915#4079)
>  * igt@gem_tiled_wb:shard-mtlp: NOTRUN -> SKIP (i915#4077) +5 other
>    tests skip
>  * igt@gem_userptr_blits@access-control:shard-dg2: NOTRUN -> SKIP
>    (i915#3297)
>  * igt@gem_userptr_blits@readonly-unsync:shard-dg1: NOTRUN -> SKIP
>    (i915#3297)
>  * igt@gem_userptr_blits@sd-probe:shard-dg2: NOTRUN -> SKIP (i915#3297
>    / i915#4958)
>  * igt@gem_userptr_blits@unsync-overlap:shard-mtlp: NOTRUN -> SKIP
>    (i915#3297) +3 other tests skip
>  * igt@gen3_render_linear_blits:shard-mtlp: NOTRUN -> SKIP +17 other
>    tests skip
>  * igt@gen9_exec_parse@basic-rejected:shard-dg2: NOTRUN -> SKIP
>    (i915#2856) +1 other test skip
>  * igt@gen9_exec_parse@bb-start-cmd:shard-mtlp: NOTRUN -> SKIP
>    (i915#2856) +2 other tests skip
>  * igt@i915_module_load@load:shard-glk: NOTRUN -> SKIP
>    (i915#6227)shard-dg2: NOTRUN -> SKIP (i915#6227)
>  * igt@i915_module_load@reload-with-fault-injection:shard-dg2: NOTRUN -
>    > ABORT (i915#9820)
>  * igt@i915_pm_freq_api@freq-reset:shard-tglu: NOTRUN -> SKIP
>    (i915#8399)
>  * igt@i915_pm_rps@reset:shard-mtlp: NOTRUN -> FAIL (i915#8346)
>  * igt@i915_pm_rps@thresholds-idle@gt0:shard-dg1: NOTRUN -> SKIP
>    (i915#8925)
>  * igt@i915_pm_sseu@full-enable:shard-mtlp: NOTRUN -> SKIP (i915#8437)
>  * igt@i915_selftest@live@workarounds:shard-dg2: PASS -> DMESG-FAIL
>    (i915#9500)
>  * igt@i915_suspend@basic-s3-without-i915:shard-tglu: NOTRUN ->
>    INCOMPLETE (i915#7443)
>  * igt@intel_hwmon@hwmon-write:shard-mtlp: NOTRUN -> SKIP (i915#7707)
>  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:shard-mtlp: NOTRUN ->
>    SKIP (i915#4212) +2 other tests skip
>  * igt@kms_addfb_basic@clobberred-modifier:shard-dg1: NOTRUN -> SKIP
>    (i915#4212) +1 other test skip
>  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:shard-dg2: NOTRUN ->
>    SKIP (i915#4212) +1 other test skip
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-
>    2-y-rc-ccs-cc:shard-rkl: NOTRUN -> SKIP (i915#8709) +3 other tests
>    skip
>  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-
>    3-4-mc-ccs:shard-dg2: NOTRUN -> SKIP (i915#8709) +11 other tests
>    skip
>  * igt@kms_atomic_transition@plane-all-modeset-transition:shard-mtlp:
>    NOTRUN -> SKIP (i915#1769 / i915#3555)
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:shard-dg1:
>    NOTRUN -> SKIP (i915#4538 / i915#5286)
>  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-
>    flip:shard-tglu: NOTRUN -> SKIP (i915#5286)
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:shard-mtlp: PASS
>    -> FAIL (i915#5138)
>  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:shard-dg1: NOTRUN -> SKIP
>    (i915#3638)
>  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-
>    flip:shard-dg2: NOTRUN -> SKIP (i915#4538 / i915#5190) +6 other
>    tests skip
>  * igt@kms_big_fb@yf-tiled-addfb:shard-mtlp: NOTRUN -> SKIP (i915#6187)
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-
>    flip:shard-dg1: NOTRUN -> SKIP (i915#4538)
>  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:shard-
>    dg1: NOTRUN -> SKIP (i915#6095) +51 other tests skip
>  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-
>    1:shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#10434) +15 other
>    tests skip
>  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-
>    2:shard-rkl: NOTRUN -> SKIP (i915#6095) +49 other tests skip
>  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-
>    1:shard-mtlp: NOTRUN -> SKIP (i915#6095) +35 other tests skip
>  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:shard-tglu:
>    NOTRUN -> SKIP (i915#6095) +15 other tests skip
>  * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:shard-
>    dg2: NOTRUN -> SKIP (i915#10307) +127 other tests skip
>  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:shard-dg2: NOTRUN ->
>    SKIP (i915#7213) +3 other tests skip
>  * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:shard-dg2: NOTRUN -> SKIP
>    (i915#4087) +3 other tests skip
>  * igt@kms_chamelium_edid@hdmi-edid-read:shard-dg1: NOTRUN -> SKIP
>    (i915#7828) +1 other test skip
>  * igt@kms_chamelium_frames@dp-crc-fast:shard-dg2: NOTRUN -> SKIP
>    (i915#7828) +6 other tests skip
>  * igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:shard-mtlp:
>    NOTRUN -> SKIP (i915#7828) +4 other tests skip
>  * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:shard-tglu: NOTRUN ->
>    SKIP (i915#7828) +2 other tests skip
>  * igt@kms_content_protection@dp-mst-type-0:shard-dg2: NOTRUN -> SKIP
>    (i915#3299)
>  * igt@kms_content_protection@dp-mst-type-1:shard-mtlp: NOTRUN -> SKIP
>    (i915#3299)
>  * igt@kms_content_protection@type1:shard-mtlp: NOTRUN -> SKIP
>    (i915#3555 / i915#6944 / i915#9424)
>  * igt@kms_cursor_crc@cursor-offscreen-32x10:shard-dg2: NOTRUN -> SKIP
>    (i915#3555) +2 other tests skip
>  * igt@kms_cursor_crc@cursor-offscreen-32x32:shard-dg1: NOTRUN -> SKIP
>    (i915#3555)
>  * igt@kms_cursor_crc@cursor-onscreen-32x10:shard-mtlp: NOTRUN -> SKIP
>    (i915#3555 / i915#8814)
>  * igt@kms_cursor_crc@cursor-onscreen-512x170:shard-mtlp: NOTRUN ->
>    SKIP (i915#3359)
>  * igt@kms_cursor_crc@cursor-rapid-movement-128x42:shard-mtlp: NOTRUN -
>    > SKIP (i915#8814)
>  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:shard-mtlp: NOTRUN ->
>    SKIP (i915#9809) +3 other tests skip
>  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:shard-
>    mtlp: NOTRUN -> SKIP (i915#4213) +1 other test skip
>  * igt@kms_cursor_legacy@torture-move@pipe-a:shard-dg1: PASS -> DMESG-
>    WARN (i915#10166)
>  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:shard-dg1: NOTRUN ->
>    SKIP (i915#9723)
>  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:shard-rkl:
>    NOTRUN -> SKIP (i915#3804)
>  * igt@kms_draw_crc@draw-method-mmap-gtt:shard-dg2: NOTRUN -> SKIP
>    (i915#8812)
>  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:shard-dg2: NOTRUN -> SKIP
>    (i915#3840)
>  * igt@kms_dsc@dsc-with-output-formats:shard-mtlp: NOTRUN -> SKIP
>    (i915#3555 / i915#3840)
>  * igt@kms_feature_discovery@psr1:shard-dg2: NOTRUN -> SKIP (i915#658)
>  * igt@kms_feature_discovery@psr2:shard-dg1: NOTRUN -> SKIP (i915#658)
>  * igt@kms_flip@2x-flip-vs-expired-vblank:shard-tglu: NOTRUN -> SKIP
>    (i915#3637)
>  * igt@kms_flip@2x-modeset-vs-vblank-race:shard-dg1: NOTRUN -> SKIP
>    (i915#9934) +3 other tests skip
>  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:shard-mtlp:
>    NOTRUN -> SKIP (i915#3637) +6 other tests skip
>  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:shard-snb: PASS ->
>    FAIL (i915#2122) +1 other test fail
>  * igt@kms_flip@flip-vs-fences:shard-dg2: NOTRUN -> SKIP (i915#8381)
>  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>    downscaling@pipe-a-default-mode:shard-mtlp: NOTRUN -> SKIP
>    (i915#2672) +3 other tests skip
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-
>    downscaling@pipe-a-default-mode:shard-mtlp: NOTRUN -> SKIP
>    (i915#2672 / i915#3555)
>  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>    downscaling@pipe-a-valid-mode:shard-dg2: NOTRUN -> SKIP (i915#2672)
>    +2 other tests skip
>  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>    downscaling@pipe-a-valid-mode:shard-dg1: NOTRUN -> SKIP (i915#2587 /
>    i915#2672)
>  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>    upscaling@pipe-a-valid-mode:shard-tglu: NOTRUN -> SKIP (i915#2587 /
>    i915#2672)
>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-
>    blt:shard-mtlp: NOTRUN -> SKIP (i915#1825) +27 other tests skip
>  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:shard-
>    dg2: NOTRUN -> SKIP (i915#5354) +26 other tests skip
>  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:shard-dg2:
>    NOTRUN -> SKIP (i915#8708) +6 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-
>    pwrite:shard-dg2: NOTRUN -> SKIP (i915#3458) +8 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-
>    gtt:shard-glk: NOTRUN -> SKIP +176 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-
>    gtt:shard-dg1: NOTRUN -> SKIP (i915#8708) +4 other tests skip
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-
>    fullscreen:shard-tglu: NOTRUN -> SKIP +14 other tests skip
>  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:shard-dg2: NOTRUN -> SKIP
>    (i915#9766)
>  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-
>    cpu:shard-dg2: NOTRUN -> SKIP (i915#10433 / i915#3458) +2 other
>    tests skip
>  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-
>    gtt:shard-mtlp: NOTRUN -> SKIP (i915#8708) +5 other tests skip
>  * igt@kms_frontbuffer_tracking@psr-suspend:shard-dg1: NOTRUN -> SKIP
>    (i915#3458) +5 other tests skip
>  * igt@kms_hdr@static-swap:shard-mtlp: NOTRUN -> SKIP (i915#3555 /
>    i915#8228) +1 other test skip
>  * igt@kms_plane_multiple@tiling-yf:shard-dg2: NOTRUN -> SKIP
>    (i915#3555 / i915#8806)
>  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-
>    format@pipe-a-dp-4:shard-dg2: NOTRUN -> SKIP (i915#9423) +11 other
>    tests skip
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-
>    b-hdmi-a-1:shard-rkl: NOTRUN -> SKIP (i915#9423) +3 other tests skip
>  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-
>    d-hdmi-a-4:shard-dg1: NOTRUN -> SKIP (i915#9423) +11 other tests
>    skip
>  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-
>    rotation@pipe-c-hdmi-a-4:shard-dg1: NOTRUN -> SKIP (i915#5176 /
>    i915#9423) +3 other tests skip
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-
>    25@pipe-b-hdmi-a-1:shard-dg2: NOTRUN -> SKIP (i915#5235 / i915#9423)
>    +11 other tests skip
>  * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-
>    25@pipe-b-hdmi-a-3:shard-dg1: NOTRUN -> SKIP (i915#5235) +3 other
>    tests skip
>  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-
>    25@pipe-c-edp-1:shard-mtlp: NOTRUN -> SKIP (i915#5235) +8 other
>    tests skip
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-
>    25@pipe-b-hdmi-a-2:shard-rkl: NOTRUN -> SKIP (i915#5235) +3 other
>    tests skip
>  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-
>    5@pipe-d-edp-1:shard-mtlp: NOTRUN -> SKIP (i915#3555 / i915#5235) +2
>    other tests skip
>  * igt@kms_pm_dc@dc6-psr:shard-mtlp: NOTRUN -> SKIP (i915#10139)
>  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:shard-tglu: NOTRUN -> SKIP
>    (i915#9519)
>  * igt@kms_pm_rpm@dpms-non-lpsp:shard-mtlp: NOTRUN -> SKIP (i915#9519)
>    +1 other test skip
>  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:shard-dg2: PASS -> SKIP
>    (i915#9519)
>  * igt@kms_pm_rpm@modeset-non-lpsp:shard-dg2: NOTRUN -> SKIP
>    (i915#9519)
>  * igt@kms_pm_rpm@modeset-non-lpsp-stress:shard-rkl: PASS -> SKIP
>    (i915#9519) +1 other test skip
>  * igt@kms_prime@d3hot:shard-mtlp: NOTRUN -> SKIP (i915#6524)
>  * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-
>    sf:shard-dg2: NOTRUN -> SKIP +13 other tests skip
>  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe-a-
>    edp-1:shard-mtlp: NOTRUN -> SKIP (i915#9808) +1 other test skip
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:shard-dg1: NOTRUN
>    -> SKIP +16 other tests skip
>  * igt@kms_psr2_su@page_flip-nv12:shard-dg2: NOTRUN -> SKIP (i915#9683)
>  * igt@kms_psr@fbc-pr-sprite-blt:shard-dg2: NOTRUN -> SKIP (i915#9732)
>    +14 other tests skip
>  * igt@kms_psr@fbc-psr2-cursor-plane-move:shard-tglu: NOTRUN -> SKIP
>    (i915#9732) +1 other test skip
>  * igt@kms_psr@pr-no-drrs:shard-mtlp: NOTRUN -> SKIP (i915#9688) +9
>    other tests skip
>  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:shard-mtlp: NOTRUN -> SKIP
>    (i915#4077 / i915#9688)
>  * igt@kms_psr@psr-sprite-mmap-cpu:shard-dg1: NOTRUN -> SKIP
>    (i915#9732) +6 other tests skip
>  * igt@kms_rotation_crc@exhaust-fences:shard-dg2: NOTRUN -> SKIP
>    (i915#4235)
>  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:shard-tglu:
>    NOTRUN -> SKIP (i915#5289)
>  * igt@kms_rotation_crc@primary-rotation-90:shard-mtlp: NOTRUN -> SKIP
>    (i915#4235) +2 other tests skip
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:shard-rkl:
>    PASS -> FAIL (i915#9196)
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:shard-dg1:
>    PASS -> FAIL (i915#9196)
>  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:shard-tglu:
>    PASS -> FAIL (i915#9196) +1 other test fail
>  * igt@kms_vrr@flip-basic-fastset:shard-mtlp: NOTRUN -> SKIP (i915#8808
>    / i915#9906) +1 other test skip
>  * igt@kms_vrr@flip-suspend:shard-mtlp: NOTRUN -> SKIP (i915#3555 /
>    i915#8808)
>  * igt@kms_writeback@writeback-invalid-parameters:shard-dg1: NOTRUN ->
>    SKIP (i915#2437)
>  * igt@perf@global-sseu-config:shard-dg2: NOTRUN -> SKIP (i915#7387)
>  * igt@perf_pmu@cpu-hotplug:shard-mtlp: NOTRUN -> SKIP (i915#8850)
>  * igt@perf_pmu@event-wait@rcs0:shard-mtlp: NOTRUN -> SKIP (i915#3555 /
>    i915#8807)
>  * igt@perf_pmu@module-unload:shard-dg2: NOTRUN -> FAIL (i915#5793)
>  * igt@prime_vgem@basic-fence-flip:shard-dg2: NOTRUN -> SKIP
>    (i915#3708)
>  * igt@prime_vgem@basic-read:shard-dg2: NOTRUN -> SKIP (i915#3291 /
>    i915#3708)
>  * igt@prime_vgem@coherency-gtt:shard-dg2: NOTRUN -> SKIP (i915#3708 /
>    i915#4077)
>  * igt@prime_vgem@fence-flip-hang:shard-dg1: NOTRUN -> SKIP (i915#3708)
>    +1 other test skipshard-mtlp: NOTRUN -> SKIP (i915#3708)
>  * igt@sriov_basic@enable-vfs-bind-unbind-each:shard-dg1: NOTRUN ->
>    SKIP (i915#9917)
>  * igt@syncobj_timeline@invalid-wait-zero-handles:shard-mtlp: NOTRUN ->
>    FAIL (i915#9781)
>  * igt@syncobj_wait@invalid-wait-zero-handles:shard-snb: NOTRUN -> FAIL
>    (i915#9779)shard-glk: NOTRUN -> FAIL (i915#9779)
>  * igt@tools_test@sysfs_l3_parity:shard-mtlp: NOTRUN -> SKIP
>    (i915#4818)
>  * igt@v3d/v3d_mmap@mmap-bo:shard-mtlp: NOTRUN -> SKIP (i915#2575) +7
>    other tests skip
>  * igt@v3d/v3d_perfmon@create-single-perfmon:shard-dg2: NOTRUN -> SKIP
>    (i915#2575) +7 other tests skip
>  * igt@v3d/v3d_submit_cl@job-perfmon:shard-dg1: NOTRUN -> SKIP
>    (i915#2575) +1 other test skip
>  * igt@v3d/v3d_submit_csd@job-perfmon:shard-tglu: NOTRUN -> SKIP
>    (i915#2575) +3 other tests skip
>  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:shard-mtlp: NOTRUN ->
>    SKIP (i915#7711) +7 other tests skip
>  * igt@vc4/vc4_purgeable_bo@mark-purgeable:shard-dg1: NOTRUN -> SKIP
>    (i915#7711) +3 other tests skip
>  * igt@vc4/vc4_tiling@set-get:shard-dg2: NOTRUN -> SKIP (i915#7711) +4
>    other tests skip
> Possible fixes * igt@gem_ctx_freq@sysfs@gt0:shard-dg2: FAIL (i915#9561) -=
> PASS
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:shard-tglu: FAIL (i915#2842)
>    -> PASS
>  * igt@gem_exec_fair@basic-pace@rcs0:shard-rkl: FAIL (i915#2842) ->
>    PASS +2 other tests pass
>  * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:shard-dg2: FAIL
>    (i915#10378) -> PASS
>  * igt@gem_lmem_swapping@smem-oom@lmem0:shard-dg1: TIMEOUT (i915#5493)
>    -> PASS
>  * igt@i915_module_load@reload-with-fault-injection:shard-snb:
>    INCOMPLETE (i915#9849) -> PASS +1 other test passshard-dg1:
>    INCOMPLETE (i915#9849) -> PASSshard-tglu: INCOMPLETE (i915#9820) ->
>    PASSshard-mtlp: ABORT (i915#10131 / i915#9697) -> PASS
>  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:shard-dg1: FAIL
>    (i915#3591) -> PASS
>  * igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1:shard-
>    glk: FAIL (i915#2521) -> PASS
>  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:shard-
>    mtlp: FAIL (i915#5138) -> PASS +1 other test pass
>  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-
>    flip:shard-tglu: FAIL (i915#3743) -> PASS
>  * igt@kms_cursor_legacy@torture-bo@pipe-a:shard-tglu: DMESG-WARN
>    (i915#10166) -> PASS
>  * igt@kms_pm_rpm@dpms-lpsp:shard-rkl: SKIP (i915#9519) -> PASS +1
>    other test pass
>  * igt@kms_pm_rpm@i2c:shard-dg2: INCOMPLETE -> PASS
> Warnings * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:shard-rkl: =
SKIP
>    (i915#4070 / i915#4816) -> SKIP (i915#4816)
>  * igt@kms_psr@psr-cursor-mmap-cpu:shard-dg2: SKIP (i915#9732) -> SKIP
>    (i915#9673 / i915#9732) +8 other tests skip
>  * igt@perf@non-zero-reason@0-rcs0:shard-dg2: FAIL (i915#7484) -> FAIL
>    (i915#9100)
> Build changes * Linux: CI_DRM_14429 -> Patchwork_131122v1
> CI-20190529: 20190529
> CI_DRM_14429: 96e47e3f3a5952e104d56352872becdc0048d26e @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7760: 7760
> Patchwork_131122v1: 96e47e3f3a5952e104d56352872becdc0048d26e @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit


--=-25yNLIAhaxTupZEEJ6rB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>Hi,</div><div><br></div><div>FTR, this failure is not related to=
 my patch. &nbsp;It seems to be happening sporadically on this machine.</di=
v><div><br></div><div>--</div><div>Cheers,</div><div>Luca.</div><div><br></=
div><div>On Thu, 2024-03-14 at 23:16 +0000, Patchwork wrote:</div><blockquo=
te type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;=
padding-left:1ex"><div><b>Patch Details</b></div><div><table><tbody><tr><td=
><b>Series:</b></td><td>drm/xe/display: fix type of intel_uncore_read*() fu=
nctions</td></tr><tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.f=
reedesktop.org/series/131122/">https://patchwork.freedesktop.org/series/131=
122/</a></td></tr><tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><=
b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_131122v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_131122v1/index.html</a></td></tr></tbody></table> </div><h1>CI Bug L=
og - changes from CI_DRM_14429_full -&gt; Patchwork_131122v1_full</h1><h2>S=
ummary</h2><p><strong>FAILURE</strong></p><p>Serious unknown changes coming=
 with Patchwork_131122v1_full absolutely need to be<br> verified manually.<=
/p><p>If you think the reported changes have nothing to do with the changes=
<br> introduced in Patchwork_131122v1_full, please notify your bug team (I9=
15-ci-infra@lists.freedesktop.org) to allow them<br> to document this new f=
ailure mode, which will reduce false positives in CI.</p><h2>Participating =
hosts (9 -&gt; 8)</h2><p>Missing (1): shard-snb-0 </p><h2>Possible new issu=
es</h2><p>Here are the unknown changes that may have been introduced in Pat=
chwork_131122v1_full:</p><h3>IGT changes</h3><h4>Possible regressions</h4><=
ul><li>igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:<ul><li>s=
hard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/=
shard-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_131122v1/shard-snb4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-h=
dmi-a1.html">ABORT</a></li></ul></li></ul><h2>Known issues</h2><p>Here are =
the changes found in Patchwork_131122v1_full that come from known issues:</=
p><h3>IGT changes</h3><h4>Issues hit</h4><ul><li><p>igt@api_intel_bb@blit-r=
eloc-purge-cache:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@api_intel_=
bb@blit-reloc-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/8411">i915#8411</a>)</li></ul></li><li><p>igt@deb=
ugfs_test@basic-hwmon:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@deb=
ugfs_test@basic-hwmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9318">i915#9318</a>)</li></ul></li><li><p>igt@drm_fdi=
nfo@busy-hang@rcs0:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@drm_fd=
info@busy-hang@rcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8414">i915#8414</a>) +5 other tests skip</li></ul></li>=
<li><p>igt@drm_fdinfo@most-busy-idle-check-all@vecs1:</p><ul><li>shard-dg2:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_131122v1/shard-dg2-8/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8414">i=
915#8414</a>) +19 other tests skip</li></ul></li><li><p>igt@drm_fdinfo@virt=
ual-idle:</p><ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_14429/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13112=
2v1/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) +2 other t=
ests fail</li></ul></li><li><p>igt@gem_basic@multigpu-create-close:</p><ul>=
<li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_131122v1/shard-tglu-2/igt@gem_basic@multigpu-create-close.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7=
697">i915#7697</a>) +1 other test skip</li></ul></li><li><p>igt@gem_busy@se=
maphore:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@gem_busy@semaphor=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3936">i915#3936</a>)</li></ul></li><li><p>igt@gem_close_race@multigpu-bas=
ic-threads:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-4/igt@gem_close_race@m=
ultigpu-basic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7697">i915#7697</a>)</li></ul></li><li><p>igt@gem_cre=
ate@create-ext-set-pat:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem=
_create@create-ext-set-pat.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8562">i915#8562</a>)</li></ul></li><li><p>igt@ge=
m_ctx_exec@basic-nohangcheck:</p><ul><li>shard-tglu: <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-tglu-10/igt@gem_ctx_exec@b=
asic-nohangcheck.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131122v1/shard-tglu-6/igt@gem_ctx_exec@basic-nohan=
gcheck.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6268">i915#6268</a>)</li></ul></li><li><p>igt@gem_ctx_persistence@fi=
le:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_131122v1/shard-snb5/igt@gem_ctx_persistence@file.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1099">i915#1099</a>) +1 other test skip</li></ul></li><li><p>igt@gem_ctx_pe=
rsistence@heartbeat-hang:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@ge=
m_ctx_persistence@heartbeat-hang.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li></ul></li><li><p>=
igt@gem_ctx_sseu@mmap-args:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt=
@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/280">i915#280</a>)</li></ul></li><li><p>igt@gem_eio=
@unwedge-stress:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-snb1/igt@gem_eio@unwe=
dge-stress.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8898">i915#8898</a>)</li></ul></li><li><p>igt@gem_exec_balancer@=
bonded-dual:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@gem_exec_bala=
ncer@bonded-dual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4771">i915#4771</a>) +1 other test skip</li></ul></li><li>=
<p>igt@gem_exec_capture@many-4k-zero:</p><ul><li>shard-dg2: NOTRUN -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-=
dg2-8/igt@gem_exec_capture@many-4k-zero.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/9606">i915#9606</a>)</li></ul></li>=
<li><p>igt@gem_exec_fair@basic-none-share:</p><ul><li>shard-dg2: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/s=
hard-dg2-4/igt@gem_exec_fair@basic-none-share.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4852">i915#4852</a>) +2=
 other tests skip</li></ul></li><li><p>igt@gem_exec_fair@basic-none-solo@rc=
s0:</p><ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_14429/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131122v1/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li></ul></li><li><p>igt@gem_exec_fair@basic-pace:</p><ul><li>shard-m=
tlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131122v1/shard-mtlp-6/igt@gem_exec_fair@basic-pace.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4473">i915#4473</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4771">i915#47=
71</a>)</li></ul></li><li><p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p><ul=
><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_131122v1/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2842">i915#2842</a>)</li></ul></li><li><p>igt@gem_exec_fence@submit3:</p><u=
l><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_131122v1/shard-dg2-4/igt@gem_exec_fence@submit3.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4812">i915=
#4812</a>) +1 other test skip</li></ul></li><li><p>igt@gem_exec_flush@basic=
-uc-ro-default:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem_exec_fl=
ush@basic-uc-ro-default.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4852">i915#4852</a>) +1 other test skip</li><=
/ul></li><li><p>igt@gem_exec_gttfill@multigpu-basic:</p><ul><li>shard-mtlp:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_131122v1/shard-mtlp-5/igt@gem_exec_gttfill@multigpu-basic.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697<=
/a>)</li><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131122v1/shard-dg1-17/igt@gem_exec_gttfill@multigpu=
-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7697">i915#7697</a>)</li></ul></li><li><p>igt@gem_exec_reloc@basic-g=
tt-cpu-active:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@gem_exec_relo=
c@basic-gtt-cpu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3281">i915#3281</a>) +4 other tests skip</li></ul></=
li><li><p>igt@gem_exec_reloc@basic-gtt-noreloc:</p><ul><li>shard-mtlp: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1311=
22v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-noreloc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>)=
 +4 other tests skip</li></ul></li><li><p>igt@gem_exec_reloc@basic-scanout:=
</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem_exec_reloc@basic-scano=
ut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +3 other tests skip</li></ul></li><li><p>igt@gem_ex=
ec_schedule@preempt-queue:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@g=
em_exec_schedule@preempt-queue.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li></ul></li><li=
><p>igt@gem_exec_schedule@preempt-queue-contexts-chain:</p><ul><li>shard-mt=
lp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_131122v1/shard-mtlp-7/igt@gem_exec_schedule@preempt-queue-contexts-chai=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4812">i915#4812</a>) +1 other test skip</li></ul></li><li><p>igt@ge=
m_exec_schedule@semaphore-power:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-1=
5/igt@gem_exec_schedule@semaphore-power.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +1 other test =
skip</li></ul></li><li><p>igt@gem_fence_thrash@bo-write-verify-threaded-non=
e:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem_fence_thrash@bo-writ=
e-verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4860">i915#4860</a>) +1 other test skip</li></ul></l=
i><li><p>igt@gem_lmem_swapping@heavy-multi:</p><ul><li>shard-tglu: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1=
/shard-tglu-8/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +1 oth=
er test skip</li></ul></li><li><p>igt@gem_lmem_swapping@heavy-random@lmem0:=
</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem_lmem_swapping@heavy-ra=
ndom@lmem0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/10378">i915#10378</a>)</li></ul></li><li><p>igt@gem_lmem_swappin=
g@heavy-verify-multi-ccs:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@=
gem_lmem_swapping@heavy-verify-multi-ccs.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other test=
s skip</li></ul></li><li><p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:=
</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14429/shard-dg2-1/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131122v1/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10=
378">i915#10378</a>)</li></ul></li><li><p>igt@gem_lmem_swapping@heavy-verif=
y-random-ccs@lmem0:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem_lme=
m_swapping@heavy-verify-random-ccs@lmem0.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/4565">i915#4565</a>)</li></ul></li=
><li><p>igt@gem_lmem_swapping@verify-random-ccs:</p><ul><li>shard-glk: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1311=
22v1/shard-glk8/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>=
)</li></ul></li><li><p>igt@gem_media_vme:</p><ul><li>shard-dg2: NOTRUN -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/sh=
ard-dg2-8/igt@gem_media_vme.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/284">i915#284</a>)</li></ul></li><li><p>igt@gem=
_mmap@basic-small-bo:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@gem_=
mmap@basic-small-bo.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4083">i915#4083</a>) +3 other tests skip</li></ul></li>=
<li><p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p><ul><li>shard-dg2: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122=
v1/shard-dg2-4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) =
+6 other tests skip</li></ul></li><li><p>igt@gem_mmap_gtt@fault-concurrent-=
x:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem_mmap_gtt@fault-concu=
rrent-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4077">i915#4077</a>) +1 other test skip</li></ul></li><li><p>igt@ge=
m_mmap_wc@bad-object:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@gem_mm=
ap_wc@bad-object.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4083">i915#4083</a>) +3 other tests skip</li></ul></li><li=
><p>igt@gem_partial_pwrite_pread@reads:</p><ul><li>shard-dg2: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shar=
d-dg2-8/igt@gem_partial_pwrite_pread@reads.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>) +3 other te=
sts skip</li></ul></li><li><p>igt@gem_pwrite@basic-exhaustion:</p><ul><li>s=
hard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_131122v1/shard-glk4/igt@gem_pwrite@basic-exhaustion.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2658">i915#26=
58</a>)</li></ul></li><li><p>igt@gem_pxp@create-regular-context-1:</p><ul><=
li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131122v1/shard-mtlp-1/igt@gem_pxp@create-regular-context-1.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
270">i915#4270</a>)</li></ul></li><li><p>igt@gem_pxp@display-protected-crc:=
</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>)</li></ul></li><li><p>igt@gem_pxp@reject-modify-con=
text-protection-off-3:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-snb5/igt@gem_px=
p@reject-modify-context-protection-off-3.html">SKIP</a> +136 other tests sk=
ip</li></ul></li><li><p>igt@gem_pxp@verify-pxp-execution-after-suspend-resu=
me:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_131122v1/shard-tglu-2/igt@gem_pxp@verify-pxp-exe=
cution-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4270">i915#4270</a>)</li></ul></li><li><p>igt@g=
em_pxp@verify-pxp-key-change-after-suspend-resume:</p><ul><li>shard-dg2: NO=
TRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
1122v1/shard-dg2-4/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
270">i915#4270</a>)</li></ul></li><li><p>igt@gem_readwrite@read-write:</p><=
ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@gem_readwrite@read-write.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282"=
>i915#3282</a>) +4 other tests skip</li></ul></li><li><p>igt@gem_render_cop=
y@y-tiled-ccs-to-y-tiled:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@ge=
m_render_copy@y-tiled-ccs-to-y-tiled.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +4 other tests sk=
ip</li></ul></li><li><p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:<=
/p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/8428">i915#8428</a>) +5 other tests skip</li></ul></li>=
<li><p>igt@gem_set_tiling_vs_gtt:</p><ul><li>shard-dg1: NOTRUN -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-=
15/igt@gem_set_tiling_vs_gtt.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4079">i915#4079</a>)</li></ul></li><li><p>igt@=
gem_tiled_pread_pwrite:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@gem_=
tiled_pread_pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4079">i915#4079</a>)</li></ul></li><li><p>igt@gem_tiled_=
wb:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@gem_tiled_wb.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4077">i91=
5#4077</a>) +5 other tests skip</li></ul></li><li><p>igt@gem_userptr_blits@=
access-control:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-4/igt@gem_userptr_=
blits@access-control.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3297">i915#3297</a>)</li></ul></li><li><p>igt@gem_user=
ptr_blits@readonly-unsync:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@=
gem_userptr_blits@readonly-unsync.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3297">i915#3297</a>)</li></ul></li><li><p=
>igt@gem_userptr_blits@sd-probe:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8=
/igt@gem_userptr_blits@sd-probe.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3297">i915#3297</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4958">i915#4958</a>)</li></ul></li><l=
i><p>igt@gem_userptr_blits@unsync-overlap:</p><ul><li>shard-mtlp: NOTRUN -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/=
shard-mtlp-7/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +3=
 other tests skip</li></ul></li><li><p>igt@gen3_render_linear_blits:</p><ul=
><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_131122v1/shard-mtlp-7/igt@gen3_render_linear_blits.html">S=
KIP</a> +17 other tests skip</li></ul></li><li><p>igt@gen9_exec_parse@basic=
-rejected:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@gen9_exec_parse@b=
asic-rejected.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2856">i915#2856</a>) +1 other test skip</li></ul></li><li><p>=
igt@gen9_exec_parse@bb-start-cmd:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtl=
p-1/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +2 other tests sk=
ip</li></ul></li><li><p>igt@i915_module_load@load:</p><ul><li>shard-glk: NO=
TRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
1122v1/shard-glk4/igt@i915_module_load@load.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>)</li><li>sh=
ard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_131122v1/shard-dg2-4/igt@i915_module_load@load.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227">i915#6227</a>=
)</li></ul></li><li><p>igt@i915_module_load@reload-with-fault-injection:</p=
><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@i915_module_load@reload-with-f=
ault-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9820">i915#9820</a>)</li></ul></li><li><p>igt@i915_pm_freq_=
api@freq-reset:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-2/igt@i915_pm_fr=
eq_api@freq-reset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8399">i915#8399</a>)</li></ul></li><li><p>igt@i915_pm_rps=
@reset:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@i915_pm_rps@reset.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8346">i915#8346</a>)</li></ul></li><li><p>igt@i915_pm_rps@thresholds-idle@g=
t0:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@i915_pm_rps@thresholds-=
idle@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8925">i915#8925</a>)</li></ul></li><li><p>igt@i915_pm_sseu@full-en=
able:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@i915_pm_sseu@full-en=
able.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8437">i915#8437</a>)</li></ul></li><li><p>igt@i915_selftest@live@worka=
rounds:</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14429/shard-dg2-5/igt@i915_selftest@live@workarounds.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131122v1/shard-dg2-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9500">i915#95=
00</a>)</li></ul></li><li><p>igt@i915_suspend@basic-s3-without-i915:</p><ul=
><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_131122v1/shard-tglu-2/igt@i915_suspend@basic-s3-without-i9=
15.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7443">i915#7443</a>)</li></ul></li><li><p>igt@intel_hwmon@hwmon-wr=
ite:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@intel_hwmon@hwmon-wri=
te.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7707">i915#7707</a>)</li></ul></li><li><p>igt@kms_addfb_basic@bo-too-sma=
ll-due-to-tiling:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@kms_addf=
b_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +2 other tests skip=
</li></ul></li><li><p>igt@kms_addfb_basic@clobberred-modifier:</p><ul><li>s=
hard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_131122v1/shard-dg1-17/igt@kms_addfb_basic@clobberred-modifier.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/421=
2">i915#4212</a>) +1 other test skip</li></ul></li><li><p>igt@kms_addfb_bas=
ic@framebuffer-vs-set-tiling:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-4/ig=
t@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +1 other t=
est skip</li></ul></li><li><p>igt@kms_async_flips@async-flip-with-page-flip=
-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p><ul><li>shard-rkl: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-r=
kl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y=
-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8709">i915#8709</a>) +3 other tests skip</li></ul></li><li><p>ig=
t@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs=
:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131122v1/shard-dg2-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +11 ot=
her tests skip</li></ul></li><li><p>igt@kms_atomic_transition@plane-all-mod=
eset-transition:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@kms_atomi=
c_transition@plane-all-modeset-transition.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1769">i915#1769</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li></=
ul></li><li><p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p><ul>=
<li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131122v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-3=
2bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5286">i915#5286</a>)</li></ul></li><li><p>igt@kms_big_f=
b@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p><ul><li>shard-tglu: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31122v1/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-as=
ync-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>)</li></ul></li><li><p>igt@kms_big_fb@4-tiled-m=
ax-hw-stride-64bpp-rotate-0:</p><ul><li>shard-mtlp: <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-mtlp-3/igt@kms_big_fb@4-til=
ed-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-2/igt@kms_big_f=
b@4-tiled-max-hw-stride-64bpp-rotate-0.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>)</li></ul></li><=
li><p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p><ul><li>shard-dg1: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v=
1/shard-dg1-15/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3638">i915#3638</a>)<=
/li></ul></li><li><p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-=
hflip-async-flip:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@kms_big_fb=
@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5=
190</a>) +6 other tests skip</li></ul></li><li><p>igt@kms_big_fb@yf-tiled-a=
ddfb:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@kms_big_fb@yf-tiled-=
addfb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6187">i915#6187</a>)</li></ul></li><li><p>igt@kms_big_fb@yf-tiled-max=
-hw-stride-64bpp-rotate-180-hflip-async-flip:</p><ul><li>shard-dg1: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v=
1/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip=
-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4538">i915#4538</a>)</li></ul></li><li><p>igt@kms_ccs@bad-aux-s=
tride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p><ul><li>shard-dg1: NOTRUN -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/sh=
ard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/60=
95">i915#6095</a>) +51 other tests skip</li></ul></li><li><p>igt@kms_ccs@ba=
d-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p><ul><li>shard-dg2:=
 NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_131122v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pi=
pe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/10307">i915#10307</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/10434">i915#10434</a>) +15 other tests skip</li></ul>=
</li><li><p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131122v1/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-t=
iled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/6095">i915#6095</a>) +49 other tests skip</=
li></ul></li><li><p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pip=
e-b-edp-1:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@kms_ccs@bad-rot=
ation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +35 othe=
r tests skip</li></ul></li><li><p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@=
pipe-a-hdmi-a-1:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-2/igt@kms_ccs@b=
ad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +15 other =
tests skip</li></ul></li><li><p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@=
pipe-a-hdmi-a-3:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-6/igt@kms_ccs@ccs=
-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/10307">i915#10307</a>) +127 oth=
er tests skip</li></ul></li><li><p>igt@kms_cdclk@mode-transition@pipe-d-hdm=
i-a-3:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-5/igt@kms_cdclk@mode-transi=
tion@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/7213">i915#7213</a>) +3 other tests skip</li></ul></li=
><li><p>igt@kms_cdclk@plane-scaling@pipe-d-dp-4:</p><ul><li>shard-dg2: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1311=
22v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4087">i915#4087</=
a>) +3 other tests skip</li></ul></li><li><p>igt@kms_chamelium_edid@hdmi-ed=
id-read:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@kms_chamelium_edid=
@hdmi-edid-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/7828">i915#7828</a>) +1 other test skip</li></ul></li><li><=
p>igt@kms_chamelium_frames@dp-crc-fast:</p><ul><li>shard-dg2: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shar=
d-dg2-8/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +6 other =
tests skip</li></ul></li><li><p>igt@kms_chamelium_hpd@hdmi-hpd-enable-disab=
le-mode:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@kms_chamelium_hpd=
@hdmi-hpd-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/7828">i915#7828</a>) +4 other tests skip</li>=
</ul></li><li><p>igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:</p><ul><li>s=
hard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_131122v1/shard-tglu-2/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pi=
pe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/7828">i915#7828</a>) +2 other tests skip</li></ul></li><li><p>igt@kms_co=
ntent_protection@dp-mst-type-0:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8=
/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3299">i915#3299</a>)</li></ul></l=
i><li><p>igt@kms_content_protection@dp-mst-type-1:</p><ul><li>shard-mtlp: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31122v1/shard-mtlp-7/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3299">i915#32=
99</a>)</li></ul></li><li><p>igt@kms_content_protection@type1:</p><ul><li>s=
hard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_131122v1/shard-mtlp-1/igt@kms_content_protection@type1.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i91=
5#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/694=
4">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9424">i915#9424</a>)</li></ul></li><li><p>igt@kms_cursor_crc@cursor-offs=
creen-32x10:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-4/igt@kms_cursor_crc@=
cursor-offscreen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3555">i915#3555</a>) +2 other tests skip</li></ul></=
li><li><p>igt@kms_cursor_crc@cursor-offscreen-32x32:</p><ul><li>shard-dg1: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131122v1/shard-dg1-15/igt@kms_cursor_crc@cursor-offscreen-32x32.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#=
3555</a>)</li></ul></li><li><p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p=
><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscre=
en-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/8814">i915#8814</a>)</li></ul></li><li><p>igt@kms_cursor_crc=
@cursor-onscreen-512x170:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@=
kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li></ul></li><=
li><p>igt@kms_cursor_crc@cursor-rapid-movement-128x42:</p><ul><li>shard-mtl=
p: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_131122v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-rapid-movement-128x42.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/88=
14">i915#8814</a>)</li></ul></li><li><p>igt@kms_cursor_legacy@2x-cursor-vs-=
flip-legacy:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-5/igt@kms_cursor_le=
gacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/9809">i915#9809</a>) +3 other tests skip</li>=
</ul></li><li><p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic=
:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@kms_cursor_legacy@basic-=
busy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4213">i915#4213</a>) +1 other test skip</li>=
</ul></li><li><p>igt@kms_cursor_legacy@torture-move@pipe-a:</p><ul><li>shar=
d-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/sha=
rd-dg1-17/igt@kms_cursor_legacy@torture-move@pipe-a.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-=
dg1-17/igt@kms_cursor_legacy@torture-move@pipe-a.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/10166">i915#10166</a=
>)</li></ul></li><li><p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:</p><u=
l><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_131122v1/shard-dg1-15/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-=
hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9723">i915#9723</a>)</li></ul></li><li><p>igt@kms_dither@fb-8bpc-v=
s-panel-6bpc@pipe-a-hdmi-a-1:</p><ul><li>shard-rkl: NOTRUN -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-rkl-5/ig=
t@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3804">i915#3804</a>)</l=
i></ul></li><li><p>igt@kms_draw_crc@draw-method-mmap-gtt:</p><ul><li>shard-=
dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131122v1/shard-dg2-4/igt@kms_draw_crc@draw-method-mmap-gtt.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8812">i915#=
8812</a>)</li></ul></li><li><p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>=
<ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_131122v1/shard-dg2-4/igt@kms_dsc@dsc-fractional-bpp-with=
-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3840">i915#3840</a>)</li></ul></li><li><p>igt@kms_dsc@dsc-with-output-=
formats:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@kms_dsc@dsc-with-=
output-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3840">i915#3840</a>)</li></ul></li><li><p>igt@kms_feat=
ure_discovery@psr1:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@kms_feat=
ure_discovery@psr1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/658">i915#658</a>)</li></ul></li><li><p>igt@kms_feature_=
discovery@psr2:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@kms_feature=
_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/658">i915#658</a>)</li></ul></li><li><p>igt@kms_flip@2x-fli=
p-vs-expired-vblank:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-8/igt@kms_f=
lip@2x-flip-vs-expired-vblank.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/3637">i915#3637</a>)</li></ul></li><li><p>igt=
@kms_flip@2x-modeset-vs-vblank-race:</p><ul><li>shard-dg1: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-d=
g1-15/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/9934">i915#9934</a>) +3 other =
tests skip</li></ul></li><li><p>igt@kms_flip@2x-modeset-vs-vblank-race-inte=
rruptible:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@kms_flip@2x-mod=
eset-vs-vblank-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +6 other tests skip<=
/li></ul></li><li><p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:</p><ul=
><li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14429/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131=
122v1/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>) +1 other test fail</li></ul></li><li><p>igt@kms_flip@flip-vs-fenc=
es:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@kms_flip@flip-vs-fences.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8381">i915#8381</a>)</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-32bp=
p-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:</p><ul><li>=
shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_131122v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-4tile-=
to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)=
 +3 other tests skip</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-32bp=
p-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:</p><ul><li>shard=
-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_131122v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to=
-64bpp-ytile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</l=
i></ul></li><li><p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftil=
e-downscaling@pipe-a-valid-mode:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8=
/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe=
-a-valid-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/2672">i915#2672</a>) +2 other tests skip</li></ul></li><li><p=
>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe=
-a-valid-mode:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@kms_flip_sca=
led_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/258=
7">i915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2672">i915#2672</a>)</li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p><ul><li>shard-t=
glu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131122v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32b=
pp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2587">i915#2587</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li></ul><=
/li><li><p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:=
</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +27 other tests ski=
p</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-p=
lflip-blt:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@kms_frontbuffer_t=
racking@fbc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +26 other tes=
ts skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbc-rgb101010-dra=
w-mmap-gtt:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-4/igt@kms_frontbuffer_=
tracking@fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +6 other tests sk=
ip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri=
-indfb-draw-pwrite:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@kms_fron=
tbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</=
a>) +8 other tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p><ul><li>shard-glk: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/s=
hard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mm=
ap-gtt.html">SKIP</a> +176 other tests skip</li></ul></li><li><p>igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p><ul><li>s=
hard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_131122v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-scnd=
scrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/8708">i915#8708</a>) +4 other tests skip</li><=
/ul></li><li><p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-f=
ullscreen:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-2/igt@kms_frontbuffer=
_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +14 other =
tests skip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:<=
/p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_131122v1/shard-dg2-4/igt@kms_frontbuffer_tracking@pip=
e-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9766">i915#9766</a>)</li></ul></li><li><p>igt@kms_frontbuffer_tra=
cking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p><ul><li>shard-dg2: NOTRUN=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122=
v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-=
mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3458">i915#3458</a>) +2 other tests skip</li></ul></li><li=
><p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</=
p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +5 other tests s=
kip</li></ul></li><li><p>igt@kms_frontbuffer_tracking@psr-suspend:</p><ul><=
li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_131122v1/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3458">i915#3458</a>) +5 other tests skip</li></ul></li><li><p>igt@kms_hdr=
@static-swap:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@kms_hdr@stat=
ic-swap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8228">i915#8228</a>) +1 other test skip</li></ul></li><li><p>=
igt@kms_plane_multiple@tiling-yf:</p><ul><li>shard-dg2: NOTRUN -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-=
4/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/8806">i915#8806</a>)</li></ul></li=
><li><p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format=
@pipe-a-dp-4:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-11/igt@kms_plane_sca=
ling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-dp-4.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9=
423</a>) +11 other tests skip</li></ul></li><li><p>igt@kms_plane_scaling@pl=
ane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:</p><ul><li>shard-rk=
l: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_131122v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-wi=
th-rotation@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/9423">i915#9423</a>) +3 other tests skip</li></=
ul></li><li><p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotati=
on@pipe-d-hdmi-a-4:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-16/igt@kms_pla=
ne_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i=
915#9423</a>) +11 other tests skip</li></ul></li><li><p>igt@kms_plane_scali=
ng@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:</p><ul><li=
>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_131122v1/shard-dg1-15/igt@kms_plane_scaling@plane-scaler-with-c=
lipping-clamping-rotation@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +3 oth=
er tests skip</li></ul></li><li><p>igt@kms_plane_scaling@planes-downscale-f=
actor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-1:</p><ul><li>shard-dg2: NOTRU=
N -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13112=
2v1/shard-dg2-10/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale=
-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5235">i915#5235</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +11 other tests ski=
p</li></ul></li><li><p>igt@kms_plane_scaling@planes-downscale-factor-0-25-u=
pscale-factor-0-25@pipe-b-hdmi-a-3:</p><ul><li>shard-dg1: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg=
1-12/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25=
@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5235">i915#5235</a>) +3 other tests skip</li></ul></li><li=
><p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c=
-edp-1:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@kms_plane_scaling@=
planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>=
) +8 other tests skip</li></ul></li><li><p>igt@kms_plane_scaling@planes-ups=
cale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:</p><ul><li>shard-rk=
l: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_131122v1/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-do=
wnscale-factor-0-25@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 other tests ski=
p</li></ul></li><li><p>igt@kms_plane_scaling@planes-upscale-factor-0-25-dow=
nscale-factor-0-5@pipe-d-edp-1:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-=
7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pip=
e-d-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5235">i915#5235</a>) +2 other tests skip</li></ul></li><li>=
<p>igt@kms_pm_dc@dc6-psr:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@=
kms_pm_dc@dc6-psr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/10139">i915#10139</a>)</li></ul></li><li><p>igt@kms_pm_rp=
m@dpms-mode-unset-non-lpsp:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-8/ig=
t@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</li></ul></li><l=
i><p>igt@kms_pm_rpm@dpms-non-lpsp:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mt=
lp-1/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) +1 other test skip</=
li></ul></li><li><p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p><ul><li>=
shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429=
/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/sh=
ard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</=
li></ul></li><li><p>igt@kms_pm_rpm@modeset-non-lpsp:</p><ul><li>shard-dg2: =
NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131122v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>)</=
li></ul></li><li><p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p><ul><li>shar=
d-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/sha=
rd-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-rkl-=
5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519</a>) +1 other test=
 skip</li></ul></li><li><p>igt@kms_prime@d3hot:</p><ul><li>shard-mtlp: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1311=
22v1/shard-mtlp-1/igt@kms_prime@d3hot.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li></ul></li><l=
i><p>igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:</p>=
<ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@kms_psr2_sf@fbc-overlay-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> +13 other tests skip</li></ul=
></li><li><p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area@psr2-pipe=
-a-edp-1:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-=
primary-plane-update-sf-dmg-area@psr2-pipe-a-edp-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9808">i915#9808</a>) +1=
 other test skip</li></ul></li><li><p>igt@kms_psr2_sf@overlay-primary-updat=
e-sf-dmg-area:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-17/igt@kms_psr2_sf@=
overlay-primary-update-sf-dmg-area.html">SKIP</a> +16 other tests skip</li>=
</ul></li><li><p>igt@kms_psr2_su@page_flip-nv12:</p><ul><li>shard-dg2: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1311=
22v1/shard-dg2-8/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/9683">i915#9683</a>)</li></=
ul></li><li><p>igt@kms_psr@fbc-pr-sprite-blt:</p><ul><li>shard-dg2: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v=
1/shard-dg2-8/igt@kms_psr@fbc-pr-sprite-blt.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +14 other =
tests skip</li></ul></li><li><p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>=
<ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_131122v1/shard-tglu-2/igt@kms_psr@fbc-psr2-cursor-plane=
-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9732">i915#9732</a>) +1 other test skip</li></ul></li><li><p>igt@kms_=
psr@pr-no-drrs:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@kms_psr@pr=
-no-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/9688">i915#9688</a>) +9 other tests skip</li></ul></li><li><p>igt@=
kms_psr@psr-primary-mmap-gtt@edp-1:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-m=
tlp-6/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9688">i915#9688</a>)</l=
i></ul></li><li><p>igt@kms_psr@psr-sprite-mmap-cpu:</p><ul><li>shard-dg1: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31122v1/shard-dg1-15/igt@kms_psr@psr-sprite-mmap-cpu.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9732">i915#9732</a>) +=
6 other tests skip</li></ul></li><li><p>igt@kms_rotation_crc@exhaust-fences=
:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@kms_rotation_crc@exhaust-f=
ences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4235">i915#4235</a>)</li></ul></li><li><p>igt@kms_rotation_crc@primar=
y-4-tiled-reflect-x-180:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-2/igt@k=
ms_rotation_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5289">i915#5289</a>)</li></ul=
></li><li><p>igt@kms_rotation_crc@primary-rotation-90:</p><ul><li>shard-mtl=
p: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_131122v1/shard-mtlp-5/igt@kms_rotation_crc@primary-rotation-90.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4235">i91=
5#4235</a>) +2 other tests skip</li></ul></li><li><p>igt@kms_universal_plan=
e@cursor-fb-leak@pipe-a-hdmi-a-1:</p><ul><li>shard-rkl: <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-rkl-5/igt@kms_universal=
_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-rkl-7/igt@kms_=
universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>)</li></u=
l></li><li><p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:</p><u=
l><li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_14429/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_131122v1/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak@pipe-b=
-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9196">i915#9196</a>)</li></ul></li><li><p>igt@kms_universal_plane=
@cursor-fb-leak@pipe-c-hdmi-a-1:</p><ul><li>shard-tglu: <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-tglu-7/igt@kms_universa=
l_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-7/igt@km=
s_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9196">i915#9196</a>) +1 ot=
her test fail</li></ul></li><li><p>igt@kms_vrr@flip-basic-fastset:</p><ul><=
li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_131122v1/shard-mtlp-7/igt@kms_vrr@flip-basic-fastset.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8808">i=
915#8808</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9=
906">i915#9906</a>) +1 other test skip</li></ul></li><li><p>igt@kms_vrr@fli=
p-suspend:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@kms_vrr@flip-su=
spend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8808">i915#8808</a>)</li></ul></li><li><p>igt@kms_writeback@wri=
teback-invalid-parameters:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@=
kms_writeback@writeback-invalid-parameters.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2437">i915#2437</a>)</li></ul></=
li><li><p>igt@perf@global-sseu-config:</p><ul><li>shard-dg2: NOTRUN -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard=
-dg2-8/igt@perf@global-sseu-config.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/7387">i915#7387</a>)</li></ul></li><li><=
p>igt@perf_pmu@cpu-hotplug:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/ig=
t@perf_pmu@cpu-hotplug.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/8850">i915#8850</a>)</li></ul></li><li><p>igt@perf_p=
mu@event-wait@rcs0:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-7/igt@perf_p=
mu@event-wait@rcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/8807">i915#8807</a>)</li></ul></li><li><p>igt@perf=
_pmu@module-unload:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@perf_pmu=
@module-unload.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5793">i915#5793</a>)</li></ul></li><li><p>igt@prime_vgem@bas=
ic-fence-flip:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@prime_vgem@ba=
sic-fence-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3708">i915#3708</a>)</li></ul></li><li><p>igt@prime_vgem@bas=
ic-read:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-4/igt@prime_vgem@basic-re=
ad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3708">i915#3708</a>)</li></ul></li><li><p>igt@prime_vgem@coherency=
-gtt:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@prime_vgem@coherency-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>)</li></ul></li><li><p>igt@prime_vgem@fence-fli=
p-hang:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-17/igt@prime_vgem@fence-fl=
ip-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3708">i915#3708</a>) +1 other test skip</li><li>shard-mtlp: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v=
1/shard-mtlp-5/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li></ul=
></li><li><p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p><ul><li>shard-=
dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_131122v1/shard-dg1-15/igt@sriov_basic@enable-vfs-bind-unbind-each.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9917=
">i915#9917</a>)</li></ul></li><li><p>igt@syncobj_timeline@invalid-wait-zer=
o-handles:</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@syncobj_timelin=
e@invalid-wait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/9781">i915#9781</a>)</li></ul></li><li><p>igt@s=
yncobj_wait@invalid-wait-zero-handles:</p><ul><li>shard-snb: NOTRUN -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard=
-snb5/igt@syncobj_wait@invalid-wait-zero-handles.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9779">i915#9779</a>)</li><=
li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_131122v1/shard-glk8/igt@syncobj_wait@invalid-wait-zero-handle=
s.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/9779">i915#9779</a>)</li></ul></li><li><p>igt@tools_test@sysfs_l3_parity:=
</p><ul><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_131122v1/shard-mtlp-1/igt@tools_test@sysfs_l3_parit=
y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4818">i915#4818</a>)</li></ul></li><li><p>igt@v3d/v3d_mmap@mmap-bo:</p><u=
l><li>shard-mtlp: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_131122v1/shard-mtlp-6/igt@v3d/v3d_mmap@mmap-bo.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915=
#2575</a>) +7 other tests skip</li></ul></li><li><p>igt@v3d/v3d_perfmon@cre=
ate-single-perfmon:</p><ul><li>shard-dg2: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-8/igt@v3d/v3d_=
perfmon@create-single-perfmon.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2575">i915#2575</a>) +7 other tests skip</li>=
</ul></li><li><p>igt@v3d/v3d_submit_cl@job-perfmon:</p><ul><li>shard-dg1: N=
OTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
31122v1/shard-dg1-15/igt@v3d/v3d_submit_cl@job-perfmon.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)=
 +1 other test skip</li></ul></li><li><p>igt@v3d/v3d_submit_csd@job-perfmon=
:</p><ul><li>shard-tglu: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131122v1/shard-tglu-2/igt@v3d/v3d_submit_csd@job-p=
erfmon.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +3 other tests skip</li></ul></li><li><p>igt@vc=
4/vc4_purgeable_bo@access-purged-bo-mem:</p><ul><li>shard-mtlp: NOTRUN -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/sh=
ard-mtlp-1/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a=
>) +7 other tests skip</li></ul></li><li><p>igt@vc4/vc4_purgeable_bo@mark-p=
urgeable:</p><ul><li>shard-dg1: NOTRUN -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-15/igt@vc4/vc4_purgeable=
_bo@mark-purgeable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7711">i915#7711</a>) +3 other tests skip</li></ul></li><=
li><p>igt@vc4/vc4_tiling@set-get:</p><ul><li>shard-dg2: NOTRUN -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-=
4/igt@vc4/vc4_tiling@set-get.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/7711">i915#7711</a>) +4 other tests skip</li><=
/ul></li></ul><h4>Possible fixes</h4><ul><li><p>igt@gem_ctx_freq@sysfs@gt0:=
</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14429/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9561">i915#9561</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/=
shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a></li></ul></li><li><p>=
igt@gem_exec_fair@basic-pace-solo@rcs0:</p><ul><li>shard-tglu: <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-tglu-4/igt@gem_e=
xec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tglu-5/igt@gem_e=
xec_fair@basic-pace-solo@rcs0.html">PASS</a></li></ul></li><li><p>igt@gem_e=
xec_fair@basic-pace@rcs0:</p><ul><li>shard-rkl: <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-rkl-7/igt@gem_exec_fair@basic-p=
ace@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_131122v1/shard-rkl-1/igt@gem_exec_fair@basic-pace@rc=
s0.html">PASS</a> +2 other tests pass</li></ul></li><li><p>igt@gem_lmem_swa=
pping@heavy-verify-multi-ccs@lmem0:</p><ul><li>shard-dg2: <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-dg2-6/igt@gem_lmem_sw=
apping@heavy-verify-multi-ccs@lmem0.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/10378">i915#10378</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg2-10/i=
gt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html">PASS</a></li></ul><=
/li><li><p>igt@gem_lmem_swapping@smem-oom@lmem0:</p><ul><li>shard-dg1: <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-dg1-16/i=
gt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-1=
9/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li></ul></li><li><p>=
igt@i915_module_load@reload-with-fault-injection:</p><ul><li>shard-snb: <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-snb7/ig=
t@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/9849">i915#9849</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1=
/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html">PASS</a>=
 +1 other test pass</li><li>shard-dg1: <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_14429/shard-dg1-16/igt@i915_module_load@reload-with-=
fault-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/9849">i915#9849</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-17/igt@i915_module_l=
oad@reload-with-fault-injection.html">PASS</a></li><li>shard-tglu: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-tglu-6/igt@=
i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9820">i915#9820</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/=
shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html">PASS</a=
></li><li>shard-mtlp: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_14429/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
10131">i915#10131</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/9697">i915#9697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_131122v1/shard-mtlp-5/igt@i915_module_load@reload-wit=
h-fault-injection.html">PASS</a></li></ul></li><li><p>igt@i915_pm_rc6_resid=
ency@rc6-idle@gt0-vcs0:</p><ul><li>shard-dg1: <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14429/shard-dg1-15/igt@i915_pm_rc6_residency@=
rc6-idle@gt0-vcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3591">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_131122v1/shard-dg1-12/igt@i915_pm_rc6_resid=
ency@rc6-idle@gt0-vcs0.html">PASS</a></li></ul></li><li><p>igt@kms_async_fl=
ips@alternate-sync-async-flip@pipe-c-hdmi-a-1:</p><ul><li>shard-glk: <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-glk1/igt@k=
ms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-1.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521">i915#2521</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1311=
22v1/shard-glk4/igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a=
-1.html">PASS</a></li></ul></li><li><p>igt@kms_big_fb@4-tiled-max-hw-stride=
-64bpp-rotate-180-hflip:</p><ul><li>shard-mtlp: <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-mtlp-1/igt@kms_big_fb@4-tiled-m=
ax-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-mtlp-2/igt=
@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a> +1 =
other test pass</li></ul></li><li><p>igt@kms_big_fb@y-tiled-max-hw-stride-3=
2bpp-rotate-180-async-flip:</p><ul><li>shard-tglu: <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shard-tglu-3/igt@kms_big_fb@y-tile=
d-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-tg=
lu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html"=
>PASS</a></li></ul></li><li><p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>=
<ul><li>shard-tglu: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14429/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10166"=
>i915#10166</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_131122v1/shard-tglu-9/igt@kms_cursor_legacy@torture-bo@pipe-a.htm=
l">PASS</a></li></ul></li><li><p>igt@kms_pm_rpm@dpms-lpsp:</p><ul><li>shard=
-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14429/shar=
d-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/9519">i915#9519</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131122v1/shard-rkl-5/igt@kms=
_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pass</li></ul></li><li><p>ig=
t@kms_pm_rpm@i2c:</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_14429/shard-dg2-2/igt@kms_pm_rpm@i2c.html">INCOMPLE=
TE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
131122v1/shard-dg2-10/igt@kms_pm_rpm@i2c.html">PASS</a></li></ul></li></ul>=
<h4>Warnings</h4><ul><li><p>igt@kms_multipipe_modeset@basic-max-pipe-crc-ch=
eck:</p><ul><li>shard-rkl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_14429/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-c=
heck.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4816">i915#4816</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_131122v1/shard-rkl-7/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4816">i915#4816</a>)</li></ul></li><li><p>igt@kms_psr=
@psr-cursor-mmap-cpu:</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_14429/shard-dg2-10/igt@kms_psr@psr-cursor-mmap-=
cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_131122v1/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/967=
3">i915#9673</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/9732">i915#9732</a>) +8 other tests skip</li></ul></li><li><p>igt@perf@n=
on-zero-reason@0-rcs0:</p><ul><li>shard-dg2: <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_14429/shard-dg2-1/igt@perf@non-zero-reason@0-r=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7484">i915#7484</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_131122v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9100=
">i915#9100</a>)</li></ul></li></ul><h2>Build changes</h2><ul><li>Linux: CI=
_DRM_14429 -&gt; Patchwork_131122v1</li></ul><p>CI-20190529: 20190529<br> C=
I_DRM_14429: 96e47e3f3a5952e104d56352872becdc0048d26e @ git://anongit.freed=
esktop.org/gfx-ci/linux<br> IGT_7760: 7760<br> Patchwork_131122v1: 96e47e3f=
3a5952e104d56352872becdc0048d26e @ git://anongit.freedesktop.org/gfx-ci/lin=
ux<br> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongi=
t.freedesktop.org/piglit</p></blockquote><div><br></div><div><span></span><=
/div></body></html>

--=-25yNLIAhaxTupZEEJ6rB--
