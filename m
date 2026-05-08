Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eK3hJRSk/Wl0ggAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:51:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 049FD4F3E74
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 10:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E00110E081;
	Fri,  8 May 2026 08:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TeP8etns";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BEB810E081;
 Fri,  8 May 2026 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778230287; x=1809766287;
 h=message-id:subject:from:to:date:in-reply-to:references:
 mime-version:resent-from:resent-to:resent-cc:resent-date;
 bh=Wz8fFX0s5IIjzsrLQpxwnDplIJKukFkBpU5szeJ/hxo=;
 b=TeP8etnskYGq0cgbo8b5bVlF9VZyLy9QkUuvZrKAG8cfxpJJtTEt9HC9
 HTjUj4Zi6MxuYChdnAtUxCvuGnIp7C+VxbQRoM/WXxrnkt306JrFW9RYd
 B6sWfCz2OMC726UUn1CYd74gsOgtQCLZWFkoG52n01544RHGOUps3jGdn
 XI+o8EAey/lg+LT1cwtfOi3buaqiLAXhu/oK4eA+suDAJg/t4xLxdShVv
 xQ6fpralyflCrKuWLT6v5FJwjTDd12V53jPQk78hzOjygUgQrV84JjWCh
 F+tHcmZv5AEmXCcQ128/go7qBwer3zOL44lEBv4teRK8kJDNLBuVMOQ4I Q==;
X-CSE-ConnectionGUID: GYvCfJQdS8e+uFIjNJN4Gw==
X-CSE-MsgGUID: uNSJNOfiQn+YuVRyeIBC1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="90574108"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208,217";a="90574108"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:51:27 -0700
X-CSE-ConnectionGUID: /RsmSRhVQ4WVgxla3+tKoQ==
X-CSE-MsgGUID: l0qzAUk3TMyZLZ/nwSEjZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; 
 d="scan'208,217";a="233658706"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.244.53])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 01:51:24 -0700
Message-ID: <3cfe3c29fce1345e10f937e37c9d728519b251b7.camel@linux.intel.com>
Subject: Re: =?UTF-8?Q?=E2=9C=97?= i915.CI.Full: failure for drm/i915: Fix
 potential UAF in TTM object purge
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 08 May 2026 10:49:34 +0200
In-Reply-To: <177820432642.50384.4825927003803149882@5ab824fced77>
References: <20260507101653.321535-2-janusz.krzysztofik@linux.intel.com>
 <177820432642.50384.4825927003803149882@5ab824fced77>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Type: multipart/alternative; boundary="=-l2GtkFv3KbpapM20cpAf"
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
Resent-From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Resent-To: I915-ci-infra@lists.freedesktop.org
Resent-Cc: intel-gfx@lists.freedesktop.org
Resent-Date: Fri, 08 May 2026 10:51:22 +0200
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
Resent-Message-Id: <20260508085129.0E00110E081@gabe.freedesktop.org>
X-Rspamd-Queue-Id: 049FD4F3E74
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

--=-l2GtkFv3KbpapM20cpAf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi=C2=A0I915-ci-infra@lists.freedesktop.org,

