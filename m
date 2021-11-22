Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 222614592A8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 17:07:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B871F89ECD;
	Mon, 22 Nov 2021 16:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AB8A89ECD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 16:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637597268;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=b9jIxh2CkUuMVA5uCOqMMm7u7/qjg+CBCVANLX8MyNM=;
 b=Puczzfg4uD9xKIFaDIMSCsPdvExt9ZcttGE2ZqX/glTwOSE6D1RB0sl+q4tTGxRPcqI4Us
 Wyg83GZsSHYF647C6sOviGcDAlecyAJOzlMH/UR7lT12XxoeotfR2/gan/dz2XzJP7ZR+r
 M11+eEYVbPQ+kJGNkpmxVsmKWN0vIhE=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-47-dN3BUlrSOPaL-lidQ4v6-A-1; Mon, 22 Nov 2021 11:07:42 -0500
X-MC-Unique: dN3BUlrSOPaL-lidQ4v6-A-1
Received: by mail-ed1-f69.google.com with SMTP id
 w18-20020a056402071200b003e61cbafdb4so15249474edx.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 08:07:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=b9jIxh2CkUuMVA5uCOqMMm7u7/qjg+CBCVANLX8MyNM=;
 b=nYvE4FOyWDHQDSZppUB2P9irIgoOErDA4cCe0DkGQF2TCis5RA8LxLLlfKVRb/J7rz
 zz7rJPwekjnuZTkOg4MHVzT/+ybaDi2OHnXmz6RjHVFGnS78oQKcw88HL15mMkiSiW1k
 8G1Wsyvh34TjpSWcZp3Chai85bHnJoH1IJzLTFrN8uenV2jRmMxnYEnvxfqP03DBb9Gt
 7j8nmkhKbZMPYE5t/+uYMEx+sTlvT4n7AFFWP0367MLrnUaCp+9HOD8ttPI5/wvsxIqt
 rhfmniKjvyaYy1Z36BomT7H0ZupfhRUi2BymL2PTUmfpUk9nUndd50jVtKd8p7BvkWV3
 eYrw==
X-Gm-Message-State: AOAM530Ys2KjNHiA0qABpJVhQMIapdPGWrTNoq5ilLA8L8Xu3P/Q0yu1
 Z+WTgkmeazxDK7rd5RI2iSqA62jSaKLh1KSGSIqtSG8K+D1n/9aryvDJ0pOQ2XGj94CXu40u5kI
 sLHWg2hr8WFz4c5Xb1KB07dY1A02+yK2BQ3+6rEQI9/ukyRJgAvoGSSBjM0PUXzQo2EZIRPVoFt
 U12ykx
X-Received: by 2002:a05:6402:40d2:: with SMTP id
 z18mr58695360edb.395.1637597260420; 
 Mon, 22 Nov 2021 08:07:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxbCMC7yVx17eDM9NbdDVqyuC3lgiaVRKQDQhA/YVT29ASzs1OPIHPiVfMWVf9jV0MLt31cQg==
X-Received: by 2002:a05:6402:40d2:: with SMTP id
 z18mr58695280edb.395.1637597259934; 
 Mon, 22 Nov 2021 08:07:39 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id s16sm4265813edt.30.2021.11.22.08.07.39
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 22 Nov 2021 08:07:39 -0800 (PST)
Message-ID: <95e86685-e3ca-4764-8e0e-796e6e484e16@redhat.com>
Date: Mon, 22 Nov 2021 17:07:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: intel-gfx@lists.freedesktop.org
References: <20211121191001.252076-1-hdegoede@redhat.com>
 <163752862933.15790.7750703539688882920@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <163752862933.15790.7750703539688882920@emeril.freedesktop.org>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_unused_intel=5Fgmbus=5Fset=5Fspeed=28=29_functi?=
 =?utf-8?q?on?=
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

On 11/21/21 22:03, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: Remove unused intel_gmbus_set_speed() function
> *URL:*	https://patchwork.freedesktop.org/series/97141/ <https://patchwork.freedesktop.org/series/97141/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_10908_full -> Patchwork_21648_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_21648_full absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_21648_full, please notify your bug team to allow them
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
> Here are the unknown changes that may have been introduced in Patchwork_21648_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic:
> 
>       o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html> +2 similar issues
>   *
> 
>     igt@kms_flip@basic-plain-flip@c-edp1:
> 
>       o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb7/igt@kms_flip@basic-plain-flip@c-edp1.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb8/igt@kms_flip@basic-plain-flip@c-edp1.html>

Both false-positives.

This patch only removes an unused function, so the only kind of regressions
this can cause are build failures.

Regards,

Hans





> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * igt@kms_frontbuffer_tracking@fbc-badstride:
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-badstride.html> ([i915#1849]) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-badstride.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_21648_full that come from known issues:
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
>       o shard-kbl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl1/igt@gem_create@create-massive.html> ([i915#3002])
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb8/igt@gem_eio@unwedge-stress.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-iclb7/igt@gem_eio@unwedge-stress.html> ([i915#2369] / [i915#2481] / [i915#3070])
>   *
> 
>     igt@gem_exec_capture@pi@rcs0:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl8/igt@gem_exec_capture@pi@rcs0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl10/igt@gem_exec_capture@pi@rcs0.html> ([i915#2369])
>   *
> 
>     igt@gem_exec_capture@pi@vcs0:
> 
>       o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@gem_exec_capture@pi@vcs0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb7/igt@gem_exec_capture@pi@vcs0.html> ([i915#2369] / [i915#3371])
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-tglb: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html> ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o
> 
>         shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html> ([i915#2842])
> 
>       o
> 
>         shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html> ([i915#2842]) +1 similar issue
> 
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html> ([i915#2842])
>   *
> 
>     igt@gem_exec_params@no-vebox:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@gem_exec_params@no-vebox.html> ([fdo#109283])
>   *
> 
>     igt@gem_pxp@create-regular-context-2:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@gem_pxp@create-regular-context-2.html> ([i915#4270])
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@gem_softpin@noreloc-s3.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb7/igt@gem_softpin@noreloc-s3.html> ([i915#1373] / [i915#456])
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-skl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl9/igt@gem_userptr_blits@vma-merge.html> ([i915#3318])
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@gem_workarounds@suspend-resume-fd.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html> ([i915#180]) +2 similar issues
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@gen9_exec_parse@allowed-all.html> ([i915#2856])
>   *
> 
>     igt@i915_pm_rpm@system-suspend:
> 
>       o shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl1/igt@i915_pm_rpm@system-suspend.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl4/igt@i915_pm_rpm@system-suspend.html> ([i915#151])
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-tglb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@i915_suspend@fence-restore-tiled2untiled.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb7/igt@i915_suspend@fence-restore-tiled2untiled.html> ([i915#456] / [i915#750])
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-90:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html> ([fdo#111614])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-skl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> ([i915#3743])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html> ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html> ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html> ([fdo#111615]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html> ([i915#3689] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl8/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> ([fdo#109271] / [i915#3886]) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-apl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html> ([fdo#109271] / [i915#3886])
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb3/igt@kms_ccs@pipe-b-random-ccs-data-yf_tiled_ccs.html> ([fdo#111615] / [i915#3689]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html> ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html> ([fdo#109271]) +63 similar issues
>   *
> 
>     igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_mc_ccs.html> ([i915#3689])
>   *
> 
>     igt@kms_cdclk@plane-scaling:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_cdclk@plane-scaling.html> ([i915#3742])
>   *
> 
>     igt@kms_chamelium@hdmi-audio-edid:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@kms_chamelium@hdmi-audio-edid.html> ([fdo#109271] / [fdo#111827]) +3 similar issues
>   *
> 
>     igt@kms_chamelium@vga-hpd:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_chamelium@vga-hpd.html> ([fdo#109284] / [fdo#111827]) +2 similar issues
>   *
> 
>     igt@kms_color@pipe-b-ctm-0-75:
> 
>       o shard-skl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl8/igt@kms_color@pipe-b-ctm-0-75.html> ([i915#1982])
>   *
> 
>     igt@kms_color_chamelium@pipe-c-ctm-negative:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-negative.html> ([fdo#109271] / [fdo#111827]) +6 similar issues
>   *
> 
>     igt@kms_content_protection@mei_interface:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_content_protection@mei_interface.html> ([fdo#111828])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-max-size-offscreen.html> ([i915#3359])
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-rapid-movement.html> ([i915#3319]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html> ([fdo#109279] / [i915#3359]) +1 similar issue
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge:
> 
>       o shard-apl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-apl4/igt@kms_cursor_edge_walk@pipe-d-128x128-bottom-edge.html> ([fdo#109271]) +5 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl9/igt@kms_fbcon_fbt@psr-suspend.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl5/igt@kms_fbcon_fbt@psr-suspend.html> ([i915#198])
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank@b-edp1:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html> ([i915#79])
>   *
> 
>     igt@kms_flip@flip-vs-suspend@c-dp1:
> 
>       o
> 
>         shard-kbl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html> ([i915#636])
> 
>       o
> 
>         shard-apl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html> ([i915#180])
> 
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html> ([fdo#109271] / [i915#2672])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-suspend:
> 
>       o shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl8/igt@kms_frontbuffer_tracking@fbc-suspend.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-apl2/igt@kms_frontbuffer_tracking@fbc-suspend.html> ([i915#180]) +4 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html> ([fdo#109271]) +94 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html> ([fdo#111825]) +18 similar issues
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb3/igt@kms_hdr@static-swap.html> ([i915#1187])
>   *
> 
>     igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html> ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_plane_lowres@pipe-c-tiling-yf:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_plane_lowres@pipe-c-tiling-yf.html> ([fdo#111615] / [fdo#112054])
>   *
> 
>     igt@kms_plane_lowres@pipe-d-tiling-none:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_plane_lowres@pipe-d-tiling-none.html> ([i915#3536])
>   *
> 
>     igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl9/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html> ([fdo#109271] / [i915#2733])
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html> ([i915#2920]) +2 similar issues
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html> ([fdo#109271] / [i915#658])
>   *
> 
>     igt@kms_psr@psr2_cursor_render:
> 
>       o shard-iclb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@kms_psr@psr2_cursor_render.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-iclb7/igt@kms_psr@psr2_cursor_render.html> ([fdo#109441]) +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-tglb: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_psr@psr2_sprite_blt.html> ([i915#132] / [i915#3467])
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-skl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl9/igt@kms_sysfs_edid_timing.html> ([IGT#2])
>   *
> 
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
> 
>       o shard-apl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html> ([i915#180] / [i915#295])
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl9/igt@kms_writeback@writeback-check-output.html> ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@kms_writeback@writeback-fb-id:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@kms_writeback@writeback-fb-id.html> ([fdo#109271] / [i915#2437])
>   *
> 
>     igt@nouveau_crc@pipe-c-source-outp-complete:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-complete.html> ([i915#2530]) +2 similar issues
>   *
> 
>     igt@perf@non-zero-reason:
> 
>       o shard-skl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@perf@non-zero-reason.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl2/igt@perf@non-zero-reason.html> ([i915#2836])
>   *
> 
>     igt@prime_udl:
> 
>       o shard-tglb: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@prime_udl.html> ([fdo#109291])
>   *
> 
>     igt@sysfs_clients@fair-3:
> 
>       o shard-kbl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@sysfs_clients@fair-3.html> ([fdo#109271] / [i915#2994])
>   *
> 
>     igt@sysfs_clients@split-10:
> 
>       o shard-skl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl8/igt@sysfs_clients@split-10.html> ([fdo#109271] / [i915#2994])
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@fbdev@unaligned-write:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@fbdev@unaligned-write.html> ([i915#2582]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@fbdev@unaligned-write.html>
>   *
> 
>     igt@feature_discovery@psr1:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@feature_discovery@psr1.html> ([i915#658]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@feature_discovery@psr1.html>
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-kbl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html> ([i915#180]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html> +4 similar issues
>   *
> 
>     igt@gem_ctx_persistence@many-contexts:
> 
>       o {shard-rkl}: (PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@gem_ctx_persistence@many-contexts.html>, FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html>) ([i915#2410]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-tglb: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb3/igt@gem_eio@unwedge-stress.html> ([i915#2369] / [i915#3063] / [i915#3648]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb5/igt@gem_eio@unwedge-stress.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-glk: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk9/igt@gem_exec_fair@basic-none-rrul@rcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-tglb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-kbl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html> +1 similar issue
>   *
> 
>     igt@gem_exec_whisper@basic-forked-all:
> 
>       o shard-glk: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html> ([i915#118]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-glk8/igt@gem_exec_whisper@basic-forked-all.html> +1 similar issue
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb6/igt@gem_huc_copy@huc-copy.html> ([i915#2190]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb5/igt@gem_huc_copy@huc-copy.html>
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-iclb: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html> ([i915#454]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html>
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o {shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html> ([i915#4275]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-1/igt@i915_pm_dc@dc9-dpms.html>
>   *
> 
>     igt@i915_pm_rps@min-max-config-idle:
> 
>       o {shard-rkl}: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-6/igt@i915_pm_rps@min-max-config-idle.html> ([i915#4016]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-2/igt@i915_pm_rps@min-max-config-idle.html>
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip:
> 
>       o shard-skl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html> ([i915#2521]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html>
>   *
> 
>     igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html> ([i915#1845]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html> +16 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html> ([fdo#112022] / [i915#4070]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html> +2 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-b-cursor-suspend:
> 
>       o shard-apl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html> ([i915#180]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-apl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html>
>   *
> 
>     igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge:
> 
>       o shard-tglb: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-tglb8/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-tglb2/igt@kms_cursor_edge_walk@pipe-a-64x64-bottom-edge.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-skl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> ([i915#2346]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html> ([fdo#111825] / [i915#4070]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html> ([fdo#111314]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html> +1 similar issue
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1:
> 
>       o shard-apl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html> ([i915#79]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-dp1.html>
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
> 
>       o shard-iclb: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html> ([i915#3701]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
> 
>       o {shard-rkl}: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html> ([i915#1849]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html> +15 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
> 
>       o {shard-rkl}: (SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html>, SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html>) ([i915#1849] / [i915#4098]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-rte:
> 
>       o shard-skl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10908/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-rte.html> ([i915#1982]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21648/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-rte.html>
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
> 
>       o {shard-rkl}: SKIP ([i915#1849] / [i915#4070]) -> [PASS][143] +1 similar issue
> 

