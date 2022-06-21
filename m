Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F5D553A0D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 21:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E8EB10E955;
	Tue, 21 Jun 2022 19:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D30710E641
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 19:11:51 +0000 (UTC)
Received: from [192.168.178.53] (82-71-8-225.dsl.in-addr.zen.co.uk
 [82.71.8.225])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbeckett)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 082ED6601657
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 20:11:50 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1655838710;
 bh=/wXYHhoWqH2tzZoIUEaOOeEhkLIlDVYSlRe39yynIvY=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=E+pAZGuYEU7yqHObU8KziapPh+2kX2UmzstwIhcNQxninFQZDrXJLkE2e5N8KQL8v
 gstZpHk9ypfQHsddzM/EAxHjYnEmzbfqI7e6X0DMxolnaQcJdJ0LrjwIirsk5yxWcX
 kujRQY4/bJ3LIzE/XpnMLs6w37ASfTJqYk1P74q50Dobnlqd3t0cRcyQxWK28XRD0E
 2oriAh0dQOyArN/UjTbxq8jFhUP7tsTGH754wyQBP6VcdfAGPE7o/zad080SFM/qsG
 7EY9w10WiF4a3xhpNU4OWslq9eiOrHTGBrwYhbc2KYev8Geb9hli8ovjL1iYvRk91x
 3FvMiuDhmX2SA==
Message-ID: <20dedda6-534b-b39e-fb35-8becc5c27043@collabora.com>
Date: Tue, 21 Jun 2022 20:11:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220620213340.3199605-1-bob.beckett@collabora.com>
 <165583307119.13647.9219456323624399121@emeril.freedesktop.org>
From: Robert Beckett <bob.beckett@collabora.com>
In-Reply-To: <165583307119.13647.9219456323624399121@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_stolen_=28rev5=29?=
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