On Fri, 2026-05-08 at 01:38 +0000, Patchwork wrote:
> Patch Details
>=20
> Series:drm/i915: Fix potential UAF in TTM object purge
>=20
> URL:https://patchwork.freedesktop.org/series/166126/
>=20
> State:failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/index.html
> CI Bug Log - changes from CI_DRM_18440_full -> Patchwork_166126v1_fullSum=
maryFAILURE
> Serious unknown changes coming with Patchwork_166126v1_full absolutely
> need to be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_166126v1_full, please notify your bug team (I915-
> ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in
> CI.
> Participating hosts (10 -> 10)No changes in participating hosts
> Possible new issuesHere are the unknown changes that may have been introd=
uced in
> Patchwork_166126v1_full:
> IGT changesPossible regressions * igt@i915_selftest@live@execlists:
>     - shard-rkl:          PASS [561] -> DMESG-WARN [560] +1 other test dm=
esg-warn

My change can only affect discrete platforms, not integrated as RKL, then
this kernel warning is not related. =C2=A0Please update CBL filters and re-
report.

Thanks,
Janusz

> Known issuesHere are the changes found in Patchwork_166126v1_full that co=
me from
> known issues:
> IGT changesIssues hit *=20
>    igt@api_intel_bb@blit-reloc-purge-cache:shard-rkl: NOTRUN -> SKIP [559=
]
>    (i915#8411 [557])
>  *=20
>    igt@api_intel_bb@object-reloc-purge-cache:shard-dg2: NOTRUN -> SKIP
>    [558] (i915#8411 [557])
>  *=20
>    igt@device_reset@cold-reset-bound:shard-rkl: NOTRUN -> SKIP [556]
>    (i915#11078 [555])
>  *=20
>    igt@drm_buddy@drm_buddy:shard-rkl: NOTRUN -> SKIP [554] (i915#15678
>    [553])
>  *=20
>    igt@gem_ccs@block-multicopy-compressed:shard-tglu-1: NOTRUN -> SKIP
>    [552] (i915#9323 [188])
>  *=20
>    igt@gem_ccs@suspend-resume:shard-rkl: NOTRUN -> SKIP [551] (i915#9323
>    [188])
>  *=20
>    igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:shar=
d-
>    dg2: PASS [550] -> INCOMPLETE [549] (i915#12392 [548] / i915#13356
>    [484])
>  *=20
>    igt@gem_create@create-ext-cpu-access-big:shard-tglu: NOTRUN -> SKIP
>    [547] (i915#6335 [546])
>  *=20
>    igt@gem_create@create-ext-set-pat:shard-rkl: NOTRUN -> SKIP [545]
>    (i915#8562 [544])
>  *=20
>    igt@gem_ctx_freq@sysfs@gt0:shard-dg2: PASS [543] -> FAIL [542]
>    (i915#9561 [541]) +1 other test fail
>  *=20
>    igt@gem_ctx_param@set-priority-not-supported:shard-tglu-1: NOTRUN ->
>    SKIP [540] +56 other tests skip
>  *=20
>    igt@gem_ctx_persistence@heartbeat-many:shard-dg2: NOTRUN -> SKIP [539]
>    (i915#8555 [538])
>  *=20
>    igt@gem_ctx_sseu@engines:shard-tglu-1: NOTRUN -> SKIP [537] (i915#280
>    [535])
>  *=20
>    igt@gem_ctx_sseu@mmap-args:shard-rkl: NOTRUN -> SKIP [536] (i915#280
>    [535])
>  *=20
>    igt@gem_eio@kms:shard-rkl: NOTRUN -> DMESG-WARN [534] (i915#13363 [533=
])
>  *=20
>    igt@gem_exec_balancer@hog:shard-dg2: NOTRUN -> SKIP [532] (i915#4812
>    [531])
>  *=20
>    igt@gem_exec_balancer@parallel:shard-rkl: NOTRUN -> SKIP [530]
>    (i915#4525 [182])
>  *=20
>    igt@gem_exec_balancer@parallel-keep-in-fence:shard-tglu: NOTRUN -> SKI=
P
>    [529] (i915#4525 [182]) +1 other test skip
>  *=20
>    igt@gem_exec_capture@capture-invisible@smem0:shard-tglu-1: NOTRUN ->
>    SKIP [528] (i915#6334 [527]) +1 other test skip
>  *=20
>    igt@gem_exec_reloc@basic-cpu-noreloc:shard-dg2: NOTRUN -> SKIP [526]
>    (i915#3281 [177]) +1 other test skip
>  *=20
>    igt@gem_exec_reloc@basic-gtt-wc-noreloc:shard-rkl: NOTRUN -> SKIP [525=
]
>    (i915#3281 [177]) +13 other tests skip
>  *=20
>    igt@gem_huc_copy@huc-copy:shard-tglu-1: NOTRUN -> SKIP [524] (i915#219=
0
>    [523])
>  *=20
>    igt@gem_lmem_swapping@parallel-random-verify-ccs:shard-rkl: NOTRUN ->
>    SKIP [522] (i915#4613 [172]) +3 other tests skip
>  *=20
>    igt@gem_lmem_swapping@random-engines:shard-glk: NOTRUN -> SKIP [521]
>    (i915#4613 [172]) +2 other tests skip
>  *=20
>    igt@gem_lmem_swapping@verify-random-ccs:shard-tglu-1: NOTRUN -> SKIP
>    [520] (i915#4613 [172])
>  *=20
>    igt@gem_partial_pwrite_pread@reads-uncached:shard-rkl: NOTRUN -> SKIP
>    [519] (i915#3282 [165]) +5 other tests skip
>  *=20
>    igt@gem_pxp@verify-pxp-stale-buf-execution:shard-rkl: NOTRUN -> SKIP
>    [518] (i915#4270 [517])
>  *=20
>    igt@gem_readwrite@beyond-eob:shard-dg2: NOTRUN -> SKIP [516] (i915#328=
2
>    [165]) +1 other test skip
>  *=20
>    igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:shard-dg2: NOTRUN -> SKIP
>    [515] (i915#5190 [267] / i915#8428 [514]) +2 other tests skip
>  *=20
>    igt@gem_userptr_blits@coherency-unsync:shard-rkl: NOTRUN -> SKIP [513]
>    (i915#3297 [162]) +1 other test skip
>  *=20
>    igt@gem_userptr_blits@dmabuf-unsync:shard-tglu: NOTRUN -> SKIP [512]
>    (i915#3297 [162]) +1 other test skip
>  *=20
>    igt@gen3_render_linear_blits:shard-dg2: NOTRUN -> SKIP [511]
>  *=20
>    igt@gen9_exec_parse@allowed-all:shard-glk: PASS [510] -> ABORT [509]
>    (i915#5566 [508])
>  *=20
>    igt@gen9_exec_parse@batch-without-end:shard-tglu-1: NOTRUN -> SKIP [50=
7]
>    (i915#2527 [159] / i915#2856 [504])
>  *=20
>    igt@gen9_exec_parse@bb-oversize:shard-rkl: NOTRUN -> SKIP [506]
>    (i915#2527 [159]) +4 other tests skip
>  *=20
>    igt@gen9_exec_parse@valid-registers:shard-dg2: NOTRUN -> SKIP [505]
>    (i915#2856 [504])
>  *=20
>    igt@i915_module_load@fault-injection:shard-dg2: NOTRUN -> ABORT [503]
>    (i915#15342 [499] / i915#15481 [501])
>  *=20
>    igt@i915_module_load@fault-injection@__uc_init:shard-dg2: NOTRUN ->
>    ABORT [502] (i915#15481 [501])
>  *=20
>    igt@i915_module_load@fault-injection@intel_connector_register:shard-dg=
2:
>    NOTRUN -> DMESG-WARN [500] (i915#15342 [499])
>  *=20
>    igt@i915_pm_freq_api@freq-reset:shard-tglu-1: NOTRUN -> SKIP [498]
>    (i915#8399 [496])
>  *=20
>    igt@i915_pm_freq_api@freq-reset-multiple:shard-rkl: NOTRUN -> SKIP [49=
7]
>    (i915#8399 [496])
>  *=20
>    igt@i915_pm_freq_api@freq-suspend@gt0:shard-dg2: PASS [495] ->
>    INCOMPLETE [494] (i915#13356 [484] / i915#13820 [493]) +1 other test
>    incomplete
>  *=20
>    igt@i915_pm_freq_mult@media-freq@gt0:shard-rkl: NOTRUN -> SKIP [492]
>    (i915#6590 [491]) +1 other test skip
>  *=20
>    igt@i915_pm_rpm@system-suspend:shard-rkl: PASS [487] -> INCOMPLETE [48=
6]
>    (i915#13356 [484])shard-dg1: PASS [490] -> DMESG-WARN [489] (i915#4391
>    [488] / i915#4423 [29])
>  *=20
>    igt@i915_pm_rpm@system-suspend-execbuf:shard-glk: NOTRUN -> INCOMPLETE
>    [485] (i915#13356 [484] / i915#15172 [483])
>  *=20
>    igt@i915_power@sanity:shard-mtlp: PASS [482] -> SKIP [481] (i915#7984
>    [480])
>  *=20
>    igt@i915_suspend@fence-restore-tiled2untiled:shard-glk11: NOTRUN ->
>    INCOMPLETE [479] (i915#4817 [153])
>  *=20
>    igt@i915_suspend@sysfs-reader:shard-glk: NOTRUN -> INCOMPLETE [478]
>    (i915#4817 [153])
>  *=20
>    igt@intel_hwmon@hwmon-read:shard-tglu: NOTRUN -> SKIP [477] (i915#7707
>    [476])
>  *=20
>    igt@kms_async_flips@async-flip-suspend-resume:shard-dg1: PASS [475] ->
>    DMESG-WARN [474] (i915#4423 [29]) +1 other test dmesg-warn
>  *=20
>    igt@kms_atomic@plane-primary-overlay-mutable-zpos:shard-rkl: NOTRUN ->
>    SKIP [473] (i915#9531 [472])
>  *=20
>    igt@kms_big_fb@4-tiled-8bpp-rotate-180:shard-tglu: NOTRUN -> SKIP [471=
]
>    (i915#5286 [141]) +3 other tests skip
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:shard-tglu-1=
:
>    NOTRUN -> SKIP [470] (i915#5286 [141]) +1 other test skip
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-
>    flip:shard-rkl: NOTRUN -> SKIP [469] (i915#5286 [141]) +6 other tests
>    skip
>  *=20
>    igt@kms_big_fb@linear-8bpp-rotate-270:shard-rkl: NOTRUN -> SKIP [468]
>    (i915#3638 [136]) +3 other tests skip
>  *=20
>    igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:shard-tglu-=
1:
>    NOTRUN -> SKIP [467] (i915#3828 [465])
>  *=20
>    igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:shard-rkl:
>    NOTRUN -> SKIP [466] (i915#3828 [465])
>  *=20
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:shard-
>    dg2: NOTRUN -> SKIP [464] (i915#4538 [142] / i915#5190 [267]) +2 other
>    tests skip
>  *=20
>    igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:shard=
-
>    glk: NOTRUN -> SKIP [463] +173 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:shard-rkl: NOTRUN -> SKI=
P
>    [462] (i915#12313 [131]) +1 other test skip
>  *=20
>    igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:shard=
-
>    dg2: NOTRUN -> SKIP [461] (i915#10307 [444] / i915#6095 [123]) +62 oth=
er
>    tests skip
>  *=20
>    igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:shard=
-
>    dg1: NOTRUN -> SKIP [460] (i915#6095 [123]) +139 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:shard-tglu: NOTRU=
N
>    -> SKIP [459] (i915#12313 [131])
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:shard-tglu:
>    NOTRUN -> SKIP [458] (i915#6095 [123]) +29 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:shard-dg2: NOTRUN=
 -
>    > SKIP [457] (i915#12313 [131])
>  *=20
>    igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-
>    2:shard-rkl: NOTRUN -> SKIP [456] (i915#6095 [123]) +57 other tests sk=
ip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:shard-rkl: NOTRUN ->
>    SKIP [455] (i915#12805 [454])
>  *=20
>    igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-
>    2:shard-rkl: NOTRUN -> SKIP [453] (i915#14098 [124] / i915#6095 [123])
>    +42 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:shard-dg2:
>    NOTRUN -> SKIP [452] (i915#6095 [123]) +11 other tests skip
>  *=20
>    igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:shard-rkl: PAS=
S
>    [451] -> INCOMPLETE [450] (i915#15582 [448]) +1 other test incomplete
>  *=20
>    igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:shard-tgl=
u-
>    1: NOTRUN -> SKIP [447] (i915#6095 [123]) +29 other tests skipshard-
>    glk11: NOTRUN -> INCOMPLETE [449] (i915#15582 [448]) +1 other test
>    incomplete
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:shard-tglu-1: NOTR=
UN
>    -> SKIP [446] (i915#12313 [131])
>  *=20
>    igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:shard-dg2:
>    NOTRUN -> SKIP [445] (i915#10307 [444] / i915#10434 [443] / i915#6095
>    [123]) +2 other tests skip
>  *=20
>    igt@kms_cdclk@mode-transition-all-outputs:shard-tglu: NOTRUN -> SKIP
>    [442] (i915#3742 [441])
>  *=20
>    igt@kms_chamelium_audio@dp-audio:shard-tglu: NOTRUN -> SKIP [440]
>    (i915#11151 [118] / i915#7828 [117]) +4 other tests skip
>  *=20
>    igt@kms_chamelium_frames@dp-crc-single:shard-tglu-1: NOTRUN -> SKIP
>    [439] (i915#11151 [118] / i915#7828 [117]) +3 other tests skip
>  *=20
>    igt@kms_chamelium_hpd@dp-hpd-storm-disable:shard-dg2: NOTRUN -> SKIP
>    [438] (i915#11151 [118] / i915#7828 [117]) +1 other test skip
>  *=20
>    igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:shard-rkl: NOTRUN -> SKIP
>    [437] (i915#11151 [118] / i915#7828 [117]) +9 other tests skip
>  *=20
>    igt@kms_content_protection@atomic-dpms:shard-tglu-1: NOTRUN -> SKIP
>    [436] (i915#15865 [101]) +1 other test skip
>  *=20
>    igt@kms_content_protection@dp-mst-type-0-hdcp14:shard-tglu: NOTRUN ->
>    SKIP [435] (i915#15330 [106])
>  *=20
>    igt@kms_content_protection@dp-mst-type-0-suspend-resume:shard-rkl:
>    NOTRUN -> SKIP [434] (i915#15330 [106])
>  *=20
>    igt@kms_content_protection@lic-type-0:shard-dg2: NOTRUN -> SKIP [433]
>    (i915#15865 [101])
>  *=20
>    igt@kms_content_protection@mei-interface:shard-tglu: NOTRUN -> SKIP
>    [432] (i915#15865 [101])
>  *=20
>    igt@kms_content_protection@uevent-hdcp14:shard-rkl: NOTRUN -> SKIP [43=
1]
>    (i915#15865 [101]) +2 other tests skip
>  *=20
>    igt@kms_cursor_crc@cursor-offscreen-512x170:shard-tglu: NOTRUN -> SKIP
>    [430] (i915#13049 [93])
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-128x42:shard-rkl: PASS [429] -> FAI=
L
>    [428] (i915#13566 [208])
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:shard-rkl:
>    NOTRUN -> FAIL [427] (i915#13566 [208]) +5 other tests fail
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-512x170:shard-tglu-1: NOTRUN -> SKI=
P
>    [426] (i915#13049 [93])
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-max-size:shard-rkl: NOTRUN -> SKIP
>    [425] (i915#3555 [5]) +1 other test skip
>  *=20
>    igt@kms_cursor_crc@cursor-rapid-movement-512x170:shard-rkl: NOTRUN ->
>    SKIP [424] (i915#13049 [93]) +1 other test skip
>  *=20
>    igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:shard=
-
>    rkl: NOTRUN -> SKIP [423] (i915#4103 [413]) +2 other tests skip
>  *=20
>    igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:shard-dg2: NOTRUN -> SKI=
P
>    [422] (i915#13046 [421] / i915#5354 [303])
>  *=20
>    igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:shard-dg1: PASS [420] =
->
>    FAIL [419] (i915#15999 [418])
>  *=20
>    igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:shard-dg2: NOTRUN =
->
>    SKIP [417] (i915#9067 [416])
>  *=20
>    igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions=
-
>    varying-size:shard-tglu-1: NOTRUN -> SKIP [415] (i915#4103 [413])
>  *=20
>    igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:shard-tglu:
>    NOTRUN -> SKIP [414] (i915#4103 [413])
>  *=20
>    igt@kms_dirtyfb@psr-dirtyfb-ioctl:shard-tglu-1: NOTRUN -> SKIP [412]
>    (i915#9723 [411])
>  *=20
>    igt@kms_display_modes@extended-mode-basic:shard-rkl: NOTRUN -> SKIP
>    [410] (i915#13691 [409])
>  *=20
>    igt@kms_dither@fb-8bpc-vs-panel-6bpc:shard-tglu: NOTRUN -> SKIP [408]
>    (i915#1769 [149] / i915#3555 [5] / i915#3804 [406])
>  *=20
>    igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:shard-tglu: NOTRU=
N
>    -> SKIP [407] (i915#3804 [406])
>  *=20
>    igt@kms_dp_link_training@non-uhbr-mst:shard-rkl: NOTRUN -> SKIP [405]
>    (i915#13749 [88])
>  *=20
>    igt@kms_dp_linktrain_fallback@dsc-fallback:shard-rkl: NOTRUN -> SKIP
>    [404] (i915#13707 [403])
>  *=20
>    igt@kms_dsc@dsc-basic:shard-tglu: NOTRUN -> SKIP [402] (i915#3555 [5] =
/
>    i915#3840 [399]) +1 other test skip
>  *=20
>    igt@kms_dsc@dsc-fractional-bpp-with-bpc:shard-rkl: NOTRUN -> SKIP [401=
]
>    (i915#3840 [399])
>  *=20
>    igt@kms_dsc@dsc-with-bpc:shard-rkl: NOTRUN -> SKIP [400] (i915#3555 [5=
]
>    / i915#3840 [399]) +1 other test skip
>  *=20
>    igt@kms_feature_discovery@display-4x:shard-tglu-1: NOTRUN -> SKIP [398=
]
>    (i915#1839 [397])
>  *=20
>    igt@kms_flip@2x-absolute-wf_vblank:shard-rkl: NOTRUN -> SKIP [396]
>    (i915#9934 [80]) +6 other tests skip
>  *=20
>    igt@kms_flip@2x-flip-vs-dpms-on-nop:shard-dg2: NOTRUN -> SKIP [395]
>    (i915#9934 [80]) +1 other test skip
>  *=20
>    igt@kms_flip@2x-flip-vs-panning:shard-tglu-1: NOTRUN -> SKIP [394]
>    (i915#3637 [390] / i915#9934 [80]) +2 other tests skip
>  *=20
>    igt@kms_flip@2x-flip-vs-suspend-interruptible:shard-glk: NOTRUN ->
>    INCOMPLETE [393] (i915#12314 [75] / i915#12745 [73] / i915#4839 [77])
>  *=20
>    igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:shard=
-
>    glk: NOTRUN -> INCOMPLETE [392] (i915#12314 [75] / i915#12745 [73])
>  *=20
>    igt@kms_flip@2x-modeset-vs-vblank-race:shard-tglu: NOTRUN -> SKIP [391=
]
>    (i915#3637 [390] / i915#9934 [80]) +4 other tests skip
>  *=20
>    igt@kms_flip@basic-flip-vs-wf_vblank:shard-tglu: NOTRUN -> FAIL [389]
>    (i915#10826 [383]) +1 other test fail
>  *=20
>    igt@kms_flip@flip-vs-suspend-interruptible:shard-glk10: NOTRUN ->
>    INCOMPLETE [388] (i915#12745 [73] / i915#4839 [77])
>  *=20
>    igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:shard-glk10: NOTR=
UN
>    -> INCOMPLETE [387] (i915#12745 [73])
>  *=20
>    igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:shard-rkl: PASS
>    [386] -> INCOMPLETE [385] (i915#6113 [72]) +1 other test incomplete
>  *=20
>    igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:shard-rkl: NOTRUN -> FAIL
>    [384] (i915#10826 [383])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>    downscaling:shard-tglu: NOTRUN -> SKIP [382] (i915#15643 [69])
>  *=20
>    igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-
>    downscaling:shard-rkl: NOTRUN -> SKIP [381] (i915#15643 [69]) +2 other
>    tests skip
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>    downscaling:shard-tglu-1: NOTRUN -> SKIP [380] (i915#15643 [69]) +1
>    other test skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-
>    gtt:shard-dg2: NOTRUN -> SKIP [379] (i915#15990 [40] / i915#8708 [378]=
)
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-1p-indfb-fliptrack-mmap-gtt:shard-
>    tglu-1: NOTRUN -> SKIP [377] (i915#15989 [202]) +10 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff:shard-
>    rkl: NOTRUN -> SKIP [376] (i915#15989 [202]) +20 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-
>    wc:shard-dg2: NOTRUN -> SKIP [375] (i915#15990 [40]) +5 other tests sk=
ip
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-
>    pwrite:shard-dg2: NOTRUN -> SKIP [374] (i915#15991 [366]) +9 other tes=
ts
>    skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt:shard=
-
>    tglu: NOTRUN -> SKIP [373] +50 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:shard-dg2: PASS
>    [372] -> SKIP [371] (i915#15989 [202]) +5 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:shard-rkl:
>    PASS [370] -> SKIP [369] (i915#15989 [202]) +6 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:shard-rkl: NOTRUN -> SKIP
>    [368] (i915#15102 [43] / i915#3023 [55]) +23 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-
>    render:shard-dg2: NOTRUN -> SKIP [367] (i915#15991 [366] / i915#5354
>    [303]) +6 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mma=
p-
>    cpu:shard-dg2: NOTRUN -> SKIP [365] (i915#15102 [43]) +3 other tests
>    skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-
>    render:shard-rkl: NOTRUN -> SKIP [364] +77 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-blt:shard-
>    dg2: NOTRUN -> SKIP [363] (i915#15989 [202]) +1 other test skip
>  *=20
>    igt@kms_frontbuffer_tracking@hdr-modesetfrombusy:shard-tglu: NOTRUN ->
>    SKIP [362] (i915#15989 [202]) +9 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@pipe-fbc-rte:shard-tglu: NOTRUN -> SKIP
>    [361] (i915#9766 [360])
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:shard-dg2:
>    NOTRUN -> SKIP [359] (i915#15102 [43] / i915#3458 [46]) +3 other tests
>    skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:shard-rk=
l:
>    NOTRUN -> SKIP [358] (i915#1825 [50]) +34 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-suspend:shard-tglu-1: NOTRUN -> SKIP
>    [357] (i915#15102 [43]) +22 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:shard-
>    rkl: NOTRUN -> SKIP [356] (i915#15102 [43]) +29 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psrhdr-rgb565-draw-render:shard-tglu:
>    NOTRUN -> SKIP [355] (i915#15102 [43]) +22 other tests skip
>  *=20
>    igt@kms_hdr@bpc-switch-dpms:shard-rkl: NOTRUN -> SKIP [354] (i915#1601=
2
>    [348] / i915#3555 [5] / i915#8228 [342])
>  *=20
>    igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:shard-rkl:
>    NOTRUN -> SKIP [353] (i915#16012 [348]) +1 other test skip
>  *=20
>    igt@kms_hdr@bpc-switch-suspend:shard-tglu: NOTRUN -> SKIP [352]
>    (i915#16012 [348] / i915#3555 [5] / i915#8228 [342])
>  *=20
>    igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:shard-tglu:
>    NOTRUN -> SKIP [351] (i915#16012 [348]) +1 other test skip
>  *=20
>    igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb16161616f:shard-dg2: NOTRUN=
 -
>    > SKIP [350] (i915#16012 [348]) +1 other test skip
>  *=20
>    igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f:shard-dg1: NOTRU=
N
>    -> SKIP [349] (i915#16012 [348]) +3 other tests skip
>  *=20
>    igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:shard=
-
>    dg1: NOTRUN -> SKIP [347] (i915#16011 [340]) +3 other tests skip
>  *=20
>    igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f:shard=
-
>    dg2: NOTRUN -> SKIP [346] (i915#16011 [340]) +1 other test skip
>  *=20
>    igt@kms_hdr@static-swap:shard-rkl: NOTRUN -> SKIP [345] (i915#16011
>    [340] / i915#3555 [5] / i915#8228 [342]) +1 other test skip
>  *=20
>    igt@kms_hdr@static-swap@pipe-a-hdmi-a-1-xrgb2101010:shard-rkl: NOTRUN =
->
>    SKIP [344] (i915#16011 [340]) +3 other tests skip
>  *=20
>    igt@kms_hdr@static-toggle-suspend:shard-tglu-1: NOTRUN -> SKIP [343]
>    (i915#16011 [340] / i915#3555 [5] / i915#8228 [342])
>  *=20
>    igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f:shard-
>    tglu-1: NOTRUN -> SKIP [341] (i915#16011 [340]) +1 other test skip
>  *=20
>    igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-2-xrgb2101010:shard-
>    glk11: NOTRUN -> SKIP [339] +41 other tests skip
>  *=20
>    igt@kms_joiner@basic-big-joiner:shard-tglu: NOTRUN -> SKIP [338]
>    (i915#15460 [337])
>  *=20
>    igt@kms_joiner@basic-force-big-joiner:shard-tglu: NOTRUN -> SKIP [336]
>    (i915#15459 [334])
>  *=20
>    igt@kms_joiner@invalid-modeset-force-big-joiner:shard-dg2: NOTRUN ->
>    SKIP [335] (i915#15459 [334])
>  *=20
>    igt@kms_joiner@invalid-modeset-force-ultra-joiner:shard-rkl: NOTRUN ->
>    SKIP [333] (i915#15458 [331]) +1 other test skip
>  *=20
>    igt@kms_joiner@invalid-modeset-ultra-joiner:shard-tglu-1: NOTRUN -> SK=
IP
>    [332] (i915#15458 [331])
>  *=20
>    igt@kms_panel_fitting@atomic-fastset:shard-rkl: NOTRUN -> SKIP [330]
>    (i915#6301 [328])
>  *=20
>    igt@kms_panel_fitting@legacy:shard-tglu: NOTRUN -> SKIP [329] (i915#63=
01
>    [328])
>  *=20
>    igt@kms_pipe_crc_basic@suspend-read-crc:shard-glk10: NOTRUN ->
>    INCOMPLETE [327] (i915#12756 [326] / i915#13409 [324] / i915#13476
>    [323])
>  *=20
>    igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:shard-glk10:
>    NOTRUN -> INCOMPLETE [325] (i915#13409 [324] / i915#13476 [323])
>  *=20
>    igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:shard-glk10:
>    NOTRUN -> SKIP [322] +117 other tests skip
>  *=20
>    igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:shard-tglu-1=
:
>    NOTRUN -> SKIP [321] (i915#15709 [37]) +1 other test skip
>  *=20
>    igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:shard-rkl:
>    NOTRUN -> SKIP [320] (i915#15709 [37]) +3 other tests skip
>  *=20
>    igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-
>    clamping:shard-tglu: NOTRUN -> SKIP [319] (i915#15709 [37]) +1 other
>    test skip
>  *=20
>    igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-
>    clamping:shard-dg2: NOTRUN -> SKIP [318] (i915#15709 [37])
>  *=20
>    igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-
>    5:shard-rkl: NOTRUN -> SKIP [317] (i915#15608 [315]) +1 other test ski=
p
>  *=20
>    igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:shard-tglu-=
1:
>    NOTRUN -> SKIP [316] (i915#15608 [315]) +1 other test skip
>  *=20
>    igt@kms_plane_alpha_blend@constant-alpha-max:shard-glk: NOTRUN -> FAIL
>    [314] (i915#10647 [311] / i915#12169 [313])
>  *=20
>    igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:shard-glk=
:
>    NOTRUN -> FAIL [312] (i915#10647 [311]) +1 other test fail
>  *=20
>    igt@kms_plane_lowres@tiling-yf:shard-tglu-1: NOTRUN -> SKIP [310]
>    (i915#3555 [5]) +5 other tests skip
>  *=20
>    igt@kms_plane_multiple@2x-tiling-none:shard-tglu: NOTRUN -> SKIP [309]
>    (i915#13958 [34])
>  *=20
>    igt@kms_plane_multiple@2x-tiling-y:shard-rkl: NOTRUN -> SKIP [308]
>    (i915#13958 [34]) +1 other test skip
>  *=20
>    igt@kms_plane_scaling@intel-max-src-size:shard-rkl: NOTRUN -> SKIP [30=
7]
>    (i915#6953 [306])
>  *=20
>    igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:shard-
>    rkl: NOTRUN -> SKIP [305] (i915#15329 [31]) +3 other tests skip
>  *=20
>    igt@kms_pm_backlight@bad-brightness:shard-rkl: NOTRUN -> SKIP [304]
>    (i915#5354 [303])
>  *=20
>    igt@kms_pm_backlight@fade:shard-tglu: NOTRUN -> SKIP [302] (i915#9812
>    [301])
>  *=20
>    igt@kms_pm_dc@dc3co-vpb-simulation:shard-rkl: NOTRUN -> SKIP [300]
>    (i915#15948 [298])
>  *=20
>    igt@kms_pm_dc@dc5-psr:shard-dg2: NOTRUN -> SKIP [299] (i915#15948 [298=
])
>  *=20
>    igt@kms_pm_dc@dc9-dpms:shard-tglu: NOTRUN -> SKIP [297] (i915#15739
>    [296])
>  *=20
>    igt@kms_pm_rpm@modeset-lpsp:shard-dg2: PASS [293] -> SKIP [292]
>    (i915#15073 [289]) +1 other test skipshard-rkl: PASS [295] -> SKIP [29=
4]
>    (i915#15073 [289]) +2 other tests skip
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp:shard-tglu: NOTRUN -> SKIP [291]
>    (i915#15073 [289])
>  *=20
>    igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:shard-rkl: NOTRUN -> SK=
IP
>    [290] (i915#15073 [289])
>  *=20
>    igt@kms_pm_rpm@system-suspend-idle:shard-rkl: PASS [288] -> INCOMPLETE
>    [287] (i915#14419 [286])
>  *=20
>    igt@kms_prime@basic-modeset-hybrid:shard-tglu: NOTRUN -> SKIP [285]
>    (i915#6524 [284])
>  *=20
>    igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-
>    sf:shard-glk11: NOTRUN -> SKIP [283] (i915#11520 [22]) +1 other test
>    skip
>  *=20
>    igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:shard-rkl:
>    NOTRUN -> SKIP [282] (i915#11520 [22]) +9 other tests skip
>  *=20
>    igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:shard-glk:
>    NOTRUN -> SKIP [281] (i915#11520 [22]) +3 other tests skip
>  *=20
>    igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:shard-tglu-1:
>    NOTRUN -> SKIP [280] (i915#11520 [22]) +3 other tests skip
>  *=20
>    igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:shard-glk10:
>    NOTRUN -> SKIP [279] (i915#11520 [22]) +2 other tests skip
>  *=20
>    igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:shar=
d-
>    tglu: NOTRUN -> SKIP [278] (i915#11520 [22]) +3 other tests skip
>  *=20
>    igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:shard-dg2: NOTRU=
N
>    -> SKIP [277] (i915#11520 [22]) +2 other tests skip
>  *=20
>    igt@kms_psr2_su@frontbuffer-xrgb8888:shard-rkl: NOTRUN -> SKIP [276]
>    (i915#9683 [19])
>  *=20
>    igt@kms_psr2_su@page_flip-nv12:shard-tglu: NOTRUN -> SKIP [275]
>    (i915#9683 [19])
>  *=20
>    igt@kms_psr@fbc-psr-cursor-blt:shard-dg2: NOTRUN -> SKIP [274]
>    (i915#1072 [14] / i915#9732 [13]) +1 other test skip
>  *=20
>    igt@kms_psr@psr-cursor-mmap-cpu:shard-tglu-1: NOTRUN -> SKIP [273]
>    (i915#9732 [13]) +9 other tests skip
>  *=20
>    igt@kms_psr@psr2-cursor-mmap-gtt:shard-tglu: NOTRUN -> SKIP [272]
>    (i915#9732 [13]) +9 other tests skip
>  *=20
>    igt@kms_psr@psr2-primary-mmap-gtt:shard-rkl: NOTRUN -> SKIP [271]
>    (i915#1072 [14] / i915#9732 [13]) +21 other tests skip
>  *=20
>    igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:shard-tglu-1: NOTRUN =
->
>    SKIP [270] (i915#5289 [10])
>  *=20
>    igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:shard-tglu: NOTRUN =
->
>    SKIP [269] (i915#5289 [10])
>  *=20
>    igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:shard-dg2: NOTRUN -=
>
>    SKIP [268] (i915#5190 [267])
>  *=20
>    igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:shard-rkl: NOTRUN =
->
>    SKIP [266] (i915#5289 [10]) +1 other test skip
>  *=20
>    igt@kms_tiled_display@basic-test-pattern:shard-glk10: NOTRUN -> FAIL
>    [263] (i915#10959 [262])shard-rkl: NOTRUN -> SKIP [265] (i915#8623
>    [264])
>  *=20
>    igt@kms_vblank@ts-continuation-suspend:shard-glk: NOTRUN -> INCOMPLETE
>    [261] (i915#12276 [195]) +1 other test incomplete
>  *=20
>    igt@kms_vrr@flip-basic-fastset:shard-tglu-1: NOTRUN -> SKIP [260]
>    (i915#9906 [257])
>  *=20
>    igt@kms_vrr@flip-suspend:shard-tglu: NOTRUN -> SKIP [259] (i915#3555
>    [5])
>  *=20
>    igt@kms_vrr@seamless-rr-switch-vrr:shard-rkl: NOTRUN -> SKIP [258]
>    (i915#9906 [257]) +1 other test skip
>  *=20
>    igt@perf@gen8-unprivileged-single-ctx-counters:shard-dg2: NOTRUN -> SK=
IP
>    [256] (i915#2436 [255])
>  *=20
>    igt@perf@unprivileged-single-ctx-counters:shard-rkl: NOTRUN -> SKIP
>    [254] (i915#2433 [253])
>  *=20
>    igt@perf_pmu@busy-double-start:shard-mtlp: PASS [252] -> FAIL [251]
>    (i915#4349 [249]) +2 other tests fail
>  *=20
>    igt@perf_pmu@busy-double-start@vecs1:shard-dg2: NOTRUN -> FAIL [250]
>    (i915#4349 [249]) +4 other tests fail
>  *=20
>    igt@perf_pmu@rc6-all-gts:shard-tglu-1: NOTRUN -> SKIP [248] (i915#8516
>    [247])
>  *=20
>    igt@prime_vgem@basic-fence-mmap:shard-dg2: NOTRUN -> SKIP [246]
>    (i915#3708 [241] / i915#4077 [27])
>  *=20
>    igt@prime_vgem@basic-fence-read:shard-rkl: NOTRUN -> SKIP [245]
>    (i915#3291 [243] / i915#3708 [241])
>  *=20
>    igt@prime_vgem@basic-write:shard-dg2: NOTRUN -> SKIP [244] (i915#3291
>    [243] / i915#3708 [241])
>  *=20
>    igt@prime_vgem@fence-flip-hang:shard-rkl: NOTRUN -> SKIP [242]
>    (i915#3708 [241])
>  *=20
>    igt@sriov_basic@enable-vfs-autoprobe-off:shard-rkl: NOTRUN -> SKIP [24=
0]
>    (i915#9917 [239])
> Possible fixes *=20
>    igt@i915_module_load@load:shard-dg1: (PASS [234], PASS [232], PASS
>    [231], PASS [236], PASS [237], DMESG-WARN [235], PASS [238], PASS [233=
],
>    PASS [238], PASS [236], PASS [234], PASS [231], PASS [235], PASS [232]=
,
>    PASS [233], PASS [238], PASS [237], PASS [236], PASS [235], PASS [232]=
,
>    PASS [231], PASS [234], PASS [233], PASS [232], PASS [231]) (i915#4423
>    [29]) -> (PASS [225], PASS [223], PASS [229], PASS [230], PASS [230],
>    PASS [229], PASS [223], PASS [228], PASS [223], PASS [229], PASS [225]=
,
>    PASS [230], PASS [226], PASS [229], PASS [227], PASS [224], PASS [226]=
,
>    PASS [228], PASS [228], PASS [227], PASS [226], PASS [225], PASS [224]=
,
>    PASS [224], PASS [223])
>  *=20
>    igt@i915_suspend@sysfs-reader:shard-dg2: ABORT [222] (i915#15140 [221]=
)
>    -> PASS [220]
>  *=20
>    igt@kms_atomic_transition@plane-all-modeset-transition-fencing-interna=
l-
>    panels:shard-mtlp: FAIL [219] (i915#5956 [218]) -> PASS [217] +1 other
>    test pass
>  *=20
>    igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-
>    1:shard-tglu: FAIL [216] (i915#15662 [215]) -> PASS [214] +1 other tes=
t
>    pass
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:shard-mtlp:
>    FAIL [213] (i915#15733 [212] / i915#5138 [211]) -> PASS [210]
>  *=20
>    igt@kms_cursor_crc@cursor-sliding-64x21:shard-rkl: FAIL [209]
>    (i915#13566 [208]) -> PASS [207]
>  *=20
>    igt@kms_frontbuffer_tracking@fbc-suspend:shard-rkl: INCOMPLETE [206]
>    (i915#10056 [205]) -> PASS [204]
>  *=20
>    igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:shard-
>    rkl: SKIP [203] (i915#15989 [202]) -> PASS [201] +9 other tests pass
>  *=20
>    igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb-msflip-blt:shard-gl=
k:
>    SKIP [200] -> PASS [199] +2 other tests pass
>  *=20
>    igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping:shard-dg1:
>    DMESG-WARN [198] (i915#4423 [29]) -> PASS [197] +2 other tests pass
>  *=20
>    igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:shard-rkl:
>    INCOMPLETE [196] (i915#12276 [195]) -> PASS [194] +1 other test pass
>  *=20
>    igt@kms_vrr@negative-basic:shard-mtlp: FAIL [193] (i915#15420 [192]) -=
>
>    PASS [191] +1 other test pass
> Warnings *=20
>    igt@gem_ccs@block-multicopy-compressed:shard-rkl: SKIP [190] (i915#932=
3
>    [188]) -> SKIP [189] (i915#14544 [7] / i915#9323 [188])
>  *=20
>    igt@gem_close_race@multigpu-basic-threads:shard-rkl: SKIP [187]
>    (i915#7697 [185]) -> SKIP [186] (i915#14544 [7] / i915#7697 [185])
>  *=20
>    igt@gem_exec_balancer@parallel-keep-submit-fence:shard-rkl: SKIP [184]
>    (i915#14544 [7] / i915#4525 [182]) -> SKIP [183] (i915#4525 [182])
>  *=20
>    igt@gem_exec_reloc@basic-cpu-gtt-noreloc:shard-rkl: SKIP [181]
>    (i915#3281 [177]) -> SKIP [180] (i915#14544 [7] / i915#3281 [177]) +2
>    other tests skip
>  *=20
>    igt@gem_exec_reloc@basic-wc:shard-rkl: SKIP [179] (i915#14544 [7] /
>    i915#3281 [177]) -> SKIP [178] (i915#3281 [177]) +1 other test skip
>  *=20
>    igt@gem_lmem_swapping@verify:shard-rkl: SKIP [176] (i915#14544 [7] /
>    i915#4613 [172]) -> SKIP [175] (i915#4613 [172]) +1 other test skip
>  *=20
>    igt@gem_lmem_swapping@verify-random-ccs:shard-rkl: SKIP [174] (i915#46=
13
>    [172]) -> SKIP [173] (i915#14544 [7] / i915#4613 [172])
>  *=20
>    igt@gem_readwrite@write-bad-handle:shard-rkl: SKIP [171] (i915#14544 [=
7]
>    / i915#3282 [165]) -> SKIP [170] (i915#3282 [165]) +1 other test skip
>  *=20
>    igt@gem_userptr_blits@dmabuf-unsync:shard-rkl: SKIP [169] (i915#3297
>    [162]) -> SKIP [168] (i915#14544 [7] / i915#3297 [162]) +1 other test
>    skip
>  *=20
>    igt@gem_userptr_blits@forbidden-operations:shard-rkl: SKIP [167]
>    (i915#14544 [7] / i915#3282 [165] / i915#3297 [162]) -> SKIP [166]
>    (i915#3282 [165] / i915#3297 [162])
>  *=20
>    igt@gem_userptr_blits@readonly-pwrite-unsync:shard-rkl: SKIP [164]
>    (i915#14544 [7] / i915#3297 [162]) -> SKIP [163] (i915#3297 [162]) +1
>    other test skip
>  *=20
>    igt@gen9_exec_parse@bb-start-param:shard-rkl: SKIP [161] (i915#14544 [=
7]
>    / i915#2527 [159]) -> SKIP [160] (i915#2527 [159])
>  *=20
>    igt@i915_query@hwconfig_table:shard-rkl: SKIP [158] (i915#6245 [156]) =
->
>    SKIP [157] (i915#14544 [7] / i915#6245 [156])
>  *=20
>    igt@i915_suspend@basic-s3-without-i915:shard-tglu: INCOMPLETE [155]
>    (i915#4817 [153]) -> INCOMPLETE [154] (i915#4817 [153] / i915#7443
>    [152])
>  *=20
>    igt@kms_atomic_transition@plane-all-modeset-transition-internal-
>    panels:shard-rkl: SKIP [151] (i915#14544 [7] / i915#1769 [149] /
>    i915#3555 [5]) -> SKIP [150] (i915#1769 [149] / i915#3555 [5])
>  *=20
>    igt@kms_big_fb@4-tiled-16bpp-rotate-0:shard-rkl: SKIP [148] (i915#5286
>    [141]) -> SKIP [147] (i915#14544 [7] / i915#5286 [141])
>  *=20
>    igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:shard-rkl: SKIP [146=
]
>    (i915#14544 [7] / i915#5286 [141]) -> SKIP [145] (i915#5286 [141])
>  *=20
>    igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:shard=
-
>    dg1: SKIP [144] (i915#4423 [29] / i915#4538 [142] / i915#5286 [141]) -=
>
>    SKIP [143] (i915#4538 [142] / i915#5286 [141])
>  *=20
>    igt@kms_big_fb@linear-16bpp-rotate-90:shard-rkl: SKIP [140] (i915#1454=
4
>    [7] / i915#3638 [136]) -> SKIP [139] (i915#3638 [136]) +1 other test
>    skip
>  *=20
>    igt@kms_big_fb@x-tiled-16bpp-rotate-90:shard-rkl: SKIP [138] (i915#363=
8
>    [136]) -> SKIP [137] (i915#14544 [7] / i915#3638 [136])
>  *=20
>    igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:shard-rkl: SKIP [135]
>    (i915#12313 [131] / i915#14544 [7]) -> SKIP [134] (i915#12313 [131])
>  *=20
>    igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:shard-rkl: SKIP [133]
>    (i915#12313 [131]) -> SKIP [132] (i915#12313 [131] / i915#14544 [7])
>  *=20
>    igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-
>    2:shard-rkl: SKIP [130] (i915#6095 [123]) -> SKIP [129] (i915#14544 [7=
]
>    / i915#6095 [123]) +14 other tests skip
>  *=20
>    igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:shard-rkl: SKIP [128=
]
>    (i915#14098 [124] / i915#14544 [7] / i915#6095 [123]) -> SKIP [127]
>    (i915#14098 [124] / i915#6095 [123]) +3 other tests skip
>  *=20
>    igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:shard-
>    rkl: SKIP [126] (i915#14098 [124] / i915#6095 [123]) -> SKIP [125]
>    (i915#14098 [124] / i915#14544 [7] / i915#6095 [123]) +15 other tests
>    skip
>  *=20
>    igt@kms_chamelium_frames@hdmi-frame-dump:shard-rkl: SKIP [122]
>    (i915#11151 [118] / i915#14544 [7] / i915#7828 [117]) -> SKIP [121]
>    (i915#11151 [118] / i915#7828 [117]) +2 other tests skip
>  *=20
>    igt@kms_chamelium_hpd@vga-hpd-fast:shard-rkl: SKIP [120] (i915#11151
>    [118] / i915#7828 [117]) -> SKIP [119] (i915#11151 [118] / i915#14544
>    [7] / i915#7828 [117])
>  *=20
>    igt@kms_content_protection@atomic-dpms:shard-dg2: FAIL [116] (i915#717=
3
>    [115]) -> SKIP [114] (i915#15865 [101])
>  *=20
>    igt@kms_content_protection@dp-mst-type-0-hdcp14:shard-rkl: SKIP [113]
>    (i915#15330 [106]) -> SKIP [112] (i915#14544 [7] / i915#15330 [106])
>  *=20
>    igt@kms_content_protection@dp-mst-type-1:shard-rkl: SKIP [111]
>    (i915#15330 [106] / i915#3116 [109]) -> SKIP [110] (i915#14544 [7] /
>    i915#15330 [106] / i915#3116 [109])
>  *=20
>    igt@kms_content_protection@dp-mst-type-1-suspend-resume:shard-rkl: SKI=
P
>    [108] (i915#14544 [7] / i915#15330 [106]) -> SKIP [107] (i915#15330
>    [106])
>  *=20
>    igt@kms_content_protection@suspend-resume:shard-rkl: SKIP [105]
>    (i915#14544 [7] / i915#15865 [101]) -> SKIP [104] (i915#15865 [101])
>  *=20
>    igt@kms_content_protection@uevent:shard-rkl: SKIP [103] (i915#15865
>    [101]) -> SKIP [102] (i915#14544 [7] / i915#15865 [101])
>  *=20
>    igt@kms_cursor_crc@cursor-onscreen-512x170:shard-dg2: SKIP [100]
>    (i915#13049 [93] / i915#3359 [99]) -> SKIP [98] (i915#13049 [93])
>  *=20
>    igt@kms_cursor_crc@cursor-random-32x10:shard-dg1: SKIP [97] (i915#3555
>    [5] / i915#4423 [29]) -> SKIP [96] (i915#3555 [5])
>  *=20
>    igt@kms_cursor_crc@cursor-random-512x170:shard-rkl: SKIP [95]
>    (i915#13049 [93] / i915#14544 [7]) -> SKIP [94] (i915#13049 [93]) +1
>    other test skip
>  *=20
>    igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:shard-rkl: SKIP [92]
>    (i915#14544 [7]) -> SKIP [91] +19 other tests skip
>  *=20
>    igt@kms_dp_link_training@non-uhbr-sst:shard-rkl: SKIP [90] (i915#13749
>    [88] / i915#14544 [7]) -> SKIP [89] (i915#13749 [88])
>  *=20
>    igt@kms_feature_discovery@dp-mst:shard-rkl: SKIP [87] (i915#14544 [7] =
/
>    i915#9337 [85]) -> SKIP [86] (i915#9337 [85])
>  *=20
>    igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:shard-rkl: SKIP [84]
>    (i915#9934 [80]) -> SKIP [83] (i915#14544 [7] / i915#9934 [80]) +1 oth=
er
>    test skip
>  *=20
>    igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:shard-rkl: SKIP
>    [82] (i915#14544 [7] / i915#9934 [80]) -> SKIP [81] (i915#9934 [80]) +=
3
>    other tests skip
>  *=20
>    igt@kms_flip@flip-vs-suspend:shard-glk: INCOMPLETE [79] (i915#12314 [7=
5]
>    / i915#12745 [73] / i915#4839 [77] / i915#6113 [72]) -> INCOMPLETE [78=
]
>    (i915#12745 [73] / i915#4839 [77] / i915#6113 [72])
>  *=20
>    igt@kms_flip@flip-vs-suspend@a-hdmi-a1:shard-glk: INCOMPLETE [76]
>    (i915#12314 [75] / i915#12745 [73] / i915#6113 [72]) -> INCOMPLETE [74=
]
>    (i915#12745 [73] / i915#6113 [72])
>  *=20
>    igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:shar=
d-
>    rkl: SKIP [71] (i915#14544 [7] / i915#15643 [69]) -> SKIP [70]
>    (i915#15643 [69]) +1 other test skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbchdr-tiling-4:shard-rkl: SKIP [68]
>    (i915#14544 [7] / i915#5439 [66]) -> SKIP [67] (i915#5439 [66])
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:shard=
-
>    rkl: SKIP [65] (i915#1825 [50]) -> SKIP [64] (i915#14544 [7] / i915#18=
25
>    [50]) +5 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:shard-rkl:
>    SKIP [63] (i915#15102 [43] / i915#3023 [55]) -> SKIP [62] (i915#14544
>    [7] / i915#15102 [43] / i915#3023 [55]) +7 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-spr-indfb-move:shar=
d-
>    rkl: SKIP [61] -> SKIP [60] (i915#14544 [7]) +13 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-
>    gtt:shard-rkl: SKIP [59] (i915#14544 [7] / i915#15102 [43]) -> SKIP [5=
8]
>    (i915#15102 [43]) +9 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:shard-rkl:
>    SKIP [57] (i915#14544 [7] / i915#15102 [43] / i915#3023 [55]) -> SKIP
>    [56] (i915#15102 [43] / i915#3023 [55]) +3 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:shard-dg=
2:
>    SKIP [54] (i915#10433 [47] / i915#15102 [43] / i915#3458 [46]) -> SKIP
>    [53] (i915#15102 [43] / i915#3458 [46]) +1 other test skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-
>    render:shard-rkl: SKIP [52] (i915#14544 [7] / i915#1825 [50]) -> SKIP
>    [51] (i915#1825 [50]) +8 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:shard-dg2: SKIP
>    [49] (i915#15102 [43] / i915#3458 [46]) -> SKIP [48] (i915#10433 [47] =
/
>    i915#15102 [43] / i915#3458 [46]) +3 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt:shard=
-
>    rkl: SKIP [45] (i915#15102 [43]) -> SKIP [44] (i915#14544 [7] /
>    i915#15102 [43]) +9 other tests skip
>  *=20
>    igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-spr-indfb-draw-mmap-
>    gtt:shard-dg1: SKIP [42] (i915#15990 [40] / i915#4423 [29]) -> SKIP [4=
1]
>    (i915#15990 [40])
>  *=20
>    igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-
>    clamping:shard-rkl: SKIP [39] (i915#14544 [7] / i915#15709 [37]) -> SK=
IP
>    [38] (i915#15709 [37]) +1 other test skip
>  *=20
>    igt@kms_plane_multiple@2x-tiling-none:shard-rkl: SKIP [36] (i915#13958
>    [34]) -> SKIP [35] (i915#13958 [34] / i915#14544 [7])
>  *=20
>    igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-
>    c:shard-rkl: SKIP [33] (i915#14544 [7] / i915#15329 [31]) -> SKIP [32]
>    (i915#15329 [31]) +3 other tests skip
>  *=20
>    igt@kms_pm_rpm@cursor:shard-dg1: SKIP [30] (i915#4077 [27] / i915#4423
>    [29]) -> SKIP [28] (i915#4077 [27])
>  *=20
>    igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:shard-rkl:
>    SKIP [26] (i915#11520 [22]) -> SKIP [25] (i915#11520 [22] / i915#14544
>    [7]) +2 other tests skip
>  *=20
>    igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:shard-rkl:
>    SKIP [24] (i915#11520 [22] / i915#14544 [7]) -> SKIP [23] (i915#11520
>    [22]) +1 other test skip
>  *=20
>    igt@kms_psr2_su@page_flip-nv12:shard-rkl: SKIP [21] (i915#9683 [19]) -=
>
>    SKIP [20] (i915#14544 [7] / i915#9683 [19]) +1 other test skip
>  *=20
>    igt@kms_psr@fbc-pr-sprite-plane-onoff:shard-rkl: SKIP [18] (i915#1072
>    [14] / i915#14544 [7] / i915#9732 [13]) -> SKIP [17] (i915#1072 [14] /
>    i915#9732 [13]) +5 other tests skip
>  *=20
>    igt@kms_psr@fbc-psr-primary-render:shard-rkl: SKIP [16] (i915#1072 [14=
]
>    / i915#9732 [13]) -> SKIP [15] (i915#1072 [14] / i915#14544 [7] /
>    i915#9732 [13]) +3 other tests skip
>  *=20
>    igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:shard-rkl: SKIP [1=
2]
>    (i915#14544 [7] / i915#5289 [10]) -> SKIP [11] (i915#5289 [10])
>  *=20
>    igt@kms_vrr@flip-suspend:shard-rkl: SKIP [9] (i915#15243 [6] / i915#35=
55
>    [5]) -> SKIP [8] (i915#14544 [7] / i915#15243 [6] / i915#3555 [5])
>  *=20
>    igt@perf_pmu@module-unload:shard-mtlp: ABORT [4] (i915#15778 [3]) ->
>    INCOMPLETE [2] (i915#13520 [1])
> {name}: This element is suppressed. This means it is ignored when
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> Build changes * Linux: CI_DRM_18440 -> Patchwork_166126v1
> CI-20190529: 20190529
> CI_DRM_18440: b023767ff66180ad432701eb5ba4ccf8f70de46d @
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8899: 3e5747e536f148bf232049e49a00e2b683f91a83 @
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_166126v1: b023767ff66180ad432701eb5ba4ccf8f70de46d @
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit


[1] i915#13520
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
[2] INCOMPLETE
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtlp-=
5/igt@perf_pmu@module-unload.html
[3] i915#15778
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
[4] ABORT
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-mtlp-8/igt@=
perf_pmu@module-unload.html
[5] i915#3555 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
[6] i915#15243
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
[7] i915#14544
    https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
[8] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6=
/igt@kms_vrr@flip-suspend.html
[9] SKIP
    https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt@k=
ms_vrr@flip-suspend.html
[10] i915#5289 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
[11] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
[12] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
[13] i915#9732 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
[14] i915#1072 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
[15] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_psr@fbc-psr-primary-render.html
[16] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt@=
kms_psr@fbc-psr-primary-render.html
[17] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
[18] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_psr@fbc-pr-sprite-plane-onoff.html
[19] i915#9683 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
[20] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_psr2_su@page_flip-nv12.html
[21] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt@=
kms_psr2_su@page_flip-nv12.html
[22] i915#11520
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
[23] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
[24] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
[25] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
[26] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt@=
kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
[27] i915#4077 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
[28] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-=
12/igt@kms_pm_rpm@cursor.html
[29] i915#4423 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
[30] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-19/igt=
@kms_pm_rpm@cursor.html
[31] i915#15329
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
[32] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
[33] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
[34] i915#13958
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
[35] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_plane_multiple@2x-tiling-none.html
[36] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt@=
kms_plane_multiple@2x-tiling-none.html
[37] i915#15709
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
[38] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.ht=
ml
[39] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
[40] i915#15990
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
[41] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-=
19/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-spr-indfb-draw-mmap-gtt.=
html
[42] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-18/igt=
@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
[43] i915#15102
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
[44] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html
[45] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt@=
kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html
[46] i915#3458 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
[47] i915#10433
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
[48] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2-=
4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
[49] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-1/igt@=
kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
[50] i915#1825 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
[51] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
[52] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
[53] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2-=
6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
[54] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-4/igt@=
kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
[55] i915#3023 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
[56] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
[57] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
[58] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.htm=
l
[59] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
[60] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-spr-indfb-move.html
[61] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt@=
kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-spr-indfb-move.html
[62] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
[63] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt@=
kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
[64] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
[65] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt@=
kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
[66] i915#5439 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
[67] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html
[68] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_frontbuffer_tracking@fbchdr-tiling-4.html
[69] i915#15643
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
[70] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
[71] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
[72] i915#6113 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
[73] i915#12745
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
[74] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk2=
/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
[75] i915#12314
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
[76] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-glk5/igt@k=
ms_flip@flip-vs-suspend@a-hdmi-a1.html
[77] i915#4839 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
[78] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk2=
/igt@kms_flip@flip-vs-suspend.html
[79] INCOMPLETE
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-glk5/igt@k=
ms_flip@flip-vs-suspend.html
[80] i915#9934 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
[81] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
[82] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_flip@2x-modeset-vs-vblank-race-interruptible.html
[83] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
[84] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt@=
kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
[85] i915#9337 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
[86] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_feature_discovery@dp-mst.html
[87] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_feature_discovery@dp-mst.html
[88] i915#13749
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
[89] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_dp_link_training@non-uhbr-sst.html
[90] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_dp_link_training@non-uhbr-sst.html
[91] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
[92] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_cursor_legacy@cursorb-vs-flipa-legacy.html
[93] i915#13049
     https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
[94] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_cursor_crc@cursor-random-512x170.html
[95] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt@=
kms_cursor_crc@cursor-random-512x170.html
[96] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-=
12/igt@kms_cursor_crc@cursor-random-32x10.html
[97] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-16/igt=
@kms_cursor_crc@cursor-random-32x10.html
[98] SKIP
     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2-=
6/igt@kms_cursor_crc@cursor-onscreen-512x170.html
[99] i915#3359 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
[100] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-10/ig=
t@kms_cursor_crc@cursor-onscreen-512x170.html
[101] i915#15865
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
[102] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_content_protection@uevent.html
[103] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@kms_content_protection@uevent.html
[104] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_content_protection@suspend-resume.html
[105] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_content_protection@suspend-resume.html
[106] i915#15330
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
[107] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
[108] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_content_protection@dp-mst-type-1-suspend-resume.html
[109] i915#3116
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
[110] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_content_protection@dp-mst-type-1.html
[111] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@kms_content_protection@dp-mst-type-1.html
[112] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
[113] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@kms_content_protection@dp-mst-type-0-hdcp14.html
[114] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-6/igt@kms_content_protection@atomic-dpms.html
[115] i915#7173
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
[116] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-10/ig=
t@kms_content_protection@atomic-dpms.html
[117] i915#7828
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
[118] i915#11151
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
[119] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
[120] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@kms_chamelium_hpd@vga-hpd-fast.html
[121] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_chamelium_frames@hdmi-frame-dump.html
[122] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_chamelium_frames@hdmi-frame-dump.html
[123] i915#6095
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
[124] i915#14098
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
[125] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
[126] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
[127] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
[128] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
[129] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.h=
tml
[130] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
[131] i915#12313
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
[132] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
[133] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
[134] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
[135] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
[136] i915#3638
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
[137] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
[138] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@kms_big_fb@x-tiled-16bpp-rotate-90.html
[139] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_big_fb@linear-16bpp-rotate-90.html
[140] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_big_fb@linear-16bpp-rotate-90.html
[141] i915#5286
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
[142] i915#4538
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
[143] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
[144] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-13/ig=
t@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
[145] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
[146] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
[147] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
[148] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@kms_big_fb@4-tiled-16bpp-rotate-0.html
[149] i915#1769
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
[150] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.h=
tml
[151] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
[152] i915#7443
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
[153] i915#4817
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
[154] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-10/igt@i915_suspend@basic-s3-without-i915.html
[155] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-tglu-10/i=
gt@i915_suspend@basic-s3-without-i915.html
[156] i915#6245
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
[157] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@i915_query@hwconfig_table.html
[158] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@i915_query@hwconfig_table.html
[159] i915#2527
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
[160] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gen9_exec_parse@bb-start-param.html
[161] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@gen9_exec_parse@bb-start-param.html
[162] i915#3297
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
[163] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_userptr_blits@readonly-pwrite-unsync.html
[164] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@gem_userptr_blits@readonly-pwrite-unsync.html
[165] i915#3282
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
[166] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_userptr_blits@forbidden-operations.html
[167] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@gem_userptr_blits@forbidden-operations.html
[168] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@gem_userptr_blits@dmabuf-unsync.html
[169] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@gem_userptr_blits@dmabuf-unsync.html
[170] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_readwrite@write-bad-handle.html
[171] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@gem_readwrite@write-bad-handle.html
[172] i915#4613
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
[173] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@gem_lmem_swapping@verify-random-ccs.html
[174] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@gem_lmem_swapping@verify-random-ccs.html
[175] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_lmem_swapping@verify.html
[176] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@gem_lmem_swapping@verify.html
[177] i915#3281
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
[178] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_exec_reloc@basic-wc.html
[179] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@gem_exec_reloc@basic-wc.html
[180] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
[181] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@gem_exec_reloc@basic-cpu-gtt-noreloc.html
[182] i915#4525
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
[183] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
[184] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@gem_exec_balancer@parallel-keep-submit-fence.html
[185] i915#7697
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
[186] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@gem_close_race@multigpu-basic-threads.html
[187] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@gem_close_race@multigpu-basic-threads.html
[188] i915#9323
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
[189] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@gem_ccs@block-multicopy-compressed.html
[190] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@gem_ccs@block-multicopy-compressed.html
[191] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtl=
p-8/igt@kms_vrr@negative-basic.html
[192] i915#15420
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
[193] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-mtlp-8/ig=
t@kms_vrr@negative-basic.html
[194] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
[195] i915#12276
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
[196] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html
[197] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-19/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html
[198] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-18/ig=
t@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html
[199] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
8/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb-msflip-blt.html
[200] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-glk6/igt@=
kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb-msflip-blt.html
[201] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html
[202] i915#15989
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
[203] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html
[204] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_frontbuffer_tracking@fbc-suspend.html
[205] i915#10056
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
[206] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_frontbuffer_tracking@fbc-suspend.html
[207] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-1/igt@kms_cursor_crc@cursor-sliding-64x21.html
[208] i915#13566
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
[209] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-8/igt=
@kms_cursor_crc@cursor-sliding-64x21.html
[210] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtl=
p-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
[211] i915#5138
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
[212] i915#15733
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
[213] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-mtlp-4/ig=
t@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
[214] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.=
html
[215] i915#15662
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662
[216] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-tglu-4/ig=
t@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html
[217] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtl=
p-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal=
-panels.html
[218] i915#5956
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
[219] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-mtlp-4/ig=
t@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panel=
s.html
[220] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@i915_suspend@sysfs-reader.html
[221] i915#15140
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
[222] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-10/ig=
t@i915_suspend@sysfs-reader.html
[223] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-19/igt@i915_module_load@load.html
[224] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-14/igt@i915_module_load@load.html
[225] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-15/igt@i915_module_load@load.html
[226] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-16/igt@i915_module_load@load.html
[227] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-18/igt@i915_module_load@load.html
[228] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-13/igt@i915_module_load@load.html
[229] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-12/igt@i915_module_load@load.html
[230] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-17/igt@i915_module_load@load.html
[231] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-18/ig=
t@i915_module_load@load.html
[232] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-19/ig=
t@i915_module_load@load.html
[233] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-15/ig=
t@i915_module_load@load.html
[234] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-13/ig=
t@i915_module_load@load.html
[235] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-16/ig=
t@i915_module_load@load.html
[236] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-14/ig=
t@i915_module_load@load.html
[237] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-17/ig=
t@i915_module_load@load.html
[238] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-12/ig=
t@i915_module_load@load.html
[239] i915#9917
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
[240] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@sriov_basic@enable-vfs-autoprobe-off.html
[241] i915#3708
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
[242] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@prime_vgem@fence-flip-hang.html
[243] i915#3291
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
[244] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@prime_vgem@basic-write.html
[245] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@prime_vgem@basic-fence-read.html
[246] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@prime_vgem@basic-fence-mmap.html
[247] i915#8516
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
[248] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@perf_pmu@rc6-all-gts.html
[249] i915#4349
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
[250] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@perf_pmu@busy-double-start@vecs1.html
[251] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtl=
p-4/igt@perf_pmu@busy-double-start.html
[252] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-mtlp-1/ig=
t@perf_pmu@busy-double-start.html
[253] i915#2433
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
[254] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@perf@unprivileged-single-ctx-counters.html
[255] i915#2436
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
[256] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
[257] i915#9906
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
[258] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_vrr@seamless-rr-switch-vrr.html
[259] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_vrr@flip-suspend.html
[260] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_vrr@flip-basic-fastset.html
[261] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
9/igt@kms_vblank@ts-continuation-suspend.html
[262] i915#10959
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
[263] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
10/igt@kms_tiled_display@basic-test-pattern.html
[264] i915#8623
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
[265] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_tiled_display@basic-test-pattern.html
[266] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
[267] i915#5190
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
[268] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html
[269] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
[270] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
[271] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_psr@psr2-primary-mmap-gtt.html
[272] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_psr@psr2-cursor-mmap-gtt.html
[273] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_psr@psr-cursor-mmap-cpu.html
[274] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_psr@fbc-psr-cursor-blt.html
[275] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_psr2_su@page_flip-nv12.html
[276] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
[277] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
[278] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
[279] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
10/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
[280] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
[281] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
2/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
[282] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
[283] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
11/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.htm=
l
[284] i915#6524
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
[285] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_prime@basic-modeset-hybrid.html
[286] i915#14419
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
[287] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_pm_rpm@system-suspend-idle.html
[288] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@kms_pm_rpm@system-suspend-idle.html
[289] i915#15073
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
[290] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
[291] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_pm_rpm@modeset-non-lpsp.html
[292] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-6/igt@kms_pm_rpm@modeset-lpsp.html
[293] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-4/igt=
@kms_pm_rpm@modeset-lpsp.html
[294] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_pm_rpm@modeset-lpsp.html
[295] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-5/igt=
@kms_pm_rpm@modeset-lpsp.html
[296] i915#15739
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
[297] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_pm_dc@dc9-dpms.html
[298] i915#15948
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
[299] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_pm_dc@dc5-psr.html
[300] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_pm_dc@dc3co-vpb-simulation.html
[301] i915#9812
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
[302] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_pm_backlight@fade.html
[303] i915#5354
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
[304] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_pm_backlight@bad-brightness.html
[305] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
[306] i915#6953
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
[307] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_plane_scaling@intel-max-src-size.html
[308] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_plane_multiple@2x-tiling-y.html
[309] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_plane_multiple@2x-tiling-none.html
[310] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_plane_lowres@tiling-yf.html
[311] i915#10647
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
[312] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
6/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
[313] i915#12169
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
[314] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
6/igt@kms_plane_alpha_blend@constant-alpha-max.html
[315] i915#15608
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
[316] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html
[317] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5.=
html
[318] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamp=
ing.html
[319] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clampin=
g.html
[320] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
[321] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
[322] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html
[323] i915#13476
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
[324] i915#13409
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
[325] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
10/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
[326] i915#12756
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
[327] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
10/igt@kms_pipe_crc_basic@suspend-read-crc.html
[328] i915#6301
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
[329] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_panel_fitting@legacy.html
[330] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_panel_fitting@atomic-fastset.html
[331] i915#15458
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
[332] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html
[333] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
[334] i915#15459
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
[335] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html
[336] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_joiner@basic-force-big-joiner.html
[337] i915#15460
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
[338] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_joiner@basic-big-joiner.html
[339] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
11/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-2-xrgb2101010.html
[340] i915#16011
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
[341] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f.html
[342] i915#8228
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
[343] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_hdr@static-toggle-suspend.html
[344] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_hdr@static-swap@pipe-a-hdmi-a-1-xrgb2101010.html
[345] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_hdr@static-swap.html
[346] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-7/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f.html
[347] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-14/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f.html
[348] i915#16012
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
[349] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-12/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f.html
[350] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-4/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb16161616f.html
[351] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010.html
[352] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_hdr@bpc-switch-suspend.html
[353] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html
[354] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_hdr@bpc-switch-dpms.html
[355] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_frontbuffer_tracking@psrhdr-rgb565-draw-render.html
[356] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html
[357] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_frontbuffer_tracking@psr-suspend.html
[358] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
[359] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
[360] i915#9766
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
[361] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
[362] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_frontbuffer_tracking@hdr-modesetfrombusy.html
[363] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-blt.html
[364] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render=
.html
[365] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-=
cpu.html
[366] i915#15991
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
[367] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.ht=
ml
[368] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
[369] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
[370] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
[371] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html
[372] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-10/ig=
t@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html
[373] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt.html
[374] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.ht=
ml
[375] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.h=
tml
[376] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff.html
[377] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_frontbuffer_tracking@fbchdr-1p-indfb-fliptrack-mmap-gtt.html
[378] i915#8708
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
[379] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.htm=
l
[380] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.h=
tml
[381] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.h=
tml
[382] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downsca=
ling.html
[383] i915#10826
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
[384] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html
[385] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
[386] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-3/igt=
@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
[387] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
10/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
[388] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
10/igt@kms_flip@flip-vs-suspend-interruptible.html
[389] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_flip@basic-flip-vs-wf_vblank.html
[390] i915#3637
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
[391] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_flip@2x-modeset-vs-vblank-race.html
[392] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html
[393] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
[394] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_flip@2x-flip-vs-panning.html
[395] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
[396] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_flip@2x-absolute-wf_vblank.html
[397] i915#1839
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
[398] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_feature_discovery@display-4x.html
[399] i915#3840
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
[400] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_dsc@dsc-with-bpc.html
[401] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
[402] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_dsc@dsc-basic.html
[403] i915#13707
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
[404] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
[405] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_dp_link_training@non-uhbr-mst.html
[406] i915#3804
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
[407] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
[408] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
[409] i915#13691
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
[410] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_display_modes@extended-mode-basic.html
[411] i915#9723
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
[412] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
[413] i915#4103
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
[414] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
[415] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-=
varying-size.html
[416] i915#9067
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
[417] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
[418] i915#15999
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15999
[419] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-14/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
[420] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-13/ig=
t@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
[421] i915#13046
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
[422] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
[423] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
[424] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
[425] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_cursor_crc@cursor-onscreen-max-size.html
[426] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html
[427] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html
[428] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_cursor_crc@cursor-onscreen-128x42.html
[429] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@kms_cursor_crc@cursor-onscreen-128x42.html
[430] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html
[431] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_content_protection@uevent-hdcp14.html
[432] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_content_protection@mei-interface.html
[433] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_content_protection@lic-type-0.html
[434] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
[435] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
[436] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_content_protection@atomic-dpms.html
[437] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
[438] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
[439] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_chamelium_frames@dp-crc-single.html
[440] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_chamelium_audio@dp-audio.html
[441] i915#3742
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
[442] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@kms_cdclk@mode-transition-all-outputs.html
[443] i915#10434
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
[444] i915#10307
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
[445] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
[446] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
[447] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
[448] i915#15582
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
[449] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
[450] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
[451] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
[452] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html
[453] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.ht=
ml
[454] i915#12805
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
[455] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
[456] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.=
html
[457] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
[458] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
[459] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
[460] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-12/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html
[461] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
[462] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
[463] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
[464] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
[465] i915#3828
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
[466] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html
[467] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
[468] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
[469] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.htm=
l
[470] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
[471] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
[472] i915#9531
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
[473] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
[474] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-12/igt@kms_async_flips@async-flip-suspend-resume.html
[475] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-16/ig=
t@kms_async_flips@async-flip-suspend-resume.html
[476] i915#7707
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
[477] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-4/igt@intel_hwmon@hwmon-read.html
[478] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
1/igt@i915_suspend@sysfs-reader.html
[479] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
11/igt@i915_suspend@fence-restore-tiled2untiled.html
[480] i915#7984
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
[481] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtl=
p-8/igt@i915_power@sanity.html
[482] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-mtlp-4/ig=
t@i915_power@sanity.html
[483] i915#15172
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
[484] i915#13356
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
[485] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
2/igt@i915_pm_rpm@system-suspend-execbuf.html
[486] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-6/igt@i915_pm_rpm@system-suspend.html
[487] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-7/igt=
@i915_pm_rpm@system-suspend.html
[488] i915#4391
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
[489] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1=
-15/igt@i915_pm_rpm@system-suspend.html
[490] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-15/ig=
t@i915_pm_rpm@system-suspend.html
[491] i915#6590
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
[492] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@i915_pm_freq_mult@media-freq@gt0.html
[493] i915#13820
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
[494] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-1/igt@i915_pm_freq_api@freq-suspend@gt0.html
[495] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-3/igt=
@i915_pm_freq_api@freq-suspend@gt0.html
[496] i915#8399
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
[497] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@i915_pm_freq_api@freq-reset-multiple.html
[498] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@i915_pm_freq_api@freq-reset.html
[499] i915#15342
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
[500] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@i915_module_load@fault-injection@intel_connector_register.html
[501] i915#15481
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
[502] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@i915_module_load@fault-injection@__uc_init.html
[503] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@i915_module_load@fault-injection.html
[504] i915#2856
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
[505] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@gen9_exec_parse@valid-registers.html
[506] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@gen9_exec_parse@bb-oversize.html
[507] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@gen9_exec_parse@batch-without-end.html
[508] i915#5566
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
[509] ABORT
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
2/igt@gen9_exec_parse@allowed-all.html
[510] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-glk3/igt@=
gen9_exec_parse@allowed-all.html
[511] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@gen3_render_linear_blits.html
[512] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@gem_userptr_blits@dmabuf-unsync.html
[513] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@gem_userptr_blits@coherency-unsync.html
[514] i915#8428
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
[515] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
[516] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@gem_readwrite@beyond-eob.html
[517] i915#4270
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
[518] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_pxp@verify-pxp-stale-buf-execution.html
[519] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@gem_partial_pwrite_pread@reads-uncached.html
[520] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@gem_lmem_swapping@verify-random-ccs.html
[521] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk=
6/igt@gem_lmem_swapping@random-engines.html
[522] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
[523] i915#2190
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
[524] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@gem_huc_copy@huc-copy.html
[525] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
[526] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@gem_exec_reloc@basic-cpu-noreloc.html
[527] i915#6334
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
[528] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@gem_exec_capture@capture-invisible@smem0.html
[529] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@gem_exec_balancer@parallel-keep-in-fence.html
[530] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@gem_exec_balancer@parallel.html
[531] i915#4812
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
[532] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@gem_exec_balancer@hog.html
[533] i915#13363
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
[534] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-4/igt@gem_eio@kms.html
[535] i915#280 https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
[536] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@gem_ctx_sseu@mmap-args.html
[537] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@gem_ctx_sseu@engines.html
[538] i915#8555
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
[539] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@gem_ctx_persistence@heartbeat-many.html
[540] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@gem_ctx_param@set-priority-not-supported.html
[541] i915#9561
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
[542] FAIL
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-1/igt@gem_ctx_freq@sysfs@gt0.html
[543] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-7/igt=
@gem_ctx_freq@sysfs@gt0.html
[544] i915#8562
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
[545] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-2/igt@gem_create@create-ext-set-pat.html
[546] i915#6335
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
[547] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-3/igt@gem_create@create-ext-cpu-access-big.html
[548] i915#12392
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
[549] INCOMPLETE
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
[550] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg2-7/igt=
@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
[551] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@gem_ccs@suspend-resume.html
[552] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tgl=
u-1/igt@gem_ccs@block-multicopy-compressed.html
[553] i915#15678
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
[554] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@drm_buddy@drm_buddy.html
[555] i915#11078
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
[556] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@device_reset@cold-reset-bound.html
[557] i915#8411
      https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
[558] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2=
-3/igt@api_intel_bb@object-reloc-purge-cache.html
[559] SKIP
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-7/igt@api_intel_bb@blit-reloc-purge-cache.html
[560] DMESG-WARN
      https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@i915_selftest@live@execlists.html
[561] PASS
      https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-rkl-6/igt=
@i915_selftest@live@execlists.html

--=-l2GtkFv3KbpapM20cpAf
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
<body><div>Hi&nbsp;<a href=3D"mailto:I915-ci-infra@lists.freedesktop.org">I=
915-ci-infra@lists.freedesktop.org,</a></div><div><br></div><div>On Fri, 20=
26-05-08 at 01:38 +0000, Patchwork wrote:</div><blockquote type=3D"cite" st=
yle=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><=
div><b>Patch Details</b></div>
<div><table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915: Fix potential UAF in TTM ob=
ject purge</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/166126/">https://patchwork.freedesktop.org/series/166126/</a></td></tr=
>
<tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>Details:</b></td=
><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1=
/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/in=
dex.html</a></td></tr></tbody></table> </div><h1>CI Bug Log - changes from =
CI_DRM_18440_full -&gt; Patchwork_166126v1_full</h1><h2>Summary</h2><p><str=
ong>FAILURE</strong></p><p>Serious unknown changes coming with Patchwork_16=
6126v1_full absolutely need to be<br> verified manually.</p><p>If you think=
 the reported changes have nothing to do with the changes<br> introduced in=
 Patchwork_166126v1_full, please notify your bug team (I915-ci-infra@lists.=
freedesktop.org) to allow them<br> to document this new failure mode, which=
 will reduce false positives in CI.</p><h2>Participating hosts (10 -&gt; 10=
)</h2><p>No changes in participating hosts</p><h2>Possible new issues</h2><=
p>Here are the unknown changes that may have been introduced in Patchwork_1=
66126v1_full:</p><h3>IGT changes</h3><h4>Possible regressions</h4><ul>
<li>igt@i915_selftest@live@execlists:</li><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@i915_selftest@live@execlists.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1=
/shard-rkl-8/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> +1 other=
 test dmesg-warn</li>
</ul>
</ul></blockquote><div><br></div><div>My change can only affect discrete pl=
atforms, not integrated as RKL, then</div><div>this kernel warning is not r=
elated. &nbsp;Please update CBL filters and re-report.</div><div><br></div>=
<div>Thanks,<br>Janusz</div><div><br></div><blockquote type=3D"cite" style=
=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><h2>=
Known issues</h2><p>Here are the changes found in Patchwork_166126v1_full t=
hat come from known issues:</p><h3>IGT changes</h3><h4>Issues hit</h4><ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@api_intel_bb@blit-reloc-pu=
rge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8411">i915#8411</a>)</li>
</ul></li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul></li>
<li>
<p>igt@device_reset@cold-reset-bound:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul></li>
<li>
<p>igt@drm_buddy@drm_buddy:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@drm_buddy@drm_buddy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15678">i915#15678</a>)</li>
</ul></li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9323">i915#9323</a>)</li>
</ul></li>
<li>
<p>igt@gem_ccs@suspend-resume:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_ccs@suspend-resume.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9323">i915#9323</a>)</li>
</ul></li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p><u=
l>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-7/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_166126v1/shard-dg2-1/igt@gem_ccs@suspend-resume@li=
near-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a>)</li>
</ul></li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul></li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8562">i915#8562</a>)</li>
</ul></li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard=
-dg2-1/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/9561">i915#9561</a>) +1 other tes=
t fail</li>
</ul></li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> +56 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@gem_ctx_persistence@heartb=
eat-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8555">i915#8555</a>)</li>
</ul></li>
<li>
<p>igt@gem_ctx_sseu@engines:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@gem_ctx_sseu@engines.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/280">i915#280</a>)</li>
</ul></li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/280">i915#280</a>)</li>
</ul></li>
<li>
<p>igt@gem_eio@kms:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@gem_eio@kms.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13363">i915#13363</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@hog:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@gem_exec_balancer@hog.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4812">i915#4812</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4525">i915#4525</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@gem_exec_balancer@paralle=
l-keep-in-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_exec_capture@capture-invisible@smem0:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@gem_exec_capture@capture-=
invisible@smem0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-n=
oreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +13 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@gem_huc_copy@huc-copy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/2190">i915#2190</a>)</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@gem_lmem_swapping@parallel=
-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk6/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@gem_lmem_swapping@verify-=
random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613">i915#4613</a>)</li>
</ul></li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@gem_partial_pwrite_pread@r=
eads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-b=
uf-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul></li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@gem_readwrite@beyond-eob.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-c=
cs-to-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests ski=
p</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@gem_userptr_blits@dmabuf-=
unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gen3_render_linear_blits:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@gen3_render_linear_blits.h=
tml">SKIP</a></li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/s=
hard-glk2/igt@gen9_exec_parse@allowed-all.html">ABORT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">i915#5566</a>)</li=
>
</ul></li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@gen9_exec_parse@batch-wit=
hout-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2856">i915#2856</a>)</li>
</ul></li>
<li>
<p>igt@i915_module_load@fault-injection:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@i915_module_load@fault-inj=
ection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15342">i915#15342</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul></li>
<li>
<p>igt@i915_module_load@fault-injection@__uc_init:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@i915_module_load@fault-inj=
ection@__uc_init.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul></li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@i915_module_load@fault-inj=
ection@intel_connector_register.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@i915_pm_freq_api@freq-res=
et.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8399">i915#8399</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8399">i915#8399</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166=
126v1/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul></li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@i915_pm_freq_mult@media-fr=
eq@gt0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/s=
hard-rkl-6/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</=
a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-15/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/=
shard-dg1-15/igt@i915_pm_rpm@system-suspend.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
423">i915#4423</a>)</li>
</ul></li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk2/igt@i915_pm_rpm@system-suspend-=
execbuf.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15172">i915#15172</a>)</li>
</ul></li>
<li>
<p>igt@i915_power@sanity:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-mtlp-4/igt@i915_power@sanity.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtl=
p-8/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul></li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk11/igt@i915_suspend@fence-restore=
-tiled2untiled.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul></li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk1/igt@i915_suspend@sysfs-reader.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4817">i915#4817</a>)</li>
</ul></li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@intel_hwmon@hwmon-read.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7707">i915#7707</a>)</li>
</ul></li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-16/igt@kms_async_flips@async-flip-suspend-resume.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_166126v1/shard-dg1-12/igt@kms_async_flips@async-flip-suspend-resume.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4423">i915#4423</a>) +1 other test dmesg-warn</li>
</ul></li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-180:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_big_fb@4-tiled-8bpp-r=
otate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test ski=
p</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p=
><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +6 othe=
r tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-=
stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_big_fb@linear-max-hw-s=
tride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)=
 +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p><ul=
>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk6/igt@kms_ccs@ccs-on-another-bo-4=
-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +173 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p><ul=
>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-=
4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +62 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:</p><ul=
>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg1-12/igt@kms_ccs@crc-primary-basic=
-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +139 other=
 tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests =
skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +57 =
other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:</=
p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#=
6095</a>) +42 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests =
skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-=
ccs-cc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled=
-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incompl=
ete</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other test=
s skip</li>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk11/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 othe=
r test incomplete</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer=
-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_cdclk@mode-transition=
-all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul></li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip<=
/li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_chamelium_hpd@dp-hpd-s=
torm-disable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test ski=
p</li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +9 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_content_protection@dp=
-mst-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_content_protection@dp-=
mst-type-0-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_content_protection@lic=
-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15865">i915#15865</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@mei-interface:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_content_protection@me=
i-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_content_protection@uev=
ent-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15865">i915#15865</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_166126v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/135=
66">i915#13566</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +5 other tests f=
ail</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onsc=
reen-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p><ul=
>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +2 other te=
sts skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-=
vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_166126v1/shard-dg1-14/igt@kms_cursor_legacy@flip-vs-cursor-crc-lega=
cy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15999">i915#15999</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4=
103</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul></li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9723">i915#9723</a>)</li>
</ul></li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul></li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul></li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul></li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_dp_link_training@non-u=
hbr-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
</ul></li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_dp_linktrain_fallback@=
dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-basic:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul></li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_flip@2x-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_flip@2x-flip-vs-dpms-o=
n-nop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panni=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend=
-interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#483=
9</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:</p><ul=
>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend=
-interruptible@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915=
#12745</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</l=
i>
</ul></li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_flip@basic-flip-vs-wf=
_vblank.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/10826">i915#10826</a>) +1 other test fail</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk10/igt@kms_flip@flip-vs-suspend-i=
nterruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk10/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi=
-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_166126v1/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible=
@a-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6113">i915#6113</a>) +1 other test incomplete</li>
</ul></li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_flip@plain-flip-ts-che=
ck@a-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/10826">i915#10826</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a=
>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 =
other tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 =
other test skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p=
><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8=
708</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-indfb-fliptrack-mmap-gtt:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbchdr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +10 other=
 tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-onoff:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bchdr-1p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +20 other =
tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +5 =
other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:</=
p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bchdr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +9 o=
ther tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt:</p><ul=
>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_frontbuffer_tracking@=
fbchdr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> +50 other tests skip</li=
>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-dr=
aw-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166126v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-rgb=
101010-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15989">i915#15989</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-dra=
w-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-r=
gb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +6 other tests skip</li=
>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +23 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:</=
p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#=
5354</a>) +6 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-=
cpu:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>=
) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render=
:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsrhdr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> +77 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-blt:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_frontbuffer_tracking@h=
dr-1p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other t=
est skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-modesetfrombusy:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_frontbuffer_tracking@=
hdr-modesetfrombusy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15989">i915#15989</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_frontbuffer_tracking@=
pipe-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_frontbuffer_tracking@p=
sr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 o=
ther tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +34 other test=
s skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15102">i915#15102</a>) +22 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
srhdr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +29 other t=
ests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-rgb565-draw-render:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_frontbuffer_tracking@=
psrhdr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +22 other tests sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/16012">i915#16012</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul></li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms@pi=
pe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip=
</li>
</ul></li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/16012">i915#16012</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul></li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_hdr@bpc-switch-suspen=
d@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test =
skip</li>
</ul></li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb16161616f:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-4/igt@kms_hdr@bpc-switch@pipe-a-=
hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</l=
i>
</ul></li>
<li>
<p>igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f:</p><ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg1-12/igt@kms_hdr@invalid-hdr@pipe-=
a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +3 other tests skip=
</li>
</ul></li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:</p><ul=
>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg1-14/igt@kms_hdr@invalid-metadata-=
sizes@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other=
 tests skip</li>
</ul></li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-3-xrgb16161616f:</p><ul=
>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-7/igt@kms_hdr@invalid-metadata-s=
izes@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other =
test skip</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-swap:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/16011">i915#16011</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li=
>
</ul></li>
<li>
<p>igt@kms_hdr@static-swap@pipe-a-hdmi-a-1-xrgb2101010:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_hdr@static-swap@pipe-a=
-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other tests skip</l=
i>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_hdr@static-toggle-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/16011">i915#16011</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_hdr@static-toggle-sus=
pend@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other =
test skip</li>
</ul></li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-2-xrgb2101010:</p><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk11/igt@kms_hdr@static-toggle-susp=
end@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> +41 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15460">i915#15460</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15459">i915#15459</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul></li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_joiner@invalid-modeset=
-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15458">i915#15458</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul></li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/6301">i915#6301</a>)</li>
</ul></li>
<li>
<p>igt@kms_panel_fitting@legacy:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6301">i915#6301</a>)</li>
</ul></li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk10/igt@kms_pipe_crc_basic@suspend=
-read-crc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12756">i915#12756</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</=
a>)</li>
</ul></li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk10/igt@kms_pipe_crc_basic@suspend=
-read-crc@pipe-b-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</=
a>)</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk10/igt@kms_plane@pixel-format-4-t=
iled-dg2-mc-ccs-modifier.html">SKIP</a> +117 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-mtl-rc-ccs-cc-modifier.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test s=
kip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_plane@pixel-format-y-t=
iled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +3 other tests sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping=
:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_plane@pixel-format-y-=
tiled-gen12-mc-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) =
+1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamp=
ing:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_plane@pixel-format-y-t=
iled-gen12-rc-ccs-cc-modifier-source-clamping.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>=
)</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-b-plane-5:=
</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_plane@pixel-format-y-t=
iled-gen12-rc-ccs-modifier@pipe-b-plane-5.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1=
 other test skip</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_plane@pixel-format-y-=
tiled-modifier@pipe-b-plane-7.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test =
skip</li>
</ul></li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk6/igt@kms_plane_alpha_blend@const=
ant-alpha-max.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk6/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test =
fail</li>
</ul></li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_plane_lowres@tiling-y=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_plane_multiple@2x-til=
ing-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13958">i915#13958</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_plane_multiple@2x-tili=
ng-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6953">i915#6953</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_plane_scaling@plane-up=
scale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other te=
sts skip</li>
</ul></li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_pm_backlight@bad-brigh=
tness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5354">i915#5354</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_backlight@fade:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9812">i915#9812</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15948">i915#15948</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15948">i915#15948</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_pm_dc@dc9-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15739">i915#15739</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shar=
d-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other=
 test skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shar=
d-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +2 other=
 tests skip</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lp=
sp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15073">i915#15073</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126=
v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915=
#14419</a>)</li>
</ul></li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6524">i915#6524</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p=
><ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk11/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 ot=
her test skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay=
-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests s=
kip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk2/igt@kms_psr2_sf@fbc-psr2-primar=
y-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests sk=
ip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-pl=
ane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip=
</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-pri=
mary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip<=
/li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:</p><u=
l>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_psr2_sf@psr2-cursor-p=
lane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 othe=
r tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_psr2_sf@psr2-primary-p=
lane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip<=
/li>
</ul></li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-2/igt@kms_psr2_su@frontbuffer-xr=
gb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9683">i915#9683</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-blt:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_psr@fbc-psr-cursor-blt=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_psr@psr-cursor-mmap-c=
pu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_psr@psr2-cursor-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_psr@psr2-primary-mmap-=
gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9732">i915#9732</a>) +21 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-4/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p><ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk10/igt@kms_tiled_display@basic-te=
st-pattern.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/10959">i915#10959</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
</ul></li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p><ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-glk9/igt@kms_vblank@ts-continuation-=
suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12276">i915#12276</a>) +1 other test incomplete</li>
</ul></li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9906">i915#9906</a>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@flip-suspend:</p><ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-3/igt@kms_vrr@flip-suspend.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_vrr@seamless-rr-switch=
-vrr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul></li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-4/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul></li>
<li>
<p>igt@perf_pmu@busy-double-start:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-mtlp-1/igt@perf_pmu@busy-double-start.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/=
shard-mtlp-4/igt@perf_pmu@busy-double-start.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +2=
 other tests fail</li>
</ul></li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@perf_pmu@busy-double-start=
@vecs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul></li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p><ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8516">i915#8516</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@prime_vgem@basic-fence-mma=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@prime_vgem@basic-fence-rea=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@basic-write:</p><ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg2-3/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3708">i915#3708</a>)</li>
</ul></li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul></li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p><ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@sriov_basic@enable-vfs-aut=
oprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9917">i915#9917</a>)</li>
</ul></li>
</ul><h4>Possible fixes</h4><ul>
<li>
<p>igt@i915_module_load@load:</p><ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18440/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-19/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18440/shard-dg1-18/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/=
shard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-17/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18440/shard-dg1-16/igt@i915_module_load@load.html">DMESG-WARN</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1=
-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-15/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18440/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-14/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_18440/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1=
-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-16/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18440/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-15/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_18440/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1=
-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-14/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18440/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-19/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_18440/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1=
-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-15/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18440/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18440/shard-dg1-18/igt@i915_mo=
dule_load@load.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-15/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166126v1/shard-dg1-19/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/=
shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-17/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_166126v1/shard-dg1-17/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126=
v1/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-19/igt@i915=
_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_166126v1/shard-dg1-13/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166=
126v1/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-12/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-dg1-15/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
166126v1/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-16/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_166126v1/shard-dg1-12/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_166126v1/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-1=
4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-16/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_166126v1/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg=
1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-18/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_166126v1/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard=
-dg1-15/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-14/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_166126v1/shard-dg1-14/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/sh=
ard-dg1-19/igt@i915_module_load@load.html">PASS</a>)</li>
</ul></li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-10/igt@i915_suspend@sysfs-reader.html">ABORT</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140">i9=
15#15140</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_166126v1/shard-dg2-3/igt@i915_suspend@sysfs-reader.html">PASS</a></l=
i>
</ul></li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing-internal-panels.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtlp-=
8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-p=
anels.html">PASS</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p><ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-tran=
sition@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15662">i915#15662</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-tglu-2/igt@km=
s_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html">PASS=
</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-mtlp-2/igt@k=
ms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166126v1/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-64x21=
.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/10056">i915#10056</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc=
-suspend.html">PASS</a></li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-=
indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html">PASS</a> +9 other te=
sts pass</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb-msflip-blt:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-glk6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-shrfb=
-msflip-blt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_166126v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p=
-scndscrn-shrfb-msflip-blt.html">PASS</a> +2 other tests pass</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-18/igt@kms_plane@pixel-format-x-tiled-modifier-sour=
ce-clamping.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg1-19/igt@kms_plane=
@pixel-format-x-tiled-modifier-source-clamping.html">PASS</a> +2 other test=
s pass</li>
</ul></li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdm=
i-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12276">i915#12276</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-7/igt@kms_vblank@ts-=
continuation-suspend@pipe-a-hdmi-a-2.html">PASS</a> +1 other test pass</li>
</ul></li>
<li>
<p>igt@kms_vrr@negative-basic:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-mtlp-8/igt@kms_vrr@negative-basic.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420">i915#1=
5420</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_166126v1/shard-mtlp-8/igt@kms_vrr@negative-basic.html">PASS</a> +1 other=
 test pass</li>
</ul></li>
</ul><h4>Warnings</h4><ul>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/93=
23">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_166126v1/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul></li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7697">i915#7697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166126v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-threa=
ds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_exec_bal=
ancer@parallel-keep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_166126v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@gem_exec_reloc@basic-wc.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_exec_reloc@basic-wc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
281">i915#3281</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@verify:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@gem_lmem_swapping@verify.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_lmem_swapping@verify.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4613">i915#4613</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@gem_lmem_swapping@verify-random-ccs.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_166126v1/shard-rkl-6/igt@gem_lmem_swapping@verify-random-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul></li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_readwrite@write-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"=
>i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_166126v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_=
userptr_blits@forbidden-operations.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a=
>)</li>
</ul></li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gem_userptr_blit=
s@readonly-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</l=
i>
</ul></li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@gen9_exec_parse@bb-start-p=
aram.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>)</li>
</ul></li>
<li>
<p>igt@i915_query@hwconfig_table:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@i915_query@hwconfig_table.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#=
6245</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_166126v1/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6245">i915#6245</a>)</li>
</ul></li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p><ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-tglu-10/igt@i915_suspend@basic-s3-without-i915.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4817">i915#4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_166126v1/shard-tglu-10/igt@i915_suspend@basic-s3-withou=
t-i915.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4817">i915#4817</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
</ul></li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
66126v1/shard-rkl-8/igt@kms_atomic_transition@plane-all-modeset-transition-=
internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/528=
6">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_166126v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_big_fb@=
4-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p><ul=
>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1=
/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-f=
lip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul></li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_big_fb@linear-16bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_166126v1/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_ccs@bad-rot=
ation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled=
-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul></li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:<=
/p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-r=
c-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_cc=
s@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8=
/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#140=
98</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pi=
pe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/ig=
t@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098"=
>i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) +15 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_=
chamelium_frames@hdmi-frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a=
>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151"=
>i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7=
173">i915#7173</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_166126v1/shard-dg2-6/igt@kms_content_protection@atomic-dpms.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15865">i915#15865</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15330">i915#15330</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_content_protection@dp-m=
st-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15330">i915#15330</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3116">i915#3116</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_content_protecti=
on@dp-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a=
>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-=
resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms=
_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330<=
/a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_content_protection@suspend-resume.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_content_prote=
ction@suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul></li>
<li>
<p>igt@kms_content_protection@uevent:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">=
i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_166126v1/shard-rkl-6/igt@kms_content_protection@uevent.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15865">i915#15865</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2-6/igt@kms_cursor_crc@cu=
rsor-onscreen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-16/igt@kms_cursor_crc@cursor-random-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_166126v1/shard-dg1-12/igt@kms_cursor_crc@cursor-=
random-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_cursor_crc@cur=
sor-random-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-=
flipa-legacy.html">SKIP</a> +19 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_dp_link_training@=
non-uhbr-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul></li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9337">i915#9337</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_feature_discovery@dp-mst=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9337">i915#9337</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-m=
odeset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interrupti=
ble.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_flip=
@2x-modeset-vs-vblank-race-interruptible.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 ot=
her tests skip</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-glk5/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">=
i915#12314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk2/=
igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
113">i915#6113</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p><ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12314">i915#12314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-glk2/igt@km=
s_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6=
113</a>)</li>
</ul></li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p><u=
l>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp=
-4tile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl=
-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15643">i915#15643</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-4:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5439">i915#5439</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_frontbuffer_=
tracking@fbchdr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p><ul=
>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
hrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_frontbuf=
fer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/18=
25">i915#1825</a>) +5 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@km=
s_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-spr-indfb-move:</p><u=
l>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscr=
n-spr-indfb-move.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_frontbuffer_tracking@=
fbcpsrhdr-2p-scndscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +13 oth=
er tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard=
-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/s=
hard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3023">i915#3023</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1=
/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p><=
ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-=
8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1825">i915#1825</a>) +8 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p><ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-dg2-4/igt@kms_fron=
tbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i91=
5#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3458">i915#3458</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt:</p><ul=
>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-s=
hrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15102">i915#15102</a>) +9 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-spr-indfb-draw-mmap-gtt:=
</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-18/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-=
spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shar=
d-dg1-19/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-spr-indfb-draw-mma=
p-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15990">i915#15990</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:<=
/p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-mod=
ifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shar=
d-rkl-8/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamp=
ing.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-none.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/139=
58">i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_166126v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13958">i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul></li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p=
><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation@pipe-c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-=
rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_pm_rpm@cursor:</p><ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-dg1-19/igt@kms_pm_rpm@cursor.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423=
">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_166126v1/shard-dg1-12/igt@kms_pm_rpm@cursor.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#40=
77</a>)</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_psr2_sf@fbc-p=
sr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a>) +2 other tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-=
exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@=
kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#=
11520</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915=
#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_166126v1/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9683">i915#9683</a>) +1 other test skip</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_psr@f=
bc-pr-sprite-plane-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 othe=
r tests skip</li>
</ul></li>
<li>
<p>igt@kms_psr@fbc-psr-primary-render:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_psr@fbc-psr-primary-render.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_psr@fbc-psr-primary-rend=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other test=
s skip</li>
</ul></li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-2=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_166126v1/shard-rkl-8/igt@kms_rotat=
ion_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul></li>
<li>
<p>igt@kms_vrr@flip-suspend:</p><ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-rkl-7/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#152=
43</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_166126v1/shard-rkl-6/igt@kms_vrr@flip-suspend.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul></li>
<li>
<p>igt@perf_pmu@module-unload:</p><ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18440/shard-mtlp-8/igt@perf_pmu@module-unload.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#=
15778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_166126v1/shard-mtlp-5/igt@perf_pmu@module-unload.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520">i=
915#13520</a>)</li>
</ul></li>
</ul><p>{name}: This element is suppressed. This means it is ignored when c=
omputing<br> the status of the difference (SUCCESS, WARNING, or FAILURE).</=
p><h2>Build changes</h2><ul>
<li>Linux: CI_DRM_18440 -&gt; Patchwork_166126v1</li>
</ul><p>CI-20190529: 20190529<br> CI_DRM_18440: b023767ff66180ad432701eb5ba=
4ccf8f70de46d @ git://anongit.freedesktop.org/gfx-ci/linux<br> IGT_8899: 3e=
5747e536f148bf232049e49a00e2b683f91a83 @ https://gitlab.freedesktop.org/drm=
/igt-gpu-tools.git<br> Patchwork_166126v1: b023767ff66180ad432701eb5ba4ccf8=
f70de46d @ git://anongit.freedesktop.org/gfx-ci/linux<br> piglit_4509: fdc5=
a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit=
</p></blockquote><div><br></div><div><span></span></div></body></html>

--=-l2GtkFv3KbpapM20cpAf--
