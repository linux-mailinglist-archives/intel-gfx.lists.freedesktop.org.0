Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3421FEF0D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 11:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4299C6EB35;
	Thu, 18 Jun 2020 09:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FE36EB35
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 09:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592474054;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dvjwqobn7XsDsNjqc7ij0syH8W5K+3hzZdxQeKDfhwk=;
 b=cxoNY9B8Cj54lk9VJcEO7xz94XFsqDMDX9hwkSNlgwo2tNpcKwj5xCnOgDNV0W23YHDCXx
 7CJGxFzoaR8RufIhsFXdWMOlVaQ0cmfRql8xoOS6c7bNvhz4vy6mpToC28cOO7v4YpIXgE
 WMu29SNEmJ8OyiywOMtk5vK/y1So1H8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-vbJCoXckPti39YB9oKEeiA-1; Thu, 18 Jun 2020 05:54:10 -0400
X-MC-Unique: vbJCoXckPti39YB9oKEeiA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EC0F13F6;
 Thu, 18 Jun 2020 09:54:09 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-13-216.pek2.redhat.com
 [10.72.13.216])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E24A5D9D3;
 Thu, 18 Jun 2020 09:54:04 +0000 (UTC)
Date: Thu, 18 Jun 2020 17:54:01 +0800
From: "dyoung@redhat.com" <dyoung@redhat.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200618095401.GB8527@dhcp-128-65.nay.redhat.com>
References: <20200617065315.GA6501@dhcp-128-65.nay.redhat.com>
 <b9abdee84e2465da720d2c44e80ba286470f7f3d.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9abdee84e2465da720d2c44e80ba286470f7f3d.camel@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Subject: Re: [Intel-gfx] i915/kexec: warning at
 drivers/gpu/drm/i915/display/intel_psr.c:782 intel_psr_activate+0x3c6/0x440
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
Cc: "bhe@redhat.com" <bhe@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Souza,
On 06/17/20 at 05:34pm, Souza, Jose wrote:
> Hi Dave
> 
> Will take care of this, looks like PSR2 was left enabled by UEFI/BIOS then i915 enables PSR1.Are you affected by any visual glitches or other issues?

Thanks you.  I do not see visual glitches and other issues other than
the warning.

> Could you attach a log with drm.debug=0x1e set?

It seems a lot of output with the debug option enabled, will send to you
separately with an attachment.

