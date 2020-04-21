Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B6C1B2287
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 11:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28EC6E44C;
	Tue, 21 Apr 2020 09:20:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 367 seconds by postgrey-1.36 at gabe;
 Tue, 21 Apr 2020 09:19:59 UTC
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk
 [IPv6:2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0346E44C
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 09:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YO6F5ObedfU/G1cBVZlRZ9Tclj+oI0shB5VAVt4/Ej0=; b=P1A59HSHX8OqJP5aEdGeiV/B2
 v103CRxWtRZHmqa7NbuMTVDo44ZOmpRq6I05Ol6Qfmk/yPKSw46jyurTZX1KULRynoTJ7DDXfMahT
 ugzkH5msRllUA5/+9l7CtYY3E1Bi+tcQNSXhvvAU9cp1ya9Fqw8E+bJW/lc+8jbvfEnzcR+jDk9Tr
 h6eRjjHdbTlY7Ru4qvHMbf/Jx82P+r29op4ZbmdIDi1H9XLtzQlS7iweG7kPStFXjUaZfYafW9oJk
 q+JXPHTb/cQGKUlhwKX0wRzQ7Xz2naV1pjv9KhcBx58LwqJxxdeUBMFKJGiF5abHjK110/9F+T1s2
 uasQ9fr8g==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:41518)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jQoxi-0000Ux-OB; Tue, 21 Apr 2020 10:13:03 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jQoxc-0006uR-F0; Tue, 21 Apr 2020 10:12:56 +0100
Date: Tue, 21 Apr 2020 10:12:56 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Al Viro <viro@zeniv.linux.org.uk>, Will Deacon <will@kernel.org>
Message-ID: <20200421091256.GA25745@shell.armlinux.org.uk>
References: <36e43241c7f043a24b5069e78c6a7edd11043be5.1585898438.git.christophe.leroy@c-s.fr>
 <42da416106d5c1cf92bda1e058434fe240b35f44.1585898438.git.christophe.leroy@c-s.fr>
 <CAHk-=wh_DY_dysMX0NuvJmMFr3+QDKOZPZqWKwLkkjgZTuyQ+A@mail.gmail.com>
 <20200403205205.GK23230@ZenIV.linux.org.uk>
 <20200421024919.GA23230@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421024919.GA23230@ZenIV.linux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 5/5] uaccess: Rename
 user_access_begin/end() to user_full_access_begin/end()
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 linux-arch <linux-arch@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Kees Cook <keescook@chromium.org>, Dave Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 intel-gfx@lists.freedesktop.org, Peter Anvin <hpa@zytor.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 21, 2020 at 03:49:19AM +0100, Al Viro wrote:
> 	The only source I'd been able to find speeks of >= 60 cycles
> (and possibly much more) for non-pipelined coprocessor instructions;
> the list of such does contain loads and stores to a bunch of registers.
> However, the register in question (p15/c3) has only store mentioned there,
> so loads might be cheap; no obvious reasons for those to be slow.
> That's a question to arm folks, I'm afraid...  rmk?

I have no information on that; instruction timings are not defined
at architecture level (architecture reference manual), nor do I find
information in the CPU technical reference manual (which would be
specific to the CPU). Instruction timings tend to be implementation
dependent.

I've always consulted Will Deacon when I've needed to know whether
an instruction is expensive or not.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
