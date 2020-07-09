Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2863219976
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 09:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1166E9DB;
	Thu,  9 Jul 2020 07:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3506E9DB
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 07:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594278611;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZsBt0r8Vxo+SMWCzUwGp3qN4AGxp+HDRS15tuKLPcmY=;
 b=ONPHq9x4xPT52i0xDeKODgS+32rFvQDDW+ozr1vKTvFgjJoiWOaaJ6DtQlD2dTF+vnvVR0
 xTELPppsF5+K8J1Bnu86zTttT9k6lZbhv/iUaHXDzKpabaDqVxdlb3rgVsKX2UAGfta96q
 r+Vs8BBTL38mjTeKZe1ekDmcBI496q4=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-483-D7crWInzNTa8-iQBzPsHug-1; Thu, 09 Jul 2020 03:09:57 -0400
X-MC-Unique: D7crWInzNTa8-iQBzPsHug-1
Received: by mail-ed1-f69.google.com with SMTP id i3so1746583edq.21
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 00:09:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZsBt0r8Vxo+SMWCzUwGp3qN4AGxp+HDRS15tuKLPcmY=;
 b=e60nla9sbUeaLdqQrxiKk3FJAw+EeAqhTX9R+7HyrcdLsck3zXWhLVyJhY0IHYPvkZ
 W2ZBDTQesN+/dsrJCkzhrIEKg7Q3592uTnl26iFrjEaI6OeI126vwtsbcsNYRmrXMQQF
 CkaGAD+5adx044qGbAmsXRXmXM1rb+uvtev0DjQMxR108Yj4CEGDpDADpYeqJY0RftGG
 XWqlgqBdBvJvVRT2rmQYyQWPhTIzIa6cK8NDPM4ze9zIVt/7QNp78G1li8uBRn4W1Sbv
 gLt5p9pKgGqS9wI/sLQ5RYkYUuxBJ8QO7WAQ6vyPulkQT27iexqkO4hjjOtQ3yaCMJJg
 0c5w==
X-Gm-Message-State: AOAM530I0pqySW28g8LB33UoQ8Rb7M6MxxoXIp0H3Xz/nYRsJ1IiMg6R
 w+uDBMAWsR1gA5HlBRU0UWMmBXmC1TzxL7wUHs6nkqzYq4uHr8yC6OyDKxbm39raz1us8qJppOp
 gFauGL/Yj6N3D/i3VNTmzxN7rZjeT
X-Received: by 2002:a50:ab5c:: with SMTP id t28mr70317928edc.209.1594278595311; 
 Thu, 09 Jul 2020 00:09:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxpsNwg8Sedh+784PxGvpUY3fzpOrxajdEAtAsNp1wQ85EMOzuQkTULoMq0xa/TjLv9Nw7eng==
X-Received: by 2002:a50:ab5c:: with SMTP id t28mr70317912edc.209.1594278595021; 
 Thu, 09 Jul 2020 00:09:55 -0700 (PDT)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id w3sm1283682edq.65.2020.07.09.00.09.54
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jul 2020 00:09:54 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
References: <20200708211432.28612-1-hdegoede@redhat.com>
 <159426558980.31094.44046885631859783@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c10afa8c-eab8-ef05-e4be-d8630e112e42@redhat.com>
Date: Thu, 9 Jul 2020 09:09:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <159426558980.31094.44046885631859783@emeril.freedesktop.org>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgYWNw?=
 =?utf-8?q?i/pwm/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_code_to_u?=
 =?utf-8?q?se_the_atomic_PWM_API_=28rev2=29?=
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

Hi,

