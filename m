Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C52AF148C92
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 17:56:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54E8872B33;
	Fri, 24 Jan 2020 16:56:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E9472B30;
 Fri, 24 Jan 2020 16:56:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 08:54:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="228361749"
Received: from kyunghyu-mobl1.amr.corp.intel.com (HELO [10.251.144.148])
 ([10.251.144.148])
 by orsmga003.jf.intel.com with ESMTP; 24 Jan 2020 08:54:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20200124164131.39591-1-matthew.auld@intel.com>
 <157988441300.2524.9356450040552570684@skylake-alporthouse-com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <83b0451b-3252-1efb-840d-ad5a51151534@intel.com>
Date: Fri, 24 Jan 2020 16:54:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <157988441300.2524.9356450040552570684@skylake-alporthouse-com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/01/2020 16:46, Chris Wilson wrote:
> Quoting Matthew Auld (2020-01-24 16:41:31)
>> Technically mmap__cpu and mmap__wc just ignore the prot value, so it
>> doesn't really matter, but the intention is to have write access to the
>> ptr, so make that clear. Also if the underlying mmap__wc were to at some
>> point use mmap_offset where the prot is not ignored then we won't have
>> any surprises.
> 
> The ptr here was just meant for cheaply reading back from the buffer to
> verify the relocation took place. E.g.,
> 
> -static void exec1(int fd, uint32_t handle, uint64_t reloc_ofs, unsigned flags, char *ptr)
> +static void exec1(int fd, uint32_t handle, uint64_t reloc_ofs, unsigned flags, const char *ptr)
>   {
>          struct drm_i915_gem_execbuffer2 execbuf;
>          struct drm_i915_gem_exec_object2 gem_exec[1];
> @@ -126,7 +126,7 @@ static void xchg_reloc(void *array, unsigned i, unsigned j)
>          *b = tmp;
>   }
> 
> -static void execN(int fd, uint32_t handle, uint64_t batch_size, unsigned flags, char *ptr)
> +static void execN(int fd, uint32_t handle, uint64_t batch_size, unsigned flags, const char *ptr)
>   {
> 
> What am I missing?

*(uint64_t *)(ptr + gem_reloc[n].offset) = gem_reloc[n].presumed_offset;

?

> -Chris
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
