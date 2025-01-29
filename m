Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FEAA217EB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 08:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9726C10E746;
	Wed, 29 Jan 2025 07:14:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="a0kRWCyR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E28F10E746;
 Wed, 29 Jan 2025 07:14:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 06C45A4023D;
 Wed, 29 Jan 2025 07:12:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6CECC4CED3;
 Wed, 29 Jan 2025 07:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1738134841;
 bh=pQKfIqTs67XaBgVdfvmEec+ala9DLbPpDu/m06RopH4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a0kRWCyRjNnyhbam25NeMZt6ZfQ8gq+dh32Ck64LVaM5cvPOp9+TVA0/ILaGRcDTW
 KqVzg5l7G2x1LE2n2MWMdf/y7EJ1ohqk0SM00NiGOQQ/wz0cJ8PqZpfg3Wlom0eTNP
 zDSDJIUPcIqsmqH2CK0EiGmVqY8STz3ko0JtpGTQ=
Date: Wed, 29 Jan 2025 08:13:02 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Al Viro <viro@zeniv.linux.org.uk>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>
Subject: Re: Regression on linux-next (next-20250120)
Message-ID: <2025012939-mashing-carport-53bd@gregkh>
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250123181853.GC1977892@ZenIV>
 <Z5Zazwd0nto-v-RS@tuxmaker.boeblingen.de.ibm.com>
 <20250127050416.GE1977892@ZenIV>
 <SJ1PR11MB6129954089EA5288ED6D963EB9EF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250129043712.GQ1977892@ZenIV>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250129043712.GQ1977892@ZenIV>
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

On Wed, Jan 29, 2025 at 04:37:12AM +0000, Al Viro wrote:
> On Tue, Jan 28, 2025 at 04:00:58PM +0000, Borah, Chaitanya Kumar wrote:
> 
> > Unfortunately this change does not help us. I think it is the methods member that causes the problem. So the following change solves the problem for us.
> > 
> > 
> > --- a/fs/debugfs/file.c
> > +++ b/fs/debugfs/file.c
> > @@ -102,6 +102,8 @@ static int __debugfs_file_get(struct dentry *dentry, enum dbgfs_get_mode mode)
> >                 if (!fsd)
> >                         return -ENOMEM;
> > 
> > +               fsd->methods = 0;
> > +
> >                 if (mode == DBGFS_GET_SHORT) {
> >                         const struct debugfs_short_fops *ops;
> >                         ops = fsd->short_fops = DEBUGFS_I(inode)->short_fops;
> 
> D'OH.
> 
> Both are needed, actually.  Slightly longer term I would rather
> split full_proxy_{read,write,lseek}() into short and full variant,
> getting rid of the "check which pointer is non-NULL" and killed
> the two remaining users of debugfs_real_fops() outside of
> fs/debugfs/file.c; then we could union these ->..._fops pointers,
> but until then they need to be initialized.
> 
> And yes, ->methods obviously needs to be initialized.
> 
> Al, bloody embarrassed ;-/

No worries, want to send a patch to fix both of these up so we can fix
up Linus's tree now?

thanks,

greg k-h
