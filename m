Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9044E222A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 09:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9278810E299;
	Mon, 21 Mar 2022 08:27:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14E110E299
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 08:27:54 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id a17so15842659edm.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 01:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=b8tw17xq9FHRY1x6JP+sDEaQuiH2rOKvFZR/rwh1cds=;
 b=odqWEzi+hzYTyjw4fNUafEJ7g1QI7y+DaoeNK5rYod3yt7Z+wPDQKKIIed4+HbjUID
 +1uJAfbgiChVO1V5mUbaWltJR8kHBCaw17Y0e7XR7UheqNk6rffxdvmtgfCqnK6SQ28n
 +AXycChbh+XCISwWjgpSp5eUG2GvK4jvSZLUpWmzw1lk7EJgrb/PQzJ+euIc+OkuT5Hg
 aj0T32cb/j+bDFznnttA0Rlz7U0uzXPVWp0FNqvno0vOg5VkxA5YZTPX86883l0Gv1bn
 mKhmoaGiEDHGkwzkspx49P5FiQvZwIVN3NsSJi6x0smv/BlryozRI7UoxPWELsC77zba
 dKZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=b8tw17xq9FHRY1x6JP+sDEaQuiH2rOKvFZR/rwh1cds=;
 b=eY0x2s3g/FUppWf2VN54lqF99YIKjCF5tTWx+vsJ15TSInDWx1Hi96ZjDPoeEGoIb4
 +mEPd+xQiXIzUCkZ+BhdtaFNLUOvd/azvzHh6ff1VKy61LVFPaxQm7atvNKe5ptpNh6M
 FpvN6QcwjENu3D28W9xBMCFcSwgGWBICgfgYnu4ayt2gvwcQ5GNQvRT/8NcsZzCvzZLH
 1czvqaH9dGif/wzMIqkJoSC+2O+rWsbewm1p3/8ZUIliCuQC7TsqA6pCEDoMrEdpQqf+
 XbYtfHUtAE9wf2xvowDBhHO2DSH6HDTiCQ9b1Ar7NelZh8bf9lZaQW0uVez4+Yqz6o6c
 sAIw==
X-Gm-Message-State: AOAM5330OL6KyoPwx9PVF+qAblRYTQ4Uzp/tVSR+BqPAHZh/7P3nGCYz
 2x+4mWWosTDmALkYteKJCnQjutX9hB+LgA==
X-Google-Smtp-Source: ABdhPJyKi/gGn8VSF2znmrODdOet4WBKhe+Y/XXxEnzYJUoDmzAPYT83x2DNUbjS63fn/EvYQm3zRQ==
X-Received: by 2002:aa7:d311:0:b0:419:443b:6222 with SMTP id
 p17-20020aa7d311000000b00419443b6222mr2754727edq.161.1647851273033; 
 Mon, 21 Mar 2022 01:27:53 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.86])
 by smtp.googlemail.com with ESMTPSA id
 ga5-20020a1709070c0500b006de43e9605asm6594965ejc.181.2022.03.21.01.27.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Mar 2022 01:27:52 -0700 (PDT)
Message-ID: <21cc54d0-5eaa-072f-19b6-9d30379c4184@gmail.com>
Date: Mon, 21 Mar 2022 10:27:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
References: <20220316222307.30066-1-juhapekka.heikkila@gmail.com>
 <164748428013.32164.7453370345298509955@emeril.freedesktop.org>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <164748428013.32164.7453370345298509955@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Add_smem_fallback_allocation_for_dpt?=
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Lakshmi,

here would be again false positive on glk, glk doesn't use dpt which is 
changed on my patch.

/Juha-Pekka

