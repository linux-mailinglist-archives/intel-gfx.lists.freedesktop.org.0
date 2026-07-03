Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oRu9As9kR2qKXgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 09:29:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C896FF8B9
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Jul 2026 09:29:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=IR5kPxqU;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CDE10F69B;
	Fri,  3 Jul 2026 07:29:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDB210F698;
 Fri,  3 Jul 2026 07:29:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783063754; x=1814599754;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=UMgXXOdhV5nU5XxZ+Ai1zRVTdc1LQjZfDdiByof0mTk=;
 b=IR5kPxqU3jCqqQK6spJMRken0UvSSBRUF5TmrOv/I+2GmHgnEqPcH8BJ
 AWDeajr0TYYfFWj44O6EltB7m1ncx2Bx09+aXU+hGrgPW7pp3L6bud5Yw
 /rAakm9+EpbAONLhdPZQao5bgYsZYOraD4lkKPbg94F/B4t3tSTNYjCvj
 TYGXRxTR8rjF7Ln2CQ18N9Fz0ahZPAvaD1Q3grDTQKo64o6GkCkK8hmc8
 iYBv0OjxPxB/Lpr6qNkp7VleLCHFSc+meW4hzZ9oVPeIZuLYAQVdDs9rK
 Ej48mEsmGjMvcfBUgs56JHE2Wz7x2PFRyfg+NMRo6TbMHMu2vxvomxl+6 g==;
X-CSE-ConnectionGUID: shK/gHfYSumTkgj0cj0S+g==
X-CSE-MsgGUID: spe5pmf2QCqlI0YMZj3N1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="94172527"
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="94172527"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 00:29:14 -0700
X-CSE-ConnectionGUID: 7DxpQxz+TFme8dz4DwPD4w==
X-CSE-MsgGUID: UgFyVZVvTbmWvJfvwXbPUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,145,1779174000"; d="scan'208";a="253189693"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.81])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2026 00:29:12 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <178298273535.141897.14703865000517456023@6beec6c84f66>
References: <20260701114513.221254-1-joonas.lahtinen@linux.intel.com>
 <178298273535.141897.14703865000517456023@6beec6c84f66>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/gt: Fix NULL
 deref on sched_engine alloc failure
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Date: Fri, 03 Jul 2026 10:29:09 +0300
Message-ID: <178306374941.18415.3611313058125690410@jlahtine-mobl>
User-Agent: alot/0.13.dev2+g40c57d620
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url,intel.com:dkim,jlahtine-mobl:mid];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3C896FF8B9

(+ i915-ci-infra for the false positive)

