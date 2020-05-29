Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1131B1E80C0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 16:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7FF36E91F;
	Fri, 29 May 2020 14:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1765 seconds by postgrey-1.36 at gabe;
 Fri, 29 May 2020 14:47:31 UTC
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk [IPv6:2002:c35c:fd02::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E006E91F
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 14:47:31 +0000 (UTC)
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.93 #3 (Red Hat
 Linux)) id 1jefpb-00Ha3Z-6v; Fri, 29 May 2020 14:17:55 +0000
Date: Fri, 29 May 2020 15:17:55 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200529141755.GD23230@ZenIV.linux.org.uk>
References: <20200528234025.GT23230@ZenIV.linux.org.uk>
 <20200529004050.GY23230@ZenIV.linux.org.uk>
 <87ftbj1gah.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ftbj1gah.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCHES] uaccess i915
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
Cc: linux-fsdevel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 29, 2020 at 08:06:14AM +0300, Jani Nikula wrote:
> On Fri, 29 May 2020, Al Viro <viro@zeniv.linux.org.uk> wrote:
> > 	Low-hanging fruit in i915 uaccess-related stuff.
> > There's some subtler stuff remaining after that; these
> > are the simple ones.
> 
> Please Cc: intel-gfx@lists.freedesktop.org for i915 changes.

Will do.  Do you want me to resend those (or post them there separately, or...)?

> Also added Chris who I believe will be able to best review the changes.

FWIW, the branch is in

git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git #uaccess.i915
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
