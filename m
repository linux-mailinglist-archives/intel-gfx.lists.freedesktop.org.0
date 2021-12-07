Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7AD46BD5C
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 15:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B6A6EB57;
	Tue,  7 Dec 2021 14:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B63E6EB57
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 14:15:51 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id n15so14418110qta.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Dec 2021 06:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QVyUN7KXYSorcN6h6sBBZISybHbW29n5CzAvHJ3xRKg=;
 b=L61Wt2UuGInjMkMRn1vYjseyQg82ZaFNfTmASMxceZ7BWrV8UqNWDVwhUxJ5E3+VpO
 2lzmiLytktj8LBWFmJQeMhHuo4lpOnV9H5VioIxuRKZVcNNEtJUp545pz8bF3Dpigv79
 fI0Sot+3BenBN4ibAkQN7IX1lQbv3zG4xtb8QAYIjmGTDiCPQzXqFNvlqJMqq6n8tTRL
 0aQBuRvJokqH/Lcq02iwVXwKwn7qIbUiHiP8NSP5AXWRzQ5e/rg0dsDC5IKbtNsnkgUA
 f59Ztpit48x6+WjNMy1QucaRfs89IhfwGngJbdGOKXTH17MWNOwJQbVas4eg3Xi3svPS
 DKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QVyUN7KXYSorcN6h6sBBZISybHbW29n5CzAvHJ3xRKg=;
 b=5R2IsuV+F6FbX8HVgXyefOxwa9CgAES8QVEBDXic+K8kI0Y2QQw+XHK//WbksNys0D
 EvHnj2fIh3j7Hftl1f5mxhJyzNCIgHgjICksae1AMeo0zF/UyMCy9h/k3XSE3XezqbJ0
 3UiJr2bsuwirTZ9IipT6F0WdM4bVyeqGRIC5yg7/gx8IvkTQGPfgyACfsiEhSZqvLOhE
 6UMMJH9O6iu6kx1MiaYBdxlfeAXRUaTPspcrhZDj/mm2Hx0W2Ba38bSCmde5W4MLEbFG
 5jVq3Rri5GFnyxH7oSdPo/PCaYKD6+9D7/mXDd/sIlb8VsEr9MHgX+sJf03TGtYyc1zW
 iciA==
X-Gm-Message-State: AOAM532RUJMSyRsp7iY2xcURzeNIdvZCwsz0T2oydDWkpOnt2zyYib81
 JyigDl4sqgunK6UnXbzvq1gkYcLpTM1JyugNdwz67zPI/SI=
X-Google-Smtp-Source: ABdhPJxY1QcCfX8fclJWMZl60OQiy1QnSb25jOIFmLL/ru7JGkyINIPPrYuNP9EwNlPe5imBb/4/9VbYmL6gcUtNshw=
X-Received: by 2002:ac8:4d87:: with SMTP id a7mr48910038qtw.410.1638886550024; 
 Tue, 07 Dec 2021 06:15:50 -0800 (PST)
MIME-Version: 1.0
References: <20211206112539.3149779-1-matthew.auld@intel.com>
 <163880919630.15873.11251798890649607119@emeril.freedesktop.org>
In-Reply-To: <163880919630.15873.11251798890649607119@emeril.freedesktop.org>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 7 Dec 2021 14:15:26 +0000
Message-ID: <CAM0jSHPxUF9m=Nv-dewbexS2kUhe1TeNCDKMhpPC19jVxav+WQ@mail.gmail.com>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 lakshminarayana.vudum@intel.com
Content-Type: multipart/alternative; boundary="000000000000a435d805d28f02aa"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
	=?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/migrate=3A_don=27t_?=
	=?utf-8?q?check_the_scratch_page?=
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
Cc: Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000a435d805d28f02aa
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Dec 2021 at 16:46, Patchwork <patchwork@emeril.freedesktop.org>
wrote:

> *Patch Details*
> *Series:* series starting with [1/4] drm/i915/migrate: don't check the
> scratch page
> *URL:* https://patchwork.freedesktop.org/series/97610/
> *State:* failure
> *Details:*
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/index.html CI
> Bug Log - changes from CI_DRM_10965_full -> Patchwork_21762_full Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_21762_full absolutely need
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21762_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> Participating hosts (10 -> 10)
>
> No changes in participating hosts
> Possible new issues
>
> Here are the unknown changes that may have been introduced in
> Patchwork_21762_full:
> IGT changes Possible regressions
>
>    - igt@i915_selftest@live@vma:
>       - shard-skl: NOTRUN -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@vma.html>
>
>
Looks to be false positive. These changes should only potentially impact
migration related stuff.


>
>    -
>
> Known issues
>
> Here are the changes found in Patchwork_21762_full that come from known
> issues:
> IGT changes Issues hit
>
>    -
>
>    igt@debugfs_test@read_all_entries:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@debugfs_test@read_all_entries.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@debugfs_test@read_all_entries.html>
>       ([i915#203] / [i915#262] / [i915#62] / [i915#92])
>    -
>
>    igt@gem_eio@in-flight-contexts-10ms:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html>
>       -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html>
>       ([i915#3063])
>    -
>
>    igt@gem_exec_capture@pi@bcs0:
>    - shard-skl: NOTRUN -> INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@bcs0.html>
>       ([i915#4547])
>    -
>
>    igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-pace@bcs0:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_exec_fair@basic-pace@vcs0:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html>
>       ([i915#2842]) +1 similar issue
>    -
>
>    igt@gem_exec_fair@basic-pace@vcs1:
>    - shard-iclb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html>
>       ([i915#2842]) +1 similar issue
>    -
>
>    igt@gem_exec_fair@basic-pace@vecs0:
>    - shard-tglb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html>
>       ([i915#2842])
>    -
>
>    igt@gem_lmem_swapping@heavy-verify-random:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html>
>       ([fdo#109271] / [i915#4613])
>    -
>
>    igt@gem_lmem_swapping@parallel-random-verify:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@gem_lmem_swapping@parallel-random-verify.html>
>       ([fdo#109271] / [i915#4613])
>    -
>
>    igt@gem_lmem_swapping@smem-oom:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@gem_lmem_swapping@smem-oom.html>
>       ([fdo#109271] / [i915#4613])
>    -
>
>    igt@gem_mmap_gtt@coherency:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gem_mmap_gtt@coherency.html>
>       ([fdo#111656])
>    -
>
>    igt@gen7_exec_parse@cmd-crossing-page:
>    -
>
>       shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gen7_exec_parse@cmd-crossing-page.html>
>       ([fdo#109289])
>       -
>
>       shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@gen7_exec_parse@cmd-crossing-page.html>
>       ([fdo#109289])
>       -
>
>    igt@i915_module_load@reload-no-display:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@i915_module_load@reload-no-display.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@i915_module_load@reload-no-display.html>
>       ([i915#203])
>    -
>
>    igt@i915_pm_sseu@full-enable:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@i915_pm_sseu@full-enable.html>
>       ([i915#4387])
>    -
>
>    igt@i915_selftest@live@gt_pm:
>    - shard-skl: NOTRUN -> DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@gt_pm.html>
>       ([i915#1886] / [i915#2291])
>    -
>
>    igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>       ([fdo#109271] / [i915#3777]) +1 similar issue
>    -
>
>    igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html>
>       ([fdo#111615])
>    -
>
>    igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>    -
>
>       shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>       ([fdo#109278] / [i915#3886])
>       -
>
>       shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html>
>       ([i915#3689] / [i915#3886])
>       -
>
>    igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271] / [i915#3886])
>    -
>
>    igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>       ([fdo#109271] / [i915#3886]) +3 similar issues
>    -
>
>    igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html>
>       ([i915#3689]) +1 similar issue
>    -
>
>    igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs.html>
>       ([fdo#111615] / [i915#3689])
>    -
>
>    igt@kms_cdclk@mode-transition:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_cdclk@mode-transition.html>
>       ([fdo#109271]) +64 similar issues
>    -
>
>    igt@kms_chamelium@dp-hpd-storm-disable:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_chamelium@dp-hpd-storm-disable.html>
>       ([fdo#109271] / [fdo#111827]) +2 similar issues
>    -
>
>    igt@kms_chamelium@hdmi-hpd-storm-disable:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm-disable.html>
>       ([fdo#109271] / [fdo#111827])
>    -
>
>    igt@kms_color_chamelium@pipe-b-gamma:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_color_chamelium@pipe-b-gamma.html>
>       ([fdo#109284] / [fdo#111827])
>    -
>
>    igt@kms_color_chamelium@pipe-c-ctm-max:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm-max.html>
>       ([fdo#109271] / [fdo#111827]) +4 similar issues
>    -
>
>    igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html>
>       ([fdo#109284] / [fdo#111827]) +3 similar issues
>    -
>
>    igt@kms_content_protection@legacy:
>    - shard-apl: NOTRUN -> TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_content_protection@legacy.html>
>       ([i915#1319])
>    -
>
>    igt@kms_cursor_crc@pipe-a-cursor-suspend:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html>
>       ([i915#180]) +7 similar issues
>    -
>
>    igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html>
>       ([i915#3359])
>    -
>
>    igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen.html>
>       ([fdo#109279] / [i915#3359]) +1 similar issue
>    -
>
>    igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge.html>
>       ([fdo#109278])
>    -
>
>    igt@kms_cursor_legacy@pipe-c-single-bo:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@kms_cursor_legacy@pipe-c-single-bo.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_cursor_legacy@pipe-c-single-bo.html>
>       ([i915#203] / [i915#62] / [i915#92]) +5 similar issues
>    -
>
>    igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html>
>       ([i915#2122])
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html>
>       ([i915#180])
>    -
>
>    igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html>
>       ([i915#2122])
>    -
>
>    igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>    - shard-glk: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html>
>       ([i915#1888] / [i915#2546])
>    -
>
>    igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>       ([fdo#109280])
>    -
>
>    igt@kms_frontbuffer_tracking
>    @fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html>
>       ([fdo#111825]) +10 similar issues
>    -
>
>    igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render.html>
>       ([fdo#109271]) +9 similar issues
>    -
>
>    igt@kms_hdr@bpc-switch-dpms:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html>
>       ([i915#1188])
>    -
>
>    igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html>
>       ([fdo#109271] / [i915#533])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>    - shard-apl: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid.html>
>       ([i915#180] / [i915#203] / [i915#62] / [i915#92]) +10 similar issues
>    -
>
>    igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html>
>       ([fdo#108145] / [i915#265])
>    -
>
>    igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
>    - shard-kbl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html>
>       ([fdo#109271] / [i915#658])
>    -
>
>    igt@kms_psr2_su@frontbuffer-xrgb8888:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>       ([fdo#109271] / [i915#658])
>    -
>
>    igt@kms_psr@psr2_cursor_mmap_cpu:
>    - shard-iclb: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>       -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html>
>       ([fdo#109441]) +2 similar issues
>    -
>
>    igt@kms_psr@psr2_cursor_render:
>    - shard-tglb: NOTRUN -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_psr@psr2_cursor_render.html>
>       ([i915#132] / [i915#3467])
>    -
>
>    igt@kms_setmode@basic:
>    - shard-apl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@kms_setmode@basic.html>
>       -> FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_setmode@basic.html>
>       ([i915#31])
>    -
>
>    igt@kms_vblank@pipe-a-ts-continuation-suspend:
>    - shard-kbl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>       ([i915#180] / [i915#295])
>    -
>
>    igt@kms_vblank@pipe-d-wait-idle:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.html>
>       ([fdo#109271] / [i915#533])
>    -
>
>    igt@kms_vrr@flip-suspend:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_vrr@flip-suspend.html>
>       ([fdo#109502])
>    -
>
>    igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html>
>       ([fdo#109271]) +32 similar issues
>    -
>
>    igt@perf_pmu@module-unload:
>    - shard-skl: PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@perf_pmu@module-unload.html>
>       -> DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl6/igt@perf_pmu@module-unload.html>
>       ([i915#1982] / [i915#262])
>    -
>
>    igt@prime_nv_pcopy@test3_5:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_nv_pcopy@test3_5.html>
>       ([fdo#109291])
>    -
>
>    igt@prime_vgem@fence-read-hang:
>    - shard-tglb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_vgem@fence-read-hang.html>
>       ([fdo#109295])
>    -
>
>    igt@sysfs_clients@fair-3:
>    - shard-skl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@sysfs_clients@fair-3.html>
>       ([fdo#109271] / [i915#2994])
>    -
>
>    igt@sysfs_clients@recycle:
>    - shard-apl: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@sysfs_clients@recycle.html>
>       ([fdo#109271] / [i915#2994]) +1 similar issue
>    -
>
>    igt@sysfs_clients@split-25:
>    - shard-iclb: NOTRUN -> SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@sysfs_clients@split-25.html>
>       ([i915#2994])
>
> Possible fixes
>
>    -
>
>    igt@feature_discovery@psr2:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@feature_discovery@psr2.html>
>       ([i915#658]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@feature_discovery@psr2.html>
>    -
>
>    igt@gem_eio@unwedge-stress:
>    - {shard-rkl}: TIMEOUT
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html>
>       ([i915#3063]) -> (PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-2/igt@gem_eio@unwedge-stress.html>,
>       PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-4/igt@gem_eio@unwedge-stress.html>
>       )
>    -
>
>    igt@gem_exec_capture@pi@rcs0:
>    - shard-skl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html>
>       ([i915#4547]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@rcs0.html>
>    -
>
>    igt@gem_exec_fair@basic-deadline:
>    - shard-glk: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk8/igt@gem_exec_fair@basic-deadline.html>
>       ([i915#2846]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk4/igt@gem_exec_fair@basic-deadline.html>
>    -
>
>    igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-apl: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html>
>       ([fdo#109271]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html>
>    -
>
>    igt@gem_exec_fair@basic-none-solo@rcs0:
>    - {shard-rkl}: (FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html>,
>       FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html>)
>       ([i915#2842] / [i915#2849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>    -
>
>    igt@gem_exec_fair@basic-none@vecs0:
>    - shard-apl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html>
>    -
>
>    igt@gem_exec_fair@basic-pace@rcs0:
>    - shard-kbl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html>
>       ([i915#2842]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html>
>    -
>
>    igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html>
>       ([i915#2849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html>
>    -
>
>    igt@gem_exec_whisper@basic-forked-all:
>    - shard-glk: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html>
>       ([i915#118]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk7/igt@gem_exec_whisper@basic-forked-all.html>
>    -
>
>    igt@gem_workarounds@suspend-resume:
>    - shard-skl: INCOMPLETE
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html>
>       ([i915#198]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl8/igt@gem_workarounds@suspend-resume.html>
>    -
>
>    igt@i915_pm_rpm@pm-tiling:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html>
>       ([fdo#109308]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html>
>    -
>
>    igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>    - shard-glk: DMESG-FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>       ([i915#118] / [i915#1888]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html>
>    -
>
>    igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html>
>       ([i915#1845]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html>
>       +5 similar issues
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>       ([i915#2346]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>    -
>
>    igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>    - shard-iclb: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>       ([i915#2346]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>    -
>
>    igt@kms_cursor_legacy@pipe-c-torture-move:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html>
>       ([i915#4070]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-4/igt@kms_cursor_legacy@pipe-c-torture-move.html>
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>    - shard-kbl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html>
>       +1 similar issue
>    -
>
>    igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>    - shard-apl: DMESG-WARN
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>       ([i915#180]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html>
>       +3 similar issues
>    -
>
>    igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>       ([i915#2122]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html>
>    -
>
>    igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html>
>       ([i915#4098]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html>
>       +4 similar issues
>    -
>
>    igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html>
>       ([i915#1849]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html>
>       +2 similar issues
>    -
>
>    igt@kms_hdr@bpc-switch-suspend:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html>
>       ([i915#1188]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html>
>    -
>
>    igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>       ([fdo#108145] / [i915#265]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html>
>    -
>
>    igt@kms_psr@cursor_render:
>    - {shard-rkl}: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-rkl-4/igt@kms_psr@cursor_render.html>
>       ([i915#1072]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_psr@cursor_render.html>
>    -
>
>    igt@kms_psr@psr2_cursor_plane_onoff:
>    - shard-iclb: SKIP
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html>
>       ([fdo#109441]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html>
>       +3 similar issues
>    -
>
>    igt@kms_setmode@basic:
>    - shard-glk: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-glk3/igt@kms_setmode@basic.html>
>       ([i915#31]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk1/igt@kms_setmode@basic.html>
>    -
>
>    igt@perf@short-reads:
>    - shard-skl: FAIL
>       <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/shard-skl10/igt@perf@short-reads.html>
>       ([i915#51]) -> PASS
>       <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl7/igt@perf@short-reads.html>
>
> Warnings
>
>    - igt@gen9_exec_parse@bb-oversize:
>       - shard-skl: SKIP <https://intel-gf> ([fdo#109271]) -> [SKIP][145]
>       ([fdo#109271] / [i915#1888])
>
>

--000000000000a435d805d28f02aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">On Mon, 6 Dec 2021 at 16:46, Patchwork &lt;<a=
 href=3D"mailto:patchwork@emeril.freedesktop.org">patchwork@emeril.freedesk=
top.org</a>&gt; wrote:<br></div></div><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
<u></u>

=20
 =20
 =20
 =20

<div>


<b>Patch Details</b>
<table>
<tbody><tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/m=
igrate: don&#39;t check the scratch page</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97610/" target=3D"_blank">https://patchwork.freedesktop.org/series/976=
10/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21762/index.html" target=3D"_blank">https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21762/index.html</a></td></tr>

</tbody></table>


    <h1>CI Bug Log - changes from CI_DRM_10965_full -&gt; Patchwork_21762_f=
ull</h1>
<h2>Summary</h2>
<p><b>FAILURE</b></p>
<p>Serious unknown changes coming with Patchwork_21762_full absolutely need=
 to be<br>
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
>
  introduced in Patchwork_21762_full, please notify your bug team to allow =
them<br>
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21762_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@vma:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@vma.html" t=
arget=3D"_blank">INCOMPLETE</a></li></ul></li></ul></div></blockquote><div>=
<br></div><div><div style=3D"font-family:monospace,monospace" class=3D"gmai=
l_default">Looks to be false positive. These changes should only potentiall=
y impact migration related stuff.<br></div></div><div>=C2=A0</div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div><ul><li><ul>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21762_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl7/igt@debugfs_test@read_all_entries.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21762/shard-kbl3/igt@debugfs_test@read_all_entries.html" target=
=3D"_blank">DMESG-WARN</a> ([i915#203] / [i915#262] / [i915#62] / [i915#92]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-tglb3/igt@gem_eio@in-flight-contexts-10ms.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21762/shard-tglb8/igt@gem_eio@in-flight-contexts-10ms.html" t=
arget=3D"_blank">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@bcs0.html=
" target=3D"_blank">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html" targ=
et=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21762/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.ht=
ml" target=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html" target=3D=
"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html" target=
=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html" target=
=3D"_blank">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html" target=3D"_blank">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-tglb1/igt@gem_exec_fair@basic-pace@vecs0.html" target=
=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21762/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html" ta=
rget=3D"_blank">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@gem_lmem_swapping@heavy-verify=
-random.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl6/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#4613])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl1/igt@gem_lmem_swapping@smem-oom.htm=
l" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gem_mmap_gtt@coherency.html" =
target=3D"_blank">SKIP</a> ([fdo#111656])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21762/shard-tglb1/igt@gen7_exec_parse@cmd-crossing-p=
age.html" target=3D"_blank">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21762/shard-iclb6/igt@gen7_exec_parse@cmd-crossing-p=
age.html" target=3D"_blank">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl7/igt@i915_module_load@reload-no-display.html" targe=
t=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21762/shard-kbl3/igt@i915_module_load@reload-no-display.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#203])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@i915_pm_sseu@full-enable.html=
" target=3D"_blank">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl1/igt@i915_selftest@live@gt_pm.html"=
 target=3D"_blank">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html" target=3D"_blank">SKIP</a> ([fdo#109271] / =
[i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-180.html" target=3D"_blank">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([fdo#109278] / [i915=
#3886])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-stride-=
y_tiled_gen12_mc_ccs.html" target=3D"_blank">SKIP</a> ([i915#3689] / [i915#=
3886])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_ccs@pipe-b-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271] / =
[i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_ccs@pipe-b-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [=
i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-b-ccs-on-another=
-bo-y_tiled_ccs.html" target=3D"_blank">SKIP</a> ([i915#3689]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_ccs@pipe-c-bad-pixel-form=
at-yf_tiled_ccs.html" target=3D"_blank">SKIP</a> ([fdo#111615] / [i915#3689=
])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_cdclk@mode-transition.html=
" target=3D"_blank">SKIP</a> ([fdo#109271]) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_chamelium@dp-hpd-storm-dis=
able.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_color_chamelium@pipe-b-ga=
mma.html" target=3D"_blank">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl7/igt@kms_color_chamelium@pipe-c-ctm=
-max.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_color_chamelium@pipe-d-ct=
m-red-to-blue.html" target=3D"_blank">SKIP</a> ([fdo#109284] / [fdo#111827]=
) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_content_protection@legacy.=
html" target=3D"_blank">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html" tar=
get=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21762/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.=
html" target=3D"_blank">DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-offscreen.html" target=3D"_blank">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-=
512x170-onscreen.html" target=3D"_blank">SKIP</a> ([fdo#109279] / [i915#335=
9]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-64x64-left-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_cursor_edge_walk@pipe-d-6=
4x64-left-edge.html" target=3D"_blank">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-single-bo:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl7/igt@kms_cursor_legacy@pipe-c-single-bo.html" targe=
t=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21762/shard-kbl3/igt@kms_cursor_legacy@pipe-c-single-bo.html=
" target=3D"_blank">DMESG-WARN</a> ([i915#203] / [i915#62] / [i915#92]) +5 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a1.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk6/igt@kms_flip@flip-vs-e=
xpired-vblank-interruptible@c-hdmi-a1.html" target=3D"_blank">FAIL</a> ([i9=
15#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@flip-vs-suspend-inte=
rruptible@c-dp1.html" target=3D"_blank">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-e=
dp1.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@plain-flip-ts-c=
heck-interruptible@a-edp1.html" target=3D"_blank">FAIL</a> ([i915#2122])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-s=
hrfb-draw-mmap-wc.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_frontb=
uffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html" target=3D"_blan=
k">FAIL</a> ([i915#1888] / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p=
>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-mmap-cpu.html" target=3D"_blank">SKIP</a> ([fdo#=
109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-cur-indfb-draw-mmap-cpu.html" target=3D"_blank">SKIP</a> ([f=
do#111825]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-render:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-pri-indfb-draw-render.html" target=3D"_blank">SKIP</a> ([fdo#=
109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21762/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html" target=3D"_blank">FA=
IL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#=
533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#26=
5])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mid:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-mi=
d.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_plane_alpha_blend@pipe=
-a-constant-alpha-mid.html" target=3D"_blank">DMESG-WARN</a> ([i915#180] / =
[i915#203] / [i915#62] / [i915#92]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21762/shard-skl4/igt@kms_plane_alpha_blend@pipe=
-c-constant-alpha-min.html" target=3D"_blank">FAIL</a> ([fdo#108145] / [i91=
5#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-kbl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-1.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#6=
58])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl6/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html" target=3D"=
_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21762/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html" target=
=3D"_blank">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@kms_psr@psr2_cursor_render.ht=
ml" target=3D"_blank">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl3/igt@kms_setmode@basic.html" target=3D"_blank">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
762/shard-apl1/igt@kms_setmode@basic.html" target=3D"_blank">FAIL</a> ([i91=
5#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
" target=3D"_blank">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21762/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuatio=
n-suspend.html" target=3D"_blank">DMESG-WARN</a> ([i915#180] / [i915#295])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_vblank@pipe-d-wait-idle.ht=
ml" target=3D"_blank">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@kms_vrr@flip-suspend.html" ta=
rget=3D"_blank">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl1/igt@nouveau_crc@ctx-flip-threshold=
-reset-after-capture.html" target=3D"_blank">SKIP</a> ([fdo#109271]) +32 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl8/igt@perf_pmu@module-unload.html" target=3D"_blank"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21762/shard-skl6/igt@perf_pmu@module-unload.html" target=3D"_blank">DMES=
G-WARN</a> ([i915#1982] / [i915#262])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_nv_pcopy@test3_5.html" =
target=3D"_blank">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-tglb1/igt@prime_vgem@fence-read-hang.ht=
ml" target=3D"_blank">SKIP</a> ([fdo#109295])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-skl1/igt@sysfs_clients@fair-3.html" tar=
get=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-apl2/igt@sysfs_clients@recycle.html" ta=
rget=3D"_blank">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-iclb6/igt@sysfs_clients@split-25.html" =
target=3D"_blank">SKIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-4/igt@feature_discovery@psr2.html" target=3D"_blank=
">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21762/shard-rkl-6/igt@feature_discovery@psr2.html" target=
=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-4/igt@gem_eio@unwedge-stress.html" target=3D"_blank=
">TIMEOUT</a> ([i915#3063]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21762/shard-rkl-2/igt@gem_eio@unwedge-stress.html" ta=
rget=3D"_blank">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21762/shard-rkl-4/igt@gem_eio@unwedge-stress.html" target=3D"_=
blank">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl3/igt@gem_exec_capture@pi@rcs0.html" target=3D"_blan=
k">INCOMPLETE</a> ([i915#4547]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21762/shard-skl10/igt@gem_exec_capture@pi@rcs0.htm=
l" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk8/igt@gem_exec_fair@basic-deadline.html" target=3D"_=
blank">FAIL</a> ([i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21762/shard-glk4/igt@gem_exec_fair@basic-deadline.ht=
ml" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html" targ=
et=3D"_blank">SKIP</a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21762/shard-apl7/igt@gem_exec_fair@basic-non=
e-share@rcs0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10965/shard-rkl-4/igt@gem_exec_fair@basic-none-solo@rcs0.html" tar=
get=3D"_blank">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10965/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html" tar=
get=3D"_blank">FAIL</a>) ([i915#2842] / [i915#2849]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-1/igt@gem_exe=
c_fair@basic-none-solo@rcs0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html" target=3D=
"_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21762/shard-apl2/igt@gem_exec_fair@basic-none@vecs=
0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html" target=3D"=
_blank">FAIL</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21762/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.=
html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html" targe=
t=3D"_blank">FAIL</a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21762/shard-iclb8/igt@gem_exec_fair@basic-thro=
ttle@rcs0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html" target=
=3D"_blank">DMESG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk7/igt@gem_exec_whisper@basi=
c-forked-all.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl3/igt@gem_workarounds@suspend-resume.html" target=3D=
"_blank">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21762/shard-skl8/igt@gem_workarounds@suspend-=
resume.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-tiling:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html" target=3D"_blank"=
>SKIP</a> ([fdo#109308]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21762/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html" target=
=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html" target=
=3D"_blank">DMESG-FAIL</a> ([i915#118] / [i915#1888]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-glk3/igt@kms_big=
_fb@y-tiled-32bpp-rotate-0.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_=
rc_ccs.html" target=3D"_blank">SKIP</a> ([i915#1845]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/igt@kms_cc=
s@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html" target=3D"_blank">PASS<=
/a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html" target=3D"_blank">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl10/igt@kms_cur=
sor_legacy@flip-vs-cursor-atomic-transitions.html" target=3D"_blank">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p=
>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions-varying-size.html" target=3D"_blank">FAIL</a> ([i915#2346]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-icl=
b2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.htm=
l" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-c-torture-move:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-2/igt@kms_cursor_legacy@pipe-c-torture-move.html" t=
arget=3D"_blank">SKIP</a> ([i915#4070]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-4/igt@kms_cursor_legacy@pi=
pe-c-torture-move.html" target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml" target=3D"_blank">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-kbl6/igt@kms_flip@f=
lip-vs-suspend-interruptible@a-dp1.html" target=3D"_blank">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml" target=3D"_blank">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-apl1/igt@kms_flip@f=
lip-vs-suspend-interruptible@b-dp1.html" target=3D"_blank">PASS</a> +3 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl1/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html" target=3D"_blank">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms_flip@p=
lain-flip-ts-check-interruptible@c-edp1.html" target=3D"_blank">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:</=
p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-shrfb-draw-render.html" target=3D"_blank">SKIP</a> ([i915#4098]) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rk=
l-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.h=
tml" target=3D"_blank">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-blt.html" target=3D"_blank">SKIP</a> ([i915#1849]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-rkl-6/ig=
t@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html" target=
=3D"_blank">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html" target=3D"_bl=
ank">FAIL</a> ([i915#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21762/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html" =
target=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l" target=3D"_blank">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21762/shard-skl1/igt@kms=
_plane_alpha_blend@pipe-b-coverage-7efc.html" target=3D"_blank">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_render:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-rkl-4/igt@kms_psr@cursor_render.html" target=3D"_blank"=
>SKIP</a> ([i915#1072]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21762/shard-rkl-6/igt@kms_psr@cursor_render.html" target=
=3D"_blank">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-iclb6/igt@kms_psr@psr2_cursor_plane_onoff.html" target=
=3D"_blank">SKIP</a> ([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21762/shard-iclb2/igt@kms_psr@psr2_cursor_plan=
e_onoff.html" target=3D"_blank">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-glk3/igt@kms_setmode@basic.html" target=3D"_blank">FAIL=
</a> ([i915#31]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21762/shard-glk1/igt@kms_setmode@basic.html" target=3D"_blank">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@perf@short-reads:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10965/shard-skl10/igt@perf@short-reads.html" target=3D"_blank">FAIL=
</a> ([i915#51]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21762/shard-skl7/igt@perf@short-reads.html" target=3D"_blank">PAS=
S</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gen9_exec_parse@bb-oversize:<ul>
<li>shard-skl:          <a href=3D"https://intel-gf" target=3D"_blank">SKIP=
</a> ([fdo#109271]) -&gt; [SKIP][145] ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
</ul>

</div>

</blockquote></div></div>

--000000000000a435d805d28f02aa--
