Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oKgeNotkRmpGSgsAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:15:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 018FB6F834F
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Jul 2026 15:15:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TDjRyPth;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD7410E2BA;
	Thu,  2 Jul 2026 13:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 615DA10F369;
 Thu,  2 Jul 2026 13:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782998151; x=1814534151;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=KrDU63z//ws4mcYzwLbFsCnCTBb3phlwQI/POzjUArs=;
 b=TDjRyPthVXBViTcq7e9eZDzeW1+ZPqDc+vDJLnkYd2e/tttjg+r1X5MX
 wQrOl6oxxMuq35kb2hb8K+SJ7g9TVoCPCEh1Q0fmjojLvdbxn0X3wz/eG
 IbzBvpSiLgRWC3cIjbKi9e4wjbGj2tjlA/jzSOF011bSwCnfuRBUquHhr
 HgzEqSGR5oO1qfBx91bCLLbjFT4uOb/naw1+rqO1InUI9gcS3YIDBkUbC
 mXz/y5inIBvRVbQ3bhFn1CW/7T8+asBj6KeWB6O+XaTQ9szT62YoZ89VI
 a/5EMzK65Q2YiwVJHE0TjyJvrcVjO5+aMohNL0CEm3v1Bb+CbJRGE4Fm3 w==;
X-CSE-ConnectionGUID: RpDPazVFQxuVnSRMbHGpcQ==
X-CSE-MsgGUID: rqSLbLw/RUK+5QFTzKkuTA==
X-IronPort-AV: E=McAfee;i="6800,10657,11835"; a="106551750"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="106551750"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:15:50 -0700
X-CSE-ConnectionGUID: GXza8lcbQW2PdIJjndmf9w==
X-CSE-MsgGUID: cYtSlaPPR1y4Fay2D/NIHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253018779"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.199])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 06:15:49 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <178293630030.139769.18027494276740769214@6beec6c84f66>
References: <20260701075555.52142-1-joonas.lahtinen@linux.intel.com>
 <178293630030.139769.18027494276740769214@6beec6c84f66>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/gem: Fix NULL
 deref in I915_CONTEXT_PARAM_SSEU
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org, I915-ci-infra@lists.freedesktop.org
Date: Thu, 02 Jul 2026 16:15:25 +0300
Message-ID: <178299812564.71123.3085431608228879577@jlahtine-mobl>
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
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
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
X-Rspamd-Queue-Id: 018FB6F834F

(+ i915-ci-infra for unrelated failure)