On 21/06/2022 18:37, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: ttm for stolen (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/101396/ 
> <https://patchwork.freedesktop.org/series/101396/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11790 -> Patchwork_101396v5
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_101396v5 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_101396v5, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html
> 
> 
>     Participating hosts (40 -> 41)
> 
> Additional (2): fi-icl-u2 bat-dg2-9
> Missing (1): fi-bdw-samus
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_101396v5:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@i915_selftest@live@reset:
>       o bat-adlp-4: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_selftest@live@reset.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_selftest@live@reset.html>
> 

I keep hitting clobbered pages during engine resets on bat-adlp-4.
It seems to happen most of the time on that machine and occasionally on 
bat-adlp-6.

Should bat-adlp-4 be considered an unreliable machine like bat-adlp-6 is 
for now?

Alternatively, seeing the history of this in

commit 3da3c5c1c9825c24168f27b021339e90af37e969 "drm/i915: Exclude low 
pages (128KiB) of stolen from use"

could this be an indication that maybe the original issue is worse on 
adlp machines?
I have only ever seen page page 135 or 136 clobbered across many runs 
via trybot, so it looks fairly consistent.
Though excluding the use of over 540K of stolen might be too severe.


> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@kms_busy@basic@flip:
>       o {bat-dg2-9}: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-dg2-9/igt@kms_busy@basic@flip.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_101396v5 that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3
>         similar issues
>   *
> 
>     igt@i915_pm_rpm@module-reload:
> 
>       o bat-adlp-4: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_pm_rpm@module-reload.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_pm_rpm@module-reload.html>
>         (i915#1888
>         <https://gitlab.freedesktop.org/drm/intel/issues/1888> /
>         i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o bat-dg1-6: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-dg1-6/igt@i915_selftest@live@hangcheck.html>
>         (i915#4494
>         <https://gitlab.freedesktop.org/drm/intel/issues/4494> /
>         i915#4957 <https://gitlab.freedesktop.org/drm/intel/issues/4957>)
>   *
> 
>     igt@i915_suspend@basic-s3-without-i915:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#5903 <https://gitlab.freedesktop.org/drm/intel/issues/5903>)
>   *
> 
>     igt@kms_busy@basic@flip:
> 
>       o bat-adlp-4: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@kms_busy@basic@flip.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@kms_busy@basic@flip.html>
>         (i915#3576 <https://gitlab.freedesktop.org/drm/intel/issues/3576>)
>   *
> 
>     igt@kms_chamelium@common-hpd-after-suspend:
> 
>       o
> 
>         fi-hsw-g3258: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
>       o
> 
>         fi-hsw-4770: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
>       o
> 
>         fi-blb-e6850: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
> 
>       o
> 
>         fi-pnv-d510: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html>
>         (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
> 
>   *
> 
>     igt@kms_chamelium@hdmi-hpd-fast:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html>
>         (fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +8
>         similar issues
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278> /
>         i915#4103
>         <https://gitlab.freedesktop.org/drm/intel/issues/4103>) +1
>         similar issue
>   *
> 
>     igt@kms_flip@basic-flip-vs-modeset@a-edp1:
> 
>       o fi-tgl-u2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>         (i915#402 <https://gitlab.freedesktop.org/drm/intel/issues/402>)
>         +1 similar issue
>   *
> 
>     igt@kms_force_connector_basic@force-connector-state:
> 
>       o fi-icl-u2: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html>
>         (i915#6008 <https://gitlab.freedesktop.org/drm/intel/issues/6008>)
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html>
>         (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>         (fdo#109278 <https://bugs.freedesktop.org/show_bug.cgi?id=109278>)
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@prime_vgem@basic-userptr:
> 
>       o fi-icl-u2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@prime_vgem@basic-userptr.html>
>         (fdo#109295
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109295> /
>         i915#3301 <https://gitlab.freedesktop.org/drm/intel/issues/3301>)
>   *
> 
>     igt@runner@aborted:
> 
>       o fi-cfl-guc: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-cfl-guc/igt@runner@aborted.html>
>         (i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o
> 
>         fi-hsw-4770: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>         i915#4785
>         <https://gitlab.freedesktop.org/drm/intel/issues/4785>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html>
> 
>       o
> 
>         fi-hsw-g3258: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
>         (i915#3303
>         <https://gitlab.freedesktop.org/drm/intel/issues/3303> /
>         i915#4785
>         <https://gitlab.freedesktop.org/drm/intel/issues/4785>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html>
> 
>   *
> 
>     igt@i915_selftest@live@requests:
> 
>       o
> 
>         fi-blb-e6850: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-blb-e6850/igt@i915_selftest@live@requests.html>
>         (i915#4528
>         <https://gitlab.freedesktop.org/drm/intel/issues/4528>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-blb-e6850/igt@i915_selftest@live@requests.html>
> 
>       o
> 
>         fi-pnv-d510: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-pnv-d510/igt@i915_selftest@live@requests.html>
>         (i915#4528
>         <https://gitlab.freedesktop.org/drm/intel/issues/4528>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-pnv-d510/igt@i915_selftest@live@requests.html>
> 
>   *
> 
>     igt@kms_flip@basic-flip-vs-modeset@a-edp1:
> 
>       o bat-adlp-4: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>         (i915#3576
>         <https://gitlab.freedesktop.org/drm/intel/issues/3576>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html>
>   *
> 
>     igt@kms_flip@basic-plain-flip@a-edp1:
> 
>       o {bat-adlp-6}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html>
>         (i915#3576
>         <https://gitlab.freedesktop.org/drm/intel/issues/3576>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html>
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_11790 -> Patchwork_101396v5
> 
> CI-20190529: 20190529
> CI_DRM_11790: a838c72d1e41413a5ace5e3cf2ada93c2e81f66b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6537: 331658a8475c8b0c0f7ffe5268a7318ef83da34e @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_101396v5: a838c72d1e41413a5ace5e3cf2ada93c2e81f66b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
>       Linux commits
> 
> cb4854cf1605 drm/i915: stolen memory use ttm backend
> 25a96de09969 drm/i915/ttm: add buffer pin on alloc flag
> ad58b349349b drm/i915: allow memory region creators to alloc and free 
> the region
> 785ff03c0542 drm/i915: ttm move/clear logic fix
> d0902500e074 drm/i915: sanitize mem_flags for stolen buffers
> 8a7630243d04 drm/i915: instantiate ttm ranger manager for stolen memory
> 055ef33c2ac8 drm/i915/gem: selftest should not attempt mmap of private 
> regions
> eb22d2a146a5 drm/i915/ttm: only trust snooping for dgfx when deciding 
> default cache_level
> f02995012a97 drm/i915: limit ttm to dma32 for i965G[M]
> 1770347378a1 drm/i915/ttm: dont trample cache_level overrides during ttm 
> move
> 
