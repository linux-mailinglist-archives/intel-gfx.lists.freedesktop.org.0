Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D4182B6E9
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 23:01:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6693C10E9A3;
	Thu, 11 Jan 2024 22:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3839710E0C2;
 Thu, 11 Jan 2024 22:00:57 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 2314BB82167;
 Thu, 11 Jan 2024 22:00:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95314C433C7;
 Thu, 11 Jan 2024 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1705010454;
 bh=vlcXcSpUY2+iSpuukyjIiihCIi15p9GWtN159qEPSmg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qIvPiOKiywb3qKHwOw4AhxARGX3rVExMAkYo9hv3BHT3igPRSW4BaNs/lMgeuCScm
 OMsg/kzkPq/hxRZ/bZeoPwvh42KWA/I7luc0doLezbSsgxia0Ctm69ZJlaEzbOp9kf
 lV/bWz9fIPnphKtgLncv+J9AiA29wA4qUYIWfEOk=
Date: Thu, 11 Jan 2024 14:00:53 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: "Darrick J. Wong" <djwong@kernel.org>
Subject: Re: [PATCH 2/2] xfs: disable large folio support in xfile_create
Message-Id: <20240111140053.51948fb3ed10e06d8e389d2e@linux-foundation.org>
In-Reply-To: <20240110200451.GB722950@frogsfrogsfrogs>
References: <20240110092109.1950011-1-hch@lst.de>
 <20240110092109.1950011-3-hch@lst.de>
 <20240110175515.GA722950@frogsfrogsfrogs>
 <20240110200451.GB722950@frogsfrogsfrogs>
X-Mailer: Sylpheed 3.8.0beta1 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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
Cc: dri-devel@lists.freedesktop.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, Huang Rui <ray.huang@amd.com>,
 David Airlie <airlied@gmail.com>, Christoph Hellwig <hch@lst.de>,
 x86@kernel.org, Hugh Dickins <hughd@google.com>,
 Matthew Wilcox <willy@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-sgx@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 keyrings@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-fsdevel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Chandan Babu R <chandan.babu@oracle.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 10 Jan 2024 12:04:51 -0800 "Darrick J. Wong" <djwong@kernel.org> wrote:

> > > Fixing this will require a bit of an API change, and prefeably sorting out
> > > the hwpoison story for pages vs folio and where it is placed in the shmem
> > > API.  For now use this one liner to disable large folios.
> > > 
> > > Reported-by: Darrick J. Wong <djwong@kernel.org>
> > > Signed-off-by: Christoph Hellwig <hch@lst.de>
> > 
> > Can someone who knows more about shmem.c than I do please review
> > https://lore.kernel.org/linux-xfs/20240103084126.513354-4-hch@lst.de/
> > so that I can feel slightly more confident as hch and I sort through the
> > xfile.c issues?
> > 
> > For this patch,
> > Reviewed-by: Darrick J. Wong <djwong@kernel.org>
> 
> ...except that I'm still getting 2M THPs even with this enabled, so I
> guess either we get to fix it now, or create our own private tmpfs mount
> so that we can pass in huge=never, similar to what i915 does. :(

What is "this"?  Are you saying that $Subject doesn't work, or that the
above-linked please-review patch doesn't work?
