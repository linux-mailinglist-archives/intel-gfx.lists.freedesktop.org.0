Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CwR3I3tDOmr44wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 10:27:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 989666B5455
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2026 10:27:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=nLCI9mng;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262AC10E9FE;
	Tue, 23 Jun 2026 08:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9925010E9FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jun 2026 08:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782203255; x=1813739255;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:from:cc:to:date:message-id;
 bh=M+FLogwTdtlEnuCH+ASkryHS/iDsqZ3n0Tt3oG3NaD8=;
 b=nLCI9mngiDkXfqMxAgl2utUNTbT7a3T4V3r4zPvnoHOuw3oc0cSonS5v
 xkHG4JwUBpONwQTL5Denkpy0PNme94vigySb6gPygEKon/Cathf+B5bPh
 uC6RSauYoHeUpP5XwojBYn2PFgh8ExQOodccPVTyigf0JId902MmfdqsL
 pB5+R9Ng7DCjElugZyvoutcrBa8s+ZWhEBhm+o3kONr/GPEInUw+3d+ZO
 YWu3/EwzTBMNd3nxALOP766nvHEw1ZDJbVekhOkqB+5t44e6lplKZ9bVB
 8fIm9InTGlUzM2p8uPvwzefnIuPu4LqKIDKhOePHnqokWvnjEWWuh/o0p w==;
X-CSE-ConnectionGUID: /ck7v/GDTBeJoRkwmwtqdg==
X-CSE-MsgGUID: /vbtAJWsTHW8gt8XXPwIng==
X-IronPort-AV: E=McAfee;i="6800,10657,11825"; a="93530321"
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="93530321"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 01:27:35 -0700
X-CSE-ConnectionGUID: d5+VSuB8TYuc69WrGaLuBg==
X-CSE-MsgGUID: UKE+f3mGStKWTJvt4yFOvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; d="scan'208";a="245089840"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.242])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2026 01:27:33 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <178215483593.102866.16620735452717725094@6beec6c84f66>
References: <20260622132539.165558-1-joonas.lahtinen@linux.intel.com>
 <178215483593.102866.16620735452717725094@6beec6c84f66>
Subject: Re: =?utf-8?b?4pyT?= i915.CI.Full: success for drm/i915/gem: Add
 missing nospec on parallel submit slot
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jun 2026 11:27:30 +0300
Message-ID: <178220325006.32227.14842992042445800657@jlahtine-mobl>
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 989666B5455

Applied after adding Cc: stable and fixing Tvrtko's email.

Thanks for the reviews!

