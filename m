Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 386EA7F528F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 22:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFC810E0BF;
	Wed, 22 Nov 2023 21:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6A0D10E0BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 21:27:44 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-332ddd8e0bdso22221f8f.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Nov 2023 13:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1700688463; x=1701293263; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=NPtVLHClmhXUujJ7s0vk239+y51feJLcvNfUmqN6+ik=;
 b=Ijl9KbX+4P9AderDHnWdCQFJD70dyC6aXaDaaFU7zBfZCR9LkQKxstqXGYNU9HB52e
 EEYpLJphmTXPY+457i+TlKPlTMo0PHK6xYOT51Ern7NMKKTntfcklHXZeUi4fuPZVQeK
 cR+owAj7oB4x6oweo4aknCrjwqDGhriRnjR+rp3HPUVY3dp8N3n2P0lPN6WoCLaqevFT
 BAQ7W4r1t/aIP2oC6Jvl4Gw+wDi0psuVRWODdu+bDjRss793UwhL040CKDt20auWlPp1
 5zixYa1PNi/sttJwt+aQ1V12TTU2taM1vZmb63AsHQf/Wt0BtkYt1go7nqScDnCqF2Of
 6kYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1700688463; x=1701293263;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=NPtVLHClmhXUujJ7s0vk239+y51feJLcvNfUmqN6+ik=;
 b=s7WXLqyd3/VPdDvlnRHD6QKGYhJ0MnhRwcnYhEmKxJTEfHdv56XTuErGI/5Mk46GaR
 JkDiQF0UrIj8zJ8pTjz/OScIdJZ5b5/hh3Z5d7aDOK9pNjd5vAw5redLLxvRGux3Y9/E
 F/eRWErO8r9VvpWRy8wn4277JCgn7jh2udTm00xFduA9oF3RVcov3nsoxciw4M68KbHE
 /G0YID0Z0oXxBPdOQfQ2HHyR8h6gLawz2BDizu2iBh95BnTKVjj62BUenjIBCNTBP1sI
 Q0Pi9Q3AoyWIA5FVGdui5rPl8IhHHblMZzktfYY9TKhpyBEmwXrJgQvGB6LfujLHsuyT
 2Nrw==
X-Gm-Message-State: AOJu0Yx0XfF1pv1YWgvJC5JC0z2YabAXJqQSoDOIMAkS/9kyipiKhQBz
 dfy2L51KJH1uoSQUGsvYYgWqb249kZ9VBeam
X-Google-Smtp-Source: AGHT+IHaSEXBHhb36AQqLrWnIZgD/vvNa3IZWqjXhPPysh/VlaQIwR6n7PI15TNV5WUcSZM68a49Fg==
X-Received: by 2002:adf:f541:0:b0:332:ca52:9914 with SMTP id
 j1-20020adff541000000b00332ca529914mr678033wrp.11.1700688462029; 
 Wed, 22 Nov 2023 13:27:42 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.84])
 by smtp.googlemail.com with ESMTPSA id
 u7-20020a5d5147000000b003316debbde4sm359721wrt.48.2023.11.22.13.27.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Nov 2023 13:27:41 -0800 (PST)
Message-ID: <161452e1-3d31-4eb1-bc27-6be91960fb2c@gmail.com>
Date: Wed, 22 Nov 2023 23:27:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org, lgci.bug.filing@intel.com
References: <20231116150225.204233-1-juhapekka.heikkila@gmail.com>
 <170065018756.4728.10245121927133756447@emeril.freedesktop.org>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <170065018756.4728.10245121927133756447@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/display=3A_Separate_xe_and?=
 =?utf-8?q?_i915_common_dpt_code_into_own_file_=28rev5=29?=
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

