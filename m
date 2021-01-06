Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD0E2EBE35
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 14:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A7EB6E0B9;
	Wed,  6 Jan 2021 13:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8823A6E08E
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 13:01:50 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id q22so4974346eja.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 Jan 2021 05:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mail-followup-to:mime-version
 :content-disposition;
 bh=KNdjAdSU7GXnb7OjjYKzs3OQ1C9o0XD3mOBVZ4EtD7g=;
 b=OhptvGyZkQ8LXgAgerp2Ozpb1RNg5sSlI5w6Uz9b8LdKdsvyj4E5g3w0tKomIzNx7X
 SFeoRhB/K8oOonqyoyiumXBsLQv6jTkva4afbSIM7/LZoVk40T7ksg3btCNNHpe6V2eq
 hGz41inmJheiL4Yy9RC9B3DRhuRzTsaVkaXyp0e1xJ944OPrfDTtcytZ65LWEXCKkzrh
 /xhkiWJYtzr8AGoF3bexaIPEJfjzmGqkqs4b8kAd0hqbA/w/2FYrPryDoMZz2zHK2dxo
 I4NXxnKt4L29nlNqsUsrzb21aWrRuo6HyvSdDWHpA6aoil/pvShIgZf8e6mZGlqykfQJ
 TvLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:mime-version:content-disposition;
 bh=KNdjAdSU7GXnb7OjjYKzs3OQ1C9o0XD3mOBVZ4EtD7g=;
 b=JMofINeQ6LEAA7GtoavdBpiTAOXXdXNlOM3nGXDNeVWWullzSy5IBTLd7KT3ez1QKS
 EJ+dpnWVTigjDVRTy6HXes1uJqoWNXjLuCYMyMiCjO/cKo5kCnt2zJL5fUzYB/2KJNpo
 1K9iOATCKDgINv9UpJH1DQqdiXorCAw5tga++tr8MHeoCDf+8MGbV/OPnv7cs3giknQq
 aiNUqlNNxDjCpVk+xCH33BIaa1y9dyv/WCggudbS3nDDKkFPSN4z69aOi8d3IAk1vA5A
 dno98Y22FwHaanKbF9hFAnxT3vfjiClm1u3NRZqslZuEsx4DEN6NFGSCQeXWV7OvEkgq
 Qy7A==
X-Gm-Message-State: AOAM533jFXhHNZC+Bf4RB+Y8XluDeA4nRzn4J8VR96lbAzW4NL2Mzaf9
 RyMEx2G7RzH2jMe89sAMF26BeSOB2j/wzg==
X-Google-Smtp-Source: ABdhPJwy91eQHOODhc08jZmfLV7JyL1DZce8RuUlp8E2zc5PR2DAx4HnkqPwchRQbarwJ9ykW09SSA==
X-Received: by 2002:a17:906:b09a:: with SMTP id
 x26mr2902780ejy.199.1609938108971; 
 Wed, 06 Jan 2021 05:01:48 -0800 (PST)
Received: from raspi.lan (94-21-74-47.pool.digikabel.hu. [94.21.74.47])
 by smtp.gmail.com with ESMTPSA id j25sm1232823ejx.125.2021.01.06.05.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 05:01:48 -0800 (PST)
Date: Wed, 6 Jan 2021 14:01:46 +0100
From: Gabor Gombas <gombasgg@gmail.com>
To: linux-kernel@vger.kernel.org
Message-ID: <X/W0ugszWM5OVSMR@lan>
Mail-Followup-To: linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, alsa-devel@alsa-project.org
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Wed, 06 Jan 2021 13:05:26 +0000
Subject: [Intel-gfx] 5.10 regression: hang at shutdown, DRM or ALSA suspected
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
Cc: intel-gfx@lists.freedesktop.org, alsa-devel@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

I have an Intel NUC D54250WYK which no longer shuts down properly after
moving from 5.9.16 to 5.10.4, because systemd hangs. The kernel logs
make me beleive it is likely a locking issue in either DRM or ALSA or
both. Relevant messages which I could extract from the journal:

Jan 05 22:21:38 host systemd[2664]: pulseaudio.service: State 'stop-sigterm' timed out. Killing.
Jan 05 22:21:38 host systemd[2664]: pulseaudio.service: Killing process 2805 (pulseaudio) with signal SIGKILL.
Jan 05 22:23:03 host kernel: INFO: task systemd:1 blocked for more than 122 seconds.
Jan 05 22:23:03 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:23:03 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:23:03 host kernel: task:systemd         state:D stack:    0 pid:    1 ppid:     0 flags:0x00004002
Jan 05 22:23:03 host kernel: Call Trace:
Jan 05 22:23:03 host kernel:  __schedule+0x27b/0x870
Jan 05 22:23:03 host kernel:  schedule+0x45/0xe0
Jan 05 22:23:03 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:23:03 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:23:03 host kernel:  drm_fb_helper_restore_fbdev_mode_unlocked+0x41/0x90
Jan 05 22:23:03 host kernel:  intel_fbdev_restore_mode+0x30/0x80
Jan 05 22:23:03 host kernel:  drm_release_noglobal+0x69/0xa0
Jan 05 22:23:03 host kernel:  __fput+0x8e/0x230
Jan 05 22:23:03 host kernel:  task_work_run+0x5c/0x90
Jan 05 22:23:03 host kernel:  exit_to_user_mode_prepare+0xe9/0x110
Jan 05 22:23:03 host kernel:  syscall_exit_to_user_mode+0x22/0x160
Jan 05 22:23:03 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:23:03 host kernel: RIP: 0033:0x7fdc7c9a46eb
Jan 05 22:23:03 host kernel: RSP: 002b:00007ffd0c397370 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
Jan 05 22:23:03 host kernel: RAX: 0000000000000000 RBX: 00007fdc7c1d66c8 RCX: 00007fdc7c9a46eb
Jan 05 22:23:03 host kernel: RDX: 0000000000000000 RSI: 0000000000000007 RDI: 000000000000006f
Jan 05 22:23:03 host kernel: RBP: 000000000000006f R08: 0000000000000000 R09: 00005613a68cd80a
Jan 05 22:23:03 host kernel: R10: 0000000000000000 R11: 0000000000000293 R12: 0000000000000000
Jan 05 22:23:03 host kernel: R13: 0000000000000000 R14: 00005613a68cf050 R15: 00005613a71e5f50
Jan 05 22:23:03 host kernel: INFO: task systemd-logind:807 blocked for more than 122 seconds.
Jan 05 22:23:03 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:23:03 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:23:03 host kernel: task:systemd-logind  state:D stack:    0 pid:  807 ppid:     1 flags:0x000043a0
Jan 05 22:23:03 host kernel: Call Trace:
Jan 05 22:23:03 host kernel:  __schedule+0x27b/0x870
Jan 05 22:23:03 host kernel:  schedule+0x45/0xe0
Jan 05 22:23:03 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:23:03 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:23:03 host kernel:  sync_eld_via_acomp+0x3f/0x350
Jan 05 22:23:03 host kernel:  check_presence_and_report+0x57/0x80
Jan 05 22:23:03 host kernel:  intel_audio_codec_enable+0x11f/0x180
Jan 05 22:23:03 host kernel:  intel_enable_ddi+0x447/0x5a0
Jan 05 22:23:03 host kernel:  intel_encoders_enable+0x75/0xa0
Jan 05 22:23:03 host kernel:  hsw_crtc_enable+0x1bf/0x5c0
Jan 05 22:23:03 host kernel:  intel_enable_crtc+0x48/0x60
Jan 05 22:23:03 host kernel:  intel_commit_modeset_enables+0x48/0x70
Jan 05 22:23:03 host kernel:  intel_atomic_commit_tail+0x2c9/0x1230
Jan 05 22:23:03 host kernel:  ? complete+0x2f/0x40
Jan 05 22:23:03 host kernel:  ? _raw_spin_unlock_irqrestore+0x14/0x30
Jan 05 22:23:03 host kernel:  ? flush_workqueue_prep_pwqs+0x11e/0x130
Jan 05 22:23:03 host kernel:  ? flush_workqueue+0x178/0x3c0
Jan 05 22:23:03 host kernel:  intel_atomic_commit+0x318/0x3a0
Jan 05 22:23:03 host kernel:  drm_client_modeset_commit_atomic+0x1d9/0x220
Jan 05 22:23:03 host kernel:  drm_client_modeset_commit_locked+0x56/0x150
Jan 05 22:23:03 host kernel:  drm_fb_helper_set_par+0x75/0xd0
Jan 05 22:23:03 host kernel:  intel_fbdev_set_par+0x16/0x60
Jan 05 22:23:03 host kernel:  fb_set_var+0x186/0x330
Jan 05 22:23:03 host kernel:  ? _raw_spin_unlock_irqrestore+0x14/0x30
Jan 05 22:23:03 host kernel:  ? __wake_up_common_lock+0x8a/0xc0
Jan 05 22:23:03 host kernel:  fbcon_blank+0x17a/0x280
Jan 05 22:23:03 host kernel:  do_unblank_screen+0x9c/0x130
Jan 05 22:23:03 host kernel:  vt_ioctl+0x1229/0x1550
Jan 05 22:23:03 host kernel:  ? slab_free_freelist_hook+0xe8/0x110
Jan 05 22:23:03 host kernel:  ? tty_release+0x346/0x5d0
Jan 05 22:23:03 host kernel:  ? kfree+0x3b0/0x410
Jan 05 22:23:03 host kernel:  tty_ioctl+0x395/0x910
Jan 05 22:23:03 host kernel:  ? tty_unlock+0x1d/0x40
Jan 05 22:23:03 host kernel:  __x64_sys_ioctl+0x83/0xb0
Jan 05 22:23:03 host kernel:  do_syscall_64+0x33/0x80
Jan 05 22:23:03 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:23:03 host kernel: RIP: 0033:0x7fa76794ccc7
Jan 05 22:23:03 host kernel: RSP: 002b:00007ffca85a3038 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Jan 05 22:23:03 host kernel: RAX: ffffffffffffffda RBX: 0000555ca73da410 RCX: 00007fa76794ccc7
Jan 05 22:23:03 host kernel: RDX: 0000000000000000 RSI: 0000000000004b3a RDI: 000000000000000a
Jan 05 22:23:03 host kernel: RBP: 000000000000000a R08: 0000000000000000 R09: 0000000000000000
Jan 05 22:23:03 host kernel: R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
Jan 05 22:23:03 host kernel: R13: 0000000000000019 R14: 00007ffca85a3188 R15: 00007ffca85a31a0
Jan 05 22:23:03 host kernel: INFO: task pulseaudio:2805 blocked for more than 122 seconds.
Jan 05 22:23:03 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:23:03 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:23:03 host kernel: task:pulseaudio      state:D stack:    0 pid: 2805 ppid:  2664 flags:0x000003a4
Jan 05 22:23:03 host kernel: Call Trace:
Jan 05 22:23:03 host kernel:  __schedule+0x27b/0x870
Jan 05 22:23:03 host kernel:  schedule+0x45/0xe0
Jan 05 22:23:03 host kernel:  rwsem_down_write_slowpath+0x263/0x4d0
Jan 05 22:23:03 host kernel:  snd_ctl_release+0x75/0x120
Jan 05 22:23:03 host kernel:  __fput+0x8e/0x230
Jan 05 22:23:03 host kernel:  task_work_run+0x5c/0x90
Jan 05 22:23:03 host kernel:  exit_to_user_mode_prepare+0xe9/0x110
Jan 05 22:23:03 host kernel:  syscall_exit_to_user_mode+0x22/0x160
Jan 05 22:23:03 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:23:03 host kernel: RIP: 0033:0x7f1ee209d11b
Jan 05 22:23:03 host kernel: RSP: 002b:00007ffcb6c726e0 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
Jan 05 22:23:03 host kernel: RAX: 0000000000000000 RBX: 000055dbcfc2c430 RCX: 00007f1ee209d11b
Jan 05 22:23:03 host kernel: RDX: 00007f1ee1f2ebe0 RSI: 0000000000000000 RDI: 000000000000000f
Jan 05 22:23:03 host kernel: RBP: 000055dbcfe1d5c0 R08: 0000000000000000 R09: 00007ffcb6c726b0
Jan 05 22:23:03 host kernel: R10: 0000000000000001 R11: 0000000000000293 R12: 0000000000000000
Jan 05 22:23:03 host kernel: R13: 000055dbcfe185f0 R14: 000055dbcfcf8008 R15: 0000000000000019
Jan 05 22:23:03 host kernel: INFO: task alsactl:24113 blocked for more than 122 seconds.
Jan 05 22:23:03 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:23:03 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:23:03 host kernel: task:alsactl         state:D stack:    0 pid:24113 ppid:     1 flags:0x00000080
Jan 05 22:23:03 host kernel: Call Trace:
Jan 05 22:23:03 host kernel:  __schedule+0x27b/0x870
Jan 05 22:23:03 host kernel:  schedule+0x45/0xe0
Jan 05 22:23:03 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:23:03 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:23:03 host kernel:  ? chrdev_open+0xc2/0x240
Jan 05 22:23:03 host kernel:  hdmi_eld_ctl_info+0x36/0xa0
Jan 05 22:23:03 host kernel:  __snd_ctl_elem_info.constprop.0+0x1d/0x110
Jan 05 22:23:03 host kernel:  snd_ctl_elem_info_user+0x86/0xf0
Jan 05 22:23:03 host kernel:  snd_ctl_ioctl+0x1ef/0x750
Jan 05 22:23:03 host kernel:  __x64_sys_ioctl+0x83/0xb0
Jan 05 22:23:03 host kernel:  do_syscall_64+0x33/0x80
Jan 05 22:23:03 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:23:03 host kernel: RIP: 0033:0x7ffa0105dcc7
Jan 05 22:23:03 host kernel: RSP: 002b:00007ffeded89848 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Jan 05 22:23:03 host kernel: RAX: ffffffffffffffda RBX: 000055f392b7a6c0 RCX: 00007ffa0105dcc7
Jan 05 22:23:03 host kernel: RDX: 00007ffeded89860 RSI: 00000000c1105511 RDI: 0000000000000004
Jan 05 22:23:03 host kernel: RBP: 00007ffeded8a130 R08: 000055f392b7b9d0 R09: 0000000000000000
Jan 05 22:23:03 host kernel: R10: 000055f392b7bd40 R11: 0000000000000246 R12: 00007ffeded89860
Jan 05 22:23:03 host kernel: R13: 00007ffeded89980 R14: 00007ffeded8a140 R15: 000055f392ba6ec0
Jan 05 22:23:08 host systemd[2664]: pulseaudio.service: Processes still around after SIGKILL. Ignoring.
Jan 05 22:24:38 host systemd[2664]: pulseaudio.service: State 'final-sigterm' timed out. Killing.
Jan 05 22:24:38 host systemd[2664]: pulseaudio.service: Killing process 2805 (pulseaudio) with signal SIGKILL.
Jan 05 22:25:06 host kernel: INFO: task systemd:1 blocked for more than 245 seconds.
Jan 05 22:25:06 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:25:06 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:25:06 host kernel: task:systemd         state:D stack:    0 pid:    1 ppid:     0 flags:0x00004002
Jan 05 22:25:06 host kernel: Call Trace:
Jan 05 22:25:06 host kernel:  __schedule+0x27b/0x870
Jan 05 22:25:06 host kernel:  schedule+0x45/0xe0
Jan 05 22:25:06 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:25:06 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:25:06 host kernel:  drm_fb_helper_restore_fbdev_mode_unlocked+0x41/0x90
Jan 05 22:25:06 host kernel:  intel_fbdev_restore_mode+0x30/0x80
Jan 05 22:25:06 host kernel:  drm_release_noglobal+0x69/0xa0
Jan 05 22:25:06 host kernel:  __fput+0x8e/0x230
Jan 05 22:25:06 host kernel:  task_work_run+0x5c/0x90
Jan 05 22:25:06 host kernel:  exit_to_user_mode_prepare+0xe9/0x110
Jan 05 22:25:06 host kernel:  syscall_exit_to_user_mode+0x22/0x160
Jan 05 22:25:06 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:25:06 host kernel: RIP: 0033:0x7fdc7c9a46eb
Jan 05 22:25:06 host kernel: RSP: 002b:00007ffd0c397370 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
Jan 05 22:25:06 host kernel: RAX: 0000000000000000 RBX: 00007fdc7c1d66c8 RCX: 00007fdc7c9a46eb
Jan 05 22:25:06 host kernel: RDX: 0000000000000000 RSI: 0000000000000007 RDI: 000000000000006f
Jan 05 22:25:06 host kernel: RBP: 000000000000006f R08: 0000000000000000 R09: 00005613a68cd80a
Jan 05 22:25:06 host kernel: R10: 0000000000000000 R11: 0000000000000293 R12: 0000000000000000
Jan 05 22:25:06 host kernel: R13: 0000000000000000 R14: 00005613a68cf050 R15: 00005613a71e5f50
Jan 05 22:25:06 host kernel: INFO: task systemd-logind:807 blocked for more than 245 seconds.
Jan 05 22:25:06 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:25:06 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:25:06 host kernel: task:systemd-logind  state:D stack:    0 pid:  807 ppid:     1 flags:0x000043a0
Jan 05 22:25:06 host kernel: Call Trace:
Jan 05 22:25:06 host kernel:  __schedule+0x27b/0x870
Jan 05 22:25:06 host kernel:  schedule+0x45/0xe0
Jan 05 22:25:06 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:25:06 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:25:06 host kernel:  sync_eld_via_acomp+0x3f/0x350
Jan 05 22:25:06 host kernel:  check_presence_and_report+0x57/0x80
Jan 05 22:25:06 host kernel:  intel_audio_codec_enable+0x11f/0x180
Jan 05 22:25:06 host kernel:  intel_enable_ddi+0x447/0x5a0
Jan 05 22:25:06 host kernel:  intel_encoders_enable+0x75/0xa0
Jan 05 22:25:06 host kernel:  hsw_crtc_enable+0x1bf/0x5c0
Jan 05 22:25:06 host kernel:  intel_enable_crtc+0x48/0x60
Jan 05 22:25:06 host kernel:  intel_commit_modeset_enables+0x48/0x70
Jan 05 22:25:06 host kernel:  intel_atomic_commit_tail+0x2c9/0x1230
Jan 05 22:25:06 host kernel:  ? complete+0x2f/0x40
Jan 05 22:25:06 host kernel:  ? _raw_spin_unlock_irqrestore+0x14/0x30
Jan 05 22:25:06 host kernel:  ? flush_workqueue_prep_pwqs+0x11e/0x130
Jan 05 22:25:06 host kernel:  ? flush_workqueue+0x178/0x3c0
Jan 05 22:25:06 host kernel:  intel_atomic_commit+0x318/0x3a0
Jan 05 22:25:06 host kernel:  drm_client_modeset_commit_atomic+0x1d9/0x220
Jan 05 22:25:06 host kernel:  drm_client_modeset_commit_locked+0x56/0x150
Jan 05 22:25:06 host kernel:  drm_fb_helper_set_par+0x75/0xd0
Jan 05 22:25:06 host kernel:  intel_fbdev_set_par+0x16/0x60
Jan 05 22:25:06 host kernel:  fb_set_var+0x186/0x330
Jan 05 22:25:06 host kernel:  ? _raw_spin_unlock_irqrestore+0x14/0x30
Jan 05 22:25:06 host kernel:  ? __wake_up_common_lock+0x8a/0xc0
Jan 05 22:25:06 host kernel:  fbcon_blank+0x17a/0x280
Jan 05 22:25:06 host kernel:  do_unblank_screen+0x9c/0x130
Jan 05 22:25:06 host kernel:  vt_ioctl+0x1229/0x1550
Jan 05 22:25:06 host kernel:  ? slab_free_freelist_hook+0xe8/0x110
Jan 05 22:25:06 host kernel:  ? tty_release+0x346/0x5d0
Jan 05 22:25:06 host kernel:  ? kfree+0x3b0/0x410
Jan 05 22:25:06 host kernel:  tty_ioctl+0x395/0x910
Jan 05 22:25:06 host kernel:  ? tty_unlock+0x1d/0x40
Jan 05 22:25:06 host kernel:  __x64_sys_ioctl+0x83/0xb0
Jan 05 22:25:06 host kernel:  do_syscall_64+0x33/0x80
Jan 05 22:25:06 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:25:06 host kernel: RIP: 0033:0x7fa76794ccc7
Jan 05 22:25:06 host kernel: RSP: 002b:00007ffca85a3038 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Jan 05 22:25:06 host kernel: RAX: ffffffffffffffda RBX: 0000555ca73da410 RCX: 00007fa76794ccc7
Jan 05 22:25:06 host kernel: RDX: 0000000000000000 RSI: 0000000000004b3a RDI: 000000000000000a
Jan 05 22:25:06 host kernel: RBP: 000000000000000a R08: 0000000000000000 R09: 0000000000000000
Jan 05 22:25:06 host kernel: R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
Jan 05 22:25:06 host kernel: R13: 0000000000000019 R14: 00007ffca85a3188 R15: 00007ffca85a31a0
Jan 05 22:25:06 host kernel: INFO: task pulseaudio:2805 blocked for more than 245 seconds.
Jan 05 22:25:06 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:25:06 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:25:06 host kernel: task:pulseaudio      state:D stack:    0 pid: 2805 ppid:  2664 flags:0x000003a4
Jan 05 22:25:06 host kernel: Call Trace:
Jan 05 22:25:06 host kernel:  __schedule+0x27b/0x870
Jan 05 22:25:06 host kernel:  schedule+0x45/0xe0
Jan 05 22:25:06 host kernel:  rwsem_down_write_slowpath+0x263/0x4d0
Jan 05 22:25:06 host kernel:  snd_ctl_release+0x75/0x120
Jan 05 22:25:06 host kernel:  __fput+0x8e/0x230
Jan 05 22:25:06 host kernel:  task_work_run+0x5c/0x90
Jan 05 22:25:06 host kernel:  exit_to_user_mode_prepare+0xe9/0x110
Jan 05 22:25:06 host kernel:  syscall_exit_to_user_mode+0x22/0x160
Jan 05 22:25:06 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:25:06 host kernel: RIP: 0033:0x7f1ee209d11b
Jan 05 22:25:06 host kernel: RSP: 002b:00007ffcb6c726e0 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
Jan 05 22:25:06 host kernel: RAX: 0000000000000000 RBX: 000055dbcfc2c430 RCX: 00007f1ee209d11b
Jan 05 22:25:06 host kernel: RDX: 00007f1ee1f2ebe0 RSI: 0000000000000000 RDI: 000000000000000f
Jan 05 22:25:06 host kernel: RBP: 000055dbcfe1d5c0 R08: 0000000000000000 R09: 00007ffcb6c726b0
Jan 05 22:25:06 host kernel: R10: 0000000000000001 R11: 0000000000000293 R12: 0000000000000000
Jan 05 22:25:06 host kernel: R13: 000055dbcfe185f0 R14: 000055dbcfcf8008 R15: 0000000000000019
Jan 05 22:25:06 host kernel: INFO: task alsactl:24113 blocked for more than 245 seconds.
Jan 05 22:25:06 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:25:06 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:25:06 host kernel: task:alsactl         state:D stack:    0 pid:24113 ppid:     1 flags:0x00000080
Jan 05 22:25:06 host kernel: Call Trace:
Jan 05 22:25:06 host kernel:  __schedule+0x27b/0x870
Jan 05 22:25:06 host kernel:  schedule+0x45/0xe0
Jan 05 22:25:06 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:25:06 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:25:06 host kernel:  ? chrdev_open+0xc2/0x240
Jan 05 22:25:06 host kernel:  hdmi_eld_ctl_info+0x36/0xa0
Jan 05 22:25:06 host kernel:  __snd_ctl_elem_info.constprop.0+0x1d/0x110
Jan 05 22:25:06 host kernel:  snd_ctl_elem_info_user+0x86/0xf0
Jan 05 22:25:06 host kernel:  snd_ctl_ioctl+0x1ef/0x750
Jan 05 22:25:06 host kernel:  __x64_sys_ioctl+0x83/0xb0
Jan 05 22:25:06 host kernel:  do_syscall_64+0x33/0x80
Jan 05 22:25:06 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:25:06 host kernel: RIP: 0033:0x7ffa0105dcc7
Jan 05 22:25:06 host kernel: RSP: 002b:00007ffeded89848 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Jan 05 22:25:06 host kernel: RAX: ffffffffffffffda RBX: 000055f392b7a6c0 RCX: 00007ffa0105dcc7
Jan 05 22:25:06 host kernel: RDX: 00007ffeded89860 RSI: 00000000c1105511 RDI: 0000000000000004
Jan 05 22:25:06 host kernel: RBP: 00007ffeded8a130 R08: 000055f392b7b9d0 R09: 0000000000000000
Jan 05 22:25:06 host kernel: R10: 000055f392b7bd40 R11: 0000000000000246 R12: 00007ffeded89860
Jan 05 22:25:06 host kernel: R13: 00007ffeded89980 R14: 00007ffeded8a140 R15: 000055f392ba6ec0
Jan 05 22:26:08 host systemd[2664]: pulseaudio.service: Processes still around after final SIGKILL. Entering failed mode.
Jan 05 22:26:08 host systemd[2664]: pulseaudio.service: Failed with result 'timeout'.
Jan 05 22:26:08 host systemd[2664]: pulseaudio.service: Unit process 2805 (pulseaudio) remains running after unit stopped.
Jan 05 22:27:09 host kernel: INFO: task systemd:1 blocked for more than 368 seconds.
Jan 05 22:27:09 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:27:09 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:27:09 host kernel: task:systemd         state:D stack:    0 pid:    1 ppid:     0 flags:0x00004002
Jan 05 22:27:09 host kernel: Call Trace:
Jan 05 22:27:09 host kernel:  __schedule+0x27b/0x870
Jan 05 22:27:09 host kernel:  schedule+0x45/0xe0
Jan 05 22:27:09 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:27:09 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:27:09 host kernel:  drm_fb_helper_restore_fbdev_mode_unlocked+0x41/0x90
Jan 05 22:27:09 host kernel:  intel_fbdev_restore_mode+0x30/0x80
Jan 05 22:27:09 host kernel:  drm_release_noglobal+0x69/0xa0
Jan 05 22:27:09 host kernel:  __fput+0x8e/0x230
Jan 05 22:27:09 host kernel:  task_work_run+0x5c/0x90
Jan 05 22:27:09 host kernel:  exit_to_user_mode_prepare+0xe9/0x110
Jan 05 22:27:09 host kernel:  syscall_exit_to_user_mode+0x22/0x160
Jan 05 22:27:09 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:27:09 host kernel: RIP: 0033:0x7fdc7c9a46eb
Jan 05 22:27:09 host kernel: RSP: 002b:00007ffd0c397370 EFLAGS: 00000293 ORIG_RAX: 0000000000000003
Jan 05 22:27:09 host kernel: RAX: 0000000000000000 RBX: 00007fdc7c1d66c8 RCX: 00007fdc7c9a46eb
Jan 05 22:27:09 host kernel: RDX: 0000000000000000 RSI: 0000000000000007 RDI: 000000000000006f
Jan 05 22:27:09 host kernel: RBP: 000000000000006f R08: 0000000000000000 R09: 00005613a68cd80a
Jan 05 22:27:09 host kernel: R10: 0000000000000000 R11: 0000000000000293 R12: 0000000000000000
Jan 05 22:27:09 host kernel: R13: 0000000000000000 R14: 00005613a68cf050 R15: 00005613a71e5f50
Jan 05 22:27:09 host kernel: INFO: task systemd-logind:807 blocked for more than 368 seconds.
Jan 05 22:27:09 host kernel:       Not tainted 5.10.4 #307
Jan 05 22:27:09 host kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
Jan 05 22:27:09 host kernel: task:systemd-logind  state:D stack:    0 pid:  807 ppid:     1 flags:0x000043a0
Jan 05 22:27:09 host kernel: Call Trace:
Jan 05 22:27:09 host kernel:  __schedule+0x27b/0x870
Jan 05 22:27:09 host kernel:  schedule+0x45/0xe0
Jan 05 22:27:09 host kernel:  schedule_preempt_disabled+0x14/0x20
Jan 05 22:27:09 host kernel:  __mutex_lock.constprop.0+0x239/0x500
Jan 05 22:27:09 host kernel:  sync_eld_via_acomp+0x3f/0x350
Jan 05 22:27:09 host kernel:  check_presence_and_report+0x57/0x80
Jan 05 22:27:09 host kernel:  intel_audio_codec_enable+0x11f/0x180
Jan 05 22:27:09 host kernel:  intel_enable_ddi+0x447/0x5a0
Jan 05 22:27:09 host kernel:  intel_encoders_enable+0x75/0xa0
Jan 05 22:27:09 host kernel:  hsw_crtc_enable+0x1bf/0x5c0
Jan 05 22:27:09 host kernel:  intel_enable_crtc+0x48/0x60
Jan 05 22:27:09 host kernel:  intel_commit_modeset_enables+0x48/0x70
Jan 05 22:27:09 host kernel:  intel_atomic_commit_tail+0x2c9/0x1230
Jan 05 22:27:09 host kernel:  ? complete+0x2f/0x40
Jan 05 22:27:09 host kernel:  ? _raw_spin_unlock_irqrestore+0x14/0x30
Jan 05 22:27:09 host kernel:  ? flush_workqueue_prep_pwqs+0x11e/0x130
Jan 05 22:27:09 host kernel:  ? flush_workqueue+0x178/0x3c0
Jan 05 22:27:09 host kernel:  intel_atomic_commit+0x318/0x3a0
Jan 05 22:27:09 host kernel:  drm_client_modeset_commit_atomic+0x1d9/0x220
Jan 05 22:27:09 host kernel:  drm_client_modeset_commit_locked+0x56/0x150
Jan 05 22:27:09 host kernel:  drm_fb_helper_set_par+0x75/0xd0
Jan 05 22:27:09 host kernel:  intel_fbdev_set_par+0x16/0x60
Jan 05 22:27:09 host kernel:  fb_set_var+0x186/0x330
Jan 05 22:27:09 host kernel:  ? _raw_spin_unlock_irqrestore+0x14/0x30
Jan 05 22:27:09 host kernel:  ? __wake_up_common_lock+0x8a/0xc0
Jan 05 22:27:09 host kernel:  fbcon_blank+0x17a/0x280
Jan 05 22:27:09 host kernel:  do_unblank_screen+0x9c/0x130
Jan 05 22:27:09 host kernel:  vt_ioctl+0x1229/0x1550
Jan 05 22:27:09 host kernel:  ? slab_free_freelist_hook+0xe8/0x110
Jan 05 22:27:09 host kernel:  ? tty_release+0x346/0x5d0
Jan 05 22:27:09 host kernel:  ? kfree+0x3b0/0x410
Jan 05 22:27:09 host kernel:  tty_ioctl+0x395/0x910
Jan 05 22:27:09 host kernel:  ? tty_unlock+0x1d/0x40
Jan 05 22:27:09 host kernel:  __x64_sys_ioctl+0x83/0xb0
Jan 05 22:27:09 host kernel:  do_syscall_64+0x33/0x80
Jan 05 22:27:09 host kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Jan 05 22:27:09 host kernel: RIP: 0033:0x7fa76794ccc7
Jan 05 22:27:09 host kernel: RSP: 002b:00007ffca85a3038 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Jan 05 22:27:09 host kernel: RAX: ffffffffffffffda RBX: 0000555ca73da410 RCX: 00007fa76794ccc7
Jan 05 22:27:09 host kernel: RDX: 0000000000000000 RSI: 0000000000004b3a RDI: 000000000000000a
Jan 05 22:27:09 host kernel: RBP: 000000000000000a R08: 0000000000000000 R09: 0000000000000000
Jan 05 22:27:09 host kernel: R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
Jan 05 22:27:09 host kernel: R13: 0000000000000019 R14: 00007ffca85a3188 R15: 00007ffca85a31a0

Regards,
Gabor
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
