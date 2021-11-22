Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1184592A0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 17:04:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E4D89DED;
	Mon, 22 Nov 2021 16:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCA589DED
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 16:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637597052;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qnZKxYmAuWGLYOdVWX5zvLw08EG1Nbj1B1qLj5rngVU=;
 b=Quf5fV2tNZ9yGxlHANbe14iuk0x3HUtsD+APpkq5xDtJz3vyYboZ5Sxy9G67sr4xXC6jLA
 dRcLRzEXqhVGWKeW6yMY+N0b8INxl2FzsB3IhCUMFKwKzIa63LpquzMFiAhqe5WSf53tGi
 8a3bn9RtGMCBg5zXc6+5z/nSdWYZwN8=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-523-wCfS9isSMCa3jvc_UYd91Q-1; Mon, 22 Nov 2021 11:04:08 -0500
X-MC-Unique: wCfS9isSMCa3jvc_UYd91Q-1
Received: by mail-ed1-f69.google.com with SMTP id
 n11-20020aa7c68b000000b003e7d68e9874so15276146edq.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 08:04:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qnZKxYmAuWGLYOdVWX5zvLw08EG1Nbj1B1qLj5rngVU=;
 b=pzYS1iPhTLLWopycYEYSEIDBcnGDYoDmE/qoqBvN1fJy53ioNf5S92/pW2vdBYMzEj
 blzDzBU4a3C2II/PYHW0ECAfwcjTQ9abfDhLBGt8bHiIYZyWpQx1vs7FR8L0Bm6Sm070
 KlSFtKblYeIs7F77lg0f1146BCJ6YfHYycW6q4sJhhqv6lWQduUPDnNT+n2X1jn19ZKL
 Bqaivm1vn4ErtBtqEPNNjw7fTDnByu+dJ98pAuJ46rmBPQCMy8dGpL5GSpNER921RHxd
 EVLLE2QBA0sD/cXKaMuYSCfH9xcLXODTe/IrbufK48YFUYXvgP/8Tvg4R/bkCvVv3RTF
 KodQ==
X-Gm-Message-State: AOAM533lOpUYJ3UlMKN9mit5PPUGOKz2RnWmKZdOQls/LSJGfhLnJbLw
 GlwqgnRX97oDCUMqHjW5Y2DRYCdtDXrNe3yZuzfH4O2bBS1NnXoQsS73v6R6pxaSRJrRkf3yntf
 /ymdO2+QIJRTR7HKMjO7rlEgIU7UXNOptfqDLldUzsj91oKTCGS89BzGW9NHSfBBwzP1kaGRQz6
 PT6R29
X-Received: by 2002:a05:6402:440b:: with SMTP id
 y11mr47842384eda.25.1637597046616; 
 Mon, 22 Nov 2021 08:04:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxNYL3znDrsIEr1zJuzCZMY4Pk4I6mIs8DvBpbR/CFhDonji15ZJX7KlgvXFlzsxxWRfQi9/w==
X-Received: by 2002:a05:6402:440b:: with SMTP id
 y11mr47842300eda.25.1637597046078; 
 Mon, 22 Nov 2021 08:04:06 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id yc16sm3937633ejb.122.2021.11.22.08.04.05
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 08:04:05 -0800 (PST)
Message-ID: <08fc1fcc-a0ac-040e-20da-29eea4415bdf@redhat.com>
Date: Mon, 22 Nov 2021 17:04:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: intel-gfx@lists.freedesktop.org
References: <20211121110032.4720-1-hdegoede@redhat.com>
 <163749983989.15790.13755732886233878925@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <163749983989.15790.13755732886233878925@emeril.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/backlight=3A_Drop_duplicat?=
 =?utf-8?q?e_intel=5Fpanel=5Factually=5Fset=5Fbacklight=28=29?=
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

Hi,

On 11/21/21 14:03, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [1/2] drm/i915/backlight: Drop duplicate intel_panel_actually_set_backlight()
> *URL:*	https://patchwork.freedesktop.org/series/97134/ <https://patchwork.freedesktop.org/series/97134/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10908_full -> Patchwork_21646_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21646_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21646_full, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (11 -> 11)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_21646_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@i915_pm_backlight@fade_with_dpms:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb4/igt@i915_pm_backlight@fade_with_dpms.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-iclb6/igt@i915_pm_backlight@fade_with_dpms.html> +1 similar issue
>   *

This one seems like it might be related, but it must be a false-positive fail,
because patch 1. in this series makes no functional changes (I have triple
checked this) and patch 2 only changes ops used in ext_pwm_funcs and that
only gets used as panel->backlight.pwm_funcs on BYT and CHT and this is
an ICL failure.

