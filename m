Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8C9ACC7AB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 15:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F7510E62F;
	Tue,  3 Jun 2025 13:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Snqm/GtD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4828410E6B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Jun 2025 13:23:26 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8D00A61127;
 Tue,  3 Jun 2025 13:23:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 032C5C4CEEF;
 Tue,  3 Jun 2025 13:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748957005;
 bh=vMFUnZ+h/5vlMrrCJHf97C1zZz4pISWenNSdZiL0Nqc=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=Snqm/GtDWflUJYbY1OEwlCrBQ8aqd4oYdfcplCLCmZVA6byvl95p4vKvZe4bYzc7y
 V2rkC9WMxfNEcJ3HRWdNgUJ4Fs45gfff0r7PSvJ4w6vhx1V+kNFhu7FkkbZO5lkTwv
 OOXBglINEuX1D0ggxvtXY1EYKo/iK82gNSt9s8sF6rutv9HA7rOpUJiL2lQtmqOCf0
 4E+xnL/BCKvE/5gZoIDCSkXNCG29VRWRLglwZ3b2nIq0O5XPOnnU6UTt5/mCZCuHfC
 i/D5GEDP9iM5xZgGq6J29qj0uz0M1wGNIemjnDA0mTumi5whdXF/1HLlIZL0sjDxXv
 ARQDYfRzLMmWA==
Message-ID: <fc99f9ee0495cbe4c989a774d002ae4afe761ea7.camel@kernel.org>
Subject: Re: =?UTF-8?Q?=E2=9C=97?= i915.CI.BAT: failure for ref_tracker: add
 ability to register a debugfs file for a ref_tracker_dir (rev9)
From: Jeff Layton <jlayton@kernel.org>
To: intel-gfx@lists.freedesktop.org
Cc: Krzysztof Karas <krzysztof.karas@intel.com>
Date: Tue, 03 Jun 2025 09:23:23 -0400
In-Reply-To: <174895473386.43118.3704275649238783088@1538d3639d33>
References: <20250603-reftrack-dbgfs-v13-0-7b2a425019d8@kernel.org>
 <174895473386.43118.3704275649238783088@1538d3639d33>
Autocrypt: addr=jlayton@kernel.org; prefer-encrypt=mutual;
 keydata=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
 QZIQXVeAA+smfTT0tDrisj1U5x6ZB9b3nBg65kc=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
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

On Tue, 2025-06-03 at 12:45 +0000, Patchwork wrote:
> Patch Details
> Series: ref_tracker: add ability to register a debugfs file for a ref_tra=
cker_dir (rev9)
> URL: https://patchwork.freedesktop.org/series/148490/
> State: failure
> Details: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9/inde=
x.html
>=20
> =C2=A0
>=20
>=20
>=20
> CI Bug Log - changes from CI_DRM_16637 -> Patchwork_148490v9SummaryFAILUR=
E
> Serious unknown changes coming with Patchwork_148490v9 absolutely need to=
 be
> =C2=A0verified manually.
> If you think the reported changes have nothing to do with the changes
> =C2=A0introduced in Patchwork_148490v9, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
> =C2=A0to document this new failure mode, which will reduce false positive=
s in CI.
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148490v9=
/index.html
> Participating hosts (42 -> 42)Additional (1): bat-arlh-2=20
> =C2=A0Missing (1): fi-snb-2520m=20
> Possible new issuesHere are the unknown changes that may have been introd=
uced in Patchwork_148490v9:
> IGT changesPossible regressions *=20
> =C2=A0=C2=A0=C2=A0igt@i915_pm_rpm@module-reload:bat-dg2-14:         PASS =
-> DMESG-WARN +44 other tests dmesg-warnfi-bsw-nick:        PASS -> DMESG-W=
ARN +40 other tests dmesg-warnbat-kbl-2:          PASS -> DMESG-WARN +40 ot=
her tests dmesg-warnbat-adlp-6:         PASS -> DMESG-WARN +40 other tests =
dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@client:fi-elk-e7500:       PASS =
-> DMESG-WARN +39 other tests dmesg-warnfi-kbl-guc:         PASS -> DMESG-W=
ARN +39 other tests dmesg-warnbat-adls-6:         PASS -> DMESG-WARN +40 ot=
her tests dmesg-warnbat-dg1-7:          PASS -> DMESG-WARN +15 other tests =
dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@coherency:fi-kbl-x1275:       PA=
SS -> DMESG-WARN +39 other tests dmesg-warnbat-adlp-11:        PASS -> DMES=
G-WARN +40 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@evict:fi-pnv-d510:        PASS -=
> DMESG-WARN +39 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@gem:fi-rkl-11600:       PASS -> =
DMESG-WARN +40 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@gem_contexts:bat-arls-6:        =
 PASS -> DMESG-WARN +38 other tests dmesg-warnbat-arlh-3:         PASS -> D=