On 09-07-2020 05:33, Patchwork wrote:
> == Series Details ==
> 
> Series: acpi/pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API (rev2)
> URL   : https://patchwork.freedesktop.org/series/78657/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_8717_full -> Patchwork_18116_full
> ====================================================
> 
> Summary
> -------
> 
>    **FAILURE**
> 
>    Serious unknown changes coming with Patchwork_18116_full absolutely need to be
>    verified manually.
>    
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_18116_full, please notify your bug team to allow them
>    to document this new failure mode, which will reduce false positives in CI.
> 
>    
> 
> Possible new issues
> -------------------
> 
>    Here are the unknown changes that may have been introduced in Patchwork_18116_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>    * igt@i915_module_load@reload-with-fault-injection:
>      - shard-hsw:          [PASS][1] -> [INCOMPLETE][2]
>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-hsw6/igt@i915_module_load@reload-with-fault-injection.html
>     [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-hsw7/igt@i915_module_load@reload-with-fault-injection.html

This failure seems unrelated to the changes this series makes, so I plan to ignore
this failure.

Regards,

Hans




> 
>    
> Known issues
> ------------
> 
>    Here are the changes found in Patchwork_18116_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>    * igt@gem_exec_reloc@basic-concurrent0:
>      - shard-glk:          [PASS][3] -> [FAIL][4] ([i915#1930])
>     [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk3/igt@gem_exec_reloc@basic-concurrent0.html
>     [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-glk7/igt@gem_exec_reloc@basic-concurrent0.html
> 
>    * igt@gem_exec_whisper@basic-contexts:
>      - shard-glk:          [PASS][5] -> [DMESG-WARN][6] ([i915#118] / [i915#95]) +1 similar issue
>     [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk4/igt@gem_exec_whisper@basic-contexts.html
>     [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-glk9/igt@gem_exec_whisper@basic-contexts.html
> 
>    * igt@i915_module_load@reload:
>      - shard-tglb:         [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
>     [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@i915_module_load@reload.html
>     [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-tglb2/igt@i915_module_load@reload.html
> 
>    * igt@kms_big_fb@linear-16bpp-rotate-0:
>      - shard-kbl:          [PASS][9] -> [DMESG-FAIL][10] ([i915#95])
>     [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl1/igt@kms_big_fb@linear-16bpp-rotate-0.html
>     [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-kbl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
>      - shard-apl:          [PASS][11] -> [DMESG-FAIL][12] ([i915#1635] / [i915#95])
>     [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_big_fb@linear-16bpp-rotate-0.html
>     [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl1/igt@kms_big_fb@linear-16bpp-rotate-0.html
> 
>    * igt@kms_color@pipe-c-ctm-0-25:
>      - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +7 similar issues
>     [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl8/igt@kms_color@pipe-c-ctm-0-25.html
>     [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-skl2/igt@kms_color@pipe-c-ctm-0-25.html
> 
>    * igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement:
>      - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#93] / [i915#95]) +1 similar issue
>     [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
>     [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-128x128-rapid-movement.html
> 
>    * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
>      - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1635] / [i915#95]) +23 similar issues
>     [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl3/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
>     [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
> 
>    * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-vga1-hdmi-a1:
>      - shard-hsw:          [PASS][19] -> [FAIL][20] ([i915#79])
>     [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-hsw4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-vga1-hdmi-a1.html
>     [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-hsw4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-vga1-hdmi-a1.html
> 
>    * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>      - shard-kbl:          [PASS][21] -> [DMESG-WARN][22] ([i915#180]) +6 similar issues
>     [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>     [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>    * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>      - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2122])
>     [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>     [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>    * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>      - shard-tglb:         [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +1 similar issue
>     [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>     [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>    * igt@kms_psr2_su@page_flip:
>      - shard-iclb:         [PASS][27] -> [SKIP][28] ([fdo#109642] / [fdo#111068])
>     [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr2_su@page_flip.html
>     [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-iclb5/igt@kms_psr2_su@page_flip.html
> 
>    * igt@kms_psr@psr2_suspend:
>      - shard-iclb:         [PASS][29] -> [SKIP][30] ([fdo#109441]) +1 similar issue
>     [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb2/igt@kms_psr@psr2_suspend.html
>     [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-iclb6/igt@kms_psr@psr2_suspend.html
> 
>    * igt@perf@blocking-parameterized:
>      - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#1542])
>     [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb1/igt@perf@blocking-parameterized.html
>     [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-iclb3/igt@perf@blocking-parameterized.html
> 
>    * igt@perf_pmu@semaphore-busy@rcs0:
>      - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#1820])
>     [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl4/igt@perf_pmu@semaphore-busy@rcs0.html
>     [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-kbl1/igt@perf_pmu@semaphore-busy@rcs0.html
> 
>    
> #### Possible fixes ####
> 
>    * igt@gem_exec_whisper@basic-contexts-forked:
>      - shard-glk:          [DMESG-WARN][35] ([i915#118] / [i915#95]) -> [PASS][36]
>     [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
>     [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-glk6/igt@gem_exec_whisper@basic-contexts-forked.html
> 
>    * igt@gen9_exec_parse@allowed-all:
>      - shard-apl:          [DMESG-WARN][37] ([i915#1436] / [i915#716]) -> [PASS][38]
>     [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@gen9_exec_parse@allowed-all.html
>     [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl2/igt@gen9_exec_parse@allowed-all.html
> 
>    * igt@i915_module_load@reload:
>      - shard-apl:          [DMESG-WARN][39] ([i915#1982]) -> [PASS][40]
>     [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl1/igt@i915_module_load@reload.html
>     [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl7/igt@i915_module_load@reload.html
> 
>    * igt@kms_big_fb@linear-64bpp-rotate-180:
>      - shard-glk:          [DMESG-FAIL][41] ([i915#118] / [i915#95]) -> [PASS][42] +1 similar issue
>     [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-glk8/igt@kms_big_fb@linear-64bpp-rotate-180.html
>     [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-glk3/igt@kms_big_fb@linear-64bpp-rotate-180.html
> 
>    * igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding:
>      - shard-tglb:         [DMESG-WARN][43] ([i915#402]) -> [PASS][44]
>     [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
>     [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-256x256-sliding.html
> 
>    * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
>      - shard-apl:          [DMESG-WARN][45] ([i915#1635] / [i915#95]) -> [PASS][46] +19 similar issues
>     [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
>     [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
> 
>    * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
>      - shard-skl:          [DMESG-WARN][47] ([i915#1982]) -> [PASS][48] +6 similar issues
>     [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
>     [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-skl7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
> 
>    * igt@kms_flip@flip-vs-suspend@c-dp1:
>      - shard-kbl:          [DMESG-WARN][49] ([i915#180]) -> [PASS][50] +1 similar issue
>     [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
>     [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>    * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>      - shard-skl:          [FAIL][51] ([i915#49]) -> [PASS][52]
>     [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>     [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>    * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>      - shard-tglb:         [DMESG-WARN][53] ([i915#1982]) -> [PASS][54] +1 similar issue
>     [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
>     [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>    * igt@kms_hdr@bpc-switch:
>      - shard-skl:          [FAIL][55] ([i915#1188]) -> [PASS][56]
>     [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl1/igt@kms_hdr@bpc-switch.html
>     [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-skl5/igt@kms_hdr@bpc-switch.html
> 
>    * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>      - shard-skl:          [FAIL][57] ([fdo#108145] / [i915#265]) -> [PASS][58] +2 similar issues
>     [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>     [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>    * igt@kms_psr@psr2_sprite_render:
>      - shard-iclb:         [SKIP][59] ([fdo#109441]) -> [PASS][60] +2 similar issues
>     [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-iclb5/igt@kms_psr@psr2_sprite_render.html
>     [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
> 
>    
> #### Warnings ####
> 
>    * igt@kms_chamelium@dp-crc-fast:
>      - shard-apl:          [SKIP][61] ([fdo#109271] / [fdo#111827] / [i915#1635]) -> [SKIP][62] ([fdo#109271] / [fdo#111827])
>     [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl4/igt@kms_chamelium@dp-crc-fast.html
>     [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl3/igt@kms_chamelium@dp-crc-fast.html
> 
>    * igt@kms_chamelium@hdmi-crc-fast:
>      - shard-apl:          [SKIP][63] ([fdo#109271] / [fdo#111827]) -> [SKIP][64] ([fdo#109271] / [fdo#111827] / [i915#1635])
>     [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl8/igt@kms_chamelium@hdmi-crc-fast.html
>     [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl7/igt@kms_chamelium@hdmi-crc-fast.html
> 
>    * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>      - shard-apl:          [SKIP][65] ([fdo#109271]) -> [SKIP][66] ([fdo#109271] / [i915#1635]) +8 similar issues
>     [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>     [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>    * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render:
>      - shard-apl:          [FAIL][67] ([i915#49]) -> [DMESG-FAIL][68] ([i915#1635] / [i915#49] / [i915#95])
>     [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
>     [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-render.html
> 
>    * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>      - shard-apl:          [DMESG-FAIL][69] ([fdo#108145] / [i915#1635] / [i915#95]) -> [FAIL][70] ([fdo#108145] / [i915#265])
>     [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
>     [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>    * igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant:
>      - shard-apl:          [SKIP][71] ([fdo#109271] / [i915#1635]) -> [SKIP][72] ([fdo#109271]) +6 similar issues
>     [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl7/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html
>     [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl8/igt@kms_plane_alpha_blend@pipe-d-coverage-vs-premult-vs-constant.html
> 
>    * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>      - shard-kbl:          [DMESG-WARN][73] ([i915#93] / [i915#95]) -> [DMESG-WARN][74] ([i915#180] / [i915#93] / [i915#95])
>     [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>     [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-kbl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>    * igt@runner@aborted:
>      - shard-apl:          ([FAIL][75], [FAIL][76], [FAIL][77]) ([fdo#109271] / [i915#1610] / [i915#1635] / [i915#2110] / [i915#716]) -> [FAIL][78] ([i915#1635] / [i915#2110])
>     [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
>     [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl2/igt@runner@aborted.html
>     [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8717/shard-apl6/igt@runner@aborted.html
>     [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/shard-apl8/igt@runner@aborted.html
> 
>    
>    [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>    [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>    [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>    [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>    [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>    [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>    [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>    [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>    [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
>    [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>    [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
>    [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>    [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>    [i915#1820]: https://gitlab.freedesktop.org/drm/intel/issues/1820
>    [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
>    [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>    [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
>    [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>    [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>    [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>    [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>    [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>    [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>    [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
>    [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>    No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>    * Linux: CI_DRM_8717 -> Patchwork_18116
> 
>    CI-20190529: 20190529
>    CI_DRM_8717: 6e5ac4c72af4e86138f04cc2dd089b069bad873f @ git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_5728: 6988eebf78e9ce9746b8c2b7d21cb4174d6623a9 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>    Patchwork_18116: f5cb7cd44c63bc13aa41fa6d9b9776a5318bb601 @ git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18116/index.html
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
