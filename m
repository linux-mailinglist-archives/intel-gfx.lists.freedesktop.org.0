Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7010B15EAB
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 13:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DDB510E1B6;
	Wed, 30 Jul 2025 11:00:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=canonical.com header.i=@canonical.com header.b="FVKRR9vK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 354 seconds by postgrey-1.36 at gabe;
 Wed, 30 Jul 2025 11:00:03 UTC
Received: from smtp-relay-canonical-1.canonical.com
 (smtp-relay-canonical-1.canonical.com [185.125.188.121])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3471510E1A6;
 Wed, 30 Jul 2025 11:00:03 +0000 (UTC)
Received: from [192.168.192.85] (unknown [50.47.147.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPSA id 084D43FE79; 
 Wed, 30 Jul 2025 10:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1753872847;
 bh=10JbJnFEOPuCL/Km3VWSaCKJ6FE4/O1UPzX+okIHZBU=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=FVKRR9vKsV+jMCuHdDKdnDTpeyJ5WaXfJhpVNV5h+ecXC6hbjvW8kXCGSjxpspL6M
 rXG94GDQk1CtReJ5wHK9fBhxqVKlbWgIvdxyr8Nva9fuDEVdyYqdvvWowwgxqWk06n
 +mjsbT7eSNZaCUiSEYMrDCOydfxtIP64lFldn+dDmXfFzga5ZCkIqqvI7lbfgKi/m4
 YsyAPib/FXQwu7lln482QH9EJm/CfRnLRMegCtFtwVQJc+l+PQeLOs3VNgezg5alhn
 gHLeEYH1sprBH2zFu2zQ1US6dNolwJOGudztzIplLS+tUFMqn06HvWd3sMgw8Bg3SK
 tk/O0HxnJT6hQ==
Message-ID: <5dc2418f-524e-4f8e-944b-342a556a98ca@canonical.com>
Date: Wed, 30 Jul 2025 03:54:01 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250721)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, lucas.demarchi@intel.com
References: <6a98e630-0610-4ba2-89c9-b2bd0d8ef9af@intel.com>
Content-Language: en-US
From: John Johansen <john.johansen@canonical.com>
Autocrypt: addr=john.johansen@canonical.com; keydata=
 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 lT9Q
Organization: Canonical
In-Reply-To: <6a98e630-0610-4ba2-89c9-b2bd0d8ef9af@intel.com>
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

On 7/28/25 09:53, Borah, Chaitanya Kumar wrote:
> Hello John,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on
> linux-next repository.
> 
> Since the version next-20250721 [2], we are seeing the following regression
> 
> `````````````````````````````````````````````````````````````````````````````````
> <3>[   10.781401] INFO: trying to register non-static key.
> <3>[   10.781411] The code is fine but needs lockdep annotation, or maybe
> <3>[   10.781414] you didn't initialize this object before use?
> <3>[   10.781416] turning off the locking correctness validator.
> <4>[   10.781420] CPU: 1 UID: 0 PID: 745 Comm: rsyslogd Not tainted 6.16.0-rc7-next-20250721-next-20250721-g979875200256+ #1 PREEMPT(voluntary)
> <4>[   10.781422] Hardware name: Intel Corporation Arrow Lake Client Platform/ARL-H Lp5x T4 RVP, BIOS MTLPFWI1.R00.5204.D80.2505151204 05/15/2025
> <4>[   10.781423] Call Trace:
> <4>[   10.781424]  <TASK>
> <4>[   10.781425]  dump_stack_lvl+0x91/0xf0
> <4>[   10.781430]  dump_stack+0x10/0x20
> <4>[   10.781431]  register_lock_class+0x491/0x4a0
> <4>[   10.781434]  ? prepend_path+0x330/0x510
> <4>[   10.781438]  ? prepend_path+0x8f/0x510
> <4>[   10.781440]  __lock_acquire+0xa8/0x2650
> <4>[   10.781444]  lock_acquire+0xc4/0x2e0
> <4>[   10.781445]  ? update_file_ctx+0x1e/0x110
> <4>[   10.781450]  _raw_spin_lock+0x2f/0x60
> <4>[   10.781452]  ? update_file_ctx+0x1e/0x110
> <4>[   10.781453]  update_file_ctx+0x1e/0x110
> <4>[   10.781455]  aa_file_perm+0x68f/0x7f0
> <4>[   10.781457]  common_file_perm+0x88/0x150
> <4>[   10.781460]  apparmor_mmap_file+0x5f/0x80
> <4>[   10.781462]  security_mmap_file+0x1b0/0x490
> <4>[   10.781465]  vm_mmap_pgoff+0x5d/0x220
> <4>[   10.781468]  ksys_mmap_pgoff+0x17a/0x250
> <4>[   10.781471]  __x64_sys_mmap+0x33/0x70
> <4>[   10.781474]  x64_sys_call+0x1eda/0x2680
> <4>[   10.781477]  do_syscall_64+0x93/0xa20
> <4>[   10.781480]  ? irqentry_exit+0x77/0xb0
> <4>[   10.781482]  ? exc_page_fault+0xbd/0x2c0
> <4>[   10.781484]  entry_SYSCALL_64_after_hwframe+0x76/0x7e
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [3].
> 
> After bisecting the tree, the following patch [4] seems to be the first "bad" commit
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit 88fec3526e84123997ecebd6bb6778eb4ce779b7
> 
> Author: John Johansen john.johansen@canonical.com
> 
> Date:   Thu Jun 19 22:11:52 2025 -0700
> 
> 
>      apparmor: make sure unix socket labeling is correctly updated.
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We also verified that if we revert the patch the issue is not seen.
> 
> Could you please check why the patch causes this regression and provide a fix if necessary?

yep thanks, fix made. That patch accidentally removed the spinlock initialization from
apparmor_file_alloc_security() while testing spin lock changes to the very similar
apparmor_sk_alloc_security(), and it wasn't caught :(

anyways fix is being pushed

> 
> Thank you.
> 
> Regards
> 
> Chaitanya
> 
> [1]
> https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250721
> [3]
> https://intel-gfx-ci.01.org/tree/linux-next/next-20250721/bat-arlh-2/boot0.txt
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250721&id=88fec3526e84123997ecebd6bb6778eb4ce779b7

