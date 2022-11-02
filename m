Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AC561628E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 13:19:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B46110E054;
	Wed,  2 Nov 2022 12:19:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8062210E054
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 12:19:07 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id g7so27948882lfv.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Nov 2022 05:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Q9BNoCNZ+IvdOcAvRI7JkF1PpV8GoYAgeN5s35BK3gQ=;
 b=AXSTbwIhjQdtYzT+vrIXS798pVbYT4k+fQpYiUV2+m8IhJPddXaFbi6IXCr15s6t7R
 h1qZSEEdIm591T5a2as57JeVfKyST7MNcB9iS5r5IrutEa7LKyPTTbK6uxJIVRg5skgv
 0oVyMC01IFagAo7v+MpDu4aYh0I7s1SxKlE/F2ZdJ+gybNzNXLhX4OfQzCAXUcM0B4QV
 rDQQkkI+AtLxXeMSLySUaeMYI+8e+Rddt5V2L/bxH8zQHoWPNwMgrO4UQV3g0ecFPPwq
 N0xmRYYLOgcerWQqlin/DL834BCCSnH+t3EXiJPZyLHqzQRj3qNPKqd+D66CywAsMwyq
 NEXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Q9BNoCNZ+IvdOcAvRI7JkF1PpV8GoYAgeN5s35BK3gQ=;
 b=apAp7GNWUVpC7EDfTq5H38Qc85NPu19+vAKFlEsn8uEw+kMvVOPQPpUxomUSMlOB52
 EBpKQ8IS2WdrSA7UjbFnWZ1oMGXzGip8OODzpHTEtMmGSbK+90Mh2l4RGLj0Sqork4SM
 eM5r61iBaUZdEr10Q3wDDk/SK9Tn1Ir6Ir7dncDL/suH49XL1RQpqWMf73Sn/QrdlIiK
 mEkXB11mMXE73J06VxbpCofs7Pvy77DAxXTN4V48wJVpSbku/1nvDO80tzmTRYEL1e36
 69rHFDAECfPNLZxoaTFA64W0vJSKiJtXeg/deIndh6uKOUL7EYiEKU5gkQoJcW7uAArO
 yVIw==
X-Gm-Message-State: ACrzQf3f35FTAGeKNRuW6VzQhzuveLvPKJc+8VdqMeqEsdCQXpDedePQ
 lqHkfWs34S45uYPHI9b645/sD5uAX/iIZQY1FIE=
X-Google-Smtp-Source: AMsMyM5xXkCe0V9pCGNKI2VB17IhCJVqoJpQ1VuWK8Pg4+DIkyvNsVVV83+UnKybRowHuXP6kNzrqxA759n+4W/DcT0=
X-Received: by 2002:a05:6512:239c:b0:4a2:7e95:5682 with SMTP id
 c28-20020a056512239c00b004a27e955682mr8677295lfv.185.1667391545508; Wed, 02
 Nov 2022 05:19:05 -0700 (PDT)
MIME-Version: 1.0
References: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
 <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
 <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
In-Reply-To: <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 2 Nov 2022 12:18:37 +0000
Message-ID: <CAM0jSHM99OxpmS-pqmEiyoK2pa07fnhekTKLRQTMsWqFkHCgJg@mail.gmail.com>
To: Brian Norris <briannorris@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915=3A_Set_PROBE=5FPREFER=5FASYNCHRONOUS?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 1 Nov 2022 at 21:58, Brian Norris <briannorris@chromium.org> wrote:
>
> On Fri, Oct 28, 2022 at 5:24 PM Patchwork
> <patchwork@emeril.freedesktop.org> wrote:
> >
> > Patch Details
> > Series:drm/i915: Set PROBE_PREFER_ASYNCHRONOUS
> > URL:https://patchwork.freedesktop.org/series/110277/
> > State:failure
> > Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
> >
> > CI Bug Log - changes from CI_DRM_12317 -> Patchwork_110277v1
> >
> > Summary
> >
> > FAILURE
> >
> > Serious unknown changes coming with Patchwork_110277v1 absolutely need to be
> > verified manually.
> >
> > If you think the reported changes have nothing to do with the changes
> > introduced in Patchwork_110277v1, please notify your bug team to allow them
> > to document this new failure mode, which will reduce false positives in CI.
> >
> > External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
>
> For the record, I have almost zero idea what to do with this. From
> what I can tell, most (all?) of these failures are flaky(?) already
> and are probably not related to my change.

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html

According to that link, this change appears to break every platform
when running the live selftests (looking at the purple squares).
Running the selftests normally involves loading and unloading the
module. Looking at the logs there is scary stuff like:

<3> [371.938060] INFO: task kworker/u12:1:46 blocked for more than 61 seconds.
<3> [371.944992] Tainted: G U W 6.1.0-rc2-Patchwork_110277v1-g0f9cbc285f7d+ #1
<3> [371.953546] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
disables this message.
<6> [371.961428] task:kworker/u12:1 state:D stack:11512 pid:46 ppid:2
flags:0x00004000
<6> [371.961433] Workqueue: events_unbound async_run_entry_fn
<6> [371.961452] Call Trace:
<6> [371.961454] <TASK>
<6> [371.961457] __schedule+0x30e/0xa70
<6> [371.961481] ? usleep_range_state+0xb0/0xb0
<6> [371.961484] ? __wait_for_common+0xd3/0x1d0
<6> [371.961487] schedule+0x4e/0xd0
<6> [371.961489] schedule_timeout+0x237/0x2e0
<6> [371.961493] ? usleep_range_state+0xb0/0xb0
<6> [371.961495] ? __wait_for_common+0xd3/0x1d0
<6> [371.961497] ? mark_held_locks+0x48/0x80
<6> [371.961500] ? _raw_spin_unlock_irq+0x1f/0x50
<6> [371.961504] ? usleep_range_state+0xb0/0xb0
<6> [371.961506] __wait_for_common+0xf5/0x1d0
<6> [371.961526] __flush_work+0x2c4/0x4e0
<6> [371.961530] ? flush_workqueue_prep_pwqs+0x120/0x120
<6> [371.961553] ? get_work_pool+0x90/0x90
<6> [371.961556] __cancel_work_timer+0x14e/0x1f0
<6> [371.961559] ? _raw_spin_unlock_irqrestore+0x54/0x70
<6> [371.961562] ? lockdep_hardirqs_on+0xbf/0x140
<6> [371.961567] intel_display_driver_unregister+0x27/0x40 [i915]
<6> [371.961722] i915_driver_remove+0x50/0x100 [i915]
<6> [371.961862] i915_pci_probe+0x123/0x240 [i915]
<6> [371.961996] ? _raw_spin_unlock_irqrestore+0x3d/0x70
<6> [371.962001] pci_device_probe+0x95/0x110
<6> [371.962005] really_probe+0xd6/0x350
<6> [371.962008] ? pm_runtime_barrier+0x4b/0xa0
<6> [371.962013] __driver_probe_device+0x73/0x170
<6> [371.962016] driver_probe_device+0x1a/0x90
<6> [371.962019] __driver_attach_async_helper+0x31/0x80
<6> [371.962023] async_run_entry_fn+0x28/0x130
<6> [371.962026] process_one_work+0x272/0x5b0
<6> [371.962032] worker_thread+0x37/0x370
<6> [371.962036] ? process_one_work+0x5b0/0x5b0
<6> [371.962038] kthread+0xed/0x120
<6> [371.962040] ? kthread_complete_and_exit+0x20/0x20
<6> [371.962044] ret_from_fork+0x1f/0x30
<6> [371.962053] </TASK>
<3> [371.962055] INFO: task kworker/3:1:57 blocked for more than 61 seconds.
<3> [371.968696] Tainted: G U W 6.1.0-rc2-Patchwork_110277v1-g0f9cbc285f7d+ #1
<3> [371.977219] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
disables this message.
<6> [371.985049] task:kworker/3:1 state:D stack:12488 pid:57 ppid:2
flags:0x00004000
<6> [371.985053] Workqueue: events output_poll_execute [drm_kms_helper]
<6> [371.985080] Call Trace:
<6> [371.985081] <TASK>
<6> [371.985102] __schedule+0x30e/0xa70
<6> [371.985108] schedule+0x4e/0xd0
<6> [371.985110] async_synchronize_cookie_domain+0xe7/0x120
<6> [371.985113] ? finish_swait+0x90/0x90
<6> [371.985117] intel_fbdev_output_poll_changed+0x82/0x90 [i915]
<6> [371.985281] drm_kms_helper_hotplug_event+0x1e/0x30 [drm_kms_helper]
<6> [371.985291] output_poll_execute+0x1f5/0x200 [drm_kms_helper]
<6> [371.985303] process_one_work+0x272/0x5b0
<6> [371.985310] worker_thread+0x37/0x370
<6> [371.985313] ? process_one_work+0x5b0/0x5b0
<6> [371.985316] kthread+0xed/0x120
<6> [371.985317] ? kthread_complete_and_exit+0x20/0x20
<6> [371.985321] ret_from_fork+0x1f/0x30
<6> [371.985329] </TASK>
<3> [371.985348] INFO: task i915_selftest:6017 blocked for more than 61 seconds.


>
> But if someone believes to actually be a blocking issue with my patch,
> let me know, and I can see if I can figure out a better answer than
> that.
>
> Thanks,
> Brian
