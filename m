Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C613251725
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 13:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AFDD6E8E4;
	Tue, 25 Aug 2020 11:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D5C6E8E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 11:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598353814;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=9rG9mMgEApt5XPCbKyqnbYRkja649OIZambe0ndaATY=;
 b=Mv8KaIfCqRl2bNj8lC8LUvXt/HIE1PFNmpa5FBtX1y3ctLZLYNOOPlPVuXQT9lF7QlRwOZ
 +kPLYpl3r453Ase9X5jS6yytVXXJGhJ0LufjHhgwqqFQArB/nmNrv9aHLQfBDJRDAdFeUC
 O4BiyX6ebG1GHbopyU9LpSLaRpG/oRY=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-G9MRpp0_M7GTECjH99GjuQ-1; Tue, 25 Aug 2020 07:10:06 -0400
X-MC-Unique: G9MRpp0_M7GTECjH99GjuQ-1
Received: by mail-ej1-f69.google.com with SMTP id o10so3714509eji.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 04:10:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9rG9mMgEApt5XPCbKyqnbYRkja649OIZambe0ndaATY=;
 b=Ozz/AO8MonWyA35E5PQM/3zJsbRnFT2wYhOOCP7q8y6pMdxBR2OgRyt49hbwVFlnJG
 wBUdtRsU7JURKIfLZdwHBh8DIrSOD92FBI4NKLCs0EiybI2vmNFWaVtYYxU3r+DjJFaF
 6zSqmPWDF4QyDebjXwqOmlGZ3Vthd6G+J7ABi5jhs4M5Itn81DQvZ2sX9mvTyAw38sFk
 GBDiiukx9dZPYe0Zuy09hqrX4ixBZGFadHhQM9B5y/OYhT3PGGgrWOb7IxpWVxE1fsNG
 /MtJ2gjnXz+HSC615BGPaJj37dUj2hKO3UOvAg37TjJclWlsDeoEzncOw3xN6M3deA8l
 zxuQ==
X-Gm-Message-State: AOAM531d75I9m4WJ1hN6AzuQweN0dfmBdBUYw2riIYYAm7aJVNHs31ub
 DTLKHHBfZa1pbV2vhC9B/vt8hiIYdwy4bOvA34rIIICI13THUnKGwkk2WzBu+lVikzzE2HaPqWp
 0YkR3Ek0ivG1d86xTRzJxXWJnLNak
X-Received: by 2002:a05:6402:229b:: with SMTP id
 cw27mr6679241edb.272.1598353804784; 
 Tue, 25 Aug 2020 04:10:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfqKclrIAbaqYsTF7soYIb5yI7ljrA9MUiGt2tvef0/VvhXLGoqrJ5RDGX1rv3tRcNK9iwHA==
X-Received: by 2002:a05:6402:229b:: with SMTP id
 cw27mr6679223edb.272.1598353804487; 
 Tue, 25 Aug 2020 04:10:04 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id i14sm12672435edr.15.2020.08.25.04.10.03
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Aug 2020 04:10:03 -0700 (PDT)
To: intel-gfx@lists.freedesktop.org
References: <20200825100106.61941-1-hdegoede@redhat.com>
 <159835227254.23678.3382961489604995121@emeril.freedesktop.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <85253c47-2498-a787-86fb-527f21157450@redhat.com>
Date: Tue, 25 Aug 2020 13:10:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159835227254.23678.3382961489604995121@emeril.freedesktop.org>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.004
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgYWNw?=
 =?utf-8?q?i/pwm/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_code_to_u?=
 =?utf-8?q?se_the_atomic_PWM_API?=
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

On 8/25/20 12:44 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	acpi/pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API
> *URL:*	https://patchwork.freedesktop.org/series/80976/
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/index.html
> 
> 
>   CI Bug Log - changes from CI_DRM_8924 -> Patchwork_18396
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_18396 absolutely need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_18396, please notify your bug team to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/index.html
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in Patchwork_18396:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_exec_parallel@engines@contexts:
>       o fi-kbl-x1275: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-kbl-x1275/igt@gem_exec_parallel@engines@contexts.html>