> 
>     igt@kms_vblank@pipe-c-wait-busy:
> 
>       o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@kms_vblank@pipe-c-wait-busy.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl7/igt@kms_vblank@pipe-c-wait-busy.html>

And this is definitely a false-positive since this series only makes
backlight PWM handling changes.

Regards,

Hans





> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@i915_pm_backlight@fade:
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@i915_pm_backlight@fade.html> ([i915#3012]) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@i915_pm_backlight@fade.html> +1 similar issue
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_21646_full that come from known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_create@create-massive:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl1/igt@gem_create@create-massive.html> ([i915#3002])
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb8/igt@gem_eio@unwedge-stress.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-iclb1/igt@gem_eio@unwedge-stress.html> ([i915#2369] / [i915#2481] / [i915#3070])
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl8/igt@gem_exec_capture@pi@rcs0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl9/igt@gem_exec_capture@pi@rcs0.html> ([i915#2369])
>   *
> 
>     igt@gem_exec_capture@pi@vecs0:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb6/igt@gem_exec_capture@pi@vecs0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-iclb8/igt@gem_exec_capture@pi@vecs0.html> ([i915#2369] / [i915#3371])
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@gem_exec_fair@basic-none-share@rcs0.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html> ([fdo#109271])
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html> ([i915#2842]) +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html> ([i915#2849])
>   *
> 
>     igt@gem_exec_params@no-vebox:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@gem_exec_params@no-vebox.html> ([fdo#109283])
>   *
> 
>     igt@gem_pxp@create-regular-context-2:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@gem_pxp@create-regular-context-2.html> ([i915#4270])
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-skl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl1/igt@gem_userptr_blits@vma-merge.html> ([i915#3318])
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb2/igt@gen9_exec_parse@allowed-all.html> ([i915#2856])
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb5/igt@i915_pm_dc@dc6-psr.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-iclb3/igt@i915_pm_dc@dc6-psr.html> ([i915#454])
>   *
> 
>     igt@i915_selftest@live@hangcheck:
> 
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-snb2/igt@i915_selftest@live@hangcheck.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-snb6/igt@i915_selftest@live@hangcheck.html> ([i915#3921])
>   *
> 
>     igt@i915_suspend@sysfs-reader:
> 
>       o shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@i915_suspend@sysfs-reader.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl1/igt@i915_suspend@sysfs-reader.html> ([i915#180]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-90:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html> ([fdo#111614])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> ([i915#3743])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html> ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html> ([fdo#111615]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html> ([i915#3689] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> ([fdo#109271] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html> ([fdo#109271] / [i915#3886])
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb8/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html> ([fdo#111615] / [i915#3689]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html> ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl2/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html> ([fdo#109271]) +63 similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html> ([i915#3689])
>   *
> 
>     igt@kms_cdclk@plane-scaling:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb2/igt@kms_cdclk@plane-scaling.html> ([i915#3742])
>   *
> 
>     igt@kms_chamelium@hdmi-audio-edid:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl1/igt@kms_chamelium@hdmi-audio-edid.html> ([fdo#109271] / [fdo#111827]) +3 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_chamelium@vga-hpd.html> ([fdo#109284] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color@pipe-a-ctm-0-5:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl6/igt@kms_color@pipe-a-ctm-0-5.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@kms_color@pipe-a-ctm-0-5.html> ([i915#1982])
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-negative:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-negative.html> ([fdo#109271] / [fdo#111827]) +6 similar issues
>   *
> 
>     igt@kms_content_protection@mei_interface:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_content_protection@mei_interface.html> ([fdo#111828])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html> ([i915#3359])
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html> ([i915#3319]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html> ([fdo#109279] / [i915#3359]) +1 similar issue
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
> 
>       o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl8/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html> ([fdo#109271]) +5 similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-legacy:
> 
>       o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html> ([i915#2828])
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o
> 
>         shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html> ([i915#180] / [i915#1982])
> 
>       o
> 
>         shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html> ([i915#2411] / [i915#456])
> 
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html> ([i915#79])
>   *
> 
>     igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
> 
>       o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html> ([i915#180]) +7 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-suspend@a-dp1:
> 
>       o shard-apl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html> ([i915#180]) +2 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html> ([i915#2122])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html> ([fdo#109271] / [i915#2672])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html> ([fdo#109271]) +90 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html> ([fdo#111825]) +18 similar issues
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb8/igt@kms_hdr@static-swap.html> ([i915#1187])
>   *
> 
>     igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html> ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html> ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_lowres@pipe-c-tiling-yf:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_plane_lowres@pipe-c-tiling-yf.html> ([fdo#111615] / [fdo#112054])
>   *
> 
>     igt@kms_plane_lowres@pipe-d-tiling-none:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_plane_lowres@pipe-d-tiling-none.html> ([i915#3536])
>   *
> 
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html> ([fdo#109271] / [i915#2733])
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html> ([i915#2920]) +2 similar issues
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html> ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_cursor_render:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@kms_psr@psr2_cursor_render.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-iclb5/igt@kms_psr@psr2_cursor_render.html> ([fdo#109441])
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-tglb: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_psr@psr2_sprite_blt.html> ([i915#132] / [i915#3467])
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-skl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl1/igt@kms_sysfs_edid_timing.html> ([IGT#2])
>   *
> 
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
> 
>       o shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> ([i915#180] / [i915#295])
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl1/igt@kms_writeback@writeback-check-output.html> ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl1/igt@kms_writeback@writeback-fb-id.html> ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@nouveau_crc@pipe-c-source-outp-complete:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb8/igt@nouveau_crc@pipe-c-source-outp-complete.html> ([i915#2530]) +2 similar issues
>   *
> 
>     igt@perf@blocking:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@perf@blocking.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl2/igt@perf@blocking.html> ([i915#1542])
>   *
> 
>     igt@perf@polling-parameterized:
> 
>       o shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl6/igt@perf@polling-parameterized.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl4/igt@perf@polling-parameterized.html> ([i915#1542])
>   *
> 
>     igt@perf@polling-small-buf:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl9/igt@perf@polling-small-buf.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl9/igt@perf@polling-small-buf.html> ([i915#1722])
>   *
> 
>     igt@prime_udl:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@prime_udl.html> ([fdo#109291])
>   *
> 
>     igt@sysfs_clients@fair-3:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl1/igt@sysfs_clients@fair-3.html> ([fdo#109271] / [i915#2994])
>   *
> 
>     igt@sysfs_clients@split-10:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl4/igt@sysfs_clients@split-10.html> ([fdo#109271] / [i915#2994])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-kbl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html> ([i915#180]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vcs0.html> +4 similar issues
>   *
> 
>     igt@gem_ctx_persistence@many-contexts:
> 
>       o {shard-rkl}: (PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html>) ([i915#2410]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o {shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-1/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@bcs0:
> 
>       o
> 
>         shard-tglb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html> +1 similar issue
> 
>       o
> 
>         shard-iclb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html>
> 
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-kbl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html>
>   *
> 
>     igt@gem_exec_whisper@basic-forked-all:
> 
>       o shard-glk: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html> ([i915#118]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-glk5/igt@gem_exec_whisper@basic-forked-all.html> +1 similar issue
>   *
> 
>     igt@i915_pm_backlight@bad-brightness:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@i915_pm_backlight@bad-brightness.html> ([i915#3012]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html>
>   *
> 
>     igt@i915_pm_dc@dc6-psr:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@i915_pm_dc@dc6-psr.html> ([i915#658]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html> +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o {shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html> ([i915#4275]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-2/igt@i915_pm_dc@dc9-dpms.html>
>   *
> 
>     igt@i915_pm_rpm@dpms-lpsp:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html> ([i915#1397]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html>
>   *
> 
>     igt@i915_pm_rpm@fences-dpms:
> 
>       o {shard-rkl}: (SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@i915_pm_rpm@fences-dpms.html>, SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@i915_pm_rpm@fences-dpms.html>) ([i915#1849]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html>
>   *
> 
>     igt@i915_pm_rps@min-max-config-idle:
> 
>       o {shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_rps@min-max-config-idle.html> ([i915#4016]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-2/igt@i915_pm_rps@min-max-config-idle.html>
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip:
> 
>       o shard-skl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html> ([i915#2521]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html>
>   *
> 
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o {shard-rkl}: (SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>, SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html>) ([i915#1845]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> +2 similar issues
>   *
> 
>     igt@kms_color@pipe-b-ctm-0-75:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-75.html> ([i915#1149] / [i915#1849] / [i915#4070]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-75.html> +1 similar issue
>   *
> 
>     igt@kms_color@pipe-b-ctm-red-to-blue:
> 
>       o {shard-rkl}: (SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_color@pipe-b-ctm-red-to-blue.html>, SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_color@pipe-b-ctm-red-to-blue.html>) ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@kms_color@pipe-b-ctm-red-to-blue.html> +2 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html> ([fdo#112022] / [i915#4070]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-rapid-movement.html> +4 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
>       o shard-apl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html> ([i915#180]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-apl8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html> ([i915#4098]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-128x128-bottom-edge.html>
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
> 
>       o shard-tglb: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-tglb5/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html>
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html> ([i915#1849] / [i915#4070]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21646/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html> +5 similar issues
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-skl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> ([i915#2346]) -> PASS <https://in>
> 

