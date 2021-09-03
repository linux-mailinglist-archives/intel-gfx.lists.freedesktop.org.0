Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C39133FFF36
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 13:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7025F6E86E;
	Fri,  3 Sep 2021 11:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C789D6E86E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 11:29:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="280410812"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="280410812"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 04:29:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="500326145"
Received: from ojcasey-mobl.ger.corp.intel.com (HELO [10.213.195.251])
 ([10.213.195.251])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 04:29:53 -0700
To: jim.cromie@gmail.com,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20210831202133.2165222-1-jim.cromie@gmail.com>
 <163045309469.10657.6449873390681387525@emeril.freedesktop.org>
 <CAJfuBxyNmoFJJ5Auh4DW0cQy13o17i8c=uDYcmfJYF+jVsrhqA@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Cc: Jigar Bhatt <jigar.bhatt@intel.com>,
 Anshuman Gupta <anshuman.gupta@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Message-ID: <1f670a6b-af77-0e07-880e-57b1e28bfc7b@linux.intel.com>
Date: Fri, 3 Sep 2021 12:29:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAJfuBxyNmoFJJ5Auh4DW0cQy13o17i8c=uDYcmfJYF+jVsrhqA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdXNl?=
 =?utf-8?q?_DYNAMIC=5FDEBUG_to_implement_DRM=2Edebug_=28rev2=29?=
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


On 03/09/2021 01:31, jim.cromie@gmail.com wrote:
> 
> 
> On Tue, Aug 31, 2021 at 5:38 PM Patchwork 
> <patchwork@emeril.freedesktop.org 
> <mailto:patchwork@emeril.freedesktop.org>> wrote:
> 
>     __
>     *Patch Details*
>     *Series:*	use DYNAMIC_DEBUG to implement DRM.debug (rev2)
>     *URL:*	https://patchwork.freedesktop.org/series/93914/
>     <https://patchwork.freedesktop.org/series/93914/>
>     *State:*	failure
>     *Details:*
>     https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/index.html
>     <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/index.html>
> 
> 
>       CI Bug Log - changes from CI_DRM_10541_full -> Patchwork_20931_full
> 
> 
>         Summary
> 
>     *FAILURE*
> 
>     Serious unknown changes coming with Patchwork_20931_full absolutely
>     need to be
>     verified manually.
> 
>     If you think the reported changes have nothing to do with the changes
>     introduced in Patchwork_20931_full, please notify your bug team to
>     allow them
>     to document this new failure mode, which will reduce false positives
>     in CI.
> 
> 
> hi Team !
> 
> I think I need a bit of orientation.
> 
> 
>         Possible new issues
> 
>     Here are the unknown changes that may have been introduced in
>     Patchwork_20931_full:
> 
> 
>           IGT changes
> 
> 
>             Possible regressions
> 
>       * igt@gem_exec_schedule@u-submit-golden-slice@vcs0:
>           o shard-skl: NOTRUN -> INCOMPLETE
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl10/igt@gem_exec_schedule@u-submit-golden-slice@vcs0.html>
> 
> 
>             Warnings
> 
>       * igt@i915_pm_dc@dc9-dpms:
>           o shard-skl: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl6/igt@i915_pm_dc@dc9-dpms.html>
>             ([fdo#109271]) -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl8/igt@i915_pm_dc@dc9-dpms.html>
> 
> 
> 
> Im assuming the FAIL is the sticking point,

Both INCOMPLETE and FAIL will cause a failure to be declared, but in this case it looks to me this series is not at fault.

1)

The gem_exec_schedule failure looks like a test runner timeout issue (and apparently test does not handle well running the the fence timeout enabled).

@Petri - does the below look like IGT runner running our of time budget for the test run? Would it log

[1051.943629] [114/138] ( 11s left) gem_exec_schedule (u-submit-golden-slice)
Starting subtest: u-submit-golden-slice
Starting dynamic subtest: rcs0
Dynamic subtest rcs0: SUCCESS (80.175s)
Starting dynamic subtest: bcs0
Dynamic subtest bcs0: SUCCESS (80.195s)
Starting dynamic subtest: vcs0
Dynamic subtest vcs0: SUCCESS (80.243s)
Starting dynamic subtest: vecs0

Interesting part is that according to dmesg it never got to the vecs0 dynamic subtest - any idea what happened there?

2)