On 22.11.2023 12.49, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [1/3] drm/i915/display: Separate xe and 
> i915 common dpt code into own file (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/126538/ 
> <https://patchwork.freedesktop.org/series/126538/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13905_full -> Patchwork_126538v5_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_126538v5_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_126538v5_full, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (12 -> 11)
> 
> Missing (1): shard-rkl
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_126538v5_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@kms_flip@dpms-off-confusion-interruptible@b-vga1:
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-snb5/igt@kms_flip@dpms-off-confusion-interruptible@b-vga1.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-snb5/igt@kms_flip@dpms-off-confusion-interruptible@b-vga1.html>

This failure doesn't seem to relate to my changes. To me it look like 
some issue from block device.

/Juha-Pekka

> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_13905_full and 
> Patchwork_126538v5_full:
> 
> 
>       New IGT tests (5)
> 
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-64x64@pipe-a-dp-4:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-128x128@pipe-a-dp-4:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_plane_cursor@viewport@pipe-a-dp-4-size-128:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_plane_cursor@viewport@pipe-a-dp-4-size-256:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
>   *
> 
>     igt@kms_plane_cursor@viewport@pipe-a-dp-4-size-64:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.0] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_126538v5_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@device_reset@cold-reset-bound:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@device_reset@cold-reset-bound.html> (i915#7701 <https://gitlab.freedesktop.org/drm/intel/issues/7701>)
>   *
> 
>     igt@drm_fdinfo@busy-check-all@vecs1:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@drm_fdinfo@busy-check-all@vecs1.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +9 other tests skip
>   *
> 
>     igt@drm_fdinfo@virtual-busy-all:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@drm_fdinfo@virtual-busy-all.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@drm_fdinfo@virtual-busy-all.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>)
> 
>   *
> 
>     igt@gem_basic@multigpu-create-close:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_basic@multigpu-create-close.html> (i915#7697 <https://gitlab.freedesktop.org/drm/intel/issues/7697>)
>   *
> 
>     igt@gem_ccs@ctrl-surf-copy-new-ctx:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_ccs@ctrl-surf-copy-new-ctx.html> (i915#9323 <https://gitlab.freedesktop.org/drm/intel/issues/9323>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html> (i915#9323 <https://gitlab.freedesktop.org/drm/intel/issues/9323>)
> 
>   *
> 
>     igt@gem_close_race@multigpu-basic-process:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_close_race@multigpu-basic-process.html> (i915#7697 <https://gitlab.freedesktop.org/drm/intel/issues/7697>)
>   *
> 
>     igt@gem_create@create-ext-cpu-access-big:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_create@create-ext-cpu-access-big.html> (i915#6335 <https://gitlab.freedesktop.org/drm/intel/issues/6335>)
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-16/igt@gem_ctx_isolation@preservation-s3@vcs0.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-12/igt@gem_ctx_isolation@preservation-s3@vcs0.html> (i915#4423 <https://gitlab.freedesktop.org/drm/intel/issues/4423>)
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-hostile:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-hostile.html> (i915#8555 <https://gitlab.freedesktop.org/drm/intel/issues/8555>)
>   *
> 
>     igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-snb4/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>) +1 other test skip
>   *
> 
>     igt@gem_eio@banned:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-6/igt@gem_eio@banned.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-5/igt@gem_eio@banned.html> (i915#9414 <https://gitlab.freedesktop.org/drm/intel/issues/9414>)
>   *
> 
>     igt@gem_eio@hibernate:
> 
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@gem_eio@hibernate.html> (i915#7975 <https://gitlab.freedesktop.org/drm/intel/issues/7975> / i915#8213 <https://gitlab.freedesktop.org/drm/intel/issues/8213>)
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-18/igt@gem_eio@kms.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-18/igt@gem_eio@kms.html> (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@gem_eio@suspend:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-7/igt@gem_eio@suspend.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-5/igt@gem_eio@suspend.html> (i915#5115 <https://gitlab.freedesktop.org/drm/intel/issues/5115>)
>   *
> 
>     igt@gem_exec_balancer@bonded-false-hang:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@gem_exec_balancer@bonded-false-hang.html> (i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-tglu-3/igt@gem_exec_fair@basic-pace@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-9/igt@gem_exec_fair@basic-pace@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fence@concurrent:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@gem_exec_fence@concurrent.html> (i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>   *
> 
>     igt@gem_exec_flush@basic-wb-rw-before-default:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_exec_flush@basic-wb-rw-before-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/intel/issues/4852>)
>   *
> 
>     igt@gem_exec_flush@basic-wb-rw-default:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_exec_flush@basic-wb-rw-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/intel/issues/4852>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_exec_reloc@basic-wc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-wc:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +5 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-wc-active:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_exec_reloc@basic-write-wc-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +2 other tests skip
>   *
> 
>     igt@gem_exec_schedule@preempt-queue-chain:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@gem_exec_schedule@preempt-queue-chain.html> (i915#4537 <https://gitlab.freedesktop.org/drm/intel/issues/4537> / i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>   *
> 
>     igt@gem_exec_suspend@basic-s3-devices@smem:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-8/igt@gem_exec_suspend@basic-s3-devices@smem.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-4/igt@gem_exec_suspend@basic-s3-devices@smem.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>)
>   *
> 
>     igt@gem_exec_suspend@basic-s4-devices@lmem0:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-16/igt@gem_exec_suspend@basic-s4-devices@lmem0.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html> (i915#7975 <https://gitlab.freedesktop.org/drm/intel/issues/7975> / i915#8213 <https://gitlab.freedesktop.org/drm/intel/issues/8213>)
>   *
> 
>     igt@gem_exec_suspend@basic-s4-devices@smem:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-tglu-7/igt@gem_exec_suspend@basic-s4-devices@smem.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html> (i915#7975 <https://gitlab.freedesktop.org/drm/intel/issues/7975> / i915#8213 <https://gitlab.freedesktop.org/drm/intel/issues/8213>)
>   *
> 
>     igt@gem_fenced_exec_thrash@no-spare-fences-busy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html> (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>) +2 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@gem_lmem_swapping@heavy-verify-multi.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@gem_lmem_swapping@random-engines.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@smem-oom:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-glk8/igt@gem_lmem_swapping@smem-oom.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html> (i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
>   *
> 
>     igt@gem_lmem_swapping@verify-random-ccs@lmem0:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html> (i915#4565 <https://gitlab.freedesktop.org/drm/intel/issues/4565>)
>   *
> 
>     igt@gem_media_fill@media-fill:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_media_fill@media-fill.html> (i915#8289 <https://gitlab.freedesktop.org/drm/intel/issues/8289>)
>   *
> 
>     igt@gem_mmap_gtt@basic-small-bo-tiledx:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@gem_mmap_gtt@basic-small-bo-tiledx.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +6 other tests skip
>   *
> 
>     igt@gem_mmap_wc@write-gtt-read-wc:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@gem_mmap_wc@write-gtt-read-wc.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>)
>   *
> 
>     igt@gem_mmap_wc@write-wc-read-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_mmap_wc@write-wc-read-gtt.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +3 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads-display:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_partial_pwrite_pread@writes-after-reads-display.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +2 other tests skip
>   *
> 
>     igt@gem_pxp@regular-baseline-src-copy-readible:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_pxp@regular-baseline-src-copy-readible.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +1 other test skip
>   *
> 
>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +1 other test skip
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +4 other tests skip
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-ctx-execution:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html> (i915#8428 <https://gitlab.freedesktop.org/drm/intel/issues/8428>) +1 other test skip
>   *
> 
>     igt@gem_softpin@evict-snoop:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_softpin@evict-snoop.html> (i915#4885 <https://gitlab.freedesktop.org/drm/intel/issues/4885>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_softpin@evict-snoop.html> (i915#4885 <https://gitlab.freedesktop.org/drm/intel/issues/4885>)
> 
>   *
> 
>     igt@gem_tiled_blits@basic:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_tiled_blits@basic.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 other test skip
>   *
> 
>     igt@gem_tiled_pread_basic:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_tiled_pread_basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>)
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_tiled_pread_basic.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>)
> 
>   *
> 
>     igt@gem_tiled_pread_pwrite:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_tiled_pread_pwrite.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@dmabuf-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_userptr_blits@dmabuf-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +3 other tests skip
>   *
> 
>     igt@gem_userptr_blits@forbidden-operations:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_userptr_blits@forbidden-operations.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_userptr_blits@forbidden-operations.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
> 
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-busy:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@gem_userptr_blits@map-fixed-invalidate-busy.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297> / i915#4880 <https://gitlab.freedesktop.org/drm/intel/issues/4880>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-cycles:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@gem_userptr_blits@unsync-unmap-cycles.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gem_userptr_blits@vma-merge.html> (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>   *
> 
>     igt@gen7_exec_parse@chained-batch:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gen7_exec_parse@chained-batch.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +2 other tests skip
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@gen9_exec_parse@allowed-all.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@gen9_exec_parse@allowed-single.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gen9_exec_parse@allowed-single.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +1 other test skip
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-glk8/igt@gen9_exec_parse@allowed-single.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-glk4/igt@gen9_exec_parse@allowed-single.html> (i915#5566 <https://gitlab.freedesktop.org/drm/intel/issues/5566>)
> 
>   *
> 
>     igt@gen9_exec_parse@cmd-crossing-page:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@gen9_exec_parse@cmd-crossing-page.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527> / i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html> (i915#9200 <https://gitlab.freedesktop.org/drm/intel/issues/9200>)
>   *
> 
>     igt@i915_module_load@resize-bar:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@i915_module_load@resize-bar.html> (i915#6412 <https://gitlab.freedesktop.org/drm/intel/issues/6412>)
>   *
> 
>     igt@i915_pipe_stress@stress-xrgb8888-ytiled:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html> (i915#7091 <https://gitlab.freedesktop.org/drm/intel/issues/7091>)
>   *
> 
>     igt@i915_pm_freq_mult@media-freq@gt0:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@i915_pm_freq_mult@media-freq@gt0.html> (i915#6590 <https://gitlab.freedesktop.org/drm/intel/issues/6590>)
>   *
> 
>     igt@i915_pm_freq_mult@media-freq@gt1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@i915_pm_freq_mult@media-freq@gt1.html> (i915#6590 <https://gitlab.freedesktop.org/drm/intel/issues/6590>) +1 other test skip
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html> (fdo#109293 <https://bugs.freedesktop.org/show_bug.cgi?id=109293>)
>   *
> 
>     igt@i915_pm_rps@reset:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-snb5/igt@i915_pm_rps@reset.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-snb1/igt@i915_pm_rps@reset.html> (i915#7790 <https://gitlab.freedesktop.org/drm/intel/issues/7790>)
>   *
> 
>     igt@i915_pm_rps@thresholds-idle-park@gt0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@i915_pm_rps@thresholds-idle-park@gt0.html> (i915#8925 <https://gitlab.freedesktop.org/drm/intel/issues/8925>)
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@i915_suspend@fence-restore-tiled2untiled.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +5 other tests skip
>   *
> 
>     igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>)
> 
>   *
> 
>     igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-6/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html> (i915#8247 <https://gitlab.freedesktop.org/drm/intel/issues/8247>) +3 other tests fail
>   *
> 
>     igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html> (i915#8247 <https://gitlab.freedesktop.org/drm/intel/issues/8247>) +3 other tests fail
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1769 <https://gitlab.freedesktop.org/drm/intel/issues/1769>)
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-0:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615> / i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>   *
> 
>     igt@kms_big_fb@linear-16bpp-rotate-270:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_big_fb@linear-16bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>   *
> 
>     igt@kms_big_fb@x-tiled-32bpp-rotate-270:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +2 other tests skip
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> (i915#3638 <https://gitlab.freedesktop.org/drm/intel/issues/3638>) +1 other test skip
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +2 other tests skip
> 
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +11 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-addfb-size-overflow:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_big_fb@y-tiled-addfb-size-overflow.html> (i915#6187 <https://gitlab.freedesktop.org/drm/intel/issues/6187>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html> (i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html> (i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +5 other tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_cdclk@mode-transition.html> (i915#3742 <https://gitlab.freedesktop.org/drm/intel/issues/3742>)
>   *
> 
>     igt@kms_cdclk@mode-transition-all-outputs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#4087 <https://gitlab.freedesktop.org/drm/intel/issues/4087> / i915#7213 <https://gitlab.freedesktop.org/drm/intel/issues/7213>)
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html> (i915#4087 <https://gitlab.freedesktop.org/drm/intel/issues/4087>) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_color@degamma:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_chamelium_color@degamma.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_chamelium_color@degamma.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 other test skip
> 
>   *
> 
>     igt@kms_chamelium_edid@dp-mode-timings:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@kms_chamelium_edid@dp-mode-timings.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +7 other tests skip
>   *
> 
>     igt@kms_chamelium_frames@dp-crc-single:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_chamelium_frames@dp-crc-single.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +2 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-fast:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_chamelium_hpd@dp-hpd-fast.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +1 other test skip
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-0:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@kms_content_protection@dp-mst-lic-type-0.html> (i915#3299 <https://gitlab.freedesktop.org/drm/intel/issues/3299>)
>   *
> 
>     igt@kms_content_protection@dp-mst-type-1:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_content_protection@dp-mst-type-1.html> (i915#3116 <https://gitlab.freedesktop.org/drm/intel/issues/3116> / i915#3299 <https://gitlab.freedesktop.org/drm/intel/issues/3299>)
>   *
> 
>     igt@kms_content_protection@lic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_content_protection@lic.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>   *
> 
>     igt@kms_content_protection@srm@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html> (i915#7173 <https://gitlab.freedesktop.org/drm/intel/issues/7173>)
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-512x170:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-32x10:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_cursor_crc@cursor-sliding-32x10.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_cursor_crc@cursor-sliding-32x10.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8814 <https://gitlab.freedesktop.org/drm/intel/issues/8814>)
> 
>   *
> 
>     igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html> (i915#3546 <https://gitlab.freedesktop.org/drm/intel/issues/3546>)
>   *
> 
>     igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +2 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html> (i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
> 
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
>   *
> 
>     igt@kms_cursor_legacy@single-move@all-pipes:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-6/igt@kms_cursor_legacy@single-move@all-pipes.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html> (i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017>)
>   *
> 
>     igt@kms_display_modes@extended-mode-basic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_display_modes@extended-mode-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html> (i915#3804 <https://gitlab.freedesktop.org/drm/intel/issues/3804>)
>   *
> 
>     igt@kms_draw_crc@draw-method-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-wc.html> (i915#8812 <https://gitlab.freedesktop.org/drm/intel/issues/8812>)
>   *
> 
>     igt@kms_dsc@dsc-with-bpc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_dsc@dsc-with-bpc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_flip@2x-dpms-vs-vblank-race:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_flip@2x-dpms-vs-vblank-race.html> (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +1 other test skip
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
> 
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-snb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767>)
>   *
> 
>     igt@kms_flip@2x-modeset-vs-vblank-race:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_flip@2x-modeset-vs-vblank-race.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +6 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html> (i915#8810 <https://gitlab.freedesktop.org/drm/intel/issues/8810>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8810 <https://gitlab.freedesktop.org/drm/intel/issues/8810>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html> (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +28 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html> (i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +21 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html> (i915#3458 <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +11 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html> (i915#3458 <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +9 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +3 other tests skip
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_hdr@static-toggle.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>) +3 other tests skip
>   *
> 
>     igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
> 
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-5/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) +4 other tests fail
>   *
> 
>     igt@kms_plane_scaling@invalid-num-scalers:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-snb4/igt@kms_plane_scaling@invalid-num-scalers.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +21 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +19 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +5 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +1 other test skip
>   *
> 
>     igt@kms_prime@basic-crc-hybrid:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-3/igt@kms_prime@basic-crc-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524> / i915#6805 <https://gitlab.freedesktop.org/drm/intel/issues/6805>) +2 other tests skip
>   *
> 
>     igt@kms_prime@basic-modeset-hybrid:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_prime@basic-modeset-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_prime@basic-modeset-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524>)
> 
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_psr2_su@frontbuffer-xrgb8888.html> (i915#9683 <https://gitlab.freedesktop.org/drm/intel/issues/9683>) +1 other test skip
>   *
> 
>     igt@kms_psr@psr2_cursor_mmap_cpu:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_psr@psr2_cursor_mmap_cpu.html> (i915#9681 <https://gitlab.freedesktop.org/drm/intel/issues/9681>) +3 other tests skip
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_onoff:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@kms_psr@psr2_sprite_plane_onoff.html> (i915#9673 <https://gitlab.freedesktop.org/drm/intel/issues/9673>)
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#9685 <https://gitlab.freedesktop.org/drm/intel/issues/9685>)
>   *
> 
>     igt@kms_rotation_crc@exhaust-fences:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@kms_rotation_crc@exhaust-fences.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>) +1 other test skip
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>   *
> 
>     igt@kms_setmode@basic@pipe-a-hdmi-a-1:
> 
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-snb1/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html> (i915#5465 <https://gitlab.freedesktop.org/drm/intel/issues/5465>) +1 other test fail
>   *
> 
>     igt@kms_setmode@invalid-clone-single-crtc-stealing:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_setmode@invalid-clone-single-crtc-stealing.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) +1 other test fail
>   *
> 
>     igt@kms_vrr@flip-dpms:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@kms_vrr@flip-dpms.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +2 other tests skip
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-10/igt@kms_writeback@writeback-pixel-formats.html> (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@perf@global-sseu-config:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@perf@global-sseu-config.html> (i915#7387 <https://gitlab.freedesktop.org/drm/intel/issues/7387>)
>   *
> 
>     igt@perf@unprivileged-single-ctx-counters:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@perf@unprivileged-single-ctx-counters.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>   *
> 
>     igt@perf_pmu@frequency@gt0:
> 
>       o
> 
>         shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@perf_pmu@frequency@gt0.html> (i915#6806 <https://gitlab.freedesktop.org/drm/intel/issues/6806>)
> 
>       o
> 
>         shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@perf_pmu@frequency@gt0.html> (i915#6806 <https://gitlab.freedesktop.org/drm/intel/issues/6806>)
> 
>   *
> 
>     igt@prime_udl:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@prime_udl.html> (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
>   *
> 
>     igt@prime_vgem@fence-read-hang:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@prime_vgem@fence-read-hang.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>   *
> 
>     igt@v3d/v3d_submit_cl@bad-perfmon:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@v3d/v3d_submit_cl@bad-perfmon.html> (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315> / i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +2 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_csd@single-out-sync:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@v3d/v3d_submit_csd@single-out-sync.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +8 other tests skip
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@v3d/v3d_submit_csd@single-out-sync.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +2 other tests skip
> 
>   *
> 
>     igt@v3d/v3d_wait_bo@used-bo:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-8/igt@v3d/v3d_wait_bo@used-bo.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +6 other tests skip
>   *
> 
>     igt@vc4/vc4_perfmon@create-perfmon-0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-2/igt@vc4/vc4_perfmon@create-perfmon-0.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +5 other tests skip
>   *
> 
>     igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +1 other test skip
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +3 other tests skip
> 
>   *
> 
>     igt@vc4/vc4_tiling@set-bad-flags:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-glk8/igt@vc4/vc4_tiling@set-bad-flags.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +37 other tests skip
>   *
> 
>     igt@vc4/vc4_wait_bo@used-bo-1ns:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-2/igt@vc4/vc4_wait_bo@used-bo-1ns.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +1 other test skip
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_eio@reset-stress:
> 
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-15/igt@gem_eio@reset-stress.html> (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-13/igt@gem_eio@reset-stress.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-11/igt@gem_eio@unwedge-stress.html> (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-6/igt@gem_eio@unwedge-stress.html>
>   *
> 
>     igt@gem_eio@wait-wedge-immediate:
> 
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-2/igt@gem_eio@wait-wedge-immediate.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@gem_eio@wait-wedge-immediate.html>
>   *
> 
>     {igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0}:
> 
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html> (i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html>
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> +1 other test pass
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> +2 other tests pass
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html> (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html>
>   *
> 
>     {igt@kms_pm_rpm@dpms-mode-unset-non-lpsp}:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/intel/issues/9519>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html>
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html> +1 other test pass
>   *
> 
>     igt@sw_sync@timeline_closed:
> 
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-7/igt@sw_sync@timeline_closed.html> (i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017> / i915#9157 <https://gitlab.freedesktop.org/drm/intel/issues/9157>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-2/igt@sw_sync@timeline_closed.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o shard-dg2: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html> (i915#4936 <https://gitlab.freedesktop.org/drm/intel/issues/4936> / i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>) -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html> (i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
>   *
> 
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
> 
>       o
> 
>         shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
> 
>       o
> 
>         shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#9531 <https://gitlab.freedesktop.org/drm/intel/issues/9531>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098> / i915#9531 <https://gitlab.freedesktop.org/drm/intel/issues/9531>)
> 
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html> (i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html> (i915#4423 <https://gitlab.freedesktop.org/drm/intel/issues/4423> / i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   *
> 
>     igt@kms_content_protection@type1:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-11/igt@kms_content_protection@type1.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118> / i915#7162 <https://gitlab.freedesktop.org/drm/intel/issues/7162>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-6/igt@kms_content_protection@type1.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o
> 
>         shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg2-10/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg2-6/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +1 other test skip
> 
>       o
> 
>         shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-2/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840> / i915#9159 <https://gitlab.freedesktop.org/drm/intel/issues/9159>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-1/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098> / i915#9159 <https://gitlab.freedesktop.org/drm/intel/issues/9159>)
> 
>   *
> 
>     igt@kms_dsc@dsc-with-formats:
> 
>       o shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-mtlp-6/igt@kms_dsc@dsc-with-formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-mtlp-5/igt@kms_dsc@dsc-with-formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-onoff.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#4423 <https://gitlab.freedesktop.org/drm/intel/issues/4423>)
>   *
> 
>     igt@kms_tiled_display@basic-test-pattern:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13905/shard-dg1-16/igt@kms_tiled_display@basic-test-pattern.html> (i915#8623 <https://gitlab.freedesktop.org/drm/intel/issues/8623>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126538v5/shard-dg1-12/igt@kms_tiled_display@basic-test-pattern.html> (i915#4423 <https://gitlab.freedesktop.org/drm/intel/issues/4423> / i915#8623 <https://gitlab.freedesktop.org/drm/intel/issues/8623>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_13905 -> Patchwork_126538v5
> 
> CI-20190529: 20190529
> CI_DRM_13905: dbdb47c227dc21b7bf98ada039bf42aac4b58b8b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_126538v5: dbdb47c227dc21b7bf98ada039bf42aac4b58b8b @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