v6 of this patch-set did pass the BAT tests yesterday and nothing has really
changed other then a single cast to avoid a 64 bit divide which only does
anything on 32 bit archs. And that divide is a param to a drm_dbg statement.

So this seems to be a false-positive. I guess that this test sometimes
failing should be added to the known issues list ?

Anyways since v6 did pass and nothing has really changed I'm going to
ignore this test result.

Regards,

Hans







>     Known issues
> 
> Here are the changes found in Patchwork_18396 that come from known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@i915_module_load@reload:
> 
>       o fi-bxt-dsi: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bxt-dsi/igt@i915_module_load@reload.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-bxt-dsi/igt@i915_module_load@reload.html> (i915#1418 <https://gitlab.freedesktop.org/drm/intel/issues/1418> / i915#1635 <https://gitlab.freedesktop.org/drm/intel/issues/1635>)
>   *
> 
>     igt@i915_pm_rpm@module-reload:
> 
>       o fi-bxt-dsi: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-bxt-dsi/igt@i915_pm_rpm@module-reload.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1635 <https://gitlab.freedesktop.org/drm/intel/issues/1635>)
>   *
> 
>     igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
> 
>       o fi-icl-u2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) +1 similar issue
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@i915_pm_rpm@basic-pci-d3-state:
> 
>       o fi-bsw-kefka: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html>
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o fi-byt-j1900: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> +1 similar issue
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o fi-icl-u2: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>   *
> 
>     igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2:
> 
>       o fi-skl-guc: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html> (i915#2203 <https://gitlab.freedesktop.org/drm/intel/issues/2203>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-skl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@c-hdmi-a2.html>
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> 
>       o fi-apl-guc: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html> (i915#1635 <https://gitlab.freedesktop.org/drm/intel/issues/1635> / i915#337 <https://gitlab.freedesktop.org/drm/intel/issues/337>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@i915_pm_rpm@module-reload:
> 
>       o fi-kbl-x1275: DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62> / i915#95 <https://gitlab.freedesktop.org/drm/intel/issues/95>) -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62>)
>   *
> 
>     igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
> 
>       o fi-kbl-x1275: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62> / i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92>) -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62> / i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92> / i915#95
>         <https://gitlab.freedesktop.org/drm/intel/issues/95>) +2 similar issues
>   *
> 
>     igt@kms_force_connector_basic@force-edid:
> 
>       o fi-kbl-x1275: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62> / i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92> / i915#95 <https://gitlab.freedesktop.org/drm/intel/issues/95>) -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18396/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html> (i915#62 <https://gitlab.freedesktop.org/drm/intel/issues/62> / i915#92 <https://gitlab.freedesktop.org/drm/intel/issues/92>) +5
>         similar issues
> 
> 
>     Participating hosts (37 -> 34)
> 
> Missing (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_8924 -> Patchwork_18396
> 
> CI-20190529: 20190529
> CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux
> IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> Patchwork_18396: 871bbce513b9511e674714dec71406955d950ecd @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Linux commits ==
> 
> 871bbce513b9 drm/i915: panel: Use atomic PWM API for devs with an external PWM controller
> 5cba5633c584 drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
> 6c5200023ed2 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
> ace83a7f4e48 drm/i915: panel: Add get_vbt_pwm_freq() helper
> 9a833ba135f1 pwm: crc: Implement get_state() method
> f0758f16468b pwm: crc: Implement apply() method to support the new atomic PWM API
> 04e01429ab69 pwm: crc: Enable/disable PWM output on enable/disable
> 2e80db8eb3ff pwm: crc: Fix period changes not having any effect
> 2061f911c93f pwm: crc: Fix off-by-one error in the clock-divider calculations
> 2dda19e1952a pwm: crc: Fix period / duty_cycle times being off by a factor of 256
> 9fb3d675a6b6 pwm: lpss: Use pwm_lpss_apply() when restoring state on resume
> 0d3912600257 pwm: lpss: Add pwm_lpss_prepare_enable() helper
> a4e4727f40e6 pwm: lpss: Add range limit check for the base_unit register value
> 5dd4db0dc219 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
> 1d26b9fe569e ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
> ef85c003b00a ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
