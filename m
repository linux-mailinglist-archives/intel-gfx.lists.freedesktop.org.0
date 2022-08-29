Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A49FF5A4C04
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 14:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7ED10F1A6;
	Mon, 29 Aug 2022 12:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B82010F1AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 12:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661776611; x=1693312611;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:cc:subject:from:to:message-id:date;
 bh=qebT03Qrq42HQRtvSI2/pC/Pj8IBPhf64ZZNDRqMGE0=;
 b=ZH0iM8cGTtSqCrkeKsAsbfXZb+8ymngMh67dpnrs0onCR+zyZm7MIUPM
 HXEH5hVKwLtN6F9zj6zkCe00xBETwscOm5x8tEBEaQyp+GjyvCW7F4P1m
 G83ksZhIexva77eQGeIcIIpQXmz42m3vXRiZCxDX9BcD0bMQol0Vh4qKG
 HZoMzyCho1UB60Gq4pukNllbwA4NKQPxfFnIAdJozyPTES3eB4TTDYjZI
 KIYMLvULYAGD5QSFkv9gZCMfSA7m++l2i3pmar3W3l2/GNlZQdWgXNYoX
 OK4rFb31qJWmlvFASmC2mI8WqirYD/YqIROdi9UVRtuwuTHACHtmSaqOX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275284819"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="275284819"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 05:36:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="679608984"
Received: from ojmolloy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.29.129])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 05:36:49 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <166151127047.30041.6542517818263928436@emeril.freedesktop.org>
References: <20220826092343.184568-1-joonas.lahtinen@linux.intel.com>
 <166151127047.30041.6542517818263928436@emeril.freedesktop.org>
Subject: Re:  ✓ Fi.CI.BAT: success for drm/i915/guc: Remove log size module parameters (rev2)
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <166177660532.4306.8572057115150620427@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 29 Aug 2022 15:36:45 +0300
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Patchwork (2022-08-26 13:54:30)
> Patch Details
>=20
> Series:  drm/i915/guc: Remove log size module parameters (rev2)
> URL:     https://patchwork.freedesktop.org/series/107780/
> State:   success
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107780v2/inde=
x.html
>=20
> CI Bug Log - changes from CI_DRM_12031 -> Patchwork_107780v2
>=20
> Summary
>=20
> SUCCESS
>=20
> No regressions found.

Pushed the patch. Thanks for the reviews.

Regards, Joonas

>=20
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107780v2/
> index.html
>=20
> Participating hosts (38 -> 37)
>=20
> Additional (2): bat-adln-1 bat-dg1-5
> Missing (3): fi-hsw-4770 bat-rpls-2 bat-dg2-10
>=20
> Possible new issues
>=20
> Here are the unknown changes that may have been introduced in
> Patchwork_107780v2:
>=20
> IGT changes
>=20
> Suppressed
>=20
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>=20
>   =E2=80=A2 igt@i915_pm_rps@basic-api:
>       =E2=96=A1 {bat-adln-1}: NOTRUN -> SKIP
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_107780v2 that come from known iss=
ues:
>=20
> IGT changes
>=20
> Issues hit
>=20
>   =E2=80=A2 igt@fbdev@read:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#2582) +4 similar issues
>   =E2=80=A2 igt@gem_mmap@basic:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#4083)
>   =E2=80=A2 igt@gem_tiled_fence_blits@basic:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#4077) +2 similar issues
>   =E2=80=A2 igt@gem_tiled_pread_basic:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#4079) +1 similar issue
>   =E2=80=A2 igt@i915_pm_backlight@basic-brightness:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#1155)
>   =E2=80=A2 igt@i915_pm_rps@basic-api:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#6621)
>   =E2=80=A2 igt@i915_selftest@live@gt_engines:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> INCOMPLETE (i915#4418)
>   =E2=80=A2 igt@i915_suspend@basic-s3-without-i915:
>=20
>       =E2=96=A1 fi-rkl-11600: PASS -> INCOMPLETE (i915#5982)
>   =E2=80=A2 igt@kms_addfb_basic@basic-x-tiled-legacy:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#4212) +7 similar issues
>   =E2=80=A2 igt@kms_addfb_basic@basic-y-tiled-legacy:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#4215)
>   =E2=80=A2 igt@kms_busy@basic:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#1845 / i915#4303)
>   =E2=80=A2 igt@kms_chamelium@hdmi-hpd-fast:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (fdo#111827) +7 similar issues
>   =E2=80=A2 igt@kms_force_connector_basic@force-load-detect:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (fdo#109285)
>   =E2=80=A2 igt@kms_pipe_crc_basic@nonblocking-crc:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#4078) +13 similar issues
>   =E2=80=A2 igt@kms_psr@sprite_plane_onoff:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#1072 / i915#4078) +3 simi=
lar issues
>   =E2=80=A2 igt@kms_setmode@basic-clone-single-crtc:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#3555)
>   =E2=80=A2 igt@prime_vgem@basic-fence-flip:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#1845 / i915#3708)
>   =E2=80=A2 igt@prime_vgem@basic-fence-read:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#3708) +2 similar issues
>   =E2=80=A2 igt@prime_vgem@basic-gtt:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#3708 / i915#4077) +1 simi=
lar issue
>   =E2=80=A2 igt@prime_vgem@basic-userptr:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> SKIP (i915#3708 / i915#4873)
>   =E2=80=A2 igt@runner@aborted:
>=20
>       =E2=96=A1 bat-dg1-5: NOTRUN -> FAIL (i915#4312 / i915#5257)
>=20
> Possible fixes
>=20
>   =E2=80=A2 igt@i915_selftest@live@hangcheck:
>=20
>       =E2=96=A1 {fi-ehl-2}: INCOMPLETE (i915#5153) -> PASS
>=20
>       =E2=96=A1 {bat-dg2-11}: INCOMPLETE -> PASS
>=20
>   =E2=80=A2 igt@i915_selftest@live@requests:
>=20
>       =E2=96=A1 {bat-rpls-1}: INCOMPLETE (i915#4983 / i915#6257 / i915#63=
80) -> PASS
>=20
> {name}: This element is suppressed. This means it is ignored when computi=
ng
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>=20
> Build changes
>=20
>   =E2=80=A2 Linux: CI_DRM_12031 -> Patchwork_107780v2
>=20
> CI-20190529: 20190529
> CI_DRM_12031: 3a648e054afa78544f00531084cad2d3c18c5b9f @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_107780v2: 3a648e054afa78544f00531084cad2d3c18c5b9f @ git://
> anongit.freedesktop.org/gfx-ci/linux
>=20
> Linux commits
>=20
> 86ecb944c399 drm/i915/guc: Remove log size module parameters
>=20
