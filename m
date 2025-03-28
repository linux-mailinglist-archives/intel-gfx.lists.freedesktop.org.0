Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FE4A74670
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 10:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2667C10E9B1;
	Fri, 28 Mar 2025 09:40:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="tx1Ky7NC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEA7C10E9B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 09:40:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 69466614BC;
 Fri, 28 Mar 2025 09:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 548DFC4CEE4;
 Fri, 28 Mar 2025 09:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1743154827;
 bh=yWCUomho9im7wS5H7ids0K8C+FLQzAtxZPDPwYYH+Hs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tx1Ky7NCc+ZSdXP5xoFe4J2esGkbTb+Om5i/pxV/bbp6j0R8EXLO2JRPuiG3jT+7M
 sDzA1jEOJdiRfEM6693IHDRX4NxnX7nz71oOyrrjkGNAtCi8Z53YSotNq+G3jlfdXs
 0br07AvQXoJxe2kKmUTk/RvDjQ/qs94gZ2s09H1eUIIguigPFY47/30elz5ECzq9D7
 TeDXbQLUp+gLLUsXWUxTzsEd0H+XhKJWbh3N4dBi+pykEHzp+8ZD2A5IxtYaRyzMXh
 935iM8uGkJXkc3IWDJnGxV4upjPxCvHzyyg/zERAJi2fV3a9i7BZE/amIJRxyJw3Vp
 bXi55qMiAv8iQ==
Date: Fri, 28 Mar 2025 10:40:23 +0100
From: Christian Brauner <brauner@kernel.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/11] Remove aops->writepage
Message-ID: <20250328-farbschichten-begossen-0190490de275@brauner>
References: <20250307135414.2987755-1-willy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250307135414.2987755-1-willy@infradead.org>
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

On Fri, Mar 07, 2025 at 01:54:00PM +0000, Matthew Wilcox wrote:
> I was preparing for LSFMM and noticed that actually we're almost done
> with the writepage conversion.  This patchset finishes it off.
> Something changed in my test environment and now it crashes before
> even starting a run, so this is only build tested.
> 
> The first five patches (f2fs and vboxsf) are uninteresting.  I'll try
> and get those into linux-next for the imminent merge window.  I think
> the migrate and writeback patches are good, but maybe I've missed
> something.  Then we come to i915 needing to tell shmem to do writeout,
> so I added a module-accessible function to do that.  I also removed
> the setting/clearing of reclaim, which would be easy to bring back if
> it's really needed.  Patch 10 is probably the exciting one where
> pageout() calls swap or shmem directly.  And then patch 11 really just
> removes the op itself and the documentation for it.  I may have
> over-trimmed here, but some of the documentation was so out of date it
> was hard to tell what was worth preserving.
> 
> Anyway, let's see what the bots make of this.  This is against
> next-20250307.

Once you're ready it would be nice if you could resend this based on
mainline (can be today) and then I'll pick it up.

Christian
