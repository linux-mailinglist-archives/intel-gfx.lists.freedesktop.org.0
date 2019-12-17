Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0681226BD
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 09:34:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826A76E95D;
	Tue, 17 Dec 2019 08:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265AB6E95D
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 08:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576571686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lmTuIwlBhiAFUOosUdvlv9UbiF6LI2tO9sFJ0GZFIT0=;
 b=Z6WYi1DB0ZynCD+TtFHWC11PMpWEm5EmT6+ac8QIY8nRhqDZM2NwBF8xoQqixrdx+sf20I
 fV8Z9i+jbO0v5hwOA/uaZ/L2umn+ydZ5EC7nORCxQM8+8dGAkqSGT2R4Ab+jd/qi+fpZtN
 HAl63cXWNkJtwTrU3YmbtjWAyQDH42M=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-9geu7HyDNaSrPSqlyAtnaQ-1; Tue, 17 Dec 2019 03:34:41 -0500
Received: by mail-wr1-f71.google.com with SMTP id h30so5044703wrh.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 00:34:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lmTuIwlBhiAFUOosUdvlv9UbiF6LI2tO9sFJ0GZFIT0=;
 b=Ogoz0sm1x+ZIpwzul00S4xDc8wK56OIZdLJZWSzmXG+SKONivMed/W4uCVaNYE2jJR
 WPYqNWh4gEocx/ZwwasEbXhJRTCVlDKe+zApcwJQeqVlwo+oxEGfDKrIjscBCw2EBm+H
 jflRMMnQpTN5BV4xXp53KE80ZiBDx6/GiH1iqbu/VL2UPimUernBa2XkRA3b7ftz82xl
 sjVFfOhbUr919pkv3SV3pRmH8/FO5pMVlX9wD32+dSVKICLg2z8C9iLBdFwo2SfDt7WX
 6egW42TTbcgA1DyIb3Sxt0QBmn/GLSKiH+qH74uAhlPIrViEGLRLxePTDPs3lbu2xnjw
 +new==
X-Gm-Message-State: APjAAAXmt1nhqqMBa5UXpgSn3qTCEb7mXKjort1ZHZMVfG5SN5IRhZR4
 i7cnbxkhAya8sf146/Ske1VyNvbp7dRdgLkfqTSn30OS7dFy/ZNY8J2C7QNqK0UYBuhw/kTGsKg
 NR4Xgl5l129aXwnu2+qxiDqXVLaiM
X-Received: by 2002:adf:fbc9:: with SMTP id d9mr36802348wrs.20.1576571680184; 
 Tue, 17 Dec 2019 00:34:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqznTfdHqan3nCVNUyzHb6c9gpApVB1IfK0yyMfho3RvAI0AdBjdXfng7m5tLeAxGDq7PRZ1wQ==
X-Received: by 2002:adf:fbc9:: with SMTP id d9mr36802321wrs.20.1576571679774; 
 Tue, 17 Dec 2019 00:34:39 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id g9sm25129237wro.67.2019.12.17.00.34.38
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 00:34:38 -0800 (PST)
To: intel-gfx@lists.freedesktop.org
References: <20191215213307.689830-1-hdegoede@redhat.com>
 <157652975114.5611.5392629929309912326@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <f581f406-965b-6270-5909-bc0673217a4b@redhat.com>
Date: Tue, 17 Dec 2019 09:34:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <157652975114.5611.5392629929309912326@emeril.freedesktop.org>
Content-Language: en-US
X-MC-Unique: 9geu7HyDNaSrPSqlyAtnaQ-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/dsi=3A_Remove_readback_of_?=
 =?utf-8?q?panel_orientation_on_BYT_/_CHT_=28rev2=29?=
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

