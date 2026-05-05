Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOR3Gy62+WmvBAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:19:42 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815D4C978D
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 11:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B783310E43D;
	Tue,  5 May 2026 09:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4F6010E43D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2026 09:19:37 +0000 (UTC)
Received: from 37-219-152-235.nat.bb.dnainternet.fi ([37.219.152.235]
 helo=[192.168.101.111])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.98.2) (envelope-from <luca@coelho.fi>)
 id 1wKBw8-00000004rly-2kDn; Tue, 05 May 2026 12:19:35 +0300
Message-ID: <0694e061882296e2f8be4abbfdcab648304c1f70.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Luca Coelho <luciano.coelho@intel.com>
Date: Tue, 05 May 2026 12:19:27 +0300
In-Reply-To: <177740407097.22650.3001141798345241170@5ab824fced77>
References: <20260428095104.818360-1-luciano.coelho@intel.com>
 <177740407097.22650.3001141798345241170@5ab824fced77>
Content-Type: multipart/alternative; boundary="=-AVxDhu2FItPXuT/W3kOX"
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.2 (2025-08-27) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 HTML_FONT_SIZE_HUGE,HTML_MESSAGE,TVD_RCVD_IP,URIBL_BLOCKED,
 URIBL_DBL_BLOCKED_OPENDNS autolearn=ham autolearn_force=no
 version=4.0.2