Quoting Patchwork (2026-07-01 23:05:00)
> Patch Details
>=20
> Series:  drm/i915/gem: Fix NULL deref in I915_CONTEXT_PARAM_SSEU
> URL:     https://patchwork.freedesktop.org/series/169561/
> State:   failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_169561v1/inde=
x.html
>=20
> CI Bug Log - changes from CI_DRM_18737_full -> Patchwork_169561v1_full
>=20
> Summary
>=20
> FAILURE
>=20
> Serious unknown changes coming with Patchwork_169561v1_full absolutely ne=
ed to
> be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_169561v1_full, please notify your bug team
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
> Patchwork_169561v1_full:
>=20
> IGT changes
>=20
> Possible regressions
>=20
>   =E2=80=A2 igt@gem_exec_gttfill (NEW):
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> INCOMPLETE
>   =E2=80=A2 igt@kms_chamelium_audio@hdmi-audio-after-suspend:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP
>   =E2=80=A2 igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> FAIL
>=20
> Warnings
>=20
>   =E2=80=A2 igt@kms_chamelium_audio@dp-audio-after-suspend:
>       =E2=96=A1 shard-rkl: SKIP (i915#14544) -> SKIP
>=20
> New tests
>=20
> New tests have been introduced between CI_DRM_18737_full and
> Patchwork_169561v1_full:
>=20
> New IGT tests (30)
>=20
>   =E2=80=A2 igt@gem_exec_gttfill:
>=20
>       =E2=96=A1 Statuses : 1 incomplete(s)
>       =E2=96=A1 Exec time: [0.0] s
>   =E2=80=A2 igt@gem_exec_gttfill@blit-noreloc-keep-cache:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@create-protected-buffer:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@fbc-2p-scndscrn-indfb-pgflip-blt:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@fbchdr-2p-scndscrn-spr-indfb-draw-mmap-c=
pu:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@flip-64bpp-xtile-to-16bpp-xtile-downscal=
ing:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@hdr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@invalid-signal-bad-pad:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@legacy-dpms:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@system-suspend-idle:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@gem_exec_gttfill@x-tiled-32bpp-rotate-270:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@kms_color@ctm-0-25@pipe-a-dp-3:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [1.92] s
>   =E2=80=A2 igt@kms_color@ctm-0-25@pipe-b-dp-3:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [1.72] s
>   =E2=80=A2 igt@kms_color@ctm-0-25@pipe-c-dp-3:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [1.71] s
>   =E2=80=A2 igt@kms_color@ctm-0-25@pipe-d-dp-3:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [1.76] s
>   =E2=80=A2 igt@kms_color@ctm-0-75@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [1.94] s
>   =E2=80=A2 igt@kms_color@ctm-0-75@pipe-b-hdmi-a-2:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [1.76] s
>   =E2=80=A2 igt@kms_color@ctm-max@pipe-a-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.74] s
>   =E2=80=A2 igt@kms_color@ctm-max@pipe-b-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.54] s
>   =E2=80=A2 igt@kms_color@ctm-max@pipe-c-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.53] s
>   =E2=80=A2 igt@kms_color@ctm-max@pipe-d-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.55] s
>   =E2=80=A2 igt@kms_color@legacy-gamma@pipe-a-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.75] s
>   =E2=80=A2 igt@kms_color@legacy-gamma@pipe-b-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.55] s
>   =E2=80=A2 igt@kms_color@legacy-gamma@pipe-c-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.56] s
>   =E2=80=A2 igt@kms_color@legacy-gamma@pipe-d-hdmi-a-4:
>=20
>       =E2=96=A1 Statuses : 1 pass(s)
>       =E2=96=A1 Exec time: [0.56] s
>   =E2=80=A2 igt@kms_pm_rpm@basic-big-joiner:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@kms_pm_rpm@export-basic:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@kms_pm_rpm@fbc-rgb565-draw-pwrite:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@kms_pm_rpm@thresholds-idle:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>   =E2=80=A2 igt@kms_pm_rpm@verify-ccs:
>=20
>       =E2=96=A1 Statuses :
>       =E2=96=A1 Exec time: [None] s
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_169561v1_full that come from known
> issues:
>=20
> IGT changes
>=20
> Issues hit
>=20
>   =E2=80=A2 igt@gem_bad_reloc@negative-reloc-lut:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3281) +5 other tests skip
>   =E2=80=A2 igt@gem_ccs@large-ctrl-surf-copy:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#13008)
>   =E2=80=A2 igt@gem_create@create-ext-cpu-access-big:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> FAIL (i915#15454)
>   =E2=80=A2 igt@gem_ctx_isolation@preservation-s3@bcs0:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#13356 / i915#16466)=
 +1 other test
>         incomplete
>   =E2=80=A2 igt@gem_ctx_sseu@invalid-args:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#280)
>   =E2=80=A2 igt@gem_ctx_sseu@mmap-args:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#280)
>   =E2=80=A2 igt@gem_eio@in-flight-suspend:
>=20
>       =E2=96=A1 shard-dg2: PASS -> ABORT (i915#15131)
>   =E2=80=A2 igt@gem_exec_balancer@parallel-ordering:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#4525) +1 other test skip
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4525) +2 other tests skip
>   =E2=80=A2 igt@gem_exec_params@secure-non-master:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP +2 other tests skip
>   =E2=80=A2 igt@gem_exec_reloc@basic-cpu-read-noreloc:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3281) +1 other test skip
>   =E2=80=A2 igt@gem_huc_copy@huc-copy:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#2190)
>   =E2=80=A2 igt@gem_lmem_swapping@heavy-multi:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4613)
>   =E2=80=A2 igt@gem_lmem_swapping@heavy-verify-random:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#4613) +1 other test sk=
ip
>   =E2=80=A2 igt@gem_lmem_swapping@massive-random:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP (i915#4613) +2 other tests skip
>   =E2=80=A2 igt@gem_lmem_swapping@verify-ccs:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#4613)
>   =E2=80=A2 igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4077) +3 other tests skip
>   =E2=80=A2 igt@gem_mmap_wc@write-wc-read-gtt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4083) +1 other test skip
>   =E2=80=A2 igt@gem_partial_pwrite_pread@writes-after-reads:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3282)
>   =E2=80=A2 igt@gem_pread@exhaustion:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> WARN (i915#2658)
>       =E2=96=A1 shard-tglu: NOTRUN -> WARN (i915#2658)
>   =E2=80=A2 igt@gem_pxp@create-protected-buffer:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4270) +1 other test skip
>   =E2=80=A2 igt@gem_pxp@hw-rejects-pxp-buffer:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#13717)
>   =E2=80=A2 igt@gem_readwrite@read-write:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3282) +4 other tests skip
>   =E2=80=A2 igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#5190 / i915#8428)
>   =E2=80=A2 igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#8411)
>   =E2=80=A2 igt@gem_tiled_pread_basic@basic:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15657)
>   =E2=80=A2 igt@gem_userptr_blits@coherency-unsync:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3297)
>   =E2=80=A2 igt@gem_userptr_blits@dmabuf-unsync:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3297) +1 other test skip
>   =E2=80=A2 igt@gem_userptr_blits@forbidden-operations:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3282 / i915#3297)
>   =E2=80=A2 igt@gem_userptr_blits@map-fixed-invalidate:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3297 / i915#4880)
>   =E2=80=A2 igt@gem_userptr_blits@unsync-unmap-cycles:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3297)
>   =E2=80=A2 igt@gem_workarounds@suspend-resume:
>=20
>       =E2=96=A1 shard-glk: PASS -> INCOMPLETE (i915#13356 / i915#14586)
>   =E2=80=A2 igt@gen9_exec_parse@allowed-all:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#2856)
>   =E2=80=A2 igt@gen9_exec_parse@basic-rejected-ctx-param:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#2527 / i915#2856) +1 oth=
er test skip
>   =E2=80=A2 igt@gen9_exec_parse@bb-start-param:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#2527 / i915#2856) +2 o=
ther tests
>         skip
>   =E2=80=A2 igt@gen9_exec_parse@secure-batches:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#2527) +2 other tests skip
>   =E2=80=A2 igt@i915_drm_fdinfo@virtual-busy:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#14118)
>   =E2=80=A2 igt@i915_pm_rc6_residency@rc6-idle:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#14498)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14498)
>   =E2=80=A2 igt@i915_pm_rps@reset:
>=20
>       =E2=96=A1 shard-snb: PASS -> TIMEOUT (i915#16162)
>   =E2=80=A2 igt@i915_query@hwconfig_table:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#6245)
>   =E2=80=A2 igt@i915_query@query-topology-known-pci-ids:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16109)
>   =E2=80=A2 igt@i915_query@query-topology-unsupported:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16079)
>   =E2=80=A2 igt@i915_suspend@basic-s3-without-i915:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> INCOMPLETE (i915#4817 / i915#7443)
>   =E2=80=A2 igt@i915_suspend@forcewake:
>=20
>       =E2=96=A1 shard-rkl: PASS -> ABORT (i915#15140)
>   =E2=80=A2 igt@intel_hwmon@hwmon-read:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#7707)
>   =E2=80=A2 igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4212)
>   =E2=80=A2 igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#12454 / i915#12712)
>   =E2=80=A2 igt@kms_async_flips@async-flip-suspend-resume:
>=20
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#12761)
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#12761) +1 other t=
est incomplete
>   =E2=80=A2 igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> INCOMPLETE (i915#12761)
>   =E2=80=A2 igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9531)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#5286) +2 other tests s=
kip
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-fli=
p:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#5286) +2 other tests skip
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#5286) +6 other tests skip
>   =E2=80=A2 igt@kms_big_fb@linear-64bpp-rotate-90:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3638) +5 other tests skip
>   =E2=80=A2 igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> SKIP +66 other tests skip
>   =E2=80=A2 igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-fl=
ip:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4538 / i915#5190) +2 othe=
r tests skip
>   =E2=80=A2 igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> SKIP +96 other tests skip
>   =E2=80=A2 igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc@pipe-a-hd=
mi-a-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#6095) +90 ot=
her tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#12313)
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#6095) +59 other tests sk=
ip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-=
b-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#6095) +83 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-=
a-3:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#6095) +179 other tests sk=
ip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-=
a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14544 / i915#6095) +3 oth=
er tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-c-hdmi-=
a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14098 / i915#14544 / i915=
#6095) +1
>         other test skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-=
hdmi-a-1:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#6095) +19 other tests =
skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#6095) +16 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a=
-1:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14098 / i915#6095) +48 ot=
her tests skip
>   =E2=80=A2 igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#10434 / i915=
#6095) +8
>         other tests skip
>   =E2=80=A2 igt@kms_cdclk@mode-transition:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3742)
>   =E2=80=A2 igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13783) +3 other tests skip
>   =E2=80=A2 igt@kms_chamelium_audio@hdmi-audio-edid:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11151 / i915#7828) +6 ot=
her tests skip
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-lut1d:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16471)
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-lut1d-ctm3x4-lut1d:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16471)
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#16471)
>   =E2=80=A2 igt@kms_chamelium_edid@hdmi-edid-read:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#11151 / i915#7828) +8 oth=
er tests skip
>   =E2=80=A2 igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#11151 / i915#7828)
>   =E2=80=A2 igt@kms_chamelium_hpd@vga-hpd-fast:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#11151 / i915#7828) +2 =
other tests
>         skip
>   =E2=80=A2 igt@kms_content_protection@dp-mst-lic-type-1:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15330 / i915#3116 / i9=
15#3299)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15330)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15330)
>   =E2=80=A2 igt@kms_content_protection@lic-type-0:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15865) +2 other tests sk=
ip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-offscreen-512x170:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#13049)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-offscreen-max-size:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#3555)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-onscreen-64x21:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> FAIL (i915#13566) +2 other tests fail
>   =E2=80=A2 igt@kms_cursor_crc@cursor-random-32x10:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555) +3 other tests skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3555) +2 other tests skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-32x32:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3555) +4 other tests skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-512x170:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#13049)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-suspend:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#12358 / i915#1415=
2 / i915#7882)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#12358 / i915#1415=
2)
>   =E2=80=A2 igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4103) +2 other tests skip
>   =E2=80=A2 igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions:
>=20
>       =E2=96=A1 shard-rkl: PASS -> FAIL (i915#15967)
>   =E2=80=A2 igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-var=
ying-size:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13046 / i915#5354) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#9067)
>   =E2=80=A2 igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#4103) +1 other test skip
>   =E2=80=A2 igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9723)
>   =E2=80=A2 igt@kms_display_modes@extended-mode-basic:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#13691)
>   =E2=80=A2 igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555 / i915#3804)
>   =E2=80=A2 igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3804)
>   =E2=80=A2 igt@kms_dp_link_training@non-uhbr-sst:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13749)
>   =E2=80=A2 igt@kms_dp_link_training@uhbr-mst:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#13748)
>   =E2=80=A2 igt@kms_dsc@dsc-basic-ultrajoiner:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16361) +2 other tests skip
>   =E2=80=A2 igt@kms_dsc@dsc-with-formats:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16361) +2 other tests sk=
ip
>   =E2=80=A2 igt@kms_dsc@dsc-with-output-formats-bigjoiner:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#16361) +2 other tests =
skip
>   =E2=80=A2 igt@kms_dsc@dsc-with-output-formats-with-bpc-ultrajoiner:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16361)
>   =E2=80=A2 igt@kms_fbcon_fbt@psr-suspend:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3955)
>   =E2=80=A2 igt@kms_feature_discovery@display-3x:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16081)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16081)
>   =E2=80=A2 igt@kms_flip@2x-blocking-wf_vblank:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#3637 / i915#9934) +1 o=
ther test skip
>   =E2=80=A2 igt@kms_flip@2x-plain-flip-interruptible:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3637 / i915#9934) +4 oth=
er tests skip
>   =E2=80=A2 igt@kms_flip@2x-wf_vblank-ts-check:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9934) +5 other tests skip
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend:
>=20
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#16276 / i915#6113) +1=
 other test
