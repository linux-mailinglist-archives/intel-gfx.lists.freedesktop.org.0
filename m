Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 096E24DAC13
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 08:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B83310E856;
	Wed, 16 Mar 2022 07:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D30F10E858
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 07:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647417176; x=1678953176;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=3+5xLmgnzqfX4iEecNa9NC8oYEtJnJkDv6Z5KkW5ZwA=;
 b=GIiBUNMNhDX+NIsWmJavNwCdRSOjncblbEhDO8AnM9qcEUhpB2SoKp0u
 SXtvtmcwYH0HzaOJtzaNC9j35tcfc24sb9IBBA0GHlP9JbLLNZASaYtgN
 yT7crFpq34JV2Wx4jakT0L0RZgYcWiYFSrVKhsZ1wJreAw4FwZ0MbajRc
 ryBOntgmISX3CeBjqdXnlSvr5MklxovL+gGwHlu525dcRC1tlfsmml0hp
 dcR0gqCFI2rJPbht9Q0PhA6ygAbu5Dj2MqE/qNIgso2RlXV/J+PGVMXoS
 krtNl0v9WqPKHVrmLg6cf8vqvv4NQdukx2mMuXxQ7EaobhoRtjjo4OkbA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="319734635"
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="319734635"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 00:52:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,186,1643702400"; d="scan'208";a="540802080"
Received: from jgarrosx-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.34.45])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 00:52:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <fe92c2dc4f2545eaa485536e059219ad@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
 <164698887215.23984.13217370032743062336@emeril.freedesktop.org>
 <fe92c2dc4f2545eaa485536e059219ad@intel.com>
Date: Wed, 16 Mar 2022 09:52:50 +0200
Message-ID: <87bky6pc4t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_CDCLK_checks_to_atomic_check_phase_=28rev3=29?=
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

On Tue, 15 Mar 2022, "Srivatsa, Anusha" <anusha.srivatsa@intel.com> wrote:
> Checked the logs, a lot of machines not showing tests results even though=
 igt_run.txt shows as PASS for most. The boot log shows ACL errors in /var/=
log/journal/ , sending the series again.

If you don't need a rebase or change anything, you know you can just hit
the retest button via the patchwork link.

BR,
Jani.

>
> Anusha
>
> From: Patchwork <patchwork@emeril.freedesktop.org>
> Sent: Friday, March 11, 2022 12:55 AM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: =E2=9C=97 Fi.CI.BAT: failure for Add CDCLK checks to atomic chec=
k phase (rev3)
>
> Patch Details
> Series:
>
> Add CDCLK checks to atomic check phase (rev3)
>
> URL:
>
> https://patchwork.freedesktop.org/series/101068/
>
> State:
>
> failure
>
> Details:
>
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/index.html
>
> CI Bug Log - changes from CI_DRM_11350 -> Patchwork_22540
> Summary
>
> FAILURE
>
> Serious unknown changes coming with Patchwork_22540 absolutely need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_22540, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in C=
I.
>
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/in=
dex.html
>
> Participating hosts (48 -> 27)
>
> Additional (2): fi-kbl-soraka fi-pnv-d510
> Missing (23): fi-rkl-11600 bat-dg1-6 bat-dg1-5 fi-icl-u2 fi-apl-guc bat-r=
pls-2 shard-dg1 fi-bdw-5557u shard-tglu fi-adl-ddr5 fi-glk-dsi fi-kbl-7500u=
 fi-ctg-p8600 fi-skl-6700k2 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-bsw-cya=
n fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u shard-rkl fi-bdw-samus
>
> Possible new issues
>
> Here are the unknown changes that may have been introduced in Patchwork_2=
2540:
>
> IGT changes
> Possible regressions
>
>   *   igt@gem_exec_suspend@basic-s0@smem:
>
>      *   fi-bsw-nick: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11350/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-nick/igt@ge=
m_exec_suspend@basic-s0@smem.html>
>      *   fi-glk-j4005: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11350/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLET=
E<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-glk-j4005/igt=
@gem_exec_suspend@basic-s0@smem.html>
>      *   fi-rkl-guc: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11350/fi-rkl-guc/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-rkl-guc/igt@gem_e=
xec_suspend@basic-s0@smem.html>
>      *   fi-bsw-kefka: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11350/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLET=
E<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-kefka/igt=
@gem_exec_suspend@basic-s0@smem.html>
>      *   fi-bsw-n3050: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11350/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLET=
E<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-n3050/igt=
@gem_exec_suspend@basic-s0@smem.html>
>      *   fi-bxt-dsi: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11350/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bxt-dsi/igt@gem_e=
xec_suspend@basic-s0@smem.html>
>
> Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   *   igt@gem_exec_suspend@basic-s0@smem:
>
>      *   {fi-ehl-2}: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11350/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-ehl-2/igt@gem_exec_=
suspend@basic-s0@smem.html>
>      *   {fi-jsl-1}: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_11350/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE<http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-jsl-1/igt@gem_exec_=
suspend@basic-s0@smem.html>
>      *   {fi-tgl-dsi}: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11350/fi-tgl-dsi/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-tgl-dsi/igt@gem=
_exec_suspend@basic-s0@smem.html>
>      *   {bat-adlp-6}: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11350/bat-adlp-6/igt@gem_exec_suspend@basic-s0@smem.html> -> INCOMPLETE<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/bat-adlp-6/igt@gem=
_exec_suspend@basic-s0@smem.html>
>
>   *   igt@runner@aborted:
>
>      *   {bat-jsl-1}: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22540/bat-jsl-1/igt@runner@aborted.html>
>
> Known issues
>
> Here are the changes found in Patchwork_22540 that come from known issues:
>
> IGT changes
> Issues hit
>
>   *   igt@amdgpu/amd_basic@cs-gfx:
>
>      *   fi-hsw-4770: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22540/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html> (fdo#109=
271<https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / fdo#109315<htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109315>) +17 similar issues
>
>   *   igt@gem_exec_fence@basic-busy@bcs0:
>
>      *   fi-kbl-soraka: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.htm=
l> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>) +9 s=
imilar issues
>
>   *   igt@gem_huc_copy@huc-copy:
>
>      *   fi-kbl-soraka: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html> (fdo#1=
09271<https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#2190<ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2190>)
>
>   *   igt@gem_lmem_swapping@basic:
>
>      *   fi-kbl-soraka: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html> (fdo=
#109271<https://bugs.freedesktop.org/show_bug.cgi?id=3D109271> / i915#4613<=
https://gitlab.freedesktop.org/drm/intel/issues/4613>) +3 similar issues
>
>   *   igt@i915_selftest@live@gt_pm:
>
>      *   fi-kbl-soraka: NOTRUN -> DMESG-FAIL<https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.htm=
l> (i915#1886<https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>
>   *   igt@kms_chamelium@common-hpd-after-suspend:
>
>      *   fi-kbl-soraka: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22540/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-sus=
pend.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1> / fdo#111827<https://bugs.freedesktop.org/show_bug.cgi?id=3D111827>) +8 =
similar issues
>
>   *   igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>
>      *   fi-kbl-soraka: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22540/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-san=
itycheck-pipe-d.html> (fdo#109271<https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271> / i915#533<https://gitlab.freedesktop.org/drm/intel/issues/53=
3>)
>
>   *   igt@prime_vgem@basic-userptr:
>
>      *   fi-pnv-d510: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22540/fi-pnv-d510/igt@prime_vgem@basic-userptr.html> (fdo#10=
9271<https://bugs.freedesktop.org/show_bug.cgi?id=3D109271>) +58 similar is=
sues
>
>   *   igt@runner@aborted:
>
>      *   fi-tgl-1115g4: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22540/fi-tgl-1115g4/igt@runner@aborted.html> (i915#3690<ht=
tps://gitlab.freedesktop.org/drm/intel/issues/3690>)
>
> Possible fixes
>
>   *   igt@core_hotunplug@unbind-rebind:
>
>      *   fi-bwr-2160: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11350/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html> (i915#3194<https=
://gitlab.freedesktop.org/drm/intel/issues/3194>) -> PASS<https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bwr-2160/igt@core_hotunplug@unbi=
nd-rebind.html>
>
>   *   igt@i915_selftest@live@hangcheck:
>
>      *   fi-hsw-4770: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11350/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html> (i915#3303=
<https://gitlab.freedesktop.org/drm/intel/issues/3303>) -> PASS<https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-hsw-4770/igt@i915_selftest=
@live@hangcheck.html>
>
> {name}: This element is suppressed. This means it is ignored when computi=
ng
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
> Build changes
>
>   *   Linux: CI_DRM_11350 -> Patchwork_22540
>
> CI-20190529: 20190529
> CI_DRM_11350: 925314164278701a48bb63b89a95d6c7e179a02e @ git://anongit.fr=
eedesktop.org/gfx-ci/linux
> IGT_6375: aa6eb64bac510b7d617436997171bfe388943d89 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git
> Patchwork_22540: d6445335bc35715241430601cc6d7c80dd1eab59 @ git://anongit=
.freedesktop.org/gfx-ci/linux
>
> =3D=3D Linux commits =3D=3D
>
> d6445335bc35 drm/i915/display: Add cdclk checks to atomic check
> 140920b39b44 drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
> 798f018d5ec0 drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash
> 3b1e63bbb7d4 drm/i915/display: Add CDCLK actions to intel_cdclk_state

--=20
Jani Nikula, Intel Open Source Graphics Center
