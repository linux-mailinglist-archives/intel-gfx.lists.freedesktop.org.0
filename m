Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD37F3AC182
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 05:42:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B3616E39B;
	Fri, 18 Jun 2021 03:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71A1D6E39B
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 03:42:37 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id t17so6669140pga.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 20:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dzQtxeDdCi5sERf+X9qcZUpVNzHVioLFT0F+T5HhlnU=;
 b=iWBrIQ/vpkARwvtZxlelWPFuO63jDp34bn/8cIbATgA8p+3Mrs+depXWgebtvvqVyD
 fnj1thPN61/ZMbTX425SH5cW63N/PNbppMFZ2ScXiHk7tEiJfbD05UjhPfu1F0wZhNVN
 d4vNRZ9+YJvIRpYLQZR3981Vw+SSRV379ejbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dzQtxeDdCi5sERf+X9qcZUpVNzHVioLFT0F+T5HhlnU=;
 b=hXfhkOYRAZMFFJxmvBM5lTQgyloRufSHZLivnDb0cKspRpMKvk899phnRBpI1BTmi1
 /XJ8b5BcrAXpUg5YfLqXg8mrTL0xft4MRfy5+OpbbP3vBlNk501O++/VSnS/sj8Ar37V
 URL3FUXIKFne3NU8lkR8nqxvU0UVRhHpoyLZZookLDEKgXa16zEYbk0T2++yiupmv13T
 elCVoK/rInGZHmbDhUZICV0TnDnb1aqEIxP5PIQDoUjcY3PeieZST1DlYaNAprQr3MPk
 PBL2E5pw2Haom+5wksDanvPhtjvgS68aU1jSXIxWmZbR8c7jDy1cb5hZkrJbtR99GV0v
 21Qw==
X-Gm-Message-State: AOAM533NdvuF2KaUfCJ/vZ5mapANZ5e7bVVgsagi9+abOoAzqEW2ydiq
 zXAyEbrAHU+iVr8UI8J5EEwMKXpB0unahfGN
X-Google-Smtp-Source: ABdhPJxLHZg1J7UicSbrimtusM8mv3Yy39ofCcLCJ08dzo14ZT9ngrWkokFa0YgR5UOJJUNRBJ3rdg==
X-Received: by 2002:a05:6a00:8c4:b029:2b4:8334:ed4d with SMTP id
 s4-20020a056a0008c4b02902b48334ed4dmr2882512pfu.36.1623987756542; 
 Thu, 17 Jun 2021 20:42:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id d8sm6853740pfq.198.2021.06.17.20.42.35
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 20:42:36 -0700 (PDT)
Date: Thu, 17 Jun 2021 20:42:34 -0700
From: Kees Cook <keescook@chromium.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <202106172041.65F4D8926@keescook>
References: <20210617213301.1824728-1-keescook@chromium.org>
 <162397790228.1293.7817119247658635597@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162397790228.1293.7817119247658635597@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Do_not_zero_past_infoframes=2Evsc?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 18, 2021 at 12:58:22AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Do not zero past infoframes.vsc
> URL   : https://patchwork.freedesktop.org/series/91650/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10239_full -> Patchwork_20405_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20405_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20405_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.

Err, it's not clear to me if my patch caused this? There's a long "known
issues" section here. If it _did_ cause it, then the code depended on
the large clobber and some other solution is needed?

-Kees

> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20405_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
>     - shard-iclb:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb3/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb5/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20405_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl8/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1099]) +5 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2410])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-snb:          NOTRUN -> [FAIL][7] ([i915#3354])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-snb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][8] -> [FAIL][9] ([i915#2842]) +3 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([fdo#112283])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#307]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][17] ([i915#2658])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#768])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([fdo#109289]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-skl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#658])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         NOTRUN -> [WARN][21] ([i915#2684])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][22] ([i915#2782])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-snb6/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271]) +36 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl6/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [PASS][24] -> [DMESG-WARN][25] ([i915#118] / [i915#95]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110725] / [fdo#111614])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-iclb:         [PASS][27] -> [DMESG-FAIL][28] ([i915#1226])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb7/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb6/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111614])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_chamelium@dp-crc-multiple:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@kms_chamelium@dp-crc-multiple.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl6/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@hdmi-audio-edid:
>     - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@kms_chamelium@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +16 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl6/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_color@pipe-b-ctm-green-to-red:
>     - shard-skl:          [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl9/igt@kms_color@pipe-b-ctm-green-to-red.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl2/igt@kms_color@pipe-b-ctm-green-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-0-5:
>     - shard-snb:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-snb2/igt@kms_color_chamelium@pipe-d-ctm-0-5.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3319])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@kms_cursor_crc@pipe-c-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +116 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278]) +7 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
>     - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271]) +426 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109274] / [fdo#109278])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2346] / [i915#533])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][47] -> [INCOMPLETE][48] ([i915#180] / [i915#1982])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +2 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:
>     - shard-glk:          [PASS][51] -> [FAIL][52] ([i915#2122])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_tiling@flip-yf-tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#111615])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@kms_flip_tiling@flip-yf-tiled.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109280]) +7 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-tglb:         [PASS][55] -> [DMESG-WARN][56] ([i915#2868])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#111825]) +10 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#1187])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
>     - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][62] ([i915#265])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][64] ([i915#265])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
>     - shard-iclb:         NOTRUN -> [SKIP][66] ([i915#658]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +3 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2920])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr@psr2_cursor_plane_onoff:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109441])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_psr@psr2_cursor_plane_onoff.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441]) +2 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-kbl:          [PASS][73] -> [INCOMPLETE][74] ([i915#155] / [i915#2828] / [i915#794])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2437])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl2/igt@kms_writeback@writeback-check-output.html
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#2437])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl8/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@nouveau_crc@pipe-a-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#2530])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@nouveau_crc@pipe-a-source-rg.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271]) +170 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html
> 
>   * igt@nouveau_crc@pipe-b-source-outp-inactive:
>     - shard-tglb:         NOTRUN -> [SKIP][80] ([i915#2530])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb1/igt@nouveau_crc@pipe-b-source-outp-inactive.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109289]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109291])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109292])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl6/igt@sysfs_clients@create.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][86] ([i915#2369] / [i915#3063]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb8/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-apl:          [SKIP][88] ([fdo#109271]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91] +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
>     - shard-glk:          [FAIL][94] -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-glk2/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-glk9/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          [INCOMPLETE][96] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [DMESG-WARN][98] ([i915#180]) -> [PASS][99] +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [FAIL][100] ([fdo#108145] / [i915#265]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-iclb:         [SKIP][102] ([fdo#109441]) -> [PASS][103] +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb4/igt@kms_psr@psr2_primary_mmap_gtt.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][104] ([i915#180] / [i915#295]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-kbl:          [DMESG-WARN][106] ([i915#180]) -> [PASS][107] +2 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][108] ([i915#198] / [i915#2405]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl8/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@prime_vgem@sync@vcs0:
>     - shard-skl:          [INCOMPLETE][110] ([i915#409]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@prime_vgem@sync@vcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl6/igt@prime_vgem@sync@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          [SKIP][112] ([fdo#109271]) -> [FAIL][113] ([i915#2842])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][114] ([i915#1804] / [i915#2684]) -> [WARN][115] ([i915#2684])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-iclb:         [SKIP][116] ([i915#658]) -> [SKIP][117] ([i915#2920]) +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
>     - shard-iclb:         [SKIP][118] ([i915#2920]) -> [SKIP][119] ([i915#658]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl1/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl3/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl4/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-kbl3/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl2/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl4/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl1/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-kbl2/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][130], [FAIL][131], [FAIL][132]) ([i915#2426] / [i915#3002] / [i915#3363] / [i915#409]) -> [FAIL][133] ([i915#3002] / [i915#3363])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl5/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10239/shard-skl6/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/shard-skl4/igt@runner@aborted.html
> 
>   
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109292]: https://bugs.freedesktop.org/show_bug.cgi?id=109292
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1187]: https://gitlab.freedesktop.org/drm/intel/issues/1187
>   [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#198]: https://gitlab.freedesktop.org/drm/in
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20405/index.html

-- 
Kees Cook
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
