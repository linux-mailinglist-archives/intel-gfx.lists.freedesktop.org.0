Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A12184DC75
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 10:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E17710E1E4;
	Thu,  8 Feb 2024 09:10:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EZmfX58r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D84110E1E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 09:10:54 +0000 (UTC)
Received: by mail-lf1-f44.google.com with SMTP id
 2adb3069b0e04-511234430a4so3223568e87.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Feb 2024 01:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1707383452; x=1707988252; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=6SYBNGAS1YH8FbcfLC7TXuYkYbWFl+VqgFXXSw5yGWw=;
 b=EZmfX58rzBKbCQvCLxAeWZP645BcktMPEFEFsrLpV8cG+leB6rWNJNtaWXAxPXSdon
 uxxQZ2uiSxUtam3a6omKVHLN1HPUAona1fpb7vXo7pTWp0aPMF16WSAoTkLZgHqm/fHs
 rcA5dehdK1q746jcXSRlhsszOzqY13+s67G67HDTp3NhUsU0D1fZFvumUYO0fXGGHv63
 /JB/7fzpNmMU/AlFPII5jvdvVoI2F1l7nRmlyinWCFubEzsnLqVyZCeBmD0VxCbJkXCj
 BcMc+K6B4+d9FJg6GubYTxBQQCn0gu7Hz5i1oRtDjOSTXxP886dl4eWiGIWKLwbwyNCX
 JGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707383452; x=1707988252;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=6SYBNGAS1YH8FbcfLC7TXuYkYbWFl+VqgFXXSw5yGWw=;
 b=COwQ6Bx8J+SyTatkbJDMF6WyxQ7DE30+OOtD05rErCBYCN+dmotsuViPlbN4dYcR47
 GS/TCjgVSCCNy9z9gk80id2l302sJWnmcP3EoyiqYFCkkIJBr7ikYkxXgdeoymZLdkR1
 emqYd9I3wYyLueFEtUkONnOJK3oJRZh0l7O+puDwT1z6gfqEfbvh3CWP+Tpkd7N7adB8
 FHwse43TtdAy8eXHSxNB9OzVm3ltBuvT+/MsbC8LXUxR5iwsEcYtCeydornbz5/L8nj4
 gCoE1ZoS3pUfmVzVy3Gf3TCtHSBwdxNWN/I4ou0GRZkxqzWkES3lzLojbbhZcGKV3XEY
 U/Zw==
X-Gm-Message-State: AOJu0Yy4x7giH/Ni/f4Mz0kGkTeyUgxWN1MAs/In6YjHD9HFEwyTAcNh
 Lu5+6wxZz8aZ6LcAlQRCdWr/b3I+29J6cQgTizhwBneZJOiryWNZWRL+QVCpS/rS0Q==
X-Google-Smtp-Source: AGHT+IHo7ab61Z+lKRW01D7MQv9FJtGdDna03Po8tLFwoHnXWmFcaHY/r+1wuQW9VDDAOy8E04q0Ng==
X-Received: by 2002:ac2:59c2:0:b0:511:2e7c:768f with SMTP id
 x2-20020ac259c2000000b005112e7c768fmr5343796lfn.46.1707383451320; 
 Thu, 08 Feb 2024 01:10:51 -0800 (PST)
Received: from [0.0.0.0] ([134.134.139.70])
 by smtp.googlemail.com with ESMTPSA id
 hi16-20020a05600c535000b0040efa7e0ef6sm383297wmb.1.2024.02.08.01.10.48
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 08 Feb 2024 01:10:50 -0800 (PST)
Message-ID: <8e6739d2-38eb-499e-ac4d-e88aeb4c54be@gmail.com>
Date: Thu, 8 Feb 2024 11:10:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Enable_ccs_c?=
 =?UTF-8?Q?ompressed_framebuffers_on_Xe2_=28rev5=29?=
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20240202150602.430036-1-juhapekka.heikkila@gmail.com>
 <170718567081.1024297.15787822571725786742@5338d5abeb45>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <170718567081.1024297.15787822571725786742@5338d5abeb45>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

