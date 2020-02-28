Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38834174099
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 20:56:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3447F6E0ED;
	Fri, 28 Feb 2020 19:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [195.92.253.2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597D26E0ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 19:56:46 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1j7lkV-002ZFK-P1; Fri, 28 Feb 2020 19:56:39 +0000
Date: Fri, 28 Feb 2020 19:56:39 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Peter Zijlstra <peterz@infradead.org>
Message-ID: <20200228195639.GL23230@ZenIV.linux.org.uk>
References: <ed52cfb852d2772bf20f48614d75f1d1b1451995.1582841072.git.jpoimboe@redhat.com>
 <20200227223542.GE23230@ZenIV.linux.org.uk>
 <20200228010342.3j3awgvvgvitif7z@treble>
 <20200228180441.GL18400@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228180441.GL18400@hirez.programming.kicks-ass.net>
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
Cc: intel-gfx@lists.freedesktop.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 28, 2020 at 07:04:41PM +0100, Peter Zijlstra wrote:
> On Thu, Feb 27, 2020 at 07:03:42PM -0600, Josh Poimboeuf wrote:
> > > And why not mark gen8_canonical_addr() __always_inline?
> > 
> > Right, marking those two functions as __always_inline is the other
> > option.  The problem is, if you keep doing it, eventually you end up
> > with __always_inline-itis spreading all over the place.  And it affects
> > all the other callers, at least in the CONFIG_CC_OPTIMIZE_FOR_SIZE case.
> > At least this fix is localized.
> 
> I'm all for __always_inline in this case, the compiler not inlining sign
> extention is just retarded,

FWIW, in this case it's
        salq    $8, %rax
        sarq    $8, %rax
i.e. 8 bytes.  Sure, that's 3 bytes longer than call, but really, WTF?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
