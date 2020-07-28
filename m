Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C48F23007B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 06:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B7D89970;
	Tue, 28 Jul 2020 04:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A5089970
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 04:08:24 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id o22so13733807qtt.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 21:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uPdB93A+qPHwjJxYU0mp24WtH0rjxpxj7ODZ/34eb6U=;
 b=lIwdOJaDm8O2F+v4O/+dkpCLKLCRAkmXRXuHy6mZh0AkNCGHoBbGAriGurA9tnzJ+8
 rLqF2fbg2d4wn0X8yIIJA1xFHZXi70HQjusYPzLhNykMrXEALebalEFi05BCKR2jMbhT
 KT/cYSSeS39cQnoeky6fs6UVGUPAnr3GLJHDlMwuLIuepAmpHJ/O4jA3WOLm25Ihc7uh
 yNGLhvjp86lQWqZJ+6UCH2txeRhaHdt/bOIZAW4tQkIe8VQPG5qIwElh+ZjPvLTl9g9l
 1CoElmqAoqXhOFsvDxzy/QDUyX+7U45N0MEmQdqeJzWXzfuB0kEOZkQF7MXUianozA9l
 iyvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uPdB93A+qPHwjJxYU0mp24WtH0rjxpxj7ODZ/34eb6U=;
 b=efJFFwp1R12T4P9TSBk1SSg165oHYb7HgpH9Au/rpXhuQzM0dmRhkXf3+sFa6A5l4Z
 rFjfkWBKIOb8r4ZyXORQt/KeFDqroCuhfDMhn/d2donraEwgyK0k6k41SIaiwzBn8Edz
 YZ7odMU411PWFji3at5lRMgryn0Yjpg4JBt2atLDCMU5V4riYOLKZ0JWrVUteUGmO/Z+
 pQOkNI40by62BRaHs9vhjxGKmfcUf/RiYnue2k9nQrelqLitB2LNTnRnD/LIzU8qdmpn
 CD12nU5BpvHcyPhKJqJ32dFR2n6ctWoDOal+nnOf1Oyb20t0mEyRXbPiIA8RC5UhlgZ5
 0whw==
X-Gm-Message-State: AOAM5336GYhMNhqWXqbRW/7z4yM+Jkq9a+rSAmwiF9XLCCcx2YhuWsU8
 MZUidSinClXw9M5IUMqHy+I=
X-Google-Smtp-Source: ABdhPJwmsolvWw28Wj4wMcURtJKwcbZanQx1ziQh8C337rAsZGe8YLO1qlNAYvg/pCeJ+yNPwIklEw==
X-Received: by 2002:ac8:6a07:: with SMTP id t7mr9732406qtr.1.1595909303502;
 Mon, 27 Jul 2020 21:08:23 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
 by smtp.gmail.com with ESMTPSA id i18sm10237093qtv.39.2020.07.27.21.08.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jul 2020 21:08:20 -0700 (PDT)
Date: Mon, 27 Jul 2020 21:08:18 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200728040818.GA3373496@ubuntu-n2-xlarge-x86>
References: <20200716042742.123169-1-natechancellor@gmail.com>
 <159487600890.25374.16029833195632024587@emeril.freedesktop.org>
 <74694924dbd548db634148b9ee8eaed2fc738f3f.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74694924dbd548db634148b9ee8eaed2fc738f3f.camel@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Ensure__that_ret_is_always_initialized_in_icl?=
 =?utf-8?q?=5Fcombo=5Fphy=5Fverify=5Fstate?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jose,

On Tue, Jul 28, 2020 at 01:47:56AM +0000, Souza, Jose wrote:
> Hi Nathan
> 
> Are you planning to check this regressions and send another version with the fix?Or can I do it on top of your patch?

Unfortunately, I have had little time for kernel work (full time retail
worker in the middle of a pandemic plus full time student is a real fun
combination...). I would definitely appreciate a follow up fix if you
can provide one, since I would imagine it would be a pre-existing issue
since all my patch does is make the check in the icl_combo_phy_enabled
if block work as expected (when it does not appear to be working
before).

Cheers,
Nathan

