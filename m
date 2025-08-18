Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA657B2C5DF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 15:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C6710E5FF;
	Tue, 19 Aug 2025 13:41:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1165 seconds by postgrey-1.36 at gabe;
 Mon, 18 Aug 2025 09:35:55 UTC
Received: from dggsgout11.his.huawei.com (dggsgout11.his.huawei.com
 [45.249.212.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6631A10E1CF;
 Mon, 18 Aug 2025 09:35:55 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.163.235])
 by dggsgout11.his.huawei.com (SkyGuard) with ESMTPS id 4c56XY2CdZzYQvGn;
 Mon, 18 Aug 2025 17:16:29 +0800 (CST)
Received: from mail02.huawei.com (unknown [10.116.40.128])
 by mail.maildlp.com (Postfix) with ESMTP id DA8C01A06DD;
 Mon, 18 Aug 2025 17:16:27 +0800 (CST)
Received: from [10.174.179.143] (unknown [10.174.179.143])
 by APP4 (Coremail) with SMTP id gCh0CgD3chNm76JodtFZEA--.19461S3;
 Mon, 18 Aug 2025 17:16:23 +0800 (CST)
Subject: Re: REGRESSION on linux-next (next-20250814)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 sunjunchao2870@gmail.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 lucas.demarchi@intel.com, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, linux-block@vger.kernel.org,
 "yukuai (C)" <yukuai3@huawei.com>
References: <ed8f89a3-be5c-4bf4-97a5-886e8e3f969b@intel.com>
From: Yu Kuai <yukuai1@huaweicloud.com>
Message-ID: <2b0138fc-2f2a-e897-65fc-8fad844678e2@huaweicloud.com>
Date: Mon, 18 Aug 2025 17:16:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <ed8f89a3-be5c-4bf4-97a5-886e8e3f969b@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: gCh0CgD3chNm76JodtFZEA--.19461S3
X-Coremail-Antispam: 1UD129KBjvJXoWxWr47Gw1fAw45GFy8CFW8tFb_yoWrXrW3pr
 Z3K3s3JryDJ348JFyUtr1DGryUJr1DJ3WUJrykJF18Jr1UZr1vqr18Xr1jgryUKrZ5Ar15
 tr4Dtr12vr1UCrUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUv0b4IE77IF4wAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k2
 6cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4
 vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_tr0E3s1l84ACjcxK6xIIjxv20xvEc7Cj
 xVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z280aVCY1x
 0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG
 6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFV
 Cjc4AY6r1j6r4UM4x0Y48IcVAKI48JMxk0xIA0c2IEe2xFo4CEbIxvr21lc7CjxVAaw2AF
 wI0_JF0_Jw1l42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4
 xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43
 MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I
 0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8
 JVWxJwCI42IY6I8E87Iv6xkF7I0E14v26r4UJVWxJrUvcSsGvfC2KfnxnUUI43ZEXa7IU8
 YYLPUUUUU==
X-CM-SenderInfo: 51xn3trlr6x35dzhxuhorxvhhfrp/
X-Mailman-Approved-At: Tue, 19 Aug 2025 13:41:02 +0000
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

Hi,

在 2025/08/18 16:35, Borah, Chaitanya Kumar 写道:
> Hello Julian,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in 
> Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on
> linux-next repository.
> 
> Since the version next-20250814 [2], we are seeing the following regression
> 
> ````````````````````````````````````````````````````````````````````````````````` 
> 
> <4>[   25.645493] ======================================================
> <4>[   25.645497] WARNING: possible circular locking dependency detected
> <5>[   25.645501] 6.17.0-rc2-next-20250818-next-20250818-g3ac864c2d9bb+ 
> #1 Not tainted
> <4>[   25.645506] ------------------------------------------------------
> <4>[   25.645509] swapper/0/1 is trying to acquire lock:
> <5>[   25.645513] ffffffff83488270 (cpu_hotplug_lock){++++}-{0:0}, at: 
> static_key_slow_inc+0x12/0x30
> <4>[   25.645526]
>                    but task is already holding lock:
> <5>[   25.645529] ffff8881063fce30 
> (&q->q_usage_counter(io)){++++}-{0:0}, at: 
> blk_mq_freeze_queue_nomemsave+0x12/0x30
> <4>[   25.645540]
>                    which lock already depends on the new lock.
> 
> <4>[   25.645545]
>                    the existing dependency chain (in reverse order) is:
> <5>[   25.645549]
>                    -> #2 (&q->q_usage_counter(io)){++++}-{0:0}:
> <5>[   25.645554]        blk_alloc_queue+0x324/0x360
> <5>[   25.645560]        blk_mq_alloc_queue+0x6a/0xe0
> <5>[   25.645564]        __blk_mq_alloc_disk+0x19/0x70
> <5>[   25.645567]        loop_add+0x240/0x430
> <5>[   25.645573]        loop_init+0xcd/0x190
> <5>[   25.645576]        do_one_initcall+0x5d/0x3f0
> <5>[   25.645581]        kernel_init_freeable+0x3cd/0x6a0
> <5>[   25.645586]        kernel_init+0x1b/0x200
> <5>[   25.645591]        ret_from_fork+0x26c/0x2e0
> <5>[   25.645597]        ret_from_fork_asm+0x1a/0x30
> ````````````````````````````````````````````````````````````````````````````````` 
> 
> Details log can be found in [3].

The bisecting is because this patch actually enable wbt now, while this
patch is not the root cause.

Following is a fix by Nilay, you can have a test if your problem can be
fixed.

https://lore.kernel.org/all/20250814082612.500845-1-nilay@linux.ibm.com/

Thanks,
Kuai

> 
> After bisecting the tree, the following patch [4] seems to be the first 
> "bad" commit
> 
> ````````````````````````````````````````````````````````````````````````````````````````````````````````` 
> 
> commit 8f5845e0743bf3512b71b3cb8afe06c192d6acc4
> Author: Julian Sun sunjunchao2870@gmail.com
> Date:   Tue Aug 12 23:42:57 2025 +0800
> 
>      block: restore default wbt enablement
> ````````````````````````````````````````````````````````````````````````````````````````````````````````` 
> 
> 
> We also verified that if we revert the patch the issue is not seen.
> 
> Could you please check why the patch causes this regression and provide 
> a fix if necessary?
> 
> Thank you.
> 
> Regards
> 
> Chaitanya
> 
> [1]
> https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
> [2] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250814 
> 
> [3] 
> https://intel-gfx-ci.01.org/tree/linux-next/next-20250818/bat-twl-1/boot0.txt 
> 
> [4] 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20250818&id=8f5845e0743bf3512b71b3cb8afe06c192d6acc4 
> 
> 
> 
> .
> 

