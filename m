Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47144829E99
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 17:27:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 911EE10E60B;
	Wed, 10 Jan 2024 16:27:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 553 seconds by postgrey-1.36 at gabe;
 Wed, 10 Jan 2024 16:27:47 UTC
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51F510E60B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 16:27:47 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A18A568D07; Wed, 10 Jan 2024 17:19:07 +0100 (CET)
Date: Wed, 10 Jan 2024 17:19:07 +0100
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: disable large folios for shmem file used by xfs xfile
Message-ID: <20240110161907.GA1388@lst.de>
References: <20240110092109.1950011-1-hch@lst.de>
 <20240110073843.d663fa6610785a8611b2cebe@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240110073843.d663fa6610785a8611b2cebe@linux-foundation.org>
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
 Hugh Dickins <hughd@google.com>, Matthew Wilcox <willy@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-sgx@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 keyrings@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-fsdevel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Chandan Babu R <chandan.babu@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 10, 2024 at 07:38:43AM -0800, Andrew Morton wrote:
> I assume that kernels which contain 137db333b29186 ("xfs: teach xfile
> to pass back direct-map pages to caller") want this, so a Fixes: that
> and a cc:stable are appropriate?

I think it needs to back all the way back to 3934e8ebb7c
("xfs: create a big array data structure") as that only clears the page
sized chunk of a new allocation and could lead to corruption / or
information leaks.
