Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 613B65F7179
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 00:59:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4728110E0DC;
	Thu,  6 Oct 2022 22:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826CA10E0DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 22:59:36 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id e18so1908330wmq.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Oct 2022 15:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=avEX5sX4fWSQDRhQ5zfAho1hTMVB7N6QeUvMMZK6eUs=;
 b=OKIqK8JAjQKBLYBDL7mNsO5e4cDNNxjykGWD5Nnz32y6EU/F65djn2Tl4IcJ+sMQz/
 ks8XmGQzqIaYgDpg4TWW4w1CTVnw8aJi/KtB5jdi7LXyEwjZ3xXy6ruz6/4kQl3NPA10
 kOGbOGS1nn2ykomkEwWdtQTuNdMeKpSLKChixUG3hGANrOxF9XIq7l6pft0Bdwk16gMb
 H6/6tv896O1QHuBSwsdYwN07vzRT0iR+fvpIWfr2o7ZkBr4n2kQ6hvXqKUM024h/8LEr
 Q4PX0iGulQdXxJ5WDP6MTg2oNAeFRAwSilt3iVsrfACACxvFx7G1JjyCDQJDvDAbBU8N
 hzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=avEX5sX4fWSQDRhQ5zfAho1hTMVB7N6QeUvMMZK6eUs=;
 b=eEMZLfBSCHf9OJyPqu3fXigGGax0tCcpiT+1iPDmuxGu3CfFkDGobToGTdcvwa7jhZ
 wH5dP/ZV1fjmDERMvuy37ZaXiCRTGIwdOE+lI4wnpiwk1fmyPey2rgo8iFsnIfsz+gXq
 dpTBK51JFwhtOK9YmQ89FRcCx5UnHBo/2weOJMDvKxZwMNqxsMXo5XJPz1ZQwNIDrvqw
 Pf6FEkRvjTt1WoR2yWsl4novKzLW968g3SvAmcURYcwU2/DamYFPnxHalqvN0l2QGQL/
 lJ95g82LRzLWHcdsbOf1Qd8klpvwSkF/RfI1GmyU8DkhEcwZ6XC4jkYpkgsFClpwtMt8
 xKqA==
X-Gm-Message-State: ACrzQf0X212FW29f9j052UDT0MD3M0L7SC6rJUERDWEg8yWRnjqYCrg8
 BweRKwg4iSdlTpBklyhZIvscdWmrji3etMMetypmYw==
X-Google-Smtp-Source: AMsMyM6aKn0eJCmhL/qmPs1UoQzTSUlh8VLvuzERiTJx+Wjq91flrs4ovRZO5TNSUKWy+KWyE8aLgG8HwI6lGRUygt8=
X-Received: by 2002:a7b:c8d5:0:b0:3b4:76bc:5dae with SMTP id
 f21-20020a7bc8d5000000b003b476bc5daemr1335097wml.122.1665097174896; Thu, 06
 Oct 2022 15:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220915004601.320198-1-pceballos@google.com>
 <87ilkzsd4f.fsf@intel.com>
In-Reply-To: <87ilkzsd4f.fsf@intel.com>
From: Pablo Ceballos <pceballos@google.com>
Date: Thu, 6 Oct 2022 15:59:22 -0700
Message-ID: <CAO9JgFyCQAtBVvtNYa-jL5O0mM69g53XEO7DKP9yHXXXBudoNQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/lspcon: Increase LSPCON
 mode settle timeout
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Maxime Ripard <maxime@cerno.tech>, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 4, 2022 at 10:38 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> Got any bug report with more info, or any other details to back this up?
> This is kind of thin. What's the 800 ms based on?

This issue affected several different CometLake-based Chrome OS device
designs. The details of the original report are in the Google partner
issue tracker (issue # 178169843), but I believe this requires a
Google partner account to access:
https://partnerissuetracker.corp.google.com/issues/178169843

The summary is that we were seeing these "*ERROR* LSPCON mode hasn't
settled" messages in the kernel logs followed by the display not
working at all. We increased the timeout to 500ms while investigation
continued and this reduced the number of occurrences of this issue:
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/7b2899fc1a6f9409e8075b3153baaf02c4d1fc75

The problem continued to occur on about 2% of devices even after
increasing the timeout to 500ms. The investigation continued in issue
# 188035814, with engineers from Parade and Intel involved.
Ultimately, the recommendation from Intel engineers was to increase
the timeout further:
https://partnerissuetracker.corp.google.com/issues/188035814

The timeout was then increased to 1000ms:
https://chromium.googlesource.com/chromiumos/third_party/kernel/+/a16cfc2062e768c8e5ad8fa09b8ca127aa1ead9a

I recently ran 100 reboot trials on one device and found that the
median time for the LSPCON mode to settle was 440ms and the max was
444ms. But we know from the original reports that even after we set
the timeout to 500ms the issue continued to happen on some small
percentage of devices. So this is why I picked the larger value of
800ms.
