Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WVTfA4JyTmrUMwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 17:53:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5C07284FD
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 17:53:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=gDF1EpST;
	dmarc=pass (policy=none) header.from=lankhorst.se;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E9B010F189;
	Wed,  8 Jul 2026 15:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D4410F189
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2026 15:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1783526012;
 bh=BBWSZbjp0v0ophqFLimwhnkoO4Xc3PmjFXbYHM3QhLs=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=gDF1EpSTJXbfIa+ewcbjGjIgE65piLXKCADsWbdWYPpNSZixDZkQ14JGFgu48ct4O
 GjvNLURlLE6WjiUWCJ6d4+ktDsyXNzvm22aKBg4cuFsr9TEg5yOnRBiFHR4CPzBV1M
 XN8V77fv8Yq6whfS4tS7HcIm6a6FJU4yD9EeiqaXfd5L/j3XiSu5WGiB/uqW/HStea
 o3keaKlQFxdgq/4QNdZUD/+ZHu5sgl/ZxbE+iI4/EJqLSb8XENWhMX/3qGIPaEkrEg
 V46OJoTCSrjMkqf4ndM7xD0VlodaIPFoPaHtsxUkZP/G7omGrTjETRu+IPdYeuA5kK
 2y6DlhQGx51Dg==
Message-ID: <72f2a8a5-d7e4-4e8d-a110-6c78e5378dbb@lankhorst.se>
Date: Wed, 8 Jul 2026 17:54:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915?=
 =?UTF-8?Q?=3A_All_fixes_to_make_i915_work_well_with_PREEMPT=5FRT=2E_=28rev5?=
 =?UTF-8?Q?=29?=
To: intel-gfx@lists.freedesktop.org
References: <20260706114823.752313-1-dev@lankhorst.se>
 <178341833726.158539.5108706274178984477@6beec6c84f66>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <178341833726.158539.5108706274178984477@6beec6c84f66>
