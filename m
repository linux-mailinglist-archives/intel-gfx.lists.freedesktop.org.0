Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 856DA6BE9BF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 13:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECEA210E37A;
	Fri, 17 Mar 2023 12:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F9CC10E382
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 12:58:46 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 9A363B825A7;
 Fri, 17 Mar 2023 12:58:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11D41C433D2;
 Fri, 17 Mar 2023 12:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1679057923;
 bh=9fkR36fLv6f0kVwvUKUx5iu1I+qJ6ceMvK9paF9H+HA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MMC+dsP+Ufrlzba2r6GPhpDUUvBUZJwiOoDBkiWRIz9zruB3T75aa80eiE/9zdnhE
 o1DX2PN3Fmuzuvpdpwidum8UCg7QiWhnc/uQO7Pm8nX7eebK+L/WE6I4helDViZqaa
 7VICf04DHalKaD30xdt/MigO+/+ULwbaY2+YINoQ=
Date: Fri, 17 Mar 2023 13:58:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZBRkAZwItdidH32z@kroah.com>
References: <167820543971229@kroah.com>
 <20230314022211.1393031-1-John.C.Harrison@Intel.com>
 <ZBF48kVhFmXIsR+K@kroah.com>
 <a5cf5572-4160-3efb-4f80-aaf53aa06efe@intel.com>
 <ZBIHJD5FkxiammjB@kroah.com>
 <5ed286b7-c2df-9e63-d85a-be9994f93eec@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5ed286b7-c2df-9e63-d85a-be9994f93eec@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5.4.y] drm/i915: Don't use BAR mappings for
 ring buffers with LLC
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 16, 2023 at 01:58:35PM -0700, John Harrison wrote:
> On 3/15/2023 10:57, Greg KH wrote:
> > On Wed, Mar 15, 2023 at 10:07:53AM -0700, John Harrison wrote:
> > > On 3/15/2023 00:51, Greg KH wrote:
> > > > On Mon, Mar 13, 2023 at 07:22:11PM -0700, John.C.Harrison@Intel.com wrote:
> > > > > From: John Harrison <John.C.Harrison@Intel.com>
> > > > > 
> > > > > Direction from hardware is that ring buffers should never be mapped
> > > > > via the BAR on systems with LLC. There are too many caching pitfalls
> > > > > due to the way BAR accesses are routed. So it is safest to just not
> > > > > use it.
> > > > > 
> > > > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > > > Fixes: 9d80841ea4c9 ("drm/i915: Allow ringbuffers to be bound anywhere")
> > > > > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > > > > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > > > > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > > > > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > Cc: <stable@vger.kernel.org> # v4.9+
> > > > > Tested-by: Jouni H�gander <jouni.hogander@intel.com>
> > > > > Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > > > Link: https://patchwork.freedesktop.org/patch/msgid/20230216011101.1909009-3-John.C.Harrison@Intel.com
> > > > > (cherry picked from commit 65c08339db1ada87afd6cfe7db8e60bb4851d919)
> > > > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > > > > (cherry picked from commit 85636167e3206c3fbd52254fc432991cc4e90194)
> > > > > Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/gt/intel_ringbuffer.c | 4 ++--
> > > > >    1 file changed, 2 insertions(+), 2 deletions(-)
> > > > Also queued up for 5.10.y, you forgot that one :)
> > > I'm still working through the backlog of them.
> > > 
> > > Note that these patches must all be applied as a pair. The 'don't use
> > > stolen' can be applied in isolation but won't totally fix the problem.
> > > However, applying 'don't use BAR mappings' without applying the stolen patch
> > > first will results in problems such as the failure to boot that was recently
> > > reported and resulted in a revert in one of the trees.
> > I do not understand, you only submitted 1 patch here, what is the
> > "pair"?
> The original patch series was two patches -
> https://patchwork.freedesktop.org/series/114080/. One to not use stolen
> memory and the other to not use BAR mappings. If the anti-BAR patch is
> applied without the anti-stolen patch then the i915 driver will attempt to
> access stolen memory directly which will fail. So both patches must be
> applied and in the correct order to fix the problem of cache aliasing when
> using BAR accesses on LLC systems.
> 
> As above, I am working my way through the bunch of 'FAILED patch' emails.
> The what-to-do instructions in those emails explicitly say to send the patch
> individually in reply to the 'FAILED' message rather than as part of any
> original series.

So what commits exactly in Linus's tree should be in these stable
branches?  Sorry, I still do not understand if we are missing one or if
we need to revert something.

confused,

greg k-h