Quoting Patchwork (2026-06-22 22:00:35)
> Patch Details
>=20
> Series:  drm/i915/gem: Add missing nospec on parallel submit slot
> URL:     https://patchwork.freedesktop.org/series/168947/
> State:   success
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168947v1/inde=
x.html
>=20
> CI Bug Log - changes from CI_DRM_18707_full -> Patchwork_168947v1_full
>=20
> Summary
>=20
> SUCCESS
>=20
> No regressions found.
>=20
> Participating hosts (10 -> 10)
>=20
> No changes in participating hosts
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_168947v1_full that come from known
> issues:
>=20
> IGT changes
>=20
> Issues hit
>=20
>   =E2=80=A2 igt@api_intel_bb@object-reloc-purge-cache:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#8411)
>   =E2=80=A2 igt@device_reset@cold-reset-bound:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#11078)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11078)
>   =E2=80=A2 igt@gem_ccs@ctrl-surf-copy:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555 / i915#9323)
>   =E2=80=A2 igt@gem_ccs@suspend-resume:
>=20
>       =E2=96=A1 shard-dg2: PASS -> INCOMPLETE (i915#13356 / i915#16348) +=
1 other test
>         incomplete
>   =E2=80=A2 igt@gem_create@create-ext-cpu-access-sanity-check:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#6335)
>   =E2=80=A2 igt@gem_exec_balancer@bonded-sync:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4771)
>   =E2=80=A2 igt@gem_exec_balancer@noheartbeat:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#8555)
>   =E2=80=A2 igt@gem_exec_balancer@parallel-balancer:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4525)
>   =E2=80=A2 igt@gem_exec_big@single:
>=20
>       =E2=96=A1 shard-tglu: PASS -> FAIL (i915#15816)
>   =E2=80=A2 igt@gem_exec_capture@capture-invisible@smem0:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#6334) +1 other test sk=
ip
>   =E2=80=A2 igt@gem_exec_fence@submit67:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#4812)
>   =E2=80=A2 igt@gem_exec_flush@basic-wb-pro-default:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#3539 / i915#4852)
>   =E2=80=A2 igt@gem_exec_flush@basic-wb-set-default:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3539 / i915#4852)
>   =E2=80=A2 igt@gem_exec_reloc@basic-cpu-gtt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3281) +5 other tests skip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3281) +3 other tests skip
>   =E2=80=A2 igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#3281)
>   =E2=80=A2 igt@gem_exec_schedule@semaphore-power:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#7276)
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4537 / i915#4812)
>   =E2=80=A2 igt@gem_fence_thrash@bo-write-verify-none:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#4860)
>   =E2=80=A2 igt@gem_fenced_exec_thrash@too-many-fences:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4860)
>   =E2=80=A2 igt@gem_lmem_swapping@parallel-random-verify-ccs:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#4613)
>   =E2=80=A2 igt@gem_lmem_swapping@verify:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#4613)
>   =E2=80=A2 igt@gem_lmem_swapping@verify-ccs:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP (i915#4613) +1 other test skip
>   =E2=80=A2 igt@gem_lmem_swapping@verify-random-ccs:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#12193)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4613) +1 other test skip
>   =E2=80=A2 igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#4565)
>   =E2=80=A2 igt@gem_mmap_gtt@big-copy:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4077) +3 other tests skip
>   =E2=80=A2 igt@gem_mmap_gtt@coherency:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> SKIP +197 other tests skip
>   =E2=80=A2 igt@gem_mmap_wc@write-read:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#4083)
>   =E2=80=A2 igt@gem_mmap_wc@write-read-distinct:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4083) +3 other tests skip
>   =E2=80=A2 igt@gem_pread@exhaustion:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> WARN (i915#2658)
>   =E2=80=A2 igt@gem_pread@uncached:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3282) +1 other test skip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3282) +1 other test skip
>   =E2=80=A2 igt@gem_pwrite@basic-exhaustion:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> WARN (i915#2658)
>   =E2=80=A2 igt@gem_pxp@hw-rejects-pxp-buffer:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#13717)
>   =E2=80=A2 igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP +315 other tests skip
>   =E2=80=A2 igt@gem_render_copy@yf-tiled-ccs-to-linear:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#5190 / i915#8428) +3 othe=
r tests skip
>   =E2=80=A2 igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4079)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#8411)
>   =E2=80=A2 igt@gem_softpin@noreloc-s3:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#13809 / i915#16193)
>   =E2=80=A2 igt@gem_userptr_blits@dmabuf-unsync:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3297) +1 other test skip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3297) +1 other test skip
>   =E2=80=A2 igt@gem_userptr_blits@map-fixed-invalidate:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3297 / i915#4880)
>   =E2=80=A2 igt@gen9_exec_parse@allowed-single:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#2527 / i915#2856)
>       =E2=96=A1 shard-glk: NOTRUN -> ABORT (i915#5566)
>   =E2=80=A2 igt@gen9_exec_parse@bb-chained:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#2856) +1 other test skip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#2527) +1 other test skip
>   =E2=80=A2 igt@gen9_exec_parse@bb-oversize:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#2527 / i915#2856)
>   =E2=80=A2 igt@i915_drm_fdinfo@busy@rcs0:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#14073) +5 other tests skip
>   =E2=80=A2 igt@i915_drm_fdinfo@virtual-busy:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#14118) +1 other test skip
>   =E2=80=A2 igt@i915_module_load@fault-injection@intel_connector_register:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> ABORT (i915#15342) +1 other test abo=
rt
>   =E2=80=A2 igt@i915_module_load@reload-no-display:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> DMESG-WARN (i915#13029 / i915#14545)
>   =E2=80=A2 igt@i915_pm_freq_api@freq-reset-multiple:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#8399)
>   =E2=80=A2 igt@i915_pm_rc6_residency@rc6-fence:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> WARN (i915#13790 / i915#2681) +1 ot=
her test warn
>   =E2=80=A2 igt@i915_pm_rpm@system-suspend-execbuf:
>=20
>       =E2=96=A1 shard-rkl: PASS -> ABORT (i915#15060)
>   =E2=80=A2 igt@i915_suspend@fence-restore-tiled2untiled:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> INCOMPLETE (i915#16182 / i915#4817)
>   =E2=80=A2 igt@i915_suspend@sysfs-reader:
>=20
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#4817)
>   =E2=80=A2 igt@kms_addfb_basic@basic-y-tiled-legacy:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4215 / i915#5190)
>   =E2=80=A2 igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-h=
dmi-a-1:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> FAIL (i915#14888) +1 other test fail
>   =E2=80=A2 igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#12761 / i915#14995)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP +6 other tests skip
>   =E2=80=A2 igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>=20
>       =E2=96=A1 shard-mtlp: PASS -> FAIL (i915#15733 / i915#5138)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#5286) +1 other test sk=
ip
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-fli=
p:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#5286)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#5286) +2 other tests skip
>   =E2=80=A2 igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3638) +2 other tests skip
>   =E2=80=A2 igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#3638)
>   =E2=80=A2 igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4538 / i915#5190) +6 othe=
r tests skip
>   =E2=80=A2 igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-c-hdmi=
-a-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#6095) +89 ot=
her tests skip
>   =E2=80=A2 igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-d-hdmi=
-a-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#10307 / i915#10434 / i915=
#6095) +1
>         other test skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#12313)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#12313)
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#12313) +1 other test skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pi=
pe-b-hdmi-a-1:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#6095) +24 other tests =
skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdm=
i-a-1:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#6095) +42 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-c-hdm=
i-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14098 / i915#6095) +24 ot=
her tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#12805)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#12805)
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> INCOMPLETE (i915#15582) +1 other tes=
t incomplete
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-=
d-hdmi-a-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#6095) +7 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14098 / i915#14544 / i915=
#6095) +2
>         other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#12313) +1 other test skip
>   =E2=80=A2 igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pip=
e-b-hdmi-a-1:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#6095) +9 other tests skip
>   =E2=80=A2 igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#6095) +204 other tests sk=
ip
>   =E2=80=A2 igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-=
2:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#14544 / i915#6095) +4 oth=
er tests skip
>   =E2=80=A2 igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#12313)
>   =E2=80=A2 igt@kms_chamelium_color@ctm-max:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP +3 other tests skip
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16471)
>   =E2=80=A2 igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#11151 / i915#7828) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_chamelium_hpd@common-hpd-after-suspend:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#11151 / i915#7828)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11151 / i915#7828)
>   =E2=80=A2 igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#11151 / i915#7828) +1 =
other test
>         skip
>   =E2=80=A2 igt@kms_chamelium_hpd@hdmi-hpd-storm:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#11151 / i915#7828) +3 oth=
er tests skip
>   =E2=80=A2 igt@kms_content_protection@dp-mst-type-0:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15330 / i915#3116 / i915=
#3299)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-type-0-hdcp14:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15330)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15330)
>   =E2=80=A2 igt@kms_content_protection@dp-mst-type-1:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15330 / i915#3299)
>   =E2=80=A2 igt@kms_content_protection@uevent:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15865)
>   =E2=80=A2 igt@kms_content_protection@uevent-hdcp14:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15865)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15865)
>   =E2=80=A2 igt@kms_content_protection@uevent@pipe-a-dp-3:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> FAIL (i915#1339 / i915#7173)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-offscreen-512x512:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#13049)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-onscreen-32x10:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3555)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555) +1 other test skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-512x512:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13049)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-tglu: PASS -> FAIL (i915#13566) +1 other test fail
>   =E2=80=A2 igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13046 / i915#5354) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-tr=
ansitions:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#4103)
>   =E2=80=A2 igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4103)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#4103)
>   =E2=80=A2 igt@kms_display_modes@extended-mode-basic:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#13691)
>   =E2=80=A2 igt@kms_dp_aux_dev@basic:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#1257)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1257)
>   =E2=80=A2 igt@kms_dsc@dsc-with-bpc:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#16361)
>   =E2=80=A2 igt@kms_dsc@dsc-with-formats:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16361)
>   =E2=80=A2 igt@kms_dsc@dsc-with-formats-bigjoiner:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16361) +1 other test skip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16361) +1 other test skip
>   =E2=80=A2 igt@kms_feature_discovery@display-2x:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16081)
>   =E2=80=A2 igt@kms_flip@2x-blocking-wf_vblank:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#3637 / i915#9934)
>   =E2=80=A2 igt@kms_flip@2x-modeset-vs-vblank-race:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#9934) +4 other tests skip
>   =E2=80=A2 igt@kms_flip@2x-plain-flip:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9934) +4 other tests skip
>   =E2=80=A2 igt@kms_flip@flip-vs-fences-interruptible:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#8381)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible:
>=20
>       =E2=96=A1 shard-dg2: PASS -> ABORT (i915#15132)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible@a-dp3:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> ABORT (i915#15132)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
>=20
>       =E2=96=A1 shard-rkl: PASS -> INCOMPLETE (i915#16276 / i915#6113) +1=
 other test
>         incomplete
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-ups=
caling:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15643)
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-=
upscaling:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15643) +1 other test skip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-up=
scaling:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15643 / i915#5190) +1 oth=
er test skip
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-dow=
nscaling:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15643)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15643) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-=
mmap-gtt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15104 / i915#15990) +1 ot=
her test skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-b=
lt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15991 / i915#5354) +12 ot=
her tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-dr=
aw-blt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15989) +4 other tests sk=
ip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-shrfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-glk: PASS -> SKIP +3 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15989) +6 other tests =
skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15102) +15 other tests=
 skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-dra=
