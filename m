Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D7D162DD3
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 19:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201CF6EA5C;
	Tue, 18 Feb 2020 18:11:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6486EA5C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 18:11:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20267249-1500050 for multiple; Tue, 18 Feb 2020 18:10:12 +0000
MIME-Version: 1.0
To: Hillf Danton <hdanton@sina.com>, Toralf Foerster <toralf.foerster@gmx.de>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200217023013.5696-1-hdanton@sina.com>
References: <20200216032625.11452-1-hdanton@sina.com>
 <20200216145518.9728-1-hdanton@sina.com>
 <20200217023013.5696-1-hdanton@sina.com>
Message-ID: <158204940993.8112.7051733810171511907@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Feb 2020 18:10:09 +0000
Subject: Re: [Intel-gfx] kernel 5.5.4: BUG: kernel NULL pointer dereference,
 address: 000000000000000
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
Cc: Hillf Danton <hdanton@sina.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Hillf Danton (2020-02-17 02:30:13)
> 
> On Sun, 16 Feb 2020 22:17:59 +0100 Toralf Foerster wrote:
> >
> > This is similar to the behaviour before, the BUG occurres after few minutes/hours.
> > It brought now:
> > 
> > 
> > Feb 16 22:09:01 t44 CROND[8918]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
> > Feb 16 22:10:01 t44 CROND[8980]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
> > Feb 16 22:10:37 t44 kernel: BUG: kernel NULL pointer dereference, address: 0000000000000000
> > Feb 16 22:10:37 t44 kernel: #PF: supervisor instruction fetch in kernel mode
> > Feb 16 22:10:37 t44 kernel: #PF: error_code(0x0010) - not-present page
> > Feb 16 22:10:37 t44 kernel: PGD 0 P4D 0 
> > Feb 16 22:10:37 t44 kernel: Oops: 0010 [#1] SMP PTI
> > Feb 16 22:10:37 t44 kernel: CPU: 1 PID: 3403 Comm: X Tainted: G                T 5.5.4 #3
> > Feb 16 22:10:37 t44 kernel: Hardware name: LENOVO 20AQCTO1WW/20AQCTO1WW, BIOS GJET92WW (2.42 ) 03/03/2017
> > Feb 16 22:10:37 t44 kernel: RIP: 0010:0x0
> > Feb 16 22:10:37 t44 kernel: Code: Bad RIP value.
> > Feb 16 22:10:37 t44 kernel: RSP: 0018:ffffad37009eba20 EFLAGS: 00010087
> > Feb 16 22:10:37 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000e68b0
> > Feb 16 22:10:37 t44 kernel: RDX: 0000000000000000 RSI: ffff8b35598cba88 RDI: ffff8b362d9146c0
> > Feb 16 22:10:37 t44 kernel: RBP: ffff8b362d9146c0 R08: 0000000000000000 R09: ffff8b35598cbe00
> > Feb 16 22:10:37 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffffad37009eba28
> > Feb 16 22:10:37 t44 kernel: R13: 0000000000000000 R14: ffff8b36a40fa200 R15: ffff8b369bf99600
> > Feb 16 22:10:37 t44 kernel: FS:  00007f2b751398c0(0000) GS:ffff8b36b2680000(0000) knlGS:0000000000000000
> > Feb 16 22:10:37 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > Feb 16 22:10:37 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323292001 CR4: 00000000001606e0
> > Feb 16 22:10:37 t44 kernel: Call Trace:
> > Feb 16 22:10:37 t44 kernel:  dma_fence_signal_locked+0x85/0xc0
> > Feb 16 22:10:37 t44 kernel:  dma_fence_signal+0x1f/0x40
> > Feb 16 22:10:37 t44 kernel:  i915_request_retire+0x9a/0x290 [i915]
> > Feb 16 22:10:37 t44 kernel:  i915_request_create+0x3f/0xc0 [i915]
> > Feb 16 22:10:37 t44 kernel:  i915_gem_do_execbuffer+0x973/0x17d0 [i915]
> > Feb 16 22:10:37 t44 kernel:  i915_gem_execbuffer2_ioctl+0xe9/0x3a0 [i915]
> > Feb 16 22:10:37 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
> > Feb 16 22:10:37 t44 kernel:  drm_ioctl_kernel+0xae/0x100 [drm]
> > Feb 16 22:10:37 t44 kernel:  drm_ioctl+0x223/0x400 [drm]
> > Feb 16 22:10:37 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
> > Feb 16 22:10:37 t44 kernel:  do_vfs_ioctl+0x4d4/0x760
> > Feb 16 22:10:37 t44 kernel:  ksys_ioctl+0x5b/0x90
> > Feb 16 22:10:37 t44 kernel:  __x64_sys_ioctl+0x15/0x20
> > Feb 16 22:10:37 t44 kernel:  do_syscall_64+0x46/0x100
> > Feb 16 22:10:37 t44 kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> > Feb 16 22:10:37 t44 kernel: RIP: 0033:0x7f2b75372137
> > Feb 16 22:10:37 t44 kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff 48 83 c4 18 c3 e8 2d d4 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 ed 0c 00 f7 d8 64 89 01 48
> > Feb 16 22:10:37 t44 kernel: RSP: 002b:00007ffebe2b4c38 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
> > Feb 16 22:10:37 t44 kernel: RAX: ffffffffffffffda RBX: 00007ffebe2b4c80 RCX: 00007f2b75372137
> > Feb 16 22:10:37 t44 kernel: RDX: 00007ffebe2b4c80 RSI: 0000000040406469 RDI: 000000000000000d
> > Feb 16 22:10:37 t44 kernel: RBP: 0000000040406469 R08: 0000561477eb8670 R09: 0000000000000202
> > Feb 16 22:10:37 t44 kernel: R10: 0000000000000000 R11: 0000000000000246 R12: 0000561477e7b0b0
> > Feb 16 22:10:37 t44 kernel: R13: 000000000000000d R14: 00007f2b74b51c48 R15: 0000000000000000
> > Feb 16 22:10:37 t44 kernel: Modules linked in: af_packet bridge stp llc ip6table_filter ip6_tables xt_MASQUERADE iptable_nat nf_nat nf_log_ipv4 nf_log_common xt_LOG xt_limit xt_recent xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 iptable_filter ip_tables uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2 videodev videobuf2_common btusb btrtl btbcm btintel bluetooth ecdh_generic ecc rmi_smbus rmi_core mousedev x86_pkg_temp_thermal coretemp kvm_intel kvm i915 irqbypass intel_gtt i2c_algo_bit drm_kms_helper cfbfillrect syscopyarea input_leds snd_hda_codec_realtek snd_hda_codec_generic cfbimgblt sysfillrect sysimgblt fb_sys_fops cfbcopyarea wmi_bmof snd_hda_intel snd_intel_dspcfg drm snd_hda_codec tpm_tis psmouse aesni_intel snd_hda_core glue_helper crypto_simd iwlmvm cryptd snd_pcm thinkpad_acpi ledtrig_audio tpm_tis_core iwlwifi pcspkr drm_panel_orientation_quirks ehci_pci atkbd e1000e i2c_i801 ehci_hcd tpm thermal snd_timer ac snd soundcore battery rng_core agpga
 rt
>   i2c_core wmi evdev
> > Feb 16 22:10:37 t44 kernel: CR2: 0000000000000000
> > Feb 16 22:10:37 t44 kernel: ---[ end trace 7df1d4246cb74d36 ]---
> > Feb 16 22:10:37 t44 kernel: RIP: 0010:0x0
> > Feb 16 22:10:37 t44 kernel: Code: Bad RIP value.
> > Feb 16 22:10:37 t44 kernel: RSP: 0018:ffffad37009eba20 EFLAGS: 00010087
> > Feb 16 22:10:37 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000e68b0
> > Feb 16 22:10:37 t44 kernel: RDX: 0000000000000000 RSI: ffff8b35598cba88 RDI: ffff8b362d9146c0
> > Feb 16 22:10:37 t44 kernel: RBP: ffff8b362d9146c0 R08: 0000000000000000 R09: ffff8b35598cbe00
> > Feb 16 22:10:37 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffffad37009eba28
> > Feb 16 22:10:37 t44 kernel: R13: 0000000000000000 R14: ffff8b36a40fa200 R15: ffff8b369bf99600
> > Feb 16 22:10:37 t44 kernel: FS:  00007f2b751398c0(0000) GS:ffff8b36b2680000(0000) knlGS:0000000000000000
> > Feb 16 22:10:37 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > Feb 16 22:10:37 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323292001 CR4: 00000000001606e0
> > Feb 16 22:11:01 t44 CROND[8996]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
> > Feb 16 22:12:49 t44 syslog-ng[1912]: syslog-ng starting up; version='3.22.1'
> > Feb 16 22:12:49 t44 acpid[1943]: starting up with netlink and the input layer
> 
> Then it's not lock that counts for the NULL dereference.
> And try the debug patch after reverting the last patch.
> 
> --- a/drivers/dma-buf/dma-fence.c
> +++ b/drivers/dma-buf/dma-fence.c
> @@ -129,7 +129,6 @@ EXPORT_SYMBOL(dma_fence_context_alloc);
>  int dma_fence_signal_locked(struct dma_fence *fence)
>  {
>         struct dma_fence_cb *cur, *tmp;
> -       struct list_head cb_list;
>  
>         lockdep_assert_held(fence->lock);
>  
> @@ -137,15 +136,12 @@ int dma_fence_signal_locked(struct dma_f
>                                       &fence->flags)))
>                 return -EINVAL;
>  
> -       /* Stash the cb_list before replacing it with the timestamp */
> -       list_replace(&fence->cb_list, &cb_list);
> -
>         fence->timestamp = ktime_get();
>         set_bit(DMA_FENCE_FLAG_TIMESTAMP_BIT, &fence->flags);
>         trace_dma_fence_signaled(fence);
>  
> -       list_for_each_entry_safe(cur, tmp, &cb_list, node) {
> -               INIT_LIST_HEAD(&cur->node);
> +       list_for_each_entry_safe(cur, tmp, &fence->cb_list, node) {
> +               list_del_init(&cur->node);
>                 cur->func(fence, cur);
>         }
>  
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
