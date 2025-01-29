Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5CEA2170E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 05:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A970E10E2A9;
	Wed, 29 Jan 2025 04:37:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=linux.org.uk header.i=@linux.org.uk header.b="MlUf2rJ3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2816F10E220;
 Wed, 29 Jan 2025 04:37:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JeX1tJAMrqtvR3jMf2b/sXaEH55G0StnWi48rc5YjKQ=; b=MlUf2rJ3uR4N5+mmtmJhhLS3DQ
 RG+fqLhuTpSM0fsEz2aO/Ta9PawFZxxAsxThE+6kLou0Ug3Ha2fLYHZnua8PcLrlYhbxo6TVmtSOI
 bzwXsJKwCUZybuP/cqZ2rGBsh+MPTdI5cz+n1qIhuvi31K0s/fJjDyfcYojq/XHEwaXXsNI52U+Cz
 cwPFlvMwCxMj/dar3EreUPVWeDm7jlVusk0PFj5BZEdEKi9/lrlEFj/jYNQBYt8GWGujfNrzfVBsx
 0vCuQaP//LyvHJNcLBp60DOSubMBo3m7eyOpiqiD/MeOx9g6lQYM5PiVigRhhCpbv9uioucLaVcDL
 B7d75YGA==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tczpA-0000000EzFI-0DpE; Wed, 29 Jan 2025 04:37:12 +0000
Date: Wed, 29 Jan 2025 04:37:12 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>
Subject: Re: Regression on linux-next (next-20250120)
Message-ID: <20250129043712.GQ1977892@ZenIV>
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250123181853.GC1977892@ZenIV>
 <Z5Zazwd0nto-v-RS@tuxmaker.boeblingen.de.ibm.com>
 <20250127050416.GE1977892@ZenIV>
 <SJ1PR11MB6129954089EA5288ED6D963EB9EF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB6129954089EA5288ED6D963EB9EF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Tue, Jan 28, 2025 at 04:00:58PM +0000, Borah, Chaitanya Kumar wrote:

> Unfortunately this change does not help us. I think it is the methods member that causes the problem. So the following change solves the problem for us.
> 
> 
> --- a/fs/debugfs/file.c
> +++ b/fs/debugfs/file.c
> @@ -102,6 +102,8 @@ static int __debugfs_file_get(struct dentry *dentry, enum dbgfs_get_mode mode)
>                 if (!fsd)
>                         return -ENOMEM;
> 
> +               fsd->methods = 0;
> +
>                 if (mode == DBGFS_GET_SHORT) {
>                         const struct debugfs_short_fops *ops;
>                         ops = fsd->short_fops = DEBUGFS_I(inode)->short_fops;

D'OH.

Both are needed, actually.  Slightly longer term I would rather
split full_proxy_{read,write,lseek}() into short and full variant,
getting rid of the "check which pointer is non-NULL" and killed
the two remaining users of debugfs_real_fops() outside of
fs/debugfs/file.c; then we could union these ->..._fops pointers,
but until then they need to be initialized.

And yes, ->methods obviously needs to be initialized.

Al, bloody embarrassed ;-/