w-mmap-wc:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15990 / i915#8708) +2 oth=
er tests skip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1825) +1 other test skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-dra=
w-render:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP +22 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-shrfb-plfl=
ip-blt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15102) +13 other tests s=
kip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-=
draw-blt:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15102) +9 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-indfb-=
draw-mmap-wc:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15990) +8 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-slowdraw:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#15102) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#5439)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-m=
map-cpu:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#15989) +1 other test skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-m=
map-cpu:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15989) +7 other tests skip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15989) +9 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-pri-shrfb-draw-m=
map-wc:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#15990)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#15989) +10 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-suspend:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> INCOMPLETE (i915#16056)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9766)
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#9766)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-rte:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15102) +15 other tests sk=
ip
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15102 / i915#3023) +8 oth=
er tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP +43 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-2p-rte:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP +36 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-pri-shrfb-dra=
w-blt:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15991) +20 other tests sk=
ip
>   =E2=80=A2 igt@kms_getfb@getfb-handle-protection:
>=20
>       =E2=96=A1 shard-dg1: PASS -> DMESG-WARN (i915#4423) +1 other test d=
mesg-warn
>   =E2=80=A2 igt@kms_hdr@bpc-switch:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#16012 / i915#3555 / i915#82=
28)
>   =E2=80=A2 igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#16012) +3 other tests skip
>   =E2=80=A2 igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-3-xrgb2101010:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16012) +1 other test skip
>   =E2=80=A2 igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16012) +1 other test skip
>   =E2=80=A2 igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-4-xrgb2101010:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#16011) +7 other tests skip
>   =E2=80=A2 igt@kms_hdr@invalid-hdr:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16012 / i915#3555 / i915=
#8228)
>   =E2=80=A2 igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb2101010:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16012) +1 other test skip
>   =E2=80=A2 igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16011) +1 other test skip
>   =E2=80=A2 igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb1616161=
6f:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16011) +1 other test skip
>   =E2=80=A2 igt@kms_joiner@basic-ultra-joiner:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15458)
>   =E2=80=A2 igt@kms_joiner@invalid-modeset-force-big-joiner:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15459)
>   =E2=80=A2 igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15815)
>   =E2=80=A2 igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-glk: PASS -> INCOMPLETE (i915#12756 / i915#13409 / =
i915#13476)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#15709)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> SKIP +85 other tests skip
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source=
-clamping:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15709)
>   =E2=80=A2 igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16386) +1 other test skip
>   =E2=80=A2 igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#16112)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#16112)
>   =E2=80=A2 igt@kms_plane@plane-panning-bottom-right-suspend:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> INCOMPLETE (i915#13026) +1 other tes=
t incomplete
>   =E2=80=A2 igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> INCOMPLETE (i915#14412)
>   =E2=80=A2 igt@kms_plane_alpha_blend@constant-alpha-max:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> FAIL (i915#10647 / i915#12169)
>   =E2=80=A2 igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> FAIL (i915#10647) +1 other test fa=
il
>   =E2=80=A2 igt@kms_plane_multiple@2x-tiling-4:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#13958) +1 other test skip
>   =E2=80=A2 igt@kms_plane_multiple@2x-tiling-x:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#13958)
>   =E2=80=A2 igt@kms_plane_scaling@intel-max-src-size:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#6953)
>   =E2=80=A2 igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotatio=
n@pipe-b:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15329) +3 other tests skip
>   =E2=80=A2 igt@kms_pm_backlight@brightness-with-dpms:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#12343)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#12343)
>   =E2=80=A2 igt@kms_pm_dc@dc6-dpms:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> FAIL (i915#16479)
>   =E2=80=A2 igt@kms_pm_dc@dc9-dpms:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#15739)
>   =E2=80=A2 igt@kms_pm_lpsp@screens-disabled:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#8430)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#8430)
>   =E2=80=A2 igt@kms_pm_rpm@dpms-lpsp:
>=20
>       =E2=96=A1 shard-dg1: PASS -> SKIP (i915#15073) +3 other tests skip
>   =E2=80=A2 igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#15073)
>   =E2=80=A2 igt@kms_pm_rpm@modeset-non-lpsp:
>=20
>       =E2=96=A1 shard-rkl: PASS -> SKIP (i915#15073) +1 other test skip
>   =E2=80=A2 igt@kms_pm_rpm@modeset-non-lpsp-stress:
>=20
>       =E2=96=A1 shard-dg2: PASS -> SKIP (i915#15073)
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#11520) +2 other tests skip
>   =E2=80=A2 igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-glk: NOTRUN -> SKIP (i915#11520) +9 other tests skip
>   =E2=80=A2 igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-=
sf:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#11520) +2 other tests skip
>   =E2=80=A2 igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> SKIP (i915#11520) +5 other tests s=
kip
>   =E2=80=A2 igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#11520) +2 other tests =
skip
>   =E2=80=A2 igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#11520)
>   =E2=80=A2 igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-ful=
ly-sf:
>=20
>       =E2=96=A1 shard-glk10: NOTRUN -> SKIP (i915#11520) +1 other test sk=
ip
>   =E2=80=A2 igt@kms_psr2_su@page_flip-nv12:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9683)
>   =E2=80=A2 igt@kms_psr@fbc-pr-sprite-plane-onoff:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#1072 / i915#9732) +8 othe=
r tests skip
>   =E2=80=A2 igt@kms_psr@pr-primary-mmap-gtt:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#9732) +4 other tests skip
>   =E2=80=A2 igt@kms_psr@psr-suspend:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#1072 / i915#9732) +11 oth=
er tests skip
>   =E2=80=A2 igt@kms_psr@psr2-cursor-mmap-gtt:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#9732) +6 other tests s=
kip
>   =E2=80=A2 igt@kms_rotation_crc@exhaust-fences:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#4235)
>   =E2=80=A2 igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#5289)
>   =E2=80=A2 igt@kms_scaling_modes@scaling-mode-full-aspect:
>=20
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#3555) +1 other test skip
>   =E2=80=A2 igt@kms_selftest@drm_framebuffer:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> ABORT (i915#13179) +1 other test =
abort
>   =E2=80=A2 igt@kms_setmode@basic-clone-single-crtc:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#3555) +1 other test sk=
ip
>   =E2=80=A2 igt@kms_tiled_display@basic-test-pattern:
>=20
>       =E2=96=A1 shard-glk11: NOTRUN -> FAIL (i915#10959)
>   =E2=80=A2 igt@kms_vrr@flip-basic:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#15243 / i915#3555)
>   =E2=80=A2 igt@kms_vrr@max-min:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#9906)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#9906)
>   =E2=80=A2 igt@kms_vrr@negative-basic:
>=20
>       =E2=96=A1 shard-dg2: NOTRUN -> SKIP (i915#3555 / i915#9906)
>       =E2=96=A1 shard-rkl: NOTRUN -> SKIP (i915#3555 / i915#9906)
>   =E2=80=A2 igt@perf_pmu@module-unload:
>=20
>       =E2=96=A1 shard-rkl: NOTRUN -> ABORT (i915#15778)
>   =E2=80=A2 igt@prime_udl@share-import:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#16420)
>   =E2=80=A2 igt@prime_udl@share-import-addfb:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#16420)
>       =E2=96=A1 shard-tglu: NOTRUN -> SKIP (i915#16420)
>   =E2=80=A2 igt@prime_vgem@basic-fence-read:
>=20
>       =E2=96=A1 shard-dg1: NOTRUN -> SKIP (i915#3708)
>   =E2=80=A2 igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7:
>=20
>       =E2=96=A1 shard-tglu-1: NOTRUN -> SKIP (i915#16066) +9 other tests =
skip
>=20
> Possible fixes
>=20
>   =E2=80=A2 igt@gem_softpin@noreloc-s3:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#13809 / i915#16226) -> PASS
>   =E2=80=A2 igt@gen9_exec_parse@allowed-all:
>=20
>       =E2=96=A1 shard-glk: ABORT (i915#5566) -> PASS
>   =E2=80=A2 igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-1:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12761) -> PASS
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>=20
>       =E2=96=A1 shard-mtlp: FAIL (i915#15733 / i915#5138) -> PASS
>   =E2=80=A2 igt@kms_cursor_crc@cursor-onscreen-256x85:
>=20
>       =E2=96=A1 shard-tglu: FAIL (i915#13566) -> PASS +1 other test pass
>   =E2=80=A2 igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: FAIL (i915#13566) -> PASS +1 other test pass
>   =E2=80=A2 igt@kms_dp_link_training@non-uhbr-sst:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#13749) -> PASS
>   =E2=80=A2 igt@kms_fbcon_fbt@fbc-suspend:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#9878) -> PASS
>   =E2=80=A2 igt@kms_force_connector_basic@prune-stale-modes:
>=20
>       =E2=96=A1 shard-mtlp: SKIP (i915#15672) -> PASS +1 other test pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-glk: SKIP -> PASS +11 other tests pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15989) -> PASS +12 other tests pass
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-r=
ender:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15989) -> PASS +5 other tests pass
>   =E2=80=A2 igt@kms_hdmi_inject@inject-audio:
>=20
>       =E2=96=A1 shard-mtlp: SKIP (i915#15725) -> PASS
>   =E2=80=A2 igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>=20
>       =E2=96=A1 shard-rkl: INCOMPLETE (i915#14412) -> PASS
>   =E2=80=A2 igt@kms_pm_rpm@dpms-lpsp:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15073) -> PASS +1 other test pass
>   =E2=80=A2 igt@perf_pmu@semaphore-busy@vcs1:
>=20
>       =E2=96=A1 shard-mtlp: FAIL (i915#4349) -> PASS +3 other tests pass
>=20
> Warnings
>=20
>   =E2=80=A2 igt@api_intel_bb@blit-reloc-purge-cache:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#8411) -> SKIP (i915#14544 / i915#84=
11)
>   =E2=80=A2 igt@gem_exec_balancer@parallel-bb-first:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#4525) -> SKIP (i915#14544 / i915#45=
25)
>   =E2=80=A2 igt@gem_exec_balancer@parallel-keep-in-fence:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4525) -> SKIP (i915#45=
25)
>   =E2=80=A2 igt@gem_exec_reloc@basic-gtt-active:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3281) -> SKIP (i915#14544 / i915#32=
81)
>   =E2=80=A2 igt@gem_exec_reloc@basic-gtt-wc-active:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3281) -> SKIP (i915#32=
81) +2 other
>         tests skip
>   =E2=80=A2 igt@gem_lmem_evict@dontneed-evict-race:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4613 / i915#7582) -> S=
KIP (i915#4613
>         / i915#7582)
>   =E2=80=A2 igt@gem_lmem_swapping@heavy-verify-multi:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4613) -> SKIP (i915#46=
13) +1 other
>         test skip
>   =E2=80=A2 igt@gem_lmem_swapping@parallel-multi:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#4613) -> SKIP (i915#14544 / i915#46=
13) +1 other
>         test skip
>   =E2=80=A2 igt@gem_media_vme:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#284) -> SKIP (i915#14544 / i915#284)
>   =E2=80=A2 igt@gem_partial_pwrite_pread@write-snoop:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3282) -> SKIP (i915#32=
82) +1 other
>         test skip
>   =E2=80=A2 igt@gem_set_tiling_vs_pwrite:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3282) -> SKIP (i915#14544 / i915#32=
82) +2 other
>         tests skip
>   =E2=80=A2 igt@gen9_exec_parse@basic-rejected:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#2527) -> SKIP (i915#25=
27)
>   =E2=80=A2 igt@i915_query@hwconfig_table:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#6245) -> SKIP (i915#62=
45)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#5286) -> SKIP (i915#52=
86)
>   =E2=80=A2 igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#5286) -> SKIP (i915#14544 / i915#52=
86) +1 other
>         test skip
>   =E2=80=A2 igt@kms_big_fb@linear-32bpp-rotate-90:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3638) -> SKIP (i915#36=
38)
>   =E2=80=A2 igt@kms_big_fb@linear-64bpp-rotate-90:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3638) -> SKIP (i915#14544 / i915#36=
38) +1 other
>         test skip
>   =E2=80=A2 igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544) -> SKIP +29 other tests skip
>   =E2=80=A2 igt@kms_ccs@bad-rotation-90-yf-tiled-ccs:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#4423 / i915#6095) -> SKIP (i915#609=
5) +1 other
>         test skip
>   =E2=80=A2 igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14098 / i915#14544 / i915#6095) -> =
SKIP (i915#
>         14098 / i915#6095) +3 other tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-=
b-hdmi-a-2:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#6095) -> SKIP (i915#14544 / i915#60=
95) +5 other
>         tests skip
>   =E2=80=A2 igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14098 / i915#6095) -> SKIP (i915#14=
098 / i915#
>         14544 / i915#6095) +8 other tests skip
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-ctm3x4-lut1d:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#16471) -> SKIP (i915#14544 / i915#1=
6471) +1 other
>         test skip
>   =E2=80=A2 igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#16471) -> SKIP (i915#1=
6471)
>   =E2=80=A2 igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11151 / i915#7828) -> SKIP (i915#11=
151 / i915#
>         14544 / i915#7828) +1 other test skip
>   =E2=80=A2 igt@kms_chamelium_hpd@vga-hpd-fast:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11151 / i915#14544 / i915#7828) -> =
SKIP (i915#
>         11151 / i915#7828) +2 other tests skip
>   =E2=80=A2 igt@kms_content_protection@dp-mst-type-1:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15330 / i915#3116) -> =
SKIP (i915#
>         15330 / i915#3116) +1 other test skip
>   =E2=80=A2 igt@kms_content_protection@lic-type-0-hdcp14:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15865) -> SKIP (i915#14544 / i915#1=
5865)
>   =E2=80=A2 igt@kms_content_protection@lic-type-1:
>=20
>       =E2=96=A1 shard-mtlp: ABORT (i915#13562) -> SKIP (i915#15865)
>   =E2=80=A2 igt@kms_content_protection@mei-interface:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15865) -> SKIP (i915#1=
5865)
>   =E2=80=A2 igt@kms_content_protection@uevent:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15865) -> FAIL (i915#1339 / i915#71=
73)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-offscreen-512x512:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#13049) -> SKIP (i915#13049 / i915#3=
359)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-onscreen-32x32:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#3555) -> SKIP (i915#14544 / i915#35=
55) +1 other
>         test skip
>   =E2=80=A2 igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3555) -> SKIP (i915#35=
55)
>   =E2=80=A2 igt@kms_cursor_crc@cursor-sliding-512x512:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13049 / i915#14544) -> SKIP (i915#1=
3049)
>   =E2=80=A2 igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-s=
ize:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#4103) -> SKIP (i915#41=
03)
>   =E2=80=A2 igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9723) -> SKIP (i915#14544 / i915#97=
23)
>   =E2=80=A2 igt@kms_dp_link_training@non-uhbr-mst:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13749 / i915#14544) -> SKIP (i915#1=
3749)
>   =E2=80=A2 igt@kms_dp_link_training@non-uhbr-sst:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13749) -> SKIP (i915#13749 / i915#1=
4544)
>   =E2=80=A2 igt@kms_dsc@dsc-with-bpc-ultrajoiner:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#16361) -> SKIP (i915#14544 / i915#1=
6361) +1 other
>         test skip
>   =E2=80=A2 igt@kms_feature_discovery@chamelium:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#16084) -> SKIP (i915#1=
6084)
>   =E2=80=A2 igt@kms_feature_discovery@display-2x:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#16081) -> SKIP (i915#1=
6081)
>   =E2=80=A2 igt@kms_feature_discovery@display-4x:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#16081) -> SKIP (i915#14544 / i915#1=
6081)
>   =E2=80=A2 igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9934) -> SKIP (i915#14544 / i915#99=
34) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9934) -> SKIP (i915#99=
34)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12745 / i915#4839) -> INCOMPL=
ETE (i915#
>         12745 / i915#4839 / i915#6113)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12745 / i915#4839) -> INCOMPL=
ETE (i915#
>         12314 / i915#12745 / i915#4839)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12745) -> INCOMPLETE (i915#12=
314 / i915#
>         12745)
>   =E2=80=A2 igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>=20
>       =E2=96=A1 shard-glk: INCOMPLETE (i915#12745) -> INCOMPLETE (i915#12=
745 / i915#
>         6113)
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upsca=
ling:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15643) -> SKIP (i915#14544 / i915#1=
5643)
>   =E2=80=A2 igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-ups=
caling:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15643) -> SKIP (i915#1=
5643)
>   =E2=80=A2 igt@kms_force_connector_basic@force-load-detect:
>=20
>       =E2=96=A1 shard-mtlp: SKIP -> SKIP (i915#15672)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-r=
ender:
>=20
>       =E2=96=A1 shard-rkl: SKIP -> SKIP (i915#14544) +33 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-m=
map-wc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#1825) -> SKIP (i915#18=
25) +1 other
>         test skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-g=
tt:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#15990) -> SKIP (i915#15990 / i915#4=
423)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-render:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#15989 / i915#4423) -> SKIP (i915#15=
989)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbchdr-suspend:
>=20
>       =E2=96=A1 shard-rkl: ABORT (i915#15132) -> SKIP (i915#15989)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-g=
tt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15102 / i915#3023) -> =
SKIP (i915#
>         15102 / i915#3023) +6 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-dra=
w-blt:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#10433 / i915#15102) -> SKIP (i915#1=
5102) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-dra=
w-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1825) -> SKIP (i915#14544 / i915#18=
25) +3 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#5439) -> SKIP (i915#14544 / i915#54=
39)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb101010-draw-mmap-cp=
u:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15102) -> SKIP (i915#14544 / i915#1=
5102) +9 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-p=
write:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#4423) -> SKIP +4 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#15102) -> SKIP (i915#10433 / i915#1=
5102) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
>=20
>       =E2=96=A1 shard-dg1: SKIP -> SKIP (i915#4423)
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15102 / i915#3023) -> SKIP (i915#14=
544 / i915#
>         15102 / i915#3023) +2 other tests skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-dra=
w-blt:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#15102) -> SKIP (i915#15102 / i915#4=
423) +1 other
>         test skip
>   =E2=80=A2 igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-mov=
e:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15102) -> SKIP (i915#1=
5102) +4 other
>         tests skip
>   =E2=80=A2 igt@kms_joiner@basic-big-joiner:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15460) -> SKIP (i915#14544 / i915#1=
5460)
>   =E2=80=A2 igt@kms_joiner@invalid-modeset-big-joiner:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15460) -> SKIP (i915#1=
5460)
>   =E2=80=A2 igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14712) -> SKIP (i915#14544 / i915#1=
4712)
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-sou=
rce-clamping:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15709) -> SKIP (i915#14544 / i915#1=
5709) +1 other
>         test skip
>   =E2=80=A2 igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source=
-clamping:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15709) -> SKIP (i915#1=
5709)
>   =E2=80=A2 igt@kms_plane_multiple@2x-tiling-4:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13958 / i915#14544) -> SKIP (i915#1=
3958)
>   =E2=80=A2 igt@kms_plane_multiple@2x-tiling-none:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#13958) -> SKIP (i915#13958 / i915#1=
4544)
>   =E2=80=A2 igt@kms_pm_dc@dc5-pageflip-negative:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#9685) -> SKIP (i915#14544 / i915#96=
85)
>   =E2=80=A2 igt@kms_pm_dc@dc5-psr:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15948) -> SKIP (i915#14544 / i915#1=
5948)
>   =E2=80=A2 igt@kms_pm_lpsp@kms-lpsp:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#3828) -> SKIP (i915#9340)
>   =E2=80=A2 igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#15073) -> DMESG-WARN (i915#4423)
>   =E2=80=A2 igt@kms_prime@basic-modeset-hybrid:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#6524) -> SKIP (i915#14544 / i915#65=
24)
>   =E2=80=A2 igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#11520 / i915#4423) -> SKIP (i915#11=
520)
>   =E2=80=A2 igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11520) -> SKIP (i915#11520 / i915#1=
4544) +3 other
>         tests skip
>   =E2=80=A2 igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#11520 / i915#14544) -> SKIP (i915#1=
1520) +2 other
>         tests skip
>   =E2=80=A2 igt@kms_psr@fbc-psr2-primary-blt:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1072 / i915#9732) -> SKIP (i915#107=
2 / i915#14544
>         / i915#9732) +6 other tests skip
>   =E2=80=A2 igt@kms_psr@pr-primary-mmap-cpu:
>=20
>       =E2=96=A1 shard-dg1: SKIP (i915#1072 / i915#9732) -> SKIP (i915#107=
2 / i915#4423
>         / i915#9732) +2 other tests skip
>   =E2=80=A2 igt@kms_psr@psr-sprite-plane-move:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#1072 / i915#14544 / i915#9732) -> S=
KIP (i915#1072
>         / i915#9732) +7 other tests skip
>   =E2=80=A2 igt@kms_rotation_crc@primary-rotation-270:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#12755 / i915#15867) -> SKIP (i915#1=
5867)
>   =E2=80=A2 igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>=20
>       =E2=96=A1 shard-dg2: SKIP (i915#12755 / i915#15867 / i915#5190) -> =
SKIP (i915#
>         15867 / i915#5190)
>   =E2=80=A2 igt@kms_tiled_display@basic-test-pattern:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#8623) -> SKIP (i915#86=
23)
>   =E2=80=A2 igt@kms_vrr@flip-basic:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#15243 / i915#3555) -> =
SKIP (i915#
>         15243 / i915#3555) +1 other test skip
>   =E2=80=A2 igt@kms_vrr@flip-suspend:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#15243 / i915#3555) -> SKIP (i915#14=
544 / i915#
>         15243 / i915#3555)
>   =E2=80=A2 igt@kms_vrr@seamless-rr-switch-vrr:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9906) -> SKIP (i915#99=
06)
>   =E2=80=A2 igt@perf@mi-rpc:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#2434) -> SKIP (i915#14544 / i915#24=
34)
>   =E2=80=A2 igt@prime_vgem@basic-write:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#3291 / i915#3708) -> S=
KIP (i915#3291
>         / i915#3708)
>   =E2=80=A2 igt@sriov_basic@bind-unbind-vf:
>=20
>       =E2=96=A1 shard-rkl: SKIP (i915#14544 / i915#9917) -> SKIP (i915#99=
17)
>=20
> Build changes
>=20
>   =E2=80=A2 Linux: CI_DRM_18707 -> Patchwork_168947v1
>=20
> CI-20190529: 20190529
> CI_DRM_18707: 6583dd200482a34bb17e5dc54551f91f53b79798 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_8976: 8976
> Patchwork_168947v1: 6583dd200482a34bb17e5dc54551f91f53b79798 @ git://
> anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://
> anongit.freedesktop.org/piglit
>
