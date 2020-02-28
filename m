Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAA5172EE0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 03:42:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF5E6E99E;
	Fri, 28 Feb 2020 02:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E84B16E99E
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 02:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=SVhRGz+3DcDzU1Ha2pvts5FzZy/+QHF1f/pR5Dd8W6Y=; b=Vb8DhHmuasRPL6xCh0EdgruJoj
 X1N+IjaB+8sXL8W5x9dSEFL93d76zfrZJqQCZ1UEdlxo9dWc0/DDLEe8Y07eQiWUG9iaqURsmgC6M
 zjUgmoqniXoTLc11IAULjTXdS5QapV4qKdlI4ey+phs3zLLu+e36G49+pYT99qDKGKJXB6Lcg6OV6
 dZdPZCysI7RyLwzsSehAlB5drPVciWwEmurONouiOzgfMx6wc4FTgwG/H0iXqqofnWU1Tg3Ylbato
 euVM1xICRkV0WHk0HJZpgNiWmLcW1yLm43r8+Jb8k9X5B4Ll9fX99PtWYiCpMiCOQHOngTFDI2Lxm
 rnzfmFGw==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7VbH-0000TZ-Gl; Fri, 28 Feb 2020 02:42:03 +0000
To: Josh Poimboeuf <jpoimboe@redhat.com>, Al Viro <viro@zeniv.linux.org.uk>
References: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
 <20200227223542.GE23230@ZenIV.linux.org.uk>
 <20200228010342.3j3awgvvgvitif7z@treble>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <ea7b1ae2-560d-e9ff-32bf-5068de05f954@infradead.org>
Date: Thu, 27 Feb 2020 18:42:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200228010342.3j3awgvvgvitif7z@treble>
Content-Language: en-US
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/27/20 5:03 PM, Josh Poimboeuf wrote:
> On Thu, Feb 27, 2020 at 10:35:42PM +0000, Al Viro wrote:
>> On Thu, Feb 27, 2020 at 04:08:26PM -0600, Josh Poimboeuf wrote:
>>> With CONFIG_CC_OPTIMIZE_FOR_SIZE, objtool reports:
>>>
>>>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: i915_gem_execbuffer2_ioctl()+0x5b7: call to gen8_canonical_addr() with UACCESS enabled
>>>
>>> This means i915_gem_execbuffer2_ioctl() is calling gen8_canonical_addr()
>>> -- and indirectly, sign_extend64() -- from the user_access_begin/end
>>> critical region (i.e, with SMAP disabled).
>>>
>>> While it's probably harmless in this case, in general we like to avoid
>>> extra function calls in SMAP-disabled regions because it can open up
>>> inadvertent security holes.
>>>
>>> Fix it by moving the gen8_canonical_addr() conversion to a separate loop
>>> before user_access_begin() is called.
>>>
>>> Note that gen8_canonical_addr() is now called *before* masking off the
>>> PIN_OFFSET_MASK bits.  That should be ok because it just does a sign
>>> extension and ignores the masked lower bits anyway.
>>
>> How painful would it be to inline the damn thing?
>> <looks>
>> static inline u64 gen8_canonical_addr(u64 address)
>> {
>>         return sign_extend64(address, GEN8_HIGH_ADDRESS_BIT);
>> }
>> static inline __s64 sign_extend64(__u64 value, int index)
>> {
>>         __u8 shift = 63 - index;
>>         return (__s64)(value << shift) >> shift;
>> }
>>
>> What the hell?  Josh, what kind of .config do you have that these are
>> _not_ inlined?
> 
> I think this was seen with CONFIG_CC_OPTIMIZE_FOR_SIZE, which tends to

so the commit message correctly says.

> ignore inline.
> 
>> And why not mark gen8_canonical_addr() __always_inline?
> 
> Right, marking those two functions as __always_inline is the other
> option.  The problem is, if you keep doing it, eventually you end up
> with __always_inline-itis spreading all over the place.  And it affects
> all the other callers, at least in the CONFIG_CC_OPTIMIZE_FOR_SIZE case.
> At least this fix is localized.
> 
> But I agree my patch isn't ideal either.

fwiw,
Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested


thanks.
-- 
~Randy

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
