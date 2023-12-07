Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CEA808751
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Dec 2023 13:05:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E8BB10E879;
	Thu,  7 Dec 2023 12:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E8F10E879
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Dec 2023 12:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701950717; x=1733486717;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wO8W3UMRxoMElsojkDsj2rlVsgXrOyM7sMs35xefKNk=;
 b=EwFeYszkUkNpoBmAGKaWV5uSBrWmBbPEroeL4QgQ3zrWjawzURKa1/wR
 Jco9+0Ae7ZUZm9Zj4lW0x8ESOBaJ3GEVN5lxQiU13mBUjQouedobHYDG0
 ACuLyfyWL/KnIBUWDvrdH0VvWrNsfSAVg/dbRgIW43wegSH4LB3v0WCCi
 1n4fCLLZCbK+wj3Hp3Aq3RUYoouyq/o5etBRKhqvSC7RdWD0wXrzvK6bN
 oEaOXRiRyi4AajHuoDz1mjvn/vdHjuulElPCTQNV4v191vRPG+XbYFy7a
 M0rHDiFPjgCo38sKRqit/Qy7HX1isCg/AlqQBUrFiw6V5ubWUNWjmw+S8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="425367536"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="425367536"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 04:05:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="747943852"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="747943852"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 04:05:14 -0800
Date: Thu, 7 Dec 2023 14:05:18 +0200
From: Imre Deak <imre.deak@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] =?iso-8859-1?B?w6IgRmku?=
 =?iso-8859-1?Q?CI=2EBAT=3A_failure_for_drm=2Fi915=2Fdisplay?=
 =?iso-8859-1?Q?=3A?= Check GGTT to determine phys_base (rev2)
Message-ID: <ZXG03dHewb1ypWlo@ideak-desk.fi.intel.com>
References: <20231206184736.3769657-1-pazz@chromium.org>
 <170190828076.28719.7247703341018232460@emeril.freedesktop.org>
 <a164e21e-1ccc-4279-b587-9707703201ce@intel.com>
 <f8d9ba8a-ecb1-4852-a935-dbede90b8d9f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f8d9ba8a-ecb1-4852-a935-dbede90b8d9f@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Paz Zcharya <pazz@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 07, 2023 at 12:26:25PM +0100, Andrzej Hajda wrote:
> 
> 
> On 07.12.2023 11:10, Andrzej Hajda wrote:
> > On 07.12.2023 01:18, Patchwork wrote:
> > > *Patch Details*
> > > *Series:*    drm/i915/display: Check GGTT to determine phys_base (rev2)
> > > *URL:*    https://patchwork.freedesktop.org/series/127130/
> > > <https://patchwork.freedesktop.org/series/127130/>
> > > *State:*    failure
> > > *Details:*
> > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/index.html
> > > <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/index.html>
> > > 
> > > 
> > >   CI Bug Log - changes from CI_DRM_13990 -> Patchwork_127130v2
> > > 
> > > 
> > >     Summary
> > > 
> > > *FAILURE*
> > > 
> > > Serious unknown changes coming with Patchwork_127130v2 absolutely
> > > need to be
> > > verified manually.
> > > 
> > > If you think the reported changes have nothing to do with the changes
> > > introduced in Patchwork_127130v2, please notify your bug team
> > > (I915-ci-infra@lists.freedesktop.org) to allow them
> > > to document this new failure mode, which will reduce false positives
> > > in CI.
> > > 
> > > External URL:
> > > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/index.html
> > > 
> > > 
> > >     Participating hosts (37 -> 34)
> > > 
> > > Missing (3): fi-pnv-d510 fi-snb-2520m bat-dg1-5
> > > 
> > > 
> > >     Possible new issues
> > > 
> > > Here are the unknown changes that may have been introduced in
> > > Patchwork_127130v2:
> > > 
> > > 
> > >       IGT changes
> > > 
> > > 
> > >         Possible regressions
> > > 
> > >   * igt@i915_module_load@load:
> > >       o bat-mtlp-8: PASS
> > > <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-mtlp-8/igt@i915_module_load@load.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-mtlp-8/igt@i915_module_load@load.html>
> > 
> > 
> > It seems related. I think the patch is correct but it just unveils other
> > display take-over issues.
> > Ie with this patch initial_plane_vma returns valid buffer, but
> > subsequent display code fails miserably with kernel panic.
> > 
> > So until this is not solved, we shouldn't merge the patch, IMO.
> > 
> > CC: i915 maintainers and display developers
> 
> 
> After taking a look on panic log [1], I have found:
> [drm:i915_init_ggtt [i915]] Failed to reserve top of GGTT for GuC
> 
> I don't know why it is only debug level? It seems serious failure, as a
> result i915_init_ggtt fails and probe fails.
> 
> The cause is that initial framebuffer is located at the end of GGTT and it
> overlaps with reserved area (see ggtt_reserve_guc_top).
> 
> I am not sure how it can be properly fixed, I guess dirty fix could be
> just relocation of vma (hopefully into free area), sth like:
> new_gte = gsm + (ggtt->vm.total - GUC_TOP_RESERVE_SIZE - size) /
> I915_GTT_PAGE_SIZE;
> memmove(new_gte, gte, size / I915_GTT_PAGE_SIZE);
> 
> but I have no idea of possible side effects :)
> 
> [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-mtlp-8/pstore0-2849851684_Panic_1.txt

fwiw, the following hack should fix the error path:
@@ -822,6 +823,8 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
        i915_gem_driver_release(i915);
 out_cleanup_modeset2:
        /* FIXME clean up the error path */
+       if (HAS_DISPLAY(i915))
+               drm_atomic_helper_shutdown(&i915->drm);
        intel_display_driver_remove(i915);
        intel_irq_uninstall(i915);
        intel_display_driver_remove_noirq(i915);

> Regards
> Andrzej
> 
> 
> > 
> > Regards
> > Andrzej
> > 
> > > 
> > > 
> > >     Known issues
> > > 
> > > Here are the changes found in Patchwork_127130v2 that come from
> > > known issues:
> > > 
> > > 
> > >       IGT changes
> > > 
> > > 
> > >         Issues hit
> > > 
> > >   * igt@kms_pm_backlight@basic-brightness@edp-1:
> > >       o bat-rplp-1: NOTRUN -> ABORT
> > > <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html> (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
> > > 
> > > 
> > >         Possible fixes
> > > 
> > >   *
> > > 
> > >     igt@gem_exec_suspend@basic-s0@lmem0:
> > > 
> > >       o bat-dg2-9: INCOMPLETE
> > > <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html> (i915#9275 <https://gitlab.freedesktop.org/drm/intel/issues/9275>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html>
> > >   *
> > > 
> > >     igt@kms_flip@basic-flip-vs-dpms@d-dp6:
> > > 
> > >       o bat-adlp-11: DMESG-FAIL
> > > <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html> (i915#6868 <https://gitlab.freedesktop.org/drm/intel/issues/6868>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp6.html>
> > >   *
> > > 
> > >     igt@kms_flip@basic-flip-vs-modeset@d-dp6:
> > > 
> > >       o bat-adlp-11: DMESG-WARN
> > > <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset@d-dp6.html>
> > >   *
> > > 
> > >     igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
> > > 
> > >       o bat-rplp-1: ABORT
> > > <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13990/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html> (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127130v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html>
> > > 
> > > 
> > >     Build changes
> > > 
> > >   * Linux: CI_DRM_13990 -> Patchwork_127130v2
> > > 
> > > CI-20190529: 20190529
> > > CI_DRM_13990: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @
> > > git://anongit.freedesktop.org/gfx-ci/linux
> > > IGT_7626: 154b7288552cd7ed3033f8ef396e88d0bd1b7646 @
> > > https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> > > Patchwork_127130v2: 85d33d0ad82a5c1a71492f14a5ceb67ada6a22d8 @
> > > git://anongit.freedesktop.org/gfx-ci/linux
> > > 
> > > 
> > >       Linux commits
> > > 
> > > 43f210e851cd drm/i915/display: Check GGTT to determine phys_base
> > > 
> > 
