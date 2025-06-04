Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A28DFACDDAC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 14:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56ACE10E04F;
	Wed,  4 Jun 2025 12:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2897610E04F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jun 2025 12:16:42 +0000 (UTC)
Received: from 91-155-254-65.elisa-laajakaista.fi ([91.155.254.65]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uMn2m-00000007rTr-1Dgv; Wed, 04 Jun 2025 15:16:35 +0300
Message-ID: <f0bc755109ffeb5bafc83b5b0f76a16e5d8a28a3.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Date: Wed, 04 Jun 2025 15:16:31 +0300
In-Reply-To: <174775727599.5114.10937662405012838355@1538d3639d33>
References: <20250520082917.1302665-1-luciano.coelho@intel.com>
 <174775727599.5114.10937662405012838355@1538d3639d33>
Content-Type: multipart/alternative; boundary="=-AwykZpQgnooBgsDtTSuL"
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_MESSAGE,TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,
 URIBL_DBL_BLOCKED_OPENDNS autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: =?UTF-8?Q?=E2=9C=97?= i915.CI.Full: failure for drm/i915: small
 fixes from code reviews (rev2)
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

--=-AwykZpQgnooBgsDtTSuL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

This has failed on different patches on the different runs and neither
failure can be related to the changes in this series.

The failure can be ignored or re-reported.

--
Cheers,
Luca.

On Tue, 2025-05-20 at 16:07 +0000, Patchwork wrote:
> Patch Details
>=20
> Series:drm/i915: small fixes from code reviews (rev2)
>=20
> URL:https://patchwork.freedesktop.org/series/149236/
>=20
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/index.html
> CI Bug Log - changes from CI_DRM_16571_full -> Patchwork_149236v2_fullSum=
maryFAILURE
> Serious unknown changes coming with Patchwork_149236v2_full
> absolutely need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_149236v2_full, please notify your bug team
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (10 -> 10)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_149236v2_full:
> IGT changesPossible regressions * igt@gem_mmap_offset@close-race:shard-sn=
b:          PASS [519] -> INCOMPLETE[5
>    18]
> New testsNew tests have been introduced between CI_DRM_16571_full and
> Patchwork_149236v2_full:
> New IGT tests (16) *=20
>    igt@i915_pm_rps@addfb25-bad-modifier:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@alternate-sync-async-flip-atomic:Statuses :Exec
>    time: [None] s
>  *=20
>    igt@i915_pm_rps@clear-via-pagefault:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@clock-too-high:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@debugfs:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@etime-single-wait-all-for-submit-
>    unsubmitted:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@extended-modeset-hang-newfb-with-reset:Statuses
>    :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@fbc-rgb101010-draw-pwrite:Statuses :Exec time:
>    [None] s
>  *=20
>    igt@i915_pm_rps@fbcpsr-2p-primscrn-indfb-pgflip-blt:Statuses :Exec
>    time: [None] s
>  *=20
>    igt@i915_pm_rps@noreloc-s3:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@plane-use-after-nonblocking-unbind:Statuses :Exec
>    time: [None] s
>  *=20
>    igt@i915_pm_rps@planes-downscale-factor-0-25-upscale-factor-0-
>    25:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@primary-x-tiled-reflect-x-0:Statuses :Exec time:
>    [None] s
>  *=20
>    igt@i915_pm_rps@rmfb-ioctl:Statuses :Exec time: [None] s
>  *=20
>    igt@i915_pm_rps@universal-setplane-cursor:Statuses :Exec time:
>    [None] s
>  *=20
>    igt@i915_pm_rps@x-tiled-32bpp-rotate-90:Statuses :Exec time: [None]
>    s
> Known issuesHere are the changes found in Patchwork_149236v2_full that co=
me from
> known issues:
> IGT changesIssues hit *=20
>    igt@api_intel_bb@crc32:shard-rkl: NOTRUN -> SKIP [517] (i915#6230
>    [516])
>  *=20
>    igt@device_reset@unbind-cold-reset-rebind:shard-rkl: NOTRUN -> SKIP
>    [515] (i915#11078 [514])
>  *=20
>    igt@gem_basic@multigpu-create-close:shard-rkl: NOTRUN -> SKIP [512]
>    (i915#7697 [504])shard-tglu-1: NOTRUN -> SKIP [513] (i915#7697
>    [504])
>  *=20
>    igt@gem_ccs@block-multicopy-compressed:shard-rkl: NOTRUN -> SKIP
>    [511] (i915#9323 [509]) +1 other test skip
>  *=20
>    igt@gem_ccs@block-multicopy-inplace:shard-tglu: NOTRUN -> SKIP [510]
>    (i915#3555 [111] / i915#9323 [509])
>  *=20
>    igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-
>    lmem0:shard-dg2: PASS [508] -> INCOMPLETE [507] (i915#13356 [506])
>  *=20
>    igt@gem_close_race@multigpu-basic-process:shard-tglu: NOTRUN -> SKIP
>    [505] (i915#7697 [504])
>  *=20
>    igt@gem_create@create-ext-set-pat:shard-rkl: NOTRUN -> SKIP [502]
>    (i915#8562 [501])shard-tglu: NOTRUN -> SKIP [503] (i915#8562 [501])
>  *=20
>    igt@gem_ctx_isolation@preservation-s3:shard-dg2: PASS [500] ->
>    INCOMPLETE [499] (i915#12353 [498]) +1 other test incomplete
>  *=20
>    igt@gem_ctx_persistence@heartbeat-close:shard-dg2-9: NOTRUN -> SKIP
>    [497] (i915#8555 [496])
>  *=20
>    igt@gem_ctx_sseu@engines:shard-tglu: NOTRUN -> SKIP [495] (i915#280
>    [494])
>  *=20
>    igt@gem_eio@hibernate:shard-rkl: PASS [493] -> ABORT [492]
>    (i915#7975 [491] / i915#8213 [490])
>  *=20
>    igt@gem_exec_balancer@bonded-semaphore:shard-dg2: NOTRUN -> SKIP
>    [489] (i915#4812 [488])
>  *=20
>    igt@gem_exec_balancer@invalid-bonds:shard-dg2: NOTRUN -> SKIP [487]
>    (i915#4036 [486])
>  *=20
>    igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:shard-tglu:
>    NOTRUN -> SKIP [485] (i915#4525 [483]) +1 other test skip
>  *=20
>    igt@gem_exec_balancer@parallel-ordering:shard-rkl: NOTRUN -> SKIP
>    [484] (i915#4525 [483])
>  *=20
>    igt@gem_exec_capture@capture-recoverable:shard-rkl: NOTRUN -> SKIP
>    [482] (i915#6344 [481])
>  *=20
>    igt@gem_exec_flush@basic-uc-ro-default:shard-dg2-9: NOTRUN -> SKIP
>    [480] (i915#3539 [479] / i915#4852 [478])
>  *=20
>    igt@gem_exec_reloc@basic-cpu-noreloc:shard-dg2: NOTRUN -> SKIP [477]
>    (i915#3281 [473]) +2 other tests skip
>  *=20
>    igt@gem_exec_reloc@basic-gtt-active:shard-dg2-9: NOTRUN -> SKIP
>    [476] (i915#3281 [473]) +2 other tests skip
>  *=20
>    igt@gem_exec_reloc@basic-wc-gtt-active:shard-mtlp: NOTRUN -> SKIP
>    [475] (i915#3281 [473]) +3 other tests skip
>  *=20
>    igt@gem_exec_reloc@basic-wc-read-noreloc:shard-rkl: NOTRUN -> SKIP
>    [474] (i915#3281 [473]) +14 other tests skip
>  *=20
>    igt@gem_exec_suspend@basic-s0@smem:shard-dg2: NOTRUN -> INCOMPLETE
>    [472] (i915#11441 [471] / i915#13304 [470]) +1 other test incomplete
>  *=20
>    igt@gem_fence_thrash@bo-write-verify-threaded-none:shard-dg2-9:
>    NOTRUN -> SKIP [469] (i915#4860 [468])
>  *=20
>    igt@gem_gtt_cpu_tlb:shard-mtlp: NOTRUN -> SKIP [467] (i915#4077
>    [451]) +1 other test skip
>  *=20
>    igt@gem_huc_copy@huc-copy:shard-tglu: NOTRUN -> SKIP [466]
>    (i915#2190 [465])
>  *=20
>    igt@gem_lmem_evict@dontneed-evict-race:shard-rkl: NOTRUN -> SKIP
>    [464] (i915#4613 [454] / i915#7582 [463])
>  *=20
>    igt@gem_lmem_swapping@heavy-random:shard-tglu: NOTRUN -> SKIP [462]
>    (i915#4613 [454]) +2 other tests skip
>  *=20
>    igt@gem_lmem_swapping@heavy-verify-random:shard-mtlp: NOTRUN -> SKIP
>    [461] (i915#4613 [454])
>  *=20
>    igt@gem_lmem_swapping@parallel-random:shard-glk: NOTRUN -> SKIP
>    [460] (i915#4613 [454])
>  *=20
>    igt@gem_lmem_swapping@random:shard-tglu-1: NOTRUN -> SKIP [459]
>    (i915#4613 [454])
>  *=20
>    igt@gem_lmem_swapping@smem-oom@lmem0:shard-dg1: PASS [458] ->
>    TIMEOUT [457] (i915#14044 [456] / i915#5493 [78]) +1 other test
>    timeout
>  *=20
>    igt@gem_lmem_swapping@verify:shard-rkl: NOTRUN -> SKIP [455]
>    (i915#4613 [454]) +5 other tests skip
>  *=20
>    igt@gem_mmap_gtt@basic-small-bo-tiledy:shard-dg2-9: NOTRUN -> SKIP
>    [453] (i915#4077 [451]) +3 other tests skip
>  *=20
>    igt@gem_mmap_gtt@zero-extend:shard-dg2: NOTRUN -> SKIP [452]
>    (i915#4077 [451]) +4 other tests skip
>  *=20
>    igt@gem_mmap_wc@bad-object:shard-dg2-9: NOTRUN -> SKIP [450]
>    (i915#4083 [448]) +1 other test skip
>  *=20
>    igt@gem_mmap_wc@close:shard-dg2: NOTRUN -> SKIP [449] (i915#4083
>    [448]) +2 other tests skip
>  *=20
>    igt@gem_pread@exhaustion:shard-glk: NOTRUN -> WARN [447] (i915#2658
>    [446])
>  *=20
>    igt@gem_pread@snoop:shard-rkl: NOTRUN -> SKIP [445] (i915#3282
>    [437]) +4 other tests skip
>  *=20
>    igt@gem_pxp@hw-rejects-pxp-buffer:shard-rkl: NOTRUN -> TIMEOUT [444]
>    (i915#12917 [75] / i915#12964 [54]) +4 other tests timeout
>  *=20
>    igt@gem_pxp@reject-modify-context-protection-on:shard-dg2: NOTRUN ->
>    SKIP [443] (i915#4270 [441])
>  *=20
>    igt@gem_pxp@verify-pxp-execution-after-suspend-resume:shard-dg2-9:
>    NOTRUN -> SKIP [442] (i915#4270 [441]) +1 other test skip
>  *=20
>    igt@gem_pxp@verify-pxp-stale-buf-execution:shard-rkl: PASS [440] ->
>    TIMEOUT [439] (i915#12917 [75] / i915#12964 [54])
>  *=20
>    igt@gem_readwrite@read-bad-handle:shard-dg2-9: NOTRUN -> SKIP [438]
>    (i915#3282 [437])
>  *=20
>    igt@gem_render_copy@y-tiled:shard-mtlp: NOTRUN -> SKIP [436]
>    (i915#8428 [433])
>  *=20
>    igt@gem_render_copy@y-tiled-ccs-to-y-tiled:shard-dg2-9: NOTRUN ->
>    SKIP [435] (i915#5190 [120] / i915#8428 [433]) +2 other tests skip
>  *=20
>    igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:shard-dg2: NOTRUN ->
>    SKIP [434] (i915#5190 [120] / i915#8428 [433]) +1 other test skip
>  *=20
>    igt@gem_set_tiling_vs_blt@tiled-to-tiled:shard-rkl: NOTRUN -> SKIP
>    [432] (i915#8411 [431])
>  *=20
>    igt@gem_set_tiling_vs_gtt:shard-dg2: NOTRUN -> SKIP [430] (i915#4079
>    [429])
>  *=20
>    igt@gem_unfence_active_buffers:shard-dg2-9: NOTRUN -> SKIP [428]
>    (i915#4879 [427])
>  *=20
>    igt@gem_userptr_blits@dmabuf-sync:shard-glk: NOTRUN -> SKIP [426]
>    (i915#3323 [425])
>  *=20
>    igt@gem_userptr_blits@dmabuf-unsync:shard-dg2-9: NOTRUN -> SKIP
>    [424] (i915#3297 [419]) +2 other tests skip
>  *=20
>    igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:shard-dg2-9:
>    NOTRUN -> SKIP [423] (i915#3297 [419] / i915#4880 [422])
>  *=20
>    igt@gem_userptr_blits@unsync-unmap-cycles:shard-rkl: NOTRUN -> SKIP
>    [420] (i915#3297 [419]) +3 other tests skipshard-tglu-1: NOTRUN ->
>    SKIP [421] (i915#3297 [419])
>  *=20
>    igt@gen3_render_tiledx_blits:shard-dg2-9: NOTRUN -> SKIP [418] +4
>    other tests skip
>  *=20
>    igt@gen9_exec_parse@batch-zero-length:shard-dg2-9: NOTRUN -> SKIP
>    [417] (i915#2856 [411]) +1 other test skip
>  *=20
>    igt@gen9_exec_parse@bb-chained:shard-rkl: NOTRUN -> SKIP [415]
>    (i915#2527 [414]) +3 other tests skipshard-tglu: NOTRUN -> SKIP
>    [416] (i915#2527 [414] / i915#2856 [411]) +1 other test skip
>  *=20
>    igt@gen9_exec_parse@bb-start-param:shard-dg2: NOTRUN -> SKIP [413]
>    (i915#2856 [411])
>  *=20
>    igt@gen9_exec_parse@shadow-peek:shard-mtlp: NOTRUN -> SKIP [412]
>    (i915#2856 [411])
>  *=20
>    igt@i915_drm_fdinfo@virtual-busy-all:shard-dg2: NOTRUN -> SKIP [410]
>    (i915#14118 [408])
>  *=20
>    igt@i915_drm_fdinfo@virtual-busy-idle-all:shard-dg2-9: NOTRUN ->
>    SKIP [409] (i915#14118 [408]) +1 other test skip
>  *=20
>    igt@i915_pm_freq_api@freq-basic-api:shard-rkl: NOTRUN -> SKIP [407]
>    (i915#8399 [406])
>  *=20
>    igt@i915_pm_freq_mult@media-freq@gt0:shard-tglu: NOTRUN -> SKIP
>    [405] (i915#6590 [404]) +1 other test skip
>  *=20
>    igt@i915_pm_rc6_residency@rc6-fence:shard-tglu: NOTRUN -> WARN [403]
>    (i915#13790 [402] / i915#2681 [401]) +1 other test warn
>  *=20
>    igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:shard-dg1: PASS [400] ->
>    FAIL [399] (i915#3591 [398]) +1 other test fail
>  *=20
>    igt@i915_pm_rps@min-max-config-loaded:shard-dg2-9: NOTRUN -> SKIP
>    [397] (i915#11681 [391] / i915#6621 [396])
>  *=20
>    igt@i915_pm_rps@reset:shard-snb: PASS [395] -> INCOMPLETE [394]
>    (i915#13821 [393])
>  *=20
>    igt@i915_pm_rps@thresholds:shard-mtlp: NOTRUN -> SKIP [392]
>    (i915#11681 [391])
>  *=20
>    igt@i915_selftest@live:shard-rkl: NOTRUN -> DMESG-FAIL [390]
>    (i915#12964 [54] / i915#13550 [388])
>  *=20
>    igt@i915_selftest@live@gt_pm:shard-rkl: NOTRUN -> DMESG-FAIL [389]
>    (i915#13550 [388])
>  *=20
>    igt@i915_suspend@basic-s3-without-i915:shard-tglu: NOTRUN ->
>    INCOMPLETE [387] (i915#4817 [383] / i915#7443 [386])
>  *=20
>    igt@i915_suspend@fence-restore-tiled2untiled:shard-rkl: PASS [385] -
>    > INCOMPLETE [384] (i915#12964 [54] / i915#4817 [383])
>  *=20
>    igt@intel_hwmon@hwmon-read:shard-tglu: NOTRUN -> SKIP [381]
>    (i915#7707 [380])shard-mtlp: NOTRUN -> SKIP [382] (i915#7707 [380])
>  *=20
>    igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:shard-dg2-9: NOTRUN
>    -> SKIP [379] (i915#5190 [120])
>  *=20
>    igt@kms_addfb_basic@framebuffer-vs-set-tiling:shard-dg2-9: NOTRUN ->
>    SKIP [378] (i915#4212 [377]) +1 other test skip
>  *=20
>    igt@kms_addfb_basic@invalid-smem-bo-on-discrete:shard-rkl: NOTRUN ->
>    SKIP [376] (i915#12454 [375] / i915#12712 [374])
>  *=20
>    igt@kms_async_flips@async-flip-with-page-flip-events-tiled-
>    atomic@pipe-c-hdmi-a-3-y-rc-ccs-cc:shard-dg1: NOTRUN -> SKIP [373]
>    (i915#8709 [372]) +3 other tests skip
>  *=20
>    igt@kms_atomic@plane-primary-overlay-mutable-zpos:shard-rkl: NOTRUN
>    -> SKIP [371] (i915#9531 [370])
>  *=20
>    igt@kms_atomic_transition@plane-all-modeset-transition:shard-mtlp:
>    NOTRUN -> SKIP [369] (i915#1769 [368] / i915#3555 [111])
>  *=20
>    igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-
>    a-3:shard-dg2: PASS [367] -> FAIL [366] (i915#5956 [66]) +1 other
>    test fail
>  *=20
>    igt@kms_big_fb@4-tiled-8bpp-rotate-0:shard-rkl: NOTRUN -> SKIP [365]
>    (i915#5286 [362]) +9 other tests skip
>  *=20
>    igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:shard-tglu: NOTRUN
>    -> SKIP [364] (i915#5286 [362]) +4 other tests skip
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:shard-
>    tglu-1: NOTRUN -> SKIP [363] (i915#5286 [362]) +1 other test skip
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:shard-
>    mtlp: PASS [361] -> FAIL [360] (i915#5138 [63])
>  *=20
>    igt@kms_big_fb@x-tiled-64bpp-rotate-90:shard-mtlp: NOTRUN -> SKIP
>    [359] +5 other tests skip
>  *=20
>    igt@kms_big_fb@y-tiled-64bpp-rotate-0:shard-dg2: NOTRUN -> SKIP
>    [358] (i915#4538 [33] / i915#5190 [120]) +1 other test skip
>  *=20
>    igt@kms_big_fb@y-tiled-64bpp-rotate-270:shard-rkl: NOTRUN -> SKIP
>    [357] (i915#3638 [356]) +6 other tests skip
>  *=20
>    igt@kms_big_fb@yf-tiled-8bpp-rotate-90:shard-dg2-9: NOTRUN -> SKIP
>    [355] (i915#4538 [33] / i915#5190 [120]) +4 other tests skip
>  *=20
>    igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-4:shard-
>    dg1: NOTRUN -> SKIP [354] (i915#4423 [30] / i915#6095 [26])
>  *=20
>    igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:shard-tglu-1: NOTRUN ->
>    SKIP [353] (i915#12313 [347])
>  *=20
>    igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-
>    1:shard-dg2: NOTRUN -> SKIP [352] (i915#10307 [333] / i915#10434
>    [351] / i915#6095 [26]) +1 other test skip
>  *=20
>    igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:shard-tglu: NOTRUN ->
>    SKIP [350] (i915#12313 [347]) +1 other test skip
>  *=20
>    igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:shard-rkl: NOTRUN ->
>    SKIP [349] (i915#12313 [347]) +3 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:shard-mtlp:
>    NOTRUN -> SKIP [348] (i915#12313 [347])
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-edp-1:shard-
>    mtlp: NOTRUN -> SKIP [346] (i915#6095 [26]) +4 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:shard-tglu-1: NOTRUN
>    -> SKIP [344] (i915#12805 [342])shard-rkl: NOTRUN -> SKIP [345]
>    (i915#12805 [342])
>  *=20
>    igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:shard-dg2-9: NOTRUN
>    -> SKIP [343] (i915#12805 [342])
>  *=20
>    igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-
>    2:shard-rkl: NOTRUN -> SKIP [341] (i915#6095 [26]) +40 other tests
>    skip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-1:shard-
>    tglu-1: NOTRUN -> SKIP [340] (i915#6095 [26]) +9 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-
>    a-3:shard-dg2: NOTRUN -> SKIP [339] (i915#6095 [26]) +15 other tests
>    skip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:shard-
>    glk: NOTRUN -> INCOMPLETE [338] (i915#12796 [60])
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-
>    hdmi-a-1:shard-tglu: NOTRUN -> SKIP [337] (i915#6095 [26]) +34 other
>    tests skip
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-
>    hdmi-a-1:shard-dg2: NOTRUN -> SKIP [336] (i915#10307 [333] /
>    i915#6095 [26]) +118 other tests skip
>  *=20
>    igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-
>    2:shard-rkl: NOTRUN -> SKIP [335] (i915#14098 [27] / i915#6095 [26])
>    +53 other tests skip
>  *=20
>    igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:shard-dg2-9:
>    NOTRUN -> SKIP [334] (i915#10307 [333] / i915#6095 [26]) +34 other
>    tests skip
>  *=20
>    igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:shard-dg1:
>    NOTRUN -> SKIP [332] (i915#6095 [26]) +102 other tests skip
>  *=20
>    igt@kms_cdclk@mode-transition-all-outputs:shard-rkl: NOTRUN -> SKIP
>    [331] (i915#3742 [330])
>  *=20
>    igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:shard-dg2: NOTRUN ->
>    SKIP [329] (i915#13781 [328]) +3 other tests skip
>  *=20
>    igt@kms_chamelium_audio@hdmi-audio:shard-tglu-1: NOTRUN -> SKIP
>    [327] (i915#11151 [321] / i915#7828 [320]) +1 other test skip
>  *=20
>    igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:shard-rkl:
>    NOTRUN -> SKIP [326] (i915#11151 [321] / i915#7828 [320]) +15 other
>    tests skip
>  *=20
>    igt@kms_chamelium_edid@hdmi-mode-timings:shard-tglu: NOTRUN -> SKIP
>    [325] (i915#11151 [321] / i915#7828 [320]) +5 other tests skip
>  *=20
>    igt@kms_chamelium_frames@hdmi-crc-fast:shard-mtlp: NOTRUN -> SKIP
>    [324] (i915#11151 [321] / i915#7828 [320])
>  *=20
>    igt@kms_chamelium_hpd@dp-hpd-after-suspend:shard-dg2: NOTRUN -> SKIP
>    [323] (i915#11151 [321] / i915#7828 [320]) +1 other test skip
>  *=20
>    igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:shard-dg2-9: NOTRUN ->
>    SKIP [322] (i915#11151 [321] / i915#7828 [320]) +5 other tests skip
>  *=20
>    igt@kms_content_protection@dp-mst-lic-type-0:shard-rkl: NOTRUN ->
>    SKIP [318] (i915#3116 [317])shard-tglu-1: NOTRUN -> SKIP [319]
>    (i915#3116 [317] / i915#3299 [315])
>  *=20
>    igt@kms_content_protection@dp-mst-type-1:shard-dg2: NOTRUN -> SKIP
>    [316] (i915#3299 [315])
>  *=20
>    igt@kms_content_protection@lic-type-0:shard-tglu: NOTRUN -> SKIP
>    [313] (i915#6944 [312] / i915#9424 [20]) +2 other tests skipshard-
>    mtlp: NOTRUN -> SKIP [314] (i915#6944 [312] / i915#9424 [20])
>  *=20
>    igt@kms_content_protection@lic-type-1:shard-rkl: NOTRUN -> SKIP
>    [311] (i915#9424 [20])
>  *=20
>    igt@kms_content_protection@type1:shard-rkl: NOTRUN -> SKIP [310]
>    (i915#7118 [22] / i915#9424 [20]) +1 other test skip
>  *=20
>    igt@kms_cursor_crc@cursor-offscreen-32x10:shard-dg2-9: NOTRUN ->
>    SKIP [309] (i915#3555 [111]) +2 other tests skip
>  *=20
>    igt@kms_cursor_crc@cursor-offscreen-512x512:shard-rkl: NOTRUN ->
>    SKIP [308] (i915#13049 [295])
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:shard-
>    tglu: NOTRUN -> FAIL [307] (i915#13566 [303]) +1 other test fail
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-256x256:shard-rkl: NOTRUN ->
>    DMESG-WARN [306] (i915#12964 [54]) +15 other tests dmesg-warn
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-256x85:shard-tglu-1: NOTRUN ->
>    FAIL [305] (i915#13566 [303]) +1 other test fail
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:shard-rkl:
>    NOTRUN -> FAIL [304] (i915#13566 [303]) +1 other test fail
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-32x32:shard-rkl: NOTRUN -> SKIP
>    [302] (i915#3555 [111]) +8 other tests skip
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-512x512:shard-tglu: NOTRUN ->
>    SKIP [301] (i915#13049 [295]) +1 other test skip
>  *=20
>    igt@kms_cursor_crc@cursor-random-32x10:shard-tglu: NOTRUN -> SKIP
>    [300] (i915#3555 [111]) +6 other tests skip
>  *=20
>    igt@kms_cursor_crc@cursor-random-max-size:shard-glk: NOTRUN -> SKIP
>    [299] +51 other tests skip
>  *=20
>    igt@kms_cursor_crc@cursor-rapid-movement-512x512:shard-mtlp: NOTRUN
>    -> SKIP [298] (i915#13049 [295]) +1 other test skip
>  *=20
>    igt@kms_cursor_crc@cursor-sliding-32x10:shard-tglu-1: NOTRUN -> SKIP
>    [297] (i915#3555 [111])
>  *=20
>    igt@kms_cursor_crc@cursor-sliding-512x170:shard-dg2: NOTRUN -> SKIP
>    [296] (i915#13049 [295])
>  *=20
>    igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:shard-dg2-9:
>    NOTRUN -> SKIP [294] (i915#13046 [293] / i915#5354 [168]) +1 other
>    test skip
>  *=20
>    igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:shard-
>    rkl: NOTRUN -> SKIP [292] (i915#4103 [288]) +1 other test skip
>  *=20
>    igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:shard-
>    tglu: NOTRUN -> SKIP [289] (i915#4103 [288])shard-mtlp: NOTRUN ->
>    SKIP [291] (i915#4213 [290])
>  *=20
>    igt@kms_cursor_legacy@torture-move@pipe-a:shard-rkl: PASS [287] ->
>    DMESG-WARN [286] (i915#12964 [54]) +1 other test dmesg-warn
>  *=20
>    igt@kms_dirtyfb@psr-dirtyfb-ioctl:shard-rkl: NOTRUN -> SKIP [284]
>    (i915#9723 [283])shard-tglu: NOTRUN -> SKIP [285] (i915#9723 [283])
>  *=20
>    igt@kms_dp_link_training@uhbr-mst:shard-tglu: NOTRUN -> SKIP [282]
>    (i915#13748 [281])
>  *=20
>    igt@kms_draw_crc@draw-method-mmap-gtt:shard-dg2-9: NOTRUN -> SKIP
>    [280] (i915#8812 [279])
>  *=20
>    igt@kms_dsc@dsc-fractional-bpp:shard-rkl: NOTRUN -> SKIP [278]
>    (i915#3840 [274])
>  *=20
>    igt@kms_dsc@dsc-with-output-formats:shard-rkl: NOTRUN -> SKIP [276]
>    (i915#3555 [111] / i915#3840 [274]) +1 other test skipshard-tglu-1:
>    NOTRUN -> SKIP [277] (i915#3555 [111] / i915#3840 [274]) +1 other
>    test skip
>  *=20
>    igt@kms_dsc@dsc-with-output-formats-with-bpc:shard-rkl: NOTRUN ->
>    SKIP [275] (i915#3840 [274] / i915#9053 [273])
>  *=20
>    igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests:shard-dg2:
>    NOTRUN -> SKIP [272] (i915#13798 [271])
>  *=20
>    igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:shard-
>    tglu: NOTRUN -> SKIP [270] (i915#2575 [269])
>  *=20
>    igt@kms_feature_discovery@display-4x:shard-tglu: NOTRUN -> SKIP
>    [268] (i915#1839 [267]) +1 other test skip
>  *=20
>    igt@kms_feature_discovery@psr1:shard-rkl: NOTRUN -> SKIP [266]
>    (i915#658 [265])
>  *=20
>    igt@kms_flip@2x-flip-vs-blocking-wf-vblank:shard-dg2-9: NOTRUN ->
>    SKIP [264] (i915#9934 [250]) +5 other tests skip
>  *=20
>    igt@kms_flip@2x-flip-vs-dpms:shard-rkl: NOTRUN -> SKIP [263]
>    (i915#9934 [250]) +11 other tests skip
>  *=20
>    igt@kms_flip@2x-flip-vs-fences:shard-dg2: NOTRUN -> SKIP [262]
>    (i915#8381 [261])
>  *=20
>    igt@kms_flip@2x-nonexisting-fb:shard-tglu: NOTRUN -> SKIP [260]
>    (i915#3637 [251] / i915#9934 [250]) +3 other tests skip
>  *=20
>    igt@kms_flip@2x-plain-flip-interruptible:shard-tglu-1: NOTRUN ->
>    SKIP [259] (i915#3637 [251] / i915#9934 [250])
>  *=20
>    igt@kms_flip@2x-plain-flip-ts-check:shard-glk: PASS [258] -> FAIL
>    [257] (i915#11832 [256] / i915#13734 [51]) +1 other test fail
>  *=20
>    igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:shard-glk:
>    PASS [255] -> FAIL [254] (i915#13734 [51]) +1 other test fail
>  *=20
>    igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:shard-dg2:
>    NOTRUN -> SKIP [253] (i915#9934 [250]) +2 other tests skip
>  *=20
>    igt@kms_flip@2x-wf_vblank-ts-check-interruptible:shard-mtlp: NOTRUN
>    -> SKIP [252] (i915#3637 [251] / i915#9934 [250]) +2 other tests
>    skip
>  *=20
>    igt@kms_flip@flip-vs-suspend-interruptible:shard-dg1: PASS [249] ->
>    DMESG-WARN [248] (i915#4423 [30])
>  *=20
>    igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:shard-dg1:
>    NOTRUN -> DMESG-WARN [247] (i915#4423 [30])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>    downscaling:shard-tglu: NOTRUN -> SKIP [246] (i915#2672 [232] /
>    i915#3555 [111]) +2 other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>    upscaling:shard-tglu-1: NOTRUN -> SKIP [245] (i915#2672 [232] /
>    i915#3555 [111])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>    upscaling@pipe-a-valid-mode:shard-tglu-1: NOTRUN -> SKIP [244]
>    (i915#2587 [238] / i915#2672 [232])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>    upscaling:shard-dg2: NOTRUN -> SKIP [243] (i915#2672 [232] /
>    i915#3555 [111])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>    upscaling@pipe-a-valid-mode:shard-dg2: NOTRUN -> SKIP [242]
>    (i915#2672 [232]) +1 other test skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-
>    downscaling:shard-dg2-9: NOTRUN -> SKIP [241] (i915#2672 [232] /
>    i915#3555 [111] / i915#5190 [120])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-
>    upscaling:shard-tglu: NOTRUN -> SKIP [240] (i915#2587 [238] /
>    i915#2672 [232] / i915#3555 [111]) +1 other test skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-
>    upscaling@pipe-a-valid-mode:shard-tglu: NOTRUN -> SKIP [239]
>    (i915#2587 [238] / i915#2672 [232]) +4 other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>    downscaling@pipe-a-valid-mode:shard-dg2-9: NOTRUN -> SKIP [237]
>    (i915#2672 [232]) +1 other test skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>    upscaling:shard-rkl: NOTRUN -> SKIP [236] (i915#2672 [232] /
>    i915#3555 [111]) +6 other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>    upscaling@pipe-a-valid-mode:shard-rkl: NOTRUN -> SKIP [235]
>    (i915#2672 [232]) +6 other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-
>    upscaling:shard-dg2-9: NOTRUN -> SKIP [234] (i915#2672 [232] /
>    i915#3555 [111]) +2 other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-
>    downscaling:shard-dg2: NOTRUN -> SKIP [233] (i915#2672 [232] /
>    i915#3555 [111] / i915#5190 [120])
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-
>    gtt:shard-mtlp: NOTRUN -> SKIP [231] (i915#8708 [224]) +1 other test
>    skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-
>    fullscreen:shard-tglu-1: NOTRUN -> SKIP [230] +18 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-2p-rte:shard-dg2: NOTRUN -> SKIP
>    [229] (i915#5354 [168]) +9 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:shard-
>    rkl: NOTRUN -> SKIP [228] (i915#1825 [216]) +56 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:shard-dg2:
>    NOTRUN -> SKIP [227] (i915#8708 [224]) +7 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-
>    gtt:shard-rkl: NOTRUN -> SKIP [226] +30 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-
>    wc:shard-dg2-9: NOTRUN -> SKIP [225] (i915#8708 [224]) +3 other
>    tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:shard-
>    rkl: NOTRUN -> SKIP [223] (i915#3023 [222]) +41 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:shard-dg2:
>    NOTRUN -> SKIP [221] (i915#3458 [5])
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:shard-rkl: NOTRUN ->
>    SKIP [220] (i915#5439 [219])
>  *=20
>    igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-
>    blt:shard-dg2-9: NOTRUN -> SKIP [218] (i915#5354 [168]) +11 other
>    tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-
>    wc:shard-tglu: NOTRUN -> SKIP [215] +58 other tests skipshard-mtlp:
>    NOTRUN -> SKIP [217] (i915#1825 [216]) +6 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:shard-dg2-9:
>    NOTRUN -> SKIP [214] (i915#3458 [5]) +9 other tests skip
>  *=20
>    igt@kms_hdr@bpc-switch-dpms:shard-rkl: NOTRUN -> SKIP [212]
>    (i915#3555 [111] / i915#8228 [205]) +1 other test skipshard-tglu-1:
>    NOTRUN -> SKIP [213] (i915#3555 [111] / i915#8228 [205]) +1 other
>    test skip
>  *=20
>    igt@kms_hdr@brightness-with-hdr:shard-dg2-9: NOTRUN -> SKIP [211]
>    (i915#12713 [207])
>  *=20
>    igt@kms_hdr@static-toggle:shard-dg2: PASS [210] -> SKIP [209]
>    (i915#3555 [111] / i915#8228 [205]) +1 other test skip
>  *=20
>    igt@kms_hdr@static-toggle-suspend:shard-tglu: NOTRUN -> SKIP [206]
>    (i915#3555 [111] / i915#8228 [205])shard-mtlp: NOTRUN -> SKIP [208]
>    (i915#12713 [207] / i915#3555 [111] / i915#8228 [205])
>  *=20
>    igt@kms_joiner@basic-big-joiner:shard-rkl: NOTRUN -> SKIP [203]
>    (i915#10656 [202])shard-tglu: NOTRUN -> SKIP [204] (i915#10656
>    [202]) +1 other test skip
>  *=20
>    igt@kms_joiner@basic-force-ultra-joiner:shard-tglu: NOTRUN -> SKIP
>    [201] (i915#12394 [200])
>  *=20
>    igt@kms_joiner@invalid-modeset-force-big-joiner:shard-rkl: NOTRUN ->
>    SKIP [199] (i915#12388 [198]) +1 other test skip
>  *=20
>    igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:shard-tglu:
>    NOTRUN -> SKIP [196] (i915#13522 [195])shard-rkl: NOTRUN -> SKIP
>    [197] (i915#13522 [195])
>  *=20
>    igt@kms_multipipe_modeset@basic-max-pipe-crc-check:shard-rkl: NOTRUN
>    -> SKIP [194] (i915#4070 [193] / i915#4816 [192])
>  *=20
>    igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:shard-dg2: NOTRUN
>    -> SKIP [191] +5 other tests skip
>  *=20
>    igt@kms_plane_alpha_blend@constant-alpha-max:shard-glk: NOTRUN ->
>    FAIL [190] (i915#10647 [187] / i915#12169 [189])
>  *=20
>    igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:shard-
>    glk: NOTRUN -> FAIL [188] (i915#10647 [187]) +1 other test fail
>  *=20
>    igt@kms_plane_multiple@2x-tiling-x:shard-tglu: NOTRUN -> SKIP [186]
>    (i915#13958 [185])
>  *=20
>    igt@kms_plane_scaling@intel-max-src-size:shard-dg2-9: NOTRUN -> SKIP
>    [183] (i915#6953 [173] / i915#9423 [182])shard-rkl: NOTRUN -> SKIP
>    [184] (i915#6953 [173])
>  *=20
>    igt@kms_plane_scaling@plane-downscale-factor-0-25-with-
>    rotation@pipe-a:shard-mtlp: NOTRUN -> SKIP [181] (i915#12247 [174])
>    +8 other tests skip
>  *=20
>    igt@kms_plane_scaling@plane-downscale-factor-0-25-with-
>    rotation@pipe-c:shard-tglu: NOTRUN -> SKIP [180] (i915#12247 [174])
>    +17 other tests skip
>  *=20
>    igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-
>    a:shard-rkl: NOTRUN -> SKIP [179] (i915#12247 [174]) +10 other tests
>    skip
>  *=20
>    igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-
>    25:shard-rkl: NOTRUN -> SKIP [178] (i915#12247 [174] / i915#6953
>    [173])
>  *=20
>    igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-
>    25:shard-tglu: NOTRUN -> SKIP [176] (i915#12247 [174] / i915#3555
>    [111])shard-mtlp: NOTRUN -> SKIP [177] (i915#12247 [174] / i915#3555
>    [111])
>  *=20
>    igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-
>    25:shard-tglu: NOTRUN -> SKIP [175] (i915#12247 [174] / i915#6953
>    [173])
>  *=20
>    igt@kms_pm_backlight@brightness-with-dpms:shard-rkl: NOTRUN -> SKIP
>    [171] (i915#12343 [170])shard-dg2-9: NOTRUN -> SKIP [172]
>    (i915#12343 [170])
>  *=20
>    igt@kms_pm_backlight@fade-with-suspend:shard-tglu: NOTRUN -> SKIP
>    [167] (i915#9812 [166])shard-rkl: NOTRUN -> SKIP [169] (i915#5354
>    [168])
>  *=20
>    igt@kms_pm_dc@dc5-retention-flops:shard-dg2-9: NOTRUN -> SKIP [165]
>    (i915#3828 [3])
>  *=20
>    igt@kms_pm_dc@dc6-dpms:shard-rkl: NOTRUN -> SKIP [164] (i915#3361
>    [163])
>  *=20
>    igt@kms_pm_lpsp@screens-disabled:shard-tglu: NOTRUN -> SKIP [161]
>    (i915#8430 [160])shard-mtlp: NOTRUN -> SKIP [162] (i915#8430 [160])
>  *=20
>    igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:shard-dg2: PASS [159] ->
>    SKIP [158] (i915#9519 [40]) +1 other test skip
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp-stress:shard-rkl: NOTRUN -> SKIP
>    [157] (i915#9519 [40]) +1 other test skip
>  *=20
>    igt@kms_prime@basic-crc-hybrid:shard-tglu: NOTRUN -> SKIP [156]
>    (i915#6524 [152])
>  *=20
>    igt@kms_prime@basic-modeset-hybrid:shard-rkl: NOTRUN -> SKIP [154]
>    (i915#6524 [152]) +1 other test skipshard-tglu-1: NOTRUN -> SKIP
>    [155] (i915#6524 [152])
>  *=20
>    igt@kms_prime@d3hot:shard-dg2-9: NOTRUN -> SKIP [153] (i915#6524
>    [152] / i915#6805 [151])
>  *=20
>    igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-
>    sf:shard-glk: NOTRUN -> SKIP [150] (i915#11520 [143])
>  *=20
>    igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:shard-rkl:
>    NOTRUN -> SKIP [149] (i915#11520 [143]) +12 other tests skip
>  *=20
>    igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:shard-
>    tglu-1: NOTRUN -> SKIP [148] (i915#11520 [143])
>  *=20
>    igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:shard-tglu:
>    NOTRUN -> SKIP [147] (i915#11520 [143]) +4 other tests skip
>  *=20
>    igt@kms_psr2_sf@pr-cursor-plane-update-sf:shard-dg1: NOTRUN -> SKIP
>    [146] (i915#11520 [143])
>  *=20
>    igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:shard-
>    dg2-9: NOTRUN -> SKIP [145] (i915#11520 [143]) +2 other tests skip
>  *=20
>    igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:shard-dg2:
>    NOTRUN -> SKIP [144] (i915#11520 [143]) +2 other tests skip
>  *=20
>    igt@kms_psr2_su@page_flip-nv12:shard-rkl: NOTRUN -> SKIP [142]
>    (i915#9683 [140])
>  *=20
>    igt@kms_psr2_su@page_flip-p010:shard-tglu: NOTRUN -> SKIP [141]
>    (i915#9683 [140]) +1 other test skip
>  *=20
>    igt@kms_psr@fbc-psr-cursor-plane-move:shard-dg2-9: NOTRUN -> SKIP
>    [139] (i915#1072 [131] / i915#9732 [130]) +10 other tests skip
>  *=20
>    igt@kms_psr@fbc-psr-primary-mmap-gtt:shard-dg2: NOTRUN -> SKIP [138]
>    (i915#1072 [131] / i915#9732 [130]) +4 other tests skip
>  *=20
>    igt@kms_psr@fbc-psr-primary-render:shard-tglu-1: NOTRUN -> SKIP
>    [137] (i915#9732 [130]) +5 other tests skip
>  *=20
>    igt@kms_psr@fbc-psr2-no-drrs:shard-tglu: NOTRUN -> SKIP [136]
>    (i915#9732 [130]) +12 other tests skip
>  *=20
>    igt@kms_psr@fbc-psr2-sprite-blt@edp-1:shard-mtlp: NOTRUN -> SKIP
>    [135] (i915#9688 [134]) +2 other tests skip
>  *=20
>    igt@kms_psr@pr-primary-page-flip:shard-dg1: NOTRUN -> SKIP [133]
>    (i915#1072 [131] / i915#9732 [130])
>  *=20
>    igt@kms_psr@psr2-suspend:shard-rkl: NOTRUN -> SKIP [132] (i915#1072
>    [131] / i915#9732 [130]) +36 other tests skip
>  *=20
>    igt@kms_psr_stress_test@flip-primary-invalidate-overlay:shard-rkl:
>    NOTRUN -> SKIP [128] (i915#9685 [127]) +1 other test skipshard-tglu:
>    NOTRUN -> SKIP [129] (i915#9685 [127]) +2 other tests skip
>  *=20
>    igt@kms_rotation_crc@bad-pixel-format:shard-dg2-9: NOTRUN -> SKIP
>    [126] (i915#12755 [121]) +1 other test skip
>  *=20
>    igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:shard-rkl: NOTRUN -
>    > SKIP [125] (i915#5289 [123])
>  *=20
>    igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:shard-mtlp:
>    NOTRUN -> SKIP [124] (i915#5289 [123])
>  *=20
>    igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:shard-dg2-9:
>    NOTRUN -> SKIP [122] (i915#12755 [121] / i915#5190 [120])
>  *=20
>    igt@kms_tiled_display@basic-test-pattern:shard-dg2-9: NOTRUN -> SKIP
>    [118] (i915#8623 [117])shard-rkl: NOTRUN -> SKIP [119] (i915#8623
>    [117])
>  *=20
>    igt@kms_vrr@lobf:shard-rkl: NOTRUN -> SKIP [116] (i915#11920 [115])
>  *=20
>    igt@kms_vrr@max-min:shard-rkl: NOTRUN -> SKIP [114] (i915#9906
>    [109])
>  *=20
>    igt@kms_vrr@negative-basic:shard-dg2: PASS [113] -> SKIP [112]
>    (i915#3555 [111] / i915#9906 [109])
>  *=20
>    igt@kms_vrr@seamless-rr-switch-drrs:shard-tglu: NOTRUN -> SKIP [110]
>    (i915#9906 [109])
>  *=20
>    igt@kms_writeback@writeback-check-output:shard-rkl: NOTRUN -> SKIP
>    [108] (i915#2437 [103])
>  *=20
>    igt@kms_writeback@writeback-check-output-xrgb2101010:shard-rkl:
>    NOTRUN -> SKIP [107] (i915#2437 [103] / i915#9412 [106])
>  *=20
>    igt@kms_writeback@writeback-fb-id:shard-dg2-9: NOTRUN -> SKIP [105]
>    (i915#2437 [103])
>  *=20
>    igt@kms_writeback@writeback-invalid-parameters:shard-dg2: NOTRUN ->
>    SKIP [104] (i915#2437 [103])
>  *=20
>    igt@perf_pmu@busy-double-start@vecs1:shard-dg2: NOTRUN -> FAIL [102]
>    (i915#4349 [101]) +4 other tests fail
>  *=20
>    igt@perf_pmu@frequency@gt0:shard-dg2-9: NOTRUN -> FAIL [100]
>    (i915#12549 [99] / i915#6806 [98]) +1 other test fail
>  *=20
>    igt@perf_pmu@rc6@other-idle-gt0:shard-tglu: NOTRUN -> SKIP [97]
>    (i915#8516 [96])
>  *=20
>    igt@prime_mmap@test_aperture_limit:shard-dg2: NOTRUN -> SKIP [95]
>    (i915#14121 [94]) +1 other test skip
>  *=20
>    igt@prime_vgem@basic-fence-read:shard-dg2-9: NOTRUN -> SKIP [93]
>    (i915#3291 [91] / i915#3708 [89])
>  *=20
>    igt@prime_vgem@basic-read:shard-rkl: NOTRUN -> SKIP [92] (i915#3291
>    [91] / i915#3708 [89])
>  *=20
>    igt@prime_vgem@fence-read-hang:shard-rkl: NOTRUN -> SKIP [90]
>    (i915#3708 [89]) +1 other test skip
>  *=20
>    igt@sriov_basic@enable-vfs-autoprobe-off:shard-dg2: NOTRUN -> SKIP
>    [88] (i915#9917 [86])
>  *=20
>    igt@sriov_basic@enable-vfs-autoprobe-on:shard-dg2-9: NOTRUN -> SKIP
>    [87] (i915#9917 [86])
>  *=20
>    igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:shard-tglu:
>    NOTRUN -> FAIL [84] (i915#12910 [83])shard-mtlp: NOTRUN -> FAIL [85]
>    (i915#12910 [83])
> Possible fixes *=20
>    igt@gem_eio@suspend:shard-mtlp: ABORT [82] (i915#13723 [81]) -> PASS
>    [80]
>  *=20
>    igt@gem_lmem_swapping@smem-oom@lmem0:shard-dg2: TIMEOUT [79]
>    (i915#5493 [78]) -> PASS [77] +1 other test pass
>  *=20
>    igt@gem_pxp@verify-pxp-stale-buf-optout-execution:shard-rkl: TIMEOUT
>    [76] (i915#12917 [75] / i915#12964 [54]) -> PASS [74]
>  *=20
>    igt@i915_pm_rpm@system-suspend:shard-glk: INCOMPLETE [73]
>    (i915#12797 [72]) -> PASS [71]
>  *=20
>    igt@i915_selftest@live@workarounds:shard-dg2: DMESG-FAIL [70]
>    (i915#12061 [69]) -> PASS [68] +1 other test pass
>  *=20
>    igt@kms_atomic_transition@plane-all-modeset-transition-
>    fencing:shard-dg2: FAIL [67] (i915#5956 [66]) -> PASS [65] +1 other
>    test pass
>  *=20
>    igt@kms_big_fb@linear-8bpp-rotate-180:shard-dg1: FAIL [64]
>    (i915#5138 [63]) -> PASS [62]
>  *=20
>    igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:shard-
>    glk: INCOMPLETE [61] (i915#12796 [60]) -> PASS [59]
>  *=20
>    igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:shard-
>    glk: DMESG-WARN [58] (i915#118 [57]) -> PASS [56]
>  *=20
>    igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:shard-rkl:
>    DMESG-WARN [55] (i915#12964 [54]) -> PASS [53] +4 other tests pass
>  *=20
>    igt@kms_flip@plain-flip-fb-recreate@c-edp1:shard-mtlp: FAIL [52]
>    (i915#13734 [51]) -> PASS [50] +1 other test pass
>  *=20
>    igt@kms_pm_dc@dc9-dpms:shard-rkl: SKIP [49] (i915#4281 [48]) -> PASS
>    [47]
>  *=20
>    igt@kms_pm_rpm@i2c:shard-dg1: DMESG-WARN [43] (i915#4423 [30]) ->
>    PASS [42] +2 other tests passshard-dg2: FAIL [46] (i915#8717 [45]) -
>    > PASS [44]
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp-stress:shard-dg2: SKIP [41]
>    (i915#9519 [40]) -> PASS [39] +1 other test pass
>  *=20
>    igt@perf_pmu@module-unload:shard-mtlp: INCOMPLETE [38] (i915#13520
>    [37]) -> PASS [36]
> Warnings *=20
>    igt@kms_big_fb@yf-tiled-16bpp-rotate-180:shard-dg1: SKIP [35]
>    (i915#4538 [33]) -> SKIP [34] (i915#4423 [30] / i915#4538 [33])
>  *=20
>    igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs:shard-dg1: SKIP [32]
>    (i915#6095 [26]) -> SKIP [31] (i915#4423 [30] / i915#6095 [26])
>  *=20
>    igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-
>    2:shard-rkl: SKIP [29] (i915#6095 [26]) -> SKIP [28] (i915#14098
>    [27] / i915#6095 [26]) +1 other test skip
>  *=20
>    igt@kms_content_protection@atomic-dpms:shard-dg2: FAIL [25]
>    (i915#7173 [24]) -> SKIP [23] (i915#7118 [22] / i915#9424 [20])
>  *=20
>    igt@kms_content_protection@mei-interface:shard-dg1: SKIP [21]
>    (i915#9424 [20]) -> SKIP [19] (i915#9433 [18])
>  *=20
>    igt@kms_flip@2x-flip-vs-suspend:shard-glk: INCOMPLETE [17]
>    (i915#12745 [15] / i915#4839 [11]) -> INCOMPLETE [16] (i915#12314
>    [12] / i915#12745 [15] / i915#4839 [11])
>  *=20
>    igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:shard-glk:
>    INCOMPLETE [14] (i915#4839 [11]) -> INCOMPLETE [13] (i915#12314 [12]
>    / i915#4839 [11])
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-
>    move:shard-dg2: SKIP [10] (i915#10433 [6] / i915#3458 [5]) -> SKIP
>    [9] (i915#3458 [5])
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-
>    cpu:shard-dg2: SKIP [8] (i915#3458 [5]) -> SKIP [7] (i915#10433 [6]
>    / i915#3458 [5]) +1 other test skip
>  *=20
>    igt@kms_pm_lpsp@kms-lpsp:shard-rkl: SKIP [4] (i915#3828 [3]) -> SKIP
>    [2] (i915#9340 [1])
> Build changes * Linux: CI_DRM_16571 -> Patchwork_149236v2
> CI-20190529: 20190529
> CI_DRM_16571: 943adcb1bc226246125ec1d18a387b4295e73703 @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8369: 8369
> Patchwork_149236v2: 943adcb1bc226246125ec1d18a387b4295e73703 @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit


[1] i915#9340
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
[2] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-8=
/igt@kms_pm_lpsp@kms-lpsp.html
[3] i915#3828
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
[4] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-7/igt@k=
ms_pm_lpsp@kms-lpsp.html
[5] i915#3458
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
[6] i915#10433
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
[7] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-4=
/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
[8] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-11/igt@=
kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
[9] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-3=
/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
[10] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-4/igt@=
kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
[11] i915#4839
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
[12] i915#12314
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
[13] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk8=
/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
[14] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-glk1/igt@k=
ms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
[15] i915#12745
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
[16] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk8=
/igt@kms_flip@2x-flip-vs-suspend.html
[17] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-glk1/igt@k=
ms_flip@2x-flip-vs-suspend.html
[18] i915#9433
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
[19] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1-=
12/igt@kms_content_protection@mei-interface.html
[20] i915#9424
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
[21] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-14/igt=
@kms_content_protection@mei-interface.html
[22] i915#7118
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
[23] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
1/igt@kms_content_protection@atomic-dpms.html
[24] i915#7173
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
[25] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-11/igt=
@kms_content_protection@atomic-dpms.html
[26] i915#6095
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
[27] i915#14098
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
[28] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-=
3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html
[29] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-8/igt@=
kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html
[30] i915#4423
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
[31] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1-=
15/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs.html
[32] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-13/igt=
@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs.html
[33] i915#4538
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
[34] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1-=
15/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
[35] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-13/igt=
@kms_big_fb@yf-tiled-16bpp-rotate-180.html
[36] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtlp=
-6/igt@perf_pmu@module-unload.html
[37] i915#13520
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
[38] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-mtlp-7/igt=
@perf_pmu@module-unload.html
[39] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
[40] i915#9519
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
[41] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-4/igt@=
kms_pm_rpm@modeset-non-lpsp-stress.html
[42] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1-=
15/igt@kms_pm_rpm@i2c.html
[43] DMESG-WARN
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-13/igt=
@kms_pm_rpm@i2c.html
[44] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
4/igt@kms_pm_rpm@i2c.html
[45] i915#8717
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
[46] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-2/igt@=
kms_pm_rpm@i2c.html
[47] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-=
5/igt@kms_pm_dc@dc9-dpms.html
[48] i915#4281
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
[49] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-7/igt@=
kms_pm_dc@dc9-dpms.html
[50] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtlp=
-8/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
[51] i915#13734
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
[52] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-mtlp-3/igt=
@kms_flip@plain-flip-fb-recreate@c-edp1.html
[53] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-=
8/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
[54] i915#12964
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
[55] DMESG-WARN
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-7/igt@=
kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
[56] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk1=
/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
[57] i915#118
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
[58] DMESG-WARN
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-glk6/igt@k=
ms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
[59] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk9=
/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
[60] i915#12796
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
[61] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-glk8/igt@k=
ms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
[62] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1-=
19/igt@kms_big_fb@linear-8bpp-rotate-180.html
[63] i915#5138
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
[64] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-12/igt=
@kms_big_fb@linear-8bpp-rotate-180.html
[65] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
[66] i915#5956
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
[67] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-7/igt@=
kms_atomic_transition@plane-all-modeset-transition-fencing.html
[68] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
10/igt@i915_selftest@live@workarounds.html
[69] i915#12061
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
[70] DMESG-FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-10/igt=
@i915_selftest@live@workarounds.html
[71] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk2=
/igt@i915_pm_rpm@system-suspend.html
[72] i915#12797
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
[73] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-glk5/igt@i=
915_pm_rpm@system-suspend.html
[74] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-=
8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
[75] i915#12917
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
[76] TIMEOUT
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-7/igt@=
gem_pxp@verify-pxp-stale-buf-optout-execution.html
[77] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
5/igt@gem_lmem_swapping@smem-oom@lmem0.html
[78] i915#5493
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
[79] TIMEOUT
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-2/igt@=
gem_lmem_swapping@smem-oom@lmem0.html
[80] PASS
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtlp=
-8/igt@gem_eio@suspend.html
[81] i915#13723
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
[82] ABORT
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-mtlp-4/igt=
@gem_eio@suspend.html
[83] i915#12910
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
[84] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tglu=
-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
[85] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtlp=
-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
[86] i915#9917
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
[87] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
9/igt@sriov_basic@enable-vfs-autoprobe-on.html
[88] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
8/igt@sriov_basic@enable-vfs-autoprobe-off.html
[89] i915#3708
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
[90] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-=
3/igt@prime_vgem@fence-read-hang.html
[91] i915#3291
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
[92] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-=
8/igt@prime_vgem@basic-read.html
[93] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
9/igt@prime_vgem@basic-fence-read.html
[94] i915#14121
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14121
[95] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-=
8/igt@prime_mmap@test_aperture_limit.html
[96] i915#8516
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
[97] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tglu=
-6/igt@perf_pmu@rc6@other-idle-gt0.html
[98] i915#6806
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
[99] i915#12549
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
[100] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@perf_pmu@frequency@gt0.html
[101] i915#4349
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
[102] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@perf_pmu@busy-double-start@vecs1.html
[103] i915#2437
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
[104] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_writeback@writeback-invalid-parameters.html
[105] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_writeback@writeback-fb-id.html
[106] i915#9412
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
[107] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_writeback@writeback-check-output-xrgb2101010.html
[108] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_writeback@writeback-check-output.html
[109] i915#9906
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
[110] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_vrr@seamless-rr-switch-drrs.html
[111] i915#3555
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
[112] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-4/igt@kms_vrr@negative-basic.html
[113] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-11/ig=
t@kms_vrr@negative-basic.html
[114] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_vrr@max-min.html
[115] i915#11920
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
[116] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_vrr@lobf.html
[117] i915#8623
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
[118] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_tiled_display@basic-test-pattern.html
[119] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@kms_tiled_display@basic-test-pattern.html
[120] i915#5190
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
[121] i915#12755
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
[122] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
[123] i915#5289
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
[124] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
[125] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
[126] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_rotation_crc@bad-pixel-format.html
[127] i915#9685
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
[128] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
[129] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
[130] i915#9732
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
[131] i915#1072
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
[132] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@kms_psr@psr2-suspend.html
[133] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-19/igt@kms_psr@pr-primary-page-flip.html
[134] i915#9688
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
[135] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_psr@fbc-psr2-sprite-blt@edp-1.html
[136] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_psr@fbc-psr2-no-drrs.html
[137] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_psr@fbc-psr-primary-render.html
[138] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
[139] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_psr@fbc-psr-cursor-plane-move.html
[140] i915#9683
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
[141] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_psr2_su@page_flip-p010.html
[142] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@kms_psr2_su@page_flip-nv12.html
[143] i915#11520
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
[144] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
[145] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
[146] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-19/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
[147] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
[148] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html
[149] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
[150] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
[151] i915#6805
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
[152] i915#6524
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
[153] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_prime@d3hot.html
[154] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_prime@basic-modeset-hybrid.html
[155] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_prime@basic-modeset-hybrid.html
[156] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_prime@basic-crc-hybrid.html
[157] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
[158] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
[159] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-8/igt=
@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
[160] i915#8430
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
[161] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_pm_lpsp@screens-disabled.html
[162] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_pm_lpsp@screens-disabled.html
[163] i915#3361
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
[164] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_pm_dc@dc6-dpms.html
[165] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_pm_dc@dc5-retention-flops.html
[166] i915#9812
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
[167] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_pm_backlight@fade-with-suspend.html
[168] i915#5354
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
[169] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_pm_backlight@fade-with-suspend.html
[170] i915#12343
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
[171] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@kms_pm_backlight@brightness-with-dpms.html
[172] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_pm_backlight@brightness-with-dpms.html
[173] i915#6953
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
[174] i915#12247
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
[175] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.=
html
[176] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
[177] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
[178] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.h=
tml
[179] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
[180] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.=
html
[181] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a.=
html
[182] i915#9423
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
[183] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_plane_scaling@intel-max-src-size.html
[184] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@kms_plane_scaling@intel-max-src-size.html
[185] i915#13958
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
[186] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_plane_multiple@2x-tiling-x.html
[187] i915#10647
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
[188] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
[189] i915#12169
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
[190] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@kms_plane_alpha_blend@constant-alpha-max.html
[191] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
[192] i915#4816
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
[193] i915#4070
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
[194] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
[195] i915#13522
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522
[196] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
[197] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
[198] i915#12388
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
[199] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html
[200] i915#12394
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
[201] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_joiner@basic-force-ultra-joiner.html
[202] i915#10656
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
[203] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_joiner@basic-big-joiner.html
[204] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_joiner@basic-big-joiner.html
[205] i915#8228
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
[206] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_hdr@static-toggle-suspend.html
[207] i915#12713
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
[208] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_hdr@static-toggle-suspend.html
[209] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_hdr@static-toggle.html
[210] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-10/ig=
t@kms_hdr@static-toggle.html
[211] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_hdr@brightness-with-hdr.html
[212] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_hdr@bpc-switch-dpms.html
[213] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_hdr@bpc-switch-dpms.html
[214] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
[215] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.htm=
l
[216] i915#1825
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
[217] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.htm=
l
[218] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt.html
[219] i915#5439
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
[220] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
[221] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
[222] i915#3023
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
[223] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
[224] i915#8708
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
[225] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.h=
tml
[226] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
[227] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
[228] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
[229] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
[230] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
[231] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.ht=
ml
[232] i915#2672
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
[233] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
.html
[234] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing.html
[235] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode.html
[236] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
[237] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-valid-mode.html
[238] i915#2587
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
[239] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-=
a-valid-mode.html
[240] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.ht=
ml
[241] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
[242] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode.html
[243] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.h=
tml
[244] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@=
pipe-a-valid-mode.html
[245] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.=
html
[246] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downsca=
ling.html
[247] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-15/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4.html
[248] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-15/igt@kms_flip@flip-vs-suspend-interruptible.html
[249] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-13/ig=
t@kms_flip@flip-vs-suspend-interruptible.html
[250] i915#9934
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
[251] i915#3637
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
[252] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
[253] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
[254] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
[255] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-glk9/igt@=
kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
[256] i915#11832
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
[257] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@kms_flip@2x-plain-flip-ts-check.html
[258] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-glk9/igt@=
kms_flip@2x-plain-flip-ts-check.html
[259] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_flip@2x-plain-flip-interruptible.html
[260] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_flip@2x-nonexisting-fb.html
[261] i915#8381
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
[262] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_flip@2x-flip-vs-fences.html
[263] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@kms_flip@2x-flip-vs-dpms.html
[264] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
[265] i915#658
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
[266] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_feature_discovery@psr1.html
[267] i915#1839
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
[268] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_feature_discovery@display-4x.html
[269] i915#2575
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
[270] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html
[271] i915#13798
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798
[272] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests.html
[273] i915#9053
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
[274] i915#3840
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
[275] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
[276] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_dsc@dsc-with-output-formats.html
[277] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_dsc@dsc-with-output-formats.html
[278] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_dsc@dsc-fractional-bpp.html
[279] i915#8812
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
[280] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_draw_crc@draw-method-mmap-gtt.html
[281] i915#13748
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
[282] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_dp_link_training@uhbr-mst.html
[283] i915#9723
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
[284] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
[285] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
[286] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@kms_cursor_legacy@torture-move@pipe-a.html
[287] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-4/igt=
@kms_cursor_legacy@torture-move@pipe-a.html
[288] i915#4103
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
[289] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
[290] i915#4213
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
[291] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
[292] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
[293] i915#13046
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
[294] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
[295] i915#13049
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
[296] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
[297] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
[298] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
[299] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@kms_cursor_crc@cursor-random-max-size.html
[300] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_cursor_crc@cursor-random-32x10.html
[301] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
[302] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
[303] i915#13566
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
[304] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html
[305] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_cursor_crc@cursor-onscreen-256x85.html
[306] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@kms_cursor_crc@cursor-onscreen-256x256.html
[307] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html
[308] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_cursor_crc@cursor-offscreen-512x512.html
[309] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_cursor_crc@cursor-offscreen-32x10.html
[310] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@kms_content_protection@type1.html
[311] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_content_protection@lic-type-1.html
[312] i915#6944
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
[313] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_content_protection@lic-type-0.html
[314] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_content_protection@lic-type-0.html
[315] i915#3299
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
[316] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-10/igt@kms_content_protection@dp-mst-type-1.html
[317] i915#3116
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
[318] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_content_protection@dp-mst-lic-type-0.html
[319] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_content_protection@dp-mst-lic-type-0.html
[320] i915#7828
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
[321] i915#11151
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
[322] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
[323] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
[324] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_chamelium_frames@hdmi-crc-fast.html
[325] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_chamelium_edid@hdmi-mode-timings.html
[326] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
[327] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_chamelium_audio@hdmi-audio.html
[328] i915#13781
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
[329] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
[330] i915#3742
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
[331] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_cdclk@mode-transition-all-outputs.html
[332] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-12/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
[333] i915#10307
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
[334] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc.html
[335] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
[336] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1=
.html
[337] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a=
-1.html
[338] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2.html
[339] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.=
html
[340] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-1.html
[341] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
[342] i915#12805
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
[343] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
[344] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
[345] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
[346] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-edp-1.html
[347] i915#12313
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
[348] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
[349] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
[350] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
[351] i915#10434
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
[352] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html
[353] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
[354] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-15/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-4.html
[355] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
[356] i915#3638
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
[357] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
[358] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
[359] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
[360] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
[361] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-mtlp-3/ig=
t@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
[362] i915#5286
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
[363] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
[364] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
[365] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
[366] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.h=
tml
[367] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-2/igt=
@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
[368] i915#1769
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
[369] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@kms_atomic_transition@plane-all-modeset-transition.html
[370] i915#9531
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
[371] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
[372] i915#8709
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
[373] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-12/igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-=
c-hdmi-a-3-y-rc-ccs-cc.html
[374] i915#12712
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
[375] i915#12454
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
[376] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
[377] i915#4212
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
[378] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
[379] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
[380] i915#7707
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
[381] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@intel_hwmon@hwmon-read.html
[382] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@intel_hwmon@hwmon-read.html
[383] i915#4817
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
[384] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@i915_suspend@fence-restore-tiled2untiled.html
[385] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-8/igt=
@i915_suspend@fence-restore-tiled2untiled.html
[386] i915#7443
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
[387] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@i915_suspend@basic-s3-without-i915.html
[388] i915#13550
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13550
[389] DMESG-FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@i915_selftest@live@gt_pm.html
[390] DMESG-FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@i915_selftest@live.html
[391] i915#11681
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
[392] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@i915_pm_rps@thresholds.html
[393] i915#13821
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
[394] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-snb=
1/igt@i915_pm_rps@reset.html
[395] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-snb6/igt@=
i915_pm_rps@reset.html
[396] i915#6621
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
[397] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@i915_pm_rps@min-max-config-loaded.html
[398] i915#3591
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
[399] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
[400] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-12/ig=
t@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
[401] i915#2681
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
[402] i915#13790
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
[403] WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@i915_pm_rc6_residency@rc6-fence.html
[404] i915#6590
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
[405] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@i915_pm_freq_mult@media-freq@gt0.html
[406] i915#8399
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
[407] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@i915_pm_freq_api@freq-basic-api.html
[408] i915#14118
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
[409] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@i915_drm_fdinfo@virtual-busy-idle-all.html
[410] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@i915_drm_fdinfo@virtual-busy-all.html
[411] i915#2856
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
[412] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@gen9_exec_parse@shadow-peek.html
[413] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gen9_exec_parse@bb-start-param.html
[414] i915#2527
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
[415] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@gen9_exec_parse@bb-chained.html
[416] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@gen9_exec_parse@bb-chained.html
[417] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gen9_exec_parse@batch-zero-length.html
[418] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gen3_render_tiledx_blits.html
[419] i915#3297
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
[420] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@gem_userptr_blits@unsync-unmap-cycles.html
[421] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@gem_userptr_blits@unsync-unmap-cycles.html
[422] i915#4880
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
[423] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
[424] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_userptr_blits@dmabuf-unsync.html
[425] i915#3323
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
[426] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@gem_userptr_blits@dmabuf-sync.html
[427] i915#4879
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
[428] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_unfence_active_buffers.html
[429] i915#4079
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
[430] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_set_tiling_vs_gtt.html
[431] i915#8411
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
[432] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
[433] i915#8428
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
[434] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
[435] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html
[436] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@gem_render_copy@y-tiled.html
[437] i915#3282
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
[438] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_readwrite@read-bad-handle.html
[439] TIMEOUT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@gem_pxp@verify-pxp-stale-buf-execution.html
[440] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-8/igt=
@gem_pxp@verify-pxp-stale-buf-execution.html
[441] i915#4270
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
[442] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
[443] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_pxp@reject-modify-context-protection-on.html
[444] TIMEOUT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-3/igt@gem_pxp@hw-rejects-pxp-buffer.html
[445] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@gem_pread@snoop.html
[446] i915#2658
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
[447] WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@gem_pread@exhaustion.html
[448] i915#4083
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
[449] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_mmap_wc@close.html
[450] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_mmap_wc@bad-object.html
[451] i915#4077
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
[452] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_mmap_gtt@zero-extend.html
[453] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_mmap_gtt@basic-small-bo-tiledy.html
[454] i915#4613
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
[455] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-4/igt@gem_lmem_swapping@verify.html
[456] i915#14044
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14044
[457] TIMEOUT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg1=
-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
[458] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg1-14/ig=
t@gem_lmem_swapping@smem-oom@lmem0.html
[459] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@gem_lmem_swapping@random.html
[460] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk=
2/igt@gem_lmem_swapping@parallel-random.html
[461] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@gem_lmem_swapping@heavy-verify-random.html
[462] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@gem_lmem_swapping@heavy-random.html
[463] i915#7582
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
[464] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-7/igt@gem_lmem_evict@dontneed-evict-race.html
[465] i915#2190
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
[466] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@gem_huc_copy@huc-copy.html
[467] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@gem_gtt_cpu_tlb.html
[468] i915#4860
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
[469] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
[470] i915#13304
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
[471] i915#11441
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
[472] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-10/igt@gem_exec_suspend@basic-s0@smem.html
[473] i915#3281
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
[474] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@gem_exec_reloc@basic-wc-read-noreloc.html
[475] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-mtl=
p-8/igt@gem_exec_reloc@basic-wc-gtt-active.html
[476] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_exec_reloc@basic-gtt-active.html
[477] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_exec_reloc@basic-cpu-noreloc.html
[478] i915#4852
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
[479] i915#3539
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
[480] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_exec_flush@basic-uc-ro-default.html
[481] i915#6344
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
[482] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@gem_exec_capture@capture-recoverable.html
[483] i915#4525
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
[484] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@gem_exec_balancer@parallel-ordering.html
[485] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
[486] i915#4036
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
[487] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_exec_balancer@invalid-bonds.html
[488] i915#4812
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
[489] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-8/igt@gem_exec_balancer@bonded-semaphore.html
[490] i915#8213
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
[491] i915#7975
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
[492] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-5/igt@gem_eio@hibernate.html
[493] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-rkl-7/igt=
@gem_eio@hibernate.html
[494] i915#280
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
[495] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@gem_ctx_sseu@engines.html
[496] i915#8555
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
[497] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-9/igt@gem_ctx_persistence@heartbeat-close.html
[498] i915#12353
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
[499] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-6/igt@gem_ctx_isolation@preservation-s3.html
[500] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-5/igt=
@gem_ctx_isolation@preservation-s3.html
[501] i915#8562
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
[502] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@gem_create@create-ext-set-pat.html
[503] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@gem_create@create-ext-set-pat.html
[504] i915#7697
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
[505] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-4/igt@gem_close_race@multigpu-basic-process.html
[506] i915#13356
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
[507] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2=
-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
[508] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-dg2-6/igt=
@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
[509] i915#9323
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
[510] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-6/igt@gem_ccs@block-multicopy-inplace.html
[511] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@gem_ccs@block-multicopy-compressed.html
[512] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-8/igt@gem_basic@multigpu-create-close.html
[513] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-tgl=
u-1/igt@gem_basic@multigpu-create-close.html
[514] i915#11078
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
[515] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@device_reset@unbind-cold-reset-rebind.html
[516] i915#6230
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
[517] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl=
-6/igt@api_intel_bb@crc32.html
[518] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-snb=
4/igt@gem_mmap_offset@close-race.html
[519] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16571/shard-snb7/igt@=
gem_mmap_offset@close-race.html

--=-AwykZpQgnooBgsDtTSuL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
<style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head>
<body><div>Hi,</div><div><br></div><div>This has failed on different patche=
s on the different runs and neither failure can be related to the changes i=
n this series.</div><div><br></div><div>The failure can be ignored or re-re=
ported.</div><div><br></div><div>--</div><div>Cheers,</div><div>Luca.</div>=
<div><br></div><div>On Tue, 2025-05-20 at 16:07 +0000, Patchwork wrote:</di=
v><blockquote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #72=
9fcf solid;padding-left:1ex"><div><b>Patch Details</b></div>
<div><table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915: small fixes from code revie=
ws (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/149236/">https://patchwork.freedesktop.org/series/149236/</a></td></tr=
>
<tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></td=
><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2=
/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/in=
dex.html</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from =
CI_DRM_16571_full -&gt; Patchwork_149236v2_full</h1><h2>Summary</h2><p><str=
ong>FAILURE</strong></p><p>Serious unknown changes coming with Patchwork_14=
9236v2_full absolutely need to be<br> verified manually.</p><p>If you think=
 the reported changes have nothing to do with the changes<br> introduced in=
 Patchwork_149236v2_full, please notify your bug team (I915-ci-infra@lists.=
freedesktop.org) to allow them<br> to document this new failure mode, which=
 will reduce false positives in CI.</p><h2>Participating hosts (10 -&gt; 10=
)</h2><p>No changes in participating hosts</p><h2>Possible new issues</h2><=
p>Here are the unknown changes that may have been introduced in Patchwork_1=
49236v2_full:</p><h3>IGT changes</h3><h4>Possible regressions</h4><ul>
<li>igt@gem_mmap_offset@close-race:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-snb7/igt@gem_mmap_offset@close-race.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/sh=
ard-snb4/igt@gem_mmap_offset@close-race.html">INCOMPLETE</a></li>
</ul></li>
</ul><h2>New tests</h2><p>New tests have been introduced between CI_DRM_165=
71_full and Patchwork_149236v2_full:</p><h3>New IGT tests (16)</h3><ul>
<li>
<p>igt@i915_pm_rps@addfb25-bad-modifier:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@alternate-sync-async-flip-atomic:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@clear-via-pagefault:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@clock-too-high:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@debugfs:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@etime-single-wait-all-for-submit-unsubmitted:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@extended-modeset-hang-newfb-with-reset:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@fbc-rgb101010-draw-pwrite:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@fbcpsr-2p-primscrn-indfb-pgflip-blt:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@noreloc-s3:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@plane-use-after-nonblocking-unbind:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@planes-downscale-factor-0-25-upscale-factor-0-25:</p><ul=
>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@primary-x-tiled-reflect-x-0:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@rmfb-ioctl:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@universal-setplane-cursor:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@x-tiled-32bpp-rotate-90:</p><ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul></li>
</ul><h2>Known issues</h2><p>Here are the changes found in Patchwork_149236=
v2_full that come from known issues:</p><h3>IGT changes</h3><h4>Issues hit<=
/h4><ul>
<li>
<p>igt@api_intel_bb@crc32:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@api_intel_bb@crc32.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6230">i915#6230</a>)</li>
</ul></li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul></li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7697">i915#7697</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7697">i915#7697</a>)</li>
</ul></li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9323">i915#9323</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul></li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p><ul=
>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-2/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li=
>
</ul></li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul></li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8562">i915#8562</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8562">i915#8562</a>)</li>
</ul></li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149=
236v2/shard-dg2-6/igt@gem_ctx_isolation@preservation-s3.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353=
">i915#12353</a>) +1 other test incomplete</li>
</ul></li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_ctx_persistence@heartb=
eat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8555">i915#8555</a>)</li>
</ul></li>
<li>
<p>igt@gem_ctx_sseu@engines:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@gem_ctx_sseu@engines.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/280">i915#280</a>)</li>
</ul></li>
<li>
<p>igt@gem_eio@hibernate:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-7/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-=
5/igt@gem_eio@hibernate.html">ABORT</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7975">i915#7975</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/8213">i915#8213</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_exec_balancer@bonded-s=
emaphore.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4812">i915#4812</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_exec_balancer@invalid-=
bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4036">i915#4036</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@gem_exec_balancer@paralle=
l-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</=
li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4525">i915#4525</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6344">i915#6344</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_exec_flush@basic-uc-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_exec_reloc@basic-cpu-n=
oreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-a=
ctive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@gem_exec_reloc@basic-wc-g=
tt-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@gem_exec_reloc@basic-wc-re=
ad-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) +14 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-10/igt@gem_exec_suspend@basic-s0=
@smem.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11441">i915#11441</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13304">i915#13304</a>) +1 other test in=
complete</li>
</ul></li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_fence_thrash@bo-write-=
verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul></li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@gem_gtt_cpu_tlb.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
077">i915#4077</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@gem_huc_copy@huc-copy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/2190">i915#2190</a>)</li>
</ul></li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-7/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@gem_lmem_swapping@heavy-v=
erify-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk2/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>)</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@random:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@gem_lmem_swapping@random.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>)</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149=
236v2/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOUT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14044">i=
915#14044</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5493">i915#5493</a>) +1 other test timeout</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@verify:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@gem_lmem_swapping@verify.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4613">i915#4613</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledy:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_mmap_gtt@basic-small-b=
o-tiledy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_mmap_gtt@zero-extend.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_mmap_wc@bad-object.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4083">i915#4083</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_mmap_wc@close:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_mmap_wc@close.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4083">i915#4083</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_pread@exhaustion:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk2/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2658">i915#2658</a>)</li>
</ul></li>
<li>
<p>igt@gem_pread@snoop:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@gem_pread@snoop.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
82">i915#3282</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-buf=
fer.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +4 other tests timeou=
t</li>
</ul></li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-on:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_pxp@reject-modify-cont=
ext-protection-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul></li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li=
>
</ul></li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-execution.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_149236v2/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-buf-execution.html">TIM=
EOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12964">i915#12964</a>)</li>
</ul></li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_readwrite@read-bad-han=
dle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3282">i915#3282</a>)</li>
</ul></li>
<li>
<p>igt@gem_render_copy@y-tiled:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@gem_render_copy@y-tiled.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8428">i915#8428</a>)</li>
</ul></li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip=
</li>
</ul></li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_render_copy@yf-tiled-t=
o-vebox-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test sk=
ip</li>
</ul></li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@gem_set_tiling_vs_blt@tile=
d-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8411">i915#8411</a>)</li>
</ul></li>
<li>
<p>igt@gem_set_tiling_vs_gtt:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gem_set_tiling_vs_gtt.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4079">i915#4079</a>)</li>
</ul></li>
<li>
<p>igt@gem_unfence_active_buffers:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_unfence_active_buffers=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4879">i915#4879</a>)</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk2/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3323">i915#3323</a>)</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>) +3 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul></li>
<li>
<p>igt@gen3_render_tiledx_blits:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gen3_render_tiledx_blits.h=
tml">SKIP</a> +4 other tests skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@gen9_exec_parse@bb-chained=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@gen9_exec_parse@bb-chaine=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2856">i915#2856</a>)</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@gen9_exec_parse@shadow-pe=
ek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2856">i915#2856</a>)</li>
</ul></li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-all:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@i915_drm_fdinfo@virtual-bu=
sy-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14118">i915#14118</a>)</li>
</ul></li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle-all:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@i915_drm_fdinfo@virtual-bu=
sy-idle-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14118">i915#14118</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@i915_pm_freq_api@freq-basi=
c-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8399">i915#8399</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@i915_pm_freq_mult@media-f=
req@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@i915_pm_rc6_residency@rc6=
-fence.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13790">i915#13790</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul></li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_149236v2/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3591">i915#3591</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@i915_pm_rps@min-max-config=
-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11681">i915#11681</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@reset:</p><ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-snb1/=
igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13821">i915#13821</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_rps@thresholds:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@i915_pm_rps@thresholds.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/11681">i915#11681</a>)</li>
</ul></li>
<li>
<p>igt@i915_selftest@live:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@i915_selftest@live.html">D=
MESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12964">i915#12964</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13550">i915#13550</a>)</li>
</ul></li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@i915_selftest@live@gt_pm.h=
tml">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13550">i915#13550</a>)</li>
</ul></li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@i915_suspend@basic-s3-wit=
hout-i915.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4817">i915#4817</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
</ul></li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-8/igt@i915_suspend@fence-restore-tiled2untiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_149236v2/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12964">i915#12964</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul></li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@intel_hwmon@hwmon-read.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7707">i915#7707</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@intel_hwmon@hwmon-read.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7707">i915#7707</a>)</li>
</ul></li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_addfb_basic@addfb25-y-=
tiled-small-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul></li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_addfb_basic@framebuffe=
r-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-7/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul></li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-tiled-atomic@pipe-c=
-hdmi-a-3-y-rc-ccs-cc:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg1-12/igt@kms_async_flips@async-fli=
p-with-page-flip-events-tiled-atomic@pipe-c-hdmi-a-3-y-rc-ccs-cc.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/87=
09">i915#8709</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul></li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_atomic_transition@pla=
ne-all-modeset-transition.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:<=
/p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-trans=
ition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-1/igt@kms_atomic_transitio=
n@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)=
 +1 other test fail</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-ro=
tate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5286">i915#5286</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_big_fb@4-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test s=
kip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_big_fb@y-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3638">i915#3638</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li=
>
</ul></li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-4:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-rc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)=
</li>
</ul></li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p><ul=
>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-=
4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_ccs@crc-primary-basic=
-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12313">i915#12313</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-6/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-edp-1:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-ccs@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other test=
s skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p><=
ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +40 other=
 tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-1:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests =
skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:=
</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-3/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +15 =
other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk9/igt@kms_ccs@crc-primary-suspend=
-yf-tiled-ccs@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12796">i915#12796</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-=
1:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +=
34 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1=
:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i9=
15#6095</a>) +118 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a=
>) +53 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_ccs@random-ccs-data-y-=
tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 othe=
r tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg1-12/igt@kms_ccs@random-ccs-data-y=
f-tiled-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +102 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul></li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-4/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_chamelium_audio@hdmi-=
audio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_chamelium_edid@hdmi-ed=
id-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +15 o=
ther tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_chamelium_edid@hdmi-m=
ode-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests ski=
p</li>
</ul></li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_chamelium_frames@hdmi=
-crc-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_chamelium_hpd@dp-hpd-a=
fter-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test ski=
p</li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3116">i915#3116</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-10/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +2 other tests skip</li=
>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9424">i915#9424</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@type1:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@kms_content_protection@typ=
e1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_cursor_crc@cursor-offs=
creen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_cursor_crc@cursor-ons=
creen-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test f=
ail</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x256:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-256x256.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12964">i915#12964</a>) +15 other tests dmesg-war=
n</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onsc=
reen-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fa=
il</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onsc=
reen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +8 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk2/igt@kms_cursor_crc@cursor-rando=
m-max-size.html">SKIP</a> +51 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_cursor_crc@cursor-slid=
ing-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_cursor_legacy@2x-long-=
cursor-vs-flip-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other=
 test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test ski=
p</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@torture-move@pipe-a:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-4/igt@kms_cursor_legacy@torture-move@pipe-a.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_149236v2/shard-rkl-7/igt@kms_cursor_legacy@torture-move@pipe-a.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12964">i915#12964</a>) +1 other test dmesg-warn</li>
</ul></li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-io=
ctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9723">i915#9723</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9723">i915#9723</a>)</li>
</ul></li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul></li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-gtt:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_draw_crc@draw-method-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8812">i915#8812</a>)</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3840">i915#3840</a>)</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul></li>
<li>
<p>igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-dirtyfb-tests:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_fbc_dirty_rect@fbc-dir=
ty-rectangle-dirtyfb-tests.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13798">i915#13798</a>)</li>
</ul></li>
<li>
<p>igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_fbc_dirty_rect@fbc-di=
rty-rectangle-out-visible-area.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul></li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_feature_discovery@psr1:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_feature_discovery@psr1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_flip@2x-flip-vs-blocki=
ng-wf-vblank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9934">i915#9934</a>) +11 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_flip@2x-flip-vs-fences=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8381">i915#8381</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_flip@2x-nonexisting-f=
b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236=
v2/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832">i915#118=
32</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13734">i915#13734</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_149236v2/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check@ac-hdm=
i-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13734">i915#13734</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests ski=
p</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_flip@2x-wf_vblank-ts-=
check-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tes=
ts skip</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_149236v2/shard-dg1-15/igt@kms_flip@flip-vs-suspend-interruptible.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4423">i915#4423</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a4:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg1-15/igt@kms_flip@flip-vs-suspend-=
interruptible@c-hdmi-a4.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:<=
/p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@p=
ipe-a-valid-mode:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i=
915#2587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2672">i915#2672</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-valid-mode:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i9=
15#2672</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>=
<ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
190">i915#5190</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p=
><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2587</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#26=
72</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a=
-valid-mode:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587">i915#2=
587</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2672">i915#2672</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i91=
5#2672</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>=
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#=
2672</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling=
:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilercccs-downscaling.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672">i915#2672</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5190">i915#5190</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:</p=
><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 oth=
er test skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p><u=
l>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +18 other tests skip</l=
i>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bc-2p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +56 other test=
s skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +7 other tests skip=
</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +30 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +3 ot=
her tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +41 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb101010-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-blt:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +11 other te=
sts skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>=
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +58 other tests skip<=
/li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +6 othe=
r tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_frontbuffer_tracking@p=
sr-rgb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +9 other tests skip</=
li>
</ul></li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_hdr@brightness-with-hd=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12713">i915#12713</a>)</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-10/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard=
-dg2-8/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)=
 +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12713">i915#12713</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_joiner@basic-big-joine=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10656">i915#10656</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/10656">i915#10656</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/12394">i915#12394</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12388">i915#12388</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_joiner@switch-modeset=
-ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13522">i915#13522</a>)</li>
</ul></li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4070">i915#4070</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul></li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_pipe_b_c_ivb@from-pipe=
-c-to-b-with-3-lanes.html">SKIP</a> +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk2/igt@kms_plane_alpha_blend@const=
ant-alpha-max.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk2/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test =
fail</li>
</ul></li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_plane_multiple@2x-til=
ing-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6953">i915#6953</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a:<=
/p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +8=
 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:<=
/p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +1=
7 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_plane_scaling@plane-up=
scale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a>) +10 other t=
ests skip</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:<=
/p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-upscale-factor-0-25.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915=
#6953</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:</p><ul=
>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_plane_scaling@planes-=
upscale-20x20-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247">i915#12247</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i91=
5#6953</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-7/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12343">i915#12343</a>)</li>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_pm_backlight@fade-wit=
h-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9812">i915#9812</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_pm_backlight@fade-with=
-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5354">i915#5354</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3828">i915#3828</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3361">i915#3361</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8430">i915#8430</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_pm_lpsp@screens-disab=
led.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8430">i915#8430</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_149236v2/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
519">i915#9519</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lps=
p-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9519">i915#9519</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6524">i915#6524</a>)</li>
</ul></li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6524">i915#6524</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
</ul></li>
<li>
<p>igt@kms_prime@d3hot:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_prime@d3hot.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/65=
24">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6805">i915#6805</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>=
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-glk2/igt@kms_psr2_sf@fbc-pr-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +12 other tests =
skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_psr2_sf@pr-cursor-pla=
ne-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</l=
i>
</ul></li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg1-19/igt@kms_psr2_sf@pr-cursor-pla=
ne-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-pl=
ane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests=
 skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_psr2_sf@psr2-overlay-p=
lane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests ski=
p</li>
</ul></li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_psr@fbc-psr-cursor-pla=
ne-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li=
>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr-primary-mmap-gtt:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_psr@fbc-psr-primary-mm=
ap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr-primary-render:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-1/igt@kms_psr@fbc-psr-primary-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr2-no-drrs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_psr@fbc-psr2-no-drrs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt@edp-1:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_psr@fbc-psr2-sprite-b=
lt@edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9688">i915#9688</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@pr-primary-page-flip:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg1-19/igt@kms_psr@pr-primary-page-f=
lip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr@psr2-suspend:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@kms_psr@psr2-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9732">i915#9732</a>) +36 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</=
li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +2 other tests skip=
</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_rotation_crc@bad-pixel=
-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12755">i915#12755</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-4/igt@kms_rotation_crc@primary-4=
-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul></li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-7/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@lobf:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_vrr@lobf.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920=
">i915#11920</a>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@max-min:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_vrr@max-min.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@negative-basic:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-11/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shar=
d-dg2-4/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a=
>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9906">i915#9906</a>)</li>
</ul></li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-6/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2437">i915#2437</a>)</li>
</ul></li>
<li>
<p>igt@kms_writeback@writeback-check-output-xrgb2101010:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_writeback@writeback-ch=
eck-output-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2437">i915#2437</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9412">i915#9412</a>)</li>
</ul></li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@kms_writeback@writeback-fb=
-id.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2437">i915#2437</a>)</li>
</ul></li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2437">i915#2437</a>)</li>
</ul></li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@perf_pmu@busy-double-start=
@vecs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul></li>
<li>
<p>igt@perf_pmu@frequency@gt0:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@perf_pmu@frequency@gt0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12549">i915#12549</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-6/igt@perf_pmu@rc6@other-idle-g=
t0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8516">i915#8516</a>)</li>
</ul></li>
<li>
<p>igt@prime_mmap@test_aperture_limit:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@prime_mmap@test_aperture_l=
imit.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14121">i915#14121</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@basic-read:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@prime_vgem@basic-read.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3708">i915#3708</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-8/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9917">i915#9917</a>)</li>
</ul></li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p><ul>
<li>shard-dg2-9:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-dg2-9/igt@sriov_basic@enable-vfs-aut=
oprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9917">i915#9917</a>)</li>
</ul></li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-tglu-4/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul></li>
</ul><h4>Possible fixes</h4><ul>
<li>
<p>igt@gem_eio@suspend:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-mtlp-4/igt@gem_eio@suspend.html">ABORT</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149=
236v2/shard-mtlp-8/igt@gem_eio@suspend.html">PASS</a></li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html">TIMEOU=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_149236v2/shard-dg2-5/igt@gem_lmem_swapping@smem-oom@lmem0.html=
">PASS</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution=
.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12917">i915#12917</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@gem_px=
p@verify-pxp-stale-buf-optout-execution.html">PASS</a></li>
</ul></li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-glk5/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797=
">i915#12797</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_149236v2/shard-glk2/igt@i915_pm_rpm@system-suspend.html">PASS</a=
></li>
</ul></li>
<li>
<p>igt@i915_selftest@live@workarounds:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-10/igt@i915_selftest@live@workarounds.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_149236v2/shard-dg2-10/igt@i915_selftest@live@workarounds.h=
tml">PASS</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-7/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-7/igt@kms_atomic_tra=
nsition@plane-all-modeset-transition-fencing.html">PASS</a> +1 other test p=
ass</li>
</ul></li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-12/igt@kms_big_fb@linear-8bpp-rotate-180.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/51=
38">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_149236v2/shard-dg1-19/igt@kms_big_fb@linear-8bpp-rotate-180.htm=
l">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-glk8/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-=
a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12796">i915#12796</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk9/igt@kms_ccs@cr=
c-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-glk6/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cu=
rsor-atomic.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/118">i915#118</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-glk1/igt@kms_cursor_le=
gacy@2x-nonblocking-modeset-vs-cursor-atomic.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-tra=
nsitions.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12964">i915#12964</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-8/igt@kms_cursor_=
legacy@cursora-vs-flipa-atomic-transitions.html">PASS</a> +4 other tests pa=
ss</li>
</ul></li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-mtlp-3/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13734">i915#13734</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_149236v2/shard-mtlp-8/igt@kms_flip@plain-flip-fb-recreat=
e@c-edp1.html">PASS</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281">i915#4281</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1492=
36v2/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@i2c:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-13/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
49236v2/shard-dg1-15/igt@kms_pm_rpm@i2c.html">PASS</a> +2 other tests pass<=
/li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-2/igt@kms_pm_rpm@i2c.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717">i915#8717</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2=
/shard-dg2-4/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/95=
19">i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_149236v2/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.htm=
l">PASS</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@perf_pmu@module-unload:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-mtlp-7/igt@perf_pmu@module-unload.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520">=
i915#13520</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_149236v2/shard-mtlp-6/igt@perf_pmu@module-unload.html">PASS</a></l=
i>
</ul></li>
</ul><h4>Warnings</h4><ul>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-13/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4538">i915#4538</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_149236v2/shard-dg1-15/igt@kms_big_fb@yf-tiled-16bpp-rotate-1=
80.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-13/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_149236v2/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-tile=
d-mtl-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:</p>=
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-=
cc@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-rkl-3/igt@kms_ccs@c=
rc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#=
14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6095">i915#6095</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7=
173">i915#7173</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_149236v2/shard-dg2-1/igt@kms_content_protection@atomic-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@mei-interface:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg1-14/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_149236v2/shard-dg1-12/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9433">i915#9433</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-glk1/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1274=
5">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_149236v2/shard-glk8/igt@kms_flip@2x-flip-vs-suspe=
nd.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12314">i915#12314</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-glk1/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_149236v2/shard-glk8/igt@kms_flip@2x-flip-vs-su=
spend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)=
</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-3/ig=
t@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">=
i915#3458</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p=
><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur=
-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149236v2/shard-dg2-4/igt@kms_fro=
ntbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i9=
15#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3458">i915#3458</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_16571/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
49236v2/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</=
li>
</ul></li>
</ul><h2>Build changes</h2><ul>
<li>Linux: CI_DRM_16571 -&gt; Patchwork_149236v2</li>
</ul><p>CI-20190529: 20190529<br> CI_DRM_16571: 943adcb1bc226246125ec1d18a3=
87b4295e73703 @ git://anongit.freedesktop.org/gfx-ci/linux<br> IGT_8369: 83=
69<br> Patchwork_149236v2: 943adcb1bc226246125ec1d18a387b4295e73703 @ git:/=
/anongit.freedesktop.org/gfx-ci/linux<br> piglit_4509: fdc5a4ca11124ab8413c=
7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p></blockquote=
><div><br></div><div><span></span></div></body></html>

--=-AwykZpQgnooBgsDtTSuL--
