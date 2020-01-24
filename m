Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43DFB148CC3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 18:11:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93A1E72B3B;
	Fri, 24 Jan 2020 17:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7E8A72B40;
 Fri, 24 Jan 2020 17:10:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19998694-1500050 for multiple; Fri, 24 Jan 2020 17:10:54 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <83b0451b-3252-1efb-840d-ad5a51151534@intel.com>
References: <20200124164131.39591-1-matthew.auld@intel.com>
 <157988441300.2524.9356450040552570684@skylake-alporthouse-com>
 <83b0451b-3252-1efb-840d-ad5a51151534@intel.com>
Message-ID: <157988585282.2524.15483710315061878991@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 17:10:52 +0000
Subject: Re: [Intel-gfx] [PATCH] i915/tests/gem_exec_big: prefer PROT_WRITE
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-01-24 16:54:42)
> On 24/01/2020 16:46, Chris Wilson wrote:
> > Quoting Matthew Auld (2020-01-24 16:41:31)
> >> Technically mmap__cpu and mmap__wc just ignore the prot value, so it
> >> doesn't really matter, but the intention is to have write access to the
> >> ptr, so make that clear. Also if the underlying mmap__wc were to at some
> >> point use mmap_offset where the prot is not ignored then we won't have
> >> any surprises.
> > 
> > The ptr here was just meant for cheaply reading back from the buffer to
> > verify the relocation took place. E.g.,
> > 
> > -static void exec1(int fd, uint32_t handle, uint64_t reloc_ofs, unsigned flags, char *ptr)
> > +static void exec1(int fd, uint32_t handle, uint64_t reloc_ofs, unsigned flags, const char *ptr)
> >   {
> >          struct drm_i915_gem_execbuffer2 execbuf;
> >          struct drm_i915_gem_exec_object2 gem_exec[1];
> > @@ -126,7 +126,7 @@ static void xchg_reloc(void *array, unsigned i, unsigned j)
> >          *b = tmp;
> >   }
> > 
> > -static void execN(int fd, uint32_t handle, uint64_t batch_size, unsigned flags, char *ptr)
> > +static void execN(int fd, uint32_t handle, uint64_t batch_size, unsigned flags, const char *ptr)
> >   {
> > 
> > What am I missing?
> 
> *(uint64_t *)(ptr + gem_reloc[n].offset) = gem_reloc[n].presumed_offset;

They say your memory is the first to go.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
