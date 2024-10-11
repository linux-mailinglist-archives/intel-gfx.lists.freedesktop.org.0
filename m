Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84899999DA3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 09:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2773810EA5F;
	Fri, 11 Oct 2024 07:15:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="gJR4Km6K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395BB10E0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 07:15:27 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-43058268d91so15322455e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 00:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728630925; x=1729235725; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=K+HdbsNRsMRDFHZnAIfmU/vjq8WHv5ZLq+WieA3NS5M=;
 b=gJR4Km6KbuVUpKGiZVNrerV4mmhw3lSrC+rGlFvBeNV+cXYtKqCjVRcqL56hg55rqN
 lznTr/oN9qsREyB6yOH8c93PHlNisf7TqMkPS1OWStPPn9NclAbpQa8sYcSNAuNHZvMF
 yn69MaP1HJavWdPFn0AigErleOcNTQfUIHXXestURlkKd9eWpGyxPVRiJFW3HQIfygk+
 1wCbCbYPBQ/TIcw8ErEMIj9x/dOz9ZvaPqbOg2A8BDOrVapsRZ5qXzLgYYcBr0hpCwSU
 /ftnP3aTAXWRdnxXe0LjWa9GVA+l/F4WGSjFBTee2T++tfDMMF4VcfG7C9eW98Qaw+Ud
 cziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728630925; x=1729235725;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=K+HdbsNRsMRDFHZnAIfmU/vjq8WHv5ZLq+WieA3NS5M=;
 b=SFaqD5fkcrSFynRqiVIKtLphUwPN1eyD5uoSARNURIMEK0PZpiL1KKEUkv0rsmaNmo
 Mxd+bu3S8Ix4DQD/MfdbMxS6JBUhcs7R7W0VYn0xiyylwnLu6eO+ZL6ejhZv1E7uiUQG
 1fYPm1Gn0MN3qOqjs195HoOYOgiOBAueBrFD9irXqUAjmVZ2PG9w+ELfGoEzE0EE5OHD
 h3VLMmpb766vw9/Xk75Rh4/ciIrloy9mtoF+uUH7v5BJCeDIA1mgPkaiP3tmieTZRcg4
 QMv5amJx2wA3yXmc/0yLIucHxFNl1mEq+LhZEOhKv2go6kIp/O/RQCtcrHmbex9i3mtp
 TRWw==
X-Gm-Message-State: AOJu0YxQhLDffDPpWe7+EjUv6Eg/flm46KjHGlmf3ALaErY3wZEiafCs
 sMT+4USkWBRyJT/WcyAHxZF3SUMeF+bNTXtW/Rut+kl+BA0SQdV84JWtj+GiEmU=
X-Google-Smtp-Source: AGHT+IEUlXdq3NN9fGA8RSAE4Qj0oDf/XmdRe+A0wXNkL6SOFFqaZITa6/TymrQvlofKUgmHnhH+FQ==
X-Received: by 2002:a05:600c:4f0c:b0:42c:b995:20d9 with SMTP id
 5b1f17b1804b1-4311df57091mr12802205e9.28.1728630924160; 
 Fri, 11 Oct 2024 00:15:24 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.77])
 by smtp.googlemail.com with ESMTPSA id
 ffacd0b85a97d-37d4b6cf8dbsm3243625f8f.59.2024.10.11.00.15.20
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Oct 2024 00:15:23 -0700 (PDT)
Message-ID: <b143692c-84d4-4be2-8d86-4d765db0fc02@gmail.com>
Date: Fri, 11 Oct 2024 10:15:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/dis?=
 =?UTF-8?Q?play=3A_Don=27t_allow_tile4_framebuffer_to_do_hflip_on_display20_?=
 =?UTF-8?Q?or_greater?=
To: intel-gfx@lists.freedesktop.org
References: <20241007182841.2104740-1-juhapekka.heikkila@gmail.com>
 <172845790667.1207618.4737777756692017839@2413ebb6fbb6>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <172845790667.1207618.4737777756692017839@2413ebb6fbb6>
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

These regressions have nothing to do with my changes. My changes 
affected only Xe driver.

/Juha-Pekka