> 
> Thanks
> 
> On Wed, 2020-06-17 at 14:53 +0800, Dave Young wrote:
> > Hi,
> > 
> > This warning exists for long time, I did not find time to report, here
> > is the latest kernel logs, can you please to have a look?
> > 
> > hardware: Thinkpad T480s
> > lspci: 00:02.0 VGA compatible controller: Intel Corporation UHD Graphics 620 (rev 07)
> > --
[snip]
> > [    9.652406] fbcon: i915drmfb (fb0) is primary device
> > [    9.653653] ------------[ cut here ]------------
> > [    9.653654] i915 0000:00:02.0: drm_WARN_ON(intel_de_read(dev_priv, ((const i915_reg_t){ .reg = ((((&(dev_priv)->__info)->trans_offsets[(dev_priv->psr.transcoder)] - (&(dev_priv)->__info)->trans_offsets[TRANSCODER_A] + (0x60800) + ((&(dev_priv)->__info)->display_mmio_offset)) - dev_priv->hsw_psr_mmio_adjust)) })) & (1 << 31))
> > [    9.657092] WARNING: CPU: 1 PID: 103 at drivers/gpu/drm/i915/display/intel_psr.c:782 intel_psr_activate+0x3c6/0x440 [i915]
> > [    9.657093] Modules linked in: snd_hda_codec_realtek(+) snd_hda_codec_generic iwlmvm(+) mac80211 input_leds snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core kvm_intel libarc4 snd_seq kvm snd_seq_device iwlwifi serio_raw irqbypass snd_pcm thinkpad_acpi pcspkr cfg80211 ledtrig_audio snd_timer rfkill i915 e1000e snd i2c_i801 soundcore i2c_smbus video intel_gtt iosf_mbi drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops fuse drm
> > [    9.657262] CPU: 1 PID: 103 Comm: kworker/u16:3 Not tainted 5.8.0-rc1+ #179
> > [    9.657262] Hardware name: LENOVO 20L8S3M801/20L8S3M801, BIOS N22ET54W (1.31 ) 04/22/2019
> > [    9.657262] Workqueue: events_unbound async_run_entry_fn
> > [    9.657263] RIP: 0010:intel_psr_activate+0x3c6/0x440 [i915]
> > [    9.657264] Code: 4c 8b 6f 50 4d 85 ed 75 03 4c 8b 2f e8 c3 e0 1f e1 48 c7 c1 a0 ca 2e a0 4c 89 ea 48 c7 c7 40 3b 30 a0 48 89 c6 e8 f2 21 e0 e0 <0f> 0b 80 bd 88 69 00 00 00 0f 84 b5 fc ff ff 48 8b 7d 18 4c 8b 6f
> > [    9.657264] RSP: 0018:ffff88842ad2b898 EFLAGS: 00010282
> > [    9.657265] RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
> > [    9.657265] RDX: 000000000000013a RSI: ffffffff825346da RDI: ffffffff82534ada
> > [    9.657265] RBP: ffff888423228000 R08: 000000023f6713ae R09: 000000000000013a
> > [    9.657266] R10: 0000000000000067 R11: 000000000002fa10 R12: ffff88842c16b128
> > [    9.657266] R13: ffff88842bb09970 R14: 0000000000000001 R15: ffff88842cbcc000
> > [    9.657266] FS:  0000000000000000(0000) GS:ffff88842e440000(0000) knlGS:0000000000000000
> > [    9.657267] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [    9.657267] CR2: 000055b5c70404c8 CR3: 0000000421d96005 CR4: 00000000001606e0
> > [    9.657267] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > [    9.657267] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > [    9.657267] Call Trace:
> > [    9.657268]  intel_psr_update+0x17c/0x1a0 [i915]
> > [    9.657268]  intel_ddi_update_pipe+0x6c/0xb0 [i915]
> > [    9.657268]  intel_update_crtc+0x28b/0x420 [i915]
> > [    9.657268]  skl_commit_modeset_enables+0x142/0x4e0 [i915]
> > [    9.657269]  intel_atomic_commit_tail+0x2c6/0x1290 [i915]
> > [    9.657269]  ? complete+0x2f/0x40
> > [    9.657269]  ? flush_workqueue_prep_pwqs+0x118/0x130
> > [    9.657269]  ? flush_workqueue+0x178/0x3c0
> > [    9.657270]  intel_atomic_commit+0x281/0x300 [i915]
> > [    9.657270]  drm_client_modeset_commit_atomic+0x1be/0x200 [drm]
> > [    9.657270]  drm_client_modeset_commit_locked+0x54/0x150 [drm]
> > [    9.657270]  drm_client_modeset_commit+0x24/0x40 [drm]
> > [    9.657271]  drm_fb_helper_restore_fbdev_mode_unlocked+0x49/0x90 [drm_kms_helper]
> > [    9.657271]  drm_fb_helper_set_par+0x30/0x40 [drm_kms_helper]
> > [    9.657271]  intel_fbdev_set_par+0x16/0x60 [i915]
> > [    9.657272]  ? con_is_visible+0x27/0x40
> > [    9.657272]  fbcon_init+0x2e7/0x680
> > [    9.657272]  visual_init+0xce/0x130
> > [    9.657272]  do_bind_con_driver.isra.0+0x1da/0x2e0
> > [    9.657273]  do_take_over_console+0x116/0x180
> > [    9.657273]  do_fbcon_takeover+0x5c/0xc0
> > [    9.657273]  register_framebuffer+0x1e4/0x300
> > [    9.657274]  __drm_fb_helper_initial_config_and_unlock+0x320/0x490 [drm_kms_helper]
> > [    9.657274]  intel_fbdev_initial_config+0x14/0x30 [i915]
> > [    9.657274]  async_run_entry_fn+0x37/0x150
> > [    9.657274]  process_one_work+0x1bf/0x3d0
> > [    9.657275]  worker_thread+0x4d/0x3d0
> > [    9.657275]  ? process_one_work+0x3d0/0x3d0
> > [    9.657275]  kthread+0x11b/0x140
> > [    9.657276]  ? kthread_create_worker_on_cpu+0x70/0x70
> > [    9.657276]  ret_from_fork+0x22/0x30
> > [    9.657276] ---[ end trace f701c3abca58b4af ]---
> > [    9.674849] Console: switching to colour frame buffer device 240x67
> > 
> > [snip]

Thanks
Dave

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
