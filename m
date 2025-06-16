Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C12ADCD76
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 15:36:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CDFA10E6C9;
	Tue, 17 Jun 2025 13:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 364 seconds by postgrey-1.36 at gabe;
 Mon, 16 Jun 2025 20:02:34 UTC
Received: from out-189.mta0.migadu.com (out-189.mta0.migadu.com
 [91.218.175.189])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E14010E357
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jun 2025 20:02:34 +0000 (UTC)
Date: Mon, 16 Jun 2025 15:56:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1750103779;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RY6jvlftqYj16RlZ8cMi5ktPdnRQwqLwReUIv9YTb9Y=;
 b=hfTMIphzIV1UP9YZShGN/2c5XF+1HSCXXUsJYRJXY1L6Aclc1GU2E07+0kGNeThs5vuF28
 AC/+C5qGR5vwjAZWxQnLX9XOq2VPangJK+zHBHTevwRsO8AM7teSfcER/FwsKkzBj8c3T1
 2J2uYc2bohx4O0D5BW29EVxqbVb4hNk=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Kent Overstreet <kent.overstreet@linux.dev>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-block@vger.kernel.org, 
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, 
 v9fs@lists.linux.dev, linux-fsdevel@vger.kernel.org,
 linux-afs@lists.infradead.org, 
 linux-aio@kvack.org, linux-unionfs@vger.kernel.org,
 linux-bcachefs@vger.kernel.org, 
 linux-mm@kvack.org, linux-btrfs@vger.kernel.org, ceph-devel@vger.kernel.org, 
 codalist@coda.cs.cmu.edu, ecryptfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, 
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net, 
 linux-um@lists.infradead.org, linux-mtd@lists.infradead.org, 
 jfs-discussion@lists.sourceforge.net, linux-nfs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, 
 ntfs3@lists.linux.dev, ocfs2-devel@lists.linux.dev, 
 linux-karma-devel@lists.sourceforge.net, devel@lists.orangefs.org,
 linux-cifs@vger.kernel.org, 
 samba-technical@lists.samba.org, linux-xfs@vger.kernel.org,
 nvdimm@lists.linux.dev
Subject: Re: [PATCH 00/10] convert the majority of file systems to mmap_prepare
Message-ID: <tz4x7atqjhxr3rixvgklfss4r5u5jod5qoeqr6iueois3ywdap@losa5evtlekp>
References: <cover.1750099179.git.lorenzo.stoakes@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1750099179.git.lorenzo.stoakes@oracle.com>
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 17 Jun 2025 13:35:58 +0000
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

Mailserver is rejecting with "too many recipients" - aieeee

On Mon, Jun 16, 2025 at 08:33:19PM +0100, Lorenzo Stoakes wrote:
> REVIEWER'S NOTES
> ================
> 
> I am basing this on the mm-new branch in Andrew's tree, so let me know if I
> should rebase anything here. Given the mm bits touched I did think perhaps
> we should take it through the mm tree, however it may be more sensible to
> take it through an fs tree - let me know!
> 
> Apologies for the noise/churn, but there are some prerequisite steps here
> that inform an ordering - "fs: consistently use file_has_valid_mmap_hooks()
> helper" being especially critical, and so I put the bulk of the work in the
> same series.
> 
> Let me know if there's anything I can do to make life easier here.

This seems to be more of an mm thing than a filesystem thing? I don't
see any code changes on the filesystem side from a quick scan, just
renaming?

Are there any behavioural changes for the filesystem to be aware of?

How's it been tested, any considerations there?

If this is as simple as it looks, ack from me (and if it is that simply,
why so many recipients?).

If there are _any_ behavioural changes on the mm side that might
interact with the filesystem in funny ways, please make sure the whole
fstests suite has been run.