On 9.10.2024 10.11, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/display: Don't allow tile4 framebuffer to do hflip on 
> display20 or greater
> *URL:*	https://patchwork.freedesktop.org/series/139664/ <https:// 
> patchwork.freedesktop.org/series/139664/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/ 
> index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/ 
> index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_15489_full -> Patchwork_139664v1_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_139664v1_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_139664v1_full, please notify your bug team 
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
> Patchwork_139664v1_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_exec_balancer@smoke:
> 
>       o shard-dg1: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-dg1-13/
>         igt@gem_exec_balancer@smoke.html>
>   *
> 
>     igt@gem_exec_schedule@deep:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-glk6/
>         igt@gem_exec_schedule@deep.html> +1 other test incomplete
>   *
> 
>     igt@kms_flip@modeset-vs-vblank-race@a-hdmi-a1:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk6/igt@kms_flip@modeset-vs-vblank-race@a-
>         hdmi-a1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-glk2/igt@kms_flip@modeset-vs-vblank-
>         race@a-hdmi-a1.html> +4 other tests fail
> 
> 
>     New tests
> 
> New tests have been introduced between CI_DRM_15489_full and 
> Patchwork_139664v1_full:
> 
> 
>       New IGT tests (8)
> 
>   *
> 
>     igt@kms_universal_plane@universal-plane-functional@pipe-a-hdmi-a-2:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [2.10] s
>   *
> 
>     igt@kms_universal_plane@universal-plane-functional@pipe-a-hdmi-a-4:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [2.06] s
>   *
> 
>     igt@kms_universal_plane@universal-plane-functional@pipe-b-hdmi-a-4:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [1.89] s
>   *
> 
>     igt@kms_universal_plane@universal-plane-functional@pipe-c-hdmi-a-2:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [1.96] s
>   *
> 
>     igt@kms_universal_plane@universal-plane-functional@pipe-c-hdmi-a-4:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [1.96] s
>   *
> 
>     igt@kms_universal_plane@universal-plane-functional@pipe-d-hdmi-a-2:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [1.95] s
>   *
> 
>     igt@kms_universal_plane@universal-plane-functional@pipe-d-hdmi-a-4:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [1.91] s
>   *
> 
>     igt@kms_universal_plane@universal-plane-sanity@pipe-a-hdmi-a-2:
> 
>       o Statuses : 1 pass(s)
>       o Exec time: [0.49] s
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_139664v1_full that come from 
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
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@api_intel_bb@object-
>         reloc-purge-cache.html> (i915#8411 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>) +1 other
>         test skip
>   *
> 
>     igt@device_reset@cold-reset-bound:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@device_reset@cold-reset-
>         bound.html> (i915#11078 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/11078>)
>   *
> 
>     igt@drm_fdinfo@busy-check-all@vecs1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@drm_fdinfo@busy-check-
>         all@vecs1.html> (i915#8414 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8414>) +8 other tests skip
>   *
> 
>     igt@drm_fdinfo@isolation@vecs0:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-12/
>         igt@drm_fdinfo@isolation@vecs0.html> (i915#8414 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>) +5 other
>         tests skip
>   *
> 
>     igt@fbdev@pan:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@fbdev@pan.html> -> SKIP <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@fbdev@pan.html> (i915#2582 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2582>) +1 other test skip
>   *
> 
>     igt@gem_ccs@suspend-resume:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@gem_ccs@suspend-
>         resume.html> (i915#9323 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_create@create-ext-set-pat:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/igt@gem_create@create-
>         ext-set-pat.html> (i915#8562 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/8562>)
>   *
> 
>     igt@gem_ctx_engines@invalid-engines:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk5/igt@gem_ctx_engines@invalid-
>         engines.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-glk7/igt@gem_ctx_engines@invalid-
>         engines.html> (i915#12027 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12027>)
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-6/igt@gem_ctx_engines@invalid-
>         engines.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-mtlp-6/igt@gem_ctx_engines@invalid-
>         engines.html> (i915#12027 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12027>)
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-many:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/
>         igt@gem_ctx_persistence@heartbeat-many.html> (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-stop:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-12/
>         igt@gem_ctx_persistence@heartbeat-stop.html> (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>   *
> 
>     igt@gem_ctx_sseu@engines:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/
>         igt@gem_ctx_sseu@engines.html> (i915#280 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>   *
> 
>     igt@gem_exec_fair@basic-pace:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@gem_exec_fair@basic-
>         pace.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2842>) +3 other tests fail
>   *
> 
>     igt@gem_exec_fair@basic-pace-share:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-tglu-7/igt@gem_exec_fair@basic-pace-
>         share.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-tglu-5/igt@gem_exec_fair@basic-pace-
>         share.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2842>) +1 other test fail
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@gem_exec_fair@basic-
>         pace@rcs0.html> (i915#2876 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2876>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk4/igt@gem_exec_fair@basic-pace@vcs0.html>
>         -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-glk6/igt@gem_exec_fair@basic-
>         pace@vcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2842>) +1 other test fail
>   *
> 
>     igt@gem_exec_fair@basic-throttle:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@gem_exec_fair@basic-
>         throttle.html> (i915#3539 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3539>)
>   *
> 
>     igt@gem_exec_flush@basic-wb-rw-default:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@gem_exec_flush@basic-wb-
>         rw-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3539> / i915#4852 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>) +1 other
>         test skip
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-read:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-
>         read.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3281>) +4 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-gtt-noreloc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@gem_exec_reloc@basic-
>         write-gtt-noreloc.html> (i915#3281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +7 other
>         tests skip
>   *
> 
>     igt@gem_exec_schedule@pi-ringfull@vecs0:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@gem_exec_schedule@pi-
>         ringfull@vecs0.html> (i915#12296 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12296>) +4 other
>         tests fail
>   *
> 
>     igt@gem_exec_schedule@preempt-queue-contexts-chain:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/
>         igt@gem_exec_schedule@preempt-queue-contexts-chain.html>
>         (i915#4537 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4537> / i915#4812 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4812>)
>   *
> 
>     igt@gem_fence_thrash@bo-copy:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/igt@gem_fence_thrash@bo-
>         copy.html> (i915#4860 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4860>)
>   *
> 
>     igt@gem_fence_thrash@bo-write-verify-none:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@gem_fence_thrash@bo-
>         write-verify-none.html> (i915#4860 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>   *
> 
>     igt@gem_gtt_cpu_tlb:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-4/
>         igt@gem_gtt_cpu_tlb.html> (i915#4077 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@gem_lmem_swapping@heavy-verify-random-ccs.html> (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +1 other test skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/
>         igt@gem_lmem_swapping@parallel-random.html> (i915#4613 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +2 other
>         tests skip
>   *
> 
>     igt@gem_media_fill@media-fill:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-4/igt@gem_media_fill@media-
>         fill.html> (i915#8289 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8289>)
>   *
> 
>     igt@gem_mmap@basic:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-18/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4083>)
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/igt@gem_mmap@basic.html>
>         (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4083>)
>   *
> 
>     igt@gem_mmap_gtt@fault-concurrent-x:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@gem_mmap_gtt@fault-
>         concurrent-x.html> (i915#4077 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4077>) +5 other tests skip
>   *
> 
>     igt@gem_mmap_wc@write-prefaulted:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-4/igt@gem_mmap_wc@write-
>         prefaulted.html> (i915#4083 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4083>) +3 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/
>         igt@gem_partial_pwrite_pread@writes-after-reads.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +6 other tests skip
>   *
> 
>     igt@gem_pread@snoop:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@gem_pread@snoop.html>
>         (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3282>) +3 other tests skip
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-off-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@gem_pxp@reject-modify-
>         context-protection-off-1.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +2 other
>         tests skip
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-on:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/igt@gem_pxp@reject-
>         modify-context-protection-on.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +2 other
>         tests skip
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-
>         buf-optout-execution.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +3 other
>         tests skip
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-ctx-execution:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-18/igt@gem_pxp@verify-pxp-
>         stale-ctx-execution.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/igt@gem_pxp@verify-pxp-
>         stale-ctx-execution.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>   *
> 
>     igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-glk7/igt@gem_render_copy@y-tiled-
>         mc-ccs-to-vebox-yf-tiled.html> +7 other tests skip
>   *
> 
>     igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@gem_render_copy@y-tiled-
>         mc-ccs-to-yf-tiled-ccs.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> /
>         i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8428>) +4 other tests skip
>   *
> 
>     igt@gem_userptr_blits@create-destroy-unsync:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@gem_userptr_blits@create-
>         destroy-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3297>) +2 other tests skip
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@gem_userptr_blits@dmabuf-
>         sync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3297> / i915#3323 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323>)
>   *
> 
>     igt@gem_userptr_blits@invalid-mmap-offset-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/
>         igt@gem_userptr_blits@invalid-mmap-offset-unsync.html>
>         (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-busy:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@gem_userptr_blits@map-
>         fixed-invalidate-busy.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> /
>         i915#4880 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4880>)
>   *
> 
>     igt@gem_userptr_blits@readonly-unsync:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@gem_userptr_blits@readonly-unsync.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +1 other
>         test skip
>   *
> 
>     igt@gen9_exec_parse@bb-oversize:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@gen9_exec_parse@bb-
>         oversize.html> (i915#2527 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@bb-start-cmd:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@gen9_exec_parse@bb-
>         start-cmd.html> (i915#2856 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@cmd-crossing-page:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/igt@gen9_exec_parse@cmd-
>         crossing-page.html> (i915#2527 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2527> / i915#2856 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-rkl-2/igt@i915_module_load@reload-with-fault-
>         injection.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@i915_module_load@reload-
>         with-fault-injection.html> (i915#9820 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>       o shard-tglu: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#9820 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9820>)
>   *
> 
>     igt@i915_pipe_stress@stress-xrgb8888-untiled:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-8/igt@i915_pipe_stress@stress-xrgb8888-
>         untiled.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-5/
>         igt@i915_pipe_stress@stress-xrgb8888-untiled.html> (i915#1982
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982>)
>   *
> 
>     igt@i915_pipe_stress@stress-xrgb8888-ytiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-5/igt@i915_pipe_stress@stress-
>         xrgb8888-ytiled.html> (i915#7091 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7091>)
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/
>         igt@i915_pipe_stress@stress-xrgb8888-ytiled.html> (i915#8436
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8436>)
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-
>         idle@gt0-vecs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-dg1-14/
>         igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html> (i915#3591
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591>)
>   *
> 
>     igt@i915_query@test-query-geometry-subslices:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@i915_query@test-query-
>         geometry-subslices.html> (i915#5723 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723>)
>   *
> 
>     igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-4/igt@kms_addfb_basic@addfb25-
>         framebuffer-vs-set-tiling.html> (i915#4212 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@kms_addfb_basic@basic-y-
>         tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4215> / i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>   *
> 
>     igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html> (i915#3826
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826>)
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-14/igt@kms_async_flips@alternate-sync-
>         async-flip.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-dg1-17/
>         igt@kms_async_flips@alternate-sync-async-flip.html> (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-rkl-7/igt@kms_async_flips@alternate-sync-
>         async-flip@pipe-b-hdmi-a-1.html> -> FAIL <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-rkl-4/
>         igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-
>         a-1.html> (i915#10991 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/10991>) +1 other test fail
>   *
> 
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-
>     a-2-y-rc-ccs-cc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_async_flips@async-
>         flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html>
>         (i915#8709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8709>) +3 other tests skip
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing-
>     internal-panels:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_atomic_transition@plane-all-modeset-transition-fencing-
>         internal-panels.html> (i915#9197 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>) +3 other
>         tests skip
>   *
> 
>     igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-
>     hdmi-a-1:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-tglu-9/igt@kms_atomic_transition@plane-
>         toggle-modeset-transition@pipe-a-hdmi-a-1.html> -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-tglu-7/igt@kms_atomic_transition@plane-toggle-modeset-
>         transition@pipe-a-hdmi-a-1.html> (i915#11808 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808>) +1 other
>         test fail
>   *
> 
>     igt@kms_big_fb@4-tiled-64bpp-rotate-180:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-
>         rotate-180.html> (i915#5286 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5286>) +3 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-
>         hw-stride-64bpp-rotate-0-hflip.html> (i915#4538 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> /
>         i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5286>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/igt@kms_big_fb@4-tiled-
>         max-hw-stride-64bpp-rotate-180-async-flip.html> (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +2 other tests skip
>   *
> 
>     igt@kms_big_fb@linear-16bpp-rotate-90:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/
>         igt@kms_big_fb@linear-16bpp-rotate-90.html> +42 other tests skip
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-90:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@kms_big_fb@linear-32bpp-
>         rotate-90.html> (i915#3638 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3638>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-10/igt@kms_big_fb@y-tiled-
>         addfb-size-offset-overflow.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-8/igt@kms_big_fb@y-tiled-
>         max-hw-stride-32bpp-rotate-0-async-flip.html>
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-
>         hw-stride-32bpp-rotate-180-hflip-async-flip.html> (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) +5 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-
>         addfb-size-offset-overflow.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> /
>         i915#9197 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9197>)
>   *
> 
>     igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-
>         tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html> (i915#10307 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> /
>         i915#10434 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10434> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +7 other tests skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_ccs@bad-
>         rotation-90-4-tiled-bmg-ccs.html> (i915#12313 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>   *
> 
>     igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-2/igt@kms_ccs@crc-primary-
>         basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +90 other tests skip
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-5/igt@kms_ccs@crc-sprite-
>         planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html>
>         (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10307> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +127 other tests skip
>   *
> 
>     igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/igt@kms_ccs@missing-ccs-
>         buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +19 other tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@kms_ccs@random-ccs-
>         data-4-tiled-bmg-ccs.html> (i915#12313 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) +1 other
>         test skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-13/igt@kms_ccs@random-ccs-
>         data-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +95 other tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/igt@kms_ccs@random-ccs-
>         data-4-tiled-lnl-ccs.html> (i915#12313 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) +1 other
>         test skip
>   *
> 
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-4/igt@kms_cdclk@mode-
>         transition@pipe-d-hdmi-a-1.html> (i915#11616 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616> /
>         i915#7213 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7213>) +3 other tests skip
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_cdclk@plane-
>         scaling@pipe-d-hdmi-a-2.html> (i915#4087 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087>) +4 other
>         tests skip
>   *
> 
>     igt@kms_chamelium_color@degamma:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/
>         igt@kms_chamelium_color@degamma.html> +13 other tests skip
>   *
> 
>     igt@kms_chamelium_edid@dp-edid-resolution-list:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/
>         igt@kms_chamelium_edid@dp-edid-resolution-list.html> (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +3 other tests skip
>   *
> 
>     igt@kms_chamelium_frames@dp-crc-single:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-8/
>         igt@kms_chamelium_frames@dp-crc-single.html> (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>   *
> 
>     igt@kms_chamelium_frames@hdmi-frame-dump:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/
>         igt@kms_chamelium_frames@hdmi-frame-dump.html> (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +6 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-fast:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-13/igt@kms_chamelium_hpd@dp-
>         hpd-fast.html> (i915#7828 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7828>)
>   *
> 
>     igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@kms_chamelium_hpd@vga-
>         hpd-with-enabled-mode.html> (i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +3 other
>         tests skip
>   *
> 
>     igt@kms_color@deep-color:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/igt@kms_color@deep-
>         color.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / [i915#9979])
>   *
> 
>     igt@kms_content_protection@dp-mst-type-1:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/
>         igt@kms_content_protection@dp-mst-type-1.html> (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
>         +1 other test skip
>   *
> 
>     igt@kms_content_protection@lic-type-1:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/
>         igt@kms_content_protection@lic-type-1.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@mei-interface:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@kms_content_protection@mei-interface.html> (i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_content_protection@uevent:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/
>         igt@kms_content_protection@uevent.html> (i915#7118 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-32x32:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/
>         igt@kms_cursor_crc@cursor-offscreen-32x32.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +2 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_cursor_crc@cursor-
>         offscreen-512x512.html> (i915#11453 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x170:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_cursor_crc@cursor-
>         random-512x170.html> (i915#11453 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453>) +1 other
>         test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-32x10:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-18/igt@kms_cursor_crc@cursor-
>         rapid-movement-32x10.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/
>         igt@kms_cursor_crc@cursor-rapid-movement-32x10.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#8814 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8814>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_cursor_legacy@basic-
>         busy-flip-before-cursor-legacy.html> (i915#4103 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-
>         atomic-transitions-varying-size.html> -> FAIL <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-glk4/
>         igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-
>         size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2346>)
>   *
> 
>     igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-
>         ioctl.html> (i915#9723 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9723>)
>   *
> 
>     igt@kms_display_modes@extended-mode-basic:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/
>         igt@kms_display_modes@extended-mode-basic.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +4 other tests skip
>   *
> 
>     igt@kms_display_modes@mst-extended-mode-negative:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@kms_display_modes@mst-extended-mode-negative.html>
>         (i915#8588 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8588>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-
>         panel-6bpc@pipe-a-hdmi-a-2.html> (i915#3804 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>   *
> 
>     igt@kms_draw_crc@draw-method-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_draw_crc@draw-
>         method-mmap-gtt.html> (i915#8812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812>)
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_dsc@dsc-basic.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3840>) +1 other test skip
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/igt@kms_dsc@dsc-with-
>         output-formats.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk8/igt@kms_fbcon_fbt@fbc-suspend.html> ->
>         FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-glk2/igt@kms_fbcon_fbt@fbc-
>         suspend.html> (i915#4767 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4767>)
>   *
> 
>     igt@kms_feature_discovery@display-4x:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/
>         igt@kms_feature_discovery@display-4x.html> (i915#1839 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/igt@kms_flip@2x-flip-vs-
>         dpms-off-vs-modeset.html> (i915#3637 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-wf_vblank:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-18/igt@kms_flip@2x-flip-vs-
>         wf_vblank.html> (i915#9934 <https://gitlab.freedes>)
>   *
> 
>     igt@kms_flip@blocking-wf_vblank@c-hdmi-a1:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-tglu-4/igt@kms_flip@blocking-wf_vblank@c-
>         hdmi-a1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-tglu-4/igt@kms_flip@blocking-
>         wf_vblank@c-hdmi-a1.html> (i915#2122 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>) +6 other
>         tests fail
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-rkl-4/igt@kms_flip@flip-vs-absolute-
>         wf_vblank.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_flip@flip-vs-
>         absolute-wf_vblank.html> (i915#2122 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>)
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_flip@flip-vs-
>         absolute-wf_vblank@b-hdmi-a2.html> (i915#11961 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961>) +1 other
>         test fail
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a4:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-15/igt@kms_flip@flip-vs-expired-vblank@a-
>         hdmi-a4.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg1-16/igt@kms_flip@flip-vs-expired-
>         vblank@a-hdmi-a4.html> (i915#79 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/79>) +1 other test fail
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>     upscaling:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/
>         igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +2 other
>         tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/
>         igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>         upscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +2 other
>         tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-
>         ytilegen12rcccs-upscaling@pipe-a-valid-mode.html> (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-
>         linear-to-32bpp-linear-downscaling.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-
>         downscaling.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555>) +3 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>         upscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-12/
>         igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-
>         mmap-cpu.html> +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/
>         igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-
>         mmap-wc.html> (i915#1825 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1825>) +25 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
> 
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-
>         scndscrn-spr-indfb-draw-mmap-wc.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-snb4/
>         igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-
>         mmap-wc.html> +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-
>         rgb565-draw-render.html> -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html>
>         (i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>) +19 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-
>         mmap-cpu.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>) +9 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
> 
>       o shard-snb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-snb2/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-
>         pwrite.html> +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-
>         fullscreen.html> (i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +19 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-4/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-
>         gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8708>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/
>         igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html>
>         (i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3023>) +18 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-18/
>         igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-
>         pwrite.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-4/
>         igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-
>         mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8708>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-12/
>         igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-
>         mmap-wc.html> (i915#8708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8708>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-onoff:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/
>         igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-
>         onoff.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1825>)
>   *
> 
>     igt@kms_getfb@getfb-reject-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@kms_getfb@getfb-reject-
>         ccs.html> (i915#6118 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/6118>)
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_hdr@bpc-switch.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@invalid-hdr:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/igt@kms_hdr@invalid-
>         hdr.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-10/igt@kms_hdr@static-swap.html> -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-4/igt@kms_hdr@static-swap.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8228>)
>   *
> 
>     igt@kms_joiner@basic-force-big-joiner:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_joiner@basic-force-
>         big-joiner.html> (i915#10656 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_joiner@invalid-modeset-big-joiner:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/igt@kms_joiner@invalid-
>         modeset-big-joiner.html> (i915#10656 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-5/igt@kms_joiner@invalid-
>         modeset-big-joiner.html> (i915#10656 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_plane@pixel-format:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-8/igt@kms_plane@pixel-format.html> ->
>         SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/igt@kms_plane@pixel-format.html>
>         (i915#8825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8825>)
>   *
> 
>     igt@kms_plane@planar-pixel-format-settings:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_plane@planar-pixel-format-
>         settings.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@kms_plane@planar-pixel-
>         format-settings.html> (i915#9581 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581>)
>   *
> 
>     igt@kms_plane_lowres@tiling-yf:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_plane_lowres@tiling-
>         yf.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#8821 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-
>         factor-0-75-with-rotation@pipe-b.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_plane_scaling@plane-downscale-factor-0-75-with-
>         rotation@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) +17
>         other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-d:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-
>         factor-0-75-with-rotation@pipe-d.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_plane_scaling@plane-downscale-factor-0-75-with-
>         rotation@pipe-d.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152>) +3 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_plane_scaling@plane-scaler-
>         unity-scaling-with-rotation.html> -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_plane_scaling@plane-scaler-unity-scaling-with-
>         rotation.html> (i915#12247 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12247> / i915#8152 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152> /
>         i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9423>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_plane_scaling@plane-
>         upscale-20x20-with-pixel-format.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-
>         format.html> (i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152> / i915#9423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-format@pipe-d:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_plane_scaling@plane-
>         upscale-20x20-with-pixel-format@pipe-d.html> -> SKIP <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_plane_scaling@plane-upscale-20x20-with-pixel-
>         format@pipe-d.html> (i915#8152 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/8152>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-4/igt@kms_plane_scaling@planes-
>         downscale-factor-0-25.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#6953 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6953> / i915#9423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9423>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_plane_scaling@planes-
>         downscale-factor-0-25-unity-scaling@pipe-a.html> (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>         +7 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-scaler-unity-scaling:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-8/igt@kms_plane_scaling@planes-scaler-
>         unity-scaling.html> -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_plane_scaling@planes-scaler-unity-scaling.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152> / i915#9423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/
>         igt@kms_plane_scaling@planes-unity-scaling-downscale-
>         factor-0-25@pipe-c.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) +11
>         other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/
>         igt@kms_plane_scaling@planes-unity-scaling-downscale-
>         factor-0-5.html> (i915#6953 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6953>)
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/
>         igt@kms_plane_scaling@planes-unity-scaling-downscale-
>         factor-0-5@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) +3 other
>         tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@kms_plane_scaling@planes-
>         upscale-20x20-downscale-factor-0-25.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#9423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/
>         igt@kms_plane_scaling@planes-upscale-20x20-downscale-
>         factor-0-5.html> (i915#12247 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12247> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#6953 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6953>)
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/
>         igt@kms_plane_scaling@planes-upscale-20x20-downscale-
>         factor-0-5@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) +8 other
>         tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_plane_scaling@planes-
>         upscale-20x20-downscale-factor-0-75.html> -> SKIP <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_plane_scaling@planes-upscale-20x20-downscale-
>         factor-0-75.html> (i915#12247 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12247> / i915#6953 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152> / i915#9423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_plane_scaling@planes-
>         upscale-factor-0-25-downscale-factor-0-25.html> (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12247> / i915#6953 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6953>)
>   *
> 
>     igt@kms_pm_backlight@fade-with-dpms:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_pm_backlight@fade-
>         with-dpms.html> (i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>)
>   *
> 
>     igt@kms_pm_dc@dc6-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#5978 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5978>)
>   *
> 
>     igt@kms_pm_dc@dc9-dpms:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html>
>         (i915#3361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3361>)
>   *
> 
>     igt@kms_pm_rpm@dpms-non-lpsp:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@kms_pm_rpm@dpms-non-lpsp.html> ->
>         SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/igt@kms_pm_rpm@dpms-non-
>         lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp-stress:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-
>         stress.html> (i915#9519 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9519>)
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/igt@kms_pm_rpm@modeset-
>         non-lpsp-stress.html> (i915#9519 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-
>         overlay-plane-move-continuous-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +3 other
>         tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-
>         overlay-plane-update-continuous-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +5 other
>         tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-glk7/igt@kms_psr2_sf@fbc-psr2-
>         overlay-plane-move-continuous-exceed-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>   *
> 
>     igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@kms_psr2_sf@psr2-overlay-
>         plane-update-continuous-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +5 other
>         tests skip
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/
>         igt@kms_psr2_su@frontbuffer-xrgb8888.html> (i915#9683 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>   *
> 
>     igt@kms_psr2_su@page_flip-nv12:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@kms_psr2_su@page_flip-
>         nv12.html> (i915#9683 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9683>)
>   *
> 
>     igt@kms_psr@fbc-pr-cursor-plane-onoff:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/igt@kms_psr@fbc-pr-cursor-
>         plane-onoff.html> (i915#1072 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +14 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-psr-primary-blt:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-18/igt@kms_psr@fbc-psr-primary-
>         blt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +3 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-psr2-primary-mmap-gtt:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-glk7/igt@kms_psr@fbc-psr2-
>         primary-mmap-gtt.html> (i915#2295 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2295>)
>   *
> 
>     igt@kms_psr@fbc-psr2-primary-render:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-1/igt@kms_psr@fbc-psr2-
>         primary-render.html> (i915#9688 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9688>) +4 other tests skip
>   *
> 
>     igt@kms_psr@psr2-cursor-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_psr@psr2-cursor-
>         blt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +15 other
>         tests skip
>   *
> 
>     igt@kms_psr@psr2-cursor-plane-onoff:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/igt@kms_psr@psr2-cursor-
>         plane-onoff.html> (i915#9732 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9732>) +7 other tests skip
>   *
> 
>     igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_psr_stress_test@flip-
>         primary-invalidate-overlay.html> (i915#9685 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>) +1 other
>         test skip
>   *
> 
>     igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/
>         igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html>
>         (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5289>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@kms_rotation_crc@primary-
>         yf-tiled-reflect-x-180.html> (i915#5289 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>) +1 other
>         test skip
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-8/
>         igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5289>)
>   *
> 
>     igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@kms_rotation_crc@sprite-
>         rotation-90-pos-100-0.html> (i915#11131 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131>)
>   *
> 
>     igt@kms_setmode@basic@pipe-b-edp-1:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-
>         edp-1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-mtlp-3/igt@kms_setmode@basic@pipe-b-
>         edp-1.html> (i915#5465 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5465>) +2 other tests fail
>   *
> 
>     igt@kms_setmode@invalid-clone-single-crtc-stealing:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_setmode@invalid-
>         clone-single-crtc-stealing.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-dg2: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/
>         igt@kms_sysfs_edid_timing.html> (IGT#2 <https://
>         gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2>)
>   *
> 
>     igt@kms_vblank@ts-continuation-modeset:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_vblank@ts-continuation-
>         modeset.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/igt@kms_vblank@ts-continuation-
>         modeset.html> (i915#9197 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9197>) +46 other tests skip
>   *
> 
>     igt@kms_vrr@seamless-rr-switch-virtual:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-tglu-2/igt@kms_vrr@seamless-rr-
>         switch-virtual.html> (i915#9906 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9906>)
>   *
> 
>     igt@kms_vrr@seamless-rr-switch-vrr:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-11/igt@kms_vrr@seamless-rr-
>         switch-vrr.html> (i915#9906 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9906>) +1 other test skip
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@kms_writeback@writeback-
>         check-output.html> (i915#2437 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2437>) +1 other test skip
>   *
> 
>     igt@kms_writeback@writeback-invalid-parameters:
> 
>       o shard-mtlp: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-mtlp-8/
>         igt@kms_writeback@writeback-invalid-parameters.html> (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>   *
> 
>     igt@perf@gen12-group-concurrent-oa-buffer-read:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-8/igt@perf@gen12-group-concurrent-oa-
>         buffer-read.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@perf@gen12-group-
>         concurrent-oa-buffer-read.html> (i915#10538 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538>)
>   *
> 
>     igt@perf@global-sseu-config-invalid:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-6/igt@perf@global-sseu-config-
>         invalid.html> (i915#7387 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7387>)
>   *
> 
>     igt@perf_pmu@rc6@other-idle-gt0:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@perf_pmu@rc6@other-idle-
>         gt0.html> (i915#8516 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8516>)
>   *
> 
>     igt@sriov_basic@bind-unbind-vf:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-3/igt@sriov_basic@bind-unbind-
>         vf.html> (i915#9917 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9917>)
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg1-12/igt@sriov_basic@bind-unbind-
>         vf.html> (i915#9917 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9917>)
>   *
> 
>     igt@syncobj_wait@invalid-wait-zero-handles:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-5/igt@syncobj_wait@invalid-
>         wait-zero-handles.html> (i915#9781 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781>)
>   *
> 
>     igt@tools_test@sysfs_l3_parity:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-rkl-4/
>         igt@tools_test@sysfs_l3_parity.html> +17 other tests skip
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_create@create-ext-cpu-access-big:
> 
>       o shard-dg2: ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@gem_create@create-ext-cpu-access-
>         big.html> (i915#9846 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9846>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-dg2-6/
>         igt@gem_create@create-ext-cpu-access-big.html>
>   *
> 
>     igt@gem_ctx_persistence@hostile:
> 
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-4/igt@gem_ctx_persistence@hostile.html>
>         (i915#11980 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11980>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-mtlp-3/
>         igt@gem_ctx_persistence@hostile.html>
>   *
> 
>     igt@gem_eio@hibernate:
> 
>       o shard-dg2: ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@gem_eio@hibernate.html> (i915#10030
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10030> / i915#7975 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7975> / i915#8213 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-11/igt@gem_eio@hibernate.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-rkl-5/igt@gem_exec_fair@basic-pace-
>         share.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-rkl-7/
>         igt@gem_exec_fair@basic-pace-share.html> +3 other tests pass
>   *
> 
>     igt@gem_wait@write-busy:
> 
>       o shard-dg2: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-10/igt@gem_wait@write-busy.html> -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-4/igt@gem_wait@write-busy.html> +1 other test pass
>   *
> 
>     igt@gen9_exec_parse@valid-registers:
> 
>       o shard-glk: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk3/igt@gen9_exec_parse@valid-
>         registers.html> (i915#2295 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2295>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-glk6/
>         igt@gen9_exec_parse@valid-registers.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-snb: ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-snb2/igt@i915_module_load@reload-with-fault-
>         injection.html> (i915#9820 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9820>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-snb2/
>         igt@i915_module_load@reload-with-fault-injection.html>
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
> 
>       o shard-dg1: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-
>         idle@gt0-vcs0.html> (i915#3591 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3591>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg1-14/
>         igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html>
>   *
> 
>     igt@kms_big_fb@4-tiled-64bpp-rotate-180:
> 
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-
>         rotate-180.html> (i915#5138 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5138>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-mtlp-6/
>         igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>   *
> 
>     igt@kms_cursor_legacy@cursor-vs-flip-toggle:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-3/igt@kms_cursor_legacy@cursor-vs-flip-
>         toggle.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-5/igt@kms_cursor_legacy@cursor-vs-
>         flip-toggle.html>
>   *
> 
>     igt@kms_flip@2x-plain-flip-ts-check:
> 
>       o shard-snb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-snb6/igt@kms_flip@2x-plain-flip-ts-
>         check.html> (i915#2122 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2122>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-snb4/igt@kms_flip@2x-
>         plain-flip-ts-check.html> +1 other test pass
>   *
> 
>     igt@kms_flip@blocking-wf_vblank:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-rkl-4/igt@kms_flip@blocking-wf_vblank.html>
>         (i915#11961 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11961> / i915#2122 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2122>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-rkl-5/
>         igt@kms_flip@blocking-wf_vblank.html>
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank:
> 
>       o shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk5/igt@kms_flip@flip-vs-expired-
>         vblank.html> (i915#79 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/79>) -> PASS <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_139664v1/shard-glk7/igt@kms_flip@flip-vs-
>         expired-vblank.html> +1 other test pass
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible:
> 
>       o shard-dg1: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-18/igt@kms_flip@flip-vs-suspend-
>         interruptible.html> (i915#4423 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4423>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg1-12/
>         igt@kms_flip@flip-vs-suspend-interruptible.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-blt:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-
>         primscrn-pri-shrfb-draw-blt.html> (i915#6880 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-
>         shrfb-draw-blt.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-stridechange:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-
>         stridechange.html> (i915#5354 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/5354>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_frontbuffer_tracking@fbc-stridechange.html> +3 other
>         tests pass
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-11/igt@kms_hdr@invalid-metadata-
>         sizes.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_pipe_crc_basic@suspend-read-
>         crc.html> (i915#9197 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9197>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_pipe_crc_basic@suspend-read-crc.html> +8 other tests pass
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75.html> (i915#12247 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12247> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#6953 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6953> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152> / i915#9423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-11/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75.html>
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-b:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-11/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75@pipe-b.html> +2 other tests pass
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-d:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-
>         factor-0-75@pipe-d.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-11/igt@kms_plane_scaling@planes-
>         downscale-factor-0-75@pipe-d.html>
>   *
> 
>     igt@kms_pm_dc@dc9-dpms:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_pm_dc@dc9-dpms.html> (i915#7330
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7330>)
>         -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-1/igt@kms_pm_dc@dc9-dpms.html>
>       o shard-tglu: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html>
>         (i915#4281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4281>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html>
>   *
> 
>     igt@kms_pm_lpsp@kms-lpsp:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-10/igt@kms_pm_lpsp@kms-lpsp.html>
>         (i915#9340 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9340>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html>
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-
>         stress.html> (i915#9519 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9519>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-rkl-3/
>         igt@kms_pm_rpm@modeset-non-lpsp-stress.html> +3 other tests pass
>   *
> 
>     igt@kms_setmode@basic:
> 
>       o shard-tglu: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-tglu-5/igt@kms_setmode@basic.html> (i915#5465
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465>)
>         -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-tglu-8/igt@kms_setmode@basic.html> +1
>         other test pass
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak:
> 
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-
>         leak.html> (i915#9196 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-mtlp-5/
>         igt@kms_universal_plane@cursor-fb-leak.html> +1 other test pass
>   *
> 
>     igt@perf@blocking:
> 
>       o shard-mtlp: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-3/igt@perf@blocking.html> (i915#10538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538>)
>         -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-mtlp-3/igt@perf@blocking.html> +1 other
>         test pass
> 
> 
>         Warnings
> 
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-mtlp: ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-mtlp-5/igt@i915_module_load@reload-with-
>         fault-injection.html> (i915#10131 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131> /
>         i915#9697 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9697>) -> ABORT <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-mtlp-3/igt@i915_module_load@reload-
>         with-fault-injection.html> (i915#10131 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131> /
>         i915#10887 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10887> / i915#9820 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9820>)
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-90:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_big_fb@4-tiled-16bpp-
>         rotate-90.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_139664v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-
>         rotate-90.html> (i915#9197 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9197>) +4 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_big_fb@yf-tiled-32bpp-
>         rotate-180.html> (i915#5190 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5190> / i915#9197 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html>
>         (i915#4538 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5190>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@kms_big_fb@yf-tiled-64bpp-
>         rotate-0.html> (i915#4538 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4538> / i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html>
>         (i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190> / i915#9197 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9197>) +9 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_big_fb@yf-tiled-addfb.html>
>         (i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-
>         addfb.html> (i915#5190 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5190> / i915#9197 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>   *
> 
>     igt@kms_ccs@bad-aux-stride-y-tiled-ccs:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@kms_ccs@bad-aux-stride-y-tiled-
>         ccs.html> (i915#10307 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/10307> / i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_ccs@bad-aux-stride-y-tiled-ccs.html>
>         (i915#9197 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9197>) +10 other tests skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_ccs@bad-rotation-90-4-tiled-
>         lnl-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12313>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html> (i915#9197
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>         +1 other test skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-a-
>     hdmi-a-4:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-
>         y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-4.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg1-16/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-
>         mc-ccs@pipe-a-hdmi-a-4.html> (i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) +1 other test skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_ccs@crc-primary-rotation-180-
>         yf-tiled-ccs.html> (i915#9197 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9197>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs.html>
>         (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10307> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +3 other tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition-all-outputs:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_cdclk@mode-transition-all-
>         outputs.html> (i915#11616 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/11616> / i915#7213 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html>
>         (i915#9197 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9197>)
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-dg2: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-10/
>         igt@kms_content_protection@atomic.html> (i915#7173 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-4/igt@kms_content_protection@atomic.html> (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-snb: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-snb6/igt@kms_content_protection@atomic-
>         dpms.html> (i915#8816 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8816>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-snb4/
>         igt@kms_content_protection@atomic-dpms.html>
>   *
> 
>     igt@kms_content_protection@lic-type-0:
> 
>       o shard-dg2: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-10/igt@kms_content_protection@lic-
>         type-0.html> (i915#7173 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7173>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-4/
>         igt@kms_content_protection@lic-type-0.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@lic-type-1:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_content_protection@lic-
>         type-1.html> (i915#9197 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9197>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_content_protection@lic-type-1.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@mei-interface:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-13/igt@kms_content_protection@mei-
>         interface.html> (i915#9433 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9433>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg1-14/
>         igt@kms_content_protection@mei-interface.html> (i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-512x170:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-8/igt@kms_cursor_crc@cursor-
>         onscreen-512x170.html> (i915#11453 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html>
>         (i915#9197 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9197>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x170:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_cursor_crc@cursor-
>         random-512x170.html> (i915#9197 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9197>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_cursor_crc@cursor-random-512x170.html> (i915#11453
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453>)
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-max-size:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-
>         movement-max-size.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-max-
>         size.html> (i915#9197 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9197>) +5 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_cursor_legacy@2x-cursor-vs-
>         flip-legacy.html> (i915#5354 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/5354>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html> (i915#9197
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>         +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_cursor_legacy@2x-long-flip-vs-
>         cursor-legacy.html> (i915#9197 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9197>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html>
>         (i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-
>         before-cursor-atomic.html> (i915#4103 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103> /
>         i915#4213 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4213>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-
>         flip-before-cursor-atomic.html> (i915#9197 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>   *
> 
>     igt@kms_dirtyfb@psr-dirtyfb-ioctl:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html>
>         (i915#9833 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9833>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/igt@kms_dirtyfb@psr-dirtyfb-
>         ioctl.html> (i915#9197 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9197>)
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_dsc@dsc-basic.html> (i915#9197
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>         -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-1/igt@kms_dsc@dsc-basic.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-bpc-formats:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_dsc@dsc-with-bpc-formats.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3840>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_dsc@dsc-with-bpc-formats.html> (i915#9197 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>     downscaling:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-
>         yftile-to-32bpp-yftileccs-downscaling.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>         downscaling.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555>) +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>     downscaling:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-
>         ytile-to-32bpp-ytilegen12rcccs-downscaling.html> (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#5190 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5190>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-
>         ytilegen12rcccs-downscaling.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-
>         ytile-to-16bpp-ytile-upscaling.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-1/
>         igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-
>         offscren-pri-shrfb-draw-mmap-cpu.html> (i915#10433 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433> /
>         i915#3458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3458>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-6/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-
>         mmap-cpu.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-
>         scndscrn-pri-shrfb-draw-mmap-gtt.html> (i915#8708 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-
>         shrfb-draw-mmap-gtt.html> (i915#5354 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>) +13 other
>         tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-
>         rgb565-draw-render.html> (i915#10433 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433> /
>         i915#3458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3458>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/
>         igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html>
>         (i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>)
>   *
> 
>     igt@kms_frontbuffer_tracking@pipe-fbc-rte:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-8/igt@kms_frontbuffer_tracking@pipe-fbc-
>         rte.html> (i915#9766 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9766>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_frontbuffer_tracking@pipe-fbc-rte.html> (i915#4342
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-
>         offscren-pri-shrfb-draw-pwrite.html> (i915#5354 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-
>         shrfb-draw-pwrite.html> (i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) +1 other
>         test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-
>         primscrn-spr-indfb-draw-blt.html> (i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-
>         indfb-draw-blt.html> (i915#5354 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/5354>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-
>         farfromfence-mmap-gtt.html> (i915#5354 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-1/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-
>         gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8708>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-
>         rgb565-draw-mmap-cpu.html> (i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-
>         cpu.html> (i915#10433 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/10433> / i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) +3 other
>         tests skip
>   *
> 
>     igt@kms_hdr@bpc-switch:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_hdr@bpc-switch.html> (i915#9197
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>         -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-1/igt@kms_hdr@bpc-switch.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-1/igt@kms_hdr@static-toggle-suspend.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8228>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_hdr@static-toggle-suspend.html> (i915#9197 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-
>         factor-0-25-with-pixel-format.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9423>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-2/igt@kms_plane_scaling@plane-
>         downscale-factor-0-25-with-pixel-format.html> (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12247> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152> / i915#9423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-
>     format@pipe-d:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-
>         factor-0-25-with-pixel-format@pipe-d.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139664v1/
>         shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-
>         with-pixel-format@pipe-d.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152>)
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-
>         factor-0-25-unity-scaling.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152> / i915#9423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9423>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-1/
>         igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-
>         scaling.html> (i915#12247 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12247> / i915#9423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-
>         factor-0-25-unity-scaling@pipe-d.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-1/igt@kms_plane_scaling@planes-
>         downscale-factor-0-25-unity-scaling@pipe-d.html> (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>)
>   *
> 
>     igt@kms_psr@fbc-pr-sprite-render:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg1-18/igt@kms_psr@fbc-pr-sprite-render.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg1-18/
>         igt@kms_psr@fbc-pr-sprite-render.html> (i915#1072 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> /
>         i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>)
>   *
> 
>     igt@kms_rotation_crc@sprite-rotation-90:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-6/igt@kms_rotation_crc@sprite-
>         rotation-90.html> (i915#11131 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/11131>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_139664v1/shard-dg2-2/
>         igt@kms_rotation_crc@sprite-rotation-90.html> (i915#9197
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>         +2 other tests skip
>   *
> 
>     igt@kms_tiled_display@basic-test-pattern:
> 
>       o shard-glk: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-glk8/igt@kms_tiled_display@basic-test-
>         pattern.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-glk2/igt@kms_tiled_display@basic-test-
>         pattern.html> (i915#10959 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/10959>)
>   *
> 
>     igt@kms_vrr@flipline:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-2/igt@kms_vrr@flipline.html> (i915#9197
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>         -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-1/igt@kms_vrr@flipline.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>)
>   *
> 
>     igt@perf@non-zero-reason:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_15489/shard-dg2-11/igt@perf@non-zero-reason.html>
>         (i915#9100 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9100>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_139664v1/shard-dg2-11/igt@perf@non-zero-reason.html>
>         (i915#7484 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7484>) +1 other test fail
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 

