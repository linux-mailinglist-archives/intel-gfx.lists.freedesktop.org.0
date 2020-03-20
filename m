Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 824BF18CD2A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 12:45:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA5C96EB0C;
	Fri, 20 Mar 2020 11:45:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 4.mo2.mail-out.ovh.net (4.mo2.mail-out.ovh.net [87.98.172.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 586446EB0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 11:45:23 +0000 (UTC)
Received: from player758.ha.ovh.net (unknown [10.110.103.76])
 by mo2.mail-out.ovh.net (Postfix) with ESMTP id 49BB01C36CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 12:45:20 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player758.ha.ovh.net (Postfix) with ESMTPSA id 1D74910A787A1;
 Fri, 20 Mar 2020 11:45:16 +0000 (UTC)
Date: Fri, 20 Mar 2020 13:45:14 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200320114514.GG27848@jack.zhora.eu>
References: <20200320034901.102550-1-andi@etezian.org>
 <158470270622.7928.7469444156799101687@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158470270622.7928.7469444156799101687@build.alporthouse.com>
X-Ovh-Tracer-Id: 12452452973712949769
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrudeguddgfeduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejheekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: move files more files into
 debugfs
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

Hi Chris,

On Fri, Mar 20, 2020 at 11:11:46AM +0000, Chris Wilson wrote:
> Quoting Andi Shyti (2020-03-20 03:49:01)
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
> >   +-- interrupt_info_show
> 
> Please tell me you didn't actually include _show :)

You know me, everything can happen!
I did overlook indeed, but I had to check if I actually did
include _show. Thanks for spotting it.

> >   |
> >   +-- sseu_status
> >   |
> >   +-- wedge
> 
> The world will rejoice when it's stopped being called wedged.
> Well Mika will at any rate.

well, I did keep the original name.

> 'echo rcs0 > reset' maybe? Yeah. Wait, but rcs0 is uabi name, so top
> level.
> 
> Oh well, I definitely do not think copying a mistake is a good idea.

OK, I'll call it reset

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
