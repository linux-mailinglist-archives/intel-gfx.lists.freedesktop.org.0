Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A44101606B5
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Feb 2020 22:23:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40296E1BB;
	Sun, 16 Feb 2020 21:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 312 seconds by postgrey-1.36 at gabe;
 Sun, 16 Feb 2020 21:23:24 UTC
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B0989B62
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Feb 2020 21:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1581888202;
 bh=jG5GEa6PfIvtkDnb5V+9CztfoccbMkgxpvm2oo8AnJM=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=RRkwVZIH8GhypKahwUQnhgWaZm8EZB1k6Yg+RBduG4c7sCFE/HYO4SnGzF5ngDZ2L
 QBZzI2WFzqCQUm4regkspHiC7OvAl03BXk7xM4R0MFhGg92sKTN9/mbmaD+N6AMNms
 jHgUwr+iBTRmuC1kqXh2seiweKPKV0kK05m8OPlA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.24] ([77.0.113.245]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTABZ-1itrbr0pqB-00UZYN; Sun, 16
 Feb 2020 22:18:00 +0100
To: Hillf Danton <hdanton@sina.com>
References: <20200216032625.11452-1-hdanton@sina.com>
 <20200216145518.9728-1-hdanton@sina.com>
From: =?UTF-8?Q?Toralf_F=c3=b6rster?= <toralf.foerster@gmx.de>
Autocrypt: addr=toralf.foerster@gmx.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9543d83b-055c-cd84-6a68-f3d72e3dbecb@gmx.de>
Date: Sun, 16 Feb 2020 22:17:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200216145518.9728-1-hdanton@sina.com>
Content-Language: en-US
X-Provags-ID: V03:K1:djBNs4p3UIZOUyxDsmlN1uWT3X4RoNnSqLAxlYXW7iUpfi0HJjL
 418pQdDkeMVgfuKMjyQnPfc7YOi03biIHJKS6qyHQh0u4V90llIjQCMkU0QMZlmHlStjYPI
 ApKSU1L8PkjVtfHvXOHCngj/2tZMECymty2MsiJ8ZMdpe1fMmo1QCzgj+dRgm0PvnRfjkas
 MFmymnnOTJ6VFjw0BE3Kw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:khSgsi7H9iE=:6cK87udfr7BgkjoDUSRfSo
 YVIOkC3kFIpI1+H2ugxFHFuTOBXkjf3ocLmIEDceHGkXtByZOkL5EGekphIR5QZzv8PhZLRjd
 Cesz438ZtH+/185L2UfXSxyFdvKPtEQMPEvfoOkgkZdFovoJ++wSUc3kMnDLRkox5+r7MNICG
 vVUDwbCog+bWMbGUCqSCw281QeHQHV2YdIqyBLkciGRuUlSpcYS0taaPIxQ4cSTD3FnIvOqXH
 VhhgfodI3VuBGHHfd6/BJALQVLkm+53QWzJsLmWqaBwriWWmWP8hVuQGJLQOGbajqcUvzy+yG
 g1uwqD5oz7ZFXo1d9kmrNkzxLhvj6a2G7APhS7omjE6DLjy8Vz5GM56BCOARhDPkf8ZfKY8nB
 9jImzUkOGEIoA2nxoy3EEG3JXSzhvW0YAcBN10dGQnzMTdGawDxMgBew6LJwoBJnNJPPgQPdy
 tKmxtx4k0k0qu8RamGs1e5g7aIGnsdh1uYSGpd3OHnBXI9KW92JVrvqwySFktpcMA8OOMyjuG
 9DAaqiGL5BcPrJ/dozHHx7LFojDyuNzaSSfREnkAIu8XkZDkeIax8n1JqrqUDxbAA5ui1Mvkz
 aNJVVJv40CvMOLKhJhOBPfyGTYNa6nf+TqDU2QCfDITPa2p73Hb9eXmx9CntmWioODNYRbhec
 rvrc8H8wtET2hRXgDYl9c8JGMQMWd8e3cAVJwErNJrOMo9rWUhB5FbN+0L65Yci3k5bqohUfG
 fem9ml+y+PykQy3HvF/gEN6GgvlNiCvw9ynVvJJzyVBMWB7xS7TeqWSKBBL1pihwtyDaPg8iU
 6i+Qwxg5sjXVYYV1jF008eg1uh9vBTBUBXUjHXKC3YMSBrjtkGwFYxhXwqIXKMEmUGFLIUvH5
 cmw2yvyFtH9ImH0PU8XNMwsDhYAOVYLyLvGC/kOxPAeEHkia6nOlfQ7zLc4GFLmcPzT3ykNbs
 9SRUC20zUqWQBrdXZqvJKNBDR5VzJC2E+pV/k5GN9UAJO4Q/HEtPZvvqkydkMk0R78zeLKE4u
 BGXTJuvHX0BPmFBKrsE8btLqPQdS6umeHM3fT7H0pjR8BYcdc56Bnhx8QXFpxbqf23OKzO39W
 Z+0JnXWJ3njxEhvLxTkWNgZeiY/IuKlAeyvUFB22N0W6KfGP4+qsJjv+RJKA5HcvoFNL97TLr
 GVk2CfoyyJYcpaO4CD8wFXRpou5pCLS0eVVdAOp2rmQ7g/OJtnvYFCFbUEAVbxx/atF81BueD
 DJS1qHOhU1UoBE1PW
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/16/20 3:55 PM, Hillf Danton wrote:
> 
> On Sun, 16 Feb 2020 11:33:02 +0100 Toralf Foerster wrote:
>> On 2/16/20 4:26 AM, Hillf Danton wrote:
>>> Looks like a stray lock counts for the above NULL dereference.
>>>
>> Hi, the patch applied on top of 5.5.4 breaks the internal display now even
>>  in the boot phase.
> 
> My bad.
> 
> Then try to do fence signaling before taking request's lock as we'll
> take the fence specific lock if we're in the right direction.
> 
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -252,10 +252,10 @@ bool i915_request_retire(struct i915_req
>  	 */
>  	remove_from_engine(rq);
>  
> +	dma_fence_signal(&rq->fence);
> +
>  	spin_lock_irq(&rq->lock);
>  	i915_request_mark_complete(rq);
> -	if (!i915_request_signaled(rq))
> -		dma_fence_signal_locked(&rq->fence);
>  	if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &rq->fence.flags))
>  		i915_request_cancel_breadcrumb(rq);
>  	if (i915_request_has_waitboost(rq)) {
> 

This is similar to the behaviour before, the BUG occurres after few minutes/hours.
It brought now:


Feb 16 22:09:01 t44 CROND[8918]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
Feb 16 22:10:01 t44 CROND[8980]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
Feb 16 22:10:37 t44 kernel: BUG: kernel NULL pointer dereference, address: 0000000000000000
Feb 16 22:10:37 t44 kernel: #PF: supervisor instruction fetch in kernel mode
Feb 16 22:10:37 t44 kernel: #PF: error_code(0x0010) - not-present page
Feb 16 22:10:37 t44 kernel: PGD 0 P4D 0 
Feb 16 22:10:37 t44 kernel: Oops: 0010 [#1] SMP PTI
Feb 16 22:10:37 t44 kernel: CPU: 1 PID: 3403 Comm: X Tainted: G                T 5.5.4 #3
Feb 16 22:10:37 t44 kernel: Hardware name: LENOVO 20AQCTO1WW/20AQCTO1WW, BIOS GJET92WW (2.42 ) 03/03/2017
Feb 16 22:10:37 t44 kernel: RIP: 0010:0x0
Feb 16 22:10:37 t44 kernel: Code: Bad RIP value.
Feb 16 22:10:37 t44 kernel: RSP: 0018:ffffad37009eba20 EFLAGS: 00010087
Feb 16 22:10:37 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000e68b0
Feb 16 22:10:37 t44 kernel: RDX: 0000000000000000 RSI: ffff8b35598cba88 RDI: ffff8b362d9146c0
Feb 16 22:10:37 t44 kernel: RBP: ffff8b362d9146c0 R08: 0000000000000000 R09: ffff8b35598cbe00
Feb 16 22:10:37 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffffad37009eba28
Feb 16 22:10:37 t44 kernel: R13: 0000000000000000 R14: ffff8b36a40fa200 R15: ffff8b369bf99600
Feb 16 22:10:37 t44 kernel: FS:  00007f2b751398c0(0000) GS:ffff8b36b2680000(0000) knlGS:0000000000000000
Feb 16 22:10:37 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
Feb 16 22:10:37 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323292001 CR4: 00000000001606e0
Feb 16 22:10:37 t44 kernel: Call Trace:
Feb 16 22:10:37 t44 kernel:  dma_fence_signal_locked+0x85/0xc0
Feb 16 22:10:37 t44 kernel:  dma_fence_signal+0x1f/0x40
Feb 16 22:10:37 t44 kernel:  i915_request_retire+0x9a/0x290 [i915]
Feb 16 22:10:37 t44 kernel:  i915_request_create+0x3f/0xc0 [i915]
Feb 16 22:10:37 t44 kernel:  i915_gem_do_execbuffer+0x973/0x17d0 [i915]
Feb 16 22:10:37 t44 kernel:  i915_gem_execbuffer2_ioctl+0xe9/0x3a0 [i915]
Feb 16 22:10:37 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
Feb 16 22:10:37 t44 kernel:  drm_ioctl_kernel+0xae/0x100 [drm]
Feb 16 22:10:37 t44 kernel:  drm_ioctl+0x223/0x400 [drm]
Feb 16 22:10:37 t44 kernel:  ? i915_gem_execbuffer_ioctl+0x2c0/0x2c0 [i915]
Feb 16 22:10:37 t44 kernel:  do_vfs_ioctl+0x4d4/0x760
Feb 16 22:10:37 t44 kernel:  ksys_ioctl+0x5b/0x90
Feb 16 22:10:37 t44 kernel:  __x64_sys_ioctl+0x15/0x20
Feb 16 22:10:37 t44 kernel:  do_syscall_64+0x46/0x100
Feb 16 22:10:37 t44 kernel:  entry_SYSCALL_64_after_hwframe+0x44/0xa9
Feb 16 22:10:37 t44 kernel: RIP: 0033:0x7f2b75372137
Feb 16 22:10:37 t44 kernel: Code: 00 00 00 75 0c 48 c7 c0 ff ff ff ff 48 83 c4 18 c3 e8 2d d4 01 00 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 b8 10 00 00 00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 ed 0c 00 f7 d8 64 89 01 48
Feb 16 22:10:37 t44 kernel: RSP: 002b:00007ffebe2b4c38 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
Feb 16 22:10:37 t44 kernel: RAX: ffffffffffffffda RBX: 00007ffebe2b4c80 RCX: 00007f2b75372137
Feb 16 22:10:37 t44 kernel: RDX: 00007ffebe2b4c80 RSI: 0000000040406469 RDI: 000000000000000d
Feb 16 22:10:37 t44 kernel: RBP: 0000000040406469 R08: 0000561477eb8670 R09: 0000000000000202
Feb 16 22:10:37 t44 kernel: R10: 0000000000000000 R11: 0000000000000246 R12: 0000561477e7b0b0
Feb 16 22:10:37 t44 kernel: R13: 000000000000000d R14: 00007f2b74b51c48 R15: 0000000000000000
Feb 16 22:10:37 t44 kernel: Modules linked in: af_packet bridge stp llc ip6table_filter ip6_tables xt_MASQUERADE iptable_nat nf_nat nf_log_ipv4 nf_log_common xt_LOG xt_limit xt_recent xt_conntrack nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 iptable_filter ip_tables uvcvideo videobuf2_vmalloc videobuf2_memops videobuf2_v4l2 videodev videobuf2_common btusb btrtl btbcm btintel bluetooth ecdh_generic ecc rmi_smbus rmi_core mousedev x86_pkg_temp_thermal coretemp kvm_intel kvm i915 irqbypass intel_gtt i2c_algo_bit drm_kms_helper cfbfillrect syscopyarea input_leds snd_hda_codec_realtek snd_hda_codec_generic cfbimgblt sysfillrect sysimgblt fb_sys_fops cfbcopyarea wmi_bmof snd_hda_intel snd_intel_dspcfg drm snd_hda_codec tpm_tis psmouse aesni_intel snd_hda_core glue_helper crypto_simd iwlmvm cryptd snd_pcm thinkpad_acpi ledtrig_audio tpm_tis_core iwlwifi pcspkr drm_panel_orientation_quirks ehci_pci atkbd e1000e i2c_i801 ehci_hcd tpm thermal snd_timer ac snd soundcore battery rng_core agpgart i
 2c_core wmi evdev
Feb 16 22:10:37 t44 kernel: CR2: 0000000000000000
Feb 16 22:10:37 t44 kernel: ---[ end trace 7df1d4246cb74d36 ]---
Feb 16 22:10:37 t44 kernel: RIP: 0010:0x0
Feb 16 22:10:37 t44 kernel: Code: Bad RIP value.
Feb 16 22:10:37 t44 kernel: RSP: 0018:ffffad37009eba20 EFLAGS: 00010087
Feb 16 22:10:37 t44 kernel: RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000e68b0
Feb 16 22:10:37 t44 kernel: RDX: 0000000000000000 RSI: ffff8b35598cba88 RDI: ffff8b362d9146c0
Feb 16 22:10:37 t44 kernel: RBP: ffff8b362d9146c0 R08: 0000000000000000 R09: ffff8b35598cbe00
Feb 16 22:10:37 t44 kernel: R10: 0000000000000002 R11: 0000000000000005 R12: ffffad37009eba28
Feb 16 22:10:37 t44 kernel: R13: 0000000000000000 R14: ffff8b36a40fa200 R15: ffff8b369bf99600
Feb 16 22:10:37 t44 kernel: FS:  00007f2b751398c0(0000) GS:ffff8b36b2680000(0000) knlGS:0000000000000000
Feb 16 22:10:37 t44 kernel: CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
Feb 16 22:10:37 t44 kernel: CR2: ffffffffffffffd6 CR3: 0000000323292001 CR4: 00000000001606e0
Feb 16 22:11:01 t44 CROND[8996]: (root) CMD (/usr/lib/sa/sa1 30 2 -S XALL)
Feb 16 22:12:49 t44 syslog-ng[1912]: syslog-ng starting up; version='3.22.1'
Feb 16 22:12:49 t44 acpid[1943]: starting up with netlink and the input layer




-- 
Toralf
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
