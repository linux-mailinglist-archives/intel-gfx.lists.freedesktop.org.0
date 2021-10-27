Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B89C43C85E
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 13:15:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2169189C27;
	Wed, 27 Oct 2021 11:15:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2C989C27
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 11:15:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="293597765"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="293597765"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 04:15:25 -0700
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="465695832"
Received: from aeremina-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.249.254.123])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 04:15:23 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <163533069376.4635.9220798941444428543@emeril.freedesktop.org>
References: <20211027093255.66489-1-joonas.lahtinen@linux.intel.com>
 <163533069376.4635.9220798941444428543@emeril.freedesktop.org>
Subject: Re:  ✓ Fi.CI.BAT: success for drm/i915: Revert 'guc_id' from i915_request tracepoint
To: Patchwork <patchwork@emeril.freedesktop.org>,
 intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <163533332117.68716.12904523650036971674@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 27 Oct 2021 14:15:21 +0300
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

+ Jani and Rodrigo in order to pick this to -fixes.

Quoting Patchwork (2021-10-27 13:31:33)
> Patch Details
>=20
> Series:  drm/i915: Revert 'guc_id' from i915_request tracepoint
> URL:     https://patchwork.freedesktop.org/series/96336/
> State:   success
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21458/index.h=
tml
>=20
> CI Bug Log - changes from CI_DRM_10795 -> Patchwork_21458
>=20
> Summary
>=20
> SUCCESS
>=20
> No regressions found.

Thanks for the review, this is now merged to drm-intel-gt-next.

Regards, Joonas

> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21458/
> index.html
>=20
> Participating hosts (37 -> 35)
>=20
> Additional (2): fi-tgl-1115g4 fi-icl-u2
> Missing (4): fi-bsw-cyan bat-adlp-4 bat-dg1-6 bat-dg1-5
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_21458 that come from known issues:
>=20
> IGT changes
>=20
> Issues hit
>=20
>   =E2=80=A2 igt@amdgpu/amd_basic@query-info:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (fdo#109315)
>   =E2=80=A2 igt@amdgpu/amd_cs_nop@fork-gfx0:
>=20
>       =E2=96=A1 fi-icl-u2: NOTRUN -> SKIP (fdo#109315) +17 similar issues
>   =E2=80=A2 igt@amdgpu/amd_cs_nop@nop-gfx0:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (fdo#109315 / i915#2575) +1=
6 similar
>         issues
>   =E2=80=A2 igt@gem_huc_copy@huc-copy:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (i915#2190)
>=20
>       =E2=96=A1 fi-icl-u2: NOTRUN -> SKIP (i915#2190)
>=20
>   =E2=80=A2 igt@i915_pm_backlight@basic-brightness:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (i915#1155)
>   =E2=80=A2 igt@i915_selftest@live@execlists:
>=20
>       =E2=96=A1 fi-bsw-n3050: PASS -> INCOMPLETE (i915#2940)
>   =E2=80=A2 igt@kms_chamelium@common-hpd-after-suspend:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (fdo#111827) +8 similar iss=
ues
>   =E2=80=A2 igt@kms_chamelium@dp-crc-fast:
>=20
>       =E2=96=A1 fi-bsw-nick: NOTRUN -> SKIP (fdo#109271 / fdo#111827) +8 =
similar issues
>   =E2=80=A2 igt@kms_chamelium@hdmi-hpd-fast:
>=20
>       =E2=96=A1 fi-icl-u2: NOTRUN -> SKIP (fdo#111827) +8 similar issues
>   =E2=80=A2 igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (i915#4103) +1 similar issue
>   =E2=80=A2 igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>=20
>       =E2=96=A1 fi-icl-u2: NOTRUN -> SKIP (fdo#109278) +2 similar issues
>   =E2=80=A2 igt@kms_force_connector_basic@force-load-detect:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (fdo#109285)
>=20
>       =E2=96=A1 fi-icl-u2: NOTRUN -> SKIP (fdo#109285)
>=20
>   =E2=80=A2 igt@kms_psr@primary_mmap_gtt:
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (i915#1072) +3 similar issu=
es
>   =E2=80=A2 igt@prime_vgem@basic-fence-flip:
>=20
>       =E2=96=A1 fi-bsw-nick: NOTRUN -> SKIP (fdo#109271) +57 similar issu=
es
>   =E2=80=A2 igt@prime_vgem@basic-userptr:
>=20
>       =E2=96=A1 fi-icl-u2: NOTRUN -> SKIP (i915#3301)
>=20
>       =E2=96=A1 fi-tgl-1115g4: NOTRUN -> SKIP (i915#3301)
>=20
>   =E2=80=A2 igt@runner@aborted:
>=20
>       =E2=96=A1 fi-bsw-n3050: NOTRUN -> FAIL (fdo#109271 / i915#1436 / i9=
15#3428 / i915
>         #4312)
>=20
> Possible fixes
>=20
>   =E2=80=A2 igt@gem_exec_suspend@basic-s3:
>=20
>       =E2=96=A1 fi-bsw-nick: INCOMPLETE (i915#2369 / i915#3159) -> PASS
>   =E2=80=A2 igt@kms_frontbuffer_tracking@basic:
>=20
>       =E2=96=A1 fi-cfl-8109u: DMESG-FAIL (i915#295) -> PASS
>   =E2=80=A2 igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
>=20
>       =E2=96=A1 fi-cfl-8109u: DMESG-WARN (i915#295) -> PASS +10 similar i=
ssues
>=20
> Build changes
>=20
>   =E2=80=A2 Linux: CI_DRM_10795 -> Patchwork_21458
>=20
> CI-20190529: 20190529
> CI_DRM_10795: 59f3569eebe53403249227d476e81d09c63c0f0c @ git://
> anongit.freedesktop.org/gfx-ci/linux
> IGT_6262: d1c793b26e31cc6ae3f9fa3239805a9bbcc749fb @ https://
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_21458: b7ef9de627b6edf88489282bddece7a342263c62 @ git://
> anongit.freedesktop.org/gfx-ci/linux
>=20
> =3D=3D Linux commits =3D=3D
>=20
> b7ef9de627b6 drm/i915: Revert 'guc_id' from i915_request tracepoint
>=20