> On Thu, 2020-07-16 at 05:06 +0000, Patchwork wrote:
> > Patch Details
> > Series:	drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state
> > URL:	https://patchwork.freedesktop.org/series/79536/
> > State:	failure
> > Details:	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18185/index.html
> > CI Bug Log - changes from CI_DRM_8753 -> Patchwork_18185
> > Summary
> > FAILURE
> > 
> > Serious unknown changes coming with Patchwork_18185 absolutely need to be
> > verified manually.
> > 
> > If you think the reported changes have nothing to do with the changes
> > introduced in Patchwork_18185, please notify your bug team to allow them
> > to document this new failure mode, which will reduce false positives in CI.
> > 
> > External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18185/index.html
> > 
> > Possible new issues
> > Here are the unknown changes that may have been introduced in Patchwork_18185:
> > 
> > IGT changes
> > Possible regressions
> > igt@i915_pm_rpm@module-reload:
> > fi-tgl-y: PASS -> DMESG-WARN +4 similar issues
> > Suppressed
> > The following results come from untrusted machines, tests, or statuses.
> > They do not affect the overall result.
> > 
> > igt@i915_pm_rpm@basic-pci-d3-state:
> > 
> > {fi-tgl-dsi}: DMESG-WARN (i915#1982) -> DMESG-WARN
> > igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
> > 
> > {fi-tgl-dsi}: PASS -> DMESG-WARN +4 similar issues
> > Known issues
> > Here are the changes found in Patchwork_18185 that come from known issues:
> > 
> > IGT changes
> > Issues hit
> > igt@gem_exec_suspend@basic-s0:
> > 
> > fi-tgl-u2: PASS -> FAIL (i915#1888)
> > igt@kms_addfb_basic@bo-too-small:
> > 
> > fi-tgl-y: PASS -> DMESG-WARN (i915#402) +1 similar issue
> > Possible fixes
> > igt@debugfs_test@read_all_entries:
> > 
> > fi-bsw-nick: INCOMPLETE (i915#1250 / i915#1436) -> PASS
> > igt@gem_exec_store@basic:
> > 
> > fi-tgl-y: DMESG-WARN (i915#402) -> PASS +2 similar issues
> > igt@i915_module_load@reload:
> > 
> > fi-byt-j1900: DMESG-WARN (i915#1982) -> PASS
> > 
> > fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92) -> PASS
> > 
> > igt@i915_pm_rpm@basic-pci-d3-state:
> > 
> > fi-bsw-kefka: DMESG-WARN (i915#1982) -> PASS
> > igt@i915_selftest@live@execlists:
> > 
> > fi-kbl-r: INCOMPLETE (i915#794) -> PASS
> > igt@i915_selftest@live@gt_lrc:
> > 
> > fi-tgl-u2: DMESG-FAIL (i915#1233) -> PASS
> > igt@kms_flip@basic-flip-vs-modeset@a-dsi1:
> > 
> > {fi-tgl-dsi}: DMESG-WARN (i915#1982) -> PASS
> > igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
> > 
> > fi-tgl-u2: DMESG-WARN (i915#402) -> PASS
> > Warnings
> > igt@gem_exec_suspend@basic-s0:
> > 
> > fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92) -> DMESG-WARN (i915#1982 / i915#62 / i915#92 / i915#95)
> > igt@kms_flip@basic-flip-vs-dpms@a-dp1:
> > 
> > fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92 / i915#95) -> DMESG-WARN (i915#62 / i915#92)
> > igt@kms_force_connector_basic@force-edid:
> > 
> > fi-kbl-x1275: DMESG-WARN (i915#62 / i915#92) -> DMESG-WARN (i915#62 / i915#92 / i915#95) +4 similar issues
> > {name}: This element is suppressed. This means it is ignored when computing
> > the status of the difference (SUCCESS, WARNING, or FAILURE).
> > 
> > Participating hosts (46 -> 40)
> > Missing (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 
> > 
> > Build changes
> > Linux: CI_DRM_8753 -> Patchwork_18185
> > CI-20190529: 20190529
> > CI_DRM_8753: 62f01b776240c4586b3cbbdbe6065d4473d45429 @ git://anongit.freedesktop.org/gfx-ci/linux
> > IGT_5737: c18a9c1083ce9344ff71ae405b9f2deaa82b6702 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
> > Patchwork_18185: b0efac00fd8cdd3d7a3cc3140ba0df8bda56ebf3 @ git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > == Linux commits ==
> > 
> > b0efac00fd8c drm/i915/display: Ensure that ret is always initialized in icl_combo_phy_verify_state
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > 
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > 
> > 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
