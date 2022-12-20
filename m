Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87266653786
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 21:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0263810E4B6;
	Wed, 21 Dec 2022 20:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 640 seconds by postgrey-1.36 at gabe;
 Tue, 20 Dec 2022 17:31:32 UTC
Received: from domac.alu.hr (domac.alu.hr [161.53.235.3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC3B10E0F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 17:31:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by domac.alu.hr (Postfix) with ESMTP id BA51E604F2;
 Tue, 20 Dec 2022 18:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1671556843; bh=/ns6x+N3oOC613yOKCn/zP2jb3uGEQHs5rJnDN/GpeU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=BlxfrTK8SvJRIto9oWq1lrwpAIS39Z8rXCR1StIfWqbTeDIfG3ebsTZ5VTE+0onV3
 1vGhJmxCM0Rm/ug2uax9MjBMWt/gTkScYSdHliGxIT9srmazf+AIim44KtWhPlxcFz
 VIAvfKCiiZvID8n6Pwko3t8kEM5YWgkHeMplFWoPuXkxjyINEiqSmqOMl2jk21k79N
 qVFTqaBivHtv25fLm/jWkgdJZqAS21rm3Y2TlASBlo1OIYowtE5gFCDdpTIHnUBeew
 gLkw4O574h5vwkR24+PwDscf6Nlvo8GiFnhWicXE8DVEt67FxwtlfmZW1lTW7ZKywq
 h/QcoOxHrejpw==
X-Virus-Scanned: Debian amavisd-new at domac.alu.hr
Received: from domac.alu.hr ([127.0.0.1])
 by localhost (domac.alu.hr [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82zR5omftyEb; Tue, 20 Dec 2022 18:20:41 +0100 (CET)
Received: from [192.168.0.12] (unknown [188.252.196.120])
 by domac.alu.hr (Postfix) with ESMTPSA id 3CFB4604F1;
 Tue, 20 Dec 2022 18:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=alu.unizg.hr; s=mail;
 t=1671556841; bh=/ns6x+N3oOC613yOKCn/zP2jb3uGEQHs5rJnDN/GpeU=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=E15GbcHNLLR4EHBmLqGtgv3MWrtGBrpgkVRcXr/eiutcZ26grxBZ9FdGgYci9qcoE
 F6vvFO/wkiZx95uTWsLwYggOOy+9xldcquaJfgwF/zyYwv8iNIGkgmv2q1cUDmHy3Q
 y7QHe5MC+6JeT3BbbpoyfXEoIfhunNxMq6OWXHHUyxhtnKPRUwp87SjYa+O1CjPxEA
 KOuOtuoUt/fHZkU4/Bfl71FX0efHb0NG4LodkOY4/TAv+WvRBEJguqwWAgBDchDBmA
 bzCQKVVtIXvqHXBbKGC3lZtoF3rYlCSiTmYydms1SiP0dg6l+2JkCJHpfHtssIlqgl
 Ghje2KqnenHqQ==
Message-ID: <fb590417-2c27-1f46-2dc8-e90931d9c600@alu.unizg.hr>
Date: Tue, 20 Dec 2022 18:20:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 srinivas pandruvada <srinivas.pandruvada@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <f849cc70-b21f-6476-ba26-08989d1243c2@alu.unizg.hr>
 <05424a5351a847786377a548dba0759917d8046c.camel@linux.intel.com>
 <15ef1bb9-7312-5d98-8bf0-0af1a37cfd2a@linux.intel.com>
From: Mirsad Goran Todorovac <mirsad.todorovac@alu.unizg.hr>
In-Reply-To: <15ef1bb9-7312-5d98-8bf0-0af1a37cfd2a@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 21 Dec 2022 20:19:41 +0000
Subject: Re: [Intel-gfx] Possible regression in drm/i915 driver: memleak
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
Cc: intel-gfx@lists.freedesktop.org,
 Thorsten Leemhuis <regressions@leemhuis.info>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20. 12. 2022. 16:52, Tvrtko Ursulin wrote:

> On 20/12/2022 15:22, srinivas pandruvada wrote:
>> +Added DRM mailing list and maintainers
>>
>> On Tue, 2022-12-20 at 15:33 +0100, Mirsad Todorovac wrote:
>>> Hi all,
>>>
>>> I have been unsuccessful to find any particular Intel i915 maintainer
>>> emails, so my best bet is to post here, as you will must assuredly
>>> already know them.
> 
> For future reference you can use ${kernel_dir}/scripts/get_maintainer.pl -f ...

Thank you, this will help a great deal provided that I find any
more bugs ...

>>> The problem is a kernel memory leak that is repeatedly occurring
>>> triggered during the execution of Chrome browser under the latest
>>> 6.1.0+
>>> kernel of this morning and Almalinux 8.6 on a Lenovo desktop box
>>> with Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz CPU.
>>>
>>> The build is with KMEMLEAK, KASAN and MGLRU turned on during the
>>> build,
>>> on a vanilla mainline kernel from Mr. Torvalds' tree.
>>>
>>> The leaks look like this one:
>>>
>>> unreferenced object 0xffff888131754880 (size 64):
>>>     comm "chrome", pid 13058, jiffies 4298568878 (age 3708.084s)
>>>     hex dump (first 32 bytes):
>>>       01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>>> ................
>>>       00 00 00 00 00 00 00 00 00 80 1e 3e 83 88 ff ff
>>> ...........>....
>>>     backtrace:
>>>       [<ffffffff9e9b5542>] slab_post_alloc_hook+0xb2/0x340
>>>       [<ffffffff9e9bbf5f>] __kmem_cache_alloc_node+0x1bf/0x2c0
>>>       [<ffffffff9e8f767a>] kmalloc_trace+0x2a/0xb0
>>>       [<ffffffffc08dfde5>] drm_vma_node_allow+0x45/0x150 [drm]
>>>       [<ffffffffc0b33315>] __assign_mmap_offset_handle+0x615/0x820
>>> [i915]
>>>       [<ffffffffc0b34057>] i915_gem_mmap_offset_ioctl+0x77/0x110
>>> [i915]
>>>       [<ffffffffc08bc5e1>] drm_ioctl_kernel+0x181/0x280 [drm]
>>>       [<ffffffffc08bc9cd>] drm_ioctl+0x2dd/0x6a0 [drm]
>>>       [<ffffffff9ea54744>] __x64_sys_ioctl+0xc4/0x100
>>>       [<ffffffff9fbc0178>] do_syscall_64+0x58/0x80
>>>       [<ffffffff9fc000aa>] entry_SYSCALL_64_after_hwframe+0x72/0xdc
>>>
>>> The complete list of leaks in attachment, but they seem similar or
>>> the same.
>>>
>>> Please find attached lshw and kernel build config file.
>>>
>>> I will probably check the same parms on my laptop at home, which is
>>> also
>>> Lenovo, but a different hw config and Ubuntu 22.10.
> 
> Could you try the below patch?
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index c3ea243d414d..0b07534c203a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -679,9 +679,10 @@ mmap_offset_attach(struct drm_i915_gem_object *obj,
>   insert:
>          mmo = insert_mmo(obj, mmo);
>          GEM_BUG_ON(lookup_mmo(obj, mmap_type) != mmo);
> -out:
> +
>          if (file)
>                  drm_vma_node_allow(&mmo->vma_node, file);
> +out:
>          return mmo;
> 
>   err:
> 
> Maybe it is not the best fix but curious to know if it will make the leak go away.

The patch was successfully applied to the latest Mr. Torvalds' tree (commit b6bb9676f216).

It is currently building, which can take up to 90 minutes on our system.

Now the test depends on whether I will be able to setup the machine at work remotely
(there were some firewalls on port 22 recently).

I will keep you updated.

Thanks,
Mirsad

--
Mirsad Goran Todorovac
Sistem inženjer
Grafički fakultet | Akademija likovnih umjetnosti
Sveučilište u Zagrebu
-- 
System engineer
Faculty of Graphic Arts | Academy of Fine Arts
University of Zagreb, Republic of Croatia
The European Union

