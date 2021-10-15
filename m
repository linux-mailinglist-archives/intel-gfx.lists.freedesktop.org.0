Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6BF42EC44
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 10:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CE9D6E8F1;
	Fri, 15 Oct 2021 08:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771796E222;
 Fri, 15 Oct 2021 08:27:19 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id DA3BC2196D;
 Fri, 15 Oct 2021 08:27:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1634286437; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XH1hXLqLnxkTOtk+fqniTFsoIzBDMQNj7gJXWTZhb68=;
 b=jTXff+NMj4KD+TPpQ+au1XtLgKxtztE7sl4HB7sergBRGa9YK94vEEQZrKw+RxZuAWE8Cv
 VDYramXzOdK7OdMM5EAOzc3Kib/P2ysbmXsBpCwA4/982L3XG2fWGjtgYKkPWJALlFACg/
 48X2R8E4Y/zC4FNoK0BWli6e307iHT0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1634286437;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XH1hXLqLnxkTOtk+fqniTFsoIzBDMQNj7gJXWTZhb68=;
 b=uGC9lMi8Azr/5HCWiZsASoGhDPKCA28O9ceP3c8nt+FWh/BCJPe7hEC0Owi/vo8JiM2QAH
 XuA7L7dyGqWV80Cw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 838AE13B87;
 Fri, 15 Oct 2021 08:27:17 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id DTlAH2U7aWHKCQAAMHmgww
 (envelope-from <vbabka@suse.cz>); Fri, 15 Oct 2021 08:27:17 +0000
Message-ID: <137e4211-266f-bdb3-6830-e101c27c3be4@suse.cz>
Date: Fri, 15 Oct 2021 10:27:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Mike Rapoport <rppt@kernel.org>
Cc: kernel test robot <oliver.sang@intel.com>, 0day robot <lkp@intel.com>,
 Dmitry Vyukov <dvyukov@google.com>, Marco Elver <elver@google.com>,
 Vijayanand Jitta <vjitta@codeaurora.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Alexander Potapenko <glider@google.com>,
 Andrey Konovalov <andreyknvl@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Oliver Glitta
 <glittao@gmail.com>, Imran Khan <imran.f.khan@oracle.com>,
 LKML <linux-kernel@vger.kernel.org>, lkp@lists.01.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 kasan-dev@googlegroups.com
References: <20211014085450.GC18719@xsang-OptiPlex-9020>
 <4d99add1-5cf7-c608-a131-18959b85e5dc@suse.cz> <YWgDkjqtJO4e3DM6@kernel.org>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <YWgDkjqtJO4e3DM6@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [lib/stackdepot] 1cd8ce52c5:
 BUG:unable_to_handle_page_fault_for_address
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

On 10/14/21 12:16, Mike Rapoport wrote:
> On Thu, Oct 14, 2021 at 11:33:03AM +0200, Vlastimil Babka wrote:
>> On 10/14/21 10:54, kernel test robot wrote:
>> 
>> In my local testing of the patch, when stackdepot was initialized through
>> page owner init, it was using kvmalloc() so slab_is_available() was true.
>> Looks like the exact order of slab vs page_owner alloc is non-deterministic,
>> could be arch-dependent or just random ordering of init calls. A wrong order
>> will exploit the apparent fact that slab_is_available() is not a good
>> indicator of using memblock vs page allocator, and we would need a better one.
>> Thoughts?
> 
> The order of slab vs page_owner is deterministic, but it is different for
> FLATMEM and SPARSEMEM. And page_ext_init_flatmem_late() that initializes
> page_ext for FLATMEM is called exactly between buddy and slab setup:

Oh, so it was due to FLATMEM, thanks for figuring that out!

> static void __init mm_init(void)
> {
> 	...
> 
> 	mem_init();
> 	mem_init_print_info();
> 	/* page_owner must be initialized after buddy is ready */
> 	page_ext_init_flatmem_late();
> 	kmem_cache_init();
> 
> 	...
> }
> 
> I've stared for a while at page_ext init and it seems that the
> page_ext_init_flatmem_late() can be simply dropped because there is anyway
> a call to invoke_init_callbacks() in page_ext_init() that is called much
> later in the boot process.

Yeah, but page_ext_init() only does something for SPARSEMEM, and is empty on
FLATMEM. Otherwise it would be duplicating all the work. So I'll just move
page_ext_init_flatmem_late() below kmem_cache_init() in mm_init(). Thanks
again!


