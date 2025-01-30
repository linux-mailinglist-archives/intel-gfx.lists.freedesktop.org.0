Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDD3A229A9
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 09:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9B110E28F;
	Thu, 30 Jan 2025 08:37:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="R5GKG3cS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F3D810E28F;
 Thu, 30 Jan 2025 08:37:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 924D55C5E09;
 Thu, 30 Jan 2025 08:36:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEBEBC4CED3;
 Thu, 30 Jan 2025 08:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1738226220;
 bh=SkT743wa/olFo78wLQvP9MMQ9915yalZCxfpq9WEduE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R5GKG3cSAdtF2he/RoyxVZjgEGSKd0fIkGDekgyoz2kCYeDpJLW8W2kUj+IQQQF2s
 y19oxuR7+5DIj6vPlenP6ENXYgUpYnk8T+peoAa8/IkSZkAK+1JNF65Vl3SSDtcdcI
 m3r4Gkq2Y8RM72wRbeWTU9elUfqynkv+IFaGnCH4=
Date: Thu, 30 Jan 2025 09:36:57 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: Al Viro <viro@zeniv.linux.org.uk>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>
Subject: Re: Regression on linux-next (next-20250120)
Message-ID: <2025013052-refueling-ripping-2f6e@gregkh>
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250123181853.GC1977892@ZenIV>
 <Z5Zazwd0nto-v-RS@tuxmaker.boeblingen.de.ibm.com>
 <20250127050416.GE1977892@ZenIV>
 <SJ1PR11MB6129954089EA5288ED6D963EB9EF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250129043712.GQ1977892@ZenIV>
 <2025012939-mashing-carport-53bd@gregkh>
 <20250129191937.GR1977892@ZenIV>
 <2025013055-vowed-enjoyment-ce02@gregkh>
 <SJ1PR11MB61297857686D10DD3F65645AB9E92@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB61297857686D10DD3F65645AB9E92@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Thu, Jan 30, 2025 at 08:08:30AM +0000, Borah, Chaitanya Kumar wrote:
> 
> 
> > -----Original Message-----
> > From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Sent: Thursday, January 30, 2025 12:55 PM
> > To: Al Viro <viro@zeniv.linux.org.uk>
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org; Kurmi, Suresh
> > Kumar <suresh.kumar.kurmi@intel.com>; Saarinen, Jani
> > <jani.saarinen@intel.com>; linux-fsdevel@vger.kernel.org; Alexander Gordeev
> > <agordeev@linux.ibm.com>
> > Subject: Re: Regression on linux-next (next-20250120)
> > 
> > On Wed, Jan 29, 2025 at 07:19:37PM +0000, Al Viro wrote:
> > > On Wed, Jan 29, 2025 at 08:13:02AM +0100, Greg Kroah-Hartman wrote:
> > >
> > > > > Both are needed, actually.  Slightly longer term I would rather
> > > > > split full_proxy_{read,write,lseek}() into short and full variant,
> > > > > getting rid of the "check which pointer is non-NULL" and killed
> > > > > the two remaining users of debugfs_real_fops() outside of
> > > > > fs/debugfs/file.c; then we could union these ->..._fops pointers,
> > > > > but until then they need to be initialized.
> > > > >
> > > > > And yes, ->methods obviously needs to be initialized.
> > > > >
> > > > > Al, bloody embarrassed ;-/
> > > >
> > > > No worries, want to send a patch to fix both of these up so we can
> > > > fix up Linus's tree now?
> > >
> > > [PATCH] Fix the missing initializations in __debugfs_file_get()
> > >
> > > both method table pointers in debugfs_fsdata need to be initialized,
> > > obviously, and calculating the bitmap of present methods would also go
> > > better if we start with initialized state.
> > >
> > > Fixes: 41a0ecc0997c "debugfs: get rid of dynamically allocation proxy_ops"
> > > Fucked-up-by: Al Viro <viro@zeniv.linux.org.uk>
> > > Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
> > > ---
> > 
> > Thanks, now queued up.
> 
> We can confirm that this change works.

Wonderful, thanks!
