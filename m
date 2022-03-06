Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2083F4CFC6A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 12:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD26610F65B;
	Mon,  7 Mar 2022 11:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CE010E6E4;
 Sun,  6 Mar 2022 16:53:25 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2A3BCB80E86;
 Sun,  6 Mar 2022 16:53:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61F83C340EC;
 Sun,  6 Mar 2022 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646585602;
 bh=MsFvCvDm3Ch69LnmbtaI1I9nqbcwEoILGdlAPzIetO8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y914rtUiHzXvBnz643r24P9/50ijdnH21BhkmMXNdPFnctYpw+CGGwkjiSO4OwtXJ
 cIj6IDXTGuX4ok/Azkkkz4yPB4UiDiPEI3ZnY1KuetY2NlaSDCT4alak24MLKqMMWT
 81w5Bw17iwZvWhZno4RxV9EAK9enO5SHr8ultMzE3oiqsv18m8lefFW9p7UhVw52Rl
 P6T7XXKOZbWsN36s081JMMyXiGRVG5ePMhoUhLaFZ1j0EZtYdQz3Yxv9v0DV/r8mqd
 A923uLtITDotkTWx1rpjNsEoRnRjJwbB7SjCx/NcIAi4R8U3aH/UB0N3Tz2bKFyora
 Nys80UhGrEPVg==
Date: Sun, 6 Mar 2022 18:52:41 +0200
From: 'Jarkko Sakkinen' <jarkko@kernel.org>
To: David Laight <David.Laight@aculab.com>
Message-ID: <YiTm2b8KTRUsDkC0@iki.fi>
References: <20220306053211.135762-1-jarkko@kernel.org>
 <7f46ef3c80734f478501d21cef0182c5@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f46ef3c80734f478501d21cef0182c5@AcuMS.aculab.com>
X-Mailman-Approved-At: Mon, 07 Mar 2022 11:13:15 +0000
Subject: Re: [Intel-gfx] [PATCH RFC 0/3] MAP_POPULATE for device memory
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
Cc: Michal Hocko <mhocko@suse.com>, zhangyiru <zhangyiru3@huawei.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Alexander Mikhalitsyn <alexander.mikhalitsyn@virtuozzo.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "linux-unionfs@vger.kernel.org" <linux-unionfs@vger.kernel.org>,
 "codalist@coda.cs.cmu.edu" <codalist@coda.cs.cmu.edu>,
 Matthew Auld <matthew.auld@intel.com>, Vasily Averin <vvs@virtuozzo.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Shakeel Butt <shakeelb@google.com>,
 Reinette Chatre <reinette.chatre@intel.com>,
 "linux-sgx@vger.kernel.org" <linux-sgx@vger.kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nathaniel McCallum <nathaniel@profian.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Alexey Gladkov <legion@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 06, 2022 at 08:30:14AM +0000, David Laight wrote:
> From: Jarkko Sakkinen
> > Sent: 06 March 2022 05:32
> > 
> > For device memory (aka VM_IO | VM_PFNMAP) MAP_POPULATE does nothing. Allow
> > to use that for initializing the device memory by providing a new callback
> > f_ops->populate() for the purpose.
> > 
> > SGX patches are provided to show the callback in context.
> > 
> > An obvious alternative is a ioctl but it is less elegant and requires
> > two syscalls (mmap + ioctl) per memory range, instead of just one
> > (mmap).
> 
> Is this all about trying to stop the vm_operations_struct.fault()
> function being called?

In SGX protected memory is actually encrypted normal memory and CPU access
control semantics (marked as reserved, e.g. struct page's).

In SGX you need call ENCLS[EAUG] outside the protected memory to add new
pages to the protected memory. Then when CPU is executing inside this
protected memory, also known as enclaves, it commits the memory as part of
the enclave either with ENCLU[EACCEPT] or ENCLU[EACCEPTCOPY].

So the point is not prevent page faults but to prepare the memory for
pending state so that the enclave can then accept them without round-trips,
and in some cases thus improve performance (in our case in enarx.dev
platform that we are developing).

In fact, #PF handler in SGX driver in the current SGX2 patch set also does
EAUG on-demand. Optimal is to have both routes available. And said, this
can be of course also implemented as ioctl.

BR, Jarkko
