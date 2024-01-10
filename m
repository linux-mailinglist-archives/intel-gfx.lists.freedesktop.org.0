Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BABCC829E9A
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 17:27:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D69E10E615;
	Wed, 10 Jan 2024 16:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1934310E60B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 16:27:48 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9659068CFE; Wed, 10 Jan 2024 17:18:29 +0100 (CET)
Date: Wed, 10 Jan 2024 17:18:29 +0100
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: disable large folios for shmem file used by xfs xfile
Message-ID: <20240110161829.GA1105@lst.de>
References: <20240110092109.1950011-1-hch@lst.de>
 <ZZ6Pfk8tLXbvs4dE@casper.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZZ6Pfk8tLXbvs4dE@casper.infradead.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
Cc: "Darrick J . Wong" <djwong@kernel.org>, dri-devel@lists.freedesktop.org,
 David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 Huang Rui <ray.huang@amd.com>, David Airlie <airlied@gmail.com>,
 Christoph Hellwig <hch@lst.de>, x86@kernel.org,
 Hugh Dickins <hughd@google.com>, Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-sgx@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 keyrings@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Chandan Babu R <chandan.babu@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 10, 2024 at 12:37:18PM +0000, Matthew Wilcox wrote:
> On Wed, Jan 10, 2024 at 10:21:07AM +0100, Christoph Hellwig wrote:
> > Hi all,
> > 
> > Darrick reported that the fairly new XFS xfile code blows up when force
> > enabling large folio for shmem.  This series fixes this quickly by disabling
> > large folios for this particular shmem file for now until it can be fixed
> > properly, which will be a lot more invasive.
> > 
> > I've added most of you to the CC list as I suspect most other users of
> > shmem_file_setup and friends will have similar issues.
> 
> The graphics users _want_ to use large folios.  I'm pretty sure they've
> been tested with this.  It's just XFS that didn't know about this
> feature of shmem.

At least sgx has all kinds of PAGE_SIZE assumptions.  I haven't audited
(and am probably not qualified to) audit that code, so I wanted to send
a headsup to everyone.
