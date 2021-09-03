Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4843FF863
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 02:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330D56E830;
	Fri,  3 Sep 2021 00:32:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com
 [IPv6:2607:f8b0:4864:20::e32])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F4686E830
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 00:31:59 +0000 (UTC)
Received: by mail-vs1-xe32.google.com with SMTP id m190so3080406vsm.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Sep 2021 17:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=NX5XoH1yPzIUbQZVSSwH5htOhqMVMDxDdJyt2qgTNHs=;
 b=CmPTGMLMS4f63xC6e/BptM5WIOTiTr0ZwiHoZbP+Og0+MkPLcGu3tHCTuDgfprGuAc
 x1rVLVSaPHUBwZkQO6LwbgXuHMltAecWtIlImQE8gYWU7eolDD8j4D5N1ndXUantW69r
 SRBUSlfXkHbG718YJAY/BptZTzGvuWtn3JLeMR6kL571MTSlFCo8VWiA6SovyA1XHzgU
 ZJ7KL2kxJqRN6gexWNpNs9srS6WoojmlwZyJLAHjeL8dfe9XtGGcQEeBZ1PczRqTgrVw
 3Ovhqq4aOpMQG06cze9Z5zITfWaFHBqYC5+A4XLl4qknQvR8WPTbBUwDBybS3uh6RATn
 8BAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=NX5XoH1yPzIUbQZVSSwH5htOhqMVMDxDdJyt2qgTNHs=;
 b=mkk/HM5s9ud7At+EP+QHejHGxjIhrman4Kt6G0zLW1BC0YCWzRCWGoZKqdBAyUw/Pt
 ab6uEV2ve0xV5oTvkXjtVJanWkX0k29VPwlB6XGte+yFJ8qsJwpw05+XwgIRKMY4yce2
 huONMm0GGmtzUZXl0mm+vPzsup7KkkAxIHFrlgP7Ex7Bbdft7KqJv5BqgX/4oFKupV/r
 MYLXloOyp0uGNdZvTX/OM/oI2oH1RWoYUdbO62N1xxa8UWMU+dYiiAC6kSGrtghUh6UY
 7TWXGZ1fU6wNRXihCNMI32pNsImbfgIng1UtgBB4/vKpvl5LnJk3uQCOa0oNOYyAQcjF
 3GNg==
X-Gm-Message-State: AOAM532Mn1aPJ5D5hVYna4rdDg+ah8fzNqB9wTS66JQdLMYc0/5Sg94P
 hBGFnXL8wU34AJp9GpETpX/7PMLSCSt/lO8RUPjbxM/IkmA=
X-Google-Smtp-Source: ABdhPJz/XUYbxboeY3KzAvxmEBzNerZZMJVmN0jptn0URVub8Y/mNdgPcXlZPqWLv4oT5YnAcYu8msQ+YasXOifPVjo=
X-Received: by 2002:a67:2e46:: with SMTP id u67mr579187vsu.56.1630629118059;
 Thu, 02 Sep 2021 17:31:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210831202133.2165222-1-jim.cromie@gmail.com>
 <163045309469.10657.6449873390681387525@emeril.freedesktop.org>
In-Reply-To: <163045309469.10657.6449873390681387525@emeril.freedesktop.org>
From: jim.cromie@gmail.com
Date: Thu, 2 Sep 2021 18:31:32 -0600
Message-ID: <CAJfuBxyNmoFJJ5Auh4DW0cQy13o17i8c=uDYcmfJYF+jVsrhqA@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/alternative; boundary="00000000000057ac2005cb0c6d50"
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

--00000000000057ac2005cb0c6d50
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 31, 2021 at 5:38 PM Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* use DYNAMIC_DEBUG to implement DRM.debug (rev2)
> *URL:* https://patchwork.freedesktop.org/series/93914/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/index.html CI
> Bug Log - changes from CI_DRM_10541_full -> Patchwork_20931_full Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_20931_full absolutely need
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20931_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
>

hi Team !

