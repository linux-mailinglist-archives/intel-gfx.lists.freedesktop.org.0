Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D333C7FA5
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 09:57:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23E766E195;
	Wed, 14 Jul 2021 07:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02C16E195
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 07:57:54 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id t2so1496322edd.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 00:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=FLOUl8C7iUUpeV50Gh/Z9ePCcn0vOA91fsOGggfMSqg=;
 b=rie81m4nvAmmbfuM+KvGCJhuHTObVw2cm3CbsrjwRYXpL6kD7vcGoDzNaOa2AOg3Yd
 4CUTDnDzQGs0AetgIT+05x+Ax5EOLOhtOiOM5ht15UHDX8RYoqNvj7P6X/QlyFsuAAm/
 4FWJ9LLyl9bJzSXUIDAHKEAvOCa8uk671nhYB2jMA6tHnyp+88uvMy2gmuJBY9xdUSTR
 vvZEdShpD8wAlEI10nzANujaKvOq81CJ87AkuqJgOP6d1Xq1K/Phk7IslanmMzwOZEw5
 qJlMWmcFPqYvAe0e2EyV5HUvOBQXYAkDMBaI4Z7mHjXzWZ6230aF5sMciRD9NMdKikQU
 ow5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=FLOUl8C7iUUpeV50Gh/Z9ePCcn0vOA91fsOGggfMSqg=;
 b=hjiyKXTOt1D2J5Nf+fgjwe6uQH90YZRT481ts14QcaAJO9r/nJWCa7m3BHNVmmdFhI
 rVbnPr0oLfASqAHIyMgZfIn4NtX0vfgupk4S7aR2G2OaVDk6gkraBj8FOYMxeJpKeL0A
 FNOsDGWf3zixLO6gaYNpITV7dO4kXsEaQt00a362eKdSwl+D6ZDZADwnFCabM9vAj1HI
 Oznp/T9guIErvI7FO45gL5fukcTwOHzk6B8te1G77L7ob4Udc69tdf6kRVoIfpRKnHqi
 tEUrS5yTH37sVBtuPQqA15ZNpAw5E5g0dEpUbImg8qw26Cd75zxLsTTVOfQU0tFvO075
 Ahxg==
X-Gm-Message-State: AOAM532T/2EsC4MnmM+Zy/BJlk2W9n7Z8MFYJS9e3EOLhFlhovt8xquu
 4XBTXIy+WkUDLYo+ja2j8flvIa/N6BnYI4z6ok30hYmOJVSESCuS
X-Google-Smtp-Source: ABdhPJyOgh6DKsTTj/V5Bd+nxuptMvqtxuc0Rw3OxDVtebQ9iSlLY9lGzviwQbI8K/grkhNF0egR9lvMbx2GeRsAl7s=
X-Received: by 2002:a05:6402:22aa:: with SMTP id
 cx10mr11694872edb.0.1626249473080; 
 Wed, 14 Jul 2021 00:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210713184421.9493-1-juhapekka.heikkila@gmail.com>
 <162623753533.13708.11804527443988644246@emeril.freedesktop.org>
In-Reply-To: <162623753533.13708.11804527443988644246@emeril.freedesktop.org>
From: =?UTF-8?Q?Juha=2DPekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Date: Wed, 14 Jul 2021 10:57:42 +0300
Message-ID: <CAJ=qYWQ_U-4mTrRfL8xXfa=7gL_8qAEpoAgiofZa12YkCdPYzQ@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org, 
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915=3A_Fix_wm_params_for_ccs?=
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
Content-Type: multipart/mixed; boundary="===============1203373260=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1203373260==
Content-Type: multipart/alternative; boundary="00000000000028c02e05c710b670"

--00000000000028c02e05c710b670
Content-Type: text/plain; charset="UTF-8"

Hi Lakshmi,

Here would be again one false positive result.

/Juha-Pekka