Subject: Re: =?UTF-8?Q?=E2=9C=97?= i915.CI.Full: failure for drm/i915: move
 more display dependencies from i915 (rev5)
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
X-Rspamd-Queue-Id: 4815D4C978D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[coelho.fi];
	FORGED_RECIPIENTS(0.00)[m:I915-ci-infra@lists.freedesktop.org,m:luciano.coelho@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_SPAM(0.00)[0.729];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca@coelho.fi,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

--=-AVxDhu2FItPXuT/W3kOX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Different tests failed in different revisions of this series and I
don't believe these tests should be affected by the changes here.

Can you please re-report it?

--
Cheers,
Luca.


On Tue, 2026-04-28 at 19:21 +0000, Patchwork wrote:
> Patch Details
>=20
> Series:drm/i915: move more display dependencies from i915 (rev5)
>=20
> URL:https://patchwork.freedesktop.org/series/163786/
>=20
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/index.html
> CI Bug Log - changes from CI_DRM_18374_full -> Patchwork_163786v5_fullSum=
maryFAILURE
> Serious unknown changes coming with Patchwork_163786v5_full
> absolutely need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_163786v5_full, please notify your bug team
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives
> in CI.
> Participating hosts (10 -> 10)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_163786v5_full:
> IGT changesPossible regressions *=20
>    igt@kms_setmode@basic@pipe-a-hdmi-a-3:shard-dg2: NOTRUN ->
>    DMESG-FAIL [522]
>  *=20
>    igt@kms_setmode@basic@pipe-c-hdmi-a-3:shard-dg2: NOTRUN -> ABORT
>    [521]
> New testsNew tests have been introduced between CI_DRM_18374_full and
> Patchwork_163786v5_full:
> New IGT tests (3) *=20
>    igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-
>    hdmi-a-2:Statuses : 1 pass(s)Exec time: [2.05] s
>  *=20
>    igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-b-
>    hdmi-a-2:Statuses : 1 pass(s)Exec time: [2.04] s
>  *=20
>    igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-c-
>    hdmi-a-2:Statuses : 1 pass(s)Exec time: [2.05] s
> Known issuesHere are the changes found in Patchwork_163786v5_full that co=
me from
> known issues:
> IGT changesIssues hit *=20
>    igt@drm_buddy@drm_buddy:shard-rkl: NOTRUN -> SKIP [519] (i915#15678
>    [518])shard-tglu-1: NOTRUN -> SKIP [520] (i915#15678 [518])
>  *=20
>    igt@gem_busy@semaphore:shard-dg2: NOTRUN -> SKIP [517] (i915#3936
>    [516])
>  *=20
>    igt@gem_ccs@block-multicopy-inplace:shard-tglu: NOTRUN -> SKIP [515]
>    (i915#3555 [56] / i915#9323 [514])
>  *=20
>    igt@gem_close_race@multigpu-basic-process:shard-rkl: NOTRUN -> SKIP
>    [513] (i915#7697 [512])
>  *=20
>    igt@gem_create@create-ext-cpu-access-big:shard-rkl: NOTRUN -> SKIP
>    [511] (i915#6335 [167])
>  *=20
>    igt@gem_ctx_freq@sysfs@gt0:shard-dg2: PASS [510] -> FAIL [509]
>    (i915#9561 [508]) +1 other test fail
>  *=20
>    igt@gem_ctx_sseu@invalid-sseu:shard-rkl: NOTRUN -> SKIP [507]
>    (i915#280 [506]) +1 other test skip
>  *=20
>    igt@gem_eio@in-flight-suspend:shard-glk: NOTRUN -> INCOMPLETE [505]
>    (i915#13390 [504])
>  *=20
>    igt@gem_exec_balancer@noheartbeat:shard-dg2: NOTRUN -> SKIP [503]
>    (i915#8555 [502])
>  *=20
>    igt@gem_exec_balancer@parallel-contexts:shard-tglu-1: NOTRUN -> SKIP
>    [501] (i915#4525 [164])
>  *=20
>    igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:shard-rkl:
>    NOTRUN -> SKIP [500] (i915#4525 [164])
>  *=20
>    igt@gem_exec_big@single:shard-mtlp: PASS [499] -> FAIL [498]
>    (i915#15871 [497])
>  *=20
>    igt@gem_exec_capture@capture-recoverable:shard-rkl: NOTRUN -> SKIP
>    [496] (i915#6344 [495])
>  *=20
>    igt@gem_exec_reloc@basic-gtt-cpu-active:shard-dg2: NOTRUN -> SKIP
>    [494] (i915#3281 [159]) +2 other tests skip
>  *=20
>    igt@gem_exec_reloc@basic-wc-read-noreloc:shard-dg1: NOTRUN -> SKIP
>    [492] (i915#3281 [159])shard-mtlp: NOTRUN -> SKIP [493] (i915#3281
>    [159])
>  *=20
>    igt@gem_exec_reloc@basic-write-read-active:shard-rkl: NOTRUN -> SKIP
>    [491] (i915#3281 [159]) +3 other tests skip
>  *=20
>    igt@gem_exec_suspend@basic-s0:shard-dg2: PASS [490] -> INCOMPLETE
>    [489] (i915#13356 [455]) +1 other test incomplete
>  *=20
>    igt@gem_lmem_swapping@parallel-multi:shard-rkl: NOTRUN -> SKIP [488]
>    (i915#4613 [153]) +1 other test skip
>  *=20
>    igt@gem_lmem_swapping@parallel-random-verify-ccs:shard-tglu-1:
>    NOTRUN -> SKIP [487] (i915#4613 [153]) +1 other test skip
>  *=20
>    igt@gem_lmem_swapping@random-engines:shard-glk: NOTRUN -> SKIP [486]
>    (i915#4613 [153]) +2 other tests skip
>  *=20
>    igt@gem_madvise@dontneed-before-pwrite:shard-dg2: NOTRUN -> SKIP
>    [485] (i915#3282 [148])
>  *=20
>    igt@gem_mmap_gtt@basic-write-read:shard-mtlp: NOTRUN -> SKIP [484]
>    (i915#4077 [465]) +2 other tests skip
>  *=20
>    igt@gem_mmap_gtt@big-copy-xy:shard-dg2: NOTRUN -> SKIP [483]
>    (i915#4077 [465]) +3 other tests skip
>  *=20
>    igt@gem_mmap_wc@write:shard-dg2: NOTRUN -> SKIP [482] (i915#4083
>    [481])
>  *=20
>    igt@gem_pwrite@basic-exhaustion:shard-glk: NOTRUN -> WARN [479]
>    (i915#14702 [478] / i915#2658 [477])shard-tglu: NOTRUN -> WARN [480]
>    (i915#2658 [477])
>  *=20
>    igt@gem_pxp@create-valid-protected-context:shard-dg2: NOTRUN -> SKIP
>    [476] (i915#4270 [475])
>  *=20
>    igt@gem_pxp@hw-rejects-pxp-buffer:shard-mtlp: NOTRUN -> SKIP [474]
>    (i915#13398 [473])
>  *=20
>    igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:shard-dg2: NOTRUN ->
>    SKIP [472] (i915#5190 [417] / i915#8428 [471])
>  *=20
>    igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:shard-glk: NOTRUN
>    -> SKIP [470] +241 other tests skip
>  *=20
>    igt@gem_set_tiling_vs_blt@tiled-to-untiled:shard-rkl: NOTRUN -> SKIP
>    [469] (i915#8411 [468]) +2 other tests skip
>  *=20
>    igt@gem_set_tiling_vs_pwrite:shard-rkl: NOTRUN -> SKIP [467]
>    (i915#3282 [148]) +2 other tests skip
>  *=20
>    igt@gem_tiled_blits@basic:shard-dg1: NOTRUN -> SKIP [466] (i915#4077
>    [465]) +2 other tests skip
>  *=20
>    igt@gem_userptr_blits@dmabuf-unsync:shard-tglu: NOTRUN -> SKIP [464]
>    (i915#3297 [145]) +1 other test skip
>  *=20
>    igt@gem_userptr_blits@invalid-mmap-offset-unsync:shard-rkl: NOTRUN -
>    > SKIP [462] (i915#3297 [145]) +1 other test skipshard-tglu-1:
>    NOTRUN -> SKIP [463] (i915#3297 [145])
>  *=20
>    igt@gem_userptr_blits@unsync-unmap:shard-dg2: NOTRUN -> SKIP [461]
>    (i915#3297 [145]) +1 other test skip
>  *=20
>    igt@gem_workarounds@suspend-resume-fd:shard-rkl: PASS [457] ->
>    INCOMPLETE [456] (i915#13356 [455]) +1 other test incompleteshard-
>    glk: PASS [460] -> INCOMPLETE [459] (i915#13356 [455] / i915#14586
>    [458])
>  *=20
>    igt@gen7_exec_parse@basic-rejected:shard-dg2: NOTRUN -> SKIP [454]
>    +2 other tests skip
>  *=20
>    igt@gen9_exec_parse@allowed-all:shard-rkl: NOTRUN -> SKIP [453]
>    (i915#2527 [142]) +2 other tests skip
>  *=20
>    igt@gen9_exec_parse@bb-secure:shard-tglu: NOTRUN -> SKIP [452]
>    (i915#2527 [142] / i915#2856 [450]) +1 other test skip
>  *=20
>    igt@gen9_exec_parse@bb-start-cmd:shard-tglu-1: NOTRUN -> SKIP [451]
>    (i915#2527 [142] / i915#2856 [450]) +1 other test skip
>  *=20
>    igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:shard-dg2: NOTRUN
>    -> SKIP [449] (i915#14073 [448]) +7 other tests skip
>  *=20
>    igt@i915_module_load@fault-injection@intel_connector_register:shard-
>    tglu: NOTRUN -> ABORT [446] (i915#15342 [445]) +1 other test
>    abortshard-glk10: NOTRUN -> ABORT [447] (i915#15342 [445]) +1 other
>    test abort
>  *=20
>    igt@i915_module_load@fault-injection@intel_gt_init-enodev:shard-
>    glk10: NOTRUN -> SKIP [444] +116 other tests skip
>  *=20
>    igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:shard-
>    tglu: NOTRUN -> SKIP [443] (i915#15479 [442]) +4 other tests skip
>  *=20
>    igt@i915_module_load@resize-bar:shard-rkl: NOTRUN -> SKIP [441]
>    (i915#6412 [440])
>  *=20
>    igt@i915_pm_freq_api@freq-basic-api:shard-tglu-1: NOTRUN -> SKIP
>    [439] (i915#8399 [438])
>  *=20
>    igt@i915_suspend@basic-s3-without-i915:shard-glk10: NOTRUN ->
>    INCOMPLETE [437] (i915#4817 [436])
>  *=20
>    igt@intel_hwmon@hwmon-read:shard-rkl: NOTRUN -> SKIP [435]
>    (i915#7707 [137])
>  *=20
>    igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:shard-
>    glk: NOTRUN -> INCOMPLETE [434] (i915#12761 [203] / i915#14995
>    [433])
>  *=20
>    igt@kms_atomic@plane-primary-overlay-mutable-zpos:shard-rkl: NOTRUN
>    -> SKIP [432] (i915#9531 [431])
>  *=20
>    igt@kms_big_fb@4-tiled-64bpp-rotate-90:shard-tglu-1: NOTRUN -> SKIP
>    [430] (i915#5286 [132]) +1 other test skip
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:shard-rkl:
>    NOTRUN -> SKIP [429] (i915#5286 [132]) +3 other tests skip
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:shard-
>    tglu: NOTRUN -> SKIP [424] (i915#5286 [132]) +3 other tests
>    skipshard-mtlp: PASS [428] -> FAIL [427] (i915#15733 [426] /
>    i915#5138 [425])
>  *=20
>    igt@kms_big_fb@linear-8bpp-rotate-270:shard-rkl: NOTRUN -> SKIP
>    [423] (i915#3638 [127]) +1 other test skip
>  *=20
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-
>    flip:shard-dg2: NOTRUN -> SKIP [422] (i915#4538 [421] / i915#5190
>    [417]) +1 other test skip
>  *=20
>    igt@kms_big_fb@yf-tiled-addfb:shard-mtlp: NOTRUN -> SKIP [420]
>    (i915#6187 [419])
>  *=20
>    igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:shard-dg2: NOTRUN
>    -> SKIP [418] (i915#5190 [417])
>  *=20
>    igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-
>    flip:shard-tglu: NOTRUN -> SKIP [416] +33 other tests skip
>  *=20
>    igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:shard-rkl: NOTRUN
>    -> SKIP [415] (i915#14098 [124] / i915#6095 [117]) +34 other tests
>    skip
>  *=20
>    igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-3:shard-dg1:
>    NOTRUN -> SKIP [414] (i915#6095 [117]) +79 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:shard-tglu-1:
>    NOTRUN -> SKIP [412] (i915#12313 [409])shard-rkl: NOTRUN -> SKIP
>    [413] (i915#12313 [409])
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:shard-
>    tglu: NOTRUN -> SKIP [411] (i915#6095 [117]) +19 other tests skip
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:shard-tglu:
>    NOTRUN -> SKIP [410] (i915#12313 [409]) +1 other test skip
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-
>    a-3:shard-dg2: NOTRUN -> SKIP [408] (i915#10307 [407] / i915#6095
>    [117]) +91 other tests skip
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-
>    1:shard-tglu-1: NOTRUN -> SKIP [406] (i915#6095 [117]) +29 other
>    tests skip
>  *=20
>    igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-
>    1:shard-dg2: NOTRUN -> SKIP [405] (i915#6095 [117]) +33 other tests
>    skip
>  *=20
>    igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:shard-rkl:
>    NOTRUN -> SKIP [404] (i915#6095 [117]) +53 other tests skip
>  *=20
>    igt@kms_cdclk@mode-transition-all-outputs:shard-rkl: NOTRUN -> SKIP
>    [403] (i915#3742 [402])
>  *=20
>    igt@kms_chamelium_color@ctm-green-to-red:shard-rkl: NOTRUN -> SKIP
>    [401] +17 other tests skip
>  *=20
>    igt@kms_chamelium_edid@hdmi-edid-read:shard-rkl: NOTRUN -> SKIP
>    [400] (i915#11151 [114] / i915#7828 [113]) +7 other tests skip
>  *=20
>    igt@kms_chamelium_frames@dp-crc-fast:shard-dg2: NOTRUN -> SKIP [399]
>    (i915#11151 [114] / i915#7828 [113]) +1 other test skip
>  *=20
>    igt@kms_chamelium_hpd@dp-hpd-after-suspend:shard-glk11: NOTRUN ->
>    SKIP [398] +84 other tests skip
>  *=20
>    igt@kms_chamelium_hpd@dp-hpd-storm:shard-tglu-1: NOTRUN -> SKIP
>    [397] (i915#11151 [114] / i915#7828 [113]) +3 other tests skip
>  *=20
>    igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:shard-tglu: NOTRUN
>    -> SKIP [396] (i915#11151 [114] / i915#7828 [113]) +4 other tests
>    skip
>  *=20
>    igt@kms_content_protection@content-type-change:shard-dg2: NOTRUN ->
>    SKIP [395] (i915#15865 [106])
>  *=20
>    igt@kms_content_protection@legacy:shard-tglu: NOTRUN -> SKIP [394]
>    (i915#15865 [106]) +1 other test skip
>  *=20
>    igt@kms_content_protection@mei-interface:shard-rkl: NOTRUN -> SKIP
>    [392] (i915#15865 [106]) +1 other test skipshard-tglu-1: NOTRUN ->
>    SKIP [393] (i915#15865 [106]) +1 other test skip
>  *=20
>    igt@kms_cursor_crc@cursor-offscreen-32x10:shard-tglu-1: NOTRUN ->
>    SKIP [391] (i915#3555 [56]) +1 other test skip
>  *=20
>    igt@kms_cursor_crc@cursor-offscreen-512x512:shard-tglu-1: NOTRUN ->
>    SKIP [390] (i915#13049 [101])
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-max-size:shard-dg2: NOTRUN ->
>    SKIP [388] (i915#3555 [56]) +1 other test skipshard-rkl: NOTRUN ->
>    SKIP [389] (i915#3555 [56]) +2 other tests skip
>  *=20
>    igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:shard-tglu:
>    PASS [387] -> FAIL [386] (i915#13566 [383]) +3 other tests fail
>  *=20
>    igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:shard-tglu-
>    1: NOTRUN -> FAIL [385] (i915#13566 [383]) +1 other test fail
>  *=20
>    igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:shard-rkl:
>    NOTRUN -> FAIL [384] (i915#13566 [383]) +3 other tests fail
>  *=20
>    igt@kms_cursor_crc@cursor-sliding-512x170:shard-tglu: NOTRUN -> SKIP
>    [382] (i915#13049 [101])
>  *=20
>    igt@kms_cursor_crc@cursor-suspend:shard-glk: NOTRUN -> INCOMPLETE
>    [381] (i915#12358 [197] / i915#14152 [196] / i915#7882 [380])
>  *=20
>    igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:shard-glk: NOTRUN
>    -> INCOMPLETE [379] (i915#12358 [197] / i915#14152 [196])
>  *=20
>    igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:shard-dg2: NOTRUN ->
>    SKIP [378] (i915#13046 [377] / i915#5354 [317])
>  *=20
>    igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:shard-dg1: NOTRUN ->
>    SKIP [376] +2 other tests skip
>  *=20
>    igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:shard-
>    tglu: NOTRUN -> SKIP [375] (i915#4103 [373])
>  *=20
>    igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-
>    size:shard-rkl: NOTRUN -> SKIP [374] (i915#4103 [373])
>  *=20
>    igt@kms_cursor_legacy@cursora-vs-flipb-atomic:shard-mtlp: NOTRUN ->
>    SKIP [372] (i915#9809 [371]) +1 other test skip
>  *=20
>    igt@kms_dirtyfb@drrs-dirtyfb-ioctl:shard-tglu: NOTRUN -> SKIP [370]
>    (i915#9723 [369])
>  *=20
>    igt@kms_dp_link_training@non-uhbr-mst:shard-dg2: NOTRUN -> SKIP
>    [367] (i915#13749 [365])shard-rkl: NOTRUN -> SKIP [368] (i915#13749
>    [365])
>  *=20
>    igt@kms_dp_link_training@non-uhbr-sst:shard-tglu: NOTRUN -> SKIP
>    [366] (i915#13749 [365])
>  *=20
>    igt@kms_dp_linktrain_fallback@dp-fallback:shard-tglu: NOTRUN -> SKIP
>    [364] (i915#13707 [362])
>  *=20
>    igt@kms_dp_linktrain_fallback@dsc-fallback:shard-tglu-1: NOTRUN ->
>    SKIP [363] (i915#13707 [362])
>  *=20
>    igt@kms_dsc@dsc-with-output-formats:shard-rkl: NOTRUN -> SKIP [360]
>    (i915#3555 [56] / i915#3840 [96])shard-tglu-1: NOTRUN -> SKIP [361]
>    (i915#3555 [56] / i915#3840 [96])
>  *=20
>    igt@kms_dsc@dsc-with-output-formats-with-bpc:shard-tglu-1: NOTRUN ->
>    SKIP [359] (i915#3840 [96] / i915#9053 [358])
>  *=20
>    igt@kms_fbcon_fbt@fbc-suspend:shard-glk: NOTRUN -> INCOMPLETE [357]
>    (i915#9878 [356])
>  *=20
>    igt@kms_fbcon_fbt@psr-suspend:shard-rkl: NOTRUN -> SKIP [353]
>    (i915#3955 [352])shard-tglu-1: NOTRUN -> SKIP [355] (i915#3469
>    [354])
>  *=20
>    igt@kms_feature_discovery@chamelium:shard-tglu: NOTRUN -> SKIP [351]
>    (i915#2065 [350] / i915#4854 [349])
>  *=20
>    igt@kms_feature_discovery@psr1:shard-tglu: NOTRUN -> SKIP [348]
>    (i915#658 [347])
>  *=20
>    igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:shard-tglu-1:
>    NOTRUN -> SKIP [346] (i915#3637 [338] / i915#9934 [88])
>  *=20
>    igt@kms_flip@2x-flip-vs-panning-vs-hang:shard-dg2: NOTRUN -> SKIP
>    [345] (i915#9934 [88]) +3 other tests skip
>  *=20
>    igt@kms_flip@2x-flip-vs-suspend:shard-glk11: NOTRUN -> INCOMPLETE
>    [344] (i915#12745 [341] / i915#4839 [343])
>  *=20
>    igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:shard-glk11:
>    NOTRUN -> INCOMPLETE [342] (i915#12745 [341])
>  *=20
>    igt@kms_flip@2x-plain-flip-interruptible:shard-rkl: NOTRUN -> SKIP
>    [340] (i915#9934 [88]) +4 other tests skip
>  *=20
>    igt@kms_flip@2x-plain-flip-ts-check:shard-tglu: NOTRUN -> SKIP [339]
>    (i915#3637 [338] / i915#9934 [88]) +4 other tests skip
>  *=20
>    igt@kms_flip@flip-vs-expired-vblank:shard-glk: PASS [337] -> FAIL
>    [336] (i915#13027 [193]) +1 other test fail
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>    downscaling:shard-rkl: NOTRUN -> SKIP [335] (i915#15643 [83]) +2
>    other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-
>    upscaling:shard-tglu: NOTRUN -> SKIP [334] (i915#15643 [83]) +2
>    other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>    downscaling:shard-tglu-1: NOTRUN -> SKIP [333] (i915#15643 [83])
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-
>    upscaling:shard-dg2: NOTRUN -> SKIP [332] (i915#15643 [83])
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:shard-dg2:
>    NOTRUN -> SKIP [331] (i915#8708 [330]) +2 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-suspend:shard-rkl: PASS [328] ->
>    INCOMPLETE [327] (i915#10056 [326])shard-glk: NOTRUN -> INCOMPLETE
>    [329] (i915#10056 [326])
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-
>    render:shard-tglu-1: NOTRUN -> SKIP [325] +28 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:shard-
>    tglu-1: NOTRUN -> SKIP [324] (i915#15102 [59]) +11 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:shard-rkl:
>    NOTRUN -> SKIP [323] (i915#15102 [59] / i915#3023 [58]) +15 other
>    tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-
>    gtt:shard-rkl: NOTRUN -> SKIP [322] (i915#15102 [59]) +3 other tests
>    skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-
>    pwrite:shard-dg1: NOTRUN -> SKIP [321] (i915#15102 [59] / i915#3458
>    [62])
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:shard-
>    dg2: NOTRUN -> SKIP [320] (i915#15102 [59] / i915#3458 [62]) +3
>    other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-
>    render:shard-rkl: NOTRUN -> SKIP [319] (i915#1825 [66]) +30 other
>    tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-
>    pwrite:shard-dg2: NOTRUN -> SKIP [318] (i915#5354 [317]) +8 other
>    tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:shard-tglu:
>    NOTRUN -> SKIP [316] (i915#15102 [59]) +16 other tests skip
>  *=20
>    igt@kms_hdr@static-swap:shard-tglu-1: NOTRUN -> SKIP [315]
>    (i915#3555 [56] / i915#8228 [55])
>  *=20
>    igt@kms_hdr@static-toggle-dpms:shard-rkl: PASS [314] -> SKIP [313]
>    (i915#3555 [56] / i915#8228 [55])
>  *=20
>    igt@kms_hdr@static-toggle-suspend:shard-tglu: NOTRUN -> SKIP [312]
>    (i915#3555 [56] / i915#8228 [55])
>  *=20
>    igt@kms_joiner@basic-big-joiner:shard-tglu-1: NOTRUN -> SKIP [311]
>    (i915#15460 [310])
>  *=20
>    igt@kms_joiner@basic-ultra-joiner:shard-rkl: NOTRUN -> SKIP [308]
>    (i915#15458 [307])shard-tglu-1: NOTRUN -> SKIP [309] (i915#15458
>    [307])
>  *=20
>    igt@kms_panel_fitting@legacy:shard-dg2: NOTRUN -> SKIP [306]
>    (i915#6301 [45])
>  *=20
>    igt@kms_pipe_crc_basic@suspend-read-crc:shard-rkl: PASS [305] ->
>    INCOMPLETE [304] (i915#12756 [303] / i915#13476 [300])
>  *=20
>    igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:shard-rkl:
>    PASS [302] -> INCOMPLETE [301] (i915#13476 [300])
>  *=20
>    igt@kms_pipe_stress@stress-xrgb8888-yftiled:shard-rkl: NOTRUN ->
>    SKIP [299] (i915#14712 [298])
>  *=20
>    igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier:shard-
>    tglu: NOTRUN -> SKIP [297] (i915#15709 [40]) +1 other test skip
>  *=20
>    igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-
>    clamping:shard-rkl: NOTRUN -> SKIP [296] (i915#15709 [40]) +2 other
>    tests skip
>  *=20
>    igt@kms_plane@pixel-format-x-tiled-modifier@pipe-a-plane-7:shard-
>    tglu: NOTRUN -> SKIP [295] (i915#15608 [294]) +5 other tests skip
>  *=20
>    igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:shard-tglu-
>    1: NOTRUN -> SKIP [293] (i915#15709 [40]) +1 other test skip
>  *=20
>    igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:shard-
>    dg2: NOTRUN -> SKIP [292] (i915#15709 [40]) +1 other test skip
>  *=20
>    igt@kms_plane_cursor@overlay:shard-rkl: PASS [291] -> FAIL [290]
>    (i915#15912 [286])
>  *=20
>    igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-128:shard-rkl:
>    NOTRUN -> FAIL [289] (i915#15913 [288]) +1 other test fail
>  *=20
>    igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-64:shard-rkl:
>    NOTRUN -> FAIL [287] (i915#15912 [286])
>  *=20
>    igt@kms_plane_multiple@2x-tiling-4:shard-dg2: NOTRUN -> SKIP [284]
>    (i915#13958 [283])shard-rkl: NOTRUN -> SKIP [285] (i915#13958 [283])
>  *=20
>    igt@kms_plane_multiple@tiling-4:shard-tglu: NOTRUN -> SKIP [282]
>    (i915#14259 [281])
>  *=20
>    igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-
>    a:shard-rkl: NOTRUN -> SKIP [280] (i915#15329 [37]) +7 other tests
>    skip
>  *=20
>    igt@kms_pm_backlight@basic-brightness:shard-tglu: NOTRUN -> SKIP
>    [279] (i915#9812 [278])
>  *=20
>    igt@kms_pm_backlight@brightness-with-dpms:shard-tglu-1: NOTRUN ->
>    SKIP [277] (i915#12343 [276])
>  *=20
>    igt@kms_pm_dc@dc3co-vpb-simulation:shard-rkl: NOTRUN -> SKIP [274]
>    (i915#15948 [272])shard-tglu-1: NOTRUN -> SKIP [275] (i915#15948
>    [272])
>  *=20
>    igt@kms_pm_dc@dc5-psr:shard-tglu: NOTRUN -> SKIP [273] (i915#15948
>    [272])
>  *=20
>    igt@kms_pm_rpm@dpms-mode-unset-lpsp:shard-dg1: PASS [271] -> SKIP
>    [270] (i915#15073 [181])
>  *=20
>    igt@kms_pm_rpm@dpms-non-lpsp:shard-rkl: NOTRUN -> SKIP [269]
>    (i915#15073 [181])
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp:shard-rkl: PASS [268] -> SKIP [267]
>    (i915#15073 [181]) +1 other test skip
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp-stress:shard-dg2: PASS [265] -> SKIP
>    [264] (i915#15073 [181]) +1 other test skipshard-tglu: NOTRUN ->
>    SKIP [266] (i915#15073 [181])
>  *=20
>    igt@kms_pm_rpm@package-g7:shard-dg2: NOTRUN -> SKIP [262]
>    (i915#15403 [261])shard-rkl: NOTRUN -> SKIP [263] (i915#15403 [261])
>  *=20
>    igt@kms_pm_rpm@system-suspend-modeset:shard-glk: PASS [260] ->
>    INCOMPLETE [259] (i915#10553 [258])
>  *=20
>    igt@kms_prime@basic-crc-hybrid:shard-tglu: NOTRUN -> SKIP [257]
>    (i915#6524 [256])
>  *=20
>    igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-
>    sf:shard-tglu-1: NOTRUN -> SKIP [255] (i915#11520 [29]) +4 other
>    tests skip
>  *=20
>    igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:shard-
>    glk10: NOTRUN -> SKIP [254] (i915#11520 [29]) +3 other tests skip
>  *=20
>    igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:shard-rkl:
>    NOTRUN -> SKIP [253] (i915#11520 [29]) +6 other tests skip
>  *=20
>    igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:shard-dg2:
>    NOTRUN -> SKIP [252] (i915#11520 [29]) +1 other test skip
>  *=20
>    igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:shard-glk:
>    NOTRUN -> SKIP [251] (i915#11520 [29]) +3 other tests skip
>  *=20
>    igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:shard-
>    glk11: NOTRUN -> SKIP [250] (i915#11520 [29]) +1 other test skip
>  *=20
>    igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:shard-
>    tglu: NOTRUN -> SKIP [249] (i915#11520 [29]) +3 other tests skip
>  *=20
>    igt@kms_psr2_su@page_flip-nv12:shard-rkl: NOTRUN -> SKIP [247]
>    (i915#9683 [245])shard-tglu-1: NOTRUN -> SKIP [248] (i915#9683
>    [245])
>  *=20
>    igt@kms_psr2_su@page_flip-xrgb8888:shard-tglu: NOTRUN -> SKIP [246]
>    (i915#9683 [245])
>  *=20
>    igt@kms_psr@fbc-psr-no-drrs:shard-tglu: NOTRUN -> SKIP [244]
>    (i915#9732 [23]) +9 other tests skip
>  *=20
>    igt@kms_psr@fbc-psr2-sprite-render:shard-rkl: NOTRUN -> SKIP [242]
>    (i915#1072 [24] / i915#9732 [23]) +15 other tests skipshard-tglu-1:
>    NOTRUN -> SKIP [243] (i915#9732 [23]) +8 other tests skip
>  *=20
>    igt@kms_psr@pr-cursor-render:shard-dg2: NOTRUN -> SKIP [241]
>    (i915#1072 [24] / i915#9732 [23]) +5 other tests skip
>  *=20
>    igt@kms_psr@pr-sprite-plane-move:shard-mtlp: NOTRUN -> SKIP [239]
>    (i915#9688 [238])shard-dg1: NOTRUN -> SKIP [240] (i915#1072 [24] /
>    i915#9732 [23])
>  *=20
>    igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:shard-tglu: NOTRUN
>    -> SKIP [237] (i915#5289 [235])
>  *=20
>    igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:shard-tglu-1:
>    NOTRUN -> SKIP [236] (i915#5289 [235])
>  *=20
>    igt@kms_scaling_modes@scaling-mode-full-aspect:shard-tglu: NOTRUN ->
>    SKIP [234] (i915#3555 [56]) +1 other test skip
>  *=20
>    igt@kms_vrr@flip-basic:shard-rkl: NOTRUN -> SKIP [233] (i915#15243
>    [232] / i915#3555 [56])
>  *=20
>    igt@kms_vrr@lobf:shard-rkl: NOTRUN -> SKIP [230] (i915#11920
>    [229])shard-tglu-1: NOTRUN -> SKIP [231] (i915#11920 [229])
>  *=20
>    igt@perf@global-sseu-config-invalid:shard-dg2: NOTRUN -> SKIP [228]
>    (i915#7387 [227])
>  *=20
>    igt@perf_pmu@frequency:shard-dg2: NOTRUN -> FAIL [226] (i915#12549
>    [225] / i915#6806 [224]) +1 other test fail
>  *=20
>    igt@perf_pmu@module-unload:shard-glk11: NOTRUN -> ABORT [223]
>    (i915#15778 [9])
>  *=20
>    igt@prime_vgem@fence-read-hang:shard-rkl: NOTRUN -> SKIP [222]
>    (i915#3708 [5])
>  *=20
>    igt@sriov_basic@enable-vfs-autoprobe-on:shard-dg2: NOTRUN -> SKIP
>    [220] (i915#9917 [1])shard-rkl: NOTRUN -> SKIP [221] (i915#9917 [1])
> Possible fixes *=20
>    igt@gem_eio@in-flight-suspend:shard-rkl: ABORT [219] (i915#15131
>    [218]) -> PASS [217]
>  *=20
>    igt@gem_softpin@noreloc-s3:shard-rkl: INCOMPLETE [216] (i915#13809
>    [215]) -> PASS [214]
>  *=20
>    igt@gen9_exec_parse@allowed-single:shard-glk: ABORT [213] (i915#5566
>    [212]) -> PASS [211]
>  *=20
>    igt@i915_pm_rpm@system-suspend-devices:shard-rkl: ABORT [210]
>    (i915#15060 [209]) -> PASS [208]
>  *=20
>    igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-
>    2:shard-glk: FAIL [207] (i915#14888 [206]) -> PASS [205] +1 other
>    test pass
>  *=20
>    igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1:shard-
>    glk: INCOMPLETE [204] (i915#12761 [203]) -> PASS [202]
>  *=20
>    igt@kms_color@deep-color:shard-rkl: SKIP [201] (i915#12655 [200] /
>    i915#3555 [56]) -> PASS [199]
>  *=20
>    igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:shard-rkl:
>    INCOMPLETE [198] (i915#12358 [197] / i915#14152 [196]) -> PASS [195]
>    +1 other test pass
>  *=20
>    igt@kms_flip@flip-vs-expired-vblank-interruptible:shard-dg1: FAIL
>    [194] (i915#13027 [193]) -> PASS [192]
>  *=20
>    igt@kms_hdmi_inject@inject-4k:shard-mtlp: SKIP [191] (i915#15725
>    [190]) -> PASS [189]
>  *=20
>    igt@kms_hdr@invalid-metadata-sizes:shard-rkl: SKIP [188] (i915#3555
>    [56] / i915#8228 [55]) -> PASS [187]
>  *=20
>    igt@kms_pm_rpm@dpms-lpsp:shard-dg1: SKIP [186] (i915#15073 [181]) ->
>    PASS [185] +2 other tests pass
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp-stress:shard-rkl: SKIP [184]
>    (i915#15073 [181]) -> PASS [183] +1 other test pass
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:shard-dg2: SKIP [182]
>    (i915#15073 [181]) -> PASS [180]
>  *=20
>    igt@kms_setmode@basic:shard-dg1: FAIL [179] (i915#15106 [21]) ->
>    PASS [178] +2 other tests pass
>  *=20
>    igt@kms_setmode@basic@pipe-b-edp-1:shard-mtlp: FAIL [177]
>    (i915#15106 [21]) -> PASS [176] +2 other tests pass
> Warnings *=20
>    igt@api_intel_bb@crc32:shard-rkl: SKIP [175] (i915#14544 [2] /
>    i915#6230 [173]) -> SKIP [174] (i915#6230 [173])
>  *=20
>    igt@device_reset@cold-reset-bound:shard-rkl: SKIP [172] (i915#11078
>    [170]) -> SKIP [171] (i915#11078 [170] / i915#14544 [2])
>  *=20
>    igt@gem_create@create-ext-cpu-access-sanity-check:shard-rkl: SKIP
>    [169] (i915#6335 [167]) -> SKIP [168] (i915#14544 [2] / i915#6335
>    [167])
>  *=20
>    igt@gem_exec_balancer@parallel-contexts:shard-rkl: SKIP [166]
>    (i915#14544 [2] / i915#4525 [164]) -> SKIP [165] (i915#4525 [164])
>  *=20
>    igt@gem_exec_reloc@basic-gtt-cpu-active:shard-rkl: SKIP [163]
>    (i915#14544 [2] / i915#3281 [159]) -> SKIP [162] (i915#3281 [159])
>  *=20
>    igt@gem_exec_reloc@basic-gtt-wc-noreloc:shard-rkl: SKIP [161]
>    (i915#3281 [159]) -> SKIP [160] (i915#14544 [2] / i915#3281 [159])
>    +3 other tests skip
>  *=20
>    igt@gem_huc_copy@huc-copy:shard-rkl: SKIP [158] (i915#2190 [156]) ->
>    SKIP [157] (i915#14544 [2] / i915#2190 [156])
>  *=20
>    igt@gem_lmem_swapping@verify-random:shard-rkl: SKIP [155] (i915#4613
>    [153]) -> SKIP [154] (i915#14544 [2] / i915#4613 [153]) +2 other
>    tests skip
>  *=20
>    igt@gem_madvise@dontneed-before-pwrite:shard-rkl: SKIP [152]
>    (i915#14544 [2] / i915#3282 [148]) -> SKIP [151] (i915#3282 [148])
>    +1 other test skip
>  *=20
>    igt@gem_pread@exhaustion:shard-rkl: SKIP [150] (i915#3282 [148]) ->
>    SKIP [149] (i915#14544 [2] / i915#3282 [148])
>  *=20
>    igt@gem_userptr_blits@coherency-unsync:shard-rkl: SKIP [147]
>    (i915#3297 [145]) -> SKIP [146] (i915#14544 [2] / i915#3297 [145])
>    +2 other tests skip
>  *=20
>    igt@gen9_exec_parse@batch-invalid-length:shard-rkl: SKIP [144]
>    (i915#2527 [142]) -> SKIP [143] (i915#14544 [2] / i915#2527 [142])
>    +2 other tests skip
>  *=20
>    igt@i915_pm_rpm@gem-execbuf-stress-pc8:shard-rkl: SKIP [141]
>    (i915#14544 [2]) -> SKIP [140] +2 other tests skip
>  *=20
>    igt@intel_hwmon@hwmon-write:shard-rkl: SKIP [139] (i915#7707 [137])
>    -> SKIP [138] (i915#14544 [2] / i915#7707 [137])
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-
>    flip:shard-rkl: SKIP [136] (i915#14544 [2] / i915#5286 [132]) ->
>    SKIP [135] (i915#5286 [132])
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:shard-rkl:
>    SKIP [134] (i915#5286 [132]) -> SKIP [133] (i915#14544 [2] /
>    i915#5286 [132]) +2 other tests skip
>  *=20
>    igt@kms_big_fb@x-tiled-8bpp-rotate-90:shard-rkl: SKIP [131]
>    (i915#14544 [2] / i915#3638 [127]) -> SKIP [130] (i915#3638 [127])
>  *=20
>    igt@kms_big_fb@y-tiled-8bpp-rotate-270:shard-rkl: SKIP [129]
>    (i915#3638 [127]) -> SKIP [128] (i915#14544 [2] / i915#3638 [127])
>  *=20
>    igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-
>    2:shard-rkl: SKIP [126] (i915#14098 [124] / i915#6095 [117]) -> SKIP
>    [125] (i915#14098 [124] / i915#14544 [2] / i915#6095 [117]) +11
>    other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:shard-glk: INCOMPLETE
>    [123] (i915#14694 [122] / i915#15582 [120]) -> INCOMPLETE [121]
>    (i915#15582 [120]) +1 other test incomplete
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-
>    2:shard-rkl: SKIP [119] (i915#6095 [117]) -> SKIP [118] (i915#14544
>    [2] / i915#6095 [117]) +11 other tests skip
>  *=20
>    igt@kms_chamelium_frames@hdmi-crc-single:shard-rkl: SKIP [116]
>    (i915#11151 [114] / i915#7828 [113]) -> SKIP [115] (i915#11151 [114]
>    / i915#14544 [2] / i915#7828 [113]) +2 other tests skip
>  *=20
>    igt@kms_content_protection@dp-mst-type-0:shard-rkl: SKIP [112]
>    (i915#14544 [2] / i915#15330 [110] / i915#3116 [109]) -> SKIP [111]
>    (i915#15330 [110] / i915#3116 [109])
>  *=20
>    igt@kms_content_protection@srm:shard-rkl: SKIP [108] (i915#15865
>    [106]) -> SKIP [107] (i915#14544 [2] / i915#15865 [106]) +1 other
>    test skip
>  *=20
>    igt@kms_cursor_crc@cursor-offscreen-32x10:shard-rkl: SKIP [105]
>    (i915#14544 [2] / i915#3555 [56]) -> SKIP [104] (i915#3555 [56])
>  *=20
>    igt@kms_cursor_crc@cursor-random-512x512:shard-rkl: SKIP [103]
>    (i915#13049 [101]) -> SKIP [102] (i915#13049 [101] / i915#14544 [2])
>    +2 other tests skip
>  *=20
>    igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:shard-rkl: SKIP [100]
>    -> SKIP [99] (i915#14544 [2]) +6 other tests skip
>  *=20
>    igt@kms_dsc@dsc-fractional-bpp:shard-rkl: SKIP [98] (i915#14544 [2]
>    / i915#3840 [96]) -> SKIP [97] (i915#3840 [96])
>  *=20
>    igt@kms_feature_discovery@display-3x:shard-rkl: SKIP [95] (i915#1839
>    [93]) -> SKIP [94] (i915#14544 [2] / i915#1839 [93]) +1 other test
>    skip
>  *=20
>    igt@kms_flip@2x-flip-vs-dpms:shard-rkl: SKIP [92] (i915#9934 [88]) -
>    > SKIP [91] (i915#14544 [2] / i915#9934 [88]) +4 other tests skip
>  *=20
>    igt@kms_flip@2x-wf_vblank-ts-check:shard-rkl: SKIP [90] (i915#14544
>    [2] / i915#9934 [88]) -> SKIP [89] (i915#9934 [88])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-
>    downscaling:shard-rkl: SKIP [87] (i915#15643 [83]) -> SKIP [86]
>    (i915#14544 [2] / i915#15643 [83]) +2 other tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-
>    downscaling:shard-dg1: SKIP [85] (i915#15643 [83] / i915#4423 [80])
>    -> SKIP [84] (i915#15643 [83])
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-
>    blt:shard-dg1: SKIP [82] (i915#15102 [59]) -> SKIP [81] (i915#15102
>    [59] / i915#4423 [80])
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-
>    blt:shard-dg2: SKIP [79] (i915#15102 [59] / i915#3458 [62]) -> SKIP
>    [78] (i915#10433 [64] / i915#15102 [59] / i915#3458 [62])
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-
>    render:shard-rkl: SKIP [77] (i915#14544 [2] / i915#1825 [66]) ->
>    SKIP [76] (i915#1825 [66]) +3 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:shard-
>    rkl: SKIP [75] (i915#14544 [2] / i915#15102 [59] / i915#3023 [58]) -
>    > SKIP [74] (i915#15102 [59] / i915#3023 [58]) +2 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@pipe-fbc-rte:shard-rkl: SKIP [73]
>    (i915#14544 [2] / i915#9766 [71]) -> SKIP [72] (i915#9766 [71])
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-
>    cpu:shard-rkl: SKIP [70] (i915#15102 [59]) -> SKIP [69] (i915#14544
>    [2] / i915#15102 [59])
>  *=20
>    igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-
>    render:shard-rkl: SKIP [68] (i915#1825 [66]) -> SKIP [67]
>    (i915#14544 [2] / i915#1825 [66]) +18 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:shard-dg2: SKIP
>    [65] (i915#10433 [64] / i915#15102 [59] / i915#3458 [62]) -> SKIP
>    [63] (i915#15102 [59] / i915#3458 [62]) +6 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-suspend:shard-rkl: SKIP [61]
>    (i915#15102 [59] / i915#3023 [58]) -> SKIP [60] (i915#14544 [2] /
>    i915#15102 [59] / i915#3023 [58]) +8 other tests skip
>  *=20
>    igt@kms_hdr@static-toggle-suspend:shard-rkl: SKIP [57] (i915#3555
>    [56] / i915#8228 [55]) -> ABORT [54] (i915#15132 [53])
>  *=20
>    igt@kms_joiner@invalid-modeset-force-big-joiner:shard-rkl: SKIP [52]
>    (i915#15459 [50]) -> SKIP [51] (i915#14544 [2] / i915#15459 [50])
>  *=20
>    igt@kms_panel_fitting@atomic-fastset:shard-rkl: SKIP [49] (i915#6301
>    [45]) -> SKIP [48] (i915#14544 [2] / i915#6301 [45])
>  *=20
>    igt@kms_panel_fitting@legacy:shard-rkl: SKIP [47] (i915#14544 [2] /
>    i915#6301 [45]) -> SKIP [46] (i915#6301 [45])
>  *=20
>    igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:shard-rkl: SKIP
>    [44] (i915#15709 [40]) -> SKIP [43] (i915#14544 [2] / i915#15709
>    [40]) +1 other test skip
>  *=20
>    igt@kms_plane@pixel-format-4-tiled-modifier:shard-rkl: SKIP [42]
>    (i915#14544 [2] / i915#15709 [40]) -> SKIP [41] (i915#15709 [40])
>  *=20
>    igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-
>    b:shard-rkl: SKIP [39] (i915#15329 [37]) -> SKIP [38] (i915#14544
>    [2] / i915#15329 [37]) +3 other tests skip
>  *=20
>    igt@kms_pm_dc@dc5-retention-flops:shard-rkl: SKIP [36] (i915#3828
>    [34]) -> SKIP [35] (i915#14544 [2] / i915#3828 [34]) +1 other test
>    skip
>  *=20
>    igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:shard-
>    rkl: SKIP [33] (i915#11520 [29] / i915#14544 [2]) -> SKIP [32]
>    (i915#11520 [29]) +1 other test skip
>  *=20
>    igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:shard-rkl:
>    SKIP [31] (i915#11520 [29]) -> SKIP [30] (i915#11520 [29] /
>    i915#14544 [2]) +4 other tests skip
>  *=20
>    igt@kms_psr@psr2-cursor-mmap-gtt:shard-rkl: SKIP [28] (i915#1072
>    [24] / i915#14544 [2] / i915#9732 [23]) -> SKIP [27] (i915#1072 [24]
>    / i915#9732 [23]) +3 other tests skip
>  *=20
>    igt@kms_psr@psr2-sprite-mmap-cpu:shard-rkl: SKIP [26] (i915#1072
>    [24] / i915#9732 [23]) -> SKIP [25] (i915#1072 [24] / i915#14544 [2]
>    / i915#9732 [23]) +9 other tests skip
>  *=20
>    igt@kms_setmode@basic:shard-dg2: FAIL [22] (i915#15106 [21]) ->
>    ABORT [20] (i915#13562 [19])
>  *=20
>    igt@perf@mi-rpc:shard-rkl: SKIP [18] (i915#2434 [16]) -> SKIP [17]
>    (i915#14544 [2] / i915#2434 [16])
>  *=20
>    igt@perf@per-context-mode-unprivileged:shard-rkl: SKIP [15]
>    (i915#2435 [13]) -> SKIP [14] (i915#14544 [2] / i915#2435 [13])
>  *=20
>    igt@perf_pmu@module-unload:shard-mtlp: INCOMPLETE [12] (i915#13520
>    [11]) -> ABORT [10] (i915#15778 [9])
>  *=20
>    igt@prime_vgem@basic-fence-read:shard-rkl: SKIP [8] (i915#3291 [6] /
>    i915#3708 [5]) -> SKIP [7] (i915#14544 [2] / i915#3291 [6] /
>    i915#3708 [5])
>  *=20
>    igt@sriov_basic@enable-vfs-bind-unbind-each:shard-rkl: SKIP [4]
>    (i915#9917 [1]) -> SKIP [3] (i915#14544 [2] / i915#9917 [1])
> {name}: This element is suppressed. This means it is ignored when
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> Build changes * Linux: CI_DRM_18374 -> Patchwork_163786v5
> CI-20190529: 20190529
> CI_DRM_18374: 58d98cc42c584c191cd8399a8d0b710c6f6153cc @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8874: 4568b2c141ab630c34f8eb2b9afab8cbf8f3ce9e @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_163786v5: 58d98cc42c584c191cd8399a8d0b710c6f6153cc @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit


[1] i915#9917
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
[2] i915#14544
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
[3] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6=
/igt@sriov_basic@enable-vfs-bind-unbind-each.html
[4] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@s=
riov_basic@enable-vfs-bind-unbind-each.html
[5] i915#3708
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
[6] i915#3291
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
[7] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6=
/igt@prime_vgem@basic-fence-read.html
[8] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@p=
rime_vgem@basic-fence-read.html
[9] i915#15778
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
[10] ABORT
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtlp=
-2/igt@perf_pmu@module-unload.html
[11] i915#13520
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
[12] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-mtlp-8/igt=
@perf_pmu@module-unload.html
[13] i915#2435
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
[14] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@perf@per-context-mode-unprivileged.html
[15] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
perf@per-context-mode-unprivileged.html
[16] i915#2434
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
[17] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@perf@mi-rpc.html
[18] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
perf@mi-rpc.html
[19] i915#13562
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
[20] ABORT
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2-=
5/igt@kms_setmode@basic.html
[21] i915#15106
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
[22] FAIL
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg2-4/igt@=
kms_setmode@basic.html
[23] i915#9732
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
[24] i915#1072
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
[25] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_psr@psr2-sprite-mmap-cpu.html
[26] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_psr@psr2-sprite-mmap-cpu.html
[27] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_psr@psr2-cursor-mmap-gtt.html
[28] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_psr@psr2-cursor-mmap-gtt.html
[29] i915#11520
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
[30] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
[31] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
[32] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
[33] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
[34] i915#3828
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
[35] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_pm_dc@dc5-retention-flops.html
[36] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_pm_dc@dc5-retention-flops.html
[37] i915#15329
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
[38] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.htm=
l
[39] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html
[40] i915#15709
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
[41] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_plane@pixel-format-4-tiled-modifier.html
[42] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_plane@pixel-format-4-tiled-modifier.html
[43] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html
[44] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html
[45] i915#6301
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
[46] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_panel_fitting@legacy.html
[47] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_panel_fitting@legacy.html
[48] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_panel_fitting@atomic-fastset.html
[49] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_panel_fitting@atomic-fastset.html
[50] i915#15459
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
[51] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_joiner@invalid-modeset-force-big-joiner.html
[52] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_joiner@invalid-modeset-force-big-joiner.html
[53] i915#15132
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
[54] ABORT
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
1/igt@kms_hdr@static-toggle-suspend.html
[55] i915#8228
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
[56] i915#3555
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
[57] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-8/igt@=
kms_hdr@static-toggle-suspend.html
[58] i915#3023
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
[59] i915#15102
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
[60] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_frontbuffer_tracking@psr-suspend.html
[61] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_frontbuffer_tracking@psr-suspend.html
[62] i915#3458
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
[63] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2-=
7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
[64] i915#10433
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
[65] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg2-4/igt@=
kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
[66] i915#1825
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
[67] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
[68] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
[69] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.htm=
l
[70] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
[71] i915#9766
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
[72] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
[73] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_frontbuffer_tracking@pipe-fbc-rte.html
[74] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
[75] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html
[76] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.htm=
l
[77] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html
[78] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2-=
4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
[79] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg2-6/igt@=
kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
[80] i915#4423
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
[81] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1-=
17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html
[82] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg1-18/igt=
@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html
[83] i915#15643
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
[84] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1-=
14/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.h=
tml
[85] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg1-17/igt=
@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
[86] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
[87] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
[88] i915#9934
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
[89] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_flip@2x-wf_vblank-ts-check.html
[90] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_flip@2x-wf_vblank-ts-check.html
[91] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_flip@2x-flip-vs-dpms.html
[92] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_flip@2x-flip-vs-dpms.html
[93] i915#1839
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
[94] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_feature_discovery@display-3x.html
[95] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt@=
kms_feature_discovery@display-3x.html
[96] i915#3840
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
[97] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
8/igt@kms_dsc@dsc-fractional-bpp.html
[98] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt@=
kms_dsc@dsc-fractional-bpp.html
[99] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-=
6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
[100] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
[101] i915#13049
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
[102] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_cursor_crc@cursor-random-512x512.html
[103] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_cursor_crc@cursor-random-512x512.html
[104] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html
[105] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@kms_cursor_crc@cursor-offscreen-32x10.html
[106] i915#15865
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
[107] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_content_protection@srm.html
[108] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_content_protection@srm.html
[109] i915#3116
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
[110] i915#15330
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
[111] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_content_protection@dp-mst-type-0.html
[112] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@kms_content_protection@dp-mst-type-0.html
[113] i915#7828
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
[114] i915#11151
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
[115] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_chamelium_frames@hdmi-crc-single.html
[116] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_chamelium_frames@hdmi-crc-single.html
[117] i915#6095
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
[118] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
[119] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
[120] i915#15582
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
[121] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
[122] i915#14694
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
[123] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-glk3/igt@=
kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
[124] i915#14098
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
[125] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
[126] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
[127] i915#3638
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
[128] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
[129] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_big_fb@y-tiled-8bpp-rotate-270.html
[130] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
[131] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@kms_big_fb@x-tiled-8bpp-rotate-90.html
[132] i915#5286
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
[133] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
[134] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
[135] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.h=
tml
[136] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
[137] i915#7707
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
[138] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@intel_hwmon@hwmon-write.html
[139] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@intel_hwmon@hwmon-write.html
[140] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
[141] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@i915_pm_rpm@gem-execbuf-stress-pc8.html
[142] i915#2527
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
[143] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gen9_exec_parse@batch-invalid-length.html
[144] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gen9_exec_parse@batch-invalid-length.html
[145] i915#3297
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
[146] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gem_userptr_blits@coherency-unsync.html
[147] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gem_userptr_blits@coherency-unsync.html
[148] i915#3282
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
[149] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gem_pread@exhaustion.html
[150] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gem_pread@exhaustion.html
[151] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gem_madvise@dontneed-before-pwrite.html
[152] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@gem_madvise@dontneed-before-pwrite.html
[153] i915#4613
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
[154] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gem_lmem_swapping@verify-random.html
[155] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gem_lmem_swapping@verify-random.html
[156] i915#2190
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
[157] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gem_huc_copy@huc-copy.html
[158] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gem_huc_copy@huc-copy.html
[159] i915#3281
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
[160] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
[161] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gem_exec_reloc@basic-gtt-wc-noreloc.html
[162] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gem_exec_reloc@basic-gtt-cpu-active.html
[163] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@gem_exec_reloc@basic-gtt-cpu-active.html
[164] i915#4525
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
[165] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@gem_exec_balancer@parallel-contexts.html
[166] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@gem_exec_balancer@parallel-contexts.html
[167] i915#6335
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
[168] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
[169] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gem_create@create-ext-cpu-access-sanity-check.html
[170] i915#11078
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
[171] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@device_reset@cold-reset-bound.html
[172] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@device_reset@cold-reset-bound.html
[173] i915#6230
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
[174] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@api_intel_bb@crc32.html
[175] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@api_intel_bb@crc32.html
[176] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-6/igt@kms_setmode@basic@pipe-b-edp-1.html
[177] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-mtlp-1/ig=
t@kms_setmode@basic@pipe-b-edp-1.html
[178] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-17/igt@kms_setmode@basic.html
[179] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg1-18/ig=
t@kms_setmode@basic.html
[180] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
[181] i915#15073
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
[182] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg2-4/igt=
@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
[183] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
[184] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-2/igt=
@kms_pm_rpm@modeset-non-lpsp-stress.html
[185] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-14/igt@kms_pm_rpm@dpms-lpsp.html
[186] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg1-17/ig=
t@kms_pm_rpm@dpms-lpsp.html
[187] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_hdr@invalid-metadata-sizes.html
[188] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_hdr@invalid-metadata-sizes.html
[189] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-6/igt@kms_hdmi_inject@inject-4k.html
[190] i915#15725
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
[191] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-mtlp-1/ig=
t@kms_hdmi_inject@inject-4k.html
[192] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-12/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
[193] i915#13027
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
[194] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg1-15/ig=
t@kms_flip@flip-vs-expired-vblank-interruptible.html
[195] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
[196] i915#14152
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
[197] i915#12358
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
[198] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
[199] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_color@deep-color.html
[200] i915#12655
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
[201] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_color@deep-color.html
[202] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
6/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1.html
[203] i915#12761
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
[204] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-glk8/igt@=
kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1.html
[205] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
4/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html
[206] i915#14888
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
[207] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-glk5/igt@=
kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html
[208] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@i915_pm_rpm@system-suspend-devices.html
[209] i915#15060
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
[210] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-1/igt=
@i915_pm_rpm@system-suspend-devices.html
[211] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
5/igt@gen9_exec_parse@allowed-single.html
[212] i915#5566
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
[213] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-glk9/igt@=
gen9_exec_parse@allowed-single.html
[214] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gem_softpin@noreloc-s3.html
[215] i915#13809
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
[216] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@gem_softpin@noreloc-s3.html
[217] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@gem_eio@in-flight-suspend.html
[218] i915#15131
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
[219] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-1/igt=
@gem_eio@in-flight-suspend.html
[220] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@sriov_basic@enable-vfs-autoprobe-on.html
[221] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@sriov_basic@enable-vfs-autoprobe-on.html
[222] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@prime_vgem@fence-read-hang.html
[223] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
11/igt@perf_pmu@module-unload.html
[224] i915#6806
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
[225] i915#12549
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
[226] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@perf_pmu@frequency.html
[227] i915#7387
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
[228] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@perf@global-sseu-config-invalid.html
[229] i915#11920
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
[230] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_vrr@lobf.html
[231] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_vrr@lobf.html
[232] i915#15243
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
[233] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_vrr@flip-basic.html
[234] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_scaling_modes@scaling-mode-full-aspect.html
[235] i915#5289
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
[236] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
[237] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
[238] i915#9688
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
[239] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-1/igt@kms_psr@pr-sprite-plane-move.html
[240] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-17/igt@kms_psr@pr-sprite-plane-move.html
[241] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_psr@pr-cursor-render.html
[242] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_psr@fbc-psr2-sprite-render.html
[243] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_psr@fbc-psr2-sprite-render.html
[244] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_psr@fbc-psr-no-drrs.html
[245] i915#9683
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
[246] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_psr2_su@page_flip-xrgb8888.html
[247] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_psr2_su@page_flip-nv12.html
[248] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_psr2_su@page_flip-nv12.html
[249] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html
[250] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
11/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
[251] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
4/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
[252] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
[253] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
[254] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
[255] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.htm=
l
[256] i915#6524
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
[257] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_prime@basic-crc-hybrid.html
[258] i915#10553
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
[259] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
1/igt@kms_pm_rpm@system-suspend-modeset.html
[260] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-glk4/igt@=
kms_pm_rpm@system-suspend-modeset.html
[261] i915#15403
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
[262] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_pm_rpm@package-g7.html
[263] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_pm_rpm@package-g7.html
[264] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
[265] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg2-7/igt=
@kms_pm_rpm@modeset-non-lpsp-stress.html
[266] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
[267] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_pm_rpm@modeset-non-lpsp.html
[268] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-7/igt=
@kms_pm_rpm@modeset-non-lpsp.html
[269] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_pm_rpm@dpms-non-lpsp.html
[270] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-12/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
[271] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg1-15/ig=
t@kms_pm_rpm@dpms-mode-unset-lpsp.html
[272] i915#15948
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
[273] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_pm_dc@dc5-psr.html
[274] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_pm_dc@dc3co-vpb-simulation.html
[275] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
[276] i915#12343
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
[277] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_pm_backlight@brightness-with-dpms.html
[278] i915#9812
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
[279] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_pm_backlight@basic-brightness.html
[280] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
[281] i915#14259
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
[282] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_plane_multiple@tiling-4.html
[283] i915#13958
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
[284] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_plane_multiple@2x-tiling-4.html
[285] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_plane_multiple@2x-tiling-4.html
[286] i915#15912
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15912
[287] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-64.html
[288] i915#15913
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15913
[289] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-128.html
[290] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_plane_cursor@overlay.html
[291] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@kms_plane_cursor@overlay.html
[292] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html
[293] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
[294] i915#15608
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
[295] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-a-plane-7.html
[296] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
[297] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier.html
[298] i915#14712
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
[299] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
[300] i915#13476
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
[301] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
[302] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-3/igt=
@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
[303] i915#12756
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
[304] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-3/igt@kms_pipe_crc_basic@suspend-read-crc.html
[305] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-3/igt=
@kms_pipe_crc_basic@suspend-read-crc.html
[306] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_panel_fitting@legacy.html
[307] i915#15458
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
[308] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_joiner@basic-ultra-joiner.html
[309] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_joiner@basic-ultra-joiner.html
[310] i915#15460
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
[311] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_joiner@basic-big-joiner.html
[312] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_hdr@static-toggle-suspend.html
[313] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_hdr@static-toggle-dpms.html
[314] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-6/igt=
@kms_hdr@static-toggle-dpms.html
[315] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_hdr@static-swap.html
[316] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
[317] i915#5354
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
[318] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html
[319] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
[320] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
[321] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
[322] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.ht=
ml
[323] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
[324] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
[325] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.h=
tml
[326] i915#10056
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
[327] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
[328] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@kms_frontbuffer_tracking@fbc-suspend.html
[329] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
8/igt@kms_frontbuffer_tracking@fbc-suspend.html
[330] i915#8708
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
[331] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
[332] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing.html
[333] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.h=
tml
[334] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.=
html
[335] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing.html
[336] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
5/igt@kms_flip@flip-vs-expired-vblank.html
[337] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-glk9/igt@=
kms_flip@flip-vs-expired-vblank.html
[338] i915#3637
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
[339] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_flip@2x-plain-flip-ts-check.html
[340] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_flip@2x-plain-flip-interruptible.html
[341] i915#12745
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
[342] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
11/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html
[343] i915#4839
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
[344] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
11/igt@kms_flip@2x-flip-vs-suspend.html
[345] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-4/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
[346] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
[347] i915#658
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
[348] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_feature_discovery@psr1.html
[349] i915#4854
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
[350] i915#2065
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
[351] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_feature_discovery@chamelium.html
[352] i915#3955
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
[353] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_fbcon_fbt@psr-suspend.html
[354] i915#3469
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
[355] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_fbcon_fbt@psr-suspend.html
[356] i915#9878
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
[357] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
5/igt@kms_fbcon_fbt@fbc-suspend.html
[358] i915#9053
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
[359] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
[360] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_dsc@dsc-with-output-formats.html
[361] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_dsc@dsc-with-output-formats.html
[362] i915#13707
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
[363] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_dp_linktrain_fallback@dsc-fallback.html
[364] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_dp_linktrain_fallback@dp-fallback.html
[365] i915#13749
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
[366] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_dp_link_training@non-uhbr-sst.html
[367] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_dp_link_training@non-uhbr-mst.html
[368] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_dp_link_training@non-uhbr-mst.html
[369] i915#9723
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
[370] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
[371] i915#9809
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
[372] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
[373] i915#4103
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
[374] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
[375] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
[376] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-17/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
[377] i915#13046
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
[378] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html
[379] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
6/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
[380] i915#7882
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
[381] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
6/igt@kms_cursor_crc@cursor-suspend.html
[382] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
[383] i915#13566
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
[384] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
[385] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
[386] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-3/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
[387] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-tglu-10/i=
gt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
[388] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_cursor_crc@cursor-onscreen-max-size.html
[389] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html
[390] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html
[391] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_cursor_crc@cursor-offscreen-32x10.html
[392] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_content_protection@mei-interface.html
[393] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_content_protection@mei-interface.html
[394] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_content_protection@legacy.html
[395] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_content_protection@content-type-change.html
[396] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
[397] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_chamelium_hpd@dp-hpd-storm.html
[398] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
11/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
[399] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_chamelium_frames@dp-crc-fast.html
[400] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_chamelium_edid@hdmi-edid-read.html
[401] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_chamelium_color@ctm-green-to-red.html
[402] i915#3742
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
[403] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_cdclk@mode-transition-all-outputs.html
[404] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html
[405] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html
[406] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html
[407] i915#10307
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
[408] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.h=
tml
[409] i915#12313
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
[410] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
[411] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs.html
[412] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
[413] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
[414] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-12/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-3.html
[415] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
[416] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
[417] i915#5190
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
[418] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
[419] i915#6187
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
[420] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-1/igt@kms_big_fb@yf-tiled-addfb.html
[421] i915#4538
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
[422] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.h=
tml
[423] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_big_fb@linear-8bpp-rotate-270.html
[424] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
[425] i915#5138
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
[426] i915#15733
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
[427] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
[428] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-mtlp-6/ig=
t@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
[429] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
[430] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
[431] i915#9531
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
[432] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
[433] i915#14995
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995
[434] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
6/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
[435] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@intel_hwmon@hwmon-read.html
[436] i915#4817
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
[437] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
10/igt@i915_suspend@basic-s3-without-i915.html
[438] i915#8399
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
[439] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@i915_pm_freq_api@freq-basic-api.html
[440] i915#6412
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
[441] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@i915_module_load@resize-bar.html
[442] i915#15479
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
[443] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
[444] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
10/igt@i915_module_load@fault-injection@intel_gt_init-enodev.html
[445] i915#15342
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
[446] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@i915_module_load@fault-injection@intel_connector_register.html
[447] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
10/igt@i915_module_load@fault-injection@intel_connector_register.html
[448] i915#14073
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
[449] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html
[450] i915#2856
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
[451] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@gen9_exec_parse@bb-start-cmd.html
[452] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@gen9_exec_parse@bb-secure.html
[453] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gen9_exec_parse@allowed-all.html
[454] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gen7_exec_parse@basic-rejected.html
[455] i915#13356
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
[456] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-6/igt@gem_workarounds@suspend-resume-fd.html
[457] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-rkl-4/igt=
@gem_workarounds@suspend-resume-fd.html
[458] i915#14586
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
[459] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
8/igt@gem_workarounds@suspend-resume-fd.html
[460] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-glk5/igt@=
gem_workarounds@suspend-resume-fd.html
[461] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-4/igt@gem_userptr_blits@unsync-unmap.html
[462] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
[463] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
[464] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@gem_userptr_blits@dmabuf-unsync.html
[465] i915#4077
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
[466] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-17/igt@gem_tiled_blits@basic.html
[467] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@gem_set_tiling_vs_pwrite.html
[468] i915#8411
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
[469] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
[470] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
[471] i915#8428
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
[472] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html
[473] i915#13398
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
[474] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-1/igt@gem_pxp@hw-rejects-pxp-buffer.html
[475] i915#4270
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
[476] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gem_pxp@create-valid-protected-context.html
[477] i915#2658
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
[478] i915#14702
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
[479] WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
4/igt@gem_pwrite@basic-exhaustion.html
[480] WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@gem_pwrite@basic-exhaustion.html
[481] i915#4083
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
[482] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-4/igt@gem_mmap_wc@write.html
[483] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gem_mmap_gtt@big-copy-xy.html
[484] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-1/igt@gem_mmap_gtt@basic-write-read.html
[485] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gem_madvise@dontneed-before-pwrite.html
[486] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
3/igt@gem_lmem_swapping@random-engines.html
[487] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
[488] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gem_lmem_swapping@parallel-multi.html
[489] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-7/igt@gem_exec_suspend@basic-s0.html
[490] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg2-4/igt=
@gem_exec_suspend@basic-s0.html
[491] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@gem_exec_reloc@basic-write-read-active.html
[492] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1=
-17/igt@gem_exec_reloc@basic-wc-read-noreloc.html
[493] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-1/igt@gem_exec_reloc@basic-wc-read-noreloc.html
[494] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gem_exec_reloc@basic-gtt-cpu-active.html
[495] i915#6344
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
[496] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@gem_exec_capture@capture-recoverable.html
[497] i915#15871
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871
[498] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-mtl=
p-6/igt@gem_exec_big@single.html
[499] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-mtlp-1/ig=
t@gem_exec_big@single.html
[500] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
[501] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@gem_exec_balancer@parallel-contexts.html
[502] i915#8555
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
[503] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gem_exec_balancer@noheartbeat.html
[504] i915#13390
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
[505] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk=
2/igt@gem_eio@in-flight-suspend.html
[506] i915#280
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
[507] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gem_ctx_sseu@invalid-sseu.html
[508] i915#9561
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
[509] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-8/igt@gem_ctx_freq@sysfs@gt0.html
[510] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18374/shard-dg2-5/igt=
@gem_ctx_freq@sysfs@gt0.html
[511] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-2/igt@gem_create@create-ext-cpu-access-big.html
[512] i915#7697
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
[513] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-8/igt@gem_close_race@multigpu-basic-process.html
[514] i915#9323
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
[515] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-5/igt@gem_ccs@block-multicopy-inplace.html
[516] i915#3936
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
[517] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-1/igt@gem_busy@semaphore.html
[518] i915#15678
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
[519] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl=
-4/igt@drm_buddy@drm_buddy.html
[520] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-tgl=
u-1/igt@drm_buddy@drm_buddy.html
[521] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-5/igt@kms_setmode@basic@pipe-c-hdmi-a-3.html
[522] DMESG-FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2=
-5/igt@kms_setmode@basic@pipe-a-hdmi-a-3.html

--=-AVxDhu2FItPXuT/W3kOX
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
<body><div style=3D"unicode-bidi: plaintext; caret-color: rgb(0, 0, 0); col=
or: rgb(0, 0, 0); font-family: Lato; font-style: normal; font-variant-caps:=
 normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; widows:=
 2; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -we=
bkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-th=
ickness: auto; text-decoration-style: solid;">Hi,</div><div style=3D"unicod=
e-bidi: plaintext; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-fam=
ily: Lato; font-style: normal; font-variant-caps: normal; font-weight: 500;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -we=
bkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0p=
x; text-decoration-line: none; text-decoration-thickness: auto; text-decora=
tion-style: solid;"><br></div><div style=3D"unicode-bidi: plaintext; caret-=
color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-style: no=
rmal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; whit=
e-space: normal; widows: 2; word-spacing: 0px; -webkit-tap-highlight-color:=
 rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration-line: =
none; text-decoration-thickness: auto; text-decoration-style: solid;">Diffe=
rent tests failed in different revisions of this series and I don't believe=
 these tests should be affected by the changes here.</div><div style=3D"uni=
code-bidi: plaintext; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-=
family: Lato; font-style: normal; font-variant-caps: normal; font-weight: 5=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width:=
 0px; text-decoration-line: none; text-decoration-thickness: auto; text-dec=
oration-style: solid;"><br></div><div style=3D"unicode-bidi: plaintext; car=
et-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-style:=
 normal; font-variant-caps: normal; font-weight: 500; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-tap-highlight-col=
or: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration-lin=
e: none; text-decoration-thickness: auto; text-decoration-style: solid;">Ca=
n you please re-report it?</div><div style=3D"unicode-bidi: plaintext; care=
t-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-style: =
normal; font-variant-caps: normal; font-weight: 500; letter-spacing: normal=
; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; widows: 2; word-spacing: 0px; -webkit-tap-highlight-colo=
r: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration-line=
: none; text-decoration-thickness: auto; text-decoration-style: solid;"><br=
></div><div style=3D"unicode-bidi: plaintext; caret-color: rgb(0, 0, 0); co=
lor: rgb(0, 0, 0); font-family: Lato; font-style: normal; font-variant-caps=
: normal; font-weight: 500; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; white-space: normal; widows=
: 2; word-spacing: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -w=
ebkit-text-stroke-width: 0px; text-decoration-line: none; text-decoration-t=
hickness: auto; text-decoration-style: solid;">--</div><div style=3D"unicod=
e-bidi: plaintext; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-fam=
ily: Lato; font-style: normal; font-variant-caps: normal; font-weight: 500;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -we=
bkit-tap-highlight-color: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0p=
x; text-decoration-line: none; text-decoration-thickness: auto; text-decora=
tion-style: solid;">Cheers,</div><div style=3D"unicode-bidi: plaintext; car=
et-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: Lato; font-style:=
 normal; font-variant-caps: normal; font-weight: 500; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; widows: 2; word-spacing: 0px; -webkit-tap-highlight-col=
or: rgba(0, 0, 0, 0.4); -webkit-text-stroke-width: 0px; text-decoration-lin=
e: none; text-decoration-thickness: auto; text-decoration-style: solid;">Lu=
ca.</div><div><br></div><div><br></div><div>On Tue, 2026-04-28 at 19:21 +00=
00, Patchwork wrote:</div><blockquote type=3D"cite" style=3D"margin:0 0 0 .=
8ex; border-left:2px #729fcf solid;padding-left:1ex"><div><b>Patch Details<=
/b></div>
<div><table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915: move more display dependenc=
ies from i915 (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/163786/">https://patchwork.freedesktop.org/series/163786/</a></td></tr=
>
<tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></td=
><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5=
/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/in=
dex.html</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from =
CI_DRM_18374_full -&gt; Patchwork_163786v5_full</h1><h2>Summary</h2><p><str=
ong>FAILURE</strong></p><p>Serious unknown changes coming with Patchwork_16=
3786v5_full absolutely need to be<br> verified manually.</p><p>If you think=
 the reported changes have nothing to do with the changes<br> introduced in=
 Patchwork_163786v5_full, please notify your bug team (I915-ci-infra@lists.=
freedesktop.org) to allow them<br> to document this new failure mode, which=
 will reduce false positives in CI.</p><h2>Participating hosts (10 -&gt; 10=
)</h2><p>No changes in participating hosts</p><h2>Possible new issues</h2><=
p>Here are the unknown changes that may have been introduced in Patchwork_1=
63786v5_full:</p><h3>IGT changes</h3><h4>Possible regressions</h4><ul>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-3:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-5/igt@kms_setmode@basic@pipe-a-h=
dmi-a-3.html">DMESG-FAIL</a></li>
</ul></li>
<li>
<p>igt@kms_setmode@basic@pipe-c-hdmi-a-3:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-5/igt@kms_setmode@basic@pipe-c-h=
dmi-a-3.html">ABORT</a></li>
</ul></li>
</ul><h2>New tests</h2><p>New tests have been introduced between CI_DRM_183=
74_full and Patchwork_163786v5_full:</p><h3>New IGT tests (3)</h3><ul>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-hdmi-=
a-2:</p><ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.05] s</li>
</ul></li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-b-hdmi-=
a-2:</p><ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.04] s</li>
</ul></li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-c-hdmi-=
a-2:</p><ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.05] s</li>
</ul></li>
</ul><h2>Known issues</h2><p>Here are the changes found in Patchwork_163786=
v5_full that come from known issues:</p><h3>IGT changes</h3><h4>Issues hit<=
/h4><ul>
<li>
<p>igt@drm_buddy@drm_buddy:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@drm_buddy@drm_buddy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15678">i915#15678</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@drm_buddy@drm_buddy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15678">i915#15678</a>)</li>
</ul></li>
<li>
<p>igt@gem_busy@semaphore:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gem_busy@semaphore.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3936">i915#3936</a>)</li>
</ul></li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul></li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul></li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li>
</ul></li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg2-5/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard=
-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9561">i915#9561</a>) +1 other tes=
t fail</li>
</ul></li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk2/igt@gem_eio@in-flight-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13390">i915#13390</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8555">i915#8555</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4525">i915#4525</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@gem_exec_balancer@parallel=
-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_big@single:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-mtlp-1/igt@gem_exec_big@single.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-m=
tlp-6/igt@gem_exec_big@single.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15871">i915#15871</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6344">i915#6344</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-c=
pu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg1-17/igt@gem_exec_reloc@basic-wc-r=
ead-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-r=
ead-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/sh=
ard-dg2-7/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>=
) +1 other test incomplete</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk3/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gem_madvise@dontneed-befor=
e-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3282">i915#3282</a>)</li>
</ul></li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-mtlp-1/igt@gem_mmap_gtt@basic-write-=
read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gem_mmap_gtt@big-copy-xy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_mmap_wc@write:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-4/igt@gem_mmap_wc@write.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4083">i915#4083</a>)</li>
</ul></li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk4/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14702">i915#14702</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@gem_pwrite@basic-exhausti=
on.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2658">i915#2658</a>)</li>
</ul></li>
<li>
<p>igt@gem_pxp@create-valid-protected-context:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gem_pxp@create-valid-prote=
cted-context.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul></li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-mtlp-1/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13398">i915#13398</a>)</li>
</ul></li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gem_render_copy@mixed-tile=
d-to-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul></li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk4/igt@gem_render_copy@y-tiled-ccs=
-to-y-tiled-mc-ccs.html">SKIP</a> +241 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8411">i915#8411</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_tiled_blits@basic:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg1-17/igt@gem_tiled_blits@basic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4077">i915#4077</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@gem_userptr_blits@invalid-=
mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-4/igt@gem_userptr_blits@unsync-u=
nmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163=
786v5/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>) +1 other test incomplete</li>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-glk5/igt@gem_workarounds@suspend-resume-fd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1637=
86v5/shard-glk8/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">=
i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14586">i915#14586</a>)</li>
</ul></li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@gen9_exec_parse@allowed-al=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@gen9_exec_parse@bb-secure=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@i915_drm_fdinfo@most-busy-=
idle-check-all@vecs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li=
>
</ul></li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@i915_module_load@fault-in=
jection@intel_connector_register.html">ABORT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other t=
est abort</li>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk10/igt@i915_module_load@fault-inj=
ection@intel_connector_register.html">ABORT</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other te=
st abort</li>
</ul></li>
<li>
<p>igt@i915_module_load@fault-injection@intel_gt_init-enodev:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk10/igt@i915_module_load@fault-inj=
ection@intel_gt_init-enodev.html">SKIP</a> +116 other tests skip</li>
</ul></li>
<li>
<p>igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@i915_module_load@fault-in=
jection@uc_fw_rsa_data_create.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15479">i915#15479</a>) +4 other tests=
 skip</li>
</ul></li>
<li>
<p>igt@i915_module_load@resize-bar:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6412">i915#6412</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@i915_pm_freq_api@freq-bas=
ic-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8399">i915#8399</a>)</li>
</ul></li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk10/igt@i915_suspend@basic-s3-with=
out-i915.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul></li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@intel_hwmon@hwmon-read.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/7707">i915#7707</a>)</li>
</ul></li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk6/igt@kms_async_flips@async-flip-=
suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995">i915#14=
995</a>)</li>
</ul></li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests sk=
ip</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_163786v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5=
190</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-mtlp-1/igt@kms_big_fb@yf-tiled-addfb=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6187">i915#6187</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_big_fb@yf-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-async-flip.html">SKIP</a> +33 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_ccs@bad-pixel-format-4=
-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other=
 tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-3:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg1-12/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +79 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</l=
i>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +91 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1:</p><ul=
>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other =
tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-=
tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +33 other tes=
ts skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-=
tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +53 other tests skip=
</li>
</ul></li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul></li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> +17 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_chamelium_edid@hdmi-ed=
id-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip</l=
i>
</ul></li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_chamelium_frames@dp-cr=
c-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk11/igt@kms_chamelium_hpd@dp-hpd-a=
fter-suspend.html">SKIP</a> +84 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-=
storm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_chamelium_hpd@hdmi-hp=
d-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other t=
ests skip</li>
</ul></li>
<li>
<p>igt@kms_content_protection@content-type-change:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_content_protection@con=
tent-type-change.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@legacy:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_content_protection@mei-interface:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_content_protection@mei=
-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_content_protection@me=
i-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_cursor_crc@cursor-onsc=
reen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_cursor_crc@cursor-onsc=
reen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p><ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-=
hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_163786v5/shard-tglu-3/igt@kms_cursor_crc@cursor-random-128=
x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fai=
l</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_cursor_crc@cursor-rand=
om-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fai=
l</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_cursor_crc@cursor-sli=
ding-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk6/igt@kms_cursor_crc@cursor-suspe=
nd.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14152">i915#14152</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882">i915#7882</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk6/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</li=
>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_cursor_legacy@2x-curso=
r-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg1-17/igt@kms_cursor_legacy@2x-flip=
-vs-cursor-legacy.html">SKIP</a> +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p><ul=
>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-mtlp-1/igt@kms_cursor_legacy@cursora=
-vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9809">i915#9809</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9723">i915#9723</a>)</li>
</ul></li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_dp_link_training@non-u=
hbr-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_dp_link_training@non-u=
hbr-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
</ul></li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_dp_link_training@non-=
uhbr-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13749">i915#13749</a>)</li>
</ul></li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul></li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_dp_linktrain_fallback=
@dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul></li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk5/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9878">i915#9878</a>)</li>
</ul></li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3469">i915#3469</a>)</li>
</ul></li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2065">i915#2065</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul></li>
<li>
<p>igt@kms_feature_discovery@psr1:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_feature_discovery@psr=
1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_flip@2x-flip-vs-expir=
ed-vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-4/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk11/igt@kms_flip@2x-flip-vs-suspen=
d.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:</p><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk11/igt@kms_flip@2x-flip-vs-suspen=
d@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_flip@2x-plain-flip-int=
erruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_flip@2x-plain-flip-ts=
-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-glk9/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786=
v5/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#130=
27</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>=
) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2=
 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li=
>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>=
)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_frontbuffer_tracking@f=
bc-rgb565-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 other tests skip</li=
>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
163786v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/10056">i915#10056</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk8/igt@kms_frontbuffer_tracking@fb=
c-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</=
p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-indfb-draw-render.html">SKIP</a> +28 other tests ski=
p</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +11 other tests=
 skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +15=
 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +3 o=
ther tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:</p><=
ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#34=
58</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) =
+3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p><=
ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +30 other=
 tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:</p><=
ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +8 other =
tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_frontbuffer_tracking@=
psr-shrfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +16 other tests skip=
</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-swap:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_hdr@static-swap.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8228">i915#8228</a>)</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/s=
hard-rkl-8/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#=
8228</a>)</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15460">i915#15460</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_joiner@basic-ultra-joi=
ner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15458">i915#15458</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15458">i915#15458</a>)</li>
</ul></li>
<li>
<p>igt@kms_panel_fitting@legacy:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6301">i915#6301</a>)</li>
</ul></li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
63786v5/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2756">i915#12756</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13476">i915#13476</a>)</li>
</ul></li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hd=
mi-a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_163786v5/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc=
@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul></li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_pipe_stress@stress-xrg=
b8888-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_plane@pixel-format-4-=
tiled-dg2-rc-ccs-cc-modifier.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test s=
kip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>=
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_plane@pixel-format-4-t=
iled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 oth=
er tests skip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier@pipe-a-plane-7:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_plane@pixel-format-x-=
tiled-modifier@pipe-a-plane-7.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +5 other tests=
 skip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_plane@pixel-format-y-=
tiled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_plane@pixel-format-y-t=
iled-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test =
skip</li>
</ul></li>
<li>
<p>igt@kms_plane_cursor@overlay:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_plane_cursor@overlay.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/sha=
rd-rkl-8/igt@kms_plane_cursor@overlay.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15912">i915#15912</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-128:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_plane_cursor@overlay@p=
ipe-a-hdmi-a-1-size-128.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15913">i915#15913</a>) +1 other test fail</=
li>
</ul></li>
<li>
<p>igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-64:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_plane_cursor@overlay@p=
ipe-a-hdmi-a-1-size-64.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15912">i915#15912</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_plane_multiple@2x-tili=
ng-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13958">i915#13958</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_plane_multiple@2x-tili=
ng-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13958">i915#13958</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_plane_multiple@tiling=
-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_plane_scaling@plane-up=
scale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +7 other te=
sts skip</li>
</ul></li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_pm_backlight@basic-br=
ightness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9812">i915#9812</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15948">i915#15948</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15948">i915#15948</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_pm_dc@dc5-psr.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15948">i915#15948</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg1-15/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1637=
86v5/shard-dg1-12/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#1=
5073</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15073">i915#15073</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/=
shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) =
+1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
3786v5/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i9=
15#15073</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15073">i915#15073</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_pm_rpm@package-g7.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15403">i915#15403</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_pm_rpm@package-g7.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15403">i915#15403</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-glk4/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1637=
86v5/shard-glk1/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">=
i915#10553</a>)</li>
</ul></li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6524">i915#6524</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>=
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-cursor=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 ot=
her tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk10/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tes=
ts skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests ski=
p</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk4/igt@kms_psr2_sf@fbc-psr2-primar=
y-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk11/igt@kms_psr2_sf@pr-primary-pla=
ne-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test s=
kip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_psr2_sf@psr2-primary-=
plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tes=
ts skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9683">i915#9683</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_psr@fbc-psr-no-drrs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@pr-cursor-render:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@kms_psr@pr-cursor-render.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@pr-sprite-plane-move:</p><ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-mtlp-1/igt@kms_psr@pr-sprite-plane-m=
ove.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9688">i915#9688</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg1-17/igt@kms_psr@pr-sprite-plane-m=
ove.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul></li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-5/igt@kms_scaling_modes@scaling=
-mode-full-aspect.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_vrr@flip-basic:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-2/igt@kms_vrr@flip-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@lobf:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_vrr@lobf.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920=
">i915#11920</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-tglu-1/igt@kms_vrr@lobf.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1192=
0">i915#11920</a>)</li>
</ul></li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@perf@global-sseu-config-in=
valid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7387">i915#7387</a>)</li>
</ul></li>
<li>
<p>igt@perf_pmu@frequency:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@perf_pmu@frequency.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12549">i915#12549</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6806">i915#6806</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@perf_pmu@module-unload:</p><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-glk11/igt@perf_pmu@module-unload.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15778">i915#15778</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul></li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-dg2-1/igt@sriov_basic@enable-vfs-aut=
oprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@sriov_basic@enable-vfs-aut=
oprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9917">i915#9917</a>)</li>
</ul></li>
</ul><h4>Possible fixes</h4><ul>
<li>
<p>igt@gem_eio@in-flight-suspend:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-1/igt@gem_eio@in-flight-suspend.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i91=
5#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_163786v5/shard-rkl-2/igt@gem_eio@in-flight-suspend.html">PASS</a></li=
>
</ul></li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809">i=
915#13809</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_163786v5/shard-rkl-8/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-glk9/igt@gen9_exec_parse@allowed-single.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">=
i915#5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_163786v5/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</=
a></li>
</ul></li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5060">i915#15060</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_163786v5/shard-rkl-8/igt@i915_pm_rpm@system-suspend-devices.=
html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2:</p=
><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atom=
ic@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14888">i915#14888</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk4/igt@kms_asyn=
c_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-2.html">PASS</a> +1 =
other test pass</li>
</ul></li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-glk8/igt@kms_async_flips@async-flip-suspend-resume@pipe=
-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12761">i915#12761</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk6/igt@kms_async=
_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_color@deep-color:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#126=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_color@deep-color.html">PASS</a>=
</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12358">i915#12358</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14152">i915#14152</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms=
_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html">PASS</a> +1 other test pas=
s</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank-interruptibl=
e.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/13027">i915#13027</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_163786v5/shard-dg1-12/igt@kms_flip@flip-vs-expire=
d-vblank-interruptible.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_hdmi_inject@inject-4k:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725">i91=
5#15725</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_163786v5/shard-mtlp-6/igt@kms_hdmi_inject@inject-4k.html">PASS</a></l=
i>
</ul></li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_hdr@invalid-metadata-siz=
es.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_163786v5/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tes=
ts pass</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_163786v5/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.h=
tml">PASS</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_163786v5/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_setmode@basic:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg1-18/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
3786v5/shard-dg1-17/igt@kms_setmode@basic.html">PASS</a> +2 other tests pas=
s</li>
</ul></li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-mtlp-1/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106=
">i915#15106</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_163786v5/shard-mtlp-6/igt@kms_setmode@basic@pipe-b-edp-1.html">P=
ASS</a> +2 other tests pass</li>
</ul></li>
</ul><h4>Warnings</h4><ul>
<li>
<p>igt@api_intel_bb@crc32:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
30">i915#6230</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_163786v5/shard-rkl-8/igt@api_intel_bb@crc32.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#=
6230</a>)</li>
</ul></li>
<li>
<p>igt@device_reset@cold-reset-bound:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@device_reset@cold-reset-bound.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">=
i915#11078</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_163786v5/shard-rkl-6/igt@device_reset@cold-reset-bound.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/110=
78">i915#11078</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul></li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gem_create@create-ext-cpu-access-sanity-check=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6335">i915#6335</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@gem_create@create-ext-cpu-a=
ccess-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@gem_exec_balancer@par=
allel-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@gem_exec_reloc@basic-=
gtt-cpu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_163786v5/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
63786v5/shard-rkl-6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190"=
>i915#2190</a>)</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gem_lmem_swapping@verify-random.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"=
>i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_163786v5/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@gem_madvise@dontneed-before-pwrite.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@gem_madvise@dontneed-b=
efore-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_pread@exhaustion:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gem_pread@exhaustion.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
63786v5/shard-rkl-6/igt@gem_pread@exhaustion.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">=
i915#3282</a>)</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gem_userptr_blits@coherency-unsync.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
97">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_163786v5/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@gen9_exec_parse@batch-invalid-length.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_163786v5/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_163786v5/shard-rkl-8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.h=
tml">SKIP</a> +2 other tests skip</li>
</ul></li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#77=
07</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_163786v5/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7707">i915#7707</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-=
rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-fli=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/5286">i915#5286</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_big_fb@4-tiled-=
max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_big_fb@x-tiled-8bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_163786v5/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:</p><ul=
>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@=
pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6=
/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</l=
i>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-glk3/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14694">i915#14694</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15582">i915#15582</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-glk9/igt@kms_ccs@cr=
c-primary-suspend-yf-tiled-ccs.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 othe=
r test incomplete</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@p=
ipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_ccs@crc-s=
prite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095=
">i915#6095</a>) +11 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_chamelium_frames@hdmi-crc-single.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_chamelium_frames=
@hdmi-crc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a=
>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_=
content_protection@dp-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a=
>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@srm:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_content_protection@srm.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i91=
5#15865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_163786v5/shard-rkl-6/igt@kms_content_protection@srm.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15865">i915#15865</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-4/igt@kms_cursor_crc@curs=
or-offscreen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_cursor_crc@cursor-random-512x512.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x5=
12.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_163786v5/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3840">i915#3840</a>)</li>
</ul></li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_feature_discovery@display-3x.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839=
">i915#1839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_163786v5/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1839">i915#1839</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9=
934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_163786v5/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9934">i915#9934</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_flip@2x-wf_vblank-ts-c=
heck.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9934">i915#9934</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>=
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp=
-4tile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_fli=
p_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15643">i915#15643</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bp=
p-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard=
-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscal=
ing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15643">i915#15643</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:</p>=
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen=
-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg1-17/igt@kms_f=
rontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i=
915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4423">i915#4423</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p><ul=
>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-i=
ndfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg2-4=
/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
0433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render:</=
p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-c=
ur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-r=
kl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/1825">i915#1825</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/s=
hard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3023">i915#3023</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9766">i915#9766</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_frontbuffer_tra=
cking@pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu:</=
p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_f=
rontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:</p><=
ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1825">i915#1825</a>) +18 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-dg=
2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i91=
5#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3458">i915#3458</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_frontbuffer_trac=
king@psr-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a=
>) +8 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-8/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_163786v5/shard-rkl-1/igt@kms_hdr@static-toggle-suspend=
.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15132">i915#15132</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_joiner@invalid-modeset-force-big-joiner.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15459">i915#15459</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_joiner@invalid-modeset-=
force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul></li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301=
">i915#6301</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_163786v5/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6301">i915#6301</a>)</li>
</ul></li>
<li>
<p>igt@kms_panel_fitting@legacy:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6301">i915#6301</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_panel_fitting@legacy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6301">i915#6301</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifi=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_plane@pixel-format-=
4-tiled-bmg-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 =
other test skip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-modifier.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_plane@pixel=
-format-4-tiled-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:</=
p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-=
with-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_p=
lane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i=
915#3828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_163786v5/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3828">i915#3828</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuo=
us-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8=
/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1152=
0">i915#11520</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_psr2_sf@fbc-p=
r-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_163786v5/shard-rkl-8/igt@kms_psr@psr2-c=
ursor-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_setmode@basic:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-dg2-4/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163=
786v5/shard-dg2-5/igt@kms_setmode@basic.html">ABORT</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562">i915#13562</a>)</li=
>
</ul></li>
<li>
<p>igt@perf@mi-rpc:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_163786v5/sh=
ard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul></li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@perf@per-context-mode-unprivileged.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/24=
35">i915#2435</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_163786v5/shard-rkl-6/igt@perf@per-context-mode-unprivileged.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul></li>
<li>
<p>igt@perf_pmu@module-unload:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-mtlp-8/igt@perf_pmu@module-unload.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520">=
i915#13520</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_163786v5/shard-mtlp-2/igt@perf_pmu@module-unload.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i=
915#15778</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i91=
5#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_163786v5/shard-rkl-6/igt@prime_vgem@basic-fence-read.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul></li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18374/shard-rkl-4/igt@sriov_basic@enable-vfs-bind-unbind-each.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_163786v5/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbin=
d-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul></li>
</ul><p>{name}: This element is suppressed. This means it is ignored when c=
omputing<br> the status of the difference (SUCCESS, WARNING, or FAILURE).</=
p><h2>Build changes</h2><ul>
<li>Linux: CI_DRM_18374 -&gt; Patchwork_163786v5</li>
</ul><p>CI-20190529: 20190529<br> CI_DRM_18374: 58d98cc42c584c191cd8399a8d0=
b710c6f6153cc @ git://anongit.freedesktop.org/gfx-ci/linux<br> IGT_8874: 45=
68b2c141ab630c34f8eb2b9afab8cbf8f3ce9e @ https://gitlab.freedesktop.org/drm=
/igt-gpu-tools.git<br> Patchwork_163786v5: 58d98cc42c584c191cd8399a8d0b710c=
6f6153cc @ git://anongit.freedesktop.org/gfx-ci/linux<br> piglit_4509: fdc5=
a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit=
</p></blockquote><div><br></div><div><span></span></div></body></html>

--=-AVxDhu2FItPXuT/W3kOX--