On 16-12-2019 21:55, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/dsi: Remove readback of panel orientation on BYT / CHT (rev2)
> URL   : https://patchwork.freedesktop.org/series/70952/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7574_full -> Patchwork_15786_full
> ====================================================
> 
> Summary
> -------
> 
>    **FAILURE**
> 
>    Serious unknown changes coming with Patchwork_15786_full absolutely need to be
>    verified manually.
>    
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_15786_full, please notify your bug team to allow them
>    to document this new failure mode, which will reduce false positives in CI.
> 
>    
> 
> Possible new issues
> -------------------
> 
>    Here are the unknown changes that may have been introduced in Patchwork_15786_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>    * igt@kms_big_fb@linear-16bpp-rotate-180:
>      - shard-tglb:         [PASS][1] -> [DMESG-WARN][2]
>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb3/igt@kms_big_fb@linear-16bpp-rotate-180.html
>     [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb8/igt@kms_big_fb@linear-16bpp-rotate-180.html

False positive, the dmesg-warn is a lockdep splat and this patch does not touch
any locking.

Regards,

Hans



> 
>    
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 2 (NEW):
>      - {pig-hsw-4770r}:    NOTRUN -> [FAIL][3] +19 similar issues
>     [3]: None
> 
>    
> New tests
> ---------
> 
>    New tests have been introduced between CI_DRM_7574_full and Patchwork_15786_full:
> 
> ### New Piglit tests (20) ###
> 
>    * object namespace pollution@texture with glcopyimagesubdata:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.10] s
> 
>    * spec@arb_gpu_shader5@texturegather@vs-rgba-1-float-cubearray:
>      - Statuses : 1 fail(s)
>      - Exec time: [1.95] s
> 
>    * spec@arb_query_buffer_object@coherency:
>      - Statuses : 1 fail(s)
>      - Exec time: [5.09] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 8 64 3:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.11] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 8 64 8:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.08] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 32 42 8 8 8:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.12] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 128 1:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.26] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 128 8:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.24] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 64 1:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.23] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 64 4:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.33] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 8 1:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.22] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 8 3:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.25] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 8 4:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.24] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 8 7:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.24] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 1 8 8 8:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.28] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 128 7:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.17] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 128 8:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.18] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 2:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.18] s
> 
>    * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 8:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.13] s
> 
>    * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-uint_uvec2_array3-double_dmat3x2:
>      - Statuses : 1 fail(s)
>      - Exec time: [0.18] s
> 
>    
> 
> Known issues
> ------------
> 
>    Here are the changes found in Patchwork_15786_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>    * igt@gem_ctx_isolation@vcs1-reset:
>      - shard-iclb:         [PASS][4] -> [SKIP][5] ([fdo#109276] / [fdo#112080]) +1 similar issue
>     [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_ctx_isolation@vcs1-reset.html
>     [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb8/igt@gem_ctx_isolation@vcs1-reset.html
> 
>    * igt@gem_ctx_isolation@vecs0-s3:
>      - shard-tglb:         [PASS][6] -> [INCOMPLETE][7] ([i915#456])
>     [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb7/igt@gem_ctx_isolation@vecs0-s3.html
>     [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb5/igt@gem_ctx_isolation@vecs0-s3.html
> 
>    * igt@gem_ctx_persistence@processes:
>      - shard-skl:          [PASS][8] -> [FAIL][9] ([i915#570])
>     [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl10/igt@gem_ctx_persistence@processes.html
>     [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-skl3/igt@gem_ctx_persistence@processes.html
> 
>    * igt@gem_eio@suspend:
>      - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#460]) +1 similar issue
>     [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb3/igt@gem_eio@suspend.html
>     [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb8/igt@gem_eio@suspend.html
> 
>    * igt@gem_exec_await@wide-contexts:
>      - shard-tglb:         [PASS][12] -> [INCOMPLETE][13] ([fdo#111736])
>     [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb7/igt@gem_exec_await@wide-contexts.html
>     [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb6/igt@gem_exec_await@wide-contexts.html
> 
>    * igt@gem_exec_balancer@smoke:
>      - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110854])
>     [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_exec_balancer@smoke.html
>     [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb8/igt@gem_exec_balancer@smoke.html
> 
>    * igt@gem_exec_parallel@fds:
>      - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#470])
>     [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb3/igt@gem_exec_parallel@fds.html
>     [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb6/igt@gem_exec_parallel@fds.html
> 
>    * igt@gem_exec_schedule@in-order-bsd:
>      - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#112146]) +2 similar issues
>     [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb5/igt@gem_exec_schedule@in-order-bsd.html
>     [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb2/igt@gem_exec_schedule@in-order-bsd.html
> 
>    * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
>      - shard-tglb:         [PASS][20] -> [INCOMPLETE][21] ([fdo#111677])
>     [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
>     [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
> 
>    * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
>      - shard-iclb:         [PASS][22] -> [INCOMPLETE][23] ([i915#140] / [i915#530])
>     [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
>     [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
> 
>    * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
>      - shard-hsw:          [PASS][24] -> [TIMEOUT][25] ([i915#530])
>     [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
>     [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-hsw5/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
> 
>    * igt@gem_persistent_relocs@forked-thrashing:
>      - shard-tglb:         [PASS][26] -> [TIMEOUT][27] ([i915#530])
>     [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb2/igt@gem_persistent_relocs@forked-thrashing.html
>     [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb5/igt@gem_persistent_relocs@forked-thrashing.html
> 
>    * igt@gem_userptr_blits@sync-unmap-after-close:
>      - shard-snb:          [PASS][28] -> [DMESG-WARN][29] ([fdo#111870]) +1 similar issue
>     [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb1/igt@gem_userptr_blits@sync-unmap-after-close.html
>     [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-snb5/igt@gem_userptr_blits@sync-unmap-after-close.html
> 
>    * igt@i915_selftest@mock_sanitycheck:
>      - shard-hsw:          [PASS][30] -> [DMESG-WARN][31] ([i915#747])
>     [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw7/igt@i915_selftest@mock_sanitycheck.html
>     [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-hsw7/igt@i915_selftest@mock_sanitycheck.html
>      - shard-snb:          [PASS][32] -> [DMESG-WARN][33] ([i915#747])
>     [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb4/igt@i915_selftest@mock_sanitycheck.html
>     [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-snb1/igt@i915_selftest@mock_sanitycheck.html
> 
>    * igt@kms_color@pipe-a-ctm-negative:
>      - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#109])
>     [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl2/igt@kms_color@pipe-a-ctm-negative.html
>     [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-skl6/igt@kms_color@pipe-a-ctm-negative.html
> 
>    * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>      - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#54]) +4 similar issues
>     [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>     [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
> 
>    * igt@kms_flip@flip-vs-expired-vblank:
>      - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#79]) +1 similar issue
>     [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
>     [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
> 
>    * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>      - shard-glk:          [PASS][40] -> [FAIL][41] ([i915#79])
>     [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>     [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>    * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>      - shard-tglb:         [PASS][42] -> [FAIL][43] ([i915#49]) +1 similar issue
>     [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>     [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>    * igt@kms_frontbuffer_tracking@fbc-suspend:
>      - shard-tglb:         [PASS][44] -> [INCOMPLETE][45] ([i915#456] / [i915#460] / [i915#474])
>     [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>     [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>    * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move:
>      - shard-iclb:         [PASS][46] -> [INCOMPLETE][47] ([i915#123] / [i915#140])
>     [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
>     [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-move.html
> 
>    * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
>      - shard-skl:          [PASS][48] -> [INCOMPLETE][49] ([i915#648] / [i915#667])
>     [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl9/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
>     [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-skl5/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
> 
>    * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>      - shard-skl:          [PASS][50] -> [FAIL][51] ([fdo#108145])
>     [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>     [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>    * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>      - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145] / [i915#265])
>     [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>     [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>    * igt@kms_psr@psr2_primary_mmap_cpu:
>      - shard-iclb:         [PASS][54] -> [SKIP][55] ([fdo#109441]) +1 similar issue
>     [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>     [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>    * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>      - shard-kbl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180]) +7 similar issues
>     [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>     [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>      - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +2 similar issues
>     [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>     [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>    * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>      - shard-tglb:         [PASS][60] -> [INCOMPLETE][61] ([i915#456] / [i915#460]) +2 similar issues
>     [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>     [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>    * igt@perf@disabled-read-error:
>      - shard-hsw:          [PASS][62] -> [INCOMPLETE][63] ([i915#61]) +1 similar issue
>     [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw7/igt@perf@disabled-read-error.html
>     [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-hsw8/igt@perf@disabled-read-error.html
> 
>    * igt@perf_pmu@busy-accuracy-98-vcs1:
>      - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#112080]) +2 similar issues
>     [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@perf_pmu@busy-accuracy-98-vcs1.html
>     [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb8/igt@perf_pmu@busy-accuracy-98-vcs1.html
> 
>    * igt@prime_vgem@fence-wait-bsd2:
>      - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109276]) +3 similar issues
>     [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
>     [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html
> 
>    
> #### Possible fixes ####
> 
>    * igt@gem_ctx_persistence@vcs1-mixed-process:
>      - shard-iclb:         [SKIP][68] ([fdo#109276] / [fdo#112080]) -> [PASS][69]
>     [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb5/igt@gem_ctx_persistence@vcs1-mixed-process.html
>     [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed-process.html
> 
>    * igt@gem_ctx_shared@q-smoketest-bsd1:
>      - shard-tglb:         [INCOMPLETE][70] ([fdo#111735]) -> [PASS][71]
>     [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
>     [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html
> 
>    * {igt@gem_exec_schedule@pi-userfault-bsd}:
>      - shard-iclb:         [SKIP][72] ([i915#677]) -> [PASS][73]
>     [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_exec_schedule@pi-userfault-bsd.html
>     [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb8/igt@gem_exec_schedule@pi-userfault-bsd.html
> 
>    * igt@gem_exec_schedule@preempt-other-chain-bsd:
>      - shard-iclb:         [SKIP][74] ([fdo#112146]) -> [PASS][75] +1 similar issue
>     [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>     [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>    * igt@gem_exec_schedule@preempt-queue-bsd2:
>      - shard-iclb:         [SKIP][76] ([fdo#109276]) -> [PASS][77] +6 similar issues
>     [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd2.html
>     [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd2.html
> 
>    * igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive:
>      - shard-glk:          [TIMEOUT][78] ([i915#530]) -> [PASS][79]
>     [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-glk7/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
>     [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-glk4/igt@gem_persistent_relocs@forked-faulting-reloc-thrash-inactive.html
> 
>    * igt@gem_softpin@noreloc-s3:
>      - shard-apl:          [DMESG-WARN][80] ([i915#180]) -> [PASS][81] +1 similar issue
>     [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl8/igt@gem_softpin@noreloc-s3.html
>     [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-apl4/igt@gem_softpin@noreloc-s3.html
> 
>    * igt@gem_userptr_blits@sync-unmap-cycles:
>      - shard-snb:          [DMESG-WARN][82] ([fdo#111870]) -> [PASS][83] +1 similar issue
>     [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-snb4/igt@gem_userptr_blits@sync-unmap-cycles.html
>     [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-snb1/igt@gem_userptr_blits@sync-unmap-cycles.html
> 
>    * igt@i915_suspend@fence-restore-untiled:
>      - shard-kbl:          [DMESG-WARN][84] ([i915#180]) -> [PASS][85] +1 similar issue
>     [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-kbl2/igt@i915_suspend@fence-restore-untiled.html
>     [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-kbl7/igt@i915_suspend@fence-restore-untiled.html
> 
>    * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
>      - shard-hsw:          [DMESG-WARN][86] ([IGT#6]) -> [PASS][87] +1 similar issue
>     [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
>     [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-hsw1/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
> 
>    * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>      - shard-apl:          [DMESG-WARN][88] ([IGT#6]) -> [PASS][89]
>     [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>     [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>    * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>      - shard-tglb:         [INCOMPLETE][90] ([i915#456] / [i915#460]) -> [PASS][91]
>     [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>     [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>    * igt@kms_flip@2x-dpms-vs-vblank-race:
>      - shard-hsw:          [DMESG-FAIL][92] ([i915#407] / [i915#44]) -> [PASS][93]
>     [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@kms_flip@2x-dpms-vs-vblank-race.html
>     [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-hsw7/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>    * igt@kms_flip@plain-flip-fb-recreate:
>      - shard-hsw:          [DMESG-FAIL][94] ([i915#44]) -> [PASS][95]
>     [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw5/igt@kms_flip@plain-flip-fb-recreate.html
>     [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-hsw6/igt@kms_flip@plain-flip-fb-recreate.html
> 
>    * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
>      - shard-iclb:         [INCOMPLETE][96] ([i915#123] / [i915#140]) -> [PASS][97]
>     [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
>     [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
> 
>    * igt@perf@create-destroy-userspace-config:
>      - shard-hsw:          [INCOMPLETE][98] ([i915#61]) -> [PASS][99]
>     [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-hsw6/igt@perf@create-destroy-userspace-config.html
>     [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-hsw7/igt@perf@create-destroy-userspace-config.html
> 
>    * igt@perf_pmu@busy-check-all-vcs1:
>      - shard-iclb:         [SKIP][100] ([fdo#112080]) -> [PASS][101]
>     [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
>     [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
> 
>    
> #### Warnings ####
> 
>    * igt@i915_pm_dc@dc6-dpms:
>      - shard-tglb:         [FAIL][102] ([i915#454]) -> [SKIP][103] ([i915#468])
>     [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7574/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
>     [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/shard-tglb6/igt@i915_pm_dc@dc6-dpms.html
> 
>    
>    {name}: This element is suppressed. This means it is ignored when computing
>            the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>    [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>    [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>    [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>    [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>    [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
>    [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
>    [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>    [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>    [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
>    [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>    [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>    [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>    [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>    [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
>    [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>    [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>    [i915#407]: https://gitlab.freedesktop.org/drm/intel/issues/407
>    [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
>    [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>    [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>    [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>    [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>    [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
>    [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
>    [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>    [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>    [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>    [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
>    [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>    [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
>    [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
>    [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>    [i915#747]: https://gitlab.freedesktop.org/drm/intel/issues/747
>    [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>    Additional (1): pig-hsw-4770r
> 
> 
> Build changes
> -------------
> 
>    * CI: CI-20190529 -> None
>    * Linux: CI_DRM_7574 -> Patchwork_15786
> 
>    CI-20190529: 20190529
>    CI_DRM_7574: 950244ca586c6f0efe243bf8c505c01ea5e579fa @ git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>    Patchwork_15786: 668ae1782e77fe0fd8056e7936b76c08139112b7 @ git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15786/index.html
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