I915_pm_dc I'd say you just gotten unlucky that test went from always skipping on SKL to trying to run it and then it failed. But I don't know enough about the test to tell you why. Adding Jigar and Anshuman as test author and reviewer who might be able to shed some light here.

Regards,

Tvrtko

> I found code that seemed to be relevant
> 
> [jimc@frodo igt-ci-tags.git]$ git remote -v
> origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git 
> <https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git> (fetch)
> origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git 
> <https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git> (push)
> 
> I built it, got an error, threw that to google,
> found a patch on i-g-t from
> commit 1ff3e5ae99ceb66d2926d58635d0379ce971065a (HEAD -> master)
> Author: Lyude Paul <lyude@redhat.com <mailto:lyude@redhat.com>>
> Date:   Mon Apr 15 14:57:23 2019 -0400
> 
> and applied it
> it fixed the one problem
> 
> then I looked at previous head
> 
> commit f052e49a43cc9704ea5f240df15dd9d3dfed68ab (origin/master, origin/HEAD)
> Author: Simon Ser <simon.ser@intel.com <mailto:simon.ser@intel.com>>
> Date:   Wed Apr 24 19:15:26 2019 +0300
> 
> It sure seems that tree is stale.
> 
> I dont need to fix this anyway, a later rev got past this one,
> but it would be nice to know whats current
> 
> 
> 
>             Suppressed
> 
>     The following results come from untrusted machines, tests, or statuses.
>     They do not affect the overall result.
> 
>       *
> 
>         igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>           o {shard-rkl}: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>             +5 similar issues
>       *
> 
>         igt@kms_vblank@pipe-c-ts-continuation-idle:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_vblank@pipe-c-ts-continuation-idle.html>
>             ([i915#1845]) -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-idle.html>
>             +3 similar issues
> 
> 
>         Known issues
> 
>     Here are the changes found in Patchwork_20931_full that come from
>     known issues:
> 
> 
>           IGT changes
> 
> 
>             Issues hit
> 
>       *
> 
>         igt@gem_create@create-massive:
> 
>           o shard-snb: NOTRUN -> DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@gem_create@create-massive.html>
>             ([i915#3002]) +1 similar issue
>       *
> 
>         igt@gem_ctx_persistence@smoketest:
> 
>           o shard-snb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb6/igt@gem_ctx_persistence@smoketest.html>
>             ([fdo#109271] / [i915#1099]) +4 similar issues
>       *
> 
>         igt@gem_exec_fair@basic-deadline:
> 
>           o shard-kbl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl1/igt@gem_exec_fair@basic-deadline.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl4/igt@gem_exec_fair@basic-deadline.html>
>             ([i915#2846])
>       *
> 
>         igt@gem_exec_fair@basic-pace@rcs0:
> 
>           o shard-kbl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html>
>             -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html>
>             ([fdo#109271]) +1 similar issue
>       *
> 
>         igt@gem_exec_fair@basic-pace@vcs0:
> 
>           o shard-tglb: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html>
>             ([i915#2842])
>       *
> 
>         igt@gem_exec_fair@basic-throttle@rcs0:
> 
>           o shard-iclb: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>             ([i915#2842])
>       *
> 
>         igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>           o
> 
>             shard-snb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>             ([fdo#109271]) +383 similar issues
> 
>           o
> 
>             shard-tglb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>             ([fdo#109313])
> 
>       *
> 
>         igt@gem_pread@exhaustion:
> 
>           o
> 
>             shard-apl: NOTRUN -> WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@gem_pread@exhaustion.html>
>             ([i915#2658])
> 
>           o
> 
>             shard-snb: NOTRUN -> WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb5/igt@gem_pread@exhaustion.html>
>             ([i915#2658])
> 
>       *
> 
>         igt@gem_softpin@noreloc-s3:
> 
>           o shard-kbl: NOTRUN -> DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@gem_softpin@noreloc-s3.html>
>             ([i915#180])
>       *
> 
>         igt@gem_userptr_blits@vma-merge:
> 
>           o
> 
>             shard-snb: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb5/igt@gem_userptr_blits@vma-merge.html>
>             ([i915#2724])
> 
>           o
> 
>             shard-apl: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@gem_userptr_blits@vma-merge.html>
>             ([i915#3318])
> 
>       *
> 
>         igt@gem_workarounds@suspend-resume:
> 
>           o shard-skl: NOTRUN -> INCOMPLETE
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@gem_workarounds@suspend-resume.html>
>             ([i915#198])
>       *
> 
>         igt@gen9_exec_parse@bb-start-far:
> 
>           o
> 
>             shard-iclb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb5/igt@gen9_exec_parse@bb-start-far.html>
>             ([i915#2856])
> 
>           o
> 
>             shard-tglb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@gen9_exec_parse@bb-start-far.html>
>             ([i915#2856])
> 
>       *
> 
>         igt@i915_selftest@live@hangcheck:
> 
>           o shard-snb: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>             -> INCOMPLETE
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>             ([i915#3921])
>       *
> 
>         igt@i915_suspend@sysfs-reader:
> 
>           o shard-apl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-apl7/igt@i915_suspend@sysfs-reader.html>
>             -> DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl7/igt@i915_suspend@sysfs-reader.html>
>             ([i915#180]) +3 similar issues
>       *
> 
>         igt@kms_big_fb@x-tiled-32bpp-rotate-180:
> 
>           o shard-glk: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>             -> DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>             ([i915#118] / [i915#95])
>       *
> 
>         igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>           o shard-tglb: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>             ([i915#3722]) +1 similar issue
>       *
> 
>         igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>           o shard-skl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>             ([fdo#109271] / [i915#3777]) +1 similar issue
>       *
> 
>         igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
> 
>           o shard-skl: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>             ([i915#3763])
>       *
> 
>         igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>           o shard-glk: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>             ([fdo#109271] / [i915#3777])
>       *
> 
>         igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
> 
>           o shard-apl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>             ([fdo#109271] / [i915#3886]) +5 similar issues
>       *
> 
>         igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>           o shard-tglb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>             ([i915#3689] / [i915#3886])
>       *
> 
>         igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>           o shard-skl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>             ([fdo#109271] / [i915#3886]) +5 similar issues
>       *
> 
>         igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
> 
>           o shard-skl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>             ([fdo#109271]) +97 similar issues
>       *
> 
>         igt@kms_chamelium@hdmi-aspect-ratio:
> 
>           o shard-skl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_chamelium@hdmi-aspect-ratio.html>
>             ([fdo#109271] / [fdo#111827]) +8 similar issues
>       *
> 
>         igt@kms_chamelium@hdmi-hpd-after-suspend:
> 
>           o shard-glk: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_chamelium@hdmi-hpd-after-suspend.html>
>             ([fdo#109271] / [fdo#111827]) +2 similar issues
>       *
> 
>         igt@kms_chamelium@vga-hpd:
> 
>           o shard-apl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl2/igt@kms_chamelium@vga-hpd.html>
>             ([fdo#109271] / [fdo#111827]) +11 similar issues
>       *
> 
>         igt@kms_color_chamelium@pipe-d-ctm-0-5:
> 
>           o shard-snb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html>
>             ([fdo#109271] / [fdo#111827]) +16 similar issues
>       *
> 
>         igt@kms_content_protection@srm:
> 
>           o shard-apl: NOTRUN -> TIMEOUT
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl6/igt@kms_content_protection@srm.html>
>             ([i915#1319])
>       *
> 
>         igt@kms_content_protection@uevent:
> 
>           o shard-apl: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_content_protection@uevent.html>
>             ([i915#2105])
>       *
> 
>         igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>           o shard-apl: NOTRUN -> DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>             ([i915#180]) +2 similar issues
>       *
> 
>         igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
> 
>           o shard-glk: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html>
>             ([fdo#109271]) +11 similar issues
>       *
> 
>         igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> 
>           o shard-skl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>             ([i915#2346])
>       *
> 
>         igt@kms_fbcon_fbt@fbc-suspend:
> 
>           o shard-apl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>             -> INCOMPLETE
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>             ([i915#180])
>       *
> 
>         igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
> 
>           o shard-glk: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>             ([i915#79])
>       *
> 
>         igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>           o shard-kbl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>             -> DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>             ([i915#180]) +9 similar issues
>       *
> 
>         igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
> 
>           o shard-skl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>             ([i915#2122])
>       *
> 
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
> 
>           o shard-tglb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html>
>             ([fdo#111825]) +1 similar issue
>       *
> 
>         igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
> 
>           o shard-kbl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html>
>             ([fdo#109271]) +1 similar issue
>       *
> 
>         igt@kms_hdr@bpc-switch-dpms:
> 
>           o shard-skl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html>
>             ([i915#1188]) +1 similar issue
>       *
> 
>         igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
> 
>           o shard-skl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>             ([fdo#109271] / [i915#533])
>       *
> 
>         igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
> 
>           o shard-apl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html>
>             ([fdo#109271] / [i915#533]) +1 similar issue
>       *
> 
>         igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
> 
>           o shard-skl: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>             ([fdo#108145] / [i915#265]) +1 similar issue
>       *
> 
>         igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
> 
>           o shard-skl: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>             ([i915#265])
>       *
> 
>         igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
> 
>           o shard-glk: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>             ([fdo#108145] / [i915#265])
>       *
> 
>         igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>           o shard-apl: NOTRUN -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>             ([i915#265])
>       *
> 
>         igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
> 
>           o shard-skl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>             ([fdo#108145] / [i915#265]) +1 similar issue
>       *
> 
>         igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
> 
>           o shard-skl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html>
>             ([fdo#109271] / [i915#658]) +3 similar issues
>       *
> 
>         igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
> 
>           o shard-apl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html>
>             ([fdo#109271] / [i915#658]) +1 similar issue
>       *
> 
>         igt@kms_psr@psr2_sprite_plane_move:
> 
>           o shard-iclb: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html>
>             -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html>
>             ([fdo#109441]) +1 similar issue
>       *
> 
>         igt@kms_vblank@pipe-d-wait-forked:
> 
>           o shard-iclb: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb5/igt@kms_vblank@pipe-d-wait-forked.html>
>             ([fdo#109278])
>       *
> 
>         igt@kms_writeback@writeback-invalid-parameters:
> 
>           o shard-apl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html>
>             ([fdo#109271] / [i915#2437])
>       *
> 
>         igt@perf@polling-small-buf:
> 
>           o shard-skl: PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl10/igt@perf@polling-small-buf.html>
>             -> FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl3/igt@perf@polling-small-buf.html>
>             ([i915#1722])
>       *
> 
>         igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
> 
>           o shard-apl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html>
>             ([fdo#109271]) +164 similar issues
>       *
> 
>         igt@runner@aborted:
> 
>           o shard-snb: NOTRUN -> (FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@runner@aborted.html>,
>             FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb6/igt@runner@aborted.html>)
>             ([i915#3002])
>       *
> 
>         igt@sysfs_clients@fair-1:
> 
>           o shard-apl: NOTRUN -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@sysfs_clients@fair-1.html>
>             ([fdo#109271] / [i915#2994]) +1 similar issue
> 
> 
>             Possible fixes
> 
>       *
> 
>         igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>           o shard-kbl: DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>             ([i915#180]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>       *
> 
>         igt@gem_ctx_persistence@legacy-engines-hang@render:
> 
>           o {shard-rkl}: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>             ([i915#2410]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>       *
> 
>         igt@gem_eio@reset-stress:
> 
>           o {shard-rkl}: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@gem_eio@reset-stress.html>
>             ([i915#3115]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_eio@reset-stress.html>
>       *
> 
>         igt@gem_exec_fair@basic-pace@vcs1:
> 
>           o shard-tglb: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>             ([i915#2842]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html>
>       *
> 
>         igt@gem_exec_fair@basic-pace@vecs0:
> 
>           o shard-glk: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html>
>             ([i915#2842]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html>
>             +2 similar issues
>       *
> 
>         igt@gem_exec_fair@basic-throttle@rcs0:
> 
>           o {shard-rkl}: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html>
>             ([i915#2842]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html>
>             +1 similar issue
>       *
> 
>         igt@gen9_exec_parse@allowed-all:
> 
>           o shard-glk: DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk9/igt@gen9_exec_parse@allowed-all.html>
>             ([i915#1436] / [i915#716]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@gen9_exec_parse@allowed-all.html>
>       *
> 
>         igt@i915_pm_dc@dc6-dpms:
> 
>           o shard-skl: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl4/igt@i915_pm_dc@dc6-dpms.html>
>             ([i915#454]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl6/igt@i915_pm_dc@dc6-dpms.html>
>             +1 similar issue
>       *
> 
>         igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html>
>             ([i915#3721]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html>
>             +1 similar issue
>       *
> 
>         igt@kms_big_fb@y-tiled-32bpp-rotate-270:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html>
>             ([fdo#111614]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html>
>       *
> 
>         igt@kms_color@pipe-a-ctm-0-5:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html>
>             ([i915#1149] / [i915#1849]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html>
>             +2 similar issues
>       *
> 
>         igt@kms_color@pipe-a-ctm-0-75:
> 
>           o shard-skl: DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html>
>             ([i915#1982]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html>
>       *
> 
>         igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html>
>             ([fdo#112022]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html>
>             +1 similar issue
>       *
> 
>         igt@kms_cursor_crc@pipe-a-cursor-suspend:
> 
>           o shard-skl: INCOMPLETE
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>             ([i915#2828] / [i915#300]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       *
> 
>         igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>           o shard-skl: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>             ([i915#2346]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>       *
> 
>         igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html>
>             ([fdo#111825]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html>
>       *
> 
>         igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>             ([fdo#111314]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>             +3 similar issues
>       *
> 
>         igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
> 
>           o shard-skl: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html>
>             ([i915#2122]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html>
>       *
> 
>         igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html>
>             ([i915#1849]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html>
>             +8 similar issues
>       *
> 
>         igt@kms_plane_cursor@pipe-a-primary-size-128:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_plane_cursor@pipe-a-primary-size-128.html>
>             ([i915#1845]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_plane_cursor@pipe-a-primary-size-128.html>
>             +6 similar issues
>       *
> 
>         igt@kms_plane_lowres@pipe-b-tiling-yf:
> 
>           o shard-glk: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk8/igt@kms_plane_lowres@pipe-b-tiling-yf.html>
>             ([i915#1888] / [i915#899]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk6/igt@kms_plane_lowres@pipe-b-tiling-yf.html>
>       *
> 
>         igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>             ([i915#1849] / [i915#3558]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>             +1 similar issue
>       *
> 
>         igt@kms_psr2_su@frontbuffer:
> 
>           o shard-iclb: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb6/igt@kms_psr2_su@frontbuffer.html>
>             ([fdo#109642] / [fdo#111068] / [i915#658]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb2/igt@kms_psr2_su@frontbuffer.html>
>       *
> 
>         igt@kms_psr@cursor_plane_onoff:
> 
>           o {shard-rkl}: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_psr@cursor_plane_onoff.html>
>             ([i915#1072]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html>
>       *
> 
>         igt@kms_psr@psr2_no_drrs:
> 
>           o shard-iclb: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb6/igt@kms_psr@psr2_no_drrs.html>
>             ([fdo#109441]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb2/igt@kms_psr@psr2_no_drrs.html>
>       *
> 
>         igt@kms_vblank@pipe-a-ts-continuation-suspend:
> 
>           o shard-kbl: DMESG-WARN
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>             ([i915#180] / [i915#295]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       *
> 
>         igt@perf@blocking-parameterized:
> 
>           o {shard-rkl}: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-2/igt@perf@blocking-parameterized.html>
>             ([i915#3793]) -> PASS
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@perf@blocking-parameterized.html>
> 
> 
>             Warnings
> 
>       *
> 
>         igt@gem_exec_fair@basic-pace@vecs0:
> 
>           o shard-kbl: FAIL
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html>
>             ([i915#2842]) -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>             ([fdo#109271]) +1 similar issue
>       *
> 
>         igt@i915_pm_dc@dc3co-vpb-simulation:
> 
>           o shard-iclb: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>             ([i915#588]) -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>             ([i915#658])
>       *
> 
>         igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
> 
>           o shard-tglb: SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html>
>             ([fdo#111644] / [i915#1397] / [i915#2411]) -> SKIP
>             <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@i915_pm_rpm@dpms-mode-unset-n>
>             ([fdo#111644] / [i915#1397]) +4 similar issues
> 
