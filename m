Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B64D9424FAB
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 11:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8125C6F3B3;
	Thu,  7 Oct 2021 09:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5186F3B3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 09:04:42 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id b65so5229206qkc.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Oct 2021 02:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9QEbj7eXke9H72Z7XrOvaMcMp2RMrpLuAp3UcJ9QrYA=;
 b=bLecaW7GdY8a38vQ0R7xo8T1gPgOvQ6mX8JK3NsB4mFlmfXzUbSpDngNGEHCgAjtMZ
 1G12JZHXUHtML0QNjsHvYZP7DQhrO/KvcSpH3zYjrvoEsIPmosDTOAm5OmJRgYZsyo+h
 aqs97P/AfzE/cJtyD3X5Kxxzh5JP4pldtGKjk3ZVT8X12jF8p2FrPT0SWCENM2GVr5I+
 IzG+EMnpR+kngzK8Vyn0xsX2aqJqvjGWpaOo0/SjZm2f75HvO0xGWZ1VFLJb5WFN/lnv
 CYmGhChYkUY66vvmeICH6kteou8vn+WqEKCvvznWTPNSzkixJQI/d5iU9coQbN/XkTXp
 JbZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9QEbj7eXke9H72Z7XrOvaMcMp2RMrpLuAp3UcJ9QrYA=;
 b=uwU8u2tgc7l0raYk67l4WeefH2lxPfaE92fgURxxi0gcJc55q9JiKfJqqnpd9s9U2V
 EYhLaPwrxNfJY1wJ2DOFtfr9o+k/vCrloy2R99g+Pnl7QO23MZFmQsiBkq/FBA1JY54l
 4BU09vQ8FYbocBbWjk2/X4wBpdr9fbS6IEoidjKGjpO56xqCXOko9A9gEI5FAkbSHl2m
 f7xVf6Kk5B+pgkaBvs1Jnvjl8RGytD6RmpcKZ7qnl8ldH0xsVtNH/Zvv08nwJJRTLHTr
 MdYQ9RRSOGISHixc+doZ+YEQroA9iEA/7I6rOWLbDuYVVQlCpaA50hCwltsxyf584QPX
 jROw==
X-Gm-Message-State: AOAM532exYPkMtGYYXgIoIvia5x/QNPWY69nCbrudgl+qjancmTrar0E
 Eeab76UHhbYtp5vhdwrV7HhPAvSX3OsdYRJqO6N8pUPjidk=
X-Google-Smtp-Source: ABdhPJxFCo8k7tdoDJDaLZR1MrK+oTpUhIORKzdAORD9ZdhYj+Yi8kAMopTIC7ijCGq9lm2j6pJb0TEy/w1DJr3QhHc=
X-Received: by 2002:a37:6302:: with SMTP id x2mr2281867qkb.11.1633597481170;
 Thu, 07 Oct 2021 02:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <20211006091614.970596-1-matthew.auld@intel.com>
 <163353397200.5959.9158572900274841139@emeril.freedesktop.org>
In-Reply-To: <163353397200.5959.9158572900274841139@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 7 Oct 2021 10:04:12 +0100
Message-ID: <CAM0jSHN3stDnEVisJqu1ymKs0P-gXG+pgfksFwiFX2kUcs5Afg@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 lakshminarayana.vudum@intel.com
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: multipart/alternative; boundary="000000000000923bc505cdbf8dcf"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
	=?utf-8?q?ies_starting_with_=5Bv7=2C1/8=5D_drm/i915/gem=3A_Break_o?=
	=?utf-8?q?ut_some_shmem_backend_utils?=
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

--000000000000923bc505cdbf8dcf
Content-Type: text/plain; charset="UTF-8"

On Wed, 6 Oct 2021 at 16:26, Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* series starting with [v7,1/8] drm/i915/gem: Break out some
> shmem backend utils
> *URL:* https://patchwork.freedesktop.org/series/95501/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/index.html CI
> Bug Log - changes from CI_DRM_10688_full -> Patchwork_21264_full Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21264_full absolutely need
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21264_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_21264_full:
> IGT changes Possible regressions
>
>    -
>
>    igt@gem_sync@basic-many-each:
>    - shard-apl: NOTRUN -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl7/igt@gem_sync@basic-many-each.html>
>
>
Looks unrelated to this series. There were some recent changes merged in
this area in the last day or so.


