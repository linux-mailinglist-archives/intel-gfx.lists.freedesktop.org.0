Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB4B172BC8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 23:54:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9B26ED77;
	Thu, 27 Feb 2020 22:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1132 seconds by postgrey-1.36 at gabe;
 Thu, 27 Feb 2020 22:54:43 UTC
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8105F6ED77
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 22:54:43 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1j7Rks-0025iX-U0; Thu, 27 Feb 2020 22:35:43 +0000
Date: Thu, 27 Feb 2020 22:35:42 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Message-ID: <20200227223542.GE23230@ZenIV.linux.org.uk>
References: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Minimize uaccess exposure in
 i915_gem_execbuffer2_ioctl()
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
Cc: Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 27, 2020 at 04:08:26PM -0600, Josh Poimboeuf wrote:
> With CONFIG_CC_OPTIMIZE_FOR_SIZE, objtool reports:
> 
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x5b7: call to gen8_canonical_addr() with UACCESS enabled
> 
> This means i915_gem_execbuffer2_ioctl() is calling gen8_canonical_addr()
> -- and indirectly, sign_extend64() -- from the user_access_begin/end
> critical region (i.e, with SMAP disabled).
> 
> While it's probably harmless in this case, in general we like to avoid
> extra function calls in SMAP-disabled regions because it can open up
> inadvertent security holes.
> 
> Fix it by moving the gen8_canonical_addr() conversion to a separate loop
> before user_access_begin() is called.
> 
> Note that gen8_canonical_addr() is now called *before* masking off the
> PIN_OFFSET_MASK bits.  That should be ok because it just does a sign
> extension and ignores the masked lower bits anyway.

How painful would it be to inline the damn thing?
<looks>
static inline u64 gen8_canonical_addr(u64 address)
{
        return sign_extend64(address, GEN8_HIGH_ADDRESS_BIT);
}
static inline __s64 sign_extend64(__u64 value, int index)
{
        __u8 shift = 63 - index;
        return (__s64)(value << shift) >> shift;
}

What the hell?  Josh, what kind of .config do you have that these are
_not_ inlined?  And why not mark gen8_canonical_addr() __always_inline?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