MESG-WARN +38 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@gt_engines:bat-dg1-6:          P=
ASS -> DMESG-WARN +44 other tests dmesg-warnfi-ilk-650:         PASS -> DME=
SG-WARN +38 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@gt_mocs:bat-twl-2:          PASS=
 -> DMESG-WARN +38 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@gt_pm:fi-tgl-1115g4:      PASS -=
> DMESG-WARN +40 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@gt_tlb:bat-adlp-9:         PASS =
-> DMESG-WARN +40 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@guc_hang:bat-dg2-9:          PAS=
S -> DMESG-WARN +15 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@guc_multi_lrc:bat-mtlp-8:       =
  PASS -> DMESG-WARN +38 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@hangcheck:bat-atsm-1:         PA=
SS -> DMESG-WARN +41 other tests dmesg-warnbat-mtlp-9:         PASS -> DMES=
G-WARN +20 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@late_gt_pm:fi-cfl-8109u:       P=
ASS -> DMESG-WARN +38 other tests dmesg-warnfi-kbl-8809g:       PASS -> DME=
SG-WARN +40 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@objects:fi-blb-e6850:       PASS=
 -> DMESG-WARN +38 other tests dmesg-warnfi-skl-6600u:       PASS -> DMESG-=
WARN +40 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@perf:bat-dg2-11:         PASS ->=
 DMESG-WARN +42 other tests dmesg-warnfi-hsw-4770:        PASS -> DMESG-WAR=
N +39 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@ring_submission:fi-ivb-3770:    =
    PASS -> DMESG-WARN +39 other tests dmesg-warnbat-dg2-8:          PASS -=
> DMESG-WARN +15 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@sanitycheck:fi-kbl-7567u:       =
PASS -> DMESG-WARN +40 other tests dmesg-warnbat-twl-1:          PASS -> DM=
ESG-WARN +39 other tests dmesg-warnbat-apl-1:          PASS -> DMESG-WARN +=
39 other tests dmesg-warnbat-arls-5:         PASS -> DMESG-WARN +38 other t=
ests dmesg-warnbat-rplp-1:         PASS -> DMESG-WARN +40 other tests dmesg=
-warnbat-arlh-2:         NOTRUN -> DMESG-WARN +22 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@slpc:fi-cfl-guc:         PASS ->=
 DMESG-WARN +40 other tests dmesg-warnbat-mtlp-6:         PASS -> DMESG-WAR=