>    -
>       -
>
>    igt@i915_pm_dc@dc9-dpms:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html>
>
>
Also unrelated.


>    -
>
> Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>    -
>
>    {igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted}:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html>
>    -
>
>    {igt@gem_pxp@verify-pxp-execution-after-suspend-resume}:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html>
>       +1 similar issue
>
> Known issues
>
> Here are the changes found in Patchwork_21264_full that come from known
> issues:
> IGT changes Issues hit
>
>    -
>
>    igt@feature_discovery@psr2:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@feature_discovery@psr2.html>
>       ([i915#658]) +1 similar issue
>    -
>
>    igt@gem_ctx_isolation@preservation-s3@vecs0:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>       ([i915#146] / [i915#198])
>    -
>
>    igt@gem_ctx_param@set-priority-not-supported:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gem_ctx_param@set-priority-not-supported.html>
>       ([fdo#109314])
>    -
>
>    igt@gem_ctx_persistence@smoketest:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-snb2/igt@gem_ctx_persistence@smoketest.html>
>       ([fdo#109271] / [i915#1099]) +4 similar issues
>    -
>
>    igt@gem_eio@in-flight-contexts-immediate:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl5/igt@gem_eio@in-flight-contexts-immediate.html>
>       -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl3/igt@gem_eio@in-flight-contexts-immediate.html>
>       ([i915#3063])
>    -
>
>    igt@gem_eio@unwedge-stress:
>    - shard-snb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-snb2/igt@gem_eio@unwedge-stress.html>
>       ([i915#3354])
>    -
>
>    igt@gem_exec_fair@basic-none@vcs1:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-pace@vcs1:
>    - shard-iclb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-sync@rcs0:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html>
>       ([fdo#109271]) +1 similar issue
>    -
>
>    igt@gem_exec_fair@basic-throttle@rcs0:
>    -
>
>       shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2842])
>       -
>
>       shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2849])
>       -
>
>    igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>       ([fdo#109313])
>    -
>
>    igt@gem_exec_params@no-blt:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@gem_exec_params@no-blt.html>
>       ([fdo#109283])
>    -
>
>    igt@gem_exec_params@no-vebox:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gem_exec_params@no-vebox.html>
>       ([fdo#109283])
>    -
>
>    igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl8/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html>
>       ([i915#180] / [i915#203] / [i915#62]) +4 similar issues
>    -
>
>    igt@gem_pread@exhaustion:
>    - shard-kbl: NOTRUN -> WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@gem_pread@exhaustion.html>
>       ([i915#2658])
>    -
>
>    igt@gem_pwrite@basic-exhaustion:
>    - shard-apl: NOTRUN -> WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl2/igt@gem_pwrite@basic-exhaustion.html>
>       ([i915#2658])
>    -
>
>    igt@gem_userptr_blits@dmabuf-sync:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gem_userptr_blits@dmabuf-sync.html>
>       ([i915#3323])
>    -
>
>    igt@gem_userptr_blits@dmabuf-unsync:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gem_userptr_blits@dmabuf-unsync.html>
>       ([i915#3297])
>    -
>
>    igt@gem_userptr_blits@input-checking:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl2/igt@gem_userptr_blits@input-checking.html>
>       ([i915#3002]) +1 similar issue
>    -
>
>    igt@gem_userptr_blits@vma-merge:
>    - shard-snb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-snb2/igt@gem_userptr_blits@vma-merge.html>
>       ([i915#2724])
>    -
>
>    igt@gen3_render_tiledy_blits:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gen3_render_tiledy_blits.html>
>       ([fdo#109289]) +1 similar issue
>    -
>
>    igt@gen9_exec_parse@batch-without-end:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@gen9_exec_parse@batch-without-end.html>
>       ([i915#2856])
>    -
>
>    igt@gen9_exec_parse@bb-start-cmd:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gen9_exec_parse@bb-start-cmd.html>
>       ([i915#2856]) +2 similar issues
>    -
>
>    igt@i915_module_load@reload-with-fault-injection:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html>
>       ([i915#1982]) +2 similar issues
>    -
>
>    igt@i915_pm_dc@dc6-dpms:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>       ([i915#454])
>    -
>
>    igt@i915_selftest@live@gt_lrc:
>    - shard-tglb: NOTRUN -> DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@i915_selftest@live@gt_lrc.html>
>       ([i915#2373])
>    -
>
>    igt@i915_selftest@live@gt_pm:
>    - shard-tglb: NOTRUN -> DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@i915_selftest@live@gt_pm.html>
>       ([i915#1759] / [i915#2291])
>    -
>
>    igt@i915_selftest@live@mman:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl8/igt@i915_selftest@live@mman.html>
>       ([i915#203]) +33 similar issues
>    -
>
>    igt@i915_suspend@sysfs-reader:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-apl2/igt@i915_suspend@sysfs-reader.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl1/igt@i915_suspend@sysfs-reader.html>
>       ([i915#180]) +3 similar issues
>    -
>
>    igt@kms_big_fb@linear-64bpp-rotate-270:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-270.html>
>       ([fdo#110725] / [fdo#111614])
>    -
>
>    igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>       ([fdo#109271] / [i915#3777])
>    -
>
>    igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180.html>
>       ([i915#180] / [i915#1982] / [i915#203] / [i915#62])
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>       ([fdo#109271] / [i915#3777])
>    -
>
>    igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html>
>       ([fdo#111615]) +3 similar issues
>    -
>
>    igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html>
>       ([fdo#110723])
>    -
>
>    igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>    -
>
>       shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>       ([fdo#109271] / [i915#3886]) +1 similar issue
>       -
>
>       shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>       ([fdo#109271] / [i915#3886])
>       -
>
>    igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>       ([fdo#109278] / [i915#3886])
>    -
>
>    igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>       ([fdo#109271] / [i915#3886]) +11 similar issues
>    -
>
>    igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html>
>       ([i915#3689] / [i915#3886]) +1 similar issue
>    -
>
>    igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs.html>
>       ([i915#3689]) +3 similar issues
>    -
>
>    igt@kms_chamelium@dp-hpd:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_chamelium@dp-hpd.html>
>       ([fdo#109271] / [fdo#111827])
>    -
>
>    igt@kms_chamelium@hdmi-mode-timings:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html>
>       ([fdo#109271] / [fdo#111827]) +14 similar issues
>    -
>
>    igt@kms_color@pipe-d-ctm-0-75:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@kms_color@pipe-d-ctm-0-75.html>
>       ([fdo#109278] / [i915#1149])
>    -
>
>    igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html>
>       ([fdo#109284] / [fdo#111827]) +1 similar issue
>    -
>
>    igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html>
>       ([fdo#109271] / [fdo#111827]) +23 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-c-ctm-limited-range:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html>
>       ([fdo#109271] / [fdo#111827]) +1 similar issue
>    -
>
>    igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html>
>       ([fdo#109284] / [fdo#111827]) +6 similar issues
>    -
>
>    igt@kms_content_protection@atomic-dpms:
>    - shard-apl: NOTRUN -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_content_protection@atomic-dpms.html>
>       ([i915#1319])
>    -
>
>    igt@kms_content_protection@legacy:
>    - shard-kbl: NOTRUN -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_content_protection@legacy.html>
>       ([i915#1319])
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html>
>       ([fdo#109278] / [fdo#109279])
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-suspend:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       ([i915#180]) +3 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html>
>       ([fdo#109271]) +73 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html>
>       ([i915#3359])
>    -
>
>    igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html>
>       ([fdo#109279] / [i915#3359])
>    -
>
>    igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html>
>       ([i915#3319])
>    -
>
>    igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html>
>       ([fdo#109278]) +7 similar issues
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>       ([i915#2346])
>    -
>
>    igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html>
>       ([i915#3528])
>    -
>
>    igt@kms_fbcon_fbt@fbc-suspend:
>    -
>
>       shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html>
>       ([i915#180] / [i915#1982])
>       -
>
>       shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html>
>       ([i915#456])
>       -
>
>    igt@kms_flip@2x-absolute-wf_vblank:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_flip@2x-absolute-wf_vblank.html>
>       ([fdo#111825] / [i915#3966])
>    -
>
>    igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html>
>       ([i915#2122])
>    -
>
>    igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>       ([i915#79])
>    -
>
>    igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>    - shard-skl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>       ([i915#79])
>    -
>
>    igt@kms_flip@flip-vs-suspend@a-edp1:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-tglb5/igt@kms_flip@flip-vs-suspend@a-edp1.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb7/igt@kms_flip@flip-vs-suspend@a-edp1.html>
>       ([i915#2411] / [i915#456])
>    -
>
>    igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html>
>       ([fdo#109271]) +309 similar issues
>    -
>
>    igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html>
>       ([fdo#109280])
>    -
>
>    igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html>
>       ([fdo#111825]) +15 similar issues
>    -
>
>    igt@kms_hdr@bpc-switch-dpms:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html>
>       ([i915#1188])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html>
>       ([fdo#108145] / [i915#265]) +1 similar issue
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>    - shard-kbl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>    - shard-kbl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html>
>       ([fdo#108145] / [i915#265]) +1 similar issue
>    -
>
>    igt@kms_plane_lowres@pipe-c-tiling-x:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-x.html>
>       ([i915#3536])
>    -
>
>    igt@kms_plane_scaling
>    @scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html>
>       ([fdo#109271] / [i915#2733])
>    -
>
>    igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html>
>       ([fdo#109271] / [i915#658])
>    -
>
>    igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html>
>       ([fdo#109271] / [i915#658]) +4 similar issues
>    -
>
>    igt@kms_psr@psr2_cursor_plane_onoff:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html>
>       ([fdo#109441]) +1 similar issue
>    -
>
>    igt@kms_psr@psr2_primary_blt:
>    - shard-tglb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_psr@psr2_primary_blt.html>
>       ([i915#132] / [i915#3467])
>    -
>
>    igt@kms_psr@psr2_primary_mmap_cpu:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html>
>       ([fdo#109441])
>    -
>
>    igt@kms_setmode@basic:
>    - shard-snb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-snb2/igt@kms_setmode@basic.html>
>       ([i915#31])
>    -
>
>    igt@kms_vblank@pipe-d-wait-idle:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html>
>       ([fdo#109271] / [i915#533]) +2 similar issues
>    -
>
>    igt@kms_writeback@writeback-fb-id:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl3/igt@kms_writeback@writeback-fb-id.html>
>       ([fdo#109271] / [i915#2437])
>    -
>
>    igt@nouveau_crc@pipe-b-ctx-flip-detection:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html>
>       ([i915#2530]) +1 similar issue
>    -
>
>    igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl2/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html>
>       ([fdo#109271]) +249 similar issues
>    -
>
>    igt@nouveau_crc@pipe-d-source-outp-complete:
>    -
>
>       shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl6/igt@nouveau_crc@pipe-d-source-outp-complete.html>
>       ([fdo#109271]) +17 similar issues
>       -
>
>       shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp-complete.html>
>       ([fdo#109278] / [i915#2530])
>       -
>
>    igt@perf@polling:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl4/igt@perf@polling.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl5/igt@perf@polling.html>
>       ([i915#1542])
>    -
>
>    igt@prime_nv_api@i915_nv_import_twice:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@prime_nv_api@i915_nv_import_twice.html>
>       ([fdo#109291]) +2 similar issues
>    -
>
>    igt@prime_nv_api@i915_self_import_to_different_fd:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@prime_nv_api@i915_self_import_to_different_fd.html>
>       ([fdo#109291]) +2 similar issues
>    -
>
>    igt@sysfs_clients@recycle-many:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-apl3/igt@sysfs_clients@recycle-many.html>
>       ([fdo#109271] / [i915#2994]) +1 similar issue
>    -
>
>    igt@sysfs_heartbeat_interval@mixed@bcs0:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl7/igt@sysfs_heartbeat_interval@mixed@bcs0.html>
>       -> WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl3/igt@sysfs_heartbeat_interval@mixed@bcs0.html>
>       ([i915#4055])
>    -
>
>    igt@sysfs_heartbeat_interval@mixed@vcs0:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html>
>       ([i915#1731])
>
> Possible fixes
>
>    -
>
>    igt@gem_eio@unwedge-stress:
>    - shard-iclb: TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-iclb6/igt@gem_eio@unwedge-stress.html>
>       ([i915#2369] / [i915#2481] / [i915#3070]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb6/igt@gem_eio@unwedge-stress.html>
>    -
>
>    igt@gem_exec_fair@basic-none@vecs0:
>    - shard-kbl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html>
>    -
>
>    igt@gem_exec_fair@basic-pace@bcs0:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html>
>    -
>
>    igt@gem_sync@basic-many-each:
>    - shard-kbl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-kbl4/igt@gem_sync@basic-many-each.html>
>       -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@gem_sync@basic-many-each.html>
>    -
>
>    igt@gem_workarounds@suspend-resume:
>    - shard-kbl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10688/shard-kbl6/igt@gem_workarounds@suspend-resume.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-kbl7/igt@gem_workarounds@suspend-resume.html>
>       +1 similar issue
>    -
>
>    igt
>
>

--000000000000923bc505cdbf8dcf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">On Wed, 6 Oct 2021 at 16:26, Patchwork &lt;<a=
 href=3D"mailto:patchwork@emeril.freedesktop.org" target=3D"_blank">patchwo=
rk@emeril.freedesktop.org</a>&gt; wrote:<br></div></div><div class=3D"gmail=
_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>series starting with [v7,1/8] drm/i91=
5/gem: Break out some shmem backend utils</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/95501/" target=3D"_blank">https://patchwork.freedesktop.org/series/955=
01/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21264/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21264/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_10688_full -&gt; Patchwork_21264_f=
ull</h1>
<h2>Summary</h2>
<p><b>FAILURE</b></p>
<p>Serious unknown changes coming with Patchwork_21264_full absolutely need=
 to be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_21264_full, please notify your bug team to allow =
them<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21264_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_sync@basic-many-each:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl7/igt@gem_sync@basic-many-each.html"=
 target=3D"_blank">INCOMPLETE</a></li></ul></li></ul></div></blockquote><di=
v><div style=3D"font-family:monospace,monospace" class=3D"gmail_default"></=
div><div style=3D"font-family:monospace,monospace" class=3D"gmail_default">=
<br></div><div style=3D"font-family:monospace,monospace" class=3D"gmail_def=
ault">Looks unrelated to this series. There were some recent changes merged=
 in this area in the last day or so.</div><div style=3D"font-family:monospa=
ce,monospace" class=3D"gmail_default"><br></div></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div><ul><li><ul>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html" target=3D"_blank">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21264/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html" target=3D"_blank">FAIL</a>=
</li></ul></li></ul></div></blockquote><div><br></div><div><div style=3D"fo=
nt-family:monospace,monospace" class=3D"gmail_default">Also unrelated.</div=
><div style=3D"font-family:monospace,monospace" class=3D"gmail_default"><br=
></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><ul><li=
><ul>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br>
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted}:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@gem_pxp@dmabuf-shared-protect=
ed-dst-is-context-refcounted.html" target=3D"_blank">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@gem_pxp@verify-pxp-execution-after-suspend-resume}:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gem_pxp@verify-pxp-execution-=
after-suspend-resume.html" target=3D"_blank">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21264_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@feature_discovery@psr2.html" =
target=3D"_blank">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl10/igt@gem_ctx_isolation@preservation-s3@vecs0.html"=
 target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21264/shard-skl7/igt@gem_ctx_isolation@preservation-s3=
@vecs0.html" target=3D"_blank">INCOMPLETE</a> ([i915#146] / [i915#198])</li=
>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gem_ctx_param@set-priority-no=
t-supported.html" target=3D"_blank">SKIP</a> ([fdo#109314])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-snb2/igt@gem_ctx_persistence@smoketest.=
html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl5/igt@gem_eio@in-flight-contexts-immediate.html" tar=
get=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21264/shard-skl3/igt@gem_eio@in-flight-contexts-immediate.=
html" target=3D"_blank">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-snb2/igt@gem_eio@unwedge-stress.html" t=
arget=3D"_blank">FAIL</a> ([i915#3354])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21264/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html" target=
=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html" tar=
get=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21264/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.=
html" target=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html" target=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-sync@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-kbl3/igt@gem_exec_fair@basic-sync@rcs0.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21264/shard-kbl6/igt@gem_exec_fair@basic-sync@rcs0.html" target=
=3D"_blank">SKIP</a> ([fdo#109271]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10688/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21264/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html" =
target=3D"_blank">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10688/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21264/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html"=
 target=3D"_blank">FAIL</a> ([i915#2849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gem_exec_flush@basic-batch-ke=
rnel-default-cmd.html" target=3D"_blank">SKIP</a> ([fdo#109313])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@gem_exec_params@no-blt.html" =
target=3D"_blank">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gem_exec_params@no-vebox.html=
" target=3D"_blank">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl8/igt@gem_mmap_gtt@cpuset-medium-cop=
y-xy.html" target=3D"_blank">DMESG-WARN</a> ([i915#180] / [i915#203] / [i91=
5#62]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@gem_pread@exhaustion.html" tar=
get=3D"_blank">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl2/igt@gem_pwrite@basic-exhaustion.ht=
ml" target=3D"_blank">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gem_userptr_blits@dmabuf-sync=
.html" target=3D"_blank">SKIP</a> ([i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gem_userptr_blits@dmabuf-unsy=
nc.html" target=3D"_blank">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl2/igt@gem_userptr_blits@input-checki=
ng.html" target=3D"_blank">DMESG-WARN</a> ([i915#3002]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-snb2/igt@gem_userptr_blits@vma-merge.ht=
ml" target=3D"_blank">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@gen3_render_tiledy_blits.html=
" target=3D"_blank">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@gen9_exec_parse@batch-without=
-end.html" target=3D"_blank">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@gen9_exec_parse@bb-start-cmd.=
html" target=3D"_blank">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl6/igt@i915_module_load@reload-with-fault-injection.h=
tml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21264/shard-skl4/igt@i915_module_load@reload-with-=
fault-injection.html" target=3D"_blank">DMESG-WARN</a> ([i915#1982]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html" target=3D"_blank">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21264/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html" target=3D"_blank">FAIL</a>=
 ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@i915_selftest@live@gt_lrc.htm=
l" target=3D"_blank">DMESG-FAIL</a> ([i915#2373])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@i915_selftest@live@gt_pm.html=
" target=3D"_blank">DMESG-FAIL</a> ([i915#1759] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl8/igt@i915_selftest@live@mman.html" =
target=3D"_blank">DMESG-WARN</a> ([i915#203]) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-apl2/igt@i915_suspend@sysfs-reader.html" target=3D"_bla=
nk">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21264/shard-apl1/igt@i915_suspend@sysfs-reader.html" target=3D"_blank=
">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotat=
e-270.html" target=3D"_blank">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i=
915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180.html" target=3D"_blank">DMESG-WARN</a> ([i915#180] / [i=
915#1982] / [i915#203] / [i915#62])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i=
915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-270.html" target=3D"_blank">SKIP</a> ([fdo#111615]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-async-flip.html" target=3D"_blank">SKIP</a> ([fdo#11072=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21264/shard-kbl2/igt@kms_ccs@pipe-b-bad-rotation-90-=
y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915=
#3886]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_ccs@pipe-b-bad-rotation-90-=
y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915=
#3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_ccs@pipe-b-crc-primary-ro=
tation-180-y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#1092=
78] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i91=
5#3886]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_ccs@pipe-c-crc-primary-ro=
tation-180-y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([i915#368=
9] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_ccs@pipe-c-missing-ccs-bu=
ffer-yf_tiled_ccs.html" target=3D"_blank">SKIP</a> ([i915#3689]) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_chamelium@dp-hpd.html" tar=
get=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-snb7/igt@kms_chamelium@hdmi-mode-timing=
s.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@kms_color@pipe-d-ctm-0-75.htm=
l" target=3D"_blank">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_color_chamelium@pipe-a-ct=
m-blue-to-red.html" target=3D"_blank">SKIP</a> ([fdo#109284] / [fdo#111827]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827=
]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm=
-limited-range.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_color_chamelium@pipe-d-ct=
m-green-to-red.html" target=3D"_blank">SKIP</a> ([fdo#109284] / [fdo#111827=
]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl6/igt@kms_content_protection@atomic-=
dpms.html" target=3D"_blank">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_content_protection@legacy.=
html" target=3D"_blank">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html" target=3D"_blank">SKIP</a> ([fdo#109278] / [fdo#109=
279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html" tar=
get=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21264/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.=
html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-3=
2x10-random.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +73 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-rapid-movement.html" target=3D"_blank">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-=
512x512-random.html" target=3D"_blank">SKIP</a> ([fdo#109279] / [i915#3359]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-=
32x32-onscreen.html" target=3D"_blank">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-rapid-movement.html" target=3D"_blank">SKIP</a> ([fdo#109278]) +7 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_cursor_legacy@flip=
-vs-cursor-atomic-transitions.html" target=3D"_blank">FAIL</a> ([i915#2346]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html" target=3D"_blank">SKIP</a> ([i915#3528])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10688/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html" target=3D"_blan=
k">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21264/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html" target=3D"_blank"=
>INCOMPLETE</a> ([i915#180] / [i915#1982])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10688/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html" target=3D"_bla=
nk">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21264/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html" target=3D"_blan=
k">INCOMPLETE</a> ([i915#456])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_flip@2x-absolute-wf_vblan=
k.html" target=3D"_blank">SKIP</a> ([fdo#111825] / [i915#3966])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdm=
i-a2.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21264/shard-glk6/igt@kms_flip@2x-plain-flip-=
ts-check@ab-hdmi-a1-hdmi-a2.html" target=3D"_blank">FAIL</a> ([i915#2122])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-edp1.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21264/shard-skl2/igt@kms_flip@flip-vs-expi=
red-vblank-interruptible@b-edp1.html" target=3D"_blank">FAIL</a> ([i915#79]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-skl6/igt@kms_flip@flip-vs-expired-vblan=
k@a-edp1.html" target=3D"_blank">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-tglb5/igt@kms_flip@flip-vs-suspend@a-edp1.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21264/shard-tglb7/igt@kms_flip@flip-vs-suspend@a-edp1.html" t=
arget=3D"_blank">INCOMPLETE</a> ([i915#2411] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-snb2/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-blt.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +309 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb1/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-mmap-wc.html" target=3D"_blank">SKIP</a> ([fdo#1=
09280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-spr-indfb-draw-pwrite.html" target=3D"_blank">SKIP</a> ([fdo#11=
1825]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21264/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank">F=
AIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@kms_plane_lowres@pipe-c-tilin=
g-x.html" target=3D"_blank">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl7/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html" target=3D"_bla=
nk">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-kbl4/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658=
])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl7/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#6=
58]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21264/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html" t=
arget=3D"_blank">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@kms_psr@psr2_primary_blt.html=
" target=3D"_blank">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu=
.html" target=3D"_blank">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-snb2/igt@kms_setmode@basic.html" target=
=3D"_blank">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.ht=
ml" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl3/igt@kms_writeback@writeback-fb-id.=
html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html" target=3D"_blank">SKIP</a> ([i915#2530]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl2/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +249 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21264/shard-skl6/igt@nouveau_crc@pipe-d-source-outp-=
complete.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +17 similar issues=
</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21264/shard-iclb3/igt@nouveau_crc@pipe-d-source-outp=
-complete.html" target=3D"_blank">SKIP</a> ([fdo#109278] / [i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl4/igt@perf@polling.html" target=3D"_blank">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/s=
hard-skl5/igt@perf@polling.html" target=3D"_blank">FAIL</a> ([i915#1542])</=
li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-iclb3/igt@prime_nv_api@i915_nv_import_t=
wice.html" target=3D"_blank">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-tglb5/igt@prime_nv_api@i915_self_import=
_to_different_fd.html" target=3D"_blank">SKIP</a> ([fdo#109291]) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21264/shard-apl3/igt@sysfs_clients@recycle-many.htm=
l" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl7/igt@sysfs_heartbeat_interval@mixed@bcs0.html" targ=
et=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21264/shard-skl3/igt@sysfs_heartbeat_interval@mixed@bcs0.ht=
ml" target=3D"_blank">WARN</a> ([i915#4055])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vcs0.html" targ=
et=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21264/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.ht=
ml" target=3D"_blank">FAIL</a> ([i915#1731])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-iclb6/igt@gem_eio@unwedge-stress.html" target=3D"_blank=
">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-iclb6/igt@gem_=
eio@unwedge-stress.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-kbl6/igt@gem_exec_fair@basic-none@vecs0.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21264/shard-kbl1/igt@gem_exec_fair@basic-none@vecs=
0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21264/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs=
0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-many-each:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-kbl4/igt@gem_sync@basic-many-each.html" target=3D"_blan=
k">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21264/shard-kbl4/igt@gem_sync@basic-many-each.html" target=3D"_b=
lank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10688/shard-kbl6/igt@gem_workarounds@suspend-resume.html" target=3D=
"_blank">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21264/shard-kbl7/igt@gem_workarounds@suspend-=
resume.html" target=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt</p>
</li>
</ul>

</div>

</blockquote></div></div>

--000000000000923bc505cdbf8dcf--
