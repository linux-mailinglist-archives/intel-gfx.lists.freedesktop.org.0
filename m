Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0BFEB16D4B
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 10:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EA0710E255;
	Thu, 31 Jul 2025 08:16:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="BcKhCGxB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-relay-canonical-0.canonical.com
 (smtp-relay-canonical-0.canonical.com [185.125.188.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C1410E255;
 Thu, 31 Jul 2025 08:16:55 +0000 (UTC)
Received: from [192.168.192.85] (unknown [50.47.147.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id 9A3353FAF9; 
 Thu, 31 Jul 2025 08:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1753949812;
 bh=F5QOJpQQy+07257Qdi528evCG0MUVB5UHLbLH+nrjeo=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=BcKhCGxBHSUnY2L//OA9riQCHONeO41zy4ACKdwcxy7dUfM2WcRyfMwDoFbBkU/Tb
 UvPVohNntFX+Z5OBv/KauTbqGe6+A8feVc6j7/wIFRJRniSUqnLekrhM5AZ6aVfJZx
 R3TiKoVBpSvesVCgcpF7CSkWQ8Cizf6wNpaznlt9L2xMsf60jIoVVbEcqH3qCgB5We
 L46wcAgRIkGwux81kiOYLs086FY9XWwX7HgtPAl75x+5kQLaEd5wer45ON6kyvPqnA
 z0AHZW02RRUZ4RVzUdadBdM8Vf51MZYlZL06ZuDk8if0iu6erIXHMV8SdBZfZcjBAb
 YFr4c2NmURZNw==
Message-ID: <9bbf3107-e7c3-4883-bd99-6e09cc0ee46f@canonical.com>
Date: Thu, 31 Jul 2025 01:16:19 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250721)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, lucas.demarchi@intel.com
References: <6a98e630-0610-4ba2-89c9-b2bd0d8ef9af@intel.com>
 <5dc2418f-524e-4f8e-944b-342a556a98ca@canonical.com>
 <ac7223a8-6efa-4159-9ab6-78321a7322dc@intel.com>
Content-Language: en-US
From: John Johansen <john.johansen@canonical.com>
Autocrypt: addr=john.johansen@canonical.com; keydata=
 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 lT9Q
Organization: Canonical
In-Reply-To: <ac7223a8-6efa-4159-9ab6-78321a7322dc@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 7/30/25 23:46, Borah, Chaitanya Kumar wrote:
> 
> 
> On 7/30/2025 4:24 PM, John Johansen wrote:
>>> After bisecting the tree, the following patch [4] seems to be the first "bad" commit
>>>
>>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>> commit 88fec3526e84123997ecebd6bb6778eb4ce779b7
>>>
>>> Author: John Johansen john.johansen@canonical.com
>>>
>>> Date:   Thu Jun 19 22:11:52 2025 -0700
>>>
>>>
>>>      apparmor: make sure unix socket labeling is correctly updated.
>>> `````````````````````````````````````````````````````````````````````````````````````````````````````````
>>>
>>> We also verified that if we revert the patch the issue is not seen.
>>>
>>> Could you please check why the patch causes this regression and provide a fix if necessary?
>>
>> yep thanks, fix made. That patch accidentally removed the spinlock initialization from
>> apparmor_file_alloc_security() while testing spin lock changes to the very similar
>> apparmor_sk_alloc_security(), and it wasn't caught 🙁
>>
>> anyways fix is being pushed
> 
> Thank you John for your response. Kindly share the patch whenever it is available. So that we can verify the fix.
> 

in apparmor-next it is
43584e993293 apparmor: fix Regression on linux-next (next-20250721)

but also included below

 From 43584e993293326cfc508e664fe81f56a65f6240 Mon Sep 17 00:00:00 2001
From: John Johansen <john.johansen@canonical.com>
Date: Wed, 30 Jul 2025 03:47:07 -0700
Subject: [PATCH] apparmor: fix Regression on linux-next (next-20250721)

sk lock initialization was incorrectly removed, from
apparmor_file_alloc_security() while testing changes to changes to
apparmor_sk_alloc_security()

resulting in the following regression.

[   48.056654] INFO: trying to register non-static key.
[   48.057480] The code is fine but needs lockdep annotation, or maybe
[   48.058416] you didn't initialize this object before use?
[   48.059209] turning off the locking correctness validator.
[   48.060040] CPU: 0 UID: 0 PID: 648 Comm: chronyd Not tainted 6.16.0-rc7-test-next-20250721-11410-g1ee809985e11-dirty #577 NONE
[   48.060049] Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2 04/01/2014
[   48.060055] Call Trace:
[   48.060059]  <TASK>
[   48.060063] dump_stack_lvl (lib/dump_stack.c:122)
[   48.060075] register_lock_class (kernel/locking/lockdep.c:988 kernel/locking/lockdep.c:1302)
[   48.060084] ? path_name (security/apparmor/file.c:159)
[   48.060093] __lock_acquire (kernel/locking/lockdep.c:5116)
[   48.060103] lock_acquire (kernel/locking/lockdep.c:473 (discriminator 4) kernel/locking/lockdep.c:5873 (discriminator 4) kernel/locking/lockdep.c:5828 (discriminator 4))
[   48.060109] ? update_file_ctx (security/apparmor/file.c:464)
[   48.060115] ? __pfx_profile_path_perm (security/apparmor/file.c:247)
[   48.060121] _raw_spin_lock (include/linux/spinlock_api_smp.h:134 kernel/locking/spinlock.c:154)
[   48.060130] ? update_file_ctx (security/apparmor/file.c:464)
[   48.060134] update_file_ctx (security/apparmor/file.c:464)
[   48.060140] aa_file_perm (security/apparmor/file.c:532 (discriminator 1) security/apparmor/file.c:642 (discriminator 1))
[   48.060147] ? __pfx_aa_file_perm (security/apparmor/file.c:607)
[   48.060152] ? do_mmap (mm/mmap.c:558)
[   48.060160] ? __pfx_userfaultfd_unmap_complete (fs/userfaultfd.c:841)
[   48.060170] ? __lock_acquire (kernel/locking/lockdep.c:4677 (discriminator 1) kernel/locking/lockdep.c:5194 (discriminator 1))
[   48.060176] ? common_file_perm (security/apparmor/lsm.c:535 (discriminator 1))
[   48.060185] security_mmap_file (security/security.c:3012 (discriminator 2))
[   48.060192] vm_mmap_pgoff (mm/util.c:574 (discriminator 1))
[   48.060200] ? find_held_lock (kernel/locking/lockdep.c:5353 (discriminator 1))
[   48.060206] ? __pfx_vm_mmap_pgoff (mm/util.c:568)
[   48.060212] ? lock_release (kernel/locking/lockdep.c:5539 kernel/locking/lockdep.c:5892 kernel/locking/lockdep.c:5878)
[   48.060219] ? __fget_files (arch/x86/include/asm/preempt.h:85 (discriminator 13) include/linux/rcupdate.h:100 (discriminator 13) include/linux/rcupdate.h:873 (discriminator 13) fs/file.c:1072 (discriminator 13))
[   48.060229] ksys_mmap_pgoff (mm/mmap.c:604)
[   48.060239] do_syscall_64 (arch/x86/entry/syscall_64.c:63 (discriminator 1) arch/x86/entry/syscall_64.c:94 (discriminator 1))
[   48.060248] entry_SYSCALL_64_after_hwframe (arch/x86/entry/entry_64.S:130)
[   48.060254] RIP: 0033:0x7fb6920e30a2
[ 48.060265] Code: 08 00 04 00 00 eb e2 90 41 f7 c1 ff 0f 00 00 75 27 55 89 cd 53 48 89 fb 48 85 ff 74 33 41 89 ea 48 89 df b8 09 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 5e 5b 5d c3 0f 1f 00 c7 05 e6 41 01 00 16 00
All code
========
    0:	08 00                	or     %al,(%rax)
    2:	04 00                	add    $0x0,%al
    4:	00 eb                	add    %ch,%bl
    6:	e2 90                	loop   0xffffffffffffff98
    8:	41 f7 c1 ff 0f 00 00 	test   $0xfff,%r9d
    f:	75 27                	jne    0x38
   11:	55                   	push   %rbp
   12:	89 cd                	mov    %ecx,%ebp
   14:	53                   	push   %rbx
   15:	48 89 fb             	mov    %rdi,%rbx
   18:	48 85 ff             	test   %rdi,%rdi
   1b:	74 33                	je     0x50
   1d:	41 89 ea             	mov    %ebp,%r10d
   20:	48 89 df             	mov    %rbx,%rdi
   23:	b8 09 00 00 00       	mov    $0x9,%eax
   28:	0f 05                	syscall
   2a:*	48 3d 00 f0 ff ff    	cmp    $0xfffffffffffff000,%rax		<-- trapping instruction
   30:	77 5e                	ja     0x90
   32:	5b                   	pop    %rbx
   33:	5d                   	pop    %rbp
   34:	c3                   	ret
   35:	0f 1f 00             	nopl   (%rax)
   38:	c7                   	.byte 0xc7
   39:	05 e6 41 01 00       	add    $0x141e6,%eax
   3e:	16                   	(bad)
	...

Code starting with the faulting instruction
===========================================
    0:	48 3d 00 f0 ff ff    	cmp    $0xfffffffffffff000,%rax
    6:	77 5e                	ja     0x66
    8:	5b                   	pop    %rbx
    9:	5d                   	pop    %rbp
    a:	c3                   	ret
    b:	0f 1f 00             	nopl   (%rax)
    e:	c7                   	.byte 0xc7
    f:	05 e6 41 01 00       	add    $0x141e6,%eax
   14:	16                   	(bad)
	...
[   48.060270] RSP: 002b:00007ffd2c0d3528 EFLAGS: 00000206 ORIG_RAX: 0000000000000009
[   48.060279] RAX: ffffffffffffffda RBX: 00007fb691fc8000 RCX: 00007fb6920e30a2
[   48.060283] RDX: 0000000000000005 RSI: 000000000007d000 RDI: 00007fb691fc8000
[   48.060287] RBP: 0000000000000812 R08: 0000000000000003 R09: 0000000000011000
[   48.060290] R10: 0000000000000812 R11: 0000000000000206 R12: 00007ffd2c0d3578
[   48.060293] R13: 00007fb6920b6160 R14: 00007ffd2c0d39f0 R15: 00000fffa581a6a8

Fixes: 88fec3526e84 ("apparmor: make sure unix socket labeling is correctly updated.")
Signed-off-by: John Johansen <john.johansen@canonical.com>
---
  security/apparmor/lsm.c | 1 +
  1 file changed, 1 insertion(+)

diff --git a/security/apparmor/lsm.c b/security/apparmor/lsm.c
index e4b2944431e4..f385913e7d0e 100644
--- a/security/apparmor/lsm.c
+++ b/security/apparmor/lsm.c
@@ -505,6 +505,7 @@ static int apparmor_file_alloc_security(struct file *file)
  	struct aa_file_ctx *ctx = file_ctx(file);
  	struct aa_label *label = begin_current_label_crit_section();
  
+	spin_lock_init(&ctx->lock);
  	rcu_assign_pointer(ctx->label, aa_get_label(label));
  	end_current_label_crit_section(label);
  	return 0;
-- 
2.43.0