Content-Type: text/plain; charset=UTF-8
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: add header
X-Spamd-Result: default: False [7.69 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_ONE(0.00)[1];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:from_mime,lankhorst.se:dkim,lankhorst.se:mid,patchwork.freedesktop.org:url,01.org:url,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE5C07284FD
X-Spam: Yes

Hello,

On 7/7/26 11:58, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: All fixes to make i915 work well with PREEMPT_RT. (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/169677/ <https://patchwork.freedesktop.org/series/169677/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_18772_full -> Patchwork_169677v5_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_169677v5_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_169677v5_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (10 -> 10)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_169677v5_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_ctx_persistence@smoketest:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@gem_ctx_persistence@smoketest.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gem_ctx_persistence@smoketest.html>
>   *

It's been hard to reproduce this specific bug, but when I look at
https://gitlab.freedesktop.org/search?group_id=402251&scope=work_items&search=gem_ctx_persistence+incomplete
it seems to be a pre-existing bug.

I believe the locking changes cause us to receive useful logs instead.

>     igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-glk9/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk2/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a2.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_169677v5_full that come from known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@api_intel_bb@object-reloc-keep-cache:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@api_intel_bb@object-reloc-keep-cache.html> (i915#8411 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>   *
> 
>     igt@dmabuf@all-tests:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@dmabuf@all-tests.html> (i915#15931 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931>)
>   *
> 
>     igt@drm_buddy@drm_buddy:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@drm_buddy@drm_buddy.html> (i915#15678 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678>)
>   *
> 
>     igt@gem_basic@multigpu-create-close:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_basic@multigpu-create-close.html> (i915#7697 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_ccs@block-copy-compressed:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_ccs@block-copy-compressed.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#9323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@block-multicopy-compressed:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html> (i915#9323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@large-ctrl-surf-copy:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@gem_ccs@large-ctrl-surf-copy.html> (i915#13008 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008>)
>   *
> 
>     igt@gem_ccs@suspend-resume:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@gem_ccs@suspend-resume.html> (i915#9323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
> 
>       o shard-dg2: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html> (i915#13356 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356> / i915#16348 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-process:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@gem_close_race@multigpu-basic-process.html> (i915#7697 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_create@create-ext-cpu-access-sanity-check:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html> (i915#6335 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335>)
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-many:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-many.html> (i915#8555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>   *
> 
>     igt@gem_ctx_persistence@legacy-engines-persistence:
> 
>       o shard-snb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-snb4/igt@gem_ctx_persistence@legacy-engines-persistence.html> (i915#1099 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099>) +1 other test skip
>   *
> 
>     igt@gem_ctx_sseu@engines:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_ctx_sseu@engines.html> (i915#280 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>   *
> 
>     igt@gem_ctx_sseu@mmap-args:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@gem_ctx_sseu@mmap-args.html> (i915#280 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>) +1 other test skip
>   *
> 
>     igt@gem_exec_balancer@parallel:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_exec_balancer@parallel.html> (i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>) +2 other tests skip
>   *
> 
>     igt@gem_exec_balancer@parallel-ordering:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@gem_exec_balancer@parallel-ordering.html> (i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>   *
> 
>     igt@gem_exec_capture@capture-invisible@lmem0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@gem_exec_capture@capture-invisible@lmem0.html> (i915#6334 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>) +2 other tests skip
>   *
> 
>     igt@gem_exec_capture@capture-invisible@smem0:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk1/igt@gem_exec_capture@capture-invisible@smem0.html> (i915#6334 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>) +1 other test skip
>   *
> 
>     igt@gem_exec_endless@dispatch@ccs0:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-7/igt@gem_exec_endless@dispatch@ccs0.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-4/igt@gem_exec_endless@dispatch@ccs0.html> (i915#3778 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778> / i915#7016 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016>) +1 other test timeout
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html> (i915#3539 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>   *
> 
>     igt@gem_exec_reloc@basic-concurrent0:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gem_exec_reloc@basic-concurrent0.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +1 other test skip
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-cpu-active:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@gem_exec_reloc@basic-gtt-cpu-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +6 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-wc-cpu-noreloc:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>   *
> 
>     igt@gem_exec_reloc@basic-write-read-noreloc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +8 other tests skip
>   *
> 
>     igt@gem_exec_suspend@basic-s3:
> 
>       o shard-glk11: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk11/igt@gem_exec_suspend@basic-s3.html> (i915#13196 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196> / i915#13356 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>) +1 other test incomplete
>   *
> 
>     igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html> (i915#4860 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>   *
> 
>     igt@gem_lmem_swapping@massive:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk8/igt@gem_lmem_swapping@massive.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-multi:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +3 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gem_lmem_swapping@parallel-random.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_lmem_swapping@verify-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@gem_lmem_swapping@verify-ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +2 other tests skip
>   *
> 
>     igt@gem_media_vme:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@gem_media_vme.html> (i915#284 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284>)
>   *
> 
>     igt@gem_mmap_gtt@cpuset-medium-copy-odd:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html> (i915#4077 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>   *
> 
>     igt@gem_mmap_wc@bad-object:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@gem_mmap_wc@bad-object.html> (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>   *
> 
>     igt@gem_mmap_wc@write-wc-read-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@gem_mmap_wc@write-wc-read-gtt.html> (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>) +2 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@reads-snoop:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@gem_partial_pwrite_pread@reads-snoop.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +1 other test skip
>   *
> 
>     igt@gem_pxp@hw-rejects-pxp-context:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html> (i915#13398 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398>)
>   *
> 
>     igt@gem_render_copy@yf-tiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@gem_render_copy@yf-tiled.html> (i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> / i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>) +2 other tests skip
>   *
> 
>     igt@gem_softpin@evict-snoop-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html> (i915#4885 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885>)
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-8/igt@gem_softpin@noreloc-s3.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-1/igt@gem_softpin@noreloc-s3.html> (i915#15131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131>)
>   *
> 
>     igt@gem_tiled_pread_basic@basic:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@gem_tiled_pread_basic@basic.html> (i915#15657 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657>)
>   *
> 
>     igt@gem_tiled_pread_pwrite:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gem_tiled_pread_pwrite.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>   *
> 
>     igt@gem_userptr_blits@access-control:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gem_userptr_blits@access-control.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@create-destroy-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@gem_userptr_blits@create-destroy-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +2 other tests skip
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> / i915#4880 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880>) +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@relocations:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@gem_userptr_blits@relocations.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281> / i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-cycles:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gen9_exec_parse@basic-rejected-ctx-param:
> 
>       o shard-snb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-snb4/igt@gen9_exec_parse@basic-rejected-ctx-param.html> +69 other tests skip
>   *
> 
>     igt@gen9_exec_parse@batch-without-end:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@gen9_exec_parse@batch-without-end.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527> / i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@bb-large:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@gen9_exec_parse@bb-large.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@bb-start-cmd:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527> / i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>) +3 other tests skip
>   *
> 
>     igt@gen9_exec_parse@bb-start-far:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gen9_exec_parse@bb-start-far.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) +2 other tests skip
>   *
> 
>     igt@gen9_exec_parse@shadow-peek:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@gen9_exec_parse@shadow-peek.html> (i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>   *
> 
>     igt@i915_drm_fdinfo@busy-idle-check-all@vcs0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@i915_drm_fdinfo@busy-idle-check-all@vcs0.html> (i915#11527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527>) +7 other tests skip
>   *
> 
>     igt@i915_drm_fdinfo@busy-idle@vecs0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@i915_drm_fdinfo@busy-idle@vecs0.html> (i915#14073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073>) +7 other tests skip
>   *
> 
>     igt@i915_drm_fdinfo@virtual-busy-hang:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@i915_drm_fdinfo@virtual-busy-hang.html> (i915#14118 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118>)
>   *
> 
>     igt@i915_pm_freq_api@freq-basic-api:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@i915_pm_freq_api@freq-basic-api.html> (i915#8399 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>) +1 other test skip
>   *
> 
>     igt@i915_pm_freq_api@freq-reset-multiple:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html> (i915#8399 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>   *
> 
>     igt@i915_pm_freq_mult@media-freq@gt0:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@i915_pm_freq_mult@media-freq@gt0.html> (i915#6590 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590>) +1 other test skip
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle.html> (i915#14498 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498>)
>   *
> 
>     igt@i915_pm_rpm@system-suspend-execbuf:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-tglu-3/igt@i915_pm_rpm@system-suspend-execbuf.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@i915_pm_rpm@system-suspend-execbuf.html> (i915#16543 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16543>)
>   *
> 
>     igt@i915_query@hwconfig_table:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@i915_query@hwconfig_table.html> (i915#6245 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245>)
>   *
> 
>     igt@i915_query@query-topology-known-pci-ids:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@i915_query@query-topology-known-pci-ids.html> (i915#16109 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109>)
>   *
> 
>     igt@i915_query@test-query-geometry-subslices:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html> (i915#5723 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723>)
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk8/igt@i915_suspend@fence-restore-untiled.html> (i915#16182 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182> / i915#4817 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>)
>   *
> 
>     igt@i915_suspend@forcewake:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-2/igt@i915_suspend@forcewake.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@i915_suspend@forcewake.html> (i915#4817 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817>)
>   *
> 
>     igt@intel_hwmon@hwmon-read:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@intel_hwmon@hwmon-read.html> (i915#7707 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707>)
>   *
> 
>     igt@kms_addfb_basic@clobberred-modifier:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_addfb_basic@clobberred-modifier.html> (i915#4212 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212>)
>   *
> 
>     igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html> (i915#12454 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454> / i915#12712 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712>)
>   *
> 
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#9531 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769>)
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_big_fb@4-tiled-8bpp-rotate-0:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-8bpp-rotate-90:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html> (i915#4538 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> / i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +4 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> (i915#15733 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733> / i915#5138 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138>)
>   *
> 
>     igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html> (i915#3828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828>) +3 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-270:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> +3 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-32bpp-rotate-270:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> (i915#3638 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html> (i915#4538 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>) +4 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html> (i915#4538 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>)
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) +2 other tests skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +131 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +34 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html> (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +90 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +8 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html> (i915#14098 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +39 other tests skip
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html> (i915#15582 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582>) +1 other test incomplete
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) +1 other test skip
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +19 other tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +61 other tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html> (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> / i915#10434 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +2 other tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_cdclk@mode-transition.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3742 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_cdclk@mode-transition.html> (i915#3742 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
>   *
> 
>     igt@kms_chamelium_audio@dp-audio-after-suspend:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_chamelium_audio@dp-audio-after-suspend.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>)
>   *
> 
>     igt@kms_chamelium_audio@hdmi-audio-after-suspend:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_chamelium_audio@hdmi-audio-after-suspend.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>)
>   *
> 
>     igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d.html> (i915#16471 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471>)
>   *
> 
>     igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4.html> (i915#16471 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471>) +2 other tests skip
>   *
> 
>     igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +2 other tests skip
>   *
> 
>     igt@kms_chamelium_frames@dp-crc-single:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>   *
> 
>     igt@kms_chamelium_frames@hdmi-aspect-ratio:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_chamelium_frames@hdmi-aspect-ratio.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +3 other tests skip
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_chamelium_frames@hdmi-aspect-ratio.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>   *
> 
>     igt@kms_chamelium_frames@hdmi-crc-fast:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-fast.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +6 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-storm:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_content_protection@atomic-dpms.html> (i915#15865 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865>)
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html> (i915#15330 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330>)
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-1:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-1.html> (i915#15330 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330> / i915#3116 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
>   *
> 
>     igt@kms_content_protection@legacy:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_content_protection@legacy.html> (i915#15865 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865>) +1 other test skip
>   *
> 
>     igt@kms_content_protection@mei-interface:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_content_protection@mei-interface.html> (i915#15865 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865>) +2 other tests skip
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@kms_content_protection@srm.html> (i915#15865 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-32x32:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +6 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-64x21:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-64x21.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-64x21.html> (i915#13566 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x170:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-64x21:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-tglu-5/igt@kms_cursor_crc@cursor-random-64x21.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-4/igt@kms_cursor_crc@cursor-random-64x21.html> (i915#13566 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>) +1 other test fail
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049> / i915#3359 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-512x170:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x170.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-512x512:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-512x512.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html> (i915#13566 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>) +2 other tests fail
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (i915#4103 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html> (i915#13046 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046> / i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> (i915#15804 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804>) +1 other test fail
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-15/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html> (i915#15999 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15999>)
>   *
> 
>     igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html> (i915#9067 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html> (i915#4103 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>   *
> 
>     igt@kms_display_modes@extended-mode-basic:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_display_modes@extended-mode-basic.html> (i915#13691 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3804 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html> (i915#1769 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3804 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html> (i915#3804 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3804 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-8bpc:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_dp_link_training@non-uhbr-mst:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html> (i915#13749 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749>)
>   *
> 
>     igt@kms_dp_linktrain_fallback@dp-fallback:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html> (i915#13707 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707>)
>   *
> 
>     igt@kms_dsc@dsc-fractional-bpp:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html> (i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>) +1 other test skip
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_dsc@dsc-with-output-formats.html> (i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>) +1 other test skip
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner.html> (i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>) +1 other test skip
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats-with-bpc-ultrajoiner:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc-ultrajoiner.html> (i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>) +1 other test skip
>   *
> 
>     igt@kms_feature_discovery@chamelium:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_feature_discovery@chamelium.html> (i915#16084 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16084>)
>   *
> 
>     igt@kms_feature_discovery@display-2x:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_feature_discovery@display-2x.html> (i915#16081 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081>)
>   *
> 
>     igt@kms_feature_discovery@display-3x:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_feature_discovery@display-3x.html> (i915#16081 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081>)
>   *
> 
>     igt@kms_feature_discovery@psr2:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_feature_discovery@psr2.html> (i915#658 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658>)
>   *
> 
>     igt@kms_flip@2x-absolute-wf_vblank:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html> (i915#3637 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637> / i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +3 other tests skip
>   *
> 
>     igt@kms_flip@2x-dpms-vs-vblank-race:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_flip@2x-dpms-vs-vblank-race.html> (i915#3637 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637> / i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +2 other tests skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-panning-vs-hang:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_flip@2x-flip-vs-panning-vs-hang.html> (i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +5 other tests skip
>   *
> 
>     igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html> (i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +2 other tests skip
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-glk9/igt@kms_flip@flip-vs-absolute-wf_vblank.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk2/igt@kms_flip@flip-vs-absolute-wf_vblank.html> (i915#10826 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826>)
>   *
> 
>     igt@kms_flip@flip-vs-suspend:
> 
>       o shard-rkl: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html> (i915#16276 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16276> / i915#6113 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113>) +1 other test incomplete
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html> (i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html> (i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html> (i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>) +3 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html> (i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html> (i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>   *
> 
>     igt@kms_force_connector_basic@prune-stale-modes:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.html> (i915#15672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html> +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-indfb-pgflip-blt:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-indfb-pgflip-blt.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) +9 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) +15 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite.html> +67 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html> (i915#15991 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991>) +19 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-gtt:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-gtt.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk9/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-gtt.html> +8 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html> +118 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html> (i915#15990 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990> / i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html> +62 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-mmap-wc:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-mmap-wc.html> +237 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) +16 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-onoff:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-onoff.html> +50 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsrhdr-shrfb-scaledprimary:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-shrfb-scaledprimary.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) +25 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-pwrite:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-shrfb-draw-pwrite.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) +16 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-mmap-wc.html> (i915#15990 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990>) +13 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) +15 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html> (i915#15104 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104> / i915#15990 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) +10 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) +14 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html> (i915#15990 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990> / i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html> (i915#15991 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991> / i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>) +16 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) +31 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html> (i915#15990 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990>) +4 other tests skip
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html> (i915#16518 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16518> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@invalid-hdr:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_hdr@invalid-hdr.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@static-toggle-dpms:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html> (i915#16518 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16518> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_hdr@static-toggle-dpms.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-2-xrgb16161616f:
> 
>       o shard-rkl: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-1/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-2-xrgb16161616f.html> (i915#15132 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132>)
>   *
> 
>     igt@kms_joiner@basic-big-joiner:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html> (i915#15460 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460>)
>   *
> 
>     igt@kms_joiner@basic-force-big-joiner:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_joiner@basic-force-big-joiner.html> (i915#15459 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459>)
>   *
> 
>     igt@kms_joiner@basic-force-ultra-joiner:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html> (i915#15458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>)
>   *
> 
>     igt@kms_joiner@basic-max-non-joiner:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_joiner@basic-max-non-joiner.html> (i915#13688 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688>)
>   *
> 
>     igt@kms_joiner@invalid-modeset-ultra-joiner:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_joiner@invalid-modeset-ultra-joiner.html> (i915#15458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>)
>   *
> 
>     igt@kms_panel_fitting@atomic-fastset:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_panel_fitting@atomic-fastset.html> (i915#6301 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html> (i915#13409 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409> / i915#13476 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476>)
>   *
> 
>     igt@kms_pipe_stress@stress-xrgb8888-yftiled:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html> (i915#14712 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712>)
>   *
> 
>     igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html> (i915#15709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709>) +1 other test skip
>   *
> 
>     igt@kms_plane@pixel-format-4-tiled-modifier@pipe-b-plane-5:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@kms_plane@pixel-format-4-tiled-modifier@pipe-b-plane-5.html> (i915#16386 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386>) +1 other test skip
>   *
> 
>     igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html> (i915#15709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709>) +1 other test skip
>   *
> 
>     igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html> (i915#15709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709>) +2 other tests skip
>   *
> 
>     igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html> (i915#15709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709>) +2 other tests skip
>   *
> 
>     igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7.html> (i915#16386 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386>) +1 other test skip
>   *
> 
>     igt@kms_plane@pixel-format-yf-tiled-ccs-modifier@pipe-a-plane-4:
> 
>       o shard-glk11: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk11/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier@pipe-a-plane-4.html> +72 other tests skip
>   *
> 
>     igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html> (i915#16112 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112>)
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-opaque-fb:
> 
>       o shard-glk10: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk10/igt@kms_plane_alpha_blend@alpha-opaque-fb.html> (i915#10647 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647> / i915#12169 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169>) +1 other test fail
>   *
> 
>     igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
> 
>       o shard-glk10: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk10/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1.html> (i915#10647 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647>) +3 other tests fail
>   *
> 
>     igt@kms_plane_cursor@overlay:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_plane_cursor@overlay.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_plane_cursor@overlay.html> (i915#15912 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15912>)
>   *
> 
>     igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-128:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-128.html> (i915#15913 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15913>) +1 other test fail
>   *
> 
>     igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-64:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_plane_cursor@overlay@pipe-a-hdmi-a-1-size-64.html> (i915#15912 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15912>)
>   *
> 
>     igt@kms_plane_lowres@tiling-yf:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_plane_lowres@tiling-yf.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_plane_multiple@2x-tiling-4:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html> (i915#13958 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>) +1 other test skip
>   *
> 
>     igt@kms_plane_multiple@tiling-y:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_plane_multiple@tiling-y.html> (i915#14259 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259>)
>   *
> 
>     igt@kms_plane_scaling@2x-scaler-multi-pipe:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_plane_scaling@2x-scaler-multi-pipe.html> (i915#13046 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046> / i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354> / i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html> (i915#6953 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953> / i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html> (i915#15329 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329>) +4 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html> (i915#15329 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html> (i915#15329 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329>) +6 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html> (i915#15329 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329>) +4 other tests skip
>   *
> 
>     igt@kms_pm_backlight@brightness-with-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_pm_backlight@brightness-with-dpms.html> (i915#12343 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343>)
>   *
> 
>     igt@kms_pm_backlight@fade-with-dpms:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html> (i915#12343 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343> / i915#9812 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812>)
>   *
> 
>     igt@kms_pm_dc@dc5-psr:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_pm_dc@dc5-psr.html> (i915#15948 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948>)
>   *
> 
>     igt@kms_pm_dc@dc5-retention-flops:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_pm_dc@dc5-retention-flops.html> (i915#3828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828>)
>   *
> 
>     igt@kms_pm_rpm@fences-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_pm_rpm@fences-dpms.html> (i915#4077 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>) +6 other tests skip
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) +1 other test skip
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) +1 other test skip
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-13/igt@kms_pm_rpm@modeset-non-lpsp-stress.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
>   *
> 
>     igt@kms_pm_rpm@system-suspend-modeset:
> 
>       o shard-glk11: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk11/igt@kms_pm_rpm@system-suspend-modeset.html> (i915#10553 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553>)
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html> (i915#14419 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419>)
>   *
> 
>     igt@kms_prime@basic-crc-hybrid:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6524 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_prime@basic-crc-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>   *
> 
>     igt@kms_prime@basic-crc-vgem:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_prime@basic-crc-vgem.html> (i915#6524 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524> / i915#6805 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805>)
>   *
> 
>     igt@kms_prime@basic-modeset-hybrid:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +5 other tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +1 other test skip
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +4 other tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
> 
>       o shard-glk11: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk11/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>   *
> 
>     igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +2 other tests skip
>       o shard-snb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-snb4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>   *
> 
>     igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +2 other tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk9/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +5 other tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +5 other tests skip
>   *
> 
>     igt@kms_psr2_su@page_flip-p010:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html> (i915#9683 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>   *
> 
>     igt@kms_psr@fbc-psr2-primary-mmap-gtt:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html> (i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +11 other tests skip
>   *
> 
>     igt@kms_psr@pr-no-drrs:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_psr@pr-no-drrs.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +2 other tests skip
>   *
> 
>     igt@kms_psr@psr-sprite-mmap-gtt:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_psr@psr-sprite-mmap-gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +2 other tests skip
>   *
> 
>     igt@kms_psr@psr2-primary-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_psr@psr2-primary-mmap-gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +12 other tests skip
>   *
> 
>     igt@kms_psr@psr2-sprite-mmap-cpu:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_psr@psr2-sprite-mmap-cpu.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +13 other tests skip
>   *
> 
>     igt@kms_psr@psr2-sprite-mmap-gtt:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_psr@psr2-sprite-mmap-gtt.html> (i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +14 other tests skip
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#15949 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949>)
>   *
> 
>     igt@kms_rotation_crc@multiplane-rotation:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk9/igt@kms_rotation_crc@multiplane-rotation.html> (i915#15492 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15492> / i915#16184 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184>)
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html> (i915#12755 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755> / i915#15867 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html> (i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>) +1 other test skip
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html> (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-full:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_scaling_modes@scaling-mode-full.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_selftest@drm_framebuffer:
> 
>       o shard-snb: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-snb4/igt@kms_selftest@drm_framebuffer.html> (i915#13179 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179>) +1 other test abort
>       o shard-glk10: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk10/igt@kms_selftest@drm_framebuffer.html> (i915#13179 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179>) +1 other test abort
>   *
> 
>     igt@kms_tiled_display@basic-test-pattern-with-chamelium:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html> (i915#8623 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623>)
>   *
> 
>     igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk5/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html> (i915#12276 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276>) +1 other test incomplete
>   *
> 
>     igt@kms_vblank@ts-continuation-suspend:
> 
>       o shard-glk10: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk10/igt@kms_vblank@ts-continuation-suspend.html> (i915#12276 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276>) +1 other test incomplete
>   *
> 
>     igt@kms_vrr@flip-basic-fastset:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9906 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-2/igt@kms_vrr@flip-basic-fastset.html> (i915#9906 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>   *
> 
>     igt@kms_vrr@flip-suspend:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@kms_vrr@flip-suspend.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +2 other tests skip
>   *
> 
>     igt@kms_vrr@lobf:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@kms_vrr@lobf.html> (i915#11920 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>   *
> 
>     igt@kms_vrr@seamless-rr-switch-vrr:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html> (i915#9906 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>   *
> 
>     igt@perf@gen8-unprivileged-single-ctx-counters:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-10/igt@perf@gen8-unprivileged-single-ctx-counters.html> (i915#2436 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436>)
>   *
> 
>     igt@perf_pmu@busy-double-start:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-mtlp-1/igt@perf_pmu@busy-double-start.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-mtlp-6/igt@perf_pmu@busy-double-start.html> (i915#4349 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>) +2 other tests fail
>   *
> 
>     igt@perf_pmu@module-unload:
> 
>       o shard-dg2: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@perf_pmu@module-unload.html> (i915#13029 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029> / i915#15778 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778>)
>   *
> 
>     igt@perf_pmu@rc6-all-gts:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html> (i915#8516 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516>) +1 other test skip
>   *
> 
>     igt@prime_udl@share-import:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@prime_udl@share-import.html> (i915#16420 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16420>)
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@prime_vgem@basic-write.html> (i915#3291 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>   *
> 
>     igt@sriov_basic@bind-unbind-vf@vf-4:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-10/igt@sriov_basic@bind-unbind-vf@vf-4.html> (i915#16066 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066>) +9 other tests skip
>   *
> 
>     igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random.html> (i915#16066 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066>) +9 other tests skip
>   *
> 
>     igt@sriov_basic@enable-vfs-bind-unbind-each:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@sriov_basic@enable-vfs-bind-unbind-each.html> (i915#9917 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
> 
>       o shard-dg2: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html> (i915#13356 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356> / i915#16348 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html>
>   *
> 
>     igt@gem_exec_capture@pi:
> 
>       o shard-dg1: ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-14/igt@gem_exec_capture@pi.html> (i915#13562 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@gem_exec_capture@pi.html>
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-dg1: ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-14/igt@gem_exec_capture@pi@rcs0.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-18/igt@gem_exec_capture@pi@rcs0.html>
>   *
> 
>     igt@i915_pm_freq_api@freq-suspend@gt0:
> 
>       o shard-dg2: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html> (i915#13356 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356> / i915#13820 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html> +1 other test pass
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-128x42:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html> (i915#13566 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html> +2 other tests pass
>   *
> 
>     igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
> 
>       o shard-tglu: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-tglu-3/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html> (i915#13566 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-tglu-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html> +1 other test pass
>   *
> 
>     igt@kms_flip@blocking-wf_vblank:
> 
>       o shard-dg1: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-16/igt@kms_flip@blocking-wf_vblank.html> (i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-19/igt@kms_flip@blocking-wf_vblank.html> +2 other tests pass
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-1p-pri-indfb-multidraw:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_frontbuffer_tracking@hdr-1p-pri-indfb-multidraw.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-pri-indfb-multidraw.html> +9 other tests pass
>   *
> 
>     igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-msflip-blt:
> 
>       o shard-glk: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-glk5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-msflip-blt.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk8/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-msflip-blt.html> +3 other tests pass
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_hdr@static-swap.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_hdr@static-swap.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc:
> 
>       o shard-rkl: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html> (i915#12756 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756> / i915#13476 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_pipe_crc_basic@suspend-read-crc.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
> 
>       o shard-glk: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-glk8/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html> (i915#12756 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756> / i915#13409 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409> / i915#13476 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html>
>   *
> 
>     igt@kms_pm_rpm@dpms-lpsp:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html>
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp.html>
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp.html> +1 other test pass
>   *
> 
>     igt@kms_vblank@ts-continuation-suspend:
> 
>       o shard-rkl: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend.html> (i915#12276 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-8/igt@kms_vblank@ts-continuation-suspend.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@device_reset@cold-reset-bound:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@device_reset@cold-reset-bound.html> (i915#11078 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@device_reset@cold-reset-bound.html> (i915#11078 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078>)
>   *
> 
>     igt@gem_exec_balancer@parallel-contexts:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@gem_exec_balancer@parallel-contexts.html> (i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>   *
> 
>     igt@gem_exec_capture@capture-invisible@smem0:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6334 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html> (i915#6334 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>) +1 other test skip
>   *
> 
>     igt@gem_exec_reloc@basic-wc-gtt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@gem_exec_reloc@basic-wc-gtt.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gem_exec_reloc@basic-wc-gtt.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +1 other test skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-read-active:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-active.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +5 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@massive-random:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-2/igt@gem_lmem_swapping@massive-random.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>   *
> 
>     igt@gem_readwrite@beyond-eob:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gem_readwrite@beyond-eob.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gem_readwrite@beyond-eob.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +3 other tests skip
>   *
> 
>     igt@gem_readwrite@new-obj:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@gem_readwrite@new-obj.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gem_readwrite@new-obj.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>   *
> 
>     igt@gem_userptr_blits@create-destroy-unsync:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@gem_userptr_blits@create-destroy-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +2 other tests skip
>   *
> 
>     igt@gem_userptr_blits@relocations:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gem_userptr_blits@relocations.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281> / i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@gem_userptr_blits@relocations.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281> / i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-after-close:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-after-close.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gen9_exec_parse@basic-rejected:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@gen9_exec_parse@basic-rejected.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@gen9_exec_parse@basic-rejected.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@bb-start-out:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@gen9_exec_parse@bb-start-out.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>   *
> 
>     igt@i915_query@query-topology-known-pci-ids:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@i915_query@query-topology-known-pci-ids.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#16109 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@i915_query@query-topology-known-pci-ids.html> (i915#16109 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#1769 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-270:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3638 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> (i915#3638 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-90:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html> (i915#3638 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3638 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) +1 other test skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html> (i915#14098 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html> (i915#14098 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +7 other tests skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +5 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>   *
> 
>     igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html> (i915#14098 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html> (i915#14098 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +3 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +3 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html> (i915#12805 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html> (i915#12805 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805>)
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
> 
>       o shard-glk: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html> (i915#15582 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582>) -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-glk3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html> (i915#14694 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694> / i915#15582 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582>) +1 other test incomplete
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html> (i915#12313 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_cdclk@mode-transition-all-outputs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3742 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#3742 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
>   *
> 
>     igt@kms_chamelium_audio@dp-audio-after-suspend:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-15/igt@kms_chamelium_audio@dp-audio-after-suspend.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-12/igt@kms_chamelium_audio@dp-audio-after-suspend.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#16471 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d.html> (i915#16471 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471>)
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>   *
> 
>     igt@kms_chamelium_hpd@vga-hpd-fast:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +3 other tests skip
>   *
> 
>     igt@kms_content_protection@legacy:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@kms_content_protection@legacy.html> (i915#7173 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@kms_content_protection@legacy.html> (i915#15865 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865>)
>   *
> 
>     igt@kms_content_protection@uevent-hdcp14:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_content_protection@uevent-hdcp14.html> (i915#15865 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_content_protection@uevent-hdcp14.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15865 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-512x512:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@kms_cursor_crc@cursor-sliding-512x512.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049> / i915#3359 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@kms_cursor_crc@cursor-sliding-512x512.html> (i915#13049 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-12/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html> (i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_display_modes@extended-mode-basic:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html> (i915#13691 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html> (i915#13691 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691>)
>   *
> 
>     igt@kms_dp_aux_dev@basic:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_dp_aux_dev@basic.html> (i915#1257 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_dp_aux_dev@basic.html> (i915#1257 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>   *
> 
>     igt@kms_dsc@dsc-with-formats-ultrajoiner:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_dsc@dsc-with-formats-ultrajoiner.html> (i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_dsc@dsc-with-formats-ultrajoiner.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>)
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats-ultrajoiner:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html> (i915#16361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361>)
>   *
> 
>     igt@kms_feature_discovery@display-4x:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_feature_discovery@display-4x.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#16081 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_feature_discovery@display-4x.html> (i915#16081 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081>)
>   *
> 
>     igt@kms_feature_discovery@psr1:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-16/igt@kms_feature_discovery@psr1.html> (i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> / i915#658 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-19/igt@kms_feature_discovery@psr1.html> (i915#658 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658>)
>   *
> 
>     igt@kms_flip@2x-absolute-wf_vblank-interruptible:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html> (i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +2 other tests skip
>   *
> 
>     igt@kms_flip@2x-blocking-wf_vblank:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_flip@2x-blocking-wf_vblank.html> (i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html> (i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>) +3 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-p010-4tile-to-p016-4tile:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-2/igt@kms_flip_scaled_crc@flip-p010-4tile-to-p016-4tile.html> (i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_flip_scaled_crc@flip-p010-4tile-to-p016-4tile.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15643 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#1825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#1825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-pwrite:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-15/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-pwrite.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-pwrite.html> (i915#15989 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989> / i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-indfb-msflip-blt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-indfb-msflip-blt.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-indfb-msflip-blt.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +18 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@pipe-fbc-rte:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9766 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html> (i915#9766 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102> / i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html> (i915#10433 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433> / i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html> +55 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psrhdr-slowdraw:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-slowdraw.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_frontbuffer_tracking@psrhdr-slowdraw.html> (i915#15102 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102>) +15 other tests skip
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-4/igt@kms_hdr@static-toggle-suspend.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-1/igt@kms_hdr@static-toggle-suspend.html> (i915#15132 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132>)
>   *
> 
>     igt@kms_joiner@basic-ultra-joiner:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_joiner@basic-ultra-joiner.html> (i915#15458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458>)
>   *
> 
>     igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html> (i915#15709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709>)
>   *
> 
>     igt@kms_plane_lowres@tiling-4:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_plane_lowres@tiling-4.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_plane_lowres@tiling-4.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +2 other tests skip
>   *
> 
>     igt@kms_pm_dc@dc9-dpms:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#15739 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html> (i915#15739 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +2 other tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +1 other test skip
>   *
> 
>     igt@kms_psr@fbc-psr-sprite-plane-move:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-7/igt@kms_psr@fbc-psr-sprite-plane-move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-6/igt@kms_psr@fbc-psr-sprite-plane-move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +3 other tests skip
>   *
> 
>     igt@kms_psr@fbc-psr2-sprite-render:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +12 other tests skip
>   *
> 
>     igt@kms_psr@pr-cursor-plane-onoff:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg1-17/igt@kms_psr@pr-cursor-plane-onoff.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg1-16/igt@kms_psr@pr-cursor-plane-onoff.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>   *
> 
>     igt@kms_rotation_crc@bad-pixel-format:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@kms_rotation_crc@bad-pixel-format.html> (i915#15867 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@kms_rotation_crc@bad-pixel-format.html> (i915#12755 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755> / i915#15867 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html> (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>   *
> 
>     igt@kms_vrr@lobf:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@kms_vrr@lobf.html> (i915#11920 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920> / i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@kms_vrr@lobf.html> (i915#11920 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920>)
>   *
> 
>     igt@perf@gen8-unprivileged-single-ctx-counters:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#2436 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html> (i915#2436 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436>)
>   *
> 
>     igt@perf@non-zero-reason@0-rcs0:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html> (i915#9100 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html> (i915#3089 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3089>) +1 other test fail
>   *
> 
>     igt@prime_vgem@fence-read-hang:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@prime_vgem@fence-read-hang.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#3708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-2/igt@prime_vgem@fence-read-hang.html> (i915#3708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>   *
> 
>     igt@sriov_basic@enable-vfs-autoprobe-on:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18772/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> / i915#9917 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169677v5/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html> (i915#9917 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_18772 -> Patchwork_169677v5
> 
> CI-20190529: 20190529
> CI_DRM_18772: 6085bbba363b5c5b1f0e0420a9d7ecfd8ccea907 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8990: 8990
> Patchwork_169677v5: 6085bbba363b5c5b1f0e0420a9d7ecfd8ccea907 @ git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 