I think I need a bit of orientation.


Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_20931_full:
> IGT changes Possible regressions
>
>    - igt@gem_exec_schedule@u-submit-golden-slice@vcs0:
>       - shard-skl: NOTRUN -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl10/igt@gem_exec_schedule@u-submit-golden-slice@vcs0.html>
>
> Warnings
>
>    - igt@i915_pm_dc@dc9-dpms:
>       - shard-skl: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl6/igt@i915_pm_dc@dc9-dpms.html>
>       ([fdo#109271]) -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl8/igt@i915_pm_dc@dc9-dpms.html>
>
>
Im assuming the FAIL is the sticking point,
I found code that seemed to be relevant

[jimc@frodo igt-ci-tags.git]$ git remote -v
origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git (fetch)
origin https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git (push)

I built it, got an error, threw that to google,
found a patch on i-g-t from
commit 1ff3e5ae99ceb66d2926d58635d0379ce971065a (HEAD -> master)
Author: Lyude Paul <lyude@redhat.com>
Date:   Mon Apr 15 14:57:23 2019 -0400

and applied it
it fixed the one problem

then I looked at previous head

commit f052e49a43cc9704ea5f240df15dd9d3dfed68ab (origin/master, origin/HEAD)
Author: Simon Ser <simon.ser@intel.com>
Date:   Wed Apr 24 19:15:26 2019 +0300

It sure seems that tree is stale.

I dont need to fix this anyway, a later rev got past this one,
but it would be nice to know whats current



Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>    - {shard-rkl}: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>       +5 similar issues
>    -
>
>    igt@kms_vblank@pipe-c-ts-continuation-idle:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_vblank@pipe-c-ts-continuation-idle.html>
>       ([i915#1845]) -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_vblank@pipe-c-ts-continuation-idle.html>
>       +3 similar issues
>
> Known issues
>
> Here are the changes found in Patchwork_20931_full that come from known
> issues:
> IGT changes Issues hit
>
>    -
>
>    igt@gem_create@create-massive:
>    - shard-snb: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@gem_create@create-massive.html>
>       ([i915#3002]) +1 similar issue
>    -
>
>    igt@gem_ctx_persistence@smoketest:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb6/igt@gem_ctx_persistence@smoketest.html>
>       ([fdo#109271] / [i915#1099]) +4 similar issues
>    -
>
>    igt@gem_exec_fair@basic-deadline:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl1/igt@gem_exec_fair@basic-deadline.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl4/igt@gem_exec_fair@basic-deadline.html>
>       ([i915#2846])
>    -
>
>    igt@gem_exec_fair@basic-pace@rcs0:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html>
>       ([fdo#109271]) +1 similar issue
>    -
>
>    igt@gem_exec_fair@basic-pace@vcs0:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>    -
>
>       shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>       ([fdo#109271]) +383 similar issues
>       -
>
>       shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>       ([fdo#109313])
>       -
>
>    igt@gem_pread@exhaustion:
>    -
>
>       shard-apl: NOTRUN -> WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@gem_pread@exhaustion.html>
>       ([i915#2658])
>       -
>
>       shard-snb: NOTRUN -> WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb5/igt@gem_pread@exhaustion.html>
>       ([i915#2658])
>       -
>
>    igt@gem_softpin@noreloc-s3:
>    - shard-kbl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@gem_softpin@noreloc-s3.html>
>       ([i915#180])
>    -
>
>    igt@gem_userptr_blits@vma-merge:
>    -
>
>       shard-snb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb5/igt@gem_userptr_blits@vma-merge.html>
>       ([i915#2724])
>       -
>
>       shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@gem_userptr_blits@vma-merge.html>
>       ([i915#3318])
>       -
>
>    igt@gem_workarounds@suspend-resume:
>    - shard-skl: NOTRUN -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@gem_workarounds@suspend-resume.html>
>       ([i915#198])
>    -
>
>    igt@gen9_exec_parse@bb-start-far:
>    -
>
>       shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb5/igt@gen9_exec_parse@bb-start-far.html>
>       ([i915#2856])
>       -
>
>       shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@gen9_exec_parse@bb-start-far.html>
>       ([i915#2856])
>       -
>
>    igt@i915_selftest@live@hangcheck:
>    - shard-snb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@i915_selftest@live@hangcheck.html>
>       ([i915#3921])
>    -
>
>    igt@i915_suspend@sysfs-reader:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-apl7/igt@i915_suspend@sysfs-reader.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl7/igt@i915_suspend@sysfs-reader.html>
>       ([i915#180]) +3 similar issues
>    -
>
>    igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>       ([i915#118] / [i915#95])
>    -
>
>    igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>       ([i915#3722]) +1 similar issue
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>       ([fdo#109271] / [i915#3777]) +1 similar issue
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>    - shard-skl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>       ([i915#3763])
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>    - shard-glk: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>       ([fdo#109271] / [i915#3777])
>    -
>
>    igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html>
>       ([fdo#109271] / [i915#3886]) +5 similar issues
>    -
>
>    igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html>
>       ([i915#3689] / [i915#3886])
>    -
>
>    igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271] / [i915#3886]) +5 similar issues
>    -
>
>    igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271]) +97 similar issues
>    -
>
>    igt@kms_chamelium@hdmi-aspect-ratio:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_chamelium@hdmi-aspect-ratio.html>
>       ([fdo#109271] / [fdo#111827]) +8 similar issues
>    -
>
>    igt@kms_chamelium@hdmi-hpd-after-suspend:
>    - shard-glk: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_chamelium@hdmi-hpd-after-suspend.html>
>       ([fdo#109271] / [fdo#111827]) +2 similar issues
>    -
>
>    igt@kms_chamelium@vga-hpd:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl2/igt@kms_chamelium@vga-hpd.html>
>       ([fdo#109271] / [fdo#111827]) +11 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-d-ctm-0-5:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html>
>       ([fdo#109271] / [fdo#111827]) +16 similar issues
>    -
>
>    igt@kms_content_protection@srm:
>    - shard-apl: NOTRUN -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl6/igt@kms_content_protection@srm.html>
>       ([i915#1319])
>    -
>
>    igt@kms_content_protection@uevent:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_content_protection@uevent.html>
>       ([i915#2105])
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-suspend:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       ([i915#180]) +2 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
>    - shard-glk: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html>
>       ([fdo#109271]) +11 similar issues
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-legacy:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html>
>       ([i915#2346])
>    -
>
>    igt@kms_fbcon_fbt@fbc-suspend:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html>
>       ([i915#180])
>    -
>
>    igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>    - shard-glk: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html>
>       ([i915#79])
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       ([i915#180]) +9 similar issues
>    -
>
>    igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html>
>       ([i915#2122])
>    -
>
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html>
>       ([fdo#111825]) +1 similar issue
>    -
>
>    igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html>
>       ([fdo#109271]) +1 similar issue
>    -
>
>    igt@kms_hdr@bpc-switch-dpms:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html>
>       ([i915#1188]) +1 similar issue
>    -
>
>    igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>       ([fdo#109271] / [i915#533])
>    -
>
>    igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html>
>       ([fdo#109271] / [i915#533]) +1 similar issue
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>    - shard-skl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>       ([fdo#108145] / [i915#265]) +1 similar issue
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>    - shard-skl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>    - shard-glk: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>       ([fdo#108145] / [i915#265]) +1 similar issue
>    -
>
>    igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html>
>       ([fdo#109271] / [i915#658]) +3 similar issues
>    -
>
>    igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html>
>       ([fdo#109271] / [i915#658]) +1 similar issue
>    -
>
>    igt@kms_psr@psr2_sprite_plane_move:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html>
>       ([fdo#109441]) +1 similar issue
>    -
>
>    igt@kms_vblank@pipe-d-wait-forked:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb5/igt@kms_vblank@pipe-d-wait-forked.html>
>       ([fdo#109278])
>    -
>
>    igt@kms_writeback@writeback-invalid-parameters:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html>
>       ([fdo#109271] / [i915#2437])
>    -
>
>    igt@perf@polling-small-buf:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl10/igt@perf@polling-small-buf.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl3/igt@perf@polling-small-buf.html>
>       ([i915#1722])
>    -
>
>    igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html>
>       ([fdo#109271]) +164 similar issues
>    -
>
>    igt@runner@aborted:
>    - shard-snb: NOTRUN -> (FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb2/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-snb6/igt@runner@aborted.html>)
>       ([i915#3002])
>    -
>
>    igt@sysfs_clients@fair-1:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-apl1/igt@sysfs_clients@fair-1.html>
>       ([fdo#109271] / [i915#2994]) +1 similar issue
>
> Possible fixes
>
>    -
>
>    igt@gem_ctx_isolation@preservation-s3@vcs0:
>    - shard-kbl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>    -
>
>    igt@gem_ctx_persistence@legacy-engines-hang@render:
>    - {shard-rkl}: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>       ([i915#2410]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>    -
>
>    igt@gem_eio@reset-stress:
>    - {shard-rkl}: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@gem_eio@reset-stress.html>
>       ([i915#3115]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_eio@reset-stress.html>
>    -
>
>    igt@gem_exec_fair@basic-pace@vcs1:
>    - shard-tglb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs1.html>
>    -
>
>    igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-glk: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html>
>       +2 similar issues
>    -
>
>    igt@gem_exec_fair@basic-throttle@rcs0:
>    - {shard-rkl}: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       +1 similar issue
>    -
>
>    igt@gen9_exec_parse@allowed-all:
>    - shard-glk: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk9/igt@gen9_exec_parse@allowed-all.html>
>       ([i915#1436] / [i915#716]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@gen9_exec_parse@allowed-all.html>
>    -
>
>    igt@i915_pm_dc@dc6-dpms:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl4/igt@i915_pm_dc@dc6-dpms.html>
>       ([i915#454]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl6/igt@i915_pm_dc@dc6-dpms.html>
>       +1 similar issue
>    -
>
>    igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html>
>       ([i915#3721]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html>
>       +1 similar issue
>    -
>
>    igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html>
>       ([fdo#111614]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html>
>    -
>
>    igt@kms_color@pipe-a-ctm-0-5:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html>
>       ([i915#1149] / [i915#1849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_color@pipe-a-ctm-0-5.html>
>       +2 similar issues
>    -
>
>    igt@kms_color@pipe-a-ctm-0-75:
>    - shard-skl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html>
>       ([i915#1982]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html>
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html>
>       ([fdo#112022]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent.html>
>       +1 similar issue
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-suspend:
>    - shard-skl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       ([i915#2828] / [i915#300]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>       ([i915#2346]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>    -
>
>    igt@kms_cursor_legacy
>    @short-flip-before-cursor-atomic-transitions-varying-size:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html>
>       ([fdo#111825]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varying-size.html>
>    -
>
>    igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>       ([fdo#111314]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html>
>       +3 similar issues
>    -
>
>    igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html>
>       ([i915#2122]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html>
>    -
>
>    igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html>
>       ([i915#1849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html>
>       +8 similar issues
>    -
>
>    igt@kms_plane_cursor@pipe-a-primary-size-128:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_plane_cursor@pipe-a-primary-size-128.html>
>       ([i915#1845]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_plane_cursor@pipe-a-primary-size-128.html>
>       +6 similar issues
>    -
>
>    igt@kms_plane_lowres@pipe-b-tiling-yf:
>    - shard-glk: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-glk8/igt@kms_plane_lowres@pipe-b-tiling-yf.html>
>       ([i915#1888] / [i915#899]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk6/igt@kms_plane_lowres@pipe-b-tiling-yf.html>
>    -
>
>    igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>       ([i915#1849] / [i915#3558]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html>
>       +1 similar issue
>    -
>
>    igt@kms_psr2_su@frontbuffer:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb6/igt@kms_psr2_su@frontbuffer.html>
>       ([fdo#109642] / [fdo#111068] / [i915#658]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb2/igt@kms_psr2_su@frontbuffer.html>
>    -
>
>    igt@kms_psr@cursor_plane_onoff:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-5/igt@kms_psr@cursor_plane_onoff.html>
>       ([i915#1072]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html>
>    -
>
>    igt@kms_psr@psr2_no_drrs:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb6/igt@kms_psr@psr2_no_drrs.html>
>       ([fdo#109441]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb2/igt@kms_psr@psr2_no_drrs.html>
>    -
>
>    igt@kms_vblank@pipe-a-ts-continuation-suspend:
>    - shard-kbl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       ([i915#180] / [i915#295]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>    -
>
>    igt@perf@blocking-parameterized:
>    - {shard-rkl}: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-rkl-2/igt@perf@blocking-parameterized.html>
>       ([i915#3793]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@perf@blocking-parameterized.html>
>
> Warnings
>
>    -
>
>    igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-kbl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html>
>       ([i915#2842]) -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html>
>       ([fdo#109271]) +1 similar issue
>    -
>
>    igt@i915_pm_dc@dc3co-vpb-simulation:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>       ([i915#588]) -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simulation.html>
>       ([i915#658])
>    -
>
>    igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>    - shard-tglb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10541/shard-tglb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html>
>       ([fdo#111644] / [i915#1397] / [i915#2411]) -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@i915_pm_rpm@dpms-mode-unset-n>
>       ([fdo#111644] / [i915#1397]) +4 similar issues
>
>

--00000000000057ac2005cb0c6d50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 31, 2021 at 5:38 PM Patch=
work &lt;<a href=3D"mailto:patchwork@emeril.freedesktop.org" target=3D"_bla=
nk">patchwork@emeril.freedesktop.org</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>use DYNAMIC_DEBUG to implement DRM.de=
bug (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93914/" target=3D"_blank">https://patchwork.freedesktop.org/series/939=
14/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20931/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_10541_full -&gt; Patchwork_20931_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20931_full absolutely need=
 to be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_20931_full, please notify your bug team to allow =
them<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p></div></blockquote><div><br></div><div>hi Team !</div><div><br></div>=
<div>I think I need a=C2=A0bit of orientation.</div><div><br></div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20931_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_schedule@u-submit-golden-slice@vcs0:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl10/igt@gem_exec_schedule@u-submit-go=
lden-slice@vcs0.html" target=3D"_blank">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_dc@dc9-dpms:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl6/igt@i915_pm_dc@dc9-dpms.html" target=3D"_blank">SK=
IP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20931/shard-skl8/igt@i915_pm_dc@dc9-dpms.html" target=3D"_bl=
ank">FAIL</a></li>
</ul>
</li>
</ul>
<h4></h4></div></blockquote><div><br></div><div>Im assuming=C2=A0the FAIL i=
s the sticking point,</div><div>I found code that seemed to be relevant<br>=
</div><div><br></div><div>[jimc@frodo igt-ci-tags.git]$ git remote -v<br>or=
igin	<a href=3D"https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git">http=
s://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git</a> (fetch)<br>origin	<a =
href=3D"https://gitlab.freedesktop.org/gfx-ci/igt-ci-tags.git">https://gitl=
ab.freedesktop.org/gfx-ci/igt-ci-tags.git</a> (push)<br></div><div><br></di=
v><div>I built it, got an error, threw that to google,</div><div>found a pa=
tch on i-g-t from=C2=A0</div><div>commit 1ff3e5ae99ceb66d2926d58635d0379ce9=
71065a (HEAD -&gt; master)<br>Author: Lyude Paul &lt;<a href=3D"mailto:lyud=
e@redhat.com">lyude@redhat.com</a>&gt;<br>Date: =C2=A0 Mon Apr 15 14:57:23 =
2019 -0400<br></div><div><br></div><div>and applied it</div><div>it fixed t=
he=C2=A0one problem</div><div><br></div><div>then I looked at previous head=
</div><div><br>commit f052e49a43cc9704ea5f240df15dd9d3dfed68ab (origin/mast=
er, origin/HEAD)<br>Author: Simon Ser &lt;<a href=3D"mailto:simon.ser@intel=
.com">simon.ser@intel.com</a>&gt;<br>Date: =C2=A0 Wed Apr 24 19:15:26 2019 =
+0300<br><br></div><div>It sure seems that tree is stale.</div><div><br></d=
iv><div>I dont need to fix this anyway, a later rev got past this one,</div=
><div>but it would be nice to know whats current</div><div><br></div><div><=
br></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div><h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br>
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-c-=
constant-alpha-max.html" target=3D"_blank">SKIP</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-idle:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_vblank@pipe-c-ts-continuation-idle.html" =
target=3D"_blank">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_vblank@pipe-c-t=
s-continuation-idle.html" target=3D"_blank">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20931_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-snb2/igt@gem_create@create-massive.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#3002]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-snb6/igt@gem_ctx_persistence@smoketest.=
html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-kbl1/igt@gem_exec_fair@basic-deadline.html" target=3D"_=
blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20931/shard-kbl4/igt@gem_exec_fair@basic-deadline.html" target=3D"=
_blank">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20931/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html" target=
=3D"_blank">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20931/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html" target=
=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html" targe=
t=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20931/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html=
" target=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-snb6/igt@gem_exec_flush@basic-batch-kern=
el-default-cmd.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +383 similar=
 issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-tglb8/igt@gem_exec_flush@basic-batch-ker=
nel-default-cmd.html" target=3D"_blank">SKIP</a> ([fdo#109313])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-apl1/igt@gem_pread@exhaustion.html" targ=
et=3D"_blank">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-snb5/igt@gem_pread@exhaustion.html" targ=
et=3D"_blank">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@gem_softpin@noreloc-s3.html" t=
arget=3D"_blank">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-snb5/igt@gem_userptr_blits@vma-merge.htm=
l" target=3D"_blank">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-apl1/igt@gem_userptr_blits@vma-merge.htm=
l" target=3D"_blank">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl4/igt@gem_workarounds@suspend-resume=
.html" target=3D"_blank">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-iclb5/igt@gen9_exec_parse@bb-start-far.h=
tml" target=3D"_blank">SKIP</a> ([i915#2856])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-tglb8/igt@gen9_exec_parse@bb-start-far.h=
tml" target=3D"_blank">SKIP</a> ([i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-snb2/igt@i915_selftest@live@hangcheck.html" target=3D"_=
blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20931/shard-snb2/igt@i915_selftest@live@hangcheck.html" target=3D"=
_blank">INCOMPLETE</a> ([i915#3921])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-apl7/igt@i915_suspend@sysfs-reader.html" target=3D"_bla=
nk">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20931/shard-apl7/igt@i915_suspend@sysfs-reader.html" target=3D"_blank=
">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html" targ=
et=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20931/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.ht=
ml" target=3D"_blank">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p=
>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tglb1/igt@kms_big=
_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html" target=3D"_=
blank">FAIL</a> ([i915#3722]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i=
915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-async-flip.html" target=3D"_blank">FAIL</a> ([i915#3763])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / =
[i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i=
915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@kms_ccs@pipe-b-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([i915#3689] / [i9=
15#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl5/igt@kms_ccs@pipe-c-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271] /=
 [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_ccs@pipe-d-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109=
271]) +97 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_chamelium@hdmi-aspect-rati=
o.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_chamelium@hdmi-hpd-after-s=
uspend.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl2/igt@kms_chamelium@vga-hpd.html" ta=
rget=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl6/igt@kms_content_protection@srm.htm=
l" target=3D"_blank">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_content_protection@uevent.=
html" target=3D"_blank">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_cursor_crc@pipe-d-cursor-6=
4x21-random.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +11 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html" =
target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20931/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-l=
egacy.html" target=3D"_blank">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html" target=3D"_bla=
nk">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20931/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html" target=3D"_blank=
">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_flip@flip-vs-expired-vblan=
k@c-hdmi-a2.html" target=3D"_blank">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@kms_flip@flip-vs-suspend-inte=
rruptible@a-dp1.html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +9 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl6/igt@kms_flip@plain-flip-f=
b-recreate-interruptible@a-edp1.html" target=3D"_blank">FAIL</a> ([i915#212=
2])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-tglb8/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-onoff.html" target=3D"_blank">SKIP</a> ([fdo#11182=
5]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p=
>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-kbl3/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-pri-shrfb-draw-mmap-cpu.html" target=3D"_blank">SKIP</a> ([fdo#1=
09271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20931/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank">FA=
IL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl4/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#=
533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#=
533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#26=
5])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.ht=
ml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-skl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#6=
58]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20931/shard-iclb3/igt@kms_psr@psr2_sprite_plane_move.html" ta=
rget=3D"_blank">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-iclb5/igt@kms_vblank@pipe-d-wait-forked=
.html" target=3D"_blank">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl1/igt@kms_writeback@writeback-invali=
d-parameters.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2437])<=
/li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl10/igt@perf@polling-small-buf.html" target=3D"_blank=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20931/shard-skl3/igt@perf@polling-small-buf.html" target=3D"_blank">FAI=
L</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl2/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +164=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20931/shard-snb2/igt@runner@aborted.html" target=
=3D"_blank">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20931/shard-snb6/igt@runner@aborted.html" target=3D"_blank">FAIL</=
a>) ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20931/shard-apl1/igt@sysfs_clients@fair-1.html" tar=
get=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html" t=
arget=3D"_blank">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_ctx_isolatio=
n@preservation-s3@vcs0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@rende=
r.html" target=3D"_blank">FAIL</a> ([i915#2410]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_ctx_per=
sistence@legacy-engines-hang@render.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@gem_eio@reset-stress.html" target=3D"_blank">=
FAIL</a> ([i915#3115]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20931/shard-rkl-1/igt@gem_eio@reset-stress.html" target=3D"=
_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20931/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs=
1.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-glk6/igt@gem_exec_fair@basic-pace@vecs0.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20931/shard-glk7/igt@gem_exec_fair@basic-pace@vecs=
0.html" target=3D"_blank">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html" targe=
t=3D"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@gem_exec_fair@basic-thro=
ttle@rcs0.html" target=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-glk9/igt@gen9_exec_parse@allowed-all.html" target=3D"_b=
lank">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk7/igt@gen9_exec_par=
se@allowed-all.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl4/igt@i915_pm_dc@dc6-dpms.html" target=3D"_blank">FA=
IL</a> ([i915#454]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20931/shard-skl6/igt@i915_pm_dc@dc6-dpms.html" target=3D"_blan=
k">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-0.html" target=3D"_blank">SKIP</a> ([i915#3721]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_big_fb=
@x-tiled-max-hw-stride-32bpp-rotate-0.html" target=3D"_blank">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html" tar=
get=3D"_blank">SKIP</a> ([fdo#111614]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_big_fb@y-tiled-32=
bpp-rotate-270.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_color@pipe-a-ctm-0-5.html" target=3D"_bla=
nk">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_color@pipe-a-ct=
m-0-5.html" target=3D"_blank">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html" target=3D"_bla=
nk">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20931/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.ht=
ml" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-transparent:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-alpha-transparen=
t.html" target=3D"_blank">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_cursor=
_crc@pipe-a-cursor-alpha-transparent.html" target=3D"_blank">PASS</a> +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html" tar=
get=3D"_blank">INCOMPLETE</a> ([i915#2828] / [i915#300]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_=
cursor_crc@pipe-a-cursor-suspend.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html" target=3D"_blank">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl7/igt@kms_curs=
or_legacy@flip-vs-cursor-atomic-transitions.html" target=3D"_blank">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transitions-varyin=
g-size:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_cursor_legacy@short-flip-before-cursor-at=
omic-transitions-varying-size.html" target=3D"_blank">SKIP</a> ([fdo#111825=
]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2093=
1/shard-rkl-6/igt@kms_cursor_legacy@short-flip-before-cursor-atomic-transit=
ions-varying-size.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.=
html" target=3D"_blank">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_draw_crc=
@draw-method-xrgb8888-blt-xtiled.html" target=3D"_blank">PASS</a> +3 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l" target=3D"_blank">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-skl9/igt@kms_flip@flip-vs-=
absolute-wf_vblank@a-edp1.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-=
indfb-draw-mmap-wc.html" target=3D"_blank">SKIP</a> ([i915#1849]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-=
6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html"=
 target=3D"_blank">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-128:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_plane_cursor@pipe-a-primary-size-128.html=
" target=3D"_blank">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_plane_cursor@=
pipe-a-primary-size-128.html" target=3D"_blank">PASS</a> +6 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-glk8/igt@kms_plane_lowres@pipe-b-tiling-yf.html" target=
=3D"_blank">FAIL</a> ([i915#1888] / [i915#899]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-glk6/igt@kms_plane_low=
res@pipe-b-tiling-yf.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.htm=
l" target=3D"_blank">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-rkl-6/igt@km=
s_plane_multiple@atomic-pipe-b-tiling-y.html" target=3D"_blank">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-iclb6/igt@kms_psr2_su@frontbuffer.html" target=3D"_blan=
k">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-iclb2/igt@kms_p=
sr2_su@frontbuffer.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-5/igt@kms_psr@cursor_plane_onoff.html" target=3D"_b=
lank">SKIP</a> ([i915#1072]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20931/shard-rkl-6/igt@kms_psr@cursor_plane_onoff.html=
" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-iclb6/igt@kms_psr@psr2_no_drrs.html" target=3D"_blank">=
SKIP</a> ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20931/shard-iclb2/igt@kms_psr@psr2_no_drrs.html" target=3D=
"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#180] / [i915#295]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-kbl3/igt=
@kms_vblank@pipe-a-ts-continuation-suspend.html" target=3D"_blank">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@perf@blocking-parameterized:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-rkl-2/igt@perf@blocking-parameterized.html" target=3D"_=
blank">FAIL</a> ([i915#3793]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20931/shard-rkl-1/igt@perf@blocking-parameterized.ht=
ml" target=3D"_blank">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20931/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs=
0.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html" target=
=3D"_blank">SKIP</a> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20931/shard-iclb3/igt@i915_pm_dc@dc3co-vpb-simul=
ation.html" target=3D"_blank">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10541/shard-tglb8/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html" ta=
rget=3D"_blank">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411]) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20931/shard-tg=
lb8/igt@i915_pm_rpm@dpms-mode-unset-n" target=3D"_blank">SKIP</a> ([fdo#111=
644] / [i915#1397]) +4 similar issues</li>
</ul>
</li>
</ul>

</div>

</blockquote></div></div>

--00000000000057ac2005cb0c6d50--