On 17.3.2022 4.31, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/display: Add smem fallback allocation for dpt
> *URL:*	https://patchwork.freedesktop.org/series/101443/ 
> <https://patchwork.freedesktop.org/series/101443/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11372_full -> Patchwork_22588_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_22588_full absolutely need 
> to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22588_full, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (11 -> 12)
> 
> Additional (1): shard-rkl
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_22588_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@perf@stress-open-close:
>       o shard-glk: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@perf@stress-open-close.html>
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@i915_pm_dc@dc5-dpms:
>       o {shard-rkl}: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-rkl-5/igt@i915_pm_dc@dc5-dpms.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22588_full that come from known 
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
>     igt@gem_eio@kms:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb7/igt@gem_eio@kms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-tglb8/igt@gem_eio@kms.html>
>         ([i915#232])
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb3/igt@gem_exec_balancer@parallel-balancer.html>
>         ([i915#4525])
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@gem_exec_capture@pi@rcs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl7/igt@gem_exec_capture@pi@rcs0.html>
>         ([i915#4547])
>   *
> 
>     igt@gem_exec_endless@dispatch@vecs0:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb6/igt@gem_exec_endless@dispatch@vecs0.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-tglb5/igt@gem_exec_endless@dispatch@vecs0.html>
>         ([i915#3778])
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o
> 
>         shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html>
>         ([i915#2842])
> 
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o
> 
>         shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842])
> 
>       o
> 
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842])
> 
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_whisper@basic-normal:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@gem_exec_whisper@basic-normal.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk8/igt@gem_exec_whisper@basic-normal.html>
>         ([i915#118])
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl7/igt@gem_lmem_swapping@basic.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-engines:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl6/igt@gem_lmem_swapping@parallel-random-engines.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gen3_render_linear_blits:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-tglb2/igt@gen3_render_linear_blits.html>
>         ([fdo#109289])
>   *
> 
>     igt@gen7_exec_parse@oacontrol-tracking:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@gen7_exec_parse@oacontrol-tracking.html>
>         ([fdo#109271]) +27 similar issues
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl7/igt@i915_pm_dc@dc6-psr.html>
>         ([i915#454])
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-270:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb2/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html>
>         ([i915#5286])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +3 similar issues
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777])
> 
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +8 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_chamelium@dp-crc-multiple:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@kms_chamelium@dp-crc-multiple.html>
>         ([fdo#109271] / [fdo#111827]) +3 similar issues
>   *
> 
>     igt@kms_chamelium@dp-crc-single:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl2/igt@kms_chamelium@dp-crc-single.html>
>         ([fdo#109271] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-b-ctm-0-25:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl3/igt@kms_color_chamelium@pipe-b-ctm-0-25.html>
>         ([fdo#109271] / [fdo#111827]) +10 similar issues
>   *
> 
>     igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html>
>         ([fdo#109271] / [fdo#111827]) +5 similar issues
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-kbl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl6/igt@kms_content_protection@atomic.html>
>         ([i915#1319])
>   *
> 
>     igt@kms_content_protection@uevent:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl3/igt@kms_content_protection@uevent.html>
>         ([i915#2105])
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl2/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html>
>         ([fdo#109271]) +54 similar issues
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         ([i915#72])
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>         ([i915#2346])
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@kms_cursor_legacy@pipe-d-single-bo.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>         ([i915#2122]) +2 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html>
>         ([fdo#109271]) +136 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html>
>         ([fdo#109271]) +78 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html>
>         ([i915#1982])
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-d:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb6/igt@kms_pipe_crc_basic@read-crc-pipe-d.html>
>         ([fdo#109278])
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl9/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>         ([fdo#108145] / [i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> 
>       o
> 
>         shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         ([fdo#109271] / [i915#658]) +1 similar issue
> 
>       o
> 
>         shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html>
>         ([fdo#109271] / [i915#658])
> 
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_primary_page_flip:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html>
>         ([fdo#109441]) +3 similar issues
>   *
> 
>     igt@kms_sequence@queue-busy:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl8/igt@kms_sequence@queue-busy.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl3/igt@kms_sequence@queue-busy.html>
>         ([i915#2995])
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl6/igt@kms_sysfs_edid_timing.html>
>         ([IGT#2])
>   *
> 
>     igt@sysfs_clients@fair-7:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl6/igt@sysfs_clients@fair-7.html>
>         ([fdo#109271] / [i915#2994]) +2 similar issues
>   *
> 
>     igt@sysfs_clients@split-25:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl3/igt@sysfs_clients@split-25.html>
>         ([fdo#109271] / [i915#2994]) +1 similar issue
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb6/igt@feature_discovery@psr2.html>
>         ([i915#658]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb2/igt@feature_discovery@psr2.html>
>   *
> 
>     igt@gem_eio@in-flight-contexts-10ms:
> 
>       o shard-tglb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html>
>         ([i915#3063]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-tglb7/igt@gem_eio@in-flight-contexts-10ms.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-iclb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb8/igt@gem_eio@unwedge-stress.html>
>         ([i915#2481] / [i915#3070]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb1/igt@gem_eio@unwedge-stress.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>         ([i915#2842]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>   *
> 
>     igt@gem_workarounds@suspend-resume:
> 
>       o shard-skl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl6/igt@gem_workarounds@suspend-resume.html>
>         ([i915#4939] / [i915#5129]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl9/igt@gem_workarounds@suspend-resume.html>
>   *
> 
>     igt@i915_pm_rpm@system-suspend-modeset:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@i915_pm_rpm@system-suspend-modeset.html>
>         ([i915#118] / [i915#1888]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk1/igt@i915_pm_rpm@system-suspend-modeset.html>
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-kbl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@i915_suspend@forcewake.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl3/igt@i915_suspend@forcewake.html>
>         +3 similar issues
>   *
> 
>     igt@kms_big_fb@x-tiled-32bpp-rotate-180:
> 
>       o {shard-tglu}: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglu-1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>         ([i915#402]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-tglu-2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>   *
> 
>     igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html>
>         ([i915#5072]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb4/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled:
> 
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html>
>         ([i915#1982]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-xtiled.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html>
>         ([i915#118]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk1/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html>
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html>
>         ([i915#79]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html>
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         ([i915#180]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>         +3 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-ts-check@a-edp1:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html>
>         ([i915#2122]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html>
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html>
>         ([i915#4911]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html>
>         +1 similar issue
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html>
>         ([i915#5235]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html>
>         +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_gtt:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html>
>         ([fdo#109441]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html>
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-skl2/igt@perf@polling-parameterized.html>
>         ([i915#1542]) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-skl7/igt@perf@polling-parameterized.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-tglb5/igt@gem_eio@unwedge-stress.html>
>         ([i915#232]) -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-tglb6/igt@gem_eio@unwedge-stress.html>
>         ([i915#3063] / [i915#3648])
>   *
> 
>     igt@gem_exec_balancer@parallel-out-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#4525]) -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html>
>         ([i915#5076]) +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2842]) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2852])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-fence:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#2684]) -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html>
>         ([i915#1804] / [i915#2684])
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html>
>         ([i915#1804] / [i915#2684]) -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html>
>         ([i915#2684])
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         ([fdo#111068] / [i915#658]) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html>
>         ([i915#2920])
>   *
> 
>     igt@runner@aborted:
> 
>       o shard-kbl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11372/shard-kbl3/igt@runner@aborted.html>)
>         ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312] /
>         [i915#5257] / [i915#602]) -> (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22588/shard-kbl4/igt@runner>,
>         [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#180] / [i915#1814]
>         / [i915#3002] / [i915#4312] / [i915#5257])
> 

