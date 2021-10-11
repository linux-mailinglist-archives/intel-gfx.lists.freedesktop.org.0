Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ED4429723
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 20:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DFC6E92B;
	Mon, 11 Oct 2021 18:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDFEC6E92B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Oct 2021 18:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1633978240;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FrZ937J28kuZsk3+qCYyREKxIs+E2wjDeqfNIm71uDk=;
 b=HuoMMiQOfG7Oa64rgsbe3Oo2YeAcynJN7jSNuz5ocgOpZhs6zzwifd4kI0ivIoW1zTxbzj
 xGFLOTV2qDV7Lh1vPDFOSdT1waxi1bzEnDLeD/swht4OIMIUj+XV96XUOnaSYyjGzryHNj
 NLbWnM6SLC0aV+2zrgHY6H1mN7pLzHE=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-522-Fl0ilNz8Pa2D_SsXISRpIQ-1; Mon, 11 Oct 2021 14:50:28 -0400
X-MC-Unique: Fl0ilNz8Pa2D_SsXISRpIQ-1
Received: by mail-qv1-f70.google.com with SMTP id
 s12-20020ad44b2c000000b00383ab64e632so1001919qvw.17
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Oct 2021 11:50:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=ujgQz1hBVn8AOr/9HpYTGqs1g3l6gSOxiit4OEoBvLo=;
 b=OycQnupm74QxRCRtpgGIf59vWb8AIwmrRufK/TnjJ2VJkHAWuvJzvq1topIDYhbd7k
 J6lIr/05fk1s8Kv4/szfKRNBgu3y8Tne9r8ZG4awa3ypcE2VdM+kf8Shmqt4ShUoLHw+
 lH2VLFobA5pWfiGJ8hvkhA5zGby0mNX0H0BfYKVf4SI9sPmm5d31lZnboTCJ+KkvlA9L
 yBrh8VjNj8Ldwlyf11zgwspUMR4cXKFYkVaebDgsIPDoyY0PpG7PhekE7Guvqro1kT+o
 BV8dPNuITJfdO8QtpUHKmIWpfP+425JkJSElG0aVUs+6PdXA8H4pXfjjhbeIxvYdisIl
 e8OQ==
X-Gm-Message-State: AOAM5333CjJsn4XN7+MbK/jYuMrzDu9my5PsvsMDE90gjuXc2v2lTSgs
 3watCeS2Ts8sH2XdZAxyCZ19hwBz8EMIneESglMFtu7lJq394D8ETi3qdFOFwmgddQTXs7TLclE
 eM6pSDzewNYs+I9+vjGmKK/uR+7X6A1K+LlYH3hviM/Gs8IJNA9YTQAmJHQfs74bS0snIQwdDcu
 2E
X-Received: by 2002:a05:6214:d8c:: with SMTP id
 e12mr18878958qve.14.1633978228216; 
 Mon, 11 Oct 2021 11:50:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxtLqkq8vTS0hQOboMxuil07kWffJ2Keub35iFjLfbhU8ZD/v2JpVpc+VJMLJmm1tcLiGAeeQ==
X-Received: by 2002:a05:6214:d8c:: with SMTP id
 e12mr18878922qve.14.1633978227783; 
 Mon, 11 Oct 2021 11:50:27 -0700 (PDT)
Received: from [192.168.8.206] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id c6sm4615468qkg.85.2021.10.11.11.50.26
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Oct 2021 11:50:27 -0700 (PDT)
Message-ID: <d7b0e9e66d0108d6aac42bf3b016e37fe4eacb5f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Oct 2021 14:50:24 -0400
In-Reply-To: <163374468266.8824.1917164436964374368@emeril.freedesktop.org>
References: <20211006024018.320394-1-lyude@redhat.com>
 <163374468266.8824.1917164436964374368@emeril.freedesktop.org>
Organization: Red Hat
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="=-bQ3MImKCFpZaKGYuL01L"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_drm/i915=3A_Finish_basic_PWM_support_for_VESA_backlight_?=
 =?utf-8?q?helpers_=28rev8=29?=
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

--=-bQ3MImKCFpZaKGYuL01L
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

ok - CI on this failed like, multiple times last week - each time with
something slightly different and pretty clearly not related, so I'm going to
give this one last shot at retesting now that some time has passed - otherwise
I'll just file some bugs.