Quoting Patchwork (2026-07-02 11:58:55)
> Patch Details
>=20
> Series:  drm/i915/gt: Fix NULL deref on sched_engine alloc failure
> URL:     https://patchwork.freedesktop.org/series/169586/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169586v1/inde=
x.html
>=20
> CI Bug Log - changes from CI_DRM_18743_full -> Patchwork_169586v1_full
>=20
> Summary
>=20
> FAILURE
>=20
> Serious unknown changes coming with Patchwork_169586v1_full absolutely ne=
ed to
> be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_169586v1_full, please notify your bug team
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in C=
I.
>=20
> Participating hosts (10 -> 10)
>=20
> No changes in participating hosts
>=20
> Possible new issues
>=20
> Here are the unknown changes that may have been introduced in
> Patchwork_169586v1_full:
>=20
> IGT changes
>=20
> Possible regressions
>=20
>   =E2=80=A2 igt@kms_frontbuffer_tracking:
>       =E2=96=A1 shard-snb: NOTRUN -> INCOMPLETE
>=20
> New tests
>=20
> New tests have been introduced between CI_DRM_18743_full and
> Patchwork_169586v1_full:
>=20
> New IGT tests (1)
>=20
>   =E2=80=A2 igt@kms_color@ctm-0-75@pipe-c-hdmi-a-2:
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [1.74] s
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_169586v1_full that come from known
> issues:
>=20
> IGT changes
>=20
> Issues hit
>=20
>   =E2=80=A2 igt@api_intel_bb@crc32:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#6230)
>   =E2=80=A2 igt@device_reset@cold-reset-bound:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#11078)
>   =E2=80=A2 igt@drm_buddy@drm_buddy:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15678)
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15678)
>   =E2=80=A2 igt@gem_basic@multigpu-create-close:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#7697) +1 other test skip
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#7697)
>   =E2=80=A2 igt@gem_busy@semaphore:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3936)
>   =E2=80=A2 igt@gem_caching@reads:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4873)
>   =E2=80=A2 igt@gem_close_race@multigpu-basic-process:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#7697)
>   =E2=80=A2 igt@gem_ctx_isolation@preservation-s3:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> INCOMPLETE (i915#13356 / i915#1646=
6) +1 other
>         test incomplete
>   =E2=80=A2 igt@gem_ctx_persistence@saturated-hostile-nopreempt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#5882) +7 other tests skip
>   =E2=80=A2 igt@gem_ctx_sseu@mmap-args:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#280)
>   =E2=80=A2 igt@gem_eio@in-flight-suspend:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#13390)
>   =E2=80=A2 igt@gem_exec_balancer@bonded-semaphore:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4812)
>   =E2=80=A2 igt@gem_exec_balancer@parallel:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4525) +1 other test skip
>   =E2=80=A2 igt@gem_exec_balancer@parallel-balancer:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#4525)
>   =E2=80=A2 igt@gem_exec_big@single:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> FAIL (i915#15816)
>   =E2=80=A2 igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3281) +5 other tests skip
>   =E2=80=A2 igt@gem_exec_reloc@basic-write-cpu-noreloc:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3281) +6 other tests skip
>   =E2=80=A2 igt@gem_exec_reloc@basic-write-wc-active:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3281) +1 other test skip
>   =E2=80=A2 igt@gem_exec_schedule@preempt-queue:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4537 / i915#4812)
>   =E2=80=A2 igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4860) +1 other test skip
>   =E2=80=A2 igt@gem_lmem_evict@dontneed-evict-race:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4613 / i915#7582)
>   =E2=80=A2 igt@gem_lmem_swapping@heavy-multi:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP (i915#4613) +3 other tests skip
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4613)
>   =E2=80=A2 igt@gem_lmem_swapping@heavy-verify-random-ccs:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#4613)
>   =E2=80=A2 igt@gem_lmem_swapping@smem-oom:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4613) +1 other test skip
>   =E2=80=A2 igt@gem_lmem_swapping@verify-random-ccs:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#4613) +2 other tests s=
kip
>   =E2=80=A2 igt@gem_mmap_gtt@basic-short:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4077) +3 other tests skip
>   =E2=80=A2 igt@gem_mmap_gtt@cpuset-big-copy-xy:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4077)
>   =E2=80=A2 igt@gem_mmap_wc@read-write:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4083)
>   =E2=80=A2 igt@gem_pread@exhaustion:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> WARN (i915#2658)
>       =E2=96=A1 shard-tglu: NOTRUN -> WARN (i915#2658)
>   =E2=80=A2 igt@gem_pxp@hw-rejects-pxp-context:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#13398)
>   =E2=80=A2 igt@gem_readwrite@read-bad-handle:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3282)
>   =E2=80=A2 igt@gem_readwrite@read-write:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3282) +1 other test skip
>   =E2=80=A2 igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#5190 / i915#8428)
>   =E2=80=A2 igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#8428)
>   =E2=80=A2 igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4079)
>   =E2=80=A2 igt@gem_userptr_blits@coherency-sync:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3297) +1 other test skip
>   =E2=80=A2 igt@gem_userptr_blits@dmabuf-unsync:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3297)
>   =E2=80=A2 igt@gem_userptr_blits@unsync-unmap-after-close:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3297)
>   =E2=80=A2 igt@gem_workarounds@suspend-resume:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#13356 / i915#1458=
6)
>   =E2=80=A2 igt@gen7_exec_parse@cmd-crossing-page:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP +7 other tests skip
>   =E2=80=A2 igt@gen9_exec_parse@allowed-all:
>=20
>       =E2=96=A1 shard-glk: PASS -> ABORT (i915#5566)
>   =E2=80=A2 igt@gen9_exec_parse@basic-rejected-ctx-param:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#2527 / i915#2856) +2 oth=
er tests skip
>   =E2=80=A2 igt@gen9_exec_parse@batch-invalid-length:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#2856)
>   =E2=80=A2 igt@gen9_exec_parse@shadow-peek:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#2527 / i915#2856) +1 o=
ther test skip
>   =E2=80=A2 igt@gen9_exec_parse@unaligned-access:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#2856)
>   =E2=80=A2 igt@gen9_exec_parse@valid-registers:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#2527)
>   =E2=80=A2 igt@i915_drm_fdinfo@busy-hang@ccs0:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#14073) +6 other tests sk=
ip
>   =E2=80=A2 igt@i915_drm_fdinfo@busy-idle-check-all@vcs0:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#11527) +7 other tests skip
>   =E2=80=A2 igt@i915_drm_fdinfo@virtual-busy-idle:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#14118)
>   =E2=80=A2 igt@i915_fb_tiling@basic-x-tiling:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#13786)
>   =E2=80=A2 igt@i915_module_load@fault-injection@__uc_init:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15479) +4 other tests skip
>   =E2=80=A2 igt@i915_module_load@fault-injection@intel_connector_register:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> ABORT (i915#15342) +1 other test abo=
rt
>   =E2=80=A2 igt@i915_module_load@resize-bar:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#6412)
>   =E2=80=A2 igt@i915_pm_freq_api@freq-basic-api:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#8399)
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#8399)
>   =E2=80=A2 igt@i915_pm_freq_api@freq-reset-multiple:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#8399)
>   =E2=80=A2 igt@i915_pm_rc6_residency@rc6-idle:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#14498)
>   =E2=80=A2 igt@i915_pm_rpm@system-suspend-execbuf:
>=20
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#13356)
>   =E2=80=A2 igt@i915_pm_rps@reset:
>=20
>       =E2=96=A1 shard-snb: PASS -> TIMEOUT (i915#16162)
>   =E2=80=A2 igt@i915_pm_rps@thresholds-idle:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#11681)
>   =E2=80=A2 igt@i915_pm_sseu@full-enable:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#8437)
>   =E2=80=A2 igt@i915_query@query-topology-known-pci-ids:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16109)
>   =E2=80=A2 igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#5190)
>   =E2=80=A2 igt@kms_addfb_basic@basic-x-tiled-legacy:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4212)
>   =E2=80=A2 igt@kms_async_flips@alternate-sync-async-flip@pipe-c-hdmi-a-2:
>=20
>       =E2=96=A1 shard-glk: PASS -> FAIL (i915#14888) +1 other test fail
>   =E2=80=A2 igt@kms_async_flips@async-flip-suspend-resume:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> INCOMPLETE (i915#12761)
>   =E2=80=A2 igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> INCOMPLETE (i915#12761 / i915#1499=
5)
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#12761)
>   =E2=80=A2 igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3555)
>   =E2=80=A2 igt@kms_atomic_transition@plane-all-modeset-transition-intern=
al-panels:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1769 / i915#3555)
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#1769 / i915#3555)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#5286) +1 other test sk=
ip
>   =E2=80=A2 igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#5286) +2 other tests skip
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-fli=
p:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#5286) +2 other tests skip
>   =E2=80=A2 igt@kms_big_fb@linear-64bpp-rotate-90:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3638) +3 other tests skip
>   =E2=80=A2 igt@kms_big_fb@y-tiled-32bpp-rotate-90:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4538 / i915#5190) +1 othe=
r test skip
>   =E2=80=A2 igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#6187)
>   =E2=80=A2 igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#12313)
>   =E2=80=A2 igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi=
-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14098 / i915#6095) +47 ot=
her tests skip
>   =E2=80=A2 igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#6095) +87 ot=
her tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-=
a-1:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#6095) +77 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#6095) +59 other tests sk=
ip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#12805) +1 other test s=
kip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#12805)
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-a-=
hdmi-a-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#6095) +7 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-h=
dmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> INCOMPLETE (i915#14694 / i915#15582)=
 +1 other test
>         incomplete
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#15582) +1 other t=
est incomplete
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d=
-hdmi-a-3:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#6095) +19 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a=
-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14544 / i915#6095) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a=
-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14098 / i915#14544 / i915=
#6095)
>   =E2=80=A2 igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#10434 / i915=
#6095) +5
>         other tests skip
>   =E2=80=A2 igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-=
1:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#6095) +34 other tests sk=
ip
>   =E2=80=A2 igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-=
a-1:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#6095) +29 other tests =
skip
>   =E2=80=A2 igt@kms_cdclk@mode-transition@pipe-b-edp-1:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#13781) +4 other tests sk=
ip
>   =E2=80=A2 igt@kms_chamelium_audio@dp-audio:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11151 / i915#7828) +7 ot=
her tests skip
>   =E2=80=A2 igt@kms_chamelium_audio@dp-audio-after-suspend:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#11151)
>   =E2=80=A2 igt@kms_chamelium_color@gamma:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP +2 other tests skip
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-lut1d-ctm3x4-lut1d:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16471)
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#16464 / i915#16471)
>   =E2=80=A2 igt@kms_chamelium_edid@hdmi-edid-read:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#11151 / i915#7828) +4 oth=
er tests skip
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#11151 / i915#7828) +2 ot=
her tests skip
>   =E2=80=A2 igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#11151 / i915#7828) +4 =
other tests
>         skip
>   =E2=80=A2 igt@kms_chamelium_frames@vga-frame-dump:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#11151 / i915#7828)
>   =E2=80=A2 igt@kms_color@deep-color:
>=20
>       =E2=96=A1 shard-dg2: PASS -> SKIP (i915#12655 / i915#3555)
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#12655 / i915#3555)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3555 / i915#9979)
>   =E2=80=A2 igt@kms_content_protection@atomic-dpms:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15865)
>   =E2=80=A2 igt@kms_content_protection@content-type-change:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15865) +2 other tests sk=
ip
>   =E2=80=A2 igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15330)
>   =E2=80=A2 igt@kms_content_protection@type1:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15865) +1 other test s=
kip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-offscreen-512x170:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#13049)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-onscreen-128x42:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#8814)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-onscreen-512x170:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#13049)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-random-32x10:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555) +2 other tests skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-random-max-size:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP +284 other tests skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-32x32:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3555) +4 other tests skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-512x512:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#13049)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> FAIL (i915#13566) +2 other tests fail
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-max-size:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3555)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-suspend:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#12358 / i915#14152 =
/ i915#7882)
>       =E2=96=A1 shard-rkl: PASS -> ABORT (i915#15132) +1 other test abort
>   =E2=80=A2 igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#12358 / i915#14152)
>   =E2=80=A2 igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4103) +1 other test skip
>   =E2=80=A2 igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
>=20
>       =E2=96=A1 shard-rkl: PASS -> FAIL (i915#15967)
>   =E2=80=A2 igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#9809) +1 other test skip
>   =E2=80=A2 igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4103)
>   =E2=80=A2 igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#9833)
>   =E2=80=A2 igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555 / i915#3804)
>   =E2=80=A2 igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3804)
>   =E2=80=A2 igt@kms_dp_aux_dev@basic:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#1257)
>   =E2=80=A2 igt@kms_dp_link_training@non-uhbr-mst:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13749)
>   =E2=80=A2 igt@kms_dp_link_training@uhbr-mst:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#13749)
>   =E2=80=A2 igt@kms_dsc@dsc-fractional-bpp:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#16361)
>   =E2=80=A2 igt@kms_dsc@dsc-with-bpc-formats-bigjoiner:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16361)
>   =E2=80=A2 igt@kms_dsc@dsc-with-formats:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16361) +2 other tests sk=
ip
>   =E2=80=A2 igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#16361)
>   =E2=80=A2 igt@kms_fbcon_fbt@psr:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3955)
>   =E2=80=A2 igt@kms_feature_discovery@display-3x:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16081)
>   =E2=80=A2 igt@kms_flip@2x-blocking-absolute-wf_vblank:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3637 / i915#9934) +4 oth=
er tests skip
>   =E2=80=A2 igt@kms_flip@2x-flip-vs-fences:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9934)
>   =E2=80=A2 igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#3637 / i915#9934)
>   =E2=80=A2 igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#9934) +3 other tests skip
>   =E2=80=A2 igt@kms_flip@2x-plain-flip-ts-check:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3637 / i915#9934) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-dow=
nscaling:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15643) +3 other tests sk=
ip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-ups=
caling:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15643) +4 other tests sk=
ip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downs=
caling:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3555 / i915#8810 / i915#=
8813) +1 other
>         test skip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-ups=
caling:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15643) +4 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP +49 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-m=
map-gtt:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1825) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-suspend:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#10056)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-dr=
aw-blt:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15989) +17 other tests s=
kip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-ono=
ff:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#15989) +10 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-indfb-pgflip-=
blt:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15991) +19 other tests s=
kip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-mov=
e:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15991) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-ono=
ff:
>=20
>       =E2=96=A1 shard-glk: PASS -> SKIP +19 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP +84 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15989) +13 other tests sk=
ip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-=
blt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15991 / i915#5354) +2 oth=
er tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-ono=
ff:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP +55 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15102 / i915#3023) +9 oth=
er tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb=
-draw-mmap-gtt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15990) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-indfb-pgfl=
ip-blt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15102) +25 other tests s=
kip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-=
draw-mmap-cpu:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15102) +20 other tests sk=
ip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-cpu:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> SKIP +69 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-stridechange:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15102) +6 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-offscreen-pri-indfb-draw-=
mmap-gtt:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15989) +11 other tests=
 skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-pri-indfb-multidraw:
>=20
>       =E2=96=A1 shard-dg2: PASS -> SKIP (i915#15989) +3 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-b=
lt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15989) +16 other tests s=
kip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-m=
map-cpu:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15989) +3 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-m=
map-gtt:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15990 / i915#8708) +2 ot=
her tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-m=
map-wc:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15991 / i915#1825) +15 o=
ther tests
>         skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15990 / i915#8708)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-dr=
aw-mmap-wc:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15102) +23 other tests=
 skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-rgb101010-draw-mmap-gtt:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15990) +6 other tests sk=
ip
>   =E2=80=A2 igt@kms_hdr@bpc-switch:
>=20
>       =E2=96=A1 shard-dg2: PASS -> SKIP (i915#16518 / i915#3555 / i915#82=
28)
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#3555 / i915#8228) +1 other =
test skip
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3555 / i915#8228)
>   =E2=80=A2 igt@kms_hdr@static-swap:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555 / i915#8228) +1 othe=
r test skip
>   =E2=80=A2 igt@kms_joiner@basic-big-joiner:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15460)
>   =E2=80=A2 igt@kms_joiner@basic-force-big-joiner:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15459)
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15459)
>   =E2=80=A2 igt@kms_joiner@basic-ultra-joiner:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15458)
>   =E2=80=A2 igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15815)
>   =E2=80=A2 igt@kms_panel_fitting@atomic-fastset:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#6301)
>   =E2=80=A2 igt@kms_panel_fitting@legacy:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#6301)
>   =E2=80=A2 igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14712)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-modifier:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15709)
>   =E2=80=A2 igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clampi=
ng:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15709) +2 other tests sk=
ip
>   =E2=80=A2 igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@p=
ipe-b-plane-7:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16386) +1 other test skip
>   =E2=80=A2 igt@kms_plane@pixel-format-y-tiled-modifier:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15709) +3 other tests sk=
ip
>   =E2=80=A2 igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15709) +2 other tests skip
>   =E2=80=A2 igt@kms_plane_alpha_blend@constant-alpha-max:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> FAIL (i915#10647 / i915#12169)
>   =E2=80=A2 igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> FAIL (i915#10647) +1 other test fa=
il
>   =E2=80=A2 igt@kms_plane_lowres@tiling-yf:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#3555) +2 other tests s=
kip
>   =E2=80=A2 igt@kms_plane_multiple@tiling-yf:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14259)
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#14259)
>   =E2=80=A2 igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotatio=
n@pipe-c:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15329) +14 other tests s=
kip
>   =E2=80=A2 igt@kms_pm_backlight@bad-brightness:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#12343 / i915#9812)
>   =E2=80=A2 igt@kms_pm_backlight@fade-with-suspend:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#12343 / i915#5354) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_pm_dc@dc5-pageflip-negative:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#9685)
>   =E2=80=A2 igt@kms_pm_lpsp@screens-disabled:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#8430)
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#8430)
>   =E2=80=A2 igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>=20
>       =E2=96=A1 shard-dg2: PASS -> SKIP (i915#15073)
>   =E2=80=A2 igt@kms_pm_rpm@dpms-non-lpsp:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#15073) +1 other test skip
>   =E2=80=A2 igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15073)
>   =E2=80=A2 igt@kms_prime@basic-crc-hybrid:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#6524 / i915#6805)
>   =E2=80=A2 igt@kms_prime@basic-modeset-hybrid:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#6524) +1 other test skip
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP (i915#11520) +6 other tests skip
>   =E2=80=A2 igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> SKIP (i915#11520) +5 other tests s=
kip
>   =E2=80=A2 igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> SKIP (i915#11520)
>   =E2=80=A2 igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#11520) +4 other tests skip
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#12316) +2 other tests sk=
ip
>   =E2=80=A2 igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#11520)
>   =E2=80=A2 igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-full=
y-sf:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11520) +6 other tests sk=
ip
>   =E2=80=A2 igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#11520) +4 other tests =
skip
>   =E2=80=A2 igt@kms_psr2_su@page_flip-p010:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4348)
>   =E2=80=A2 igt@kms_psr@fbc-pr-sprite-plane-onoff:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1072 / i915#9732) +10 oth=
er tests skip
>   =E2=80=A2 igt@kms_psr@fbc-psr-primary-mmap-cpu@edp-1:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#9688) +9 other tests skip
>   =E2=80=A2 igt@kms_psr@fbc-psr2-basic:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#9732) +8 other tests s=
kip
>   =E2=80=A2 igt@kms_psr@fbc-psr2-primary-mmap-gtt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#9732) +14 other tests sk=
ip
>   =E2=80=A2 igt@kms_psr@psr-sprite-mmap-gtt@edp-1:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#4077 / i915#9688) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#15500 / i915#1618=
4)
>   =E2=80=A2 igt@kms_rotation_crc@multiplane-rotation-cropping-top:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#15492 / i915#1618=
4)
>   =E2=80=A2 igt@kms_rotation_crc@primary-rotation-270:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#12755 / i915#15867)
>   =E2=80=A2 igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#5289) +1 other test skip
>   =E2=80=A2 igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#12755 / i915#15867)
>   =E2=80=A2 igt@kms_selftest@drm_framebuffer:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> ABORT (i915#13179) +1 other test abo=
rt
>   =E2=80=A2 igt@kms_setmode@invalid-clone-exclusive-crtc:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3555 / i915#8809 / i915#=
8823)
>   =E2=80=A2 igt@kms_setmode@invalid-clone-single-crtc-stealing:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3555 / i915#8809)
>   =E2=80=A2 igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#8623)
>   =E2=80=A2 igt@kms_vblank@ts-continuation-suspend:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#12276) +1 other tes=
t incomplete
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#12276)
>   =E2=80=A2 igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> INCOMPLETE (i915#12276)
>   =E2=80=A2 igt@kms_vrr@flip-basic-fastset:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#9906) +1 other test sk=
ip
>   =E2=80=A2 igt@kms_vrr@flip-dpms:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15243 / i915#3555)
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3555 / i915#8808)
>   =E2=80=A2 igt@perf@mi-rpc:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#2434)
>   =E2=80=A2 igt@perf@per-context-mode-unprivileged:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#2435)
>   =E2=80=A2 igt@prime_udl@share-import:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16420)
>   =E2=80=A2 igt@prime_vgem@basic-fence-mmap:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3708 / i915#4077)
>   =E2=80=A2 igt@prime_vgem@fence-write-hang:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#3708)
>   =E2=80=A2 igt@sriov_basic@enable-vfs-bind-unbind-each:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9917)
>   =E2=80=A2 igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-random:
>=20
>       =E2=96=A1 shard-mtlp: NOTRUN -> SKIP (i915#16066) +8 other tests sk=
ip
>   =E2=80=A2 igt@tools_test@sysfs_l3_parity:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> SKIP +82 other tests skip
>=20
> Possible fixes
>=20
>   =E2=80=A2 igt@gem_ctx_isolation@preservation-s3:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#13356) -> PASS +4 other tests=
 pass
>   =E2=80=A2 igt@gem_linear_blits@normal:
>=20
>       =E2=96=A1 shard-dg1: FAIL (i915#15391) -> PASS
>   =E2=80=A2 igt@i915_pm_rps@engine-order:
>=20
>       =E2=96=A1 shard-glk: FAIL (i915#14896) -> PASS
>   =E2=80=A2 igt@i915_suspend@sysfs-reader:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#4817) -> PASS
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#15582) -> PASS +1 other test =
pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-b=
lt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15989) -> PASS +11 other tests pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-2p-primscrn-cur-indfb-draw-m=
map-wc:
>=20
>       =E2=96=A1 shard-glk: SKIP -> PASS +13 other tests pass
>   =E2=80=A2 igt@kms_pm_rpm@dpms-lpsp:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15073) -> PASS
>   =E2=80=A2 igt@kms_pm_rpm@dpms-non-lpsp:
>=20
>       =E2=96=A1 shard-dg1: DMESG-WARN (i915#4423) -> PASS
>   =E2=80=A2 igt@kms_pm_rpm@modeset-non-lpsp:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15073) -> PASS +2 other tests pass
>   =E2=80=A2 igt@kms_vblank@ts-continuation-suspend:
>=20
>       =E2=96=A1 shard-dg2: ABORT (i915#15132) -> PASS
>   =E2=80=A2 igt@perf_pmu@busy-double-start@rcs0:
>=20
>       =E2=96=A1 shard-mtlp: FAIL (i915#4349) -> PASS
>   =E2=80=A2 igt@perf_pmu@rc6-suspend:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#13356 / i915#16236) -> PASS
>=20
> Warnings
>=20
>   =E2=80=A2 igt@dmabuf@all-tests:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15931) -> SKIP (i915#14544 / i915#1=
5931)
>   =E2=80=A2 igt@gem_ccs@large-ctrl-surf-copy:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13008) -> SKIP (i915#13008 / i915#1=
4544)
>   =E2=80=A2 igt@gem_exec_balancer@parallel-keep-in-fence:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#4525) -> SKIP (i915#14544 / i915#45=
25) +1 other
>         test skip
>   =E2=80=A2 igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3281) -> SKIP (i915#32=
81) +5 other
>         tests skip
>   =E2=80=A2 igt@gem_exec_reloc@basic-wc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3281) -> SKIP (i915#14544 / i915#32=
81) +2 other
>         tests skip
>   =E2=80=A2 igt@gem_lmem_swapping@massive-random:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4613) -> SKIP (i915#46=
13) +1 other
>         test skip
>   =E2=80=A2 igt@gem_pxp@hw-rejects-pxp-context:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13717 / i915#14544) -> SKIP (i915#1=
3717)
>   =E2=80=A2 igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3282) -> SKIP (i915#32=
82)
>   =E2=80=A2 igt@gem_userptr_blits@create-destroy-unsync:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3297) -> SKIP (i915#32=
97)
>   =E2=80=A2 igt@gen9_exec_parse@basic-rejected:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#2527) -> SKIP (i915#25=
27)
>   =E2=80=A2 igt@i915_pm_sseu@full-enable:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4387) -> SKIP (i915#43=
87)
>   =E2=80=A2 igt@kms_async_flips@async-flip-suspend-resume:
>=20
>       =E2=96=A1 shard-rkl: ABORT (i915#15132) -> INCOMPLETE (i915#12761)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-addfb:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#5286) -> SKIP (i915#52=
86)
>   =E2=80=A2 igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3828) -> SKIP (i915#14544 / i915#38=
28)
>   =E2=80=A2 igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3638) -> SKIP (i915#14544 / i915#36=
38)
>   =E2=80=A2 igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3638) -> SKIP (i915#36=
38)
>   =E2=80=A2 igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-=
flip:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544) -> SKIP +22 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hd=
mi-a-2:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#6095) -> SKIP (i915#60=
95) +1 other
>         test skip
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14098 / i915#6095) -> SKIP (i915#14=
098 / i915#
>         14544 / i915#6095)
>   =E2=80=A2 igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14098 / i915#14544 / i915#6095) -> =
SKIP (i915#
>         14098 / i915#6095) +4 other tests skip
>   =E2=80=A2 igt@kms_cdclk@plane-scaling:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3742) -> SKIP (i915#37=
42)
>   =E2=80=A2 igt@kms_chamelium_audio@dp-audio-after-suspend:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11151 / i915#14544) -> SKIP (i915#1=
1151)
>   =E2=80=A2 igt@kms_chamelium_hpd@vga-hpd:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11151 / i915#14544 / i915#7828) -> =
SKIP (i915#
>         11151 / i915#7828)
>   =E2=80=A2 igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11151 / i915#7828) -> SKIP (i915#11=
151 / i915#
>         14544 / i915#7828)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15330) -> SKIP (i915#1=
5330)
>   =E2=80=A2 igt@kms_content_protection@lic-type-1:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15865) -> SKIP (i915#1=
5865)
>   =E2=80=A2 igt@kms_content_protection@srm:
>=20
>       =E2=96=A1 shard-dg2: FAIL (i915#7173) -> SKIP (i915#15865) +1 other=
 test skip
>       =E2=96=A1 shard-rkl: SKIP (i915#15865) -> SKIP (i915#14544 / i915#1=
5865)
>   =E2=80=A2 igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#4103) -> SKIP (i915#14544 / i915#41=
03)
>   =E2=80=A2 igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>=20
>       =E2=96=A1 shard-rkl: SKIP -> SKIP (i915#14544) +17 other tests skip
>   =E2=80=A2 igt@kms_feature_discovery@dp-mst:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9337) -> SKIP (i915#93=
37)
>   =E2=80=A2 igt@kms_feature_discovery@psr2:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#658) -> SKIP (i915#14544 / i915#658)
>   =E2=80=A2 igt@kms_flip@2x-flip-vs-suspend:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12745 / i915#4839 / i915#6113=
) ->
>         INCOMPLETE (i915#12745 / i915#4839)
>   =E2=80=A2 igt@kms_flip@2x-plain-flip-interruptible:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9934) -> SKIP (i915#14544 / i915#99=
34) +1 other
>         test skip
>   =E2=80=A2 igt@kms_flip@2x-plain-flip-ts-check:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9934) -> SKIP (i915#99=
34) +3 other
>         tests skip
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12314 / i915#12745 / i915#483=
9 / i915#6113)
>         -> INCOMPLETE (i915#12745 / i915#4839 / i915#6113)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12314 / i915#12745) -> INCOMP=
LETE (i915#
>         12745)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-m=
map-wc:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#15990 / i915#4423 / i915#8708) -> S=
KIP (i915#
>         15990 / i915#8708)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-dra=
w-blt:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#4423) -> SKIP
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#1825) -> SKIP (i915#18=
25) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15102 / i915#3023) -> SKIP (i915#14=
544 / i915#
>         15102 / i915#3023) +5 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15102) -> SKIP (i915#10433 / i915#1=
5102) +4 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-suspend:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15989) -> ABORT (i915#15132)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9766) -> SKIP (i915#97=
66)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-=
blt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15102) -> SKIP (i915#14544 / i915#1=
5102) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-m=
map-cpu:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#10433 / i915#15102) -> SKIP (i915#1=
5102) +1 other
>         test skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-m=
map-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15102 / i915#3023) -> =
SKIP (i915#
>         15102 / i915#3023) +7 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-m=
map-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1825) -> SKIP (i915#14544 / i915#18=
25) +1 other
>         test skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-dr=
aw-render:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15102) -> SKIP (i915#1=
5102) +9 other
>         tests skip
>   =E2=80=A2 igt@kms_hdr@brightness-with-hdr:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#12713) -> SKIP (i915#1187 / i915#12=
713)
>   =E2=80=A2 igt@kms_joiner@basic-force-ultra-joiner:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15458) -> SKIP (i915#1=
5458)
>   =E2=80=A2 igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14712) -> SKIP (i915#14544 / i915#1=
4712)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15709) -> SKIP (i915#14544 / i915#1=
5709)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source=
-clamping:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15709) -> SKIP (i915#1=
5709) +1 other
>         test skip
>   =E2=80=A2 igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-=
a:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15329) -> SKIP (i915#1=
5329) +3 other
>         tests skip
>   =E2=80=A2 igt@kms_pm_dc@dc9-dpms:
>=20
>       =E2=96=A1 shard-tglu: SKIP (i915#15739) -> SKIP (i915#15128)
>   =E2=80=A2 igt@kms_pm_lpsp@kms-lpsp:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9340) -> SKIP (i915#3828)
>   =E2=80=A2 igt@kms_pm_rpm@modeset-lpsp-stress:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15073) -> SKIP (i915#1=
5073)
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-s=
f:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11520 / i915#14544) -> SKIP (i915#1=
1520) +1 other
>         test skip
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11520) -> SKIP (i915#11520 / i915#1=
4544)
>   =E2=80=A2 igt@kms_psr2_su@page_flip-xrgb8888:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9683) -> SKIP (i915#96=
83)
>   =E2=80=A2 igt@kms_psr@pr-cursor-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1072 / i915#9732) -> SKIP (i915#107=
2 / i915#14544
>         / i915#9732) +4 other tests skip
>   =E2=80=A2 igt@kms_psr@psr2-cursor-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1072 / i915#14544 / i915#9732) -> S=
KIP (i915#1072
>         / i915#9732) +7 other tests skip
>   =E2=80=A2 igt@kms_rotation_crc@bad-pixel-format:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15867) -> SKIP (i915#12755 / i915#1=
5867)
>   =E2=80=A2 igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#5289) -> SKIP (i915#52=
89)
>   =E2=80=A2 igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15867 / i915#5190) -> SKIP (i915#12=
755 / i915#
>         15867 / i915#5190)
>   =E2=80=A2 igt@kms_scaling_modes@scaling-mode-full-aspect:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3555) -> SKIP (i915#14544 / i915#35=
55)
>   =E2=80=A2 igt@kms_scaling_modes@scaling-mode-none:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3555) -> SKIP (i915#35=
55) +1 other
>         test skip
>   =E2=80=A2 igt@prime_vgem@fence-flip-hang:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3708) -> SKIP (i915#37=
08) +1 other
>         test skip
>=20
> Build changes
>=20
>   =E2=80=A2 Linux: CI_DRM_18743 -> Patchwork_169586v1
>=20
> CI-20190529: 20190529
> CI_DRM_18743: 1fbbf91a9b037639c3c7ffa4f92abb3e701bbf3d @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_8989: a8e2cbd2854d7980a9eccecc6e0c801d0824b88f @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_169586v1: 1fbbf91a9b037639c3c7ffa4f92abb3e701bbf3d @ git://
> anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://
> anongit.freedesktop.org/piglit
>
