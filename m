Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9354375EC
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 13:25:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 766276ED11;
	Fri, 22 Oct 2021 11:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com
 [IPv6:2607:f8b0:4864:20::82a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DE36ED11
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 11:25:00 +0000 (UTC)
Received: by mail-qt1-x82a.google.com with SMTP id t16so3175993qto.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 04:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5bVyN+U9z2jvsxvMBhfAW2wcSmS0Mmw35HiIq2/sP+8=;
 b=TZVVtP91xtTqeKHZfYfmyUTMh228PZ2tBWzdIpJsDPlxiGSoMM/wtKI304TMd8BT88
 Nz9hOv0bcgJmZ0OorjJUi9MhiTbn6zxSpp8lfY1tZhwhgk44BmYUorueBYWTzwNKiTfO
 DmZSoXjvWigXAAz62qZKrgwEBpBOWFtQd2Gl/RT6CJjVyh//5ClAVDoUvMUnOSA2qFyG
 WU40Knxo5aZf1jmt8oMiRZVKdpDJs6C+vgmVv/3sHoHKkQ6UmcGJ9EkWZL76NnXkzDff
 qSKsOQG1mQZ6tm2wNSdI/uvZzn3GRv/eplugyH+vqEyhckS3NFYsqET8VpcNHgtZJw56
 cgPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5bVyN+U9z2jvsxvMBhfAW2wcSmS0Mmw35HiIq2/sP+8=;
 b=2UYfJX6u0bG8ih10UXfaBYmxVMj6FNQZpKmbOYwMjXoFL7INU1NLm95r2pIwyDzxUU
 weQzSiKL6aCvMah7kRndnRWQnqP7hBO1E+Ir4MAbZN8N1eqrUwyMdxI87AEiGViGj/ad
 DRnW9AIpbn0MT+1Oyxl0lzHeAlmHFwFEDo6auNVp/z/hdbIGHu1E1PqCh21H4PWMHL1Y
 W2z+E0wF5CmvtQLiXITNHrZp+zq9pgM8cbZSnc5eYbk8XG4X+0KEWXbxA80GodMBzi7T
 KEPWlMviyFQEJYamkb0BY0tnlgyJTFJkLyXCBmzAOx+5yrsHfkCtacQJJG7NDahQZHym
 RoSg==
X-Gm-Message-State: AOAM533twr/u/uj1NosV4kNBmvaVF9n3Ut7egNyKd9eB2CzddhVhBvjR
 FtT/ftgwB7eomRLG4J6CkkDyZvepQQeMqm38o4uSURZiWEY=
X-Google-Smtp-Source: ABdhPJxIf7mW1ZNkgdmZPHDmRU+Mmhd2CR16CsFBSA9562naGoMg/whAZ3goFkSJwEFkCeI+Gqe/+QF5ate+i2BTiP4=
X-Received: by 2002:a05:622a:1998:: with SMTP id
 u24mr12450318qtc.156.1634901899113; 
 Fri, 22 Oct 2021 04:24:59 -0700 (PDT)
MIME-Version: 1.0
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
 <163482107361.20173.12106333558102858145@emeril.freedesktop.org>
In-Reply-To: <163482107361.20173.12106333558102858145@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 22 Oct 2021 12:24:31 +0100
Message-ID: <CAM0jSHO0=pwusWze58FshDEc8K_YprmENK47k7AGYwyvbwdZTA@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Content-Type: multipart/alternative; boundary="000000000000f0783f05ceef4244"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
	=?utf-8?q?ies_starting_with_=5B01/28=5D_drm/i915=3A_Fix_i915=5Freq?=
	=?utf-8?q?uest_fence_wait_semantics?=
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

--000000000000f0783f05ceef4244
Content-Type: text/plain; charset="UTF-8"

On Thu, 21 Oct 2021 at 13:57, Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* series starting with [01/28] drm/i915: Fix i915_request fence
> wait semantics
> *URL:* https://patchwork.freedesktop.org/series/96115/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html CI
> Bug Log - changes from CI_DRM_10768_full -> Patchwork_21402_full Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21402_full absolutely need
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21402_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_21402_full:
> IGT changes Possible regressions
>
>    -
>
>    igt@gem_linear_blits@normal:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk4/igt@gem_linear_blits@normal.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk4/igt@gem_linear_blits@normal.html>
>    -
>
>    igt@gem_mmap_gtt@cpuset-big-copy-xy:
>    - shard-iclb: NOTRUN -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-xy.html>
>    -
>
>    igt@gem_ppgtt@blt-vs-render-ctxn:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb5/igt@gem_ppgtt@blt-vs-render-ctxn.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html>
>       +1 similar issue
>
>
Maarten, do you know if these failures are related to this series? Perhaps
the last one?


>
>    -
>
> Known issues
>
> Here are the changes found in Patchwork_21402_full that come from known
> issues:
> IGT changes Issues hit
>
>    -
>
>    igt@feature_discovery@display-2x:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@feature_discovery@display-2x.html>
>       ([i915#1839])
>    -
>
>    igt@gem_create@create-massive:
>    - shard-snb: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_create@create-massive.html>
>       ([i915#3002])
>    -
>
>    igt@gem_ctx_isolation@preservation-s3@rcs0:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@rcs0.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html>
>       ([i915#1373])
>    -
>
>    igt@gem_ctx_isolation@preservation-s3@vcs0:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html>
>       ([i915#180]) +3 similar issues
>    -
>
>    igt@gem_ctx_isolation@preservation-s3@vecs0:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>       ([i915#198])
>    -
>
>    igt@gem_ctx_persistence@idempotent:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_ctx_persistence@idempotent.html>
>       ([fdo#109271] / [i915#1099]) +4 similar issues
>    -
>
>    igt@gem_exec_fair@basic-none-solo@rcs0:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-pace@bcs0:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html>
>       ([i915#2842]) +2 similar issues
>    -
>
>    igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html>
>       ([i915#2842]) +2 similar issues
>    -
>
>    igt@gem_exec_params@no-vebox:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_exec_params@no-vebox.html>
>       ([fdo#109283])
>    -
>
>    igt@gem_pwrite@basic-exhaustion:
>    - shard-kbl: NOTRUN -> WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_pwrite@basic-exhaustion.html>
>       ([i915#2658])
>    -
>
>    igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html>
>       ([i915#4270])
>    -
>
>    igt@gem_userptr_blits@readonly-unsync:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@gem_userptr_blits@readonly-unsync.html>
>       ([i915#3297])
>    -
>
>    igt@gen7_exec_parse@basic-rejected:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen7_exec_parse@basic-rejected.html>
>       ([fdo#109289]) +2 similar issues
>    -
>
>    igt@gen9_exec_parse@cmd-crossing-page:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen9_exec_parse@cmd-crossing-page.html>
>       ([i915#2856]) +2 similar issues
>    -
>
>    igt@i915_pm_dc@dc6-psr:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb1/igt@i915_pm_dc@dc6-psr.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@i915_pm_dc@dc6-psr.html>
>       ([i915#454])
>    -
>
>    igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>       ([fdo#109271] / [i915#1937])
>    -
>
>    igt@i915_pm_rpm@dpms-non-lpsp:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@dpms-non-lpsp.html>
>       ([fdo#111644] / [i915#1397] / [i915#2411])
>    -
>
>    igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>       ([fdo#109506] / [i915#2411])
>    -
>
>    igt@i915_suspend@fence-restore-untiled:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl8/igt@i915_suspend@fence-restore-untiled.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl1/igt@i915_suspend@fence-restore-untiled.html>
>       ([i915#180]) +1 similar issue
>    -
>
>    igt@kms_big_fb@linear-16bpp-rotate-90:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-90.html>
>       ([fdo#111614]) +1 similar issue
>    -
>
>    igt@kms_big_fb@linear-32bpp-rotate-0:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html>
>       ([i915#118])
>    -
>
>    igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>       ([fdo#109271] / [i915#3777])
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>       ([fdo#109271] / [i915#3777])
>    -
>
>    igt@kms_big_fb@yf-tiled-16bpp-rotate-90:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rotate-90.html>
>       ([fdo#111615]) +2 similar issues
>    -
>
>    igt@kms_big_joiner@invalid-modeset:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_big_joiner@invalid-modeset.html>
>       ([fdo#109271]) +19 similar issues
>    -
>
>    igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271] / [i915#3886]) +1 similar issue
>    -
>
>    igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271] / [i915#3886]) +4 similar issues
>    -
>
>    igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271] / [i915#3886])
>    -
>
>    igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html>
>       ([i915#3689]) +6 similar issues
>    -
>
>    igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html>
>       ([i915#3689] / [i915#3886]) +1 similar issue
>    -
>
>    igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html>
>       ([fdo#109271]) +33 similar issues
>    -
>
>    igt@kms_chamelium@hdmi-mode-timings:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb2/igt@kms_chamelium@hdmi-mode-timings.html>
>       ([fdo#109271] / [fdo#111827]) +13 similar issues
>    -
>
>    igt@kms_color@pipe-a-ctm-0-75:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html>
>       ([i915#1982]) +2 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-a-ctm-green-to-red:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_color_chamelium@pipe-a-ctm-green-to-red.html>
>       ([fdo#109271] / [fdo#111827])
>    -
>
>    igt@kms_color_chamelium@pipe-b-ctm-limited-range:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html>
>       ([fdo#109284] / [fdo#111827]) +5 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html>
>       ([fdo#109271] / [fdo#111827]) +10 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html>
>       ([fdo#109271] / [fdo#111827]) +1 similar issue
>    -
>
>    igt@kms_content_protection@atomic:
>    - shard-apl: NOTRUN -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_content_protection@atomic.html>
>       ([i915#1319])
>    -
>
>    igt@kms_content_protection@atomic-dpms:
>    - shard-kbl: NOTRUN -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_content_protection@atomic-dpms.html>
>       ([i915#1319])
>    -
>
>    igt@kms_content_protection@dp-mst-type-0:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_content_protection@dp-mst-type-0.html>
>       ([i915#3116])
>    -
>
>    igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen.html>
>       ([i915#3359]) +3 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html>
>       ([fdo#109279] / [i915#3359]) +7 similar issues
>    -
>
>    igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>    - shard-snb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html>
>       ([fdo#109271]) +281 similar issues
>    -
>
>    igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html>
>       ([fdo#109274] / [fdo#109278])
>    -
>
>    igt@kms_cursor_legacy@pipe-d-torture-bo:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>       ([fdo#109271] / [i915#533])
>    -
>
>    igt@kms_cursor_legacy
>    @short-busy-flip-before-cursor-atomic-transitions-varying-size:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html>
>       ([i915#4103])
>    -
>
>    igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html>
>       ([i915#3528])
>    -
>
>    igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2
>    :
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html>
>       ([i915#79]) +1 similar issue
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>    - shard-kbl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>       ([i915#180]) +1 similar issue
>    -
>
>    igt@kms_flip@flip-vs-suspend@a-dp1:
>    - shard-apl: NOTRUN -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html>
>       ([i915#180])
>    -
>
>    igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html>
>       ([i915#2122])
>    -
>
>    igt@kms_frontbuffer_tracking
>    @fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html>
>       ([fdo#111825]) +26 similar issues
>    -
>
>    igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html>
>       ([i915#2828] / [i915#456])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>    - shard-skl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html>
>       ([i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>    - shard-kbl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html>
>       ([fdo#108145] / [i915#265]) +1 similar issue
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html>
>       ([fdo#108145] / [i915#265]) +1 similar issue
>    -
>
>    igt@kms_plane_lowres@pipe-b-tiling-y:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-y.html>
>       ([i915#3536])
>    -
>
>    igt@kms_plane_lowres@pipe-d-tiling-yf:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-yf.html>
>       ([fdo#112054]) +1 similar issue
>    -
>
>    igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html>
>       ([fdo#109271] / [i915#658]) +1 similar issue
>    -
>
>    igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html>
>       ([fdo#109271] / [i915#658]) +3 similar issues
>    -
>
>    igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html>
>       ([i915#2920]) +2 similar issues
>    -
>
>    igt@kms_psr2_su@page_flip:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_psr2_su@page_flip.html>
>       ([i915#1911])
>    -
>
>    igt@kms_psr@psr2_suspend:
>    -
>
>       shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr@psr2_suspend.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr@psr2_suspend.html>
>       ([fdo#109441])
>       -
>
>       shard-tglb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr@psr2_suspend.html>
>       ([i915#132] / [i915#3467])
>       -
>
>    igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html>
>       -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html>
>       ([i915#198] / [i915#2828])
>    -
>
>    igt@kms_vblank@pipe-d-ts-continuation-idle:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_vblank@pipe-d-ts-continuation-idle.html>
>       ([fdo#109271]) +93 similar issues
>    -
>
>    igt@nouveau_crc@pipe-a-ctx-flip-detection:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@nouveau_crc@pipe-a-ctx-flip-detection.html>
>       ([i915#2530]) +2 similar issues
>    -
>
>    igt@perf_pmu@event-wait@rcs0:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@perf_pmu@event-wait@rcs0.html>
>       ([fdo#112283])
>    -
>
>    igt@prime_nv_pcopy@test3_5:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_nv_pcopy@test3_5.html>
>       ([fdo#109291])
>    -
>
>    igt@prime_vgem@fence-write-hang:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_vgem@fence-write-hang.html>
>       ([fdo#109295])
>    -
>
>    igt@sysfs_clients@create:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl7/igt@sysfs_clients@create.html>
>       ([fdo#109271] / [i915#2994]) +1 similar issue
>    -
>
>    igt@sysfs_clients@fair-0:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@sysfs_clients@fair-0.html>
>       ([i915#2994])
>    -
>
>    igt@sysfs_clients@sema-10:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@sysfs_clients@sema-10.html>
>       ([fdo#109271] / [i915#2994])
>
> Possible fixes
>
>    -
>
>    igt@drm_mm@all@evict:
>    - shard-skl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl2/igt@drm_mm@all@evict.html>
>       ([i915#198]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl4/igt@drm_mm@all@evict.html>
>    -
>
>    igt@gem_exec_fair@basic-none@vecs0:
>    - shard-kbl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html>
>    -
>
>    igt@gem_exec_fair@basic-pace@bcs0:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html>
>    -
>
>    igt@gem_exec_fair@basic-pace@vcs1:
>    - shard-tglb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs1.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>    -
>
>    igt@gem_softpin@noreloc-s3:
>    - shard-apl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl8/igt@gem_softpin@noreloc-s3.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-apl3/igt@gem_softpin@noreloc-s3.html>
>    -
>
>    igt@i915_pm_dc@dc6-dpms:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>       ([i915#454]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html>
>    -
>
>    igt@i915_suspend@forcewake:
>    - shard-skl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl2/igt@i915_suspend@forcewake.html>
>       ([i915#636]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl7/igt@i915_suspend@forcewake.html>
>    -
>
>    igt@kms_color@pipe-b-ctm-0-75:
>    - shard-skl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html>
>       ([i915#1982]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.html>
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-suspend:
>    - shard-tglb: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       ([i915#2828] / [i915#456]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>    -
>
>    igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
>    - shard-kbl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>       ([i915#79]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>    -
>
>    igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>       ([i915#3701]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>       ([fdo#108145] / [i915#265]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html>
>    -
>
>    igt@kms_psr@psr2_cursor_plane_move:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html>
>       ([fdo#109441]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html>
>    -
>
>    igt@kms_vblank@pipe-a-ts-continuation-suspend:
>    - shard-tglb: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       ([i915#456]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       +1 similar issue
>
> Warnings
>
>    -
>
>    igt@i915_pm_rc6_residency@rc6-fence:
>    - shard-iclb: WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html>
>       ([i915#2684]) -> WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html>
>       ([i915#1804] / [i915#2684])
>    -
>
>    igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html>
>       ([i915#658]) -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html>
>       ([i915#2920])
>    -
>
>    igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html>
>       ([i915#2920]) -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html>
>       ([i915#658]) +2 similar issues
>    -
>
>    igt@kms_psr2_su@page_flip:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-iclb2/igt@kms_psr2_su@page_flip.html>
>       ([i915#4148]) -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_su@page_flip.html>
>       ([fdo#109642] / [fdo#111068] / [i915#658])
>    -
>
>    igt@runner@aborted:
>    -
>
>       shard-kbl: (FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl7/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-kbl1/igt@runner@aborted.html>)
>       ([i915#3002] / [i915#3363] / [i915#4312]) -> (FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl3/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@runner@aborted.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@runner@aborted.html>)
>       ([i915#1436] / [i915#180] / [i915#3002] / [i915#3363] / [i915#4312])
>       -
>
>       shard-apl: (FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-apl6/igt@runner@aborted.html>,
>       FAIL <http://ht>, [FAIL][140]) ([i915#180] / [i915#1814] /
>       [i915#3002] / [i915#3363] / [i915#4312]) -> ([FAIL][141], [FAIL][142],
>       [FAIL][143], [FAIL][144]) ([i915#180] / [i915#3002] / [i915#3363] /
>       [i915#4312])
>
>

--000000000000f0783f05ceef4244
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">On Thu, 21 Oct 2021 at 13:57, Patchwork &lt;<=
a href=3D"mailto:patchwork@emeril.freedesktop.org">patchwork@emeril.freedes=
ktop.org</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>series starting with [01/28] drm/i915=
: Fix i915_request fence wait semantics</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96115/" target=3D"_blank">https://patchwork.freedesktop.org/series/961=
15/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21402/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21402/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_10768_full -&gt; Patchwork_21402_f=
ull</h1>
<h2>Summary</h2>
<p><b>FAILURE</b></p>
<p>Serious unknown changes coming with Patchwork_21402_full absolutely need=
 to be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_21402_full, please notify your bug team to allow =
them<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21402_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_linear_blits@normal:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-glk4/igt@gem_linear_blits@normal.html" target=3D"_blank=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21402/shard-glk4/igt@gem_linear_blits@normal.html" target=3D"_blank">FA=
IL</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-=
xy.html" target=3D"_blank">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-tglb5/igt@gem_ppgtt@blt-vs-render-ctxn.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21402/shard-tglb8/igt@gem_ppgtt@blt-vs-render-ctxn.html" target=
=3D"_blank">FAIL</a> +1 similar issue</li></ul></li></ul></div></blockquote=
><div><br></div><div><div style=3D"font-family:monospace,monospace" class=
=3D"gmail_default">Maarten, do you know if these failures are related to th=
is series? Perhaps the last one?<br></div></div><div>=C2=A0</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div><ul><li><ul>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21402_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@feature_discovery@display-2x.=
html" target=3D"_blank">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_create@create-massive.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@rcs0.html" =
target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21402/shard-tglb7/igt@gem_ctx_isolation@preservation-s3=
@rcs0.html" target=3D"_blank">INCOMPLETE</a> ([i915#1373])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html" t=
arget=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@v=
cs0.html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html" =
target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21402/shard-skl1/igt@gem_ctx_isolation@preservation-s3@=
vecs0.html" target=3D"_blank">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-snb2/igt@gem_ctx_persistence@idempotent=
.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-glk5/igt@gem_exec_fair@basic-none-solo@rcs0.html" targe=
t=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21402/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html=
" target=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html" target=
=3D"_blank">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21402/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html" target=
=3D"_blank">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_exec_params@no-vebox.html=
" target=3D"_blank">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@gem_pwrite@basic-exhaustion.ht=
ml" target=3D"_blank">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gem_pxp@dmabuf-shared-protect=
ed-dst-is-context-refcounted.html" target=3D"_blank">SKIP</a> ([i915#4270])=
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@gem_userptr_blits@readonly-un=
sync.html" target=3D"_blank">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen7_exec_parse@basic-rejecte=
d.html" target=3D"_blank">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@gen9_exec_parse@cmd-crossing-=
page.html" target=3D"_blank">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb1/igt@i915_pm_dc@dc6-psr.html" target=3D"_blank">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21402/shard-iclb3/igt@i915_pm_dc@dc6-psr.html" target=3D"_blank">FAIL</a> (=
[i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@dpms-non-lpsp.htm=
l" target=3D"_blank">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@i915_pm_rpm@gem-execbuf-stres=
s-pc8.html" target=3D"_blank">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-apl8/igt@i915_suspend@fence-restore-untiled.html" targe=
t=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21402/shard-apl1/igt@i915_suspend@fence-restore-untiled.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotat=
e-90.html" target=3D"_blank">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-0.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21402/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html" t=
arget=3D"_blank">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i=
915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / =
[i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_big_fb@yf-tiled-16bpp-rot=
ate-90.html" target=3D"_blank">SKIP</a> ([fdo#111615]) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_big_joiner@invalid-modeset=
.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-a-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [=
i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_ccs@pipe-a-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271] /=
 [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271] =
/ [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-b-bad-rotation-9=
0-y_tiled_ccs.html" target=3D"_blank">SKIP</a> ([i915#3689]) +6 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_ccs@pipe-c-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([i915#3689] / [i91=
5#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_ccs@pipe-d-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +3=
3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-snb2/igt@kms_chamelium@hdmi-mode-timing=
s.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html" target=3D"_bla=
nk">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21402/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html" target=3D"_blan=
k">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_color_chamelium@pipe-a-ctm=
-green-to-red.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_color_chamelium@pipe-b-ct=
m-limited-range.html" target=3D"_blank">SKIP</a> ([fdo#109284] / [fdo#11182=
7]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_color_chamelium@pipe-b-ctm=
-red-to-blue.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827])=
 +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_content_protection@atomic.=
html" target=3D"_blank">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_content_protection@atomic-=
dpms.html" target=3D"_blank">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_content_protection@dp-mst=
-type-0.html" target=3D"_blank">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-max-size-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
max-size-onscreen.html" target=3D"_blank">SKIP</a> ([i915#3359]) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-random.html" target=3D"_blank">SKIP</a> ([fdo#109279] / [i915#3359]=
) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-snb7/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +281 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@kms_cursor_legacy@2x-long-cur=
sor-vs-flip-legacy.html" target=3D"_blank">SKIP</a> ([fdo#109274] / [fdo#10=
9278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_cursor_legacy@short-busy-=
flip-before-cursor-atomic-transitions-varying-size.html" target=3D"_blank">=
SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_dp_tiled_display@basic-te=
st-pattern-with-chamelium.html" target=3D"_blank">SKIP</a> ([i915#3528])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-glk7/igt@kms_fl=
ip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html" target=
=3D"_blank">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1=
.html" target=3D"_blank">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_flip@plain-flip-ts-c=
heck-interruptible@b-edp1.html" target=3D"_blank">FAIL</a> ([i915#2122])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-mmap-gtt.html" target=3D"_blank">SKIP</a> ([f=
do#111825]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.ht=
ml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb7/igt@kms_pipe_crc_basic@suspend-re=
ad-crc-pipe-c.html" target=3D"_blank">INCOMPLETE</a> ([i915#2828] / [i915#4=
56])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html" target=3D"_blank">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-basic.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.ht=
ml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-b-tilin=
g-y.html" target=3D"_blank">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_plane_lowres@pipe-d-tilin=
g-yf.html" target=3D"_blank">SKIP</a> ([fdo#112054]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-1.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658]) +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-1.html" target=3D"_blank">SKIP</a> ([i915#2920]) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@kms_psr2_su@page_flip.html" t=
arget=3D"_blank">SKIP</a> ([i915#1911])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10768/shard-iclb2/igt@kms_psr@psr2_suspend.html" target=3D"_blank">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21402/shard-iclb7/igt@kms_psr@psr2_suspend.html" target=3D"_blank">SKIP</a=
> ([fdo#109441])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21402/shard-tglb5/igt@kms_psr@psr2_suspend.html" tar=
get=3D"_blank">FAIL</a> ([i915#132] / [i915#3467])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend=
.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21402/shard-skl5/igt@kms_vblank@pipe-b-ts-contin=
uation-dpms-suspend.html" target=3D"_blank">INCOMPLETE</a> ([i915#198] / [i=
915#2828])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl3/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +93 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@nouveau_crc@pipe-a-ctx-flip-d=
etection.html" target=3D"_blank">SKIP</a> ([i915#2530]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@perf_pmu@event-wait@rcs0.html=
" target=3D"_blank">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_nv_pcopy@test3_5.html" =
target=3D"_blank">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@prime_vgem@fence-write-hang.h=
tml" target=3D"_blank">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-apl7/igt@sysfs_clients@create.html" tar=
get=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-tglb1/igt@sysfs_clients@fair-0.html" ta=
rget=3D"_blank">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21402/shard-skl7/igt@sysfs_clients@sema-10.html" ta=
rget=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_mm@all@evict:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl2/igt@drm_mm@all@evict.html" target=3D"_blank">INCOM=
PLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21402/shard-skl4/igt@drm_mm@all@evict.html" target=3D"_blan=
k">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21402/shard-kbl1/igt@gem_exec_fair@basic-none@vecs=
0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb3/igt@gem_exec_fair@basic-pace@bcs0.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21402/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs=
0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-tglb1/igt@gem_exec_fair@basic-pace@vcs1.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21402/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs=
1.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-apl8/igt@gem_softpin@noreloc-s3.html" target=3D"_blank"=
>DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21402/shard-apl3/igt@gem_softpin@noreloc-s3.html" tar=
get=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html" target=3D"_blank">F=
AIL</a> ([i915#454]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21402/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html" target=3D"_bl=
ank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl2/igt@i915_suspend@forcewake.html" target=3D"_blank"=
>INCOMPLETE</a> ([i915#636]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21402/shard-skl7/igt@i915_suspend@forcewake.html" tar=
get=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl7/igt@kms_color@pipe-b-ctm-0-75.html" target=3D"_bla=
nk">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21402/shard-skl10/igt@kms_color@pipe-b-ctm-0-75.h=
tml" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html" ta=
rget=3D"_blank">INCOMPLETE</a> ([i915#2828] / [i915#456]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb5/igt@km=
s_cursor_crc@pipe-a-cursor-suspend.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html" target=3D"_blank">FAIL</a> ([i915#79]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/igt@kms_flip@f=
lip-vs-expired-vblank-interruptible@b-dp1.html" target=3D"_blank">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs.html" target=3D"_blank">SKIP</a> ([i915#3701]) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb1/igt@kms=
_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html" target=3D"_blank"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.ht=
ml" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-skl3/igt@km=
s_plane_alpha_blend@pipe-a-coverage-7efc.html" target=3D"_blank">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html" target=
=3D"_blank">SKIP</a> ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr@psr2_cursor_plan=
e_move.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-tglb7/igt@kms_vblank@pipe-a-ts-continuation-suspend.htm=
l" target=3D"_blank">INCOMPLETE</a> ([i915#456]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-tglb3/igt@kms_vblank@=
pipe-a-ts-continuation-suspend.html" target=3D"_blank">PASS</a> +1 similar =
issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html" target=
=3D"_blank">WARN</a> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21402/shard-iclb3/igt@i915_pm_rc6_residency@rc6=
-fence.html" target=3D"_blank">WARN</a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html" ta=
rget=3D"_blank">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21402/shard-iclb2/igt@kms_psr2_sf@plane-move=
-sf-dmg-area-0.html" target=3D"_blank">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
1.html" target=3D"_blank">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_sf=
@primary-plane-update-sf-dmg-area-1.html" target=3D"_blank">SKIP</a> ([i915=
#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-iclb2/igt@kms_psr2_su@page_flip.html" target=3D"_blank"=
>FAIL</a> ([i915#4148]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21402/shard-iclb7/igt@kms_psr2_su@page_flip.html" target=
=3D"_blank">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-kbl7/igt@runner@aborted.html" target=3D"_blank">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/shard-k=
bl1/igt@runner@aborted.html" target=3D"_blank">FAIL</a>) ([i915#3002] / [i9=
15#3363] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21402/shard-kbl3/igt@runner@aborted.html" target=3D"_blan=
k">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21402/shard-kbl6/igt@runner@aborted.html" target=3D"_blank">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/shard-kbl6/i=
gt@runner@aborted.html" target=3D"_blank">FAIL</a>) ([i915#1436] / [i915#18=
0] / [i915#3002] / [i915#3363] / [i915#4312])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10768/shard-apl6/igt@runner@aborted.html" target=3D"_blank">FAIL</a=
>, <a href=3D"http://ht" target=3D"_blank">FAIL</a>, [FAIL][140]) ([i915#18=
0] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#4312]) -&gt; ([FAIL][1=
41], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#180] / [i915#3002] / [i9=
15#3363] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</div>

</blockquote></div></div>

--000000000000f0783f05ceef4244--