On Wed, Jul 14, 2021 at 7:38 AM Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* drm/i915: Fix wm params for ccs
> *URL:* https://patchwork.freedesktop.org/series/92491/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/index.html CI
> Bug Log - changes from CI_DRM_10342_full -> Patchwork_20589_full Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_20589_full absolutely need
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_20589_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_20589_full:
> IGT changes Possible regressions
>
>    - igt@dumb_buffer@map-invalid-size:
>       - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl6/igt@dumb_buffer@map-invalid-size.html>
>
> Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>    -
>
>    igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>    - {shard-rkl}: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html>
>    -
>
>    igt@runner@aborted:
>    - {shard-rkl}: (FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-6/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@runner@aborted.html>)
>       ([i915#3002] / [i915#3728]) -> (FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-2/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-1/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-5/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-1/igt@runner@aborted.html>)
>       ([i915#3002])
>
> Known issues
>
> Here are the changes found in Patchwork_20589_full that come from known
> issues:
> IGT changes Issues hit
>
>    -
>
>    igt@gem_create@create-massive:
>    - shard-snb: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-snb7/igt@gem_create@create-massive.html>
>       ([i915#3002])
>    -
>
>    igt@gem_ctx_persistence@legacy-engines-cleanup:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-snb2/igt@gem_ctx_persistence@legacy-engines-cleanup.html>
>       ([fdo#109271] / [i915#1099]) +3 similar issues
>    -
>
>    igt@gem_ctx_persistence@legacy-engines-hang@blt:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl6/igt@gem_ctx_persistence@legacy-engines-hang@blt.html>
>       ([fdo#109271]) +119 similar issues
>    -
>
>    igt@gem_exec_fair@basic-deadline:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl2/igt@gem_exec_fair@basic-deadline.html>
>       ([i915#2846])
>    -
>
>    igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-throttle@rcs0:
>    -
>
>       shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2842])
>       -
>
>       shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2849])
>       -
>
>    igt@gem_exec_reloc@basic-wide-active@rcs0:
>    - shard-snb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-snb6/igt@gem_exec_reloc@basic-wide-active@rcs0.html>
>       ([i915#3633]) +2 similar issues
>    -
>
>    igt@gem_exec_reloc@basic-wide-active@vcs1:
>    - shard-iclb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html>
>       ([i915#3633])
>    -
>
>    igt@gem_exec_suspend@basic-s3-devices:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-iclb6/igt@gem_exec_suspend@basic-s3-devices.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb6/igt@gem_exec_suspend@basic-s3-devices.html>
>       ([i915#1226])
>    -
>
>    igt@gem_fenced_exec_thrash@2-spare-fences:
>    - shard-snb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-snb2/igt@gem_fenced_exec_thrash@2-spare-fences.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-snb5/igt@gem_fenced_exec_thrash@2-spare-fences.html>
>       ([i915#2055])
>    -
>
>    igt@gem_userptr_blits@input-checking:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl6/igt@gem_userptr_blits@input-checking.html>
>       ([i915#3002])
>    -
>
>    igt@gem_userptr_blits@unsync-unmap-cycles:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@gem_userptr_blits@unsync-unmap-cycles.html>
>       ([i915#3297])
>    -
>
>    igt@gem_userptr_blits@vma-merge:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@gem_userptr_blits@vma-merge.html>
>       ([i915#3318])
>    -
>
>    igt@i915_pm_rpm@gem-pread:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl6/igt@i915_pm_rpm@gem-pread.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl10/igt@i915_pm_rpm@gem-pread.html>
>       ([i915#1982]) +1 similar issue
>    -
>
>    igt@i915_selftest@mock@scatterlist:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl6/igt@i915_selftest@mock@scatterlist.html>
>       ([i915#3746]) +17 similar issues
>    -
>
>    igt@i915_suspend@sysfs-reader:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl4/igt@i915_suspend@sysfs-reader.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl7/igt@i915_suspend@sysfs-reader.html>
>       ([i915#198])
>    -
>
>    igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html>
>       ([i915#3745])
>    -
>
>    igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>       ([i915#118] / [i915#95])
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>       ([fdo#109271] / [i915#3777])
>    -
>
>    igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>       ([fdo#109271] / [i915#3777]) +3 similar issues
>    -
>
>    igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs.html>
>       ([i915#3689])
>    -
>
>    igt@kms_chamelium@dp-mode-timings:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_chamelium@dp-mode-timings.html>
>       ([fdo#109271] / [fdo#111827]) +26 similar issues
>    -
>
>    igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl7/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html>
>       ([fdo#109271] / [fdo#111827]) +3 similar issues
>    -
>
>    igt@kms_chamelium@vga-frame-dump:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_chamelium@vga-frame-dump.html>
>       ([fdo#109271] / [fdo#111827]) +7 similar issues
>    -
>
>    igt@kms_chamelium@vga-hpd-without-ddc:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-snb7/igt@kms_chamelium@vga-hpd-without-ddc.html>
>       ([fdo#109271] / [fdo#111827]) +18 similar issues
>    -
>
>    igt@kms_content_protection@atomic:
>    - shard-apl: NOTRUN -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_content_protection@atomic.html>
>       ([i915#1319])
>    -
>
>    igt@kms_content_protection@uevent:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_content_protection@uevent.html>
>       ([i915#2105])
>    -
>
>    igt@kms_cursor_crc@pipe-d-cursor-suspend:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html>
>       ([fdo#109271]) +74 similar issues
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>       ([i915#2346] / [i915#533])
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>       ([i915#2346])
>    -
>
>    igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html>
>       ([i915#3451])
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>       ([i915#180])
>    -
>
>    igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html>
>       ([fdo#109271]) +446 similar issues
>    -
>
>    igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>    -
>
>       shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html>
>       ([i915#2587])
>       -
>
>       shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html>
>       ([fdo#109271] / [i915#2672])
>       -
>
>    igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html>
>       ([fdo#111825]) +1 similar issue
>    -
>
>    igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html>
>       ([i915#180]) +2 similar issues
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html>
>       ([fdo#108145] / [i915#265]) +3 similar issues
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>    - shard-kbl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>       ([fdo#108145] / [i915#265]) +2 similar issues
>    -
>
>    igt@kms_psr2_sf@cursor-plane-update-sf:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl10/igt@kms_psr2_sf@cursor-plane-update-sf.html>
>       ([fdo#109271] / [i915#658]) +1 similar issue
>    -
>
>    igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html>
>       ([fdo#109271] / [i915#658]) +3 similar issues
>    -
>
>    igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html>
>       ([fdo#109271] / [i915#658]) +1 similar issue
>    -
>
>    igt@kms_psr@psr2_primary_blt:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-iclb2/igt@kms_psr@psr2_primary_blt.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@kms_psr@psr2_primary_blt.html>
>       ([fdo#109441])
>    -
>
>    igt@kms_vblank@pipe-d-query-idle:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@kms_vblank@pipe-d-query-idle.html>
>       ([fdo#109278]) +1 similar issue
>    -
>
>    igt@kms_vblank@pipe-d-ts-continuation-idle:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl2/igt@kms_vblank@pipe-d-ts-continuation-idle.html>
>       ([fdo#109271]) +276 similar issues
>    -
>
>    igt@kms_vblank@pipe-d-wait-idle:
>    -
>
>       shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.html>
>       ([fdo#109271] / [i915#533]) +1 similar issue
>       -
>
>       shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.html>
>       ([fdo#109271] / [i915#533]) +2 similar issues
>       -
>
>       shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_vblank@pipe-d-wait-idle.html>
>       ([fdo#109271] / [i915#533])
>       -
>
>    igt@kms_writeback@writeback-check-output:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl1/igt@kms_writeback@writeback-check-output.html>
>       ([fdo#109271] / [i915#2437])
>    -
>
>    igt@nouveau_crc@pipe-c-source-rg:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@nouveau_crc@pipe-c-source-rg.html>
>       ([i915#2530])
>    -
>
>    igt@runner@aborted:
>    - shard-snb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-snb7/igt@runner@aborted.html>
>       ([i915#3002])
>    -
>
>    igt@sysfs_clients@create:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl3/igt@sysfs_clients@create.html>
>       ([fdo#109271] / [i915#2994]) +1 similar issue
>    -
>
>    igt@sysfs_clients@fair-1:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-apl3/igt@sysfs_clients@fair-1.html>
>       ([fdo#109271] / [i915#2994]) +4 similar issues
>    -
>
>    igt@sysfs_clients@recycle-many:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl7/igt@sysfs_clients@recycle-many.html>
>       ([fdo#109271] / [i915#2994]) +1 similar issue
>
> Possible fixes
>
>    -
>
>    igt@fbdev@read:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@fbdev@read.html>
>       ([i915#2582]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@fbdev@read.html>
>    -
>
>    igt@gem_ctx_persistence@legacy-engines-hang@render:
>    - {shard-rkl}: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>       ([i915#2410]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@render.html>
>    -
>
>    igt@gem_eio@in-flight-contexts-10ms:
>    - shard-skl: TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl10/igt@gem_eio@in-flight-contexts-10ms.html>
>       ([i915#3063]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl4/igt@gem_eio@in-flight-contexts-10ms.html>
>    -
>
>    igt@gem_eio@unwedge-stress:
>    - shard-tglb: TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-tglb2/igt@gem_eio@unwedge-stress.html>
>       ([i915#2369] / [i915#3063] / [i915#3648]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-tglb2/igt@gem_eio@unwedge-stress.html>
>    -
>
>    igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-glk: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>    -
>
>    igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>    - shard-glk: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html>
>       ([i915#307]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-glk7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html>
>    -
>
>    igt@gem_mmap_wc@set-cache-level:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html>
>       ([i915#1850]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html>
>    -
>
>    igt@i915_pm_backlight@fade_with_suspend:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html>
>       ([i915#3012]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html>
>    -
>
>    igt@i915_pm_rpm@gem-execbuf:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html>
>       ([fdo#109308]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html>
>       +2 similar issues
>    -
>
>    igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html>
>       ([i915#1397]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html>
>    -
>
>    igt@i915_selftest@live@gt_pm:
>    - {shard-rkl}: DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@i915_selftest@live@gt_pm.html>
>       ([i915#1021]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-1/igt@i915_selftest@live@gt_pm.html>
>    -
>
>    igt@kms_big_fb@linear-8bpp-rotate-0:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-0.html>
>       ([i915#3638]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-0.html>
>       +2 similar issues
>    -
>
>    igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>    - shard-glk: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>       ([i915#118] / [i915#95]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html>
>       +2 similar issues
>    -
>
>    igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>       ([i915#3721]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>       +5 similar issues
>    -
>
>    igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>    - {shard-rkl}: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>       ([i915#3678]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html>
>       +8 similar issues
>    -
>
>    igt@kms_color@pipe-c-ctm-red-to-blue:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@kms_color@pipe-c-ctm-red-to-blue.html>
>       ([i915#1149] / [i915#1849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_color@pipe-c-ctm-red-to-blue.html>
>       +4 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html>
>       ([fdo#112022]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html>
>       +10 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-c-cursor-suspend:
>    - shard-skl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>       ([i915#300]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-suspend.html>
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html>
>       ([i915#2346]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html>
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html>
>       ([fdo#111825]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html>
>       +5 similar issues
>    -
>
>    igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html>
>       ([fdo#111314]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html>
>       +3 similar issues
>    -
>
>    igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>       ([i915#2122]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html>
>       +1 similar issue
>    -
>
>    igt@kms_flip@flip-vs-suspend@b-edp1:
>    - shard-skl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html>
>       ([i915#198]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_flip@flip-vs-suspend@b-edp1.html>
>    -
>
>    igt@kms_flip@flip-vs-suspend@c-dp1:
>    - shard-kbl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>       +2 similar issues
>    -
>
>    igt@kms_frontbuffer_tracking@basic:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_frontbuffer_tracking@basic.html>
>       ([i915#1849] / [i915#3180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_frontbuffer_tracking@basic.html>
>    -
>
>    igt@kms_frontbuffer_tracking
>    @fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>       ([i915#1849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>       +37 similar issues
>    -
>
>    igt@kms_plane@plane-position-hole@pipe-b-planes:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@kms_plane@plane-position-hole@pipe-b-planes.html>
>       ([i915#3558]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html>
>       +1 similar issue
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>       ([fdo#108145] / [i915#265]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>    -
>
>    igt@kms_plane_multiple@atomic-pipe-b-tiling-none:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html>
>       ([i915#1849] / [i915#3558]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.html>
>    -
>
>    igt@kms_psr@cursor_mmap_gtt:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@kms_psr@cursor_mmap_gtt.html>
>       ([i915#1072]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html>
>       +1 similar issue
>    -
>
>    igt@kms_psr@psr2_cursor_render:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-iclb5/igt@kms_psr@psr>
>       ([fdo#109441]) -> [PASS][145] +2 similar issues
>
>

--00000000000028c02e05c710b670
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Lakshmi,<br><br>Here would be again on=
e false positive result.<br><br>/Juha-Pekka<br></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 14, 2021 at 7:38=
 AM Patchwork &lt;<a href=3D"mailto:patchwork@emeril.freedesktop.org">patch=
work@emeril.freedesktop.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>drm/i915: Fix wm params for ccs</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/92491/" target=3D"_blank">https://patchwork.freedesktop.org/series/924=
91/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20589/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20589/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_10342_full -&gt; Patchwork_20589_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20589_full absolutely need=
 to be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_20589_full, please notify your bug team to allow =
them<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20589_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@dumb_buffer@map-invalid-size:<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl6/igt@dumb_buffer@map-invalid-size.h=
tml" target=3D"_blank">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br>
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6=
bpc.html" target=3D"_blank">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10342/shard-rkl-5/igt@runner@aborted.html" target=3D"_blank">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard=
-rkl-6/igt@runner@aborted.html" target=3D"_blank">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10342/shard-rkl-2/igt@runner@ab=
orted.html" target=3D"_blank">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_10342/shard-rkl-5/igt@runner@aborted.html" target=
=3D"_blank">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10342/shard-rkl-5/igt@runner@aborted.html" target=3D"_blank">FAIL</a>=
) ([i915#3002] / [i915#3728]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-rkl-2/igt@runner@aborted.html" target=
=3D"_blank">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20589/shard-rkl-1/igt@runner@aborted.html" target=3D"_blank">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/sh=
ard-rkl-5/igt@runner@aborted.html" target=3D"_blank">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-1/igt@run=
ner@aborted.html" target=3D"_blank">FAIL</a>) ([i915#3002])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20589_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-snb7/igt@gem_create@create-massive.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-cleanup:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-cleanup.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#1099]) =
+3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-skl6/igt@gem_ctx_persistence@legacy-eng=
ines-hang@blt.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +119 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl2/igt@gem_exec_fair@basic-deadline.h=
tml" target=3D"_blank">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html" tar=
get=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20589/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.=
html" target=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10342/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20589/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html" =
target=3D"_blank">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10342/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20589/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html"=
 target=3D"_blank">FAIL</a> ([i915#2849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-snb6/igt@gem_exec_reloc@basic-wide-acti=
ve@rcs0.html" target=3D"_blank">FAIL</a> ([i915#3633]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-iclb4/igt@gem_exec_reloc@basic-wide-act=
ive@vcs1.html" target=3D"_blank">FAIL</a> ([i915#3633])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-iclb6/igt@gem_exec_suspend@basic-s3-devices.html" targe=
t=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20589/shard-iclb6/igt@gem_exec_suspend@basic-s3-devices.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#1226])</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-snb2/igt@gem_fenced_exec_thrash@2-spare-fences.html" ta=
rget=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20589/shard-snb5/igt@gem_fenced_exec_thrash@2-spare-fence=
s.html" target=3D"_blank">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl6/igt@gem_userptr_blits@input-checki=
ng.html" target=3D"_blank">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@gem_userptr_blits@unsync-unma=
p-cycles.html" target=3D"_blank">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl3/igt@gem_userptr_blits@vma-merge.ht=
ml" target=3D"_blank">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-pread:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl6/igt@i915_pm_rpm@gem-pread.html" target=3D"_blank">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20589/shard-skl10/igt@i915_pm_rpm@gem-pread.html" target=3D"_blank">DMESG=
-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@scatterlist:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl6/igt@i915_selftest@mock@scatterlist=
.html" target=3D"_blank">DMESG-WARN</a> ([i915#3746]) +17 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl4/igt@i915_suspend@sysfs-reader.html" target=3D"_bla=
nk">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20589/shard-skl7/igt@i915_suspend@sysfs-reader.html" target=3D"_blank=
">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_addfb_basic@invalid-smem-b=
o-on-discrete.html" target=3D"_blank">FAIL</a> ([i915#3745])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20589/shard-glk4/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html" =
target=3D"_blank">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / =
[i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [=
i915#3777]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-ba=
sic-y_tiled_ccs.html" target=3D"_blank">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_chamelium@dp-mode-timings.=
html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +26 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-kbl7/igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-frame-dump:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_chamelium@vga-frame-dump.h=
tml" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-snb7/igt@kms_chamelium@vga-hpd-without-=
ddc.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_content_protection@atomic.=
html" target=3D"_blank">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_content_protection@uevent.=
html" target=3D"_blank">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +74 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p=
>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl5/igt@kms_curso=
r_legacy@flip-vs-cursor-atomic-transitions-varying-size.html" target=3D"_bl=
ank">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20589/shard-skl1/igt@kms_cursor_legacy@flip-vs-cu=
rsor-varying-size.html" target=3D"_blank">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-render-xtiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.=
html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20589/shard-glk4/igt@kms_draw_crc@draw-method-rgb=
565-render-xtiled.html" target=3D"_blank">FAIL</a> ([i915#3451])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html" target=3D"_blank">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +4=
46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20589/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html" target=3D"_blank">SKIP</a> ([i915#2587])</=
p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_flip_scaled_crc@flip-64bpp-=
ytile-to-32bpp-ytilercccs.html" target=3D"_blank">SKIP</a> ([fdo#109271] / =
[i915#2672])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-tglb3/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-render.html" target=3D"_blank">SKIP</a> ([fdo#11=
1825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-kbl4/igt@kms_plane@plane=
-panning-bottom-right-suspend@pipe-b-planes.html" target=3D"_blank">DMESG-W=
ARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20589/shard-skl4/igt@kms_plane_alpha_blend@pip=
e-a-constant-alpha-min.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i9=
15#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#26=
5])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +=
2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-skl10/igt@kms_psr2_sf@cursor-plane-upda=
te-sf.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658=
]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-kbl1/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-iclb2/igt@kms_psr@psr2_primary_blt.html" target=3D"_bla=
nk">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20589/shard-iclb5/igt@kms_psr@psr2_primary_blt.html" target=3D"_blank=
">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@kms_vblank@pipe-d-query-idle.=
html" target=3D"_blank">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl2/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +276 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20589/shard-kbl3/igt@kms_vblank@pipe-d-wait-idle.htm=
l" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue<=
/p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20589/shard-apl1/igt@kms_vblank@pipe-d-wait-idle.htm=
l" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues=
</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_vblank@pipe-d-wait-idle.htm=
l" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-kbl1/igt@kms_writeback@writeback-check-=
output.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-rg:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-iclb5/igt@nouveau_crc@pipe-c-source-rg.=
html" target=3D"_blank">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-snb7/igt@runner@aborted.html" target=3D=
"_blank">FAIL</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-skl3/igt@sysfs_clients@create.html" tar=
get=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-apl3/igt@sysfs_clients@fair-1.html" tar=
get=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20589/shard-kbl7/igt@sysfs_clients@recycle-many.htm=
l" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue=
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-5/igt@fbdev@read.html" target=3D"_blank">SKIP</a> (=
[i915#2582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20589/shard-rkl-6/igt@fbdev@read.html" target=3D"_blank">PASS</a></li=
>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@gem_ctx_persistence@legacy-engines-hang@rende=
r.html" target=3D"_blank">FAIL</a> ([i915#2410]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-5/igt@gem_ctx_per=
sistence@legacy-engines-hang@render.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl10/igt@gem_eio@in-flight-contexts-10ms.html" target=
=3D"_blank">TIMEOUT</a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20589/shard-skl4/igt@gem_eio@in-flight-conte=
xts-10ms.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-tglb2/igt@gem_eio@unwedge-stress.html" target=3D"_blank=
">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-tglb2/igt@gem_=
eio@unwedge-stress.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html" targ=
et=3D"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20589/shard-glk2/igt@gem_exec_fair@basic-pace=
-share@rcs0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html" targe=
t=3D"_blank">FAIL</a> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20589/shard-glk7/igt@gem_mmap_gtt@cpuset-medium=
-copy-xy.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html" target=3D"_=
blank">SKIP</a> ([i915#1850]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.ht=
ml" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html" tar=
get=3D"_blank">SKIP</a> ([i915#3012]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@i915_pm_backlight@fade=
_with_suspend.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html" target=3D"_blan=
k">SKIP</a> ([fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20589/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html" tar=
get=3D"_blank">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html"=
 target=3D"_blank">SKIP</a> ([i915#1397]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@i915_pm_rpm@modese=
t-lpsp-stress-no-wait.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-5/igt@i915_selftest@live@gt_pm.html" target=3D"_bla=
nk">DMESG-FAIL</a> ([i915#1021]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20589/shard-rkl-1/igt@i915_selftest@live@gt_pm.ht=
ml" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-0.html" target=
=3D"_blank">SKIP</a> ([i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_big_fb@linear-8bpp-ro=
tate-0.html" target=3D"_blank">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html" targ=
et=3D"_blank">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-glk5/igt@kms_big=
_fb@x-tiled-32bpp-rotate-180.html" target=3D"_blank">PASS</a> +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html" target=3D"_blank">SKIP</a> ([i915#3721]) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-r=
kl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip=
.html" target=3D"_blank">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_til=
ed_gen12_rc_ccs_cc.html" target=3D"_blank">FAIL</a> ([i915#3678]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-=
6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html"=
 target=3D"_blank">PASS</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-5/igt@kms_color@pipe-c-ctm-red-to-blue.html" target=
=3D"_blank">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_color@p=
ipe-c-ctm-red-to-blue.html" target=3D"_blank">PASS</a> +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen=
.html" target=3D"_blank">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_cursor_=
crc@pipe-a-cursor-128x128-onscreen.html" target=3D"_blank">PASS</a> +10 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html" tar=
get=3D"_blank">INCOMPLETE</a> ([i915#300]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl10/igt@kms_cursor_crc@pi=
pe-c-cursor-suspend.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-lega=
cy.html" target=3D"_blank">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_cursor_=
legacy@flip-vs-cursor-busy-crc-legacy.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.h=
tml" target=3D"_blank">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_cursor_le=
gacy@flip-vs-cursor-crc-atomic.html" target=3D"_blank">PASS</a> +5 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.ht=
ml" target=3D"_blank">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_draw_crc@d=
raw-method-rgb565-blt-ytiled.html" target=3D"_blank">PASS</a> +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html" t=
arget=3D"_blank">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl1/igt@kms_flip@flip-vs-expi=
red-vblank@a-edp1.html" target=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html" target=
=3D"_blank">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl3/igt@kms_flip@flip-vs-susp=
end@b-edp1.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html" target=3D=
"_blank">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20589/shard-kbl3/igt@kms_flip@flip-vs-suspend=
@c-dp1.html" target=3D"_blank">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_frontbuffer_tracking@basic.html" target=
=3D"_blank">SKIP</a> ([i915#1849] / [i915#3180]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_frontbu=
ffer_tracking@basic.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-mmap-gtt.html" target=3D"_blank">SKIP</a> ([i915#1849]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-=
rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-g=
tt.html" target=3D"_blank">PASS</a> +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-5/igt@kms_plane@plane-position-hole@pipe-b-planes.h=
tml" target=3D"_blank">SKIP</a> ([i915#3558]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_plane@plan=
e-position-hole@pipe-b-planes.html" target=3D"_blank">PASS</a> +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-skl10/igt@km=
s_plane_alpha_blend@pipe-a-coverage-7efc.html" target=3D"_blank">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-none:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-none.=
html" target=3D"_blank">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20589/shard-rkl-6/ig=
t@kms_plane_multiple@atomic-pipe-b-tiling-none.html" target=3D"_blank">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-rkl-2/igt@kms_psr@cursor_mmap_gtt.html" target=3D"_blan=
k">SKIP</a> ([i915#1072]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20589/shard-rkl-6/igt@kms_psr@cursor_mmap_gtt.html" targ=
et=3D"_blank">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10342/shard-iclb5/igt@kms_psr@psr" target=3D"_blank">SKIP</a> ([fdo=
#109441]) -&gt; [PASS][145] +2 similar issues</li>
</ul>
</li>
</ul>

</div>

</blockquote></div></div>

--00000000000028c02e05c710b670--

--===============1203373260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1203373260==--