these reported regressions have nothing to do with my changes

On 6.2.2024 4.14, Patchwork wrote:
> *Patch Details*
> *Series:*	Enable ccs compressed framebuffers on Xe2 (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/129471/ 
> <https://patchwork.freedesktop.org/series/129471/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_14227_full -> Patchwork_129471v5_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_129471v5_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_129471v5_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (8 -> 8)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_129471v5_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_softpin@noreloc-s3.html>
>   *
> 
>     igt@kms_cursor_legacy@single-move@pipe-a:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-2/igt@kms_cursor_legacy@single-move@pipe-a.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_cursor_legacy@single-move@pipe-a.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
> 
>       o shard-tglu: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html>
>       o shard-dg2: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-mtlp-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html>
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-glk4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_xrgb1555.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list:
> 
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html> -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html>
>       o shard-mtlp: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-mtlp-2/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_build_fourcc_list.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-glk4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html> -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_129471v5_full that come from 
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
>     igt@api_intel_bb@object-reloc-purge-cache:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@api_intel_bb@object-reloc-purge-cache.html> (i915#8411 <https://gitlab.freedesktop.org/drm/intel/issues/8411>)
>   *
> 
>     igt@device_reset@unbind-cold-reset-rebind:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@device_reset@unbind-cold-reset-rebind.html> (i915#7701 <https://gitlab.freedesktop.org/drm/intel/issues/7701>)
>   *
> 
>     igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit:
> 
>       o shard-snb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb2/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_limit.html> (i915#10140 <https://gitlab.freedesktop.org/drm/intel/issues/10140>)
>   *
> 
>     igt@drm_fdinfo@most-busy-check-all@rcs0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html> (i915#7742 <https://gitlab.freedesktop.org/drm/intel/issues/7742>)
>   *
> 
>     igt@drm_fdinfo@most-busy-check-all@vcs0:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@drm_fdinfo@most-busy-check-all@vcs0.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +11 other tests skip
>   *
> 
>     igt@drm_fdinfo@virtual-busy-idle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@drm_fdinfo@virtual-busy-idle.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>)
>   *
> 
>     igt@gem_ccs@ctrl-surf-copy-new-ctx:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html> (i915#9323 <https://gitlab.freedesktop.org/drm/intel/issues/9323>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-threads:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@gem_close_race@multigpu-basic-threads.html> (i915#7697 <https://gitlab.freedesktop.org/drm/intel/issues/7697>)
>   *
> 
>     igt@gem_create@create-ext-set-pat:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@gem_create@create-ext-set-pat.html> (i915#8562 <https://gitlab.freedesktop.org/drm/intel/issues/8562>)
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>   *
> 
>     igt@gem_ctx_persistence@file:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb2/igt@gem_ctx_persistence@file.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>)
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-hostile:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html> (i915#8555 <https://gitlab.freedesktop.org/drm/intel/issues/8555>) +1 other test skip
>   *
> 
>     igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html> (i915#5882 <https://gitlab.freedesktop.org/drm/intel/issues/5882>) +9 other tests skip
>   *
> 
>     igt@gem_ctx_sseu@invalid-args:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_ctx_sseu@invalid-args.html> (i915#280 <https://gitlab.freedesktop.org/drm/intel/issues/280>)
>   *
> 
>     igt@gem_ctx_sseu@mmap-args:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_ctx_sseu@mmap-args.html> (i915#280 <https://gitlab.freedesktop.org/drm/intel/issues/280>)
>   *
> 
>     igt@gem_eio@hibernate:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-7/igt@gem_eio@hibernate.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-10/igt@gem_eio@hibernate.html> (i915#10030 <https://gitlab.freedesktop.org/drm/intel/issues/10030> / i915#7975 <https://gitlab.freedesktop.org/drm/intel/issues/7975> / i915#8213 <https://gitlab.freedesktop.org/drm/intel/issues/8213>)
>   *
> 
>     igt@gem_eio@in-flight-contexts-1us:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html> (i915#9562 <https://gitlab.freedesktop.org/drm/intel/issues/9562>)
>   *
> 
>     igt@gem_exec_balancer@sliced:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_exec_balancer@sliced.html> (i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>   *
> 
>     igt@gem_exec_capture@capture-invisible@lmem0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html> (i915#6334 <https://gitlab.freedesktop.org/drm/intel/issues/6334>) +1 other test skip
>   *
> 
>     igt@gem_exec_capture@many-4k-incremental:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_exec_capture@many-4k-incremental.html> (i915#9606 <https://gitlab.freedesktop.org/drm/intel/issues/9606>)
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@gem_exec_capture@many-4k-incremental.html> (i915#9606 <https://gitlab.freedesktop.org/drm/intel/issues/9606>)
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-8/igt@gem_exec_fair@basic-pace-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-throttle:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_exec_fair@basic-throttle.html> (i915#4473 <https://gitlab.freedesktop.org/drm/intel/issues/4473> / i915#4771 <https://gitlab.freedesktop.org/drm/intel/issues/4771>)
>   *
> 
>     igt@gem_exec_fence@syncobj-backward-timeline-chain-engines:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb4/igt@gem_exec_fence@syncobj-backward-timeline-chain-engines.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +74 other tests skip
>   *
> 
>     igt@gem_exec_flush@basic-uc-set-default:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@gem_exec_flush@basic-uc-set-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539>)
>   *
> 
>     igt@gem_exec_flush@basic-wb-ro-before-default:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_exec_flush@basic-wb-ro-before-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/intel/issues/4852>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-read:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_exec_reloc@basic-gtt-read.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +4 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-scanout:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +5 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-wc-active:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_exec_reloc@basic-write-wc-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>)
>   *
> 
>     igt@gem_fence_thrash@bo-write-verify-x:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_fence_thrash@bo-write-verify-x.html> (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>) +2 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random-ccs:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@random:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk4/igt@gem_lmem_swapping@random.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_lmem_swapping@smem-oom@lmem0:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html> (i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
>   *
> 
>     igt@gem_mmap@pf-nonblock:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_mmap@pf-nonblock.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +5 other tests skip
>   *
> 
>     igt@gem_mmap@short-mmap:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_mmap@short-mmap.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +1 other test skip
>   *
> 
>     igt@gem_mmap_gtt@coherency:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_mmap_gtt@coherency.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +1 other test skip
>   *
> 
>     igt@gem_mmap_gtt@cpuset-big-copy-odd:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-copy-odd.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +7 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@reads-uncached:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_partial_pwrite_pread@reads-uncached.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +2 other tests skip
>   *
> 
>     igt@gem_pxp@display-protected-crc:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@gem_pxp@display-protected-crc.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-ctx-execution:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@gem_pxp@verify-pxp-stale-ctx-execution.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +1 other test skip
>   *
> 
>     igt@gem_readwrite@new-obj:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_readwrite@new-obj.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +2 other tests skip
>   *
> 
>     igt@gem_render_copy@linear-to-vebox-yf-tiled:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_render_copy@linear-to-vebox-yf-tiled.html> (i915#8428 <https://gitlab.freedesktop.org/drm/intel/issues/8428>)
>   *
> 
>     igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +6 other tests skip
>   *
> 
>     igt@gem_unfence_active_buffers:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gem_unfence_active_buffers.html> (i915#4879 <https://gitlab.freedesktop.org/drm/intel/issues/4879>)
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-busy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gem_userptr_blits@map-fixed-invalidate-busy.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297> / i915#4880 <https://gitlab.freedesktop.org/drm/intel/issues/4880>)
>   *
> 
>     igt@gem_userptr_blits@readonly-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@gem_userptr_blits@readonly-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +1 other test skip
>   *
> 
>     igt@gen7_exec_parse@cmd-crossing-page:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@gen7_exec_parse@cmd-crossing-page.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@gen9_exec_parse@allowed-single.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +1 other test skip
>   *
> 
>     igt@gen9_exec_parse@batch-without-end:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@gen9_exec_parse@batch-without-end.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@cmd-crossing-page:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@gen9_exec_parse@cmd-crossing-page.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html> (i915#10137 <https://gitlab.freedesktop.org/drm/intel/issues/10137> / i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982> / i915#9849 <https://gitlab.freedesktop.org/drm/intel/issues/9849>)
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html> (i915#10137 <https://gitlab.freedesktop.org/drm/intel/issues/10137> / i915#9200 <https://gitlab.freedesktop.org/drm/intel/issues/9200>)
>   *
> 
>     igt@i915_pm_freq_api@freq-reset:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@i915_pm_freq_api@freq-reset.html> (i915#8399 <https://gitlab.freedesktop.org/drm/intel/issues/8399>)
>   *
> 
>     igt@i915_pm_rps@min-max-config-idle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@i915_pm_rps@min-max-config-idle.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>   *
> 
>     igt@i915_pm_rps@reset:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb7/igt@i915_pm_rps@reset.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb2/igt@i915_pm_rps@reset.html> (i915#10137 <https://gitlab.freedesktop.org/drm/intel/issues/10137> / i915#7790 <https://gitlab.freedesktop.org/drm/intel/issues/7790>)
>   *
> 
>     igt@i915_pm_rps@waitboost:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@i915_pm_rps@waitboost.html> (i915#8346 <https://gitlab.freedesktop.org/drm/intel/issues/8346>)
>   *
> 
>     igt@i915_query@query-topology-known-pci-ids:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@i915_query@query-topology-known-pci-ids.html> (fdo#109303 <https://bugs.freedesktop.org/show_bug.cgi?id=109303>)
>   *
> 
>     igt@intel_hwmon@hwmon-read:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@intel_hwmon@hwmon-read.html> (i915#7707 <https://gitlab.freedesktop.org/drm/intel/issues/7707>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>   *
> 
>     igt@kms_addfb_basic@bo-too-small-due-to-tiling:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>)
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-270:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-64bpp-rotate-180:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-mtlp-2/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html> (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>   *
> 
>     igt@kms_big_fb@4-tiled-addfb:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_big_fb@4-tiled-addfb.html> (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-90:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +2 other tests skip
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / i915#3638 <https://gitlab.freedesktop.org/drm/intel/issues/3638>)
>   *
> 
>     igt@kms_big_fb@y-tiled-64bpp-rotate-0:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html> (i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +8 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html> (i915#6187 <https://gitlab.freedesktop.org/drm/intel/issues/6187>)
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>) +2 other tests fail
>   *
> 
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) +1 other test skip
>   *
> 
>     igt@kms_big_joiner@basic:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_big_joiner@basic.html> (i915#2705 <https://gitlab.freedesktop.org/drm/intel/issues/2705>)
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf-tiled-ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf-tiled-ccs.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +11 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_ccs@pipe-c-crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +7 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +13 other tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition-all-outputs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#7213 <https://gitlab.freedesktop.org/drm/intel/issues/7213>)
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html> (i915#4087 <https://gitlab.freedesktop.org/drm/intel/issues/4087>) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_audio@dp-audio:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_chamelium_audio@dp-audio.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_color@degamma:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_chamelium_color@degamma.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_chamelium_frames@hdmi-crc-fast:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_chamelium_frames@hdmi-crc-fast.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +6 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-0:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html> (i915#3116 <https://gitlab.freedesktop.org/drm/intel/issues/3116>)
>   *
> 
>     igt@kms_content_protection@mei-interface:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_content_protection@mei-interface.html> (i915#8063 <https://gitlab.freedesktop.org/drm/intel/issues/8063> / i915#9433 <https://gitlab.freedesktop.org/drm/intel/issues/9433>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_content_protection@srm.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_content_protection@srm.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x170:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>)
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-max-size:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_cursor_crc@cursor-offscreen-max-size.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8814 <https://gitlab.freedesktop.org/drm/intel/issues/8814>)
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-32x32:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x512:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x512.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +2 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-32x32:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +5 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +6 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +3 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html> (i915#9809 <https://gitlab.freedesktop.org/drm/intel/issues/9809>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>   *
> 
>     igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#9227 <https://gitlab.freedesktop.org/drm/intel/issues/9227>)
>   *
> 
>     igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#9723 <https://gitlab.freedesktop.org/drm/intel/issues/9723>)
>   *
> 
>     igt@kms_dirtyfb@psr-dirtyfb-ioctl:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html> (i915#9723 <https://gitlab.freedesktop.org/drm/intel/issues/9723>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html> (i915#3804 <https://gitlab.freedesktop.org/drm/intel/issues/3804>)
>   *
> 
>     igt@kms_draw_crc@draw-method-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_draw_crc@draw-method-mmap-wc.html> (i915#8812 <https://gitlab.freedesktop.org/drm/intel/issues/8812>)
>   *
> 
>     igt@kms_dsc@dsc-with-formats:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_dsc@dsc-with-formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/intel/issues/3840>) +1 other test skip
>   *
> 
>     igt@kms_fbcon_fbt@psr:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_fbcon_fbt@psr.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>)
>   *
> 
>     igt@kms_feature_discovery@dp-mst:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_feature_discovery@dp-mst.html> (i915#9337 <https://gitlab.freedesktop.org/drm/intel/issues/9337>)
>   *
> 
>     igt@kms_fence_pin_leak:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_fence_pin_leak.html> (i915#4881 <https://gitlab.freedesktop.org/drm/intel/issues/4881>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-wf_vblank:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_flip@2x-flip-vs-wf_vblank.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +5 other tests skip
>   *
> 
>     igt@kms_flip@2x-plain-flip-ts-check:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_flip@2x-plain-flip-ts-check.html> (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +3 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2 other tests skip
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-pwrite.html> (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +63 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-tiling-y:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-tiling-y.html> (i915#10055 <https://gitlab.freedesktop.org/drm/intel/issues/10055>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html> (i915#3458 <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html> (i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +14 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +68 other tests skip
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html> (i915#3023 <https://gitlab.freedesktop.org/drm/intel/issues/3023>) +11 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +15 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>)
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_hdr@static-swap.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>   *
> 
>     igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3 other tests skip
>   *
> 
>     igt@kms_plane_multiple@tiling-yf:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@kms_plane_multiple@tiling-yf.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8806 <https://gitlab.freedesktop.org/drm/intel/issues/8806>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8806 <https://gitlab.freedesktop.org/drm/intel/issues/8806>)
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html> (i915#8292 <https://gitlab.freedesktop.org/drm/intel/issues/8292>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html> (i915#9423 <https://gitlab.freedesktop.org/drm/intel/issues/9423>) +7 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c-hdmi-a-3.html> (i915#9423 <https://gitlab.freedesktop.org/drm/intel/issues/9423>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html> (i915#9423 <https://gitlab.freedesktop.org/drm/intel/issues/9423>) +7 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235> / i915#9423 <https://gitlab.freedesktop.org/drm/intel/issues/9423>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-b-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-20x20@pipe-b-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +6 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +5 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-edp-1.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>)
>   *
> 
>     igt@kms_pm_dc@dc6-psr:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@kms_pm_dc@dc6-psr.html> (i915#9685 <https://gitlab.freedesktop.org/drm/intel/issues/9685>)
>   *
> 
>     igt@kms_pm_lpsp@kms-lpsp:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_pm_lpsp@kms-lpsp.html> (i915#9340 <https://gitlab.freedesktop.org/drm/intel/issues/9340>)
>   *
> 
>     igt@kms_pm_lpsp@screens-disabled:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@kms_pm_lpsp@screens-disabled.html> (i915#8430 <https://gitlab.freedesktop.org/drm/intel/issues/8430>)
>   *
> 
>     igt@kms_pm_rpm@dpms-non-lpsp:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-6/igt@kms_pm_rpm@dpms-non-lpsp.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/intel/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/intel/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/intel/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> (i915#9519 <https://gitlab.freedesktop.org/drm/intel/issues/9519>)
>   *
> 
>     igt@kms_prime@basic-crc-hybrid:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@kms_prime@basic-crc-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524>)
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> (i915#9683 <https://gitlab.freedesktop.org/drm/intel/issues/9683>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615> / i915#5289 <https://gitlab.freedesktop.org/drm/intel/issues/5289>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>)
>   *
> 
>     igt@kms_rotation_crc@sprite-rotation-90:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@kms_rotation_crc@sprite-rotation-90.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>) +1 other test skip
>   *
> 
>     igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1:
> 
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb7/igt@kms_setmode@basic@pipe-a-vga-1-pipe-b-hdmi-a-1.html> (i915#5465 <https://gitlab.freedesktop.org/drm/intel/issues/5465>) +3 other tests fail
>   *
> 
>     igt@kms_vrr@flip-basic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@kms_vrr@flip-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8808 <https://gitlab.freedesktop.org/drm/intel/issues/8808>)
>   *
> 
>     igt@perf@mi-rpc:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/intel/issues/2434>)
>   *
> 
>     igt@perf_pmu@rc6@other-idle-gt0:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@perf_pmu@rc6@other-idle-gt0.html> (i915#8516 <https://gitlab.freedesktop.org/drm/intel/issues/8516>)
>   *
> 
>     igt@prime_vgem@basic-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-2/igt@prime_vgem@basic-gtt.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>)
>   *
> 
>     igt@sriov_basic@enable-vfs-autoprobe-off:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@sriov_basic@enable-vfs-autoprobe-off.html> (i915#9917 <https://gitlab.freedesktop.org/drm/intel/issues/9917>)
>   *
> 
>     igt@syncobj_timeline@invalid-wait-zero-handles:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@syncobj_timeline@invalid-wait-zero-handles.html> (i915#9781 <https://gitlab.freedesktop.org/drm/intel/issues/9781>)
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@syncobj_timeline@invalid-wait-zero-handles.html> (i915#9781 <https://gitlab.freedesktop.org/drm/intel/issues/9781>)
>   *
> 
>     igt@syncobj_wait@invalid-wait-zero-handles:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk4/igt@syncobj_wait@invalid-wait-zero-handles.html> (i915#9779 <https://gitlab.freedesktop.org/drm/intel/issues/9779>)
>   *
> 
>     igt@tools_test@sysfs_l3_parity:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html> (fdo#109307 <https://bugs.freedesktop.org/show_bug.cgi?id=109307>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-10/igt@tools_test@sysfs_l3_parity.html> (i915#4818 <https://gitlab.freedesktop.org/drm/intel/issues/4818>)
>   *
> 
>     igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +4 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_cl@multisync-out-syncs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@v3d/v3d_submit_cl@multisync-out-syncs.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +8 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_csd@bad-multisync-extension:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-multisync-extension.html> (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +3 other tests skip
>   *
> 
>     igt@vc4/vc4_label_bo@set-bad-handle:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-3/igt@vc4/vc4_label_bo@set-bad-handle.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +3 other tests skip
>   *
> 
>     igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +7 other tests skip
>   *
> 
>     igt@vc4/vc4_tiling@get-bad-flags:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@vc4/vc4_tiling@get-bad-flags.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +3 other tests skip
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@drm_fdinfo@virtual-idle:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html> (i915#7742 <https://gitlab.freedesktop.org/drm/intel/issues/7742>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html>
>   *
> 
>     igt@gem_ctx_persistence@smoketest:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-10/igt@gem_ctx_persistence@smoketest.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-2/igt@gem_ctx_persistence@smoketest.html>
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-3/igt@gem_exec_fair@basic-none@vcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-1/igt@gem_exec_fair@basic-none@vcs0.html> +5 other tests pass
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-mtlp-1/igt@gem_workarounds@suspend-resume-fd.html> (i915#10177 <https://gitlab.freedesktop.org/drm/intel/issues/10177>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-6/igt@gem_workarounds@suspend-resume-fd.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html> (i915#10137 <https://gitlab.freedesktop.org/drm/intel/issues/10137> / i915#9200 <https://gitlab.freedesktop.org/drm/intel/issues/9200> / i915#9849 <https://gitlab.freedesktop.org/drm/intel/issues/9849>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html> (i915#10137 <https://gitlab.freedesktop.org/drm/intel/issues/10137> / i915#9200 <https://gitlab.freedesktop.org/drm/intel/issues/9200> / i915#9849 <https://gitlab.freedesktop.org/drm/intel/issues/9849>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html>
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html> (i915#10131 <https://gitlab.freedesktop.org/drm/intel/issues/10131> / i915#9820 <https://gitlab.freedesktop.org/drm/intel/issues/9820>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html>
>       o shard-dg2: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html> (i915#9820 <https://gitlab.freedesktop.org/drm/intel/issues/9820>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html>
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html> (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>   *
> 
>     igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
> 
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html> +8 other tests pass
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-mtlp-4/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-8/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html> +1 other test pass
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> (i915#9519 <https://gitlab.freedesktop.org/drm/intel/issues/9519>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> +1 other test pass
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset:
> 
>       o shard-dg1: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg1-15/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg1-18/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html>
>       o shard-tglu: DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_clip_offset.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888:
> 
>       o shard-glk: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-glk4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_abgr8888.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332:
> 
>       o shard-tglu: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb332.html>
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565:
> 
>       o shard-snb: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb5/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb1/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgb565.html> +1 other test pass
>   *
> 
>     igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgba5551:
> 
>       o shard-glk: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-glk4/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgba5551.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-glk9/igt@kms_selftest@drm_format_helper@drm_format_helper_test-drm_test_fb_xrgb8888_to_rgba5551.html>
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html>
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@kms_color@legacy-gamma-reset@pipe-a:
> 
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-mtlp-1/igt@kms_color@legacy-gamma-reset@pipe-a.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-mtlp-6/igt@kms_color@legacy-gamma-reset@pipe-a.html> (i915#9157 <https://gitlab.freedesktop.org/drm/intel/issues/9157>)
>   *
> 
>     igt@kms_content_protection@content-type-change:
> 
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb1/igt@kms_content_protection@content-type-change.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb7/igt@kms_content_protection@content-type-change.html> (i915#8816 <https://gitlab.freedesktop.org/drm/intel/issues/8816>)
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html> (i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
> 
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-snb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>)
>   *
> 
>     igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
> 
>       o shard-dg2: CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14227/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html> (i915#9351 <https://gitlab.freedesktop.org/drm/intel/issues/9351>) -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129471v5/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html> (i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_14227 -> Patchwork_129471v5
>   * Piglit: None -> piglit_4509
> 
> CI-20190529: 20190529
> CI_DRM_14227: b71b753a5041cf8869006840c7577c3bac01d1cd @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7703: c58c5fb6aa1cb7d3627a15e364816a7a2add9edc @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_129471v5: b71b753a5041cf8869006840c7577c3bac01d1cd @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

