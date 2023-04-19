Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BDF6E7FA2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 18:30:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C9C10E1C1;
	Wed, 19 Apr 2023 16:30:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EBD210E1C1;
 Wed, 19 Apr 2023 16:30:15 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0FE71636DE;
 Wed, 19 Apr 2023 16:30:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6E17C433D2;
 Wed, 19 Apr 2023 16:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1681921813;
 bh=sEVV20b4y3jjUWYRjOhrLBZndBzScBmsUh19a92XqvE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kNe0hDpw2kgnpTFFR+an8adqixCrkW2cC6NzKuw7QVwxocDg7vqF1il0W8zOys5Mx
 alsaFzl/kbHkdndzf1bZmylt9hdOf0kS//TIcBvfCov8A12A2P/jixVl64NScUcMPv
 KMp019u/g7G7Nu/aO4WLyS2lSGL3B7iJh+wuRyZDj5RfftHb3IPWT8GLoH7URd32u3
 op2+PxU8obmRQLrlXx+41VCFvcoOc+4OLsXMaGiMEhvnQLOR8h2BkxH9vWgSySwCWG
 g32Z40bb+UWj3xiCTYuFORxMMBPks6+1D67p/9ioMev9LnhAJmG3D/dP412NlUob4d
 Q067AVhfXm7hQ==
Date: Wed, 19 Apr 2023 09:30:11 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Daniel Vetter <daniel@ffwll.ch>
Message-ID: <20230419163011.GA1865368@dev-arch.thelio-3990X>
References: <20230414125913.851920-1-broonie@kernel.org>
 <ZDuqut+8BKjMXblJ@phenom.ffwll.local>
 <8c90b4db-3075-4275-bea8-01f501b00885@sirena.org.uk>
 <ZEAVxeIEOny81EGY@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZEAVxeIEOny81EGY@phenom.ffwll.local>
Subject: Re: [Intel-gfx] linux-next: manual merge of the drm-misc tree with
 the mm-stable tree
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI <dri-devel@lists.freedesktop.org>, Mark Brown <broonie@kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Airlie <airlied@gmail.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 19, 2023 at 06:24:37PM +0200, Daniel Vetter wrote:
> On Tue, Apr 18, 2023 at 07:34:44PM +0100, Mark Brown wrote:
> > On Sun, Apr 16, 2023 at 09:58:50AM +0200, Daniel Vetter wrote:
> > 
> > > Note there was a ppc compile fail, which is why we pushed the ttm revert.
> > > That /should/ be fixed now, but would be good if you can confirm?
> > 
> > According to Nathan (CCed) there's still issues with the interaction
> > with the PowerPC tree.
> 
> So this revert was supposed to fix this: 56e51681246e ("drm/ttm: revert
> "Reduce the number of used allocation orders for TTM pages"")
> 
> If there's anything left then I need to chase that asap since the merge
> window will open soon.

I think we are talking about two different issues here. My issue is not
a compilation failure, it is an incorrect merge resolution that is
happening in -next because of two independent changes in the drm and
powerpc tree, the thread below should have more information.

https://lore.kernel.org/20230413184725.GA3183133@dev-arch.thelio-3990X/

I do not think this is something that either tree can solve
independently of each other, -next has to resolve the conflict correctly
(which is what I point out in the message above) and a note of it should
be passed along to Linus so it can be resolved correctly in mainline
when the time comes.

Cheers,
Nathan