>         incomplete
>       =E2=96=A1 shard-glk10: NOTRUN -> INCOMPLETE (i915#12745 / i915#4839)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> INCOMPLETE (i915#12745)
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-=
upscaling:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15643) +1 other test s=
kip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downs=
caling:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15643) +5 other tests sk=
ip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-ups=
caling:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15643) +5 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-m=
map-cpu:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP +41 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15991 / i915#5354) +6 oth=
er tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-m=
map-gtt:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1825) +7 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-tiling-4:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#5439)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-dra=
w-mmap-cpu:
>=20
>       =E2=96=A1 shard-glk: PASS -> SKIP +11 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-dra=
w-blt:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#15989) +6 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-shrfb-msflip-=
blt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP +83 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-dra=
w-mmap-cpu:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15991) +8 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15989) +12 other tests sk=
ip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-dr=
aw-mmap-gtt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15104 / i915#15990)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15102 / i915#3023) +12 ot=
her tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15990 / i915#8708) +4 oth=
er tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-=
blt:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP +89 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#5439)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-indfb-pgfl=
ip-blt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15102) +26 other tests s=
kip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-b=
lt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15989) +16 other tests s=
kip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-p=
write:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15989) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-mmap-wc:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15990) +8 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15989) +8 other tests =
skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-rgb565-draw-mmap-cpu:
>=20
>       =E2=96=A1 shard-dg2: PASS -> SKIP (i915#15989) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-suspend:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> ABORT (i915#15132)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-=
mmap-gtt:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15102) +14 other tests=
 skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-mov=
e:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15102) +18 other tests sk=
ip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-slowdraw:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15102) +5 other tests skip
>   =E2=80=A2 igt@kms_hdr@static-toggle-dpms:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#3555 / i915#8228)
>   =E2=80=A2 igt@kms_hdr@static-toggle-suspend:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555 / i915#8228) +2 othe=
r tests skip
>   =E2=80=A2 igt@kms_joiner@basic-big-joiner:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15460)
>   =E2=80=A2 igt@kms_joiner@basic-ultra-joiner:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15458)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15458)
>   =E2=80=A2 igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15638 / i915#15722)
>   =E2=80=A2 igt@kms_panel_fitting@atomic-fastset:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#6301)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#6301)
>   =E2=80=A2 igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14712)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15709) +2 other tests sk=
ip
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source=
-clamping:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15709)
>   =E2=80=A2 igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15709)
>   =E2=80=A2 igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@p=
ipe-a-plane-5:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16386) +3 other tests skip
>   =E2=80=A2 igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@p=
ipe-b-plane-7:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16386) +1 other test skip
>   =E2=80=A2 igt@kms_plane@pixel-format-yf-tiled-modifier:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15709) +3 other tests skip
>   =E2=80=A2 igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>=20
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#14412) +1 other test =
incomplete
>   =E2=80=A2 igt@kms_plane_multiple@2x-tiling-none:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#13958)
>   =E2=80=A2 igt@kms_plane_multiple@2x-tiling-x:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13958)
>   =E2=80=A2 igt@kms_plane_multiple@tiling-yf:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14259)
>   =E2=80=A2 igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotatio=
n@pipe-c:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15329) +9 other tests sk=
ip
>   =E2=80=A2 igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rot=
ation:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15329 / i915#3555)
>   =E2=80=A2 igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation=
@pipe-c:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15329) +6 other tests skip
>   =E2=80=A2 igt@kms_pm_backlight@basic-brightness:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#12343 / i915#9812)
>   =E2=80=A2 igt@kms_pm_backlight@fade:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#12343 / i915#5354)
>   =E2=80=A2 igt@kms_pm_dc@dc6-psr:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15948)
>   =E2=80=A2 igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15073) +1 other test skip
>       =E2=96=A1 shard-dg1: PASS -> SKIP (i915#15073)
>   =E2=80=A2 igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#15073)
>   =E2=80=A2 igt@kms_pm_rpm@package-g7:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15403)
>   =E2=80=A2 igt@kms_prime@basic-modeset-hybrid:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#6524)
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#11520) +1 other test skip
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#11520) +5 other tests skip
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> SKIP (i915#11520)
>   =E2=80=A2 igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP (i915#11520) +4 other tests skip
>   =E2=80=A2 igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#11520) +3 other tests =
skip
>   =E2=80=A2 igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> SKIP (i915#11520) +2 other tests s=
kip
>   =E2=80=A2 igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-full=
y-sf:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11520) +6 other tests sk=
ip
>   =E2=80=A2 igt@kms_psr2_su@page_flip-nv12:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#9683)
>   =E2=80=A2 igt@kms_psr2_su@page_flip-p010:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9683)
>   =E2=80=A2 igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP +288 other tests skip
>   =E2=80=A2 igt@kms_psr@fbc-psr2-primary-mmap-gtt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#9732) +15 other tests sk=
ip
>   =E2=80=A2 igt@kms_psr@psr-cursor-mmap-cpu:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#1072 / i915#9732) +3 othe=
r tests skip
>   =E2=80=A2 igt@kms_psr@psr-sprite-plane-onoff:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1072 / i915#9732) +17 oth=
er tests skip
>   =E2=80=A2 igt@kms_psr@psr2-sprite-mmap-cpu:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#9732) +7 other tests s=
kip
>   =E2=80=A2 igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15949)
>   =E2=80=A2 igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#5289) +2 other tests skip
>   =E2=80=A2 igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#5289)
>   =E2=80=A2 igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#12755 / i915#15867 / i915=
#5190)
>   =E2=80=A2 igt@kms_tiled_display@basic-test-pattern:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#8623)
>   =E2=80=A2 igt@kms_vblank@ts-continuation-suspend:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#12276) +1 other t=
est incomplete
>   =E2=80=A2 igt@kms_vrr@flip-dpms:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15243 / i915#3555)
>   =E2=80=A2 igt@kms_vrr@lobf:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11920)
>   =E2=80=A2 igt@prime_vgem@basic-fence-read:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3291 / i915#3708)
>   =E2=80=A2 igt@sriov_basic@enable-vfs-autoprobe-on:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#9917)
>   =E2=80=A2 igt@sriov_basic@enable-vfs-bind-unbind-each:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9917)
>=20
> Possible fixes
>=20
>   =E2=80=A2 igt@gem_ctx_isolation@preservation-s3:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#13356) -> PASS +1 other test =
pass
>   =E2=80=A2 igt@gem_exec_suspend@basic-s4-devices:
>=20
>       =E2=96=A1 shard-rkl: ABORT (i915#15542 / i915#7975) -> PASS +1 othe=
r test pass
>   =E2=80=A2 igt@kms_async_flips@alternate-sync-async-flip:
>=20
>       =E2=96=A1 shard-glk: FAIL (i915#14888) -> PASS +1 other test pass
>   =E2=80=A2 igt@kms_atomic_transition@plane-toggle-modeset-transition:
>=20
>       =E2=96=A1 shard-rkl: FAIL (i915#15662) -> PASS
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>=20
>       =E2=96=A1 shard-mtlp: FAIL (i915#15733 / i915#5138) -> PASS
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#15582) -> PASS
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#16276 / i915#6113) -> PASS
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>=20
>       =E2=96=A1 shard-dg1: DMESG-WARN (i915#4423) -> PASS +2 other tests =
pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-modesetfrombusy:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15989) -> PASS +4 other tests pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15989) -> PASS +3 other tests pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-pri-shrfb-draw-m=
map-wc:
>=20
>       =E2=96=A1 shard-glk: SKIP -> PASS +8 other tests pass
>   =E2=80=A2 igt@kms_pipe_crc_basic@suspend-read-crc:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#12756 / i915#13476) -> PASS
>   =E2=80=A2 igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#13476) -> PASS
>   =E2=80=A2 igt@kms_pm_rpm@dpms-lpsp:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15073) -> PASS
>   =E2=80=A2 igt@kms_pm_rpm@modeset-lpsp-stress:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15073) -> PASS +1 othe=
r test pass
>   =E2=80=A2 igt@kms_pm_rpm@modeset-non-lpsp:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#15073) -> PASS +1 other test pass
>   =E2=80=A2 igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15073) -> PASS +1 other test pass
>   =E2=80=A2 igt@kms_pm_rpm@system-suspend-idle:
>=20
>       =E2=96=A1 shard-dg2: ABORT (i915#15132) -> PASS
>       =E2=96=A1 shard-dg1: SKIP (i915#4423) -> PASS
>   =E2=80=A2 igt@perf_pmu@rc6-suspend:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#13356 / i915#16236) -> PASS
>=20
> Warnings
>=20
>   =E2=80=A2 igt@api_intel_bb@object-reloc-purge-cache:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#8411) -> SKIP (i915#14544 / i915#84=
11)
>   =E2=80=A2 igt@gem_ccs@block-multicopy-compressed:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9323) -> SKIP (i915#14544 / i915#93=
23)
>   =E2=80=A2 igt@gem_ccs@block-multicopy-inplace:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3555 / i915#9323) -> S=
KIP (i915#3555
>         / i915#9323)
>   =E2=80=A2 igt@gem_ctx_sseu@invalid-sseu:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#280) -> SKIP (i915#280)
>   =E2=80=A2 igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3281) -> SKIP (i915#32=
81) +3 other
>         tests skip
>   =E2=80=A2 igt@gem_exec_reloc@basic-softpin:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3281) -> SKIP (i915#14544 / i915#32=
81) +2 other
>         tests skip
>   =E2=80=A2 igt@gem_lmem_swapping@random-engines:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#4613) -> SKIP (i915#14544 / i915#46=
13) +1 other
>         test skip
>   =E2=80=A2 igt@gem_lmem_swapping@smem-oom:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4613) -> SKIP (i915#46=
13)
>   =E2=80=A2 igt@gem_pwrite_snooped:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3282) -> SKIP (i915#32=
82)
>   =E2=80=A2 igt@gem_pxp@hw-rejects-pxp-context:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13717 / i915#14544) -> SKIP (i915#1=
3717)
>   =E2=80=A2 igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#8411) -> SKIP (i915#84=
11)
>   =E2=80=A2 igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3297) -> SKIP (i915#32=
97)
>   =E2=80=A2 igt@gem_userptr_blits@unsync-overlap:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3297) -> SKIP (i915#14544 / i915#32=
97)
>   =E2=80=A2 igt@i915_pm_freq_api@freq-reset:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#8399) -> SKIP (i915#83=
99)
>   =E2=80=A2 igt@i915_pm_rc6_residency@media-rc6-accuracy:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#16080 / i915#16166) -> SKIP (i915#1=
4544 / i915#
>         16080 / i915#16166)
>   =E2=80=A2 igt@i915_pm_sseu@full-enable:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4387) -> SKIP (i915#43=
87)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-addfb:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#5286) -> SKIP (i915#52=
86) +1 other
>         test skip
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#5286) -> SKIP (i915#14544 / i915#52=
86)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#4423 / i915#4538 / i915#5286) -> SK=
IP (i915#4538
>         / i915#5286)
>   =E2=80=A2 igt@kms_big_fb@linear-32bpp-rotate-270:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3638) -> SKIP (i915#36=
38)
>   =E2=80=A2 igt@kms_big_fb@linear-64bpp-rotate-270:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3638) -> SKIP (i915#14544 / i915#36=
38)
>   =E2=80=A2 igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3828) -> SKIP (i915#38=
28)
>   =E2=80=A2 igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#3638 / i915#4423) -> SKIP (i915#363=
8)
>   =E2=80=A2 igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14098 / i915#14544 / i915#6095) -> =
SKIP (i915#
>         14098 / i915#6095) +3 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14098 / i915#6095) -> SKIP (i915#14=
098 / i915#
>         14544 / i915#6095) +3 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pip=
e-b-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#6095) -> SKIP (i915#14544 / i915#60=
95) +1 other
>         test skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#15582) -> INCOMPLETE (i915#14=
694 / i915#
>         15582) +1 other test incomplete
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#12313 / i915#14544) -> SKIP (i915#1=
2313)
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#12313) -> SKIP (i915#12313 / i915#1=
4544)
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-ctm3x4:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#16471) -> SKIP (i915#14544 / i915#1=
6471)
>   =E2=80=A2 igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11151 / i915#14544 / i915#7828) -> =
SKIP (i915#
>         11151 / i915#7828) +1 other test skip
>   =E2=80=A2 igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11151 / i915#7828) -> SKIP (i915#11=
151 / i915#
>         14544 / i915#7828)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-lic-type-0:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15330 / i915#3116) -> =
SKIP (i915#
>         15330 / i915#3116)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15330) -> SKIP (i915#1=
5330)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-type-0:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15330 / i915#3116) -> SKIP (i915#14=
544 / i915#
>         15330 / i915#3116)
>   =E2=80=A2 igt@kms_content_protection@suspend-resume:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15865) -> SKIP (i915#14544 / i915#1=
5865)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-offscreen-512x512:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#13049) -> SKIP (i915#13049 / i915#3=
359)
>   =E2=80=A2 igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-s=
ize:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#4103) -> SKIP (i915#14544 / i915#41=
03)
>   =E2=80=A2 igt@kms_dsc@dsc-basic:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#16361) -> SKIP (i915#14544 / i915#1=
6361) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_dsc@dsc-with-formats-ultrajoiner:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#16361) -> SKIP (i915#1=
6361) +1 other
>         test skip
>   =E2=80=A2 igt@kms_feature_discovery@display-4x:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#16081) -> SKIP (i915#14544 / i915#1=
6081)
>   =E2=80=A2 igt@kms_flip@2x-flip-vs-suspend:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12314 / i915#12745 / i915#483=
9 / i915#6113)
>         -> INCOMPLETE (i915#12745 / i915#4839 / i915#6113)
>   =E2=80=A2 igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12314 / i915#12745) -> INCOMP=
LETE (i915#
>         12745)
>   =E2=80=A2 igt@kms_flip@2x-plain-flip-ts-check:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9934) -> SKIP (i915#99=
34) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9934) -> SKIP (i915#14544 / i915#99=
34) +3 other
>         tests skip
>   =E2=80=A2 igt@kms_flip@plain-flip-ts-check-interruptible:
>=20
>       =E2=96=A1 shard-snb: FAIL (i915#14600) -> FAIL (i915#10826) +1 othe=
r test fail
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upsca=
ling:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15643) -> SKIP (i915#1=
5643)
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upsca=
ling:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15643) -> SKIP (i915#14544 / i915#1=
5643)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-dra=
w-pwrite:
>=20
>       =E2=96=A1 shard-rkl: SKIP -> SKIP (i915#14544) +28 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-dra=
w-blt:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#4423) -> SKIP +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-msflip-=
blt:
>=20
>       =E2=96=A1 shard-dg1: SKIP -> SKIP (i915#4423)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-dra=
w-blt:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15102) -> SKIP (i915#10433 / i915#1=
5102) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#1825) -> SKIP (i915#18=
25) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb=
-draw-mmap-wc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15102) -> SKIP (i915#14544 / i915#1=
5102) +4 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-suspend:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15989) -> ABORT (i915#15132)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9766) -> SKIP (i915#97=
66)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-m=
map-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15102 / i915#3023) -> =
SKIP (i915#
>         15102 / i915#3023) +8 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-m=
map-wc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1825) -> SKIP (i915#14544 / i915#18=
25) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#10433 / i915#15102) -> SKIP (i915#1=
5102)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15102 / i915#3023) -> SKIP (i915#14=
544 / i915#
>         15102 / i915#3023) +12 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-dra=
w-mmap-wc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15102) -> SKIP (i915#1=
5102) +7 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-mov=
e:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544) -> SKIP +27 other tests skip
>   =E2=80=A2 igt@kms_hdr@brightness-with-hdr:
>=20
>       =E2=96=A1 shard-tglu: SKIP (i915#1187 / i915#12713) -> SKIP (i915#1=
2713)
>   =E2=80=A2 igt@kms_joiner@basic-max-non-joiner:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13688) -> SKIP (i915#13688 / i915#1=
4544)
>   =E2=80=A2 igt@kms_joiner@invalid-modeset-force-big-joiner:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15459) -> SKIP (i915#14544 / i915#1=
5459)
>   =E2=80=A2 igt@kms_mst@mst-suspend-read-crc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#16451) -> SKIP (i915#1=
6451)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-cl=
amping:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15709) -> SKIP (i915#1=
5709) +1 other
>         test skip
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15709) -> SKIP (i915#14544 / i915#1=
5709)
>   =E2=80=A2 igt@kms_plane_multiple@2x-tiling-yf:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13958) -> SKIP (i915#13958 / i915#1=
4544)
>   =E2=80=A2 igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-=
a:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15329) -> SKIP (i915#1=
5329) +3 other
>         tests skip
>   =E2=80=A2 igt@kms_pm_dc@dc5-psr:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15948) -> SKIP (i915#1=
5948)
>   =E2=80=A2 igt@kms_pm_lpsp@kms-lpsp:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9340) -> SKIP (i915#3828)
>       =E2=96=A1 shard-dg1: SKIP (i915#9340) -> SKIP (i915#3828)
>   =E2=80=A2 igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11520) -> SKIP (i915#11520 / i915#1=
4544)
>   =E2=80=A2 igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11520 / i915#14544) -> SKIP (i915#1=
1520) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_psr@psr-suspend:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1072 / i915#9732) -> SKIP (i915#107=
2 / i915#14544
>         / i915#9732) +5 other tests skip
>   =E2=80=A2 igt@kms_psr@psr2-cursor-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1072 / i915#14544 / i915#9732) -> S=
KIP (i915#1072
>         / i915#9732) +8 other tests skip
>   =E2=80=A2 igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15867 / i915#5190) -> SKIP (i915#12=
755 / i915#
>         15867 / i915#5190)
>   =E2=80=A2 igt@kms_vrr@flip-basic:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15243 / i915#3555) -> SKIP (i915#14=
544 / i915#
>         15243 / i915#3555)
>   =E2=80=A2 igt@kms_vrr@seamless-rr-switch-vrr:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9906) -> SKIP (i915#99=
06)
>   =E2=80=A2 igt@prime_vgem@basic-read:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3291 / i915#3708) -> S=
KIP (i915#3291
>         / i915#3708)
>   =E2=80=A2 igt@prime_vgem@fence-write-hang:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3708) -> SKIP (i915#37=
08)
>=20
> Build changes
>=20
>   =E2=80=A2 Linux: CI_DRM_18737 -> Patchwork_169561v1
>=20
> CI-20190529: 20190529
> CI_DRM_18737: 4847fd44d1663d4ea8bbfc2f6e178f60a377bbb3 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_8989: a8e2cbd2854d7980a9eccecc6e0c801d0824b88f @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_169561v1: 4847fd44d1663d4ea8bbfc2f6e178f60a377bbb3 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://
> anongit.freedesktop.org/piglit
>