N +38 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@vma:fi-cfl-8700k:       PASS -> =
DMESG-WARN +40 other tests dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@workarounds:fi-bsw-n3050:       =
PASS -> DMESG-WARN +40 other tests dmesg-warn
> Warnings *=20
> =C2=A0=C2=A0=C2=A0igt@i915_module_load@reload:bat-twl-1:          DMESG-W=
ARN (i915#13736) -> DMESG-WARN

I'm very confused by this CI report, and I suspect that this may be a
bug in the i915 driver. The log above shows several instances of
messages like this:

    <3> [414.085231] debugfs: File 'intel_wakeref@ffff88810f9c2308' in dire=
ctory 'ref_tracker' already present!

...but if you look at the patch, it changes the code to only call
ref_tracker_dir_init() when the "class" pointer isn't set. Since the
containing object is zalloced, that should ensure that it only does
this once:

        if (!wf->debug.class)
               ref_tracker_dir_init(&wf->debug,
INTEL_REFTRACK_DEAD_COUNT, "intel_wakeref");


I think that the only way this could be happening is if the driver is
doing something like zeroing out the object that contains the struct
ref_tracker_dir and reinitializing it.

Does the i915 driver do that? Can we make it call
ref_tracker_dir_exit() before doing so? I don't think that practice is
safe if there are outstanding references at the time it occurs.


> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live:bat-arlh-3:         DMESG-FAIL (=
i915#14243) -> DMESG-WARN +1 other test dmesg-warnbat-mtlp-9:         DMESG=
-FAIL (i915#12061) -> DMESG-WARN
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@late_gt_pm:bat-twl-2:          A=
BORT (i915#14357) -> DMESG-WARN +1 other test dmesg-warn
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live@workarounds:bat-arls-5:         =
DMESG-FAIL (i915#12061) -> DMESG-WARN +1 other test dmesg-warnbat-mtlp-6:  =
       DMESG-FAIL (i915#12061) -> DMESG-WARN +1 other test dmesg-warnbat-dg=
2-11:         DMESG-FAIL (i915#12061) -> DMESG-WARN +1 other test dmesg-war=
nbat-arls-6:         DMESG-FAIL (i915#12061) -> DMESG-WARN +1 other test dm=
esg-warn
> Known issuesHere are the changes found in Patchwork_148490v9 that come fr=
om known issues:
> IGT changesIssues hit *=20
> =C2=A0=C2=A0=C2=A0igt@fbdev@eof:bat-arlh-2:         NOTRUN -> SKIP (i915#=
11345 / i915#11346) +3 other tests skip
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@fbdev@info:bat-arlh-2:         NOTRUN -> SKIP (i915=
#11346 / i915#1849)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@gem_lmem_swapping@basic:bat-arlh-2:         NOTRUN =
-> SKIP (i915#10213 / i915#11346 / i915#11671) +3 other tests skip
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@gem_mmap@basic:bat-arlh-2:         NOTRUN -> SKIP (=
i915#11343 / i915#11346)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@gem_render_tiled_blits@basic:bat-arlh-2:         NO=
TRUN -> SKIP (i915#10197 / i915#10211 / i915#11346 / i915#11725)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@gem_tiled_blits@basic:bat-arlh-2:         NOTRUN ->=
 SKIP (i915#11346 / i915#12637) +4 other tests skip
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@gem_tiled_pread_basic:bat-arlh-2:         NOTRUN ->=
 SKIP (i915#10206 / i915#11346 / i915#11724)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_pm_rps@basic-api:bat-arlh-2:         NOTRUN ->=
 SKIP (i915#10209 / i915#11346 / i915#11681)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@i915_selftest@live:bat-arlh-2:         NOTRUN -> AB=
ORT (i915#13723) +1 other test abort
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@intel_hwmon@hwmon-read:bat-arlh-2:         NOTRUN -=
> SKIP (i915#11346 / i915#11680 / i915#7707) +1 other test skip
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:bat-ar=
lh-2:         NOTRUN -> SKIP (i915#10200 / i915#11346 / i915#11666 / i915#1=
2203)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@kms_addfb_basic@basic-x-tiled-legacy:bat-arlh-2:   =
      NOTRUN -> SKIP (i915#10200 / i915#11346 / i915#11666) +8 other tests =
skip
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@kms_hdmi_inject@inject-audio:bat-arls-6:         PA=
SS -> FAIL (i915#13930)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@kms_psr@psr-primary-page-flip:bat-arlh-2:         N=
OTRUN -> SKIP (i915#11346) +32 other tests skip
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@kms_setmode@basic-clone-single-crtc:bat-arlh-2:    =
     NOTRUN -> SKIP (i915#10208 / i915#11346 / i915#8809)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@prime_vgem@basic-fence-read:bat-arlh-2:         NOT=
RUN -> SKIP (i915#10212 / i915#11346 / i915#11726)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@prime_vgem@basic-read:bat-arlh-2:         NOTRUN ->=
 SKIP (i915#10214 / i915#11346 / i915#11726)
> =C2=A0*=20
> =C2=A0=C2=A0=C2=A0igt@prime_vgem@basic-write:bat-arlh-2:         NOTRUN -=
> SKIP (i915#10216 / i915#11346 / i915#11723)
> Possible fixes * igt@i915_selftest@live@workarounds:bat-mtlp-9:         D=
MESG-FAIL (i915#12061) -> PASS
> Build changes * Linux: CI_DRM_16637 -> Patchwork_148490v9
> CI-20190529: 20190529
> =C2=A0CI_DRM_16637: bea2a0d35dc29d6ae8a4e44506af9b563f012211 @ git://anon=
git.freedesktop.org/gfx-ci/linux
> =C2=A0IGT_8392: 8392
> =C2=A0Patchwork_148490v9: bea2a0d35dc29d6ae8a4e44506af9b563f012211 @ git:=
//anongit.freedesktop.org/gfx-ci/linux

--=20
Jeff Layton <jlayton@kernel.org>
