Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB119A1DA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 00:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA8096E211;
	Tue, 31 Mar 2020 22:21:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6.mo178.mail-out.ovh.net (6.mo178.mail-out.ovh.net
 [46.105.53.132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6553F6E211
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Mar 2020 22:21:23 +0000 (UTC)
Received: from player692.ha.ovh.net (unknown [10.108.42.168])
 by mo178.mail-out.ovh.net (Postfix) with ESMTP id BBC8C98577
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 00:21:20 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player692.ha.ovh.net (Postfix) with ESMTPSA id 446C210D9CAA8;
 Tue, 31 Mar 2020 22:21:14 +0000 (UTC)
Date: Wed, 1 Apr 2020 01:21:13 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200331222113.GE26946@jack.zhora.eu>
References: <20200331220432.55227-1-andi@etezian.org>
 <158569265509.5852.12639974641481565504@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158569265509.5852.12639974641481565504@build.alporthouse.com>
X-Ovh-Tracer-Id: 14005913367016227337
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrtddtgddufeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrheiledvrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: move remaining debugfs
 interfaces into gt
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 31, 2020 at 11:10:55PM +0100, Chris Wilson wrote:
> Quoting Andi Shyti (2020-03-31 23:04:32)
> > From: Andi Shyti <andi.shyti@intel.com>
> > 
> > The following interfaces:
> > 
> > i915_wedged
> > i915_forcewake_user
> > i915_gem_interrupt
> > i915_sseu_status
> > 
> > are dependent on gt values. Put them inside gt/ and drop the
> > "i915_" prefix name. This would be the new structure:
> > 
> >   gt
> >   |
> >   +-- forcewake_user
> >   |
> >   +-- interrupt_info
> >   |
> >   +-- sseu_status
> >   |
> >   +-- wedge
> > 
> > Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> > ---
> > Hi,
> > 
> > this patch is the first of a series that aims to refactor the
> > debugfs structure in the i915. Some changes will affect the
> > debugfs framework as well.
> > 
> > It has gone through a series of offline reviews mainly from
> > Tvrtko.
> > 
> > Thanks Tvrtko for the review,
> > Andi
> > 
> > Changelog
> > =========
> > v4:
> >  - interrupt and sseu debugfs interface are moved to their own
> >    "debugfs_gt_irq" and "debugfs_gt_sseu" files
> >  - reset functions are renamed to reset_show/store
> > v3:
> >  - better arrangement of what should stay in i915_debugfs and
> >    what needs to be moved under gt/
> >  - more use of the local "uncore" and "i915" variables to improve
> >    readability
> > v2:
> >  - dropped changes on "drop_caches", they were indeed irrelevant
> >  - improved interrupt info function
> > 
> >  drivers/gpu/drm/i915/Makefile             |   2 +
> >  drivers/gpu/drm/i915/gt/debugfs_gt.c      |  50 ++-
> >  drivers/gpu/drm/i915/gt/debugfs_gt_irq.c  | 162 ++++++++++
> >  drivers/gpu/drm/i915/gt/debugfs_gt_irq.h  |  15 +
> >  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c   |  32 ++
> >  drivers/gpu/drm/i915/gt/debugfs_gt_sseu.c | 282 ++++++++++++++++
> >  drivers/gpu/drm/i915/gt/debugfs_gt_sseu.h |  16 +
> 
> It's gt/intel_sseu.[ch] so I would have opted for debugfs_sseu.[ch]
> 
> >  static const struct drm_info_list i915_debugfs_list[] = {
> >         {"i915_capabilities", i915_capabilities, 0},
> >         {"i915_gem_objects", i915_gem_object_info, 0},
> > @@ -1868,7 +1500,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
> >         {"i915_rcs_topology", i915_rcs_topology, 0},
> 
> rcs_topology is basically sseu and one imagines would fit nicely inside
> debugfs/gt/
> 
> Other than those nits,
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

I can do this in a next patch, I think it would be a different
kind of change.

...and I also need to add Tvrtko's r-b he reviewed it in a
different context, but I wanted him to be aware publicly.

I guess he wouldn't mind me doing it for him now :/

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thank you!
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