On Sat, 2021-10-09 at 01:58 +0000, Patchwork wrote:
> Patch Details
> Series:drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers
> (rev8)URL:https://patchwork.freedesktop.org/series/95127/State:failure
> Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/index.html
> CI Bug Log - changes from CI_DRM_10700_full -> Patchwork_21296_fullSummaryFAILURE
> Serious unknown changes coming with Patchwork_21296_full absolutely need to
> be
> verified manually.
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21296_full, please notify your bug team to allow
> them
> to document this new failure mode, which will reduce false positives in CI.
> Possible new issuesHere are the unknown changes that may have been introduced in
> Patchwork_21296_full:
> IGT changesPossible regressions * igt@i915_pm_dc@dc9-dpms:shard-tglb: NOTRUN -> SKIPshard-iclb: NOTRUN ->
>    SKIP
>  * igt@i915_suspend@debugfs-reader:shard-kbl: PASS -> INCOMPLETE
> Known issuesHere are the changes found in Patchwork_21296_full that come from known
> issues:
> IGT changesIssues hit * igt@gem_ctx_isolation@preservation-s3@rcs0:shard-apl: NOTRUN -> DMESG-WARN
>    ([i915#180]) +1 similar issue
>  * igt@gem_ctx_persistence@legacy-engines-queued:shard-snb: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#1099]) +1 similar issue
>  * igt@gem_eio@unwedge-stress:shard-tglb: PASS -> TIMEOUT ([i915#2369] /
>    [i915#3063] / [i915#3648])
>  * igt@gem_exec_fair@basic-deadline:shard-apl: NOTRUN -> FAIL ([i915#2846])
>  * igt@gem_exec_fair@basic-none-share@rcs0:shard-kbl: PASS -> SKIP
>    ([fdo#109271])
>  * igt@gem_exec_fair@basic-none-solo@rcs0:shard-kbl: NOTRUN -> FAIL
>    ([i915#2842])
>  * igt@gem_exec_fair@basic-none@rcs0:shard-kbl: PASS -> FAIL ([i915#2842]) +1
>    similar issue
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:shard-iclb: NOTRUN -> FAIL
>    ([i915#2842]) +2 similar issues
>  * igt@gem_exec_fair@basic-throttle@rcs0:shard-glk: NOTRUN -> FAIL
>    ([i915#2842])
>  * igt@gem_huc_copy@huc-copy:shard-apl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#2190])
>  * igt@gem_pwrite@basic-exhaustion:shard-glk: NOTRUN -> WARN ([i915#2658])
>  * igt@gem_pxp@reject-modify-context-protection-off-2:shard-iclb: NOTRUN ->
>    SKIP ([i915#4270])
>  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:shard-glk: NOTRUN ->
>    SKIP ([fdo#109271]) +36 similar issues
>  * igt@gem_userptr_blits@dmabuf-sync:shard-kbl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#3323])
>  * igt@gen9_exec_parse@batch-invalid-length:shard-iclb: NOTRUN -> SKIP
>    ([i915#2856])
>  * igt@i915_pm_dc@dc6-psr:shard-iclb: PASS -> FAIL ([i915#454])
>  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:shard-apl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#1937])
>  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:shard-glk: NOTRUN -> DMESG-WARN
>    ([i915#118])
>  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:shard-iclb: NOTRUN -> SKIP
>    ([fdo#110725] / [fdo#111614])
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:shard-kbl:
>    NOTRUN -> SKIP ([fdo#109271] / [i915#3777]) +1 similar issue
>  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:shard-apl:
>    NOTRUN -> SKIP ([fdo#109271] / [i915#3777]) +1 similar issue
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-
>    flip:shard-kbl: NOTRUN -> SKIP ([fdo#109271]) +144 similar issues
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:shard-apl: NOTRUN ->
>    SKIP ([fdo#109271]) +272 similar issues
>  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:shard-apl: NOTRUN
>    -> SKIP ([fdo#109271] / [i915#3886]) +19 similar issues
>  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:shard-
>    skl: NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +1 similar issue
>  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:shard-kbl:
>    NOTRUN -> SKIP ([fdo#109271] / [i915#3886]) +6 similar issues
>  * igt@kms_chamelium@hdmi-hpd-for-each-pipe:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271] / [fdo#111827]) +9 similar issues
>  * igt@kms_chamelium@vga-hpd:shard-apl: NOTRUN -> SKIP ([fdo#109271] /
>    [fdo#111827]) +26 similar issues
>  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:shard-snb: NOTRUN -> SKIP
>    ([fdo#109271] / [fdo#111827]) +16 similar issues
>  * igt@kms_color_chamelium@pipe-b-ctm-0-5:shard-glk: NOTRUN -> SKIP
>    ([fdo#109271] / [fdo#111827]) +2 similar issues
>  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:shard-skl: NOTRUN -> SKIP
>    ([fdo#109271] / [fdo#111827]) +5 similar issues
>  * igt@kms_content_protection@legacy:shard-kbl: NOTRUN -> TIMEOUT
>    ([i915#1319])
>  * igt@kms_content_protection@lic:shard-apl: NOTRUN -> TIMEOUT ([i915#1319])
>  * igt@kms_content_protection@uevent:shard-kbl: NOTRUN -> FAIL ([i915#2105])
>  * igt@kms_cursor_crc@pipe-b-cursor-32x32-sliding:shard-iclb: NOTRUN -> SKIP
>    ([fdo#109278]) +4 similar issues
>  * igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:shard-tglb: NOTRUN
>    -> SKIP ([i915#3359])
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:shard-skl: PASS ->
>    FAIL ([i915#2346])
>  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:shard-
>    skl: PASS -> FAIL ([i915#2346] / [i915#533])
>  * igt@kms_fbcon_fbt@fbc-suspend:shard-kbl: PASS -> INCOMPLETE ([i915#180] /
>    [i915#636])
>  * igt@kms_fbcon_fbt@psr-suspend:shard-skl: PASS -> INCOMPLETE ([i915#146] /
>    [i915#198])
>  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:shard-glk: PASS
>    -> FAIL ([i915#79]) +1 similar issue
>  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:shard-skl: PASS -> FAIL
>    ([i915#79])
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:shard-snb:
>    NOTRUN -> SKIP ([fdo#109271]) +383 similar issues
>  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:shard-skl: NOTRUN -
>    > INCOMPLETE ([i915#3699])
>  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:shard-
>    iclb: NOTRUN -> SKIP ([fdo#109280])
>  * igt@kms_hdr@bpc-switch:shard-skl: PASS -> FAIL ([i915#1188])
>  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:shard-apl: NOTRUN ->
>    SKIP ([fdo#109271] / [i915#533]) +1 similar issue
>  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:shard-glk: NOTRUN ->
>    SKIP ([fdo#109271] / [i915#533])
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:shard-kbl: PASS -> DMESG-
>    WARN ([i915#180]) +4 similar issues
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:shard-kbl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#533])
>  * igt@kms_plane@pixel-format-source-clamping@pipe-a-planes:shard-skl: NOTRUN
>    -> SKIP ([fdo#109271]) +100 similar issues
>  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:shard-skl: NOTRUN -> FAIL
>    ([fdo#108145] / [i915#265])
>  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:shard-apl: NOTRUN -> FAIL
>    ([fdo#108145] / [i915#265])
>  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:shard-apl: NOTRUN ->
>    FAIL ([i915#265]) +1 similar issue
>  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:shard-glk: NOTRUN -> FAIL
>    ([fdo#108145] / [i915#265])
>  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:shard-skl: PASS -> FAIL
>    ([fdo#108145] / [i915#265]) +1 similar issue
>  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:shard-apl: NOTRUN ->
>    SKIP ([fdo#109271] / [i915#658]) +4 similar issuesshard-skl: NOTRUN -> SKIP
>    ([fdo#109271] / [i915#658])
>  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:shard-kbl: NOTRUN ->
>    SKIP ([fdo#109271] / [i915#658]) +2 similar issues
>  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:shard-glk: NOTRUN ->
>    SKIP ([fdo#109271] / [i915#658])
>  * igt@kms_psr@psr2_cursor_plane_move:shard-iclb: PASS -> SKIP ([fdo#109441])
>    +2 similar issues
>  * igt@kms_setmode@clone-exclusive-crtc:shard-skl: NOTRUN -> WARN
>    ([i915#2100])
>  * igt@perf@blocking:shard-skl: PASS -> FAIL ([i915#1542])
>  * igt@sysfs_clients@recycle:shard-apl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#2994]) +1 similar issueshard-skl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#2994])
>  * igt@sysfs_clients@recycle-many:shard-glk: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#2994])
>  * igt@sysfs_clients@split-50:shard-kbl: NOTRUN -> SKIP ([fdo#109271] /
>    [i915#2994]) +2 similar issues
> Possible fixes * igt@gem_eio@in-flight-contexts-1us:shard-iclb: TIMEOUT ([i915#3070]) ->
>    PASS
>  * igt@gem_exec_fair@basic-flow@rcs0:shard-tglb: FAIL ([i915#2842]) -> PASS +2
>    similar issuesshard-glk: FAIL ([i915#2842]) -> PASS
>  * igt@gem_exec_fair@basic-none-rrul@rcs0:shard-iclb: FAIL ([i915#2842]) ->
>    PASS
>  * igt@gem_exec_fair@basic-pace-solo@rcs0:shard-kbl: FAIL ([i915#2842]) ->
>    PASS
>  * igt@gem_huc_copy@huc-copy:shard-tglb: SKIP ([i915#2190]) -> PASS
>  * igt@gen9_exec_parse@allowed-single:shard-skl: DMESG-WARN ([i915#1436] /
>    [i915#716]) -> PASS
>  * igt@i915_pm_dc@dc6-dpms:shard-iclb: FAIL ([i915#454]) -> PASS
>  * igt@i915_pm_rpm@system-suspend:shard-skl: INCOMPLETE ([i915#151]) -> PASS
>  * igt@kms_async_flips@alternate-sync-async-flip:shard-skl: FAIL ([i915#2521])
>    -> PASS
>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:shard-glk: DMESG-WARN ([i915#118]) -
>    > PASS
>  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:shard-skl: FAIL ([i915#79]) ->
>    PASS
>  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:shard-skl: FAIL ([i915#2122]) ->
>    PASS
>  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:shard-kbl:
>    DMESG-WARN ([i915#180]) -> PASS +5 similar issues
>  * igt@perf@polling-parameterized:shard-glk: FAIL ([i915#1542]) -> PASSshard-
>    skl: FAIL ([i915#1542]) -> PASS
> Warnings * igt@i915_pm_rc6_residency@rc6-idle:shard-iclb: WARN ([i915#2684]) -> WARN
>    ([i915#1804] / [i915#2684])
>  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:shard-iclb: SKIP
>    ([i915#2920]) -> SKIP ([i915#658]) +3 similar issues
>  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:shard-iclb: SKIP
>    ([i915#658]) -> SKIP ([i915#2920]) +1 similar issue
>  * igt@runner@aborted:shard-kbl: (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL)
>    ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) ->
>    (FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL, FAIL) ([i915#180] /
>    [i915#1814] / [i915#3002] / [i915#3363] / [i915#92])shard-apl: (FAIL, FAIL,
>    FAIL) ([fdo#109271] / [i915#1814] / [i915#3002] / [i915#3363]) -> (FAIL,
>    FAIL, FAIL) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])shard-
>    skl: ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1436] /
>    [i915#2029] / [i915#3002] / [i915#3363]) -> ([FAIL][151], [FAIL][152]) ([i

-- 
Cheers,
Lyude Paul (she/her)
Software Engineer at Red Hat

--=-bQ3MImKCFpZaKGYuL01L
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
 =20
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body><div>ok - CI on this failed like, multiple times last week - each tim=
e with something slightly different and pretty clearly not related, so I'm =
going to give this one last shot at retesting now that some time has passed=
 - otherwise I'll just file some bugs.</div><div><br></div><div>On Sat, 202=
1-10-09 at 01:58 +0000, Patchwork wrote:</div><blockquote type=3D"cite" sty=
le=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><d=
iv><b>Patch Details</b></div><div><table><tbody><tr><td><b>Series:</b></td>=
<td>drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers (=
rev8)</td></tr><tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.fre=
edesktop.org/series/95127/">https://patchwork.freedesktop.org/series/95127/=
</a></td></tr><tr><td><b>State:</b></td><td>failure</td></tr> <tr><td><b>De=
tails:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21296/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21296/index.html</a></td></tr></tbody></table> </div><h1>CI Bug Log - chang=
es from CI_DRM_10700_full -&gt; Patchwork_21296_full</h1><h2>Summary</h2><p=
><strong>FAILURE</strong></p><p>Serious unknown changes coming with Patchwo=
rk_21296_full absolutely need to be<br> verified manually.</p><p>If you thi=
nk the reported changes have nothing to do with the changes<br> introduced =
in Patchwork_21296_full, please notify your bug team to allow them<br> to d=
ocument this new failure mode, which will reduce false positives in CI.</p>=
<h2>Possible new issues</h2><p>Here are the unknown changes that may have b=
een introduced in Patchwork_21296_full:</p><h3>IGT changes</h3><h4>Possible=
 regressions</h4><ul><li><p>igt@i915_pm_dc@dc9-dpms:</p><ul><li><p>shard-tg=
lb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21296/shard-tglb6/igt@i915_pm_dc@dc9-dpms.html">SKIP</a></p></li><li><p=
>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21296/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a></p></=
li></ul></li><li><p>igt@i915_suspend@debugfs-reader:</p><ul><li>shard-kbl: =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-kbl6=
/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl3/igt@i915_suspend@=
debugfs-reader.html">INCOMPLETE</a></li></ul></li></ul><h2>Known issues</h2=
><p>Here are the changes found in Patchwork_21296_full that come from known=
 issues:</p><h3>IGT changes</h3><h4>Issues hit</h4><ul><li><p>igt@gem_ctx_i=
solation@preservation-s3@rcs0:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl1/igt=
@gem_ctx_isolation@preservation-s3@rcs0.html">DMESG-WARN</a> ([i915#180]) +=
1 similar issue</li></ul></li><li><p>igt@gem_ctx_persistence@legacy-engines=
-queued:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_21296/shard-snb5/igt@gem_ctx_persistence@leg=
acy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar i=
ssue</li></ul></li><li><p>igt@gem_eio@unwedge-stress:</p><ul><li>shard-tglb=
: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-tg=
lb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-tglb5/igt@gem_eio@unwedg=
e-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648])</li></=
ul></li><li><p>igt@gem_exec_fair@basic-deadline:</p><ul><li>shard-apl: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2129=
6/shard-apl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])<=
/li></ul></li><li><p>igt@gem_exec_fair@basic-none-share@rcs0:</p><ul><li>sh=
ard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/s=
hard-kbl4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl6/=
igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271])</li><=
/ul></li><li><p>igt@gem_exec_fair@basic-none-solo@rcs0:</p><ul><li>shard-kb=
l: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21296/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (=
[i915#2842])</li></ul></li><li><p>igt@gem_exec_fair@basic-none@rcs0:</p><ul=
><li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10700/shard-kbl7/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl1=
/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +1 similar =
issue</li></ul></li><li><p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p><ul><=
li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21296/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.htm=
l">FAIL</a> ([i915#2842]) +2 similar issues</li></ul></li><li><p>igt@gem_ex=
ec_fair@basic-throttle@rcs0:</p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-glk7/igt@gem=
_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li></ul></li><=
li><p>igt@gem_huc_copy@huc-copy:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl1/igt=
@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li></ul=
></li><li><p>igt@gem_pwrite@basic-exhaustion:</p><ul><li>shard-glk: NOTRUN =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/s=
hard-glk7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>=
</ul></li><li><p>igt@gem_pxp@reject-modify-context-protection-off-2:</p><ul=
><li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21296/shard-iclb3/igt@gem_pxp@reject-modify-context-protec=
tion-off-2.html">SKIP</a> ([i915#4270])</li></ul></li><li><p>igt@gem_render=
_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p><ul><li>shard-glk: NOTRUN -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-g=
lk7/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html">SKIP</a> ([f=
do#109271]) +36 similar issues</li></ul></li><li><p>igt@gem_userptr_blits@d=
mabuf-sync:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl4/igt@gem_userptr_blits@dm=
abuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li></ul></li><li><p>=
igt@gen9_exec_parse@batch-invalid-length:</p><ul><li>shard-iclb: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shar=
d-iclb3/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([i915#2856=
])</li></ul></li><li><p>igt@i915_pm_dc@dc6-psr:</p><ul><li>shard-iclb: <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-iclb2/ig=
t@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_21296/shard-iclb2/igt@i915_pm_dc@dc6-psr.html"=
>FAIL</a> ([i915#454])</li></ul></li><li><p>igt@i915_pm_lpsp@kms-lpsp@kms-l=
psp-dp:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21296/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@km=
s-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li></ul></li><li><p>=
igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p><ul><li>shard-glk: NOTRUN -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-=
glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#11=
8])</li></ul></li><li><p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p><ul><l=
i>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21296/shard-iclb3/igt@kms_big_fb@x-tiled-64bpp-rotate-270.htm=
l">SKIP</a> ([fdo#110725] / [fdo#111614])</li></ul></li><li><p>igt@kms_big_=
fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p><ul><li>shard-kbl: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2129=
6/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.ht=
ml">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li></ul></li><l=
i><p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p><ul><l=
i>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21296/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-ro=
tate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue=
</li></ul></li><li><p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-=
hflip-async-flip:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl2/igt@kms_big_fb@yf-=
tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#10=
9271]) +144 similar issues</li></ul></li><li><p>igt@kms_big_fb@yf-tiled-max=
-hw-stride-64bpp-rotate-0:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl6/igt@kms_b=
ig_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +=
272 similar issues</li></ul></li><li><p>igt@kms_ccs@pipe-a-ccs-on-another-b=
o-y_tiled_gen12_mc_ccs:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl6/igt@kms_ccs@=
pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] =
/ [i915#3886]) +19 similar issues</li></ul></li><li><p>igt@kms_ccs@pipe-a-c=
rc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p><ul><li>shard-skl: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2129=
6/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_c=
cs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li></ul=
></li><li><p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_c=
cs:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21296/shard-kbl4/igt@kms_ccs@pipe-c-crc-primary-r=
otation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]=
) +6 similar issues</li></ul></li><li><p>igt@kms_chamelium@hdmi-hpd-for-eac=
h-pipe:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21296/shard-kbl3/igt@kms_chamelium@hdmi-hpd-f=
or-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues=
</li></ul></li><li><p>igt@kms_chamelium@vga-hpd:</p><ul><li>shard-apl: NOTR=
UN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2129=
6/shard-apl3/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#=
111827]) +26 similar issues</li></ul></li><li><p>igt@kms_color_chamelium@pi=
pe-a-ctm-blue-to-red:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-snb2/igt@kms_color_=
chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827=
]) +16 similar issues</li></ul></li><li><p>igt@kms_color_chamelium@pipe-b-c=
tm-0-5:</p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21296/shard-glk7/igt@kms_color_chamelium@pipe=
-b-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</=
li></ul></li><li><p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p><ul>=
<li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21296/shard-skl4/igt@kms_color_chamelium@pipe-d-ctm-red-to-b=
lue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li></ul=
></li><li><p>igt@kms_content_protection@legacy:</p><ul><li>shard-kbl: NOTRU=
N -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296=
/shard-kbl4/igt@kms_content_protection@legacy.html">TIMEOUT</a> ([i915#1319=
])</li></ul></li><li><p>igt@kms_content_protection@lic:</p><ul><li>shard-ap=
l: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21296/shard-apl3/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915=
#1319])</li></ul></li><li><p>igt@kms_content_protection@uevent:</p><ul><li>=
shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21296/shard-kbl2/igt@kms_content_protection@uevent.html">FAIL</a=
> ([i915#2105])</li></ul></li><li><p>igt@kms_cursor_crc@pipe-b-cursor-32x32=
-sliding:</p><ul><li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21296/shard-iclb3/igt@kms_cursor_crc@pipe-=
b-cursor-32x32-sliding.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>=
</ul></li><li><p>igt@kms_cursor_crc@pipe-d-cursor-512x170-rapid-movement:</=
p><ul><li>shard-tglb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21296/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-51=
2x170-rapid-movement.html">SKIP</a> ([i915#3359])</li></ul></li><li><p>igt@=
kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p><ul><li>shard-skl: =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-skl7=
/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shar=
d-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</=
a> ([i915#2346])</li></ul></li><li><p>igt@kms_cursor_legacy@flip-vs-cursor-=
atomic-transitions-varying-size:</p><ul><li>shard-skl: <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-skl10/igt@kms_cursor_leg=
acy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-skl8=
/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html"=
>FAIL</a> ([i915#2346] / [i915#533])</li></ul></li><li><p>igt@kms_fbcon_fbt=
@fbc-suspend:</p><ul><li>shard-kbl: <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_10700/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21296/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#=
180] / [i915#636])</li></ul></li><li><p>igt@kms_fbcon_fbt@psr-suspend:</p><=
ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10700/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-skl2/i=
gt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a> ([i915#146] / [i915#198])=
</li></ul></li><li><p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-h=
dmi-a2:</p><ul><li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_10700/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21296/shard-glk3/igt@kms_flip@flip-vs-expired-vblan=
k-interruptible@b-hdmi-a2.html">FAIL</a> ([i915#79]) +1 similar issue</li><=
/ul></li><li><p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p><ul><li>shar=
d-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/sha=
rd-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-skl4=
/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> ([i915#79])</li>=
</ul></li><li><p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile=
:</p><ul><li>shard-snb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21296/shard-snb6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271]) +383 similar issues<=
/li></ul></li><li><p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytil=
e:</p><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21296/shard-skl4/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-16bpp-ytile.html">INCOMPLETE</a> ([i915#3699])</li></ul></li><li=
><p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:</p>=
<ul><li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21296/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-p=
rimscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109280])</li></ul></li><=
li><p>igt@kms_hdr@bpc-switch:</p><ul><li>shard-skl: <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-skl10/igt@kms_hdr@bpc-switc=
h.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21296/shard-skl8/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#118=
8])</li></ul></li><li><p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pip=
e-d:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21296/shard-apl2/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 simila=
r issue</li></ul></li><li><p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-=
pipe-d:</p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21296/shard-glk7/igt@kms_pipe_crc_basic@disab=
le-crc-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li></u=
l></li><li><p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p><ul><li>sh=
ard-kbl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/s=
hard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shar=
d-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> =
([i915#180]) +4 similar issues</li></ul></li><li><p>igt@kms_pipe_crc_basic@=
suspend-read-crc-pipe-d:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl4/igt@kms_pip=
e_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#53=
3])</li></ul></li><li><p>igt@kms_plane@pixel-format-source-clamping@pipe-a-=
planes:</p><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21296/shard-skl4/igt@kms_plane@pixel-format-s=
ource-clamping@pipe-a-planes.html">SKIP</a> ([fdo#109271]) +100 similar iss=
ues</li></ul></li><li><p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p=
><ul><li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21296/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-cover=
age-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li></ul></li><li><p>ig=
t@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p><ul><li>shard-apl: NOTRUN -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shar=
d-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108=
145] / [i915#265])</li></ul></li><li><p>igt@kms_plane_alpha_blend@pipe-b-al=
pha-transparent-fb:</p><ul><li>shard-apl: NOTRUN -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl6/igt@kms_plane_al=
pha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 simila=
r issue</li></ul></li><li><p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:<=
/p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21296/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alp=
ha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li></ul></li><li><p>ig=
t@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p><ul><li>shard-skl: <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-skl1/igt@km=
s_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-skl3/igt@kms_p=
lane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#=
265]) +1 similar issue</li></ul></li><li><p>igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area-2:</p><ul><li><p>shard-apl: NOTRUN -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl6/igt@kms_psr2=
_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915=
#658]) +4 similar issues</p></li><li><p>shard-skl: NOTRUN -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-skl4/igt@kms=
_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / =
[i915#658])</p></li></ul></li><li><p>igt@kms_psr2_sf@overlay-plane-update-s=
f-dmg-area-4:</p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl3/igt@kms_psr2_sf@overla=
y-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 =
similar issues</li></ul></li><li><p>igt@kms_psr2_sf@primary-plane-update-sf=
-dmg-area-1:</p><ul><li>shard-glk: NOTRUN -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21296/shard-glk7/igt@kms_psr2_sf@primary=
-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>=
</ul></li><li><p>igt@kms_psr@psr2_cursor_plane_move:</p><ul><li>shard-iclb:=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-icl=
b2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-iclb3/igt@kms_psr=
@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]) +2 similar issues</li=
></ul></li><li><p>igt@kms_setmode@clone-exclusive-crtc:</p><ul><li>shard-sk=
l: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21296/shard-skl4/igt@kms_setmode@clone-exclusive-crtc.html">WARN</a> ([i=
915#2100])</li></ul></li><li><p>igt@perf@blocking:</p><ul><li>shard-skl: <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-skl5/i=
gt@perf@blocking.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_21296/shard-skl9/igt@perf@blocking.html">FAIL</a> =
([i915#1542])</li></ul></li><li><p>igt@sysfs_clients@recycle:</p><ul><li><p=
>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21296/shard-apl6/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo=
#109271] / [i915#2994]) +1 similar issue</p></li><li><p>shard-skl: NOTRUN -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/sh=
ard-skl4/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo#109271] / [i915#299=
4])</p></li></ul></li><li><p>igt@sysfs_clients@recycle-many:</p><ul><li>sha=
rd-glk: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21296/shard-glk7/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fd=
o#109271] / [i915#2994])</li></ul></li><li><p>igt@sysfs_clients@split-50:</=
p><ul><li>shard-kbl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21296/shard-kbl4/igt@sysfs_clients@split-50.html">SKIP=
</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li></ul></li></ul><h4>=
Possible fixes</h4><ul><li><p>igt@gem_eio@in-flight-contexts-1us:</p><ul><l=
i>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10=
700/shard-iclb8/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915=
#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21296/shard-iclb7/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></li></=
ul></li><li><p>igt@gem_exec_fair@basic-flow@rcs0:</p><ul><li><p>shard-tglb:=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-tgl=
b1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-tglb=
8/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +2 similar issues</p></l=
i><li><p>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10700/shard-glk7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i91=
5#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21296/shard-glk5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></p></li=
></ul></li><li><p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p><ul><li>shard-=
iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shar=
d-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/=
shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS</a></li></ul>=
</li><li><p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p><ul><li>shard-kbl: <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-kbl1/=
igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kb=
l3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li></ul></li><li>=
<p>igt@gem_huc_copy@huc-copy:</p><ul><li>shard-tglb: <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-tglb6/igt@gem_huc_copy@huc=
-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_21296/shard-tglb2/igt@gem_huc_copy@huc-copy.htm=
l">PASS</a></li></ul></li><li><p>igt@gen9_exec_parse@allowed-single:</p><ul=
><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10700/shard-skl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([=
i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21296/shard-skl2/igt@gen9_exec_parse@allowed-single.html"=
>PASS</a></li></ul></li><li><p>igt@i915_pm_dc@dc6-dpms:</p><ul><li>shard-ic=
lb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-=
iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-iclb5/igt@i9=
15_pm_dc@dc6-dpms.html">PASS</a></li></ul></li><li><p>igt@i915_pm_rpm@syste=
m-suspend:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10700/shard-skl10/igt@i915_pm_rpm@system-suspend.html">INC=
OMPLETE</a> ([i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21296/shard-skl8/igt@i915_pm_rpm@system-suspend.html">PAS=
S</a></li></ul></li><li><p>igt@kms_async_flips@alternate-sync-async-flip:</=
p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10700/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html">F=
AIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21296/shard-skl3/igt@kms_async_flips@alternate-sync-async-fl=
ip.html">PASS</a></li></ul></li><li><p>igt@kms_big_fb@yf-tiled-16bpp-rotate=
-0:</p><ul><li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_10700/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">DME=
SG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21296/shard-glk5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.h=
tml">PASS</a></li></ul></li><li><p>igt@kms_flip@flip-vs-expired-vblank@b-ed=
p1:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_10700/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html"=
>FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21296/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.=
html">PASS</a></li></ul></li><li><p>igt@kms_flip@plain-flip-fb-recreate@a-e=
dp1:</p><ul><li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_10700/shard-skl1/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html=
">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21296/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-ed=
p1.html">PASS</a></li></ul></li><li><p>igt@kms_plane@plane-panning-bottom-r=
ight-suspend@pipe-b-planes:</p><ul><li>shard-kbl: <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-kbl7/igt@kms_plane@plane-pann=
ing-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/sha=
rd-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html=
">PASS</a> +5 similar issues</li></ul></li><li><p>igt@perf@polling-paramete=
rized:</p><ul><li><p>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_10700/shard-glk5/igt@perf@polling-parameterized.html">FAIL<=
/a> ([i915#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21296/shard-glk3/igt@perf@polling-parameterized.html">PASS</a></=
p></li><li><p>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10700/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i=
915#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21296/shard-skl3/igt@perf@polling-parameterized.html">PASS</a></p></li>=
</ul></li></ul><h4>Warnings</h4><ul><li><p>igt@i915_pm_rc6_residency@rc6-id=
le:</p><ul><li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_10700/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN<=
/a> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21296/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN<=
/a> ([i915#1804] / [i915#2684])</li></ul></li><li><p>igt@kms_psr2_sf@overla=
y-plane-update-sf-dmg-area-1:</p><ul><li>shard-iclb: <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-iclb2/igt@kms_psr2_sf@over=
lay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-iclb3/ig=
t@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#658]=
) +3 similar issues</li></ul></li><li><p>igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2:</p><ul><li>shard-iclb: <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_10700/shard-iclb4/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area-2.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-iclb2/igt@kms_psr2_=
sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) +1 sim=
ilar issue</li></ul></li><li><p>igt@runner@aborted:</p><ul><li><p>shard-kbl=
: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-k=
bl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_10700/shard-kbl6/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-kbl6=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_10700/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-kbl7/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10700/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-kbl6/igt@r=
unner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i9=
15#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21296/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl1/i=
gt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21296/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-kbl=
6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21296/shard-kbl7/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-=
kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21296/shard-kbl6/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/sha=
rd-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21296/shard-kbl6/igt@runner@aborted.html">FAI=
L</a>) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#92])</=
p></li><li><p>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_10700/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10700/shard-apl7/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10700/shard-apl2/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / =
[i915#1814] / [i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl8/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1296/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_21296/shard-apl1/igt@runner@aborted.h=
tml">FAIL</a>) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363])</p></=
li><li><p>shard-skl: ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) (=
[i915#1436] / [i915#2029] / [i915#3002] / [i915#3363]) -&gt; ([FAIL][151], =
[FAIL][152]) ([i</p></li></ul></li></ul></blockquote><div><br></div><div><s=
pan><pre>-- <br></pre><div data-evo-paragraph=3D"" class=3D"" style=3D"widt=
h: 78ch;" data-evo-signature-plain-text-mode=3D"">Cheers,</div><div data-ev=
o-paragraph=3D"" class=3D"" style=3D"width: 78ch;"><span class=3D"Apple-tab=
-span" style=3D"white-space:pre">=09</span>Lyude Paul (she/her)</div><div d=
ata-evo-paragraph=3D"" class=3D"" style=3D"width: 78ch;"><span class=3D"App=
le-tab-span" style=3D"white-space:pre">=09</span>Software Engineer at Red H=
at</div></span></div></body></html>

--=-bQ3MImKCFpZaKGYuL01L--

